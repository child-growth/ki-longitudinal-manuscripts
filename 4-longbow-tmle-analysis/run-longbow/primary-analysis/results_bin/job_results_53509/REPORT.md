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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** birthwt

**Adjustment Set:**

* arm
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

agecat                       studyid                    country                        birthwt                       ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  ---------------------------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               0       92     214
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               1       97     214
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                          0        9     214
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                          1       16     214
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               0      167     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               1       32     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                          0        3     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                          1        0     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               0       86     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               1       99     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Low birthweight                          0       10     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Low birthweight                          1       11     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               0      150     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               1       49     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          Low birthweight                          0        5     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          Low birthweight                          1        3     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight               0      115     265
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight               1      148     265
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           Low birthweight                          0        0     265
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           Low birthweight                          1        2     265
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               0      135     275
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               1      130     275
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                          0        3     275
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                          1        7     275
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0       33     164
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1      130     164
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0        1     164
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1        0     164
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0       27     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1      255     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                          0        1     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                          1       13     296
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Normal or high birthweight               0      134     355
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Normal or high birthweight               1      173     355
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Low birthweight                          0       12     355
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Low birthweight                          1       36     355
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Normal or high birthweight               0       39     213
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Normal or high birthweight               1      136     213
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Low birthweight                          0        2     213
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Low birthweight                          1       36     213
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               0       11      28
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               1       17      28
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       Low birthweight                          0        0      28
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       Low birthweight                          1        0      28
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               0      439    1081
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               1      524    1081
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                          0       30    1081
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                          1       88    1081
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               0      177     511
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               1      232     511
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                          0       27     511
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                          1       75     511
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               0      349     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               1      173     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                          0       46     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                          1       65     633
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               0      353     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               1      186     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                          0       43     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                          1       71     653
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     1525    2211
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1      637    2211
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0       26    2211
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1       23    2211
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight               0      644    1455
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight               1      633    1455
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Low birthweight                          0       39    1455
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Low birthweight                          1      139    1455
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight               0      214     575
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight               1      240     575
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                          0       38     575
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                          1       83     575
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               0        7      17
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               1        6      17
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     Low birthweight                          0        3      17
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     Low birthweight                          1        1      17
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           Normal or high birthweight               0        2       2
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           Normal or high birthweight               1        0       2
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           Low birthweight                          0        0       2
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           Low birthweight                          1        0       2
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Normal or high birthweight               0    14067   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Normal or high birthweight               1     2675   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Low birthweight                          0        0   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Low birthweight                          1        0   16742
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0     7723   12551
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1     3655   12551
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                          0      451   12551
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                          1      722   12551
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               0      232     833
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               1      555     833
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Low birthweight                          0        6     833
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Low birthweight                          1       40     833
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Normal or high birthweight               0     3828    5963
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Normal or high birthweight               1     1337    5963
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Low birthweight                          0      434    5963
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Low birthweight                          1      364    5963
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               0      914    2830
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               1     1735    2830
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                          0       35    2830
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                          1      146    2830
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               0     9258   15275
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               1     2613   15275
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                          0     1968   15275
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                          1     1436   15275
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               0     1671    3199
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               1     1150    3199
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                          0      158    3199
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                          1      220    3199
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               0      155     214
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               1       34     214
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                          0       13     214
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                          1       12     214
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               0      178     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               1       21     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                          0        3     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                          1        0     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               0      146     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               1       39     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Low birthweight                          0       15     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Low birthweight                          1        6     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               0      187     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               1       12     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          Low birthweight                          0        6     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          Low birthweight                          1        2     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           Normal or high birthweight               0      174     265
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           Normal or high birthweight               1       89     265
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           Low birthweight                          0        0     265
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           Low birthweight                          1        2     265
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               0      194     275
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               1       71     275
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                          0        4     275
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                          1        6     275
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0      120     164
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1       43     164
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0        1     164
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1        0     164
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0      177     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1      101     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                          0        3     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                          1       11     292
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Normal or high birthweight               0      214     355
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Normal or high birthweight               1       93     355
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Low birthweight                          0       21     355
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Low birthweight                          1       27     355
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight               0       86     213
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight               1       89     213
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Low birthweight                          0        9     213
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Low birthweight                          1       29     213
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               0       13      28
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               1       15      28
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       Low birthweight                          0        0      28
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       Low birthweight                          1        0      28
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               0      801    1080
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               1      161    1080
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                          0       69    1080
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                          1       49    1080
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               0      332     511
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               1       77     511
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                          0       61     511
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                          1       41     511
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               0      461     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               1       61     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                          0       71     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                          1       40     633
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               0      460     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               1       79     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                          0       69     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                          1       45     653
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     1876    2211
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1      286    2211
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0       35    2211
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1       14    2211
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight               0     1000    1455
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight               1      277    1455
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Low birthweight                          0       83    1455
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Low birthweight                          1       95    1455
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight               0      394     575
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight               1       60     575
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                          0       81     575
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                          1       40     575
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               0       11      17
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               1        2      17
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     Low birthweight                          0        3      17
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     Low birthweight                          1        1      17
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           Normal or high birthweight               0        2       2
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           Normal or high birthweight               1        0       2
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           Low birthweight                          0        0       2
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           Low birthweight                          1        0       2
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Normal or high birthweight               0    15212   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Normal or high birthweight               1     1528   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Low birthweight                          0        0   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Low birthweight                          1        0   16740
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0     9760   12540
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1     1608   12540
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                          0      628   12540
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                          1      544   12540
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               0      597     814
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               1      171     814
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Low birthweight                          0       24     814
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Low birthweight                          1       22     814
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Normal or high birthweight               0     4755    5847
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Normal or high birthweight               1      305    5847
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Low birthweight                          0      631    5847
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Low birthweight                          1      156    5847
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               0     2199    2830
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               1      450    2830
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                          0       97    2830
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                          1       84    2830
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               0    10716   15273
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               1     1154   15273
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                          0     2431   15273
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                          1      972   15273
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               0     2576    3194
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               1      241    3194
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                          0      305    3194
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                          1       72    3194
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               0       82     157
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               1       63     157
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                          0        8     157
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                          1        4     157
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               0      150     163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               1       11     163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         Low birthweight                          0        2     163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         Low birthweight                          1        0     163
6-24 months                  ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               0       77     152
6-24 months                  ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               1       60     152
6-24 months                  ki0047075b-MAL-ED          INDIA                          Low birthweight                          0       10     152
6-24 months                  ki0047075b-MAL-ED          INDIA                          Low birthweight                          1        5     152
6-24 months                  ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               0      147     190
6-24 months                  ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               1       37     190
6-24 months                  ki0047075b-MAL-ED          NEPAL                          Low birthweight                          0        5     190
6-24 months                  ki0047075b-MAL-ED          NEPAL                          Low birthweight                          1        1     190
6-24 months                  ki0047075b-MAL-ED          PERU                           Normal or high birthweight               0       90     149
6-24 months                  ki0047075b-MAL-ED          PERU                           Normal or high birthweight               1       59     149
6-24 months                  ki0047075b-MAL-ED          PERU                           Low birthweight                          0        0     149
6-24 months                  ki0047075b-MAL-ED          PERU                           Low birthweight                          1        0     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               0       98     158
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               1       59     158
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                          0        0     158
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                          1        1     158
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0       26     113
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1       87     113
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0        0     113
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1        0     113
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0       27     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1      155     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                          0        1     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                          1        2     185
6-24 months                  ki1000108-IRC              INDIA                          Normal or high birthweight               0      134     235
6-24 months                  ki1000108-IRC              INDIA                          Normal or high birthweight               1       80     235
6-24 months                  ki1000108-IRC              INDIA                          Low birthweight                          0       12     235
6-24 months                  ki1000108-IRC              INDIA                          Low birthweight                          1        9     235
6-24 months                  ki1000109-EE               PAKISTAN                       Normal or high birthweight               0       37      93
6-24 months                  ki1000109-EE               PAKISTAN                       Normal or high birthweight               1       47      93
6-24 months                  ki1000109-EE               PAKISTAN                       Low birthweight                          0        2      93
6-24 months                  ki1000109-EE               PAKISTAN                       Low birthweight                          1        7      93
6-24 months                  ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               0        6       8
6-24 months                  ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               1        2       8
6-24 months                  ki1000109-ResPak           PAKISTAN                       Low birthweight                          0        0       8
6-24 months                  ki1000109-ResPak           PAKISTAN                       Low birthweight                          1        0       8
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               0      376     803
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               1      363     803
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                          0       24     803
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                          1       40     803
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               0      128     330
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               1      155     330
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                          0       13     330
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                          1       34     330
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               0      288     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               1      112     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                          0       31     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                          1       25     456
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               0      334     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               1      107     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                          0       39     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                          1       26     506
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     1211    1589
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1      351    1589
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0       18    1589
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1        9    1589
6-24 months                  ki1101329-Keneba           GAMBIA                         Normal or high birthweight               0      611    1045
6-24 months                  ki1101329-Keneba           GAMBIA                         Normal or high birthweight               1      356    1045
6-24 months                  ki1101329-Keneba           GAMBIA                         Low birthweight                          0       34    1045
6-24 months                  ki1101329-Keneba           GAMBIA                         Low birthweight                          1       44    1045
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight               0      152     396
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight               1      180     396
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          Low birthweight                          0       21     396
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          Low birthweight                          1       43     396
6-24 months                  ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               0        2       7
6-24 months                  ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               1        4       7
6-24 months                  ki1114097-CMIN             BANGLADESH                     Low birthweight                          0        1       7
6-24 months                  ki1114097-CMIN             BANGLADESH                     Low birthweight                          1        0       7
6-24 months                  ki1114097-CONTENT          PERU                           Normal or high birthweight               0        2       2
6-24 months                  ki1114097-CONTENT          PERU                           Normal or high birthweight               1        0       2
6-24 months                  ki1114097-CONTENT          PERU                           Low birthweight                          0        0       2
6-24 months                  ki1114097-CONTENT          PERU                           Low birthweight                          1        0       2
6-24 months                  ki1119695-PROBIT           BELARUS                        Normal or high birthweight               0    13802   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        Normal or high birthweight               1     1149   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        Low birthweight                          0        0   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        Low birthweight                          1        0   14951
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0     5986    8471
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1     2050    8471
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                          0      254    8471
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                          1      181    8471
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               0      153     569
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               1      393     569
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Low birthweight                          0        2     569
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Low birthweight                          1       21     569
6-24 months                  ki1135781-COHORTS          INDIA                          Normal or high birthweight               0     3503    5147
6-24 months                  ki1135781-COHORTS          INDIA                          Normal or high birthweight               1     1040    5147
6-24 months                  ki1135781-COHORTS          INDIA                          Low birthweight                          0      388    5147
6-24 months                  ki1135781-COHORTS          INDIA                          Low birthweight                          1      216    5147
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               0      729    2093
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               1     1285    2093
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Low birthweight                          0       17    2093
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Low birthweight                          1       62    2093
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               0     5658    8640
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               1     1459    8640
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                          0     1051    8640
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                          1      472    8640
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               0     1664    2884
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               1      910    2884
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                          0      158    2884
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                          1      152    2884


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
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




# Results Detail

## Results Plots
![](/tmp/5f268103-c9d5-44c9-9eca-c561f7bc2f1a/79cd25a1-3e88-47a8-9259-18d305a8132a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5f268103-c9d5-44c9-9eca-c561f7bc2f1a/79cd25a1-3e88-47a8-9259-18d305a8132a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5f268103-c9d5-44c9-9eca-c561f7bc2f1a/79cd25a1-3e88-47a8-9259-18d305a8132a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5f268103-c9d5-44c9-9eca-c561f7bc2f1a/79cd25a1-3e88-47a8-9259-18d305a8132a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.5132275   0.4418022   0.5846528
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.6400000   0.4514023   0.8285977
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.5344312   0.4623354   0.6065270
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.4857764   0.2660241   0.7055286
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.5623368   0.5067457   0.6179279
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Low birthweight              NA                0.7162548   0.5943578   0.8381518
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.5426990   0.4770705   0.6083276
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.7412198   0.6322133   0.8502264
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5664622   0.5182944   0.6146300
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.7380595   0.6503251   0.8257940
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.3303668   0.2898492   0.3708845
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.5749125   0.4834480   0.6663771
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.3441468   0.3039671   0.3843264
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.6251210   0.5330088   0.7172332
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2946203   0.2753054   0.3139351
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.5117803   0.3982144   0.6253462
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.4935286   0.4661167   0.5209406
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.7926289   0.7323983   0.8528596
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.5278446   0.4817087   0.5739805
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.6860974   0.6005246   0.7716702
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.3211996   0.3126151   0.3297841
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.6147484   0.5863372   0.6431596
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7052097   0.6733356   0.7370837
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.8695652   0.7721834   0.9669470
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.2586631   0.2467300   0.2705961
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.4591380   0.4247354   0.4935407
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.6537513   0.6356534   0.6718492
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.8204832   0.7634061   0.8775603
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.2200365   0.2115337   0.2285394
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.4220680   0.4037146   0.4404213
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.4077322   0.3860623   0.4294021
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.5808857   0.5148532   0.6469182
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1788022   0.1240843   0.2335200
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.4569600   0.2532384   0.6606817
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.2108108   0.1518917   0.2697299
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.2857143   0.0920288   0.4793998
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3030789   0.2515741   0.3545836
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Low birthweight              NA                0.5670920   0.4247030   0.7094810
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.5085714   0.4343282   0.5828147
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.7631579   0.6276655   0.8986503
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1661621   0.1408135   0.1915107
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.4168445   0.3130807   0.5206083
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1863769   0.1485989   0.2241548
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.4109284   0.3135902   0.5082667
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.1168040   0.0891642   0.1444438
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.3577807   0.2674926   0.4480689
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.1465225   0.1165997   0.1764453
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.3976023   0.3066422   0.4885623
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1321538   0.1177930   0.1465145
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.3035200   0.1929130   0.4141270
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.2157540   0.1931452   0.2383628
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.5413318   0.4679599   0.6147037
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1311093   0.0999468   0.1622718
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.3385632   0.2534653   0.4236610
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1414243   0.1350145   0.1478341
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.4639768   0.4348550   0.4930986
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.2225698   0.1931237   0.2520159
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.5118591   0.3635521   0.6601661
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0601695   0.0536109   0.0667281
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.2005372   0.1725346   0.2285399
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1695498   0.1552444   0.1838551
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.4728565   0.3991885   0.5465245
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0977034   0.0917051   0.1037017
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.2811890   0.2647511   0.2976268
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0856343   0.0734454   0.0978231
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.1889913   0.1340314   0.2439511
6-24 months                  ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.4379562   0.3546031   0.5213093
6-24 months                  ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.3333333   0.0939855   0.5726812
6-24 months                  ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3738318   0.3088711   0.4387925
6-24 months                  ki1000108-IRC              INDIA                          Low birthweight              NA                0.4285714   0.2164634   0.6406794
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.4896325   0.4387828   0.5404822
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.6346502   0.5054415   0.7638589
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5474099   0.4892807   0.6055390
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.7268544   0.5931835   0.8605254
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.2793535   0.2352794   0.3234276
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.4813861   0.3458830   0.6168892
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.2407006   0.2006914   0.2807098
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.4100490   0.2844224   0.5356755
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2247119   0.2038362   0.2455876
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.3333333   0.2124416   0.4542250
6-24 months                  ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.3659707   0.3355902   0.3963512
6-24 months                  ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.5956523   0.4865238   0.7047808
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.5394513   0.4857415   0.5931611
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.6676267   0.5505479   0.7847055
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2550086   0.2454768   0.2645404
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.4200776   0.3734894   0.4666659
6-24 months                  ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.2287861   0.2165758   0.2409964
6-24 months                  ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.3611901   0.3230194   0.3993608
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.6381250   0.6171291   0.6591208
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.7845033   0.6932692   0.8757374
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.2041955   0.1937545   0.2146366
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.3163705   0.2903133   0.3424276
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3533023   0.3314565   0.3751481
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.4949989   0.4255523   0.5644456


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5280374   0.4609958   0.5950790
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5339806   0.4656939   0.6022672
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          NA                   NA                0.5887324   0.5374737   0.6399911
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5661425   0.5076572   0.6246278
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6007828   0.5582791   0.6432864
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2985075   0.2794291   0.3175858
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5305842   0.5049321   0.5562362
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5617391   0.5211485   0.6023298
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3487372   0.3403993   0.3570750
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7142857   0.6835892   0.7449822
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          NA                   NA                0.2852591   0.2737975   0.2967207
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6646643   0.6472674   0.6820612
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2650736   0.2569178   0.2732295
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4282588   0.4077731   0.4487445
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2149533   0.1597864   0.2701201
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2184466   0.1618848   0.2750084
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          NA                   NA                0.3380282   0.2887514   0.3873050
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       NA                   NA                0.5539906   0.4870787   0.6209025
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1944444   0.1700545   0.2188344
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2309198   0.1943452   0.2674943
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1356852   0.1214076   0.1499628
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2556701   0.2332474   0.2780928
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1739130   0.1429052   0.2049209
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1716108   0.1650114   0.1782103
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2371007   0.2078658   0.2663357
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0788439   0.0719356   0.0857521
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1886926   0.1742747   0.2031105
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1391999   0.1330990   0.1453008
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0979962   0.0852560   0.1107365
6-24 months                  ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4276316   0.3487215   0.5065416
6-24 months                  ki1000108-IRC              INDIA                          NA                   NA                0.3787234   0.3165730   0.4408738
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5018680   0.4570583   0.5466777
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5727273   0.5192737   0.6261808
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2265576   0.2059690   0.2471462
6-24 months                  ki1101329-Keneba           GAMBIA                         NA                   NA                0.3827751   0.3532908   0.4122595
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5631313   0.5142177   0.6120449
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2633691   0.2539889   0.2727494
6-24 months                  ki1135781-COHORTS          INDIA                          NA                   NA                0.2440256   0.2322906   0.2557607
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6435738   0.6230503   0.6640973
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2234954   0.2132931   0.2336976
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3682386   0.3473666   0.3891105


### Parameter: RR


agecat                       studyid                    country                        intervention_level           baseline_level                 estimate    ci_lower   ci_upper
---------------------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    1.2470103   0.9001943   1.727443
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    0.9089595   0.5668281   1.457598
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    1.2737114   1.0460758   1.550883
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    1.3658027   1.1260709   1.656572
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    1.3029281   1.1261324   1.507480
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    1.7402246   1.4226971   2.128620
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    1.8164371   1.5045414   2.192990
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    1.7370845   1.3781011   2.189580
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.6060445   1.4625667   1.763597
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    1.2998094   1.1159132   1.514011
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    1.9139139   1.8144839   2.018792
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    1.2330591   1.0927880   1.391336
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.7750429   1.6259830   1.937768
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    1.2550387   1.1647750   1.352297
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    1.9181721   1.8125781   2.029918
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    1.4246746   1.2556739   1.616421
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    2.5556740   1.4927988   4.375318
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    1.3553114   0.6510151   2.821546
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    1.8711039   1.3819479   2.533402
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.5005914   1.1924456   1.888367
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    2.5086612   1.8693620   3.366593
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    2.2048250   1.6151328   3.009816
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    3.0630865   2.1652915   4.333134
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    2.7135913   1.9972852   3.686793
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    2.2967180   1.5702558   3.359270
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    2.5090230   2.1143192   2.977411
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    2.5822968   1.8276112   3.648619
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    3.2807431   3.0363644   3.544790
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    2.2997693   1.6722924   3.162688
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    3.3328715   2.7920976   3.978383
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    2.7888950   2.3362775   3.329200
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    2.8779847   2.6430480   3.133805
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    2.2069586   1.5953973   3.052949
6-24 months                  ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    0.7611111   0.3621073   1.599775
6-24 months                  ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    1.1464286   0.6784891   1.937096
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    1.2961766   0.9975011   1.684283
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    1.3278066   1.0735706   1.642249
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    1.7232146   1.2477644   2.379831
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    1.7035644   1.2010641   2.416300
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    1.4833808   1.0201396   2.156978
6-24 months                  ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.6275956   1.3322335   1.988441
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    1.2376032   1.0113439   1.514482
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    1.6473075   1.4654167   1.851775
6-24 months                  ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.5787238   1.4027757   1.776741
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    1.2293881   1.0893827   1.387387
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    1.5493507   1.4128625   1.699024
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    1.4010635   1.2030468   1.631673


### Parameter: PAR


agecat                       studyid                    country                        intervention_level           baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0148099   -0.0093760   0.0389958
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0004506   -0.0236368   0.0227355
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0263956    0.0067853   0.0460059
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0234434    0.0076300   0.0392569
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0343206    0.0137850   0.0548561
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0456205    0.0261656   0.0650754
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0494214    0.0302556   0.0685871
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0038872    0.0005294   0.0072449
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0370556    0.0276003   0.0465108
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0338945    0.0129494   0.0548396
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0275375    0.0244317   0.0306434
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0090761    0.0028693   0.0152828
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0265960    0.0214596   0.0317324
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0109130    0.0068196   0.0150063
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0450371    0.0404233   0.0496509
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0205266    0.0124123   0.0286410
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0361511    0.0093119   0.0629903
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0076358   -0.0132341   0.0285057
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0349493    0.0127917   0.0571070
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0454192    0.0148924   0.0759460
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0282823    0.0138225   0.0427422
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0445429    0.0226737   0.0664121
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0427537    0.0247379   0.0607695
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0433703    0.0253749   0.0613656
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0035314    0.0005222   0.0065406
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0399161    0.0291066   0.0507255
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0428037    0.0228271   0.0627803
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0301865    0.0269956   0.0333775
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0145310    0.0052559   0.0238061
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0186744    0.0146413   0.0227074
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0191428    0.0137007   0.0245849
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0414965    0.0373329   0.0456600
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0123620    0.0055002   0.0192237
6-24 months                  ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0103246   -0.0358261   0.0151769
6-24 months                  ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0048916   -0.0150324   0.0248157
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0122355    0.0007427   0.0237283
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0253174    0.0040750   0.0465599
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0210851    0.0035428   0.0386274
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0221453    0.0049176   0.0393729
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0018457   -0.0012981   0.0049895
6-24 months                  ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0168044    0.0077590   0.0258499
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0236800    0.0021378   0.0452223
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0083605    0.0058199   0.0109011
6-24 months                  ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0152395    0.0104256   0.0200534
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0054488    0.0017254   0.0091723
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0192998    0.0145567   0.0240430
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0149363    0.0075195   0.0223531


### Parameter: PAF


agecat                       studyid                    country                        intervention_level           baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0280470   -0.0190229   0.0729427
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0008439   -0.0452212   0.0416492
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0448346    0.0105454   0.0779355
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0414091    0.0112678   0.0706314
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0571264    0.0218526   0.0911282
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.1213352    0.0679488   0.1716638
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.1255725    0.0753404   0.1730759
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0130221    0.0016925   0.0242230
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0698392    0.0514960   0.0878277
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0603385    0.0219266   0.0972419
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0789636    0.0700137   0.0878274
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0127065    0.0039108   0.0214245
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0932347    0.0751497   0.1109660
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0164188    0.0102013   0.0225972
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.1699041    0.1526152   0.1868403
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0479304    0.0287638   0.0667188
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.1681812    0.0378871   0.2808302
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0349550   -0.0652535   0.1257368
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.1033917    0.0355007   0.1665039
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0819855    0.0239964   0.1365292
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.1454519    0.0698941   0.2148718
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.1928933    0.0952502   0.2799985
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.2679512    0.1546724   0.3660500
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.2283935    0.1324919   0.3136933
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0260265    0.0036391   0.0479110
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.1561234    0.1136660   0.1965469
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.2461214    0.1284788   0.3478839
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.1759011    0.1579332   0.1934856
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0612861    0.0216508   0.0993157
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.2368523    0.1879346   0.2828233
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.1014497    0.0727468   0.1292641
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.2981071    0.2696238   0.3254796
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.1261475    0.0574540   0.1898346
6-24 months                  ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0241437   -0.0856419   0.0338708
6-24 months                  ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0129161   -0.0411287   0.0641554
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0243799    0.0001616   0.0480115
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0442050    0.0060160   0.0809268
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0701810    0.0100272   0.1266797
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0842519    0.0167655   0.1471063
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0081466   -0.0058589   0.0219571
6-24 months                  ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0439015    0.0199110   0.0673049
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0420506    0.0027906   0.0797650
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0317445    0.0220689   0.0413243
6-24 months                  ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0624504    0.0426013   0.0818880
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0084665    0.0026475   0.0142516
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0863546    0.0652440   0.1069884
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0405615    0.0201749   0.0605238
