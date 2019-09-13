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
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              0      165     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              1       39     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        0       36     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        1       17     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              0      209     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              1       11     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        0       11     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        1        1     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              0      137     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              1       65     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Low birth weight                        0       16     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Low birth weight                        1       20     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              0      176     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              1       35     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Low birth weight                        0       15     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Low birth weight                        1        6     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              0      266     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              1       15     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Low birth weight                        0       13     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Low birth weight                        1        5     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              0      248     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              1       39     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        0       16     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        1        5     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0      115     135
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1       13     135
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0        6     135
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1        1     135
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0      185     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1      143     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        0       17     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        1       23     368
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight              0      175     407
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight              1      164     407
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birth weight                        0       20     407
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birth weight                        1       48     407
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight              0      143     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight              1      101     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birth weight                        0       69     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birth weight                        1       64     377
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              0       11      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              1        8      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Low birth weight                        0        2      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Low birth weight                        1        1      22
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              0      762    1492
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              1      370    1492
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        0      189    1492
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        1      171    1492
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              0       94     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              1       44     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        0       50     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        1       27     215
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              0      451     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              1       77     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        0      114     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        1       45     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              0      512     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              1       67     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        0      134     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        1       41     754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0     1839    2359
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      440    2359
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0       53    2359
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1       27    2359
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              0     1211    2105
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              1      697    2105
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birth weight                        0      108    2105
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birth weight                        1       89    2105
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              0        4       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              1        0       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Low birth weight                        0        2       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Low birth weight                        1        0       6
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         Normal or high birthweight              0      103     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         Normal or high birthweight              1        4     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         Low birth weight                        0        8     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         Low birth weight                        1        0     115
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              0        1       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              1        0       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        0        1       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        1        0       2
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           Normal or high birthweight              0       15      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           Normal or high birthweight              1        1      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           Low birth weight                        0        0      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           Low birth weight                        1        1      17
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Normal or high birthweight              0        2       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Normal or high birthweight              1        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Low birth weight                        0        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Low birth weight                        1        0       2
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              0    15667   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              1     1210   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Low birth weight                        0        0   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Low birth weight                        1        0   16877
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0    10786   13580
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1     1117   13580
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        0     1440   13580
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        1      237   13580
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              0      740     917
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              1       98     917
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birth weight                        0       62     917
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birth weight                        1       17     917
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight              0     4360    6524
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight              1      953    6524
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birth weight                        0      911    6524
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birth weight                        1      300    6524
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              0     1923    2975
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              1      781    2975
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        0      148    2975
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        1      123    2975
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              0    14126   26430
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              1     2525   26430
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        0     7815   26430
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        1     1964   26430
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              0     2566    4487
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              1      756    4487
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        0      721    4487
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        1      444    4487
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              0      188     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              1       16     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        0       49     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        1        3     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              0      213     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              1        7     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        0       12     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              0      168     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              1       33     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Low birth weight                        0       32     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Low birth weight                        1        4     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              0      197     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              1       12     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Low birth weight                        0       20     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Low birth weight                        1        1     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Normal or high birthweight              0      278     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Normal or high birthweight              1        3     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Low birth weight                        0       16     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Low birth weight                        1        2     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              0      276     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              1       10     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        0       19     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        1        2     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0      123     135
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1        5     135
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0        7     135
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1        0     135
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0      217     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1       98     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        0       25     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        1       10     350
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight              0      218     388
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight              1      110     388
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birth weight                        0       38     388
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birth weight                        1       22     388
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight              0      193     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight              1       49     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birth weight                        0      108     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birth weight                        1       23     373
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              0       14      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              1        5      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Low birth weight                        0        3      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Low birth weight                        1        0      22
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              0      984    1465
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              1      142    1465
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        0      296    1465
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        1       43    1465
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              0      121     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              1       15     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        0       64     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        1        7     207
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              0      503     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              1       25     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        0      144     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        1       11     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              0      560     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              1       17     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        0      169     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        1        3     749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0     2085    2351
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      187    2351
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0       66    2351
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1       13    2351
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight              0     1535    1932
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight              1      220    1932
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birth weight                        0      144    1932
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birth weight                        1       33    1932
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              0        4       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              1        0       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Low birth weight                        0        2       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Low birth weight                        1        0       6
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         Normal or high birthweight              0      105     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         Normal or high birthweight              1        1     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         Low birth weight                        0        7     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         Low birth weight                        1        0     113
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              0        1       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        0        1       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           Normal or high birthweight              0       15      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           Normal or high birthweight              1        1      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           Low birth weight                        0        1      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           Low birth weight                        1        0      17
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Normal or high birthweight              0        2       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Normal or high birthweight              1        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Low birth weight                        0        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Low birth weight                        1        0       2
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Normal or high birthweight              0    15595   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Normal or high birthweight              1     1062   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Low birth weight                        0        0   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Low birth weight                        1        0   16657
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0    11385   13322
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1      382   13322
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        0     1510   13322
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        1       45   13322
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              0      775     867
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              1       17     867
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Low birth weight                        0       75     867
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Low birth weight                        1        0     867
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight              0     4576    6053
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight              1      464    6053
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birth weight                        0      944    6053
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birth weight                        1       69    6053
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              0     2432    2954
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              1      259    2954
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        0      240    2954
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        1       23    2954
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              0    15316   26186
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              1     1264   26186
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        0     8990   26186
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        1      616   26186
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              0     3188    4372
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              1       98    4372
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        0     1058    4372
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        1       28    4372
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              0      159     235
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              1       27     235
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        0       34     235
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        1       15     235
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              0      192     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              1        5     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        0        9     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        1        1     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              0      150     228
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              1       42     228
6-24 months                   ki0047075b-MAL-ED          INDIA                          Low birth weight                        0       18     228
6-24 months                   ki0047075b-MAL-ED          INDIA                          Low birth weight                        1       18     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              0      181     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              1       26     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Low birth weight                        0       15     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Low birth weight                        1        6     228
6-24 months                   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              0      237     267
6-24 months                   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              1       13     267
6-24 months                   ki0047075b-MAL-ED          PERU                           Low birth weight                        0       13     267
6-24 months                   ki0047075b-MAL-ED          PERU                           Low birth weight                        1        4     267
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              0      212     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              1       31     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        0       11     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        1        5     259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0      107     123
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1       11     123
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0        4     123
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1        1     123
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0      250     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1       80     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        0       24     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        1       19     373
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight              0      246     408
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight              1       93     408
6-24 months                   ki1000108-IRC              INDIA                          Low birth weight                        0       35     408
6-24 months                   ki1000108-IRC              INDIA                          Low birth weight                        1       34     408
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight              0      171     375
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight              1       71     375
6-24 months                   ki1000109-EE               PAKISTAN                       Low birth weight                        0       80     375
6-24 months                   ki1000109-EE               PAKISTAN                       Low birth weight                        1       53     375
6-24 months                   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              0       11      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              1        3      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       Low birth weight                        0        1      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       Low birth weight                        1        1      16
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              0      768    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              1      278    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        0      188    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        1      145    1379
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              0       80     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              1       37     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        0       39     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        1       24     180
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              0      407     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              1       60     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        0      109     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        1       39     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              0      504     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              1       55     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        0      130     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        1       41     730
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0     1633    1998
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      300    1998
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0       46    1998
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1       19    1998
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              0     1259    2040
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              1      598    2040
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birth weight                        0      111    2040
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birth weight                        1       72    2040
6-24 months                   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              0        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              1        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     Low birth weight                        0        1       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     Low birth weight                        1        0       1
6-24 months                   ki1114097-CMIN             BRAZIL                         Normal or high birthweight              0      103     115
6-24 months                   ki1114097-CMIN             BRAZIL                         Normal or high birthweight              1        4     115
6-24 months                   ki1114097-CMIN             BRAZIL                         Low birth weight                        0        8     115
6-24 months                   ki1114097-CMIN             BRAZIL                         Low birth weight                        1        0     115
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              0        1       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              1        0       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        0        1       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        1        0       2
6-24 months                   ki1114097-CMIN             PERU                           Normal or high birthweight              0       13      14
6-24 months                   ki1114097-CMIN             PERU                           Normal or high birthweight              1        0      14
6-24 months                   ki1114097-CMIN             PERU                           Low birth weight                        0        0      14
6-24 months                   ki1114097-CMIN             PERU                           Low birth weight                        1        1      14
6-24 months                   ki1114097-CONTENT          PERU                           Normal or high birthweight              0        2       2
6-24 months                   ki1114097-CONTENT          PERU                           Normal or high birthweight              1        0       2
6-24 months                   ki1114097-CONTENT          PERU                           Low birth weight                        0        0       2
6-24 months                   ki1114097-CONTENT          PERU                           Low birth weight                        1        0       2
6-24 months                   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              0    16431   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              1      167   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Low birth weight                        0        0   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Low birth weight                        1        0   16598
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0     8479   10659
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1      796   10659
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        0     1180   10659
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        1      204   10659
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              0      669     827
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              1       85     827
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birth weight                        0       56     827
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birth weight                        1       17     827
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight              0     4494    6299
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight              1      540    6299
6-24 months                   ki1135781-COHORTS          INDIA                          Low birth weight                        0     1022    6299
6-24 months                   ki1135781-COHORTS          INDIA                          Low birth weight                        1      243    6299
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              0     1886    2766
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              1      626    2766
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        0      142    2766
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        1      112    2766
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              0     9535   17214
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              1     1406   17214
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        0     4849   17214
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        1     1424   17214
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              0     2620    4499
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              1      701    4499
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        0      745    4499
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        1      433    4499


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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
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
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/4166592e-224f-4e7d-93fc-6e94169d7e50/701cd849-dae4-4078-81ce-ecd2acfc4bb1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4166592e-224f-4e7d-93fc-6e94169d7e50/701cd849-dae4-4078-81ce-ecd2acfc4bb1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4166592e-224f-4e7d-93fc-6e94169d7e50/701cd849-dae4-4078-81ce-ecd2acfc4bb1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4166592e-224f-4e7d-93fc-6e94169d7e50/701cd849-dae4-4078-81ce-ecd2acfc4bb1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1891045   0.1348962   0.2433127
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.2953109   0.1682891   0.4223328
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.3227529   0.2581299   0.3873759
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.5166533   0.3462188   0.6870877
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.1658768   0.1155785   0.2161750
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                0.2857143   0.0920817   0.4793469
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.0533808   0.0270537   0.0797079
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Low birth weight             NA                0.2777778   0.0705140   0.4850416
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.1358885   0.0961794   0.1755976
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                0.2380952   0.0556341   0.4205563
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.4353535   0.3815787   0.4891284
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.5385148   0.3843507   0.6926788
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.4807778   0.4274182   0.5341373
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birth weight             NA                0.7243506   0.6155274   0.8331738
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.4158425   0.3536231   0.4780618
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.4783498   0.3944349   0.5622647
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.3259724   0.2806918   0.3712530
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.4787458   0.4078369   0.5496547
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3190716   0.2396375   0.3985056
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.3444587   0.2361386   0.4527789
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.1459430   0.1155090   0.1763769
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.2945853   0.2235606   0.3656100
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.1153921   0.0892838   0.1415004
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.2439550   0.1808009   0.3071092
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1929973   0.1767886   0.2092059
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.3264804   0.2208934   0.4320674
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.3626461   0.3410535   0.3842387
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.4811928   0.4090412   0.5533444
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0936116   0.0883761   0.0988470
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.1427393   0.1256588   0.1598197
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1169088   0.0951143   0.1387032
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.2157952   0.1211369   0.3104535
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.1784696   0.1681679   0.1887714
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.2542392   0.2298659   0.2786124
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.2882530   0.2711597   0.3053463
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.4557579   0.3968857   0.5146300
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1512264   0.1445655   0.1578874
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.2014720   0.1930534   0.2098907
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.2269320   0.2100623   0.2438017
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.3847910   0.3523941   0.4171880
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.3108723   0.2596531   0.3620915
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.2701447   0.1178357   0.4224538
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3325587   0.2813766   0.3837407
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birth weight             NA                0.3921701   0.2730179   0.5113222
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1997044   0.1494337   0.2499751
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.1774475   0.1119003   0.2429947
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1264027   0.0938913   0.1589140
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.1270325   0.1001016   0.1539635
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1102941   0.0575190   0.1630693
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.0985916   0.0290809   0.1681022
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0465688   0.0286098   0.0645277
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.0747557   0.0329394   0.1165719
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0823429   0.0710390   0.0936468
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.1789419   0.0960417   0.2618421
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1249414   0.1094411   0.1404418
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.1994591   0.1390956   0.2598226
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0323594   0.0291624   0.0355563
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0291092   0.0205957   0.0376228
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0919078   0.0839298   0.0998859
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.0679797   0.0524036   0.0835559
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0962111   0.0850573   0.1073649
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.0824393   0.0494586   0.1154199
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0760024   0.0712187   0.0807860
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.0644657   0.0592489   0.0696826
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0296205   0.0234755   0.0357655
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.0254158   0.0145831   0.0362484
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1438621   0.0929282   0.1947961
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.3035077   0.1719207   0.4350947
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.2202400   0.1615899   0.2788901
6-24 months                   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.5110241   0.3361529   0.6858952
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.1256039   0.0803586   0.1708491
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                0.2857143   0.0920744   0.4793542
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.1275720   0.0855451   0.1695989
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                0.3125000   0.0849434   0.5400566
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.2431760   0.1968164   0.2895357
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.4594770   0.3072518   0.6117022
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.2742029   0.2265461   0.3218596
6-24 months                   ki1000108-IRC              INDIA                          Low birth weight             NA                0.4946580   0.3738147   0.6155013
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.2945635   0.2366977   0.3524294
6-24 months                   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.3843435   0.3040988   0.4645883
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.2645825   0.2293842   0.2997809
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.4403694   0.3782038   0.5025350
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3178392   0.2311827   0.4044957
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.3834080   0.2615290   0.5052869
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.1276755   0.0972788   0.1580722
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.2546656   0.1857139   0.3236173
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0965925   0.0718722   0.1213127
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.2335773   0.1694278   0.2977268
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1551948   0.1390487   0.1713408
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.3053439   0.1922492   0.4184387
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.3205739   0.2993454   0.3418025
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.4107782   0.3396688   0.4818876
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0855234   0.0798275   0.0912193
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.1485000   0.1297757   0.1672243
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1125600   0.0899645   0.1351554
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.2375576   0.1369564   0.3381588
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.1061835   0.0976625   0.1147044
6-24 months                   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.2004379   0.1785438   0.2223321
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.2485174   0.2316018   0.2654329
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.4372188   0.3768621   0.4975755
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1279423   0.1207748   0.1351098
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.2286750   0.2175188   0.2398311
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.2104930   0.1939222   0.2270639
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.3717080   0.3396269   0.4037892


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2178988   0.1673295   0.2684681
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3571429   0.2961397   0.4181460
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1767241   0.1275357   0.2259125
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0668896   0.0385244   0.0952548
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1428571   0.1037139   0.1820004
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.5208845   0.4722913   0.5694778
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       NA                   NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3626005   0.3118807   0.4133204
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3302326   0.2672220   0.3932431
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1979652   0.1818822   0.2140482
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3733967   0.3527283   0.3940651
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0997054   0.0946662   0.1047447
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1254089   0.1039619   0.1468560
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.1920601   0.1825006   0.2016195
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3038655   0.2873358   0.3203952
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1698449   0.1645183   0.1751714
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2674393   0.2524050   0.2824735
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.3402062   0.2930034   0.3874090
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       NA                   NA                0.1930295   0.1529228   0.2331362
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1262799   0.0958566   0.1567031
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1062802   0.0641938   0.1483666
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0850702   0.0737905   0.0963499
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1309524   0.1159059   0.1459989
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0320522   0.0290611   0.0350434
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0880555   0.0809161   0.0951949
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0954638   0.0848652   0.1060624
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0717941   0.0681270   0.0754612
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0288198   0.0235259   0.0341136
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1787234   0.1296354   0.2278114
6-24 months                   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2631579   0.2058743   0.3204415
6-24 months                   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1403509   0.0951649   0.1855368
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1389961   0.0967835   0.1812087
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months                   ki1000108-IRC              INDIA                          NA                   NA                0.3112745   0.2662918   0.3562572
6-24 months                   ki1000109-EE               PAKISTAN                       NA                   NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3067440   0.2633529   0.3501352
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3388889   0.2695483   0.4082295
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1596597   0.1435945   0.1757248
6-24 months                   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3284314   0.3080465   0.3488162
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0938174   0.0882819   0.0993530
6-24 months                   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1233374   0.1009129   0.1457618
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.1243054   0.1161571   0.1324538
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2668113   0.2503255   0.2832971
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1644011   0.1582491   0.1705531
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2520560   0.2372444   0.2668676


### Parameter: RR


agecat                        studyid                    country                        intervention_level           baseline_level                 estimate    ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  ----------  ----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    1.5616287   0.9306502    2.6204091
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    1.6007705   1.0861386    2.3592441
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight    1.7224490   0.8197876    3.6190234
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    5.2037037   2.1275156   12.7277716
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight    1.7521368   0.7715727    3.9788646
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    1.2369596   0.9054150    1.6899092
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.5066225   1.2497433    1.8163021
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.1503149   0.9143338    1.4472006
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.4686698   1.3363636    1.6140749
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    1.0795657   0.7244657    1.6087194
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    2.0184959   1.4679998    2.7754267
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    2.1141401   1.4995043    2.9807107
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    1.6916324   1.2112107    2.3626112
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.3268937   1.1299619    1.5581471
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    1.5248034   1.3362338    1.7399840
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    1.8458426   1.1460888    2.9728367
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.4245514   1.2740075    1.5928844
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    1.5811038   1.3718911    1.8222212
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    1.3322542   1.2551398    1.4141064
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    1.6956225   1.5142386    1.8987337
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    0.8689893   0.4829688    1.5635427
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.1792508   0.8403887    1.6547490
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    0.8885507   0.5685767    1.3885941
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.0049829   0.8656877    1.1666918
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    0.8938967   0.3812725    2.0957488
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    1.6052739   0.8145679    3.1635228
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    2.1731300   1.3403831    3.5232417
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.5964207   1.1515481    2.2131589
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    0.8995604   0.6606154    1.2249320
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    0.7396511   0.5789197    0.9450081
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    0.8568585   0.5649230    1.2996577
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    0.8482067   0.7674347    0.9374798
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    0.8580452   0.5297326    1.3898363
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    2.1097127   1.2051993    3.6930718
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    2.3203053   1.5019081    3.5846513
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight    2.2747253   1.0558401    4.9007187
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight    2.4495968   1.1015172    5.4475085
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    1.8894829   1.2899648    2.7676302
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.8039854   1.3372133    2.4336907
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.3047900   0.9803870    1.7365355
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.6643933   1.5181820    1.8246857
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    1.2062954   0.7950288    1.8303091
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    1.9946315   1.3907936    2.8606365
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    2.4181730   1.6610234    3.5204565
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    1.9674888   1.3390241    2.8909204
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.2813837   1.0652042    1.5414359
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    1.7363671   1.5056848    2.0023918
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    2.1104982   1.3211813    3.3713787
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.8876568   1.6490390    2.1608029
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    1.7593088   1.5086617    2.0515982
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    1.7873287   1.6601161    1.9242894
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    1.7658923   1.5698978    1.9863559


### Parameter: PAR


agecat                        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0287944   -0.0004318    0.0580206
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0343900    0.0053861    0.0633938
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0108474   -0.0077963    0.0294911
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0135088   -0.0004526    0.0274703
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0069686   -0.0060852    0.0200224
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0157334   -0.0026173    0.0340841
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0401067    0.0180242    0.0621893
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0218233   -0.0152382    0.0588849
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0366281    0.0224275    0.0508288
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0111610   -0.0374901    0.0598121
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0316407    0.0132038    0.0500777
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0278440    0.0116558    0.0440321
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0049680    0.0012471    0.0086889
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0107506    0.0038675    0.0176336
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0060939    0.0039196    0.0082682
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0085002    0.0002477    0.0167526
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0135904    0.0086625    0.0185184
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0156126    0.0097436    0.0214815
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0186185    0.0146991    0.0225379
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0405073    0.0310314    0.0499831
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0023009   -0.0181881    0.0135863
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0076475   -0.0127921    0.0280871
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0066749   -0.0355495    0.0221997
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0001228   -0.0044421    0.0041965
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0040139   -0.0339585    0.0259306
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0061398   -0.0038684    0.0161481
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0027273   -0.0001163    0.0055708
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0060110    0.0005078    0.0115141
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0003071   -0.0013500    0.0007357
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0038523   -0.0067856   -0.0009191
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0007473   -0.0039787    0.0024841
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0042083   -0.0067447   -0.0016719
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0008008   -0.0039851    0.0023835
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0348613    0.0046348    0.0650878
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0429179    0.0122779    0.0735579
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0147470   -0.0045335    0.0340276
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0114241   -0.0038686    0.0267169
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0222395    0.0032366    0.0412424
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0370716    0.0141934    0.0599498
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0361031   -0.0003478    0.0725541
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0421615    0.0284254    0.0558976
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0210497   -0.0320563    0.0741557
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0333001    0.0139317    0.0526685
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0349144    0.0181329    0.0516958
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0044649    0.0006659    0.0082639
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0078574    0.0012880    0.0144269
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0082940    0.0057293    0.0108587
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0107774    0.0016771    0.0198777
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0181220    0.0133894    0.0228546
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0182939    0.0121210    0.0244668
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0364588    0.0316432    0.0412743
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0415630    0.0320987    0.0510272


### Parameter: PAF


agecat                        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.1321456   -0.0112601    0.2552152
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0962919    0.0114636    0.1738410
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0613802   -0.0493457    0.1604224
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.2019573   -0.0157907    0.3730282
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0487805   -0.0463916    0.1352965
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0348789   -0.0067894    0.0748226
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0769974    0.0329874    0.1190043
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0498630   -0.0388875    0.1310316
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.1010151    0.0660402    0.1346803
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0337973   -0.1254821    0.1705354
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.1781736    0.0701854    0.2736200
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.1943923    0.0772091    0.2966947
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0250952    0.0061745    0.0436557
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0287913    0.0101589    0.0470729
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0611186    0.0392241    0.0825142
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0677795    0.0003706    0.1306428
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0707614    0.0448639    0.0959568
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0513799    0.0318891    0.0704783
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.1096203    0.0859279    0.1326986
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.1514634    0.1151882    0.1862514
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0074567   -0.0602773    0.0427325
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0224791   -0.0395265    0.0807861
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0345797   -0.1954161    0.1046170
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0009725   -0.0356646    0.0325575
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0377674   -0.3610830    0.2087469
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.1164865   -0.0917419    0.2849994
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0320589   -0.0017126    0.0646918
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0459018    0.0031398    0.0868295
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0095827   -0.0426330    0.0224199
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0437490   -0.0774360   -0.0111152
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0078282   -0.0422427    0.0254500
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0586162   -0.0941714   -0.0242163
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0277856   -0.1446322    0.0771331
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.1950573    0.0126869    0.3437414
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.1630880    0.0410447    0.2695991
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.1050725   -0.0399371    0.2298618
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0821902   -0.0324343    0.1840887
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0837913    0.0098321    0.1522262
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.1190963    0.0427606    0.1893445
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.1091829   -0.0081354    0.2128486
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.1374484    0.1025996    0.1709440
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0621138   -0.1088107    0.2066901
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.2068642    0.0816950    0.3149724
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.2654948    0.1343739    0.3767541
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0279651    0.0039862    0.0513668
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0239241    0.0037045    0.0437334
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0884061    0.0610491    0.1149660
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0873815    0.0118586    0.1571321
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.1457860    0.1077040    0.1822426
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0685650    0.0452489    0.0913117
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.2217672    0.1921027    0.2503424
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.1648958    0.1264252    0.2016723
