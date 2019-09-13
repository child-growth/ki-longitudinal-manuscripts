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
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               0      195     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               1        9     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         0       50     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         1        3     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               0      217     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               1        3     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         0       12     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         1        0     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               0      193     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               1        9     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Low birth weight                         0       36     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Low birth weight                         1        0     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               0      210     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               1        1     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Low birth weight                         0       21     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Low birth weight                         1        0     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight               0      278     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight               1        3     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Low birth weight                         0       18     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Low birth weight                         1        0     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               0      277     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               1       10     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         0       20     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         1        1     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0      126     135
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1        2     135
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0        7     135
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1        0     135
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0      278     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1       50     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         0       35     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         1        5     368
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight               0      279     407
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight               1       60     407
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birth weight                         0       51     407
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birth weight                         1       17     407
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight               0      211     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight               1       33     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birth weight                         0      115     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birth weight                         1       18     377
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               0       16      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               1        3      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Low birth weight                         0        3      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Low birth weight                         1        0      22
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               0     1025    1492
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               1      107    1492
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         0      296    1492
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         1       64    1492
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               0      123     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               1       15     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         0       66     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         1       11     215
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               0      518     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               1       10     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         0      150     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         1        9     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               0      570     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               1        9     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         0      164     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         1       11     754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     2171    2359
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1      108    2359
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0       70    2359
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1       10    2359
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight               0     1639    2105
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight               1      269    2105
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birth weight                         0      159    2105
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birth weight                         1       38    2105
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               0        4       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               1        0       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Low birth weight                         0        2       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Low birth weight                         1        0       6
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         Normal or high birthweight               0      107     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         Normal or high birthweight               1        0     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         Low birth weight                         0        8     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         Low birth weight                         1        0     115
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               0        1       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               1        0       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         0        1       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         1        0       2
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           Normal or high birthweight               0       16      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           Normal or high birthweight               1        0      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           Low birth weight                         0        1      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           Low birth weight                         1        0      17
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Normal or high birthweight               0        2       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Normal or high birthweight               1        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Low birth weight                         0        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Low birth weight                         1        0       2
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Normal or high birthweight               0    16673   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Normal or high birthweight               1      204   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Low birth weight                         0        0   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Low birth weight                         1        0   16877
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0    11510   13580
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1      393   13580
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         0     1602   13580
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         1       75   13580
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               0      825     917
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               1       13     917
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birth weight                         0       74     917
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birth weight                         1        5     917
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight               0     5070    6524
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight               1      243    6524
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birth weight                         0     1124    6524
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birth weight                         1       87    6524
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               0     2494    2975
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               1      210    2975
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         0      233    2975
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         1       38    2975
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               0    16120   26430
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               1      531   26430
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         0     9364   26430
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         1      415   26430
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               0     3204    4487
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               1      118    4487
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         0     1075    4487
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         1       90    4487
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               0      197     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               1        7     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         0       52     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         1        0     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               0      218     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               1        2     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         0       12     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               0      196     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               1        5     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Low birth weight                         0       36     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Low birth weight                         1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               0      208     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               1        1     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Low birth weight                         0       21     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Low birth weight                         1        0     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Normal or high birthweight               0      280     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Normal or high birthweight               1        1     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Low birth weight                         0       18     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Low birth weight                         1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               0      284     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               1        2     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         0       20     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         1        1     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0      126     135
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1        2     135
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0        7     135
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1        0     135
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0      285     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1       30     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         0       35     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         1        0     350
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight               0      276     388
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight               1       52     388
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birth weight                         0       55     388
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birth weight                         1        5     388
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight               0      230     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight               1       12     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birth weight                         0      127     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birth weight                         1        4     373
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               0       17      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               1        2      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Low birth weight                         0        3      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Low birth weight                         1        0      22
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               0     1093    1465
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               1       33    1465
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         0      326    1465
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         1       13    1465
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               0      132     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               1        4     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         0       70     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         1        1     207
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               0      523     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               1        5     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         0      154     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         1        1     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               0      576     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               1        1     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         0      172     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         1        0     749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     2235    2351
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1       37    2351
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0       76    2351
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1        3    2351
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight               0     1684    1932
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight               1       71    1932
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birth weight                         0      167    1932
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birth weight                         1       10    1932
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               0        4       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               1        0       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Low birth weight                         0        2       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Low birth weight                         1        0       6
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         Normal or high birthweight               0      106     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         Normal or high birthweight               1        0     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         Low birth weight                         0        7     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         Low birth weight                         1        0     113
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               0        1       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         0        1       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           Normal or high birthweight               0       16      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           Normal or high birthweight               1        0      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           Low birth weight                         0        1      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           Low birth weight                         1        0      17
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Normal or high birthweight               0        2       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Normal or high birthweight               1        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Low birth weight                         0        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Low birth weight                         1        0       2
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Normal or high birthweight               0    16478   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Normal or high birthweight               1      179   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Low birth weight                         0        0   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Low birth weight                         1        0   16657
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0    11646   13322
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1      121   13322
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         0     1545   13322
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         1       10   13322
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               0      790     867
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               1        2     867
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Low birth weight                         0       75     867
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Low birth weight                         1        0     867
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight               0     4944    6053
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight               1       96    6053
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birth weight                         0      992    6053
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birth weight                         1       21    6053
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               0     2631    2954
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               1       60    2954
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         0      257    2954
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         1        6    2954
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               0    16288   26186
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               1      292   26186
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         0     9464   26186
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         1      142   26186
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               0     3270    4372
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               1       16    4372
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         0     1081    4372
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         1        5    4372
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               0      184     235
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               1        2     235
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         0       46     235
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         1        3     235
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               0      195     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               1        2     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         0       10     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         1        0     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               0      188     228
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               1        4     228
6-24 months                   ki0047075b-MAL-ED          INDIA                          Low birth weight                         0       36     228
6-24 months                   ki0047075b-MAL-ED          INDIA                          Low birth weight                         1        0     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               0      207     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               1        0     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Low birth weight                         0       21     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Low birth weight                         1        0     228
6-24 months                   ki0047075b-MAL-ED          PERU                           Normal or high birthweight               0      248     267
6-24 months                   ki0047075b-MAL-ED          PERU                           Normal or high birthweight               1        2     267
6-24 months                   ki0047075b-MAL-ED          PERU                           Low birth weight                         0       17     267
6-24 months                   ki0047075b-MAL-ED          PERU                           Low birth weight                         1        0     267
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               0      234     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               1        9     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         0       16     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         1        0     259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0      118     123
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1        0     123
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0        5     123
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1        0     123
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0      305     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1       25     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         0       38     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         1        5     373
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight               0      326     408
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight               1       13     408
6-24 months                   ki1000108-IRC              INDIA                          Low birth weight                         0       56     408
6-24 months                   ki1000108-IRC              INDIA                          Low birth weight                         1       13     408
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight               0      218     375
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight               1       24     375
6-24 months                   ki1000109-EE               PAKISTAN                       Low birth weight                         0      118     375
6-24 months                   ki1000109-EE               PAKISTAN                       Low birth weight                         1       15     375
6-24 months                   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               0       13      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               1        1      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       Low birth weight                         0        2      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       Low birth weight                         1        0      16
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               0      968    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               1       78    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         0      278    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         1       55    1379
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               0      106     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               1       11     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         0       53     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         1       10     180
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               0      462     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               1        5     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         0      140     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         1        8     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               0      550     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               1        9     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         0      160     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         1       11     730
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     1860    1998
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1       73    1998
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0       57    1998
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1        8    1998
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight               0     1645    2040
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight               1      212    2040
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birth weight                         0      151    2040
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birth weight                         1       32    2040
6-24 months                   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               0        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               1        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     Low birth weight                         0        1       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     Low birth weight                         1        0       1
6-24 months                   ki1114097-CMIN             BRAZIL                         Normal or high birthweight               0      107     115
6-24 months                   ki1114097-CMIN             BRAZIL                         Normal or high birthweight               1        0     115
6-24 months                   ki1114097-CMIN             BRAZIL                         Low birth weight                         0        8     115
6-24 months                   ki1114097-CMIN             BRAZIL                         Low birth weight                         1        0     115
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               0        1       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               1        0       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         0        1       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         1        0       2
6-24 months                   ki1114097-CMIN             PERU                           Normal or high birthweight               0       13      14
6-24 months                   ki1114097-CMIN             PERU                           Normal or high birthweight               1        0      14
6-24 months                   ki1114097-CMIN             PERU                           Low birth weight                         0        1      14
6-24 months                   ki1114097-CMIN             PERU                           Low birth weight                         1        0      14
6-24 months                   ki1114097-CONTENT          PERU                           Normal or high birthweight               0        2       2
6-24 months                   ki1114097-CONTENT          PERU                           Normal or high birthweight               1        0       2
6-24 months                   ki1114097-CONTENT          PERU                           Low birth weight                         0        0       2
6-24 months                   ki1114097-CONTENT          PERU                           Low birth weight                         1        0       2
6-24 months                   ki1119695-PROBIT           BELARUS                        Normal or high birthweight               0    16572   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Normal or high birthweight               1       26   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Low birth weight                         0        0   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Low birth weight                         1        0   16598
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0     8998   10659
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1      277   10659
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         0     1314   10659
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         1       70   10659
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               0      743     827
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               1       11     827
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birth weight                         0       68     827
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birth weight                         1        5     827
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight               0     4877    6299
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight               1      157    6299
6-24 months                   ki1135781-COHORTS          INDIA                          Low birth weight                         0     1181    6299
6-24 months                   ki1135781-COHORTS          INDIA                          Low birth weight                         1       84    6299
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               0     2357    2766
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               1      155    2766
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         0      222    2766
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         1       32    2766
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               0    10689   17214
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               1      252   17214
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         0     5974   17214
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         1      299   17214
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               0     3214    4499
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               1      107    4499
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         0     1086    4499
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         1       92    4499


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
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
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
![](/tmp/25455bb9-da6c-41dd-a784-85d1cc47634a/b95ecfb8-c65b-43a4-9479-e18682ab12ff/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/25455bb9-da6c-41dd-a784-85d1cc47634a/b95ecfb8-c65b-43a4-9479-e18682ab12ff/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/25455bb9-da6c-41dd-a784-85d1cc47634a/b95ecfb8-c65b-43a4-9479-e18682ab12ff/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/25455bb9-da6c-41dd-a784-85d1cc47634a/b95ecfb8-c65b-43a4-9479-e18682ab12ff/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1524390    0.1134865   0.1913915
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.1250000    0.0223715   0.2276285
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1772092    0.1364961   0.2179224
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birth weight             NA                0.2508570    0.1472233   0.3544907
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1359198    0.0929616   0.1788781
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.1366763    0.0787197   0.1946328
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0933467    0.0703683   0.1163252
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.1836656    0.1394396   0.2278917
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1066219    0.0548129   0.1584308
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.1449145    0.0643204   0.2255086
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0189394    0.0073041   0.0305747
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.0566038    0.0206590   0.0925485
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0155440    0.0054613   0.0256267
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.0628571    0.0268741   0.0988402
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0473931    0.0386668   0.0561193
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.1223591    0.0476280   0.1970903
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1402861    0.1246513   0.1559208
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.2135306    0.1534502   0.2736111
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0328836    0.0296780   0.0360892
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0456336    0.0353107   0.0559565
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0155131    0.0071413   0.0238849
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.0632911    0.0095700   0.1170123
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0454383    0.0398357   0.0510409
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.0728913    0.0582167   0.0875660
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0773540    0.0672720   0.0874360
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.1426269    0.1010963   0.1841574
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0317363    0.0286554   0.0348173
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.0424590    0.0380128   0.0469053
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0353176    0.0284686   0.0421666
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.0780103    0.0612404   0.0947801
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1585366    0.1189586   0.1981146
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birth weight             NA                0.0833333    0.0133092   0.1533575
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0296046    0.0183968   0.0408124
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.0365242    0.0164942   0.0565542
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0404462    0.0312088   0.0496836
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.0581996    0.0226769   0.0937223
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0102595    0.0084380   0.0120809
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0062467    0.0020553   0.0104381
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0189474    0.0151843   0.0227105
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.0206539    0.0119831   0.0293248
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0222965    0.0167171   0.0278759
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.0228137    0.0047656   0.0408617
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0175051    0.0152014   0.0198088
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.0147582    0.0120423   0.0174740
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0048691    0.0015684   0.0081699
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.0046041   -0.0002959   0.0095040
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0757576    0.0471698   0.1043453
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.1162791    0.0203379   0.2122203
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0387338    0.0181965   0.0592711
6-24 months                   ki1000108-IRC              INDIA                          Low birth weight             NA                0.1712399    0.0746901   0.2677896
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0996159    0.0619835   0.1372484
6-24 months                   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.1191742    0.0651020   0.1732464
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0728270    0.0488762   0.0967778
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.1752604    0.1300939   0.2204270
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0935178    0.0398648   0.1471708
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.1580052    0.0681523   0.2478581
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0107066    0.0013648   0.0200485
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.0540541    0.0175940   0.0905142
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0161002    0.0056595   0.0265409
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.0643275    0.0275309   0.1011241
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0377651    0.0292650   0.0462653
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.1230769    0.0431912   0.2029626
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1136620    0.0992040   0.1281201
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.1801711    0.1241242   0.2362181
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0297256    0.0262687   0.0331825
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0511800    0.0393435   0.0630166
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0145889    0.0060255   0.0231522
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.0684932    0.0105148   0.1264715
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0308779    0.0260939   0.0356620
6-24 months                   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.0680496    0.0542457   0.0818535
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0612743    0.0518874   0.0706612
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.1304358    0.0894933   0.1713782
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0229316    0.0197978   0.0260653
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.0486244    0.0426980   0.0545507
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0321189    0.0254698   0.0387679
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.0789523    0.0619017   0.0960028


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1494565   0.1129794   0.1859337
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.1891892   0.1510920   0.2272864
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       NA                   NA                0.1352785   0.1007079   0.1698491
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1146113   0.0915227   0.1376999
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1209302   0.0772464   0.1646140
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0276565   0.0153851   0.0399279
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0265252   0.0150478   0.0380026
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0500212   0.0412227   0.0588197
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1458432   0.1307620   0.1609245
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0344624   0.0313943   0.0375306
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0196292   0.0106457   0.0286128
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.0505825   0.0452644   0.0559005
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0833613   0.0734265   0.0932961
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0357927   0.0332035   0.0383818
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0463561   0.0396916   0.0530207
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.1469072   0.1116367   0.1821778
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0313993   0.0187576   0.0440411
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0419255   0.0329863   0.0508646
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0098334   0.0081577   0.0115090
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0193293   0.0158606   0.0227980
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0223426   0.0170120   0.0276732
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0165737   0.0147559   0.0183915
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0048033   0.0020515   0.0075551
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0804290   0.0527929   0.1080650
6-24 months                   ki1000108-IRC              INDIA                          NA                   NA                0.0637255   0.0399949   0.0874561
6-24 months                   ki1000109-EE               PAKISTAN                       NA                   NA                0.1040000   0.0730627   0.1349373
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0964467   0.0724546   0.1204388
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1166667   0.0696386   0.1636948
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0211382   0.0097604   0.0325160
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0273973   0.0155476   0.0392469
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0405405   0.0318905   0.0491906
6-24 months                   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1196078   0.1055228   0.1336929
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0325546   0.0291854   0.0359239
6-24 months                   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0193470   0.0099536   0.0287404
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.0382600   0.0335226   0.0429975
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0676067   0.0582484   0.0769649
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0320088   0.0291040   0.0349136
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0442321   0.0375131   0.0509510


### Parameter: RR


agecat                        studyid                    country                        intervention_level           baseline_level                 estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    0.8200000   0.3470369    1.937546
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.4155980   0.8819556    2.272130
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.0055651   0.5941465    1.701872
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.9675635   1.4933355    2.592389
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    1.3591441   0.6506329    2.839193
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    2.9886792   1.2352498    7.231091
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    4.0438095   1.7024219    9.605372
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    2.5817938   1.3639777    4.886927
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.5221084   1.1255928    2.058306
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    1.3877304   1.0847831    1.775282
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    4.0798442   1.4921752   11.154943
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.6041836   1.2668461    2.031348
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    1.8438202   1.3403566    2.536394
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    1.3378687   1.1630657    1.538944
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    2.2088247   1.6473564    2.961658
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    0.5256410   0.2187716    1.262954
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.2337331   0.9517239    1.599306
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.4389388   0.7505500    2.758703
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    0.6088733   0.3041850    1.218754
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.0900653   0.6851127    1.734375
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    1.0231939   0.4462795    2.345897
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    0.8430778   0.6774088    1.049263
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    0.9455571   0.2661084    3.359828
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    1.5348837   0.6195028    3.802837
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    4.4209425   2.0320264    9.618346
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.1963368   0.6629722    2.158796
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    2.4065308   1.6545036    3.500379
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    1.6895734   0.7541867    3.785082
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    5.0486486   1.6757724   15.210211
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    3.9954516   1.6827630    9.486561
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    3.2590095   1.6395696    6.478007
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.5851476   1.1330109    2.217713
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    1.7217486   1.3291066    2.230384
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    4.6948941   1.6759628   13.151862
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    2.2038264   1.7074892    2.844440
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    2.1287186   1.5014418    3.018061
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    2.1204132   1.7623672    2.551201
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    2.4581275   1.8226982    3.315080


### Parameter: PAR


agecat                        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0029825   -0.0149462   0.0089812
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0119800   -0.0067825   0.0307425
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0006413   -0.0259006   0.0246179
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0212645    0.0119767   0.0305523
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0143083   -0.0193587   0.0479753
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0087171   -0.0001074   0.0175416
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0109812    0.0021914   0.0197709
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0026281    0.0000833   0.0051730
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0055572    0.0001402   0.0109741
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0015789    0.0002920   0.0028657
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0041161   -0.0006476   0.0088798
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0051442    0.0022412   0.0080472
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0060074    0.0020680   0.0099467
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0040563    0.0020786   0.0060341
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0110386    0.0062383   0.0158389
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0116294   -0.0243594   0.0011006
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0017947   -0.0005712   0.0041606
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0014793   -0.0017348   0.0046933
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0004261   -0.0009361   0.0000839
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0003818   -0.0012149   0.0019786
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0000460   -0.0016358   0.0017279
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0009314   -0.0021832   0.0003205
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0000658   -0.0015406   0.0014089
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0046714   -0.0069441   0.0162869
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0249917    0.0080192   0.0419642
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0043841   -0.0189005   0.0276687
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0236197    0.0128862   0.0343532
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0231489   -0.0141611   0.0604588
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0104316    0.0012562   0.0196070
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0112971    0.0022155   0.0203787
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0027754    0.0000789   0.0054719
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0059458    0.0008034   0.0110882
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0028290    0.0012597   0.0043983
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0047582   -0.0005192   0.0100356
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0073821    0.0044470   0.0103172
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0063323    0.0024215   0.0102432
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0090773    0.0066199   0.0115346
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0121132    0.0072695   0.0169569


### Parameter: PAF


agecat                        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0199557   -0.1031258   0.0569439
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0633227   -0.0407546   0.1569921
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0047408   -0.2099323   0.1656524
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.1855360    0.0996041   0.2632668
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.1183190   -0.2064187   0.3556455
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.3151914   -0.0430123   0.5503765
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.4139896    0.0540478   0.6369709
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0525403    0.0010802   0.1013494
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0381036    0.0003274   0.0744523
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0458137    0.0079280   0.0822527
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2096924   -0.0486896   0.4044128
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.1016989    0.0433434   0.1564948
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0720640    0.0242173   0.1175645
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.1133285    0.0566245   0.1666241
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.2381257    0.1334627   0.3301472
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0791613   -0.1679596   0.0028857
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0571575   -0.0074055   0.1175829
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0352832   -0.0442089   0.1087238
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0433322   -0.0959263   0.0067378
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0197542   -0.0663702   0.0989228
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0020607   -0.0761268   0.0745675
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0561959   -0.1341308   0.0163835
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0137090   -0.3709271   0.2504300
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0580808   -0.0966511   0.1909808
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.3921773    0.1193418   0.5804861
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0421546   -0.2095959   0.2415088
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.2448990    0.1217649   0.3507689
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.1984190   -0.1847944   0.4576847
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.4934937   -0.0019911   0.7439611
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.4123435    0.0515703   0.6358821
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0684601    0.0011170   0.1312630
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0497108    0.0059814   0.0915165
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0869012    0.0381940   0.1331419
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2459383   -0.0450901   0.4559235
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.1929456    0.1161699   0.2630521
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0936645    0.0351804   0.1486035
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.2835867    0.2072071   0.3526076
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.2738553    0.1648904   0.3686026
