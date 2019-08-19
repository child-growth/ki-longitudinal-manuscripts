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
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               0       92     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               1       96     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         0        9     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         1       15     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               0      176     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               1       29     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         0        3     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         1        0     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               0       87     205
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               1       97     205
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Low birth weight                         0       11     205
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Low birth weight                         1       10     205
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               0      151     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               1       47     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          Low birth weight                         0        5     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          Low birth weight                         1        3     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight               0      114     264
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight               1      148     264
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           Low birth weight                         0        0     264
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           Low birth weight                         1        2     264
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               0      140     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               1      130     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         0        3     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         1        7     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0       27     116
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1       88     116
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0        1     116
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1        0     116
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0       27     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1      255     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         0        1     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         1       13     296
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Normal or high birthweight               0      134     358
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Normal or high birthweight               1      176     358
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Low birth weight                         0       12     358
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Low birth weight                         1       36     358
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Normal or high birthweight               0       31     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Normal or high birthweight               1      155     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Low birth weight                         0        2     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Low birth weight                         1       61     249
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               0        5      16
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               1       11      16
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       Low birth weight                         0        0      16
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       Low birth weight                         1        0      16
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               0      439    1081
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               1      524    1081
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         0       30    1081
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         1       88    1081
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               0       64     182
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               1       73     182
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         0       17     182
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         1       28     182
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               0      350     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               1      172     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         0       46     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         1       66     634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               0      353     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               1      186     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         0       43     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         1       71     653
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     1525    2211
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1      637    2211
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0       26    2211
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1       23    2211
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight               0      906    1928
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight               1      894    1928
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Low birth weight                         0       33    1928
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Low birth weight                         1       95    1928
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               0        5       7
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               1        0       7
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     Low birth weight                         0        2       7
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     Low birth weight                         1        0       7
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         Normal or high birthweight               0       74     110
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         Normal or high birthweight               1       31     110
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         Low birth weight                         0        1     110
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         Low birth weight                         1        4     110
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               0        0       2
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               1        1       2
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         0        1       2
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         1        0       2
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           Normal or high birthweight               0       14      17
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           Normal or high birthweight               1        2      17
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           Low birth weight                         0        0      17
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           Low birth weight                         1        1      17
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           Normal or high birthweight               0        2       2
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           Normal or high birthweight               1        0       2
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           Low birth weight                         0        0       2
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           Low birth weight                         1        0       2
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Normal or high birthweight               0    14067   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Normal or high birthweight               1     2675   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Low birth weight                         0        0   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Low birth weight                         1        0   16742
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0     7988   12551
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1     3390   12551
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         0      472   12551
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         1      701   12551
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               0      232     833
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               1      555     833
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Low birth weight                         0        6     833
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Low birth weight                         1       40     833
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Normal or high birthweight               0     3828    5963
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Normal or high birthweight               1     1337    5963
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Low birth weight                         0      434    5963
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Low birth weight                         1      364    5963
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               0      914    2830
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               1     1735    2830
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         0       35    2830
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         1      146    2830
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               0    11656   18388
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               1     3163   18388
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         0     2060   18388
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         1     1509   18388
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               0     1671    3199
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               1     1150    3199
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         0      158    3199
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         1      220    3199
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               0      155     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               1       33     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         0       13     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         1       11     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               0      185     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               1       20     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         0        3     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         1        0     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               0      146     205
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               1       38     205
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Low birth weight                         0       16     205
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Low birth weight                         1        5     205
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               0      187     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               1       11     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          Low birth weight                         0        6     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          Low birth weight                         1        2     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           Normal or high birthweight               0      173     264
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           Normal or high birthweight               1       89     264
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           Low birth weight                         0        0     264
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           Low birth weight                         1        2     264
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               0      197     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               1       73     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         0        4     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         1        6     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0       87     116
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1       28     116
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0        1     116
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1        0     116
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0      177     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1      101     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         0        3     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         1       11     292
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Normal or high birthweight               0      214     358
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Normal or high birthweight               1       96     358
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Low birth weight                         0       21     358
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Low birth weight                         1       27     358
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight               0       87     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight               1       99     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Low birth weight                         0       12     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Low birth weight                         1       51     249
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               0        6      16
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               1       10      16
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       Low birth weight                         0        0      16
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       Low birth weight                         1        0      16
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               0      801    1080
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               1      161    1080
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         0       69    1080
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         1       49    1080
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               0      113     182
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               1       24     182
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         0       26     182
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         1       19     182
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               0      461     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               1       61     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         0       72     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         1       40     634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               0      460     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               1       79     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         0       69     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         1       45     653
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     1876    2211
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1      286    2211
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0       35    2211
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1       14    2211
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight               0     1310    1822
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight               1      395    1822
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Low birth weight                         0       48    1822
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Low birth weight                         1       69    1822
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               0        5       7
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               1        0       7
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     Low birth weight                         0        2       7
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     Low birth weight                         1        0       7
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         Normal or high birthweight               0       96     110
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         Normal or high birthweight               1        9     110
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         Low birth weight                         0        4     110
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         Low birth weight                         1        1     110
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               0        1       2
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               1        0       2
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         0        1       2
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         1        0       2
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           Normal or high birthweight               0       15      17
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           Normal or high birthweight               1        1      17
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           Low birth weight                         0        1      17
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           Low birth weight                         1        0      17
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           Normal or high birthweight               0        2       2
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           Normal or high birthweight               1        0       2
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           Low birth weight                         0        0       2
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           Low birth weight                         1        0       2
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Normal or high birthweight               0    15212   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Normal or high birthweight               1     1528   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Low birth weight                         0        0   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Low birth weight                         1        0   16740
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0     9765   12537
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1     1600   12537
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         0      629   12537
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         1      543   12537
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               0      597     814
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               1      171     814
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Low birth weight                         0       24     814
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Low birth weight                         1       22     814
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Normal or high birthweight               0     4755    5847
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Normal or high birthweight               1      305    5847
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Low birth weight                         0      631    5847
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Low birth weight                         1      156    5847
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               0     2199    2830
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               1      450    2830
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         0       97    2830
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         1       84    2830
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               0    13422   18386
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               1     1396   18386
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         0     2549   18386
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         1     1019   18386
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               0     2576    3194
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               1      241    3194
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         0      305    3194
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         1       72    3194
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               0       82     157
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               1       63     157
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         0        8     157
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         1        4     157
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               0      157     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               1        9     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         0        2     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         1        0     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               0       78     153
6-24 months                  ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               1       59     153
6-24 months                  ki0047075b-MAL-ED          INDIA                          Low birth weight                         0       11     153
6-24 months                  ki0047075b-MAL-ED          INDIA                          Low birth weight                         1        5     153
6-24 months                  ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               0      148     190
6-24 months                  ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               1       36     190
6-24 months                  ki0047075b-MAL-ED          NEPAL                          Low birth weight                         0        5     190
6-24 months                  ki0047075b-MAL-ED          NEPAL                          Low birth weight                         1        1     190
6-24 months                  ki0047075b-MAL-ED          PERU                           Normal or high birthweight               0       89     148
6-24 months                  ki0047075b-MAL-ED          PERU                           Normal or high birthweight               1       59     148
6-24 months                  ki0047075b-MAL-ED          PERU                           Low birth weight                         0        0     148
6-24 months                  ki0047075b-MAL-ED          PERU                           Low birth weight                         1        0     148
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               0      101     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               1       57     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         0        0     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         1        1     159
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0       20      80
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1       60      80
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0        0      80
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1        0      80
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0       27     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1      155     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         0        1     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         1        2     185
6-24 months                  ki1000108-IRC              INDIA                          Normal or high birthweight               0      134     235
6-24 months                  ki1000108-IRC              INDIA                          Normal or high birthweight               1       80     235
6-24 months                  ki1000108-IRC              INDIA                          Low birth weight                         0       12     235
6-24 months                  ki1000108-IRC              INDIA                          Low birth weight                         1        9     235
6-24 months                  ki1000109-EE               PAKISTAN                       Normal or high birthweight               0       29      97
6-24 months                  ki1000109-EE               PAKISTAN                       Normal or high birthweight               1       56      97
6-24 months                  ki1000109-EE               PAKISTAN                       Low birth weight                         0        2      97
6-24 months                  ki1000109-EE               PAKISTAN                       Low birth weight                         1       10      97
6-24 months                  ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               0        2       3
6-24 months                  ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               1        1       3
6-24 months                  ki1000109-ResPak           PAKISTAN                       Low birth weight                         0        0       3
6-24 months                  ki1000109-ResPak           PAKISTAN                       Low birth weight                         1        0       3
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               0      376     803
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               1      363     803
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         0       24     803
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         1       40     803
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               0       42     106
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               1       49     106
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         0        6     106
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         1        9     106
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               0      289     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               1      111     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         0       31     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         1       26     457
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               0      334     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               1      107     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         0       39     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         1       26     506
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     1211    1589
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1      351    1589
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0       18    1589
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1        9    1589
6-24 months                  ki1101329-Keneba           GAMBIA                         Normal or high birthweight               0      859    1450
6-24 months                  ki1101329-Keneba           GAMBIA                         Normal or high birthweight               1      528    1450
6-24 months                  ki1101329-Keneba           GAMBIA                         Low birth weight                         0       28    1450
6-24 months                  ki1101329-Keneba           GAMBIA                         Low birth weight                         1       35    1450
6-24 months                  ki1114097-CMIN             BRAZIL                         Normal or high birthweight               0       74     100
6-24 months                  ki1114097-CMIN             BRAZIL                         Normal or high birthweight               1       22     100
6-24 months                  ki1114097-CMIN             BRAZIL                         Low birth weight                         0        1     100
6-24 months                  ki1114097-CMIN             BRAZIL                         Low birth weight                         1        3     100
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               0        0       2
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               1        1       2
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         0        1       2
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         1        0       2
6-24 months                  ki1114097-CMIN             PERU                           Normal or high birthweight               0       11      13
6-24 months                  ki1114097-CMIN             PERU                           Normal or high birthweight               1        1      13
6-24 months                  ki1114097-CMIN             PERU                           Low birth weight                         0        0      13
6-24 months                  ki1114097-CMIN             PERU                           Low birth weight                         1        1      13
6-24 months                  ki1114097-CONTENT          PERU                           Normal or high birthweight               0        2       2
6-24 months                  ki1114097-CONTENT          PERU                           Normal or high birthweight               1        0       2
6-24 months                  ki1114097-CONTENT          PERU                           Low birth weight                         0        0       2
6-24 months                  ki1114097-CONTENT          PERU                           Low birth weight                         1        0       2
6-24 months                  ki1119695-PROBIT           BELARUS                        Normal or high birthweight               0    13802   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        Normal or high birthweight               1     1149   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        Low birth weight                         0        0   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        Low birth weight                         1        0   14951
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0     5724    7932
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1     1793    7932
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         0      254    7932
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         1      161    7932
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               0      153     569
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               1      393     569
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Low birth weight                         0        2     569
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Low birth weight                         1       21     569
6-24 months                  ki1135781-COHORTS          INDIA                          Normal or high birthweight               0     3503    5147
6-24 months                  ki1135781-COHORTS          INDIA                          Normal or high birthweight               1     1040    5147
6-24 months                  ki1135781-COHORTS          INDIA                          Low birth weight                         0      388    5147
6-24 months                  ki1135781-COHORTS          INDIA                          Low birth weight                         1      216    5147
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               0      729    2093
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               1     1285    2093
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         0       17    2093
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         1       62    2093
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               0     7089   10454
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               1     1768   10454
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         0     1098   10454
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         1      499   10454
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               0     1664    2884
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               1      910    2884
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         0      158    2884
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         1      152    2884


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
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
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

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/adbe3ad7-34dc-4b36-8c63-76fe16df5153/0538f476-2248-478e-b072-4fdf8f5d8d48/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/adbe3ad7-34dc-4b36-8c63-76fe16df5153/0538f476-2248-478e-b072-4fdf8f5d8d48/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/adbe3ad7-34dc-4b36-8c63-76fe16df5153/0538f476-2248-478e-b072-4fdf8f5d8d48/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/adbe3ad7-34dc-4b36-8c63-76fe16df5153/0538f476-2248-478e-b072-4fdf8f5d8d48/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.5106383   0.4390128   0.5822638
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.6250000   0.4308556   0.8191444
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.5277535   0.4553075   0.6001996
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.4704744   0.2371364   0.7038125
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.5681739   0.5129258   0.6234219
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Low birth weight             NA                0.7617620   0.6339313   0.8895928
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.5426990   0.4770705   0.6083276
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.7412198   0.6322133   0.8502264
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5302683   0.4461659   0.6143707
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.6356693   0.4911094   0.7802293
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.3305072   0.2900629   0.3709515
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.5946477   0.5041236   0.6851719
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.3440718   0.3038785   0.3842652
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.6303637   0.5386014   0.7221259
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2945487   0.2752391   0.3138582
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.5105032   0.3951287   0.6258777
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.4954675   0.4723597   0.5185753
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.7228750   0.6418748   0.8038753
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2979556   0.2895475   0.3063638
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.5967879   0.5681972   0.6253786
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7052097   0.6733356   0.7370837
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.8695652   0.7721834   0.9669470
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.2586206   0.2466880   0.2705532
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.4602848   0.4259451   0.4946245
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.6538604   0.6357646   0.6719562
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.8189698   0.7619300   0.8760095
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.2136665   0.2057366   0.2215964
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.4217913   0.4042811   0.4393016
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.4078043   0.3861297   0.4294788
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.5803800   0.5149137   0.6458463
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1740095   0.1196618   0.2283573
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.4643928   0.2523574   0.6764283
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.2065217   0.1478875   0.2651560
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.2380952   0.0554846   0.4207058
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3094387   0.2578524   0.3610251
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Low birth weight             NA                0.5224754   0.3794205   0.6655303
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.5312614   0.4592107   0.6033120
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.8030081   0.7033141   0.9027021
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1661621   0.1408135   0.1915107
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.4168445   0.3130807   0.5206083
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1750351   0.1104269   0.2396433
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.4108880   0.2579110   0.5638651
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.1170066   0.0893015   0.1447117
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.3664669   0.2763613   0.4565724
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.1462719   0.1163800   0.1761638
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.3959189   0.3053224   0.4865155
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1321442   0.1177856   0.1465029
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.3194831   0.2099411   0.4290250
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.2312746   0.2112439   0.2513053
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.5655750   0.4755136   0.6556365
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1407793   0.1343801   0.1471785
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.4635946   0.4343093   0.4928799
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.2227125   0.1932597   0.2521653
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.4807845   0.3306023   0.6309667
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0602047   0.0536470   0.0667624
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.2004718   0.1724975   0.2284460
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1696424   0.1553375   0.1839474
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.4709011   0.3971594   0.5446427
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0946021   0.0891409   0.1000634
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.2825939   0.2667976   0.2983903
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0855993   0.0733866   0.0978119
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.1889359   0.1341705   0.2437013
6-24 months                  ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.4306569   0.3474682   0.5138457
6-24 months                  ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.3125000   0.0846372   0.5403628
6-24 months                  ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3738318   0.3088711   0.4387925
6-24 months                  ki1000108-IRC              INDIA                          Low birth weight             NA                0.4285714   0.2164634   0.6406794
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.4896325   0.4387828   0.5404822
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.6346502   0.5054415   0.7638589
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5384615   0.4355493   0.6413738
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.6000000   0.3509042   0.8490958
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.2777954   0.2337600   0.3218309
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.4532071   0.3214039   0.5850104
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.2408867   0.2008750   0.2808985
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.3964824   0.2703264   0.5226383
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2247119   0.2038362   0.2455876
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.3333333   0.2124416   0.4542250
6-24 months                  ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.3801085   0.3545569   0.4056600
6-24 months                  ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.5638448   0.4410440   0.6866456
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2385256   0.2288905   0.2481606
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.3864860   0.3394645   0.4335075
6-24 months                  ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.2287978   0.2165871   0.2410086
6-24 months                  ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.3600586   0.3218399   0.3982772
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.6381600   0.6171643   0.6591556
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.8064842   0.7131982   0.8997702
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1995349   0.1900309   0.2090389
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.3147658   0.2894242   0.3401074
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3538040   0.3319547   0.3756533
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.4891535   0.4203574   0.5579496


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5235849   0.4561953   0.5909746
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5219512   0.4534049   0.5904975
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          NA                   NA                0.5921788   0.5412016   0.6431559
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5661425   0.5076572   0.6246278
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5549451   0.4825447   0.6273454
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2985075   0.2794291   0.3175858
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5129668   0.4906500   0.5352836
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3259501   0.3177495   0.3341508
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7142857   0.6835892   0.7449822
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          NA                   NA                0.2852591   0.2737975   0.2967207
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6646643   0.6472674   0.6820612
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2540787   0.2462528   0.2619047
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4282588   0.4077731   0.4487445
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2075472   0.1528264   0.2622679
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2097561   0.1538871   0.2656251
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          NA                   NA                0.3435754   0.2943128   0.3928380
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       NA                   NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1944444   0.1700545   0.2188344
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2362637   0.1743796   0.2981478
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1356852   0.1214076   0.1499628
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2546652   0.2346549   0.2746755
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1709340   0.1643442   0.1775239
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2371007   0.2078658   0.2663357
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0788439   0.0719356   0.0857521
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1886926   0.1742747   0.2031105
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1313499   0.1257126   0.1369873
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0979962   0.0852560   0.1107365
6-24 months                  ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4183007   0.3398819   0.4967194
6-24 months                  ki1000108-IRC              INDIA                          NA                   NA                0.3787234   0.3165730   0.4408738
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5018680   0.4570583   0.5466777
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5471698   0.4519599   0.6423797
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2265576   0.2059690   0.2471462
6-24 months                  ki1101329-Keneba           GAMBIA                         NA                   NA                0.3882759   0.3631823   0.4133694
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2463439   0.2368610   0.2558268
6-24 months                  ki1135781-COHORTS          INDIA                          NA                   NA                0.2440256   0.2322906   0.2557607
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6435738   0.6230503   0.6640973
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2168548   0.2074258   0.2262838
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3682386   0.3473666   0.3891105


### Parameter: RR


agecat                       studyid                    country                        intervention_level           baseline_level                 estimate    ci_lower   ci_upper
---------------------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    1.2239583   0.8704529   1.721028
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    0.8914662   0.5327117   1.491824
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.3407199   1.1046568   1.627229
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.3658027   1.1260709   1.656572
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    1.1987692   0.9095686   1.579922
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    1.7991978   1.4783814   2.189633
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    1.8320700   1.5198332   2.208453
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    1.7331708   1.3697173   2.193066
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.4589756   1.2923847   1.647040
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    2.0029423   1.8947036   2.117364
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    1.2330591   1.0927880   1.391336
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.7797687   1.6308229   1.942318
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    1.2525147   1.1623224   1.349706
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    1.9740641   1.8735666   2.079952
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    1.4231827   1.2553395   1.613467
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    2.6687783   1.5354226   4.638708
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    1.1528822   0.5088703   2.611937
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.6884615   1.2244666   2.328281
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.5115123   1.2577954   1.816408
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    2.5086612   1.8693620   3.366593
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    2.3474607   1.3877615   3.970835
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    3.1320183   2.2224867   4.413767
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    2.7067333   1.9909182   3.679913
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    2.4176849   1.6874536   3.463918
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    2.4454698   2.0398996   2.931675
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    3.2930590   3.0465448   3.559520
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    2.1587673   1.5375892   3.030898
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    3.3298343   2.7899046   3.974256
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    2.7758451   2.3241001   3.315398
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    2.9871829   2.7596770   3.233444
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    2.2072142   1.5969558   3.050676
6-24 months                  ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    0.7256356   0.3412906   1.542811
6-24 months                  ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.1464286   0.6784891   1.937096
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.2961766   0.9975011   1.684283
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    1.1142857   0.7055157   1.759894
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    1.6314419   1.1713373   2.272277
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    1.6459286   1.1489904   2.357792
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    1.4833808   1.0201396   2.156978
6-24 months                  ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.4833786   1.1817144   1.862051
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    1.6203125   1.4253951   1.841884
6-24 months                  ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.5736975   1.3977424   1.771803
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    1.2637649   1.1205531   1.425280
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    1.5774974   1.4446247   1.722591
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    1.3825552   1.1867225   1.610704


### Parameter: PAR


agecat                       studyid                    country                        intervention_level           baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0129466   -0.0109848   0.0368780
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0058023   -0.0291430   0.0175384
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0240049    0.0049857   0.0430241
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0234434    0.0076300   0.0392569
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0246768   -0.0161516   0.0655051
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0448872    0.0254690   0.0643054
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0494963    0.0304026   0.0685900
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0039588    0.0006111   0.0073065
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0174993    0.0114495   0.0235491
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0279945    0.0248650   0.0311240
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0090761    0.0028693   0.0152828
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0266385    0.0215091   0.0317679
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0108039    0.0067032   0.0149046
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0404123    0.0366205   0.0442040
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0204546    0.0123203   0.0285888
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0335377    0.0071816   0.0598937
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0032344   -0.0164566   0.0229253
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0341367    0.0122103   0.0560630
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0711483    0.0367674   0.1055292
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0282823    0.0138225   0.0427422
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0612286    0.0186478   0.1038094
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0422994    0.0242067   0.0603920
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0436209    0.0255772   0.0616647
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0035410    0.0005321   0.0065499
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0233906    0.0161884   0.0305928
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0301547    0.0269632   0.0333462
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0143882    0.0051217   0.0236548
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0186391    0.0146078   0.0226704
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0190502    0.0136299   0.0244704
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0367478    0.0332722   0.0402234
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0123970    0.0055270   0.0192670
6-24 months                  ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0123563   -0.0383665   0.0136539
6-24 months                  ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0048916   -0.0150324   0.0248157
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0122355    0.0007427   0.0237283
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0087083   -0.0296510   0.0470676
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0219857    0.0040830   0.0398885
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0219591    0.0047731   0.0391451
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0018457   -0.0012981   0.0049895
6-24 months                  ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0081674    0.0025009   0.0138339
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0078183    0.0052147   0.0104220
6-24 months                  ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0152278    0.0104157   0.0200399
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0054138    0.0016989   0.0091288
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0173199    0.0133821   0.0212577
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0144346    0.0070202   0.0218489


### Parameter: PAF


agecat                       studyid                    country                        intervention_level           baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0247269   -0.0222006   0.0694999
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0111166   -0.0568608   0.0326477
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0405366    0.0075105   0.0724637
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0414091    0.0112678   0.0706314
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0444670   -0.0324317   0.1156381
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.1195734    0.0662450   0.1698561
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.1257630    0.0756868   0.1731262
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0132619    0.0019664   0.0244296
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0341139    0.0221573   0.0459242
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0858858    0.0762584   0.0954129
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0127065    0.0039108   0.0214245
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0933836    0.0753214   0.1110930
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0162547    0.0100271   0.0224431
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.1590541    0.1442514   0.1736007
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0477621    0.0285497   0.0665946
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.1615905    0.0288576   0.2761819
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0154196   -0.0830298   0.1049198
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0993572    0.0332612   0.1609342
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.1181061    0.0569407   0.1753044
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.1454519    0.0698941   0.2148718
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.2591537    0.0630401   0.4142191
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.2655228    0.1513681   0.3643219
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.2297135    0.1336254   0.3151446
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0260971    0.0037136   0.0479778
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0918485    0.0634936   0.1193448
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.1764114    0.1583729   0.1940633
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0606841    0.0210835   0.0986826
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.2364056    0.1875141   0.2823550
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.1009587    0.0723685   0.1286678
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.2797702    0.2545021   0.3041818
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.1265048    0.0576700   0.1903113
6-24 months                  ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0295392   -0.0937618   0.0309124
6-24 months                  ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0129161   -0.0411287   0.0641554
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0243799    0.0001616   0.0480115
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0159151   -0.0568281   0.0836513
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0733393    0.0117999   0.1310464
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0835437    0.0162203   0.1462599
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0081466   -0.0058589   0.0219571
6-24 months                  ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0210350    0.0063106   0.0355412
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0317375    0.0211359   0.0422244
6-24 months                  ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0624025    0.0425603   0.0818335
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0084121    0.0026065   0.0141840
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0798686    0.0618657   0.0975260
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0391990    0.0188237   0.0591512
