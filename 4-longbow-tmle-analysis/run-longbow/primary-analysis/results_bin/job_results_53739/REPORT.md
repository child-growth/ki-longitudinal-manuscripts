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

**Outcome Variable:** ever_swasted

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

agecat                        studyid                    country                        birthwt                       ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ---------------------------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               0      196     260
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               1        9     260
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                          0       52     260
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                          1        3     260
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               0      217     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               1        4     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                          0       12     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                          1        0     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               0      190     236
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               1       12     236
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Low birthweight                          0       34     236
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Low birthweight                          1        0     236
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               0      212     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               1        1     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Low birthweight                          0       19     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Low birthweight                          1        0     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight               0      278     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight               1        4     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Low birthweight                          0       17     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Low birthweight                          1        0     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               0      276     306
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               1       11     306
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                          0       18     306
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                          1        1     306
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0      180     196
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1        6     196
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0       10     196
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1        0     196
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0      278     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1       50     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                          0       35     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                          1        5     368
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight               0      277     403
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight               1       58     403
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birthweight                          0       51     403
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birthweight                          1       17     403
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight               0      203     376
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight               1       40     376
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birthweight                          0      107     376
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birthweight                          1       26     376
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               0       32      41
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               1        3      41
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Low birthweight                          0        6      41
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Low birthweight                          1        0      41
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               0     1025    1492
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               1      107    1492
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                          0      296    1492
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                          1       64    1492
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               0      380     581
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               1       31     581
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                          0      148     581
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                          1       22     581
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               0      518     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               1       10     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                          0      150     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                          1        9     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               0      570     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               1        9     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                          0      164     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                          1       11     754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     2171    2359
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1      108    2359
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0       70    2359
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1       10    2359
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight               0     1128    1533
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight               1      183    1533
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birthweight                          0      179    1533
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birthweight                          1       43    1533
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight               0      380     659
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight               1       89     659
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                          0      148     659
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                          1       42     659
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               0       13      17
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               1        0      17
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Low birthweight                          0        4      17
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Low birthweight                          1        0      17
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Normal or high birthweight               0        2       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Normal or high birthweight               1        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Low birthweight                          0        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Low birthweight                          1        0       2
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Normal or high birthweight               0    16673   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Normal or high birthweight               1      204   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Low birthweight                          0        0   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Low birthweight                          1        0   16877
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0    11511   13593
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1      398   13593
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                          0     1605   13593
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                          1       79   13593
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               0      825     917
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               1       13     917
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birthweight                          0       74     917
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birthweight                          1        5     917
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight               0     5070    6524
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight               1      243    6524
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birthweight                          0     1124    6524
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birthweight                          1       87    6524
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               0     2494    2975
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               1      210    2975
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                          0      233    2975
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                          1       38    2975
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               0    12531   22227
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               1      437   22227
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                          0     8860   22227
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                          1      399   22227
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               0     3204    4487
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               1      118    4487
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                          0     1075    4487
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                          1       90    4487
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               0      198     259
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               1        7     259
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                          0       54     259
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                          1        0     259
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               0      218     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               1        3     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                          0       12     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                          1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               0      194     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               1        7     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Low birthweight                          0       33     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Low birthweight                          1        0     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               0      210     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               1        1     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Low birthweight                          0       19     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Low birthweight                          1        0     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Normal or high birthweight               0      281     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Normal or high birthweight               1        1     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Low birthweight                          0       17     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Low birthweight                          1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               0      284     305
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               1        2     305
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                          0       18     305
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                          1        1     305
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0      183     196
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1        3     196
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0       10     196
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1        0     196
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0      285     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1       30     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                          0       35     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                          1        0     350
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight               0      273     384
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight               1       51     384
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birthweight                          0       55     384
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birthweight                          1        5     384
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight               0      229     374
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight               1       13     374
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birthweight                          0      125     374
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birthweight                          1        7     374
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               0       33      41
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               1        2      41
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Low birthweight                          0        6      41
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Low birthweight                          1        0      41
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               0     1093    1465
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               1       33    1465
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                          0      326    1465
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                          1       13    1465
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               0      400     564
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               1        7     564
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                          0      156     564
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                          1        1     564
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               0      523     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               1        5     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                          0      154     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                          1        1     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               0      576     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               1        1     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                          0      172     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                          1        0     749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     2235    2351
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1       37    2351
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0       76    2351
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1        3    2351
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight               0     1251    1519
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight               1       52    1519
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birthweight                          0      202    1519
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birthweight                          1       14    1519
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight               0      439     641
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight               1       24     641
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                          0      171     641
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                          1        7     641
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               0       13      17
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               1        0      17
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Low birthweight                          0        4      17
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Low birthweight                          1        0      17
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Normal or high birthweight               0        2       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Normal or high birthweight               1        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Low birthweight                          0        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Low birthweight                          1        0       2
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Normal or high birthweight               0    16478   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Normal or high birthweight               1      179   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Low birthweight                          0        0   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Low birthweight                          1        0   16657
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0    11656   13334
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1      121   13334
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                          0     1546   13334
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                          1       11   13334
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               0      790     867
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               1        2     867
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Low birthweight                          0       75     867
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Low birthweight                          1        0     867
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight               0     4943    6053
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight               1       97    6053
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birthweight                          0      992    6053
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birthweight                          1       21    6053
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               0     2631    2954
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               1       60    2954
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                          0      257    2954
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                          1        6    2954
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               0    12683   22042
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               1      252   22042
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                          0     8972   22042
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                          1      135   22042
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               0     3270    4372
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               1       16    4372
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                          0     1081    4372
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                          1        5    4372
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               0      185     238
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               1        2     238
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                          0       48     238
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                          1        3     238
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               0      196     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               1        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                          0       10     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                          1        0     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               0      187     226
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               1        5     226
6-24 months                   ki0047075b-MAL-ED          INDIA                          Low birthweight                          0       34     226
6-24 months                   ki0047075b-MAL-ED          INDIA                          Low birthweight                          1        0     226
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               0      209     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               1        0     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Low birthweight                          0       19     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Low birthweight                          1        0     228
6-24 months                   ki0047075b-MAL-ED          PERU                           Normal or high birthweight               0      248     267
6-24 months                   ki0047075b-MAL-ED          PERU                           Normal or high birthweight               1        3     267
6-24 months                   ki0047075b-MAL-ED          PERU                           Low birthweight                          0       16     267
6-24 months                   ki0047075b-MAL-ED          PERU                           Low birthweight                          1        0     267
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               0      233     258
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               1       10     258
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                          0       15     258
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                          1        0     258
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0      173     184
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1        3     184
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0        8     184
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1        0     184
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0      305     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1       25     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                          0       38     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                          1        5     373
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight               0      323     404
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight               1       12     404
6-24 months                   ki1000108-IRC              INDIA                          Low birthweight                          0       56     404
6-24 months                   ki1000108-IRC              INDIA                          Low birthweight                          1       13     404
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight               0      210     373
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight               1       32     373
6-24 months                   ki1000109-EE               PAKISTAN                       Low birthweight                          0      112     373
6-24 months                   ki1000109-EE               PAKISTAN                       Low birthweight                          1       19     373
6-24 months                   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               0       26      32
6-24 months                   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               1        1      32
6-24 months                   ki1000109-ResPak           PAKISTAN                       Low birthweight                          0        5      32
6-24 months                   ki1000109-ResPak           PAKISTAN                       Low birthweight                          1        0      32
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               0      968    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               1       78    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                          0      278    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                          1       55    1379
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               0      340     522
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               1       26     522
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                          0      134     522
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                          1       22     522
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               0      462     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               1        5     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                          0      140     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                          1        8     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               0      550     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               1        9     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                          0      160     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                          1       11     730
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     1860    1998
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1       73    1998
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0       57    1998
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1        8    1998
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight               0     1131    1473
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight               1      138    1473
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birthweight                          0      174    1473
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birthweight                          1       30    1473
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight               0      340     589
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight               1       72     589
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                          0      137     589
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                          1       40     589
6-24 months                   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               0        9      12
6-24 months                   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               1        0      12
6-24 months                   ki1114097-CMIN             BANGLADESH                     Low birthweight                          0        3      12
6-24 months                   ki1114097-CMIN             BANGLADESH                     Low birthweight                          1        0      12
6-24 months                   ki1114097-CONTENT          PERU                           Normal or high birthweight               0        2       2
6-24 months                   ki1114097-CONTENT          PERU                           Normal or high birthweight               1        0       2
6-24 months                   ki1114097-CONTENT          PERU                           Low birthweight                          0        0       2
6-24 months                   ki1114097-CONTENT          PERU                           Low birthweight                          1        0       2
6-24 months                   ki1119695-PROBIT           BELARUS                        Normal or high birthweight               0    16572   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Normal or high birthweight               1       26   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Low birthweight                          0        0   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Low birthweight                          1        0   16598
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0     9097   10780
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1      282   10780
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                          0     1328   10780
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                          1       73   10780
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               0      743     827
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               1       11     827
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birthweight                          0       68     827
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birthweight                          1        5     827
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight               0     4878    6299
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight               1      156    6299
6-24 months                   ki1135781-COHORTS          INDIA                          Low birthweight                          0     1181    6299
6-24 months                   ki1135781-COHORTS          INDIA                          Low birthweight                          1       84    6299
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               0     2357    2766
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               1      155    2766
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                          0      222    2766
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                          1       32    2766
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               0     8385   14528
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               1      193   14528
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                          0     5661   14528
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                          1      289   14528
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               0     3214    4499
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               1      107    4499
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                          0     1086    4499
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                          1       92    4499


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
![](/tmp/e03e81f2-28cc-4dfb-b290-eb99554d41f4/e9643f7c-f799-4e74-a777-9f957ccd9646/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e03e81f2-28cc-4dfb-b290-eb99554d41f4/e9643f7c-f799-4e74-a777-9f957ccd9646/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e03e81f2-28cc-4dfb-b290-eb99554d41f4/e9643f7c-f799-4e74-a777-9f957ccd9646/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e03e81f2-28cc-4dfb-b290-eb99554d41f4/e9643f7c-f799-4e74-a777-9f957ccd9646/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1524390    0.1134865   0.1913915
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.1250000    0.0223715   0.2276285
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1726995    0.1321756   0.2132233
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birthweight              NA                0.2521666    0.1475578   0.3567753
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1650354    0.1181910   0.2118799
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.1932020    0.1253088   0.2610952
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0933467    0.0703683   0.1163252
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.1836656    0.1394396   0.2278917
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0742245    0.0488149   0.0996341
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1307271    0.0811901   0.1802640
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0189394    0.0073041   0.0305747
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.0566038    0.0206590   0.0925485
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0155440    0.0054613   0.0256267
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.0628571    0.0268741   0.0988402
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0473748    0.0386490   0.0561006
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.1070668    0.0325402   0.1815935
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1388287    0.1200429   0.1576144
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.2033024    0.1499077   0.2566971
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1855402    0.1502283   0.2208521
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.2275188    0.1678610   0.2871766
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0332876    0.0300641   0.0365111
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0479206    0.0374146   0.0584266
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0155131    0.0071413   0.0238849
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.0632911    0.0095700   0.1170123
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0453861    0.0397890   0.0509833
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.0727312    0.0581901   0.0872722
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0773380    0.0672625   0.0874134
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.1411677    0.0998288   0.1825067
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0333731    0.0298070   0.0369391
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.0433173    0.0385432   0.0480913
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0352912    0.0284503   0.0421321
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.0780613    0.0611181   0.0950045
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1574074    0.1177008   0.1971141
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birthweight              NA                0.0833333    0.0133082   0.1533584
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0537190    0.0252747   0.0821633
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.0530303    0.0147502   0.0913104
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0296046    0.0183968   0.0408124
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.0365242    0.0164942   0.0565542
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0400136    0.0293191   0.0507081
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.0685551    0.0338430   0.1032672
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0518359    0.0316264   0.0720453
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.0393258    0.0107497   0.0679020
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0102546    0.0084345   0.0120748
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0070328    0.0026645   0.0114011
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0191449    0.0153661   0.0229237
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.0207543    0.0120520   0.0294567
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0222965    0.0167171   0.0278759
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.0228137    0.0047656   0.0408617
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0194343    0.0165617   0.0223069
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.0148818    0.0120195   0.0177442
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0048691    0.0015684   0.0081699
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.0046041   -0.0002959   0.0095040
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0757576    0.0471698   0.1043453
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.1162791    0.0203379   0.2122203
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0357256    0.0158250   0.0556262
6-24 months                   ki1000108-IRC              INDIA                          Low birthweight              NA                0.1863890    0.0893248   0.2834533
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1315338    0.0887846   0.1742831
6-24 months                   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.1417099    0.0807785   0.2026413
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0728270    0.0488762   0.0967778
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.1752604    0.1300939   0.2204270
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0694241    0.0432760   0.0955722
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1474641    0.0936021   0.2013261
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0107066    0.0013648   0.0200485
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.0540541    0.0175940   0.0905142
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0161002    0.0056595   0.0265409
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.0643275    0.0275309   0.1011241
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0377651    0.0292650   0.0462653
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.1230769    0.0431912   0.2029626
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1079696    0.0908822   0.1250571
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.1486620    0.0995204   0.1978035
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1722543    0.1355318   0.2089767
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.2344796    0.1721365   0.2968228
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0299100    0.0264634   0.0333565
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0532212    0.0411461   0.0652964
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0145889    0.0060255   0.0231522
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.0684932    0.0105148   0.1264715
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0306621    0.0258934   0.0354309
6-24 months                   ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.0683035    0.0545141   0.0820929
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0613088    0.0519149   0.0707027
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.1319705    0.0904078   0.1735333
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0222792    0.0190361   0.0255222
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.0495970    0.0433572   0.0558368
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0320449    0.0254182   0.0386716
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.0792059    0.0618931   0.0965186


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1494565   0.1129794   0.1859337
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.1861042   0.1480592   0.2241492
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       NA                   NA                0.1755319   0.1370287   0.2140352
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1146113   0.0915227   0.1376999
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0912220   0.0677898   0.1146542
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0276565   0.0153851   0.0399279
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0265252   0.0150478   0.0380026
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0500212   0.0412227   0.0588197
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1474234   0.1296705   0.1651762
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1987860   0.1682929   0.2292792
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0350916   0.0319981   0.0381851
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0196292   0.0106457   0.0286128
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.0505825   0.0452644   0.0559005
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0833613   0.0734265   0.0932961
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0376119   0.0347245   0.0404993
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0463561   0.0396916   0.0530207
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.1458333   0.1104867   0.1811800
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       NA                   NA                0.0534759   0.0306442   0.0763077
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0313993   0.0187576   0.0440411
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0434496   0.0331941   0.0537052
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0483619   0.0317414   0.0649825
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0098995   0.0082190   0.0115800
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0194945   0.0160113   0.0229777
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0223426   0.0170120   0.0276732
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0175574   0.0154912   0.0196236
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0048033   0.0020515   0.0075551
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0804290   0.0527929   0.1080650
6-24 months                   ki1000108-IRC              INDIA                          NA                   NA                0.0618812   0.0383576   0.0854048
6-24 months                   ki1000109-EE               PAKISTAN                       NA                   NA                0.1367292   0.1018167   0.1716417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0964467   0.0724546   0.1204388
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0919540   0.0671416   0.1167664
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0211382   0.0097604   0.0325160
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0273973   0.0155476   0.0392469
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0405405   0.0318905   0.0491906
6-24 months                   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1140530   0.0978143   0.1302917
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1901528   0.1584343   0.2218713
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0329314   0.0295624   0.0363003
6-24 months                   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0193470   0.0099536   0.0287404
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.0381013   0.0333732   0.0428293
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0676067   0.0582484   0.0769649
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0331773   0.0301204   0.0362342
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0442321   0.0375131   0.0509510


### Parameter: RR


agecat                        studyid                    country                        intervention_level           baseline_level                 estimate    ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  ----------  ----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    0.8200000   0.3470369    1.9375460
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    1.4601467   0.9065984    2.3516792
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.1706698   0.7451750    1.8391221
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    1.9675635   1.4933355    2.5923886
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    1.7612389   1.0568871    2.9349990
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    2.9886792   1.2352498    7.2310909
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    4.0438095   1.7024219    9.6053718
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    2.2599940   1.0999823    4.6433226
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.4644123   1.0903343    1.9668311
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    1.2262507   0.8876542    1.6940053
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    1.4395942   1.1328391    1.8294137
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    4.0798442   1.4921752   11.1549428
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.6024987   1.2669804    2.0268680
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    1.8253353   1.3250434    2.5145206
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    1.2979704   1.1152198    1.5106681
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    2.2119194   1.6469645    2.9706697
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    0.5294118   0.2201742    1.2729774
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    0.9871795   0.4032747    2.4165249
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    1.2337331   0.9517239    1.5993056
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.7132943   0.9666971    3.0365015
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    0.7586610   0.3325931    1.7305428
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    0.6858157   0.3594720    1.3084277
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.0840684   0.6819711    1.7232466
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    1.0231939   0.4462795    2.3458972
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    0.7657515   0.6039849    0.9708445
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    0.9455571   0.2661084    3.3598275
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    1.5348837   0.6195028    3.8028367
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    5.2172386   2.4258969   11.2204189
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.0773647   0.6284214    1.8470325
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    2.4065308   1.6545036    3.5003794
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    2.1241052   1.2564845    3.5908306
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    5.0486486   1.6757724   15.2102114
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    3.9954516   1.6827630    9.4865610
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    3.2590095   1.6395696    6.4780066
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.3768871   0.9546618    1.9858532
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    1.3612415   0.9694154    1.9114390
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    1.7793806   1.3796108    2.2949915
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    4.6948941   1.6759628   13.1518621
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    2.2276173   1.7265599    2.8740844
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    2.1525556   1.5168788    3.0546248
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    2.2261597   1.8245926    2.7161062
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    2.4717143   1.8298652    3.3387003


### Parameter: PAR


agecat                        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0029825   -0.0149462    0.0089812
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0134048   -0.0054871    0.0322966
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0104965   -0.0187397    0.0397326
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0212645    0.0119767    0.0305523
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0169975    0.0003716    0.0336235
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0087171   -0.0001074    0.0175416
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0109812    0.0021914    0.0197709
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0026464    0.0001044    0.0051883
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0085947    0.0005144    0.0166750
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0132458   -0.0066108    0.0331024
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0018040    0.0004884    0.0031197
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0041161   -0.0006476    0.0088798
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0051964    0.0022950    0.0080977
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0060234    0.0020898    0.0099569
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0042388    0.0017577    0.0067200
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0110649    0.0062695    0.0158604
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0115741   -0.0244373    0.0012891
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0002431   -0.0170753    0.0165891
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0017947   -0.0005712    0.0041606
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0034360   -0.0015248    0.0083969
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0034739   -0.0132029    0.0062550
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0003551   -0.0008853    0.0001750
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0003496   -0.0012473    0.0019465
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0000460   -0.0016358    0.0017279
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0018769   -0.0035247   -0.0002291
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0000658   -0.0015406    0.0014089
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0046714   -0.0069441    0.0162869
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0261556    0.0089837    0.0433275
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0051954   -0.0208305    0.0312213
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0236197    0.0128862    0.0343532
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0225299    0.0043071    0.0407528
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0104316    0.0012562    0.0196070
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0112971    0.0022155    0.0203787
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0027754    0.0000789    0.0054719
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0060833   -0.0010610    0.0132277
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0178985   -0.0037511    0.0395482
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0030214    0.0014387    0.0046040
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0047582   -0.0005192    0.0100356
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0074391    0.0045042    0.0103741
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0062979    0.0023878    0.0102080
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0108981    0.0079853    0.0138110
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0121871    0.0073503    0.0170240


### Parameter: PAF


agecat                        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0199557   -0.1031258    0.0569439
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0720282   -0.0345812    0.1676520
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0597981   -0.1220460    0.2121717
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.1855360    0.0996041    0.2632668
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.1863316   -0.0119319    0.3457501
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.3151914   -0.0430123    0.5503765
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.4139896    0.0540478    0.6369709
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0529051    0.0015043    0.1016598
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0582993    0.0021012    0.1113326
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0666336   -0.0386536    0.1612478
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0514090    0.0134085    0.0879459
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2096924   -0.0486896    0.4044128
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.1027303    0.0444243    0.1574787
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0722560    0.0244932    0.1176803
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.1126992    0.0447647    0.1758024
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.2386941    0.1341924    0.3305826
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0793651   -0.1698267    0.0041013
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0045455   -0.3741944    0.2656704
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0571575   -0.0074055    0.1175829
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0790812   -0.0409928    0.1853052
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0718317   -0.2914856    0.1104638
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0358739   -0.0904528    0.0159733
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0179331   -0.0674387    0.0964770
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0020607   -0.0761268    0.0745675
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.1069013   -0.2032040   -0.0183066
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0137090   -0.3709271    0.2504300
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0580808   -0.0966511    0.1909808
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.4226741    0.1400914    0.6123947
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0379977   -0.1723404    0.2105975
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.2448990    0.1217649    0.3507689
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.2450129    0.0293270    0.4127729
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.4934937   -0.0019911    0.7439611
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.4123435    0.0515703    0.6358821
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0684601    0.0011170    0.1312630
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0533378   -0.0111173    0.1136842
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0941272   -0.0267815    0.2007983
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0917476    0.0432688    0.1377700
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2459383   -0.0450901    0.4559235
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.1952465    0.1181975    0.2655633
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0931547    0.0346598    0.1481051
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.3284817    0.2432237    0.4041345
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.2755275    0.1669190    0.3699767
