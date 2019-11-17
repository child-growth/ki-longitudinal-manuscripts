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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/4ec23829-d3df-478a-ac58-3ce1b16dc820/6b1a53d2-1b57-4018-9daa-3cb7df4413f3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4ec23829-d3df-478a-ac58-3ce1b16dc820/6b1a53d2-1b57-4018-9daa-3cb7df4413f3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4ec23829-d3df-478a-ac58-3ce1b16dc820/6b1a53d2-1b57-4018-9daa-3cb7df4413f3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4ec23829-d3df-478a-ac58-3ce1b16dc820/6b1a53d2-1b57-4018-9daa-3cb7df4413f3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1524390    0.1134865   0.1913915
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.1250000    0.0223715   0.2276285
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1731343    0.1325672   0.2137015
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birthweight              NA                0.2500000    0.1469534   0.3530466
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1646091    0.1179222   0.2112959
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.1954887    0.1280006   0.2629769
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0945230    0.0718691   0.1171768
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.1777778    0.1339377   0.2216178
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0754258    0.0498734   0.1009782
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1294118    0.0789118   0.1799117
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0189394    0.0073041   0.0305747
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.0566038    0.0206590   0.0925485
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0155440    0.0054613   0.0256267
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.0628571    0.0268741   0.0988402
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0473892    0.0386642   0.0561142
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.1250000    0.0525140   0.1974860
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1395881    0.1208224   0.1583538
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.1936937    0.1416916   0.2456958
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1897655    0.1542510   0.2252799
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.2210526    0.1620049   0.2801003
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0334201    0.0301920   0.0366482
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0469121    0.0368126   0.0570117
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0155131    0.0071413   0.0238849
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.0632911    0.0095700   0.1170123
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0457369    0.0401189   0.0513548
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.0718415    0.0572966   0.0863863
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0776627    0.0675732   0.0877522
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.1402214    0.0988751   0.1815677
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0336983    0.0301578   0.0372389
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.0430932    0.0383518   0.0478347
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0355208    0.0286545   0.0423870
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.0772532    0.0601867   0.0943197
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1574074    0.1177008   0.1971141
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birthweight              NA                0.0833333    0.0133082   0.1533584
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0537190    0.0252747   0.0821633
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.0530303    0.0147502   0.0913104
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0293073    0.0182229   0.0403916
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.0383481    0.0186260   0.0580702
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0399079    0.0292762   0.0505397
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.0648148    0.0319713   0.0976584
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0518359    0.0316264   0.0720453
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.0393258    0.0107497   0.0679020
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0102743    0.0084530   0.0120956
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0070649    0.0029045   0.0112252
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0192460    0.0154527   0.0230394
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.0207305    0.0119557   0.0295053
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0222965    0.0167171   0.0278759
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.0228137    0.0047656   0.0408617
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0194820    0.0166616   0.0223025
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.0148238    0.0120393   0.0176082
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0048691    0.0015684   0.0081699
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.0046041   -0.0002959   0.0095040
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0757576    0.0471698   0.1043453
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.1162791    0.0203379   0.2122203
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0358209    0.0158953   0.0557465
6-24 months                   ki1000108-IRC              INDIA                          Low birthweight              NA                0.1884058    0.0960257   0.2807859
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1322314    0.0894955   0.1749673
6-24 months                   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.1450382    0.0846558   0.2054205
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0745698    0.0507879   0.0983517
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.1651652    0.1179337   0.2123966
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0710383    0.0446950   0.0973815
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1410256    0.0863566   0.1956947
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0107066    0.0013648   0.0200485
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.0540541    0.0175940   0.0905142
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0161002    0.0056595   0.0265409
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.0643275    0.0275309   0.1011241
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0377651    0.0292650   0.0462653
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.1230769    0.0431912   0.2029626
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1087470    0.0916124   0.1258816
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.1470588    0.0984421   0.1956755
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1747573    0.1380564   0.2114582
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.2259887    0.1643225   0.2876549
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0300672    0.0266109   0.0335234
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0521056    0.0404678   0.0637435
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0145889    0.0060255   0.0231522
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.0684932    0.0105148   0.1264715
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0309893    0.0262019   0.0357766
6-24 months                   ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.0664032    0.0526814   0.0801250
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0617038    0.0522927   0.0711150
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.1259843    0.0851685   0.1668000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0224994    0.0192264   0.0257724
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.0485714    0.0424673   0.0546756
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0322192    0.0255588   0.0388796
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.0780985    0.0607320   0.0954649


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
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    1.4439655   0.8987625    2.3198971
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.1875940   0.7596756    1.8565550
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    1.8807892   1.4319832    2.4702580
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    1.7157495   1.0233536    2.8766170
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    2.9886792   1.2352498    7.2310909
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    4.0438095   1.7024219    9.6053718
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    2.6377314   1.4354880    4.8468723
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.3876089   1.0277047    1.8735524
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    1.1648729   0.8406795    1.6140858
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    1.4037095   1.1086641    1.7772744
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    4.0798442   1.4921752   11.1549428
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.5707557   1.2395543    1.9904521
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    1.8055175   1.3081734    2.4919429
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    1.2787934   1.0999529    1.4867114
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    2.1748745   1.6165842    2.9259715
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    0.5294118   0.2201742    1.2729774
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    0.9871795   0.4032747    2.4165249
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    1.3084831   1.0242674    1.6715634
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.6241097   0.9161893    2.8790255
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    0.7586610   0.3325931    1.7305428
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    0.6876277   0.3717654    1.2718556
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.0771313   0.6752886    1.7180978
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    1.0231939   0.4462795    2.3458972
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    0.7608943   0.6039955    0.9585504
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    0.9455571   0.2661084    3.3598275
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    1.5348837   0.6195028    3.8028367
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    5.2596618   2.5056681   11.0405852
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.0968511   0.6475239    1.8579739
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    2.2149072   1.5168075    3.2343023
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    1.9852071   1.1609768    3.3945961
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    5.0486486   1.6757724   15.2102114
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    3.9954516   1.6827630    9.4865610
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    3.2590095   1.6395696    6.4780066
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.3523018   0.9376170    1.9503915
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    1.2931576   0.9164528    1.8247055
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    1.7329744   1.3480291    2.2278453
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    4.6948941   1.6759628   13.1518621
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    2.1427790   1.6554908    2.7734988
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    2.0417577   1.4272213    2.9209026
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    2.1587861   1.7695308    2.6336684
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    2.4239722   1.7907092    3.2811811


### Parameter: PAR


agecat                        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0029825   -0.0149462    0.0089812
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0129699   -0.0059272    0.0318670
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0109229   -0.0181431    0.0399889
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0200883    0.0107521    0.0294245
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0157962   -0.0008841    0.0324765
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0087171   -0.0001074    0.0175416
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0109812    0.0021914    0.0197709
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0026320    0.0000920    0.0051720
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0078353   -0.0002273    0.0158978
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0090206   -0.0108753    0.0289165
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0016715    0.0003558    0.0029872
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0041161   -0.0006476    0.0088798
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0048456    0.0019409    0.0077503
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0056986    0.0017682    0.0096291
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0039136    0.0014700    0.0063571
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0108354    0.0060437    0.0156271
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0115741   -0.0244373    0.0012891
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0002431   -0.0170753    0.0165891
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0020920   -0.0003530    0.0045371
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0035417   -0.0013866    0.0084701
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0034739   -0.0132029    0.0062550
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0003748   -0.0009054    0.0001558
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0002484   -0.0013515    0.0018483
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0000460   -0.0016358    0.0017279
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0019246   -0.0035157   -0.0003335
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0000658   -0.0015406    0.0014089
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0046714   -0.0069441    0.0162869
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0260603    0.0089738    0.0431468
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0044978   -0.0214903    0.0304859
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0218769    0.0109009    0.0328529
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0209158    0.0025726    0.0392590
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0104316    0.0012562    0.0196070
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0112971    0.0022155    0.0203787
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0027754    0.0000789    0.0054719
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0053059   -0.0018650    0.0124769
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0153955   -0.0062528    0.0370439
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0028642    0.0012802    0.0044481
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0047582   -0.0005192    0.0100356
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0071120    0.0041725    0.0100516
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0059028    0.0019947    0.0098110
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0106779    0.0077587    0.0135971
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0120128    0.0071664    0.0168593


### Parameter: PAF


agecat                        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0199557   -0.1031258    0.0569439
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0696915   -0.0369554    0.1653702
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0622272   -0.1184766    0.2137361
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.1752733    0.0908933    0.2518214
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.1731626   -0.0258026    0.3335363
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.3151914   -0.0430123    0.5503765
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.4139896    0.0540478    0.6369709
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0526175    0.0012597    0.1013343
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0531480   -0.0028846    0.1060500
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0453783   -0.0600022    0.1402824
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0476322    0.0096196    0.0841857
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2096924   -0.0486896    0.4044128
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0957959    0.0373642    0.1506808
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0683605    0.0206159    0.1137775
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.1040516    0.0372238    0.1662408
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.2337418    0.1291443    0.3257762
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0793651   -0.1698267    0.0041013
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0045455   -0.3741944    0.2656704
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0666268    0.0021942    0.1268987
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0815135   -0.0375130    0.1868850
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0718317   -0.2914856    0.1104638
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0378563   -0.0924649    0.0140226
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0127438   -0.0728007    0.0914670
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0020607   -0.0761268    0.0745675
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.1096197   -0.2025755   -0.0238490
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0137090   -0.3709271    0.2504300
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0580808   -0.0966511    0.1909808
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.4211343    0.1398071    0.6104531
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0328958   -0.1769813    0.2053480
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.2268290    0.1042169    0.3326583
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.2274590    0.0103250    0.3969540
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.4934937   -0.0019911    0.7439611
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.4123435    0.0515703    0.6358821
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0684601    0.0011170    0.1312630
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0465214   -0.0181900    0.1071201
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0809639   -0.0397188    0.1876387
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0869743    0.0384056    0.1330899
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2459383   -0.0450901    0.4559235
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.1866607    0.1093803    0.2572354
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0873114    0.0288125    0.1422867
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.3218433    0.2360262    0.3980206
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.2715868    0.1624723    0.3664856
