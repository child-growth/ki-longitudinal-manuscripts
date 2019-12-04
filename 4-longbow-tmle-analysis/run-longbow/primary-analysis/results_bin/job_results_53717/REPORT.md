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

**Outcome Variable:** ever_wasted

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

agecat                        studyid                    country                        birthwt                       ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ---------------------------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              0      166     260
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              1       39     260
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                         0       37     260
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                         1       18     260
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              0      209     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              1       12     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                         0       11     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                         1        1     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              0      135     236
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              1       67     236
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Low birthweight                         0       16     236
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Low birthweight                         1       18     236
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              0      176     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              1       37     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Low birthweight                         0       14     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Low birthweight                         1        5     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              0      266     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              1       16     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Low birthweight                         0       12     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Low birthweight                         1        5     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              0      247     306
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              1       40     306
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                         0       14     306
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                         1        5     306
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0      160     196
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1       26     196
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0        9     196
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1        1     196
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0      185     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1      143     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                         0       17     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                         1       23     368
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight              0      173     403
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight              1      162     403
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birthweight                         0       20     403
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birthweight                         1       48     403
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight              0      124     376
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight              1      119     376
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birthweight                         0       50     376
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birthweight                         1       83     376
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              0       20      41
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              1       15      41
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Low birthweight                         0        4      41
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Low birthweight                         1        2      41
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              0      762    1492
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              1      370    1492
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                         0      189    1492
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                         1      171    1492
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              0      302     581
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              1      109     581
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                         0      106     581
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                         1       64     581
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              0      451     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              1       77     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                         0      114     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                         1       45     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              0      512     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              1       67     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                         0      134     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                         1       41     754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0     1839    2359
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      440    2359
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0       53    2359
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1       27    2359
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              0      822    1533
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              1      489    1533
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birthweight                         0      117    1533
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birthweight                         1      105    1533
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight              0      254     659
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight              1      215     659
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                         0       75     659
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                         1      115     659
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              0       10      17
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              1        3      17
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Low birthweight                         0        2      17
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Low birthweight                         1        2      17
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Normal or high birthweight              0        2       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Normal or high birthweight              1        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Low birthweight                         0        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Low birthweight                         1        0       2
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              0    15667   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              1     1210   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Low birthweight                         0        0   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Low birthweight                         1        0   16877
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0    10769   13593
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1     1140   13593
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                         0     1438   13593
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                         1      246   13593
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              0      740     917
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              1       98     917
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birthweight                         0       62     917
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birthweight                         1       17     917
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight              0     4360    6524
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight              1      953    6524
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birthweight                         0      911    6524
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birthweight                         1      300    6524
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              0     1923    2975
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              1      781    2975
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                         0      148    2975
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                         1      123    2975
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              0    10942   22227
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              1     2026   22227
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                         0     7384   22227
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                         1     1875   22227
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              0     2566    4487
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              1      756    4487
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                         0      721    4487
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                         1      444    4487
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              0      189     259
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              1       16     259
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                         0       51     259
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                         1        3     259
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              0      213     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              1        8     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                         0       12     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                         1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              0      166     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              1       35     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Low birthweight                         0       30     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Low birthweight                         1        3     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              0      198     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              1       13     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Low birthweight                         0       18     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Low birthweight                         1        1     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Normal or high birthweight              0      279     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Normal or high birthweight              1        3     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Low birthweight                         0       15     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Low birthweight                         1        2     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              0      275     305
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              1       11     305
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                         0       16     305
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                         1        3     305
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0      178     196
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1        8     196
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0       10     196
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1        0     196
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0      217     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1       98     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                         0       25     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                         1       10     350
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight              0      216     384
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight              1      108     384
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birthweight                         0       38     384
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birthweight                         1       22     384
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight              0      187     374
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight              1       55     374
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birthweight                         0      107     374
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birthweight                         1       25     374
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              0       25      41
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              1       10      41
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Low birthweight                         0        6      41
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Low birthweight                         1        0      41
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              0      984    1465
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              1      142    1465
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                         0      296    1465
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                         1       43    1465
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              0      374     564
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              1       33     564
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                         0      145     564
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                         1       12     564
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              0      503     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              1       25     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                         0      143     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                         1       12     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              0      560     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              1       17     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                         0      169     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                         1        3     749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0     2085    2351
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      187    2351
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0       66    2351
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1       13    2351
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight              0     1154    1519
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight              1      149    1519
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birthweight                         0      184    1519
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birthweight                         1       32    1519
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight              0      369     641
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight              1       94     641
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                         0      149     641
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                         1       29     641
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              0       13      17
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              1        0      17
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Low birthweight                         0        3      17
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Low birthweight                         1        1      17
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Normal or high birthweight              0        2       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Normal or high birthweight              1        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Low birthweight                         0        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Low birthweight                         1        0       2
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Normal or high birthweight              0    15595   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Normal or high birthweight              1     1062   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Low birthweight                         0        0   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Low birthweight                         1        0   16657
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0    11395   13334
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1      382   13334
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                         0     1511   13334
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                         1       46   13334
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              0      775     867
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              1       17     867
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Low birthweight                         0       75     867
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Low birthweight                         1        0     867
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight              0     4575    6053
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight              1      465    6053
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birthweight                         0      944    6053
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birthweight                         1       69    6053
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              0     2432    2954
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              1      259    2954
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                         0      240    2954
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                         1       23    2954
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              0    11868   22042
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              1     1067   22042
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                         0     8512   22042
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                         1      595   22042
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              0     3188    4372
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              1       98    4372
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                         0     1058    4372
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                         1       28    4372
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              0      160     238
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              1       27     238
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                         0       36     238
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                         1       15     238
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              0      192     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              1        5     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                         0        9     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                         1        1     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              0      150     226
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              1       42     226
6-24 months                   ki0047075b-MAL-ED          INDIA                          Low birthweight                         0       18     226
6-24 months                   ki0047075b-MAL-ED          INDIA                          Low birthweight                         1       16     226
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              0      182     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              1       27     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Low birthweight                         0       14     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Low birthweight                         1        5     228
6-24 months                   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              0      237     267
6-24 months                   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              1       14     267
6-24 months                   ki0047075b-MAL-ED          PERU                           Low birthweight                         0       12     267
6-24 months                   ki0047075b-MAL-ED          PERU                           Low birthweight                         1        4     267
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              0      211     258
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              1       32     258
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                         0       10     258
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                         1        5     258
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0      155     184
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1       21     184
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0        7     184
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1        1     184
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0      250     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1       80     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                         0       24     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                         1       19     373
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight              0      243     404
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight              1       92     404
6-24 months                   ki1000108-IRC              INDIA                          Low birthweight                         0       35     404
6-24 months                   ki1000108-IRC              INDIA                          Low birthweight                         1       34     404
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight              0      151     373
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight              1       91     373
6-24 months                   ki1000109-EE               PAKISTAN                       Low birthweight                         0       61     373
6-24 months                   ki1000109-EE               PAKISTAN                       Low birthweight                         1       70     373
6-24 months                   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              0       21      32
6-24 months                   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              1        6      32
6-24 months                   ki1000109-ResPak           PAKISTAN                       Low birthweight                         0        3      32
6-24 months                   ki1000109-ResPak           PAKISTAN                       Low birthweight                         1        2      32
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              0      768    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              1      278    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                         0      188    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                         1      145    1379
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              0      272     522
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              1       94     522
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                         0       96     522
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                         1       60     522
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              0      407     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              1       60     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                         0      109     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                         1       39     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              0      504     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              1       55     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                         0      130     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                         1       41     730
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0     1633    1998
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      300    1998
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0       46    1998
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1       19    1998
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              0      857    1473
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              1      412    1473
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birthweight                         0      119    1473
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birthweight                         1       85    1473
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight              0      235     589
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight              1      177     589
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                         0       76     589
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                         1      101     589
6-24 months                   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              0        6      12
6-24 months                   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              1        3      12
6-24 months                   ki1114097-CMIN             BANGLADESH                     Low birthweight                         0        2      12
6-24 months                   ki1114097-CMIN             BANGLADESH                     Low birthweight                         1        1      12
6-24 months                   ki1114097-CONTENT          PERU                           Normal or high birthweight              0        2       2
6-24 months                   ki1114097-CONTENT          PERU                           Normal or high birthweight              1        0       2
6-24 months                   ki1114097-CONTENT          PERU                           Low birthweight                         0        0       2
6-24 months                   ki1114097-CONTENT          PERU                           Low birthweight                         1        0       2
6-24 months                   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              0    16431   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              1      167   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Low birthweight                         0        0   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Low birthweight                         1        0   16598
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0     8559   10780
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1      820   10780
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                         0     1189   10780
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                         1      212   10780
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              0      669     827
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              1       85     827
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birthweight                         0       56     827
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birthweight                         1       17     827
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight              0     4495    6299
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight              1      539    6299
6-24 months                   ki1135781-COHORTS          INDIA                          Low birthweight                         0     1022    6299
6-24 months                   ki1135781-COHORTS          INDIA                          Low birthweight                         1      243    6299
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              0     1886    2766
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              1      626    2766
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                         0      142    2766
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                         1      112    2766
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              0     7494   14528
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              1     1084   14528
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                         0     4595   14528
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                         1     1355   14528
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              0     2620    4499
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              1      701    4499
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                         0      745    4499
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                         1      433    4499


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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
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
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/d083b83d-1563-4e6c-8353-0091155628f8/6e8b549c-a12c-4f68-b889-95fd9709a3d4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d083b83d-1563-4e6c-8353-0091155628f8/6e8b549c-a12c-4f68-b889-95fd9709a3d4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d083b83d-1563-4e6c-8353-0091155628f8/6e8b549c-a12c-4f68-b889-95fd9709a3d4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d083b83d-1563-4e6c-8353-0091155628f8/6e8b549c-a12c-4f68-b889-95fd9709a3d4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1904354   0.1363117   0.2445591
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.3310549   0.2030788   0.4590310
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.3344189   0.2692689   0.3995689
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.5720180   0.3970524   0.7469836
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.1737089   0.1227202   0.2246976
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                0.2631579   0.0647291   0.4615867
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.0567376   0.0296916   0.0837836
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                0.2941176   0.0771586   0.5110767
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.1393728   0.0992386   0.1795070
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                0.2631579   0.0648329   0.4614829
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.4360500   0.3822602   0.4898398
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.5968516   0.4376145   0.7560886
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.4811146   0.4274268   0.5348023
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birthweight              NA                0.7193303   0.6109768   0.8276839
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.4934033   0.4299797   0.5568270
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.6163647   0.5344861   0.6982433
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.3259724   0.2806918   0.3712530
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.4787458   0.4078369   0.5496547
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.2647658   0.2219166   0.3076151
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.3792319   0.3056894   0.4527743
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.1453592   0.1148278   0.1758905
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.2951065   0.2232679   0.3669450
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.1137396   0.0876617   0.1398176
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.2288802   0.1663275   0.2914329
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1930840   0.1768752   0.2092928
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.3407833   0.2334211   0.4481456
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.3700642   0.3439243   0.3962042
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.5022272   0.4370666   0.5673878
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.4533692   0.4080694   0.4986689
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.6060260   0.5351600   0.6768920
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0954417   0.0901621   0.1007212
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.1471812   0.1298426   0.1645198
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1169498   0.0951644   0.1387352
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.2180646   0.1242212   0.3119080
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.1784778   0.1681796   0.1887760
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.2546131   0.2300497   0.2791765
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.2882834   0.2711833   0.3053834
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.4490069   0.3900714   0.5079423
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1555682   0.1478326   0.1633039
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.2035018   0.1946155   0.2123881
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.2263400   0.2094880   0.2431921
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.3852882   0.3529954   0.4175810
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.3128304   0.2615725   0.3640882
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.3759036   0.2441540   0.5076532
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3314659   0.2800523   0.3828795
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birthweight              NA                0.3795678   0.2562352   0.5029004
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.2286495   0.1757727   0.2815262
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.1934815   0.1260929   0.2608702
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1264027   0.0938913   0.1589140
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.1270325   0.1001016   0.1539635
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0800655   0.0534886   0.1066424
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.0735134   0.0315294   0.1154974
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0467431   0.0287724   0.0647139
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.0793830   0.0363879   0.1223781
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0823168   0.0710138   0.0936198
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.1619196   0.0775524   0.2462868
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1139499   0.0966606   0.1312393
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.1530959   0.1043449   0.2018470
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1998749   0.1633909   0.2363588
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.1714289   0.1134540   0.2294039
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0323503   0.0291526   0.0355479
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0299438   0.0211870   0.0387006
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0921248   0.0841381   0.1001115
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.0682252   0.0526422   0.0838082
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0962470   0.0850904   0.1074037
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.0785627   0.0464682   0.1106572
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0822762   0.0764909   0.0880616
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.0657294   0.0602666   0.0711923
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0296244   0.0234724   0.0357763
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.0251716   0.0143651   0.0359781
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1426632   0.0919802   0.1933462
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.2672059   0.1378598   0.3965521
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.2221492   0.1631298   0.2811685
6-24 months                   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.4592259   0.2776360   0.6408159
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.1291866   0.0836143   0.1747589
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                0.2631579   0.0647216   0.4615942
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.1316872   0.0890884   0.1742861
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                0.3333333   0.0943104   0.5723562
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.2417994   0.1954962   0.2881026
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.4605157   0.3064040   0.6146274
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.2739479   0.2260282   0.3218677
6-24 months                   ki1000108-IRC              INDIA                          Low birthweight              NA                0.5019189   0.3829171   0.6209207
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.3805871   0.3191398   0.4420344
6-24 months                   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.5322904   0.4476695   0.6169112
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.2645825   0.2293842   0.2997809
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.4403694   0.3782038   0.5025350
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.2569159   0.2119134   0.3019184
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.3841256   0.3067765   0.4614747
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.1273818   0.0970485   0.1577151
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.2575574   0.1888942   0.3262206
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0967533   0.0720466   0.1214601
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.2406516   0.1766754   0.3046278
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1551875   0.1390414   0.1713337
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.2913285   0.1763484   0.4063087
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.3219479   0.2962314   0.3476644
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.4383191   0.3693024   0.5073359
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.4271816   0.3794427   0.4749205
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.5649976   0.4899856   0.6400096
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0871241   0.0814138   0.0928344
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.1528680   0.1336281   0.1721079
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1123709   0.0898068   0.1349350
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.2360519   0.1340732   0.3380306
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.1060315   0.0975175   0.1145455
6-24 months                   ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.1996442   0.1777977   0.2214908
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.2486173   0.2316972   0.2655374
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.4407570   0.3801650   0.5013491
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1250169   0.1168471   0.1331867
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.2300932   0.2184367   0.2417496
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.2099749   0.1934712   0.2264786
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.3717457   0.3396331   0.4038583


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2192308   0.1688447   0.2696168
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3601695   0.2987933   0.4215457
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1810345   0.1313803   0.2306886
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0702341   0.0412206   0.0992477
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1470588   0.1073119   0.1868057
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.5210918   0.4722583   0.5699254
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       NA                   NA                0.5372340   0.4867685   0.5876996
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3626005   0.3118807   0.4133204
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2977625   0.2605481   0.3349769
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1979652   0.1818822   0.2140482
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3874755   0.3630804   0.4118706
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5007587   0.4625551   0.5389624
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1019642   0.0968771   0.1070514
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1254089   0.1039619   0.1468560
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.1920601   0.1825006   0.2016195
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3038655   0.2873358   0.3203952
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1755073   0.1694892   0.1815253
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2674393   0.2524050   0.2824735
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.3385417   0.2911496   0.3859338
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       NA                   NA                0.2139037   0.1722896   0.2555179
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1262799   0.0958566   0.1567031
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0797872   0.0574049   0.1021695
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0541728   0.0371844   0.0711612
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0850702   0.0737905   0.0963499
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1191573   0.1028598   0.1354549
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1918877   0.1613794   0.2223959
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0320984   0.0291065   0.0350903
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0882207   0.0810753   0.0953662
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0954638   0.0848652   0.1060624
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0754015   0.0712481   0.0795550
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0288198   0.0235259   0.0341136
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1764706   0.1279362   0.2250050
6-24 months                   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2566372   0.1995660   0.3137084
6-24 months                   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1403509   0.0951649   0.1855368
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1434109   0.1005601   0.1862616
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months                   ki1000108-IRC              INDIA                          NA                   NA                0.3118812   0.2666517   0.3571107
6-24 months                   ki1000109-EE               PAKISTAN                       NA                   NA                0.4316354   0.3813029   0.4819679
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3067440   0.2633529   0.3501352
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2950192   0.2558591   0.3341792
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1596597   0.1435945   0.1757248
6-24 months                   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3374067   0.3132523   0.3615610
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4719864   0.4316361   0.5123367
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0957328   0.0901784   0.1012872
6-24 months                   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1233374   0.1009129   0.1457618
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.1241467   0.1160028   0.1322905
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2668113   0.2503255   0.2832971
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1678827   0.1611001   0.1746653
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2520560   0.2372444   0.2668676


### Parameter: RR


agecat                        studyid                    country                        intervention_level           baseline_level                 estimate    ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  ----------  ----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    1.7384102   1.0751866    2.8107399
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    1.7104834   1.1892560    2.4601545
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    1.5149360   0.6745061    3.4025355
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    5.1838235   2.1538670   12.4761774
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    1.8881579   0.8426742    4.2307456
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    1.3687687   1.0199098    1.8369544
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    1.4951332   1.2396370    1.8032886
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.2492106   1.0395080    1.5012171
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    1.4686698   1.3363636    1.6140749
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    1.4323293   1.1127204    1.8437400
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    2.0301884   1.4722656    2.7995388
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    2.0123170   1.4090374    2.8738910
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    1.7649487   1.2738659    2.4453468
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.3571351   1.1717260    1.5718827
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    1.3367165   1.1455907    1.5597290
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    1.5421069   1.3539775    1.7563762
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    1.8646005   1.1665388    2.9803851
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.4265816   1.2751424    1.5960060
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    1.5575191   1.3489148    1.7983834
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    1.3081189   1.2275085    1.3940229
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    1.7022541   1.5206533    1.9055422
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    1.2016214   0.8161333    1.7691888
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    1.1451189   0.7996925    1.6397519
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    0.8461929   0.5567911    1.2860163
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    1.0049829   0.8656877    1.1666918
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    0.9181661   0.4741072    1.7781400
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    1.6982817   0.8741136    3.2995263
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    1.9670304   1.1475221    3.3717944
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.3435368   0.9441863    1.9117955
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    0.8576813   0.5841167    1.2593667
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    0.9256120   0.6797861    1.2603340
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    0.7405738   0.5800373    0.9455420
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    0.8162613   0.5338360    1.2481033
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    0.7988870   0.7189830    0.8876711
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    0.8496922   0.5230972    1.3801965
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    1.8729846   1.0255535    3.4206613
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    2.0671960   1.2836149    3.3291132
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    2.0370370   0.8860364    4.6832384
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    2.5312500   1.1526408    5.5587366
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    1.9045359   1.2947217    2.8015728
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    1.8321688   1.3654513    2.4584125
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.3986032   1.1158467    1.7530105
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    1.6643933   1.5181820    1.8246857
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    1.4951414   1.1448013    1.9526952
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    2.0219320   1.4134481    2.8923658
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    2.4872693   1.7213261    3.5940363
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    1.8772677   1.2480830    2.8236376
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.3614599   1.1418346    1.6233290
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    1.3226170   1.1115889    1.5737074
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    1.7546004   1.5225385    2.0220327
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    2.1006487   1.3049806    3.3814489
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.8828773   1.6446608    2.1555976
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    1.7728333   1.5210886    2.0662425
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    1.8404963   1.6945941    1.9989605
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    1.7704293   1.5742916    1.9910034


### Parameter: PAR


agecat                        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0287953   -0.0009066    0.0584973
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0257506   -0.0017873    0.0532885
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0073256   -0.0097485    0.0243997
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0134965   -0.0004132    0.0274062
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0076860   -0.0053175    0.0206895
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0150370   -0.0032106    0.0332845
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0399772    0.0177932    0.0621613
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0438307    0.0064946    0.0811669
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0366281    0.0224275    0.0508288
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0329966    0.0077265    0.0582668
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0322245    0.0136558    0.0507932
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0294964    0.0131562    0.0458366
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0048812    0.0011639    0.0085986
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0174113    0.0071317    0.0276909
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0473896    0.0222925    0.0724866
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0065226    0.0043127    0.0087325
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0084592    0.0002175    0.0167008
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0135823    0.0086496    0.0185150
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0155822    0.0097083    0.0214561
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0199390    0.0151642    0.0247138
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0410993    0.0316446    0.0505540
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0042589   -0.0207355    0.0122177
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0070758   -0.0135781    0.0277297
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0147457   -0.0451297    0.0156383
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0001228   -0.0044421    0.0041965
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0002782   -0.0140963    0.0135398
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0074296   -0.0029812    0.0178405
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0027534   -0.0000887    0.0055955
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0052074   -0.0020494    0.0124642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0079872   -0.0262672    0.0102928
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0002519   -0.0013048    0.0008010
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0039041   -0.0068432   -0.0009650
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0007833   -0.0040125    0.0024460
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0068747   -0.0100924   -0.0036570
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0008046   -0.0039933    0.0023841
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0338074    0.0034943    0.0641205
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0344880    0.0051189    0.0638570
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0111643   -0.0064731    0.0288016
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0117236   -0.0035254    0.0269726
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0236161    0.0045413    0.0426909
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0379332    0.0148444    0.0610221
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0510483    0.0136131    0.0884834
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0421615    0.0284254    0.0558976
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0381033    0.0109277    0.0652789
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0335938    0.0142640    0.0529236
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0347535    0.0180439    0.0514631
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0044721    0.0006756    0.0082687
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0154588    0.0053881    0.0255295
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0448048    0.0176655    0.0719442
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0086087    0.0060249    0.0111925
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0109664    0.0018774    0.0200554
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0181152    0.0133865    0.0228440
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0181940    0.0120254    0.0243625
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0428658    0.0370746    0.0486570
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0420811    0.0326446    0.0515177


### Parameter: PAF


agecat                        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.1313471   -0.0133989    0.2554188
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0714957   -0.0081535    0.1448523
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0404650   -0.0582243    0.1299506
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.1921648   -0.0139099    0.3563554
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0522648   -0.0395781    0.1359937
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0333350   -0.0080918    0.0730593
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0767182    0.0324989    0.1189166
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0815859    0.0087591    0.1490620
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.1010151    0.0660402    0.1346803
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.1108153    0.0220422    0.1915302
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.1814611    0.0725161    0.2776092
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.2059288    0.0875801    0.3089267
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0246571    0.0057550    0.0431998
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0449352    0.0179801    0.0711504
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0946355    0.0427046    0.1437493
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0639694    0.0422230    0.0852220
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0674526    0.0001470    0.1302276
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0707189    0.0448006    0.0959339
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0512799    0.0317702    0.0703964
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.1136080    0.0856372    0.1407231
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.1536770    0.1174708    0.1883977
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0138021   -0.0686653    0.0382446
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0209008   -0.0420767    0.0800722
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0689362   -0.2207202    0.0639751
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0009725   -0.0356646    0.0325575
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0034873   -0.1924924    0.1555612
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.1371469   -0.0728341    0.3060293
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0323663   -0.0013875    0.0649824
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0437020   -0.0189714    0.1025206
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0416243   -0.1412021    0.0492647
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0078469   -0.0411778    0.0244171
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0442540   -0.0779445   -0.0116165
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0082048   -0.0425950    0.0250510
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0911751   -0.1338484   -0.0501078
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0279188   -0.1449252    0.0771300
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.1915753    0.0058827    0.3425822
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.1343842    0.0140722    0.2400147
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0795455   -0.0529975    0.1954049
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0817484   -0.0287843    0.1804055
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0889779    0.0147152    0.1576433
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.1216272    0.0446971    0.1923622
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.1182671    0.0265633    0.2013318
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.1374484    0.1025996    0.1709440
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.1291553    0.0324296    0.2162116
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.2086887    0.0838609    0.3165082
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.2642715    0.1337356    0.3751372
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0280105    0.0040466    0.0513978
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0458164    0.0154749    0.0752229
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0949283    0.0352909    0.1508789
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0899244    0.0629354    0.1161361
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0889140    0.0135298    0.1585376
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.1459179    0.1078214    0.1823877
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0681904    0.0448884    0.0909240
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.2553318    0.2201695    0.2889086
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.1669514    0.1286383    0.2035799
