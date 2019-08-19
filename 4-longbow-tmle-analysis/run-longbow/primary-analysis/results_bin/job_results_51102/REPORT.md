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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        birthwt                       sstunted   n_cell       n
----------  -------------------------  -----------------------------  ---------------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight           0      201     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight           1        1     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                     0       47     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                     1        8     257
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight           0      179     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight           1        4     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight                     0        4     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight                     1        4     191
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight           0      168     206
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight           1        4     206
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight                     0       31     206
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight                     1        3     206
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight           0      154     173
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight           1        1     173
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight                     0       13     173
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight                     1        5     173
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight           0      267     287
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight           1        2     287
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight                     0       12     287
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight                     1        6     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight           0      244     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight           1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                     0       16     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                     1        2     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0      113     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1        3     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                     0        4     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                     1        3     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight           0       77      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight           1        3      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                     0       10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                     1        0      90
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight           0      311     386
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight           1        9     386
Birth       ki1000108-IRC              INDIA                          Low birth weight                     0       59     386
Birth       ki1000108-IRC              INDIA                          Low birth weight                     1        7     386
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight           0        2       2
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight           1        0       2
Birth       ki1000109-EE               PAKISTAN                       Low birth weight                     0        0       2
Birth       ki1000109-EE               PAKISTAN                       Low birth weight                     1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight           0        6       7
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight           1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       Low birth weight                     0        1       7
Birth       ki1000109-ResPak           PAKISTAN                       Low birth weight                     1        0       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight           0      147     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight           1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                     0       29     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                     1       11     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight           0       21      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight           1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                     0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                     1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight           0       18      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight           1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                     0        8      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                     1        0      27
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight           0     1383    1541
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight           1       18    1541
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight                     0      129    1541
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight                     1       11    1541
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight           0        5      13
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight           1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight                     0        3      13
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight                     1        5      13
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight           0      106     115
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight           1        1     115
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight                     0        6     115
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight                     1        2     115
Birth       ki1114097-CMIN             PERU                           Normal or high birthweight           0       10      10
Birth       ki1114097-CMIN             PERU                           Normal or high birthweight           1        0      10
Birth       ki1114097-CMIN             PERU                           Low birth weight                     0        0      10
Birth       ki1114097-CMIN             PERU                           Low birth weight                     1        0      10
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight           0        2       2
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight           1        0       2
Birth       ki1114097-CONTENT          PERU                           Low birth weight                     0        0       2
Birth       ki1114097-CONTENT          PERU                           Low birth weight                     1        0       2
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight           0    13879   13884
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight           1        5   13884
Birth       ki1119695-PROBIT           BELARUS                        Low birth weight                     0        0   13884
Birth       ki1119695-PROBIT           BELARUS                        Low birth weight                     1        0   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight           0    11800   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight           1      129   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                     0     1589   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                     1      312   13830
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight           0      713     784
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight           1        4     784
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight                     0       61     784
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight                     1        6     784
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight           0     5242    6638
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight           1       26    6638
Birth       ki1135781-COHORTS          INDIA                          Low birth weight                     0     1190    6638
Birth       ki1135781-COHORTS          INDIA                          Low birth weight                     1      180    6638
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight           0     2704    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight           1        5    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight                     0      255    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight                     1       40    3004
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight           0    11237   19612
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight           1       57   19612
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                     0     6334   19612
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                     1     1984   19612
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight           0      549     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight           1        2     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                     0      209     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                     1       62     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight           0      184     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight           1        3     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                     0       43     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                     1        5     235
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight           0      199     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight           1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                     0       10     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                     1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight           0      188     229
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight           1        5     229
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                     0       33     229
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                     1        3     229
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight           0      208     229
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight           1        0     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                     0       20     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                     1        1     229
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight           0      247     270
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight           1        6     270
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                     0       12     270
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                     1        5     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight           0      235     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight           1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                     0       13     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                     1        3     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0      116     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1        4     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                     0        5     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                     1        1     126
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight           0      297     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight           1       30     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                     0       30     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                     1       12     369
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight           0      323     405
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight           1       16     405
6 months    ki1000108-IRC              INDIA                          Low birth weight                     0       54     405
6 months    ki1000108-IRC              INDIA                          Low birth weight                     1       12     405
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight           0      205     372
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight           1       38     372
6 months    ki1000109-EE               PAKISTAN                       Low birth weight                     0       73     372
6 months    ki1000109-EE               PAKISTAN                       Low birth weight                     1       56     372
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight           0       13      17
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight           1        2      17
6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                     0        1      17
6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                     1        1      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight           0      948    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight           1       55    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                     0      252    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                     1       71    1326
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight           0      115     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight           1        3     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                     0       50     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                     1       10     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight           0      440     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight           1        4     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                     0      129     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                     1       10     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight           0      535     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight           1       10     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                     0      157     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                     1       13     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0     1931    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1       13    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                     0       63    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                     1        4    2011
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight           0     1537    1725
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight           1       34    1725
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                     0      132    1725
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                     1       22    1725
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight           0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight           1        0       1
6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                     0        1       1
6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                     1        0       1
6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight           0       98     104
6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight           1        2     104
6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                     0        3     104
6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                     1        1     104
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight           0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight           1        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                     0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                     1        0       2
6 months    ki1114097-CMIN             PERU                           Normal or high birthweight           0       13      14
6 months    ki1114097-CMIN             PERU                           Normal or high birthweight           1        0      14
6 months    ki1114097-CMIN             PERU                           Low birth weight                     0        1      14
6 months    ki1114097-CMIN             PERU                           Low birth weight                     1        0      14
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight           0        2       2
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight           1        0       2
6 months    ki1114097-CONTENT          PERU                           Low birth weight                     0        0       2
6 months    ki1114097-CONTENT          PERU                           Low birth weight                     1        0       2
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight           0    15518   15761
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight           1      243   15761
6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                     0        0   15761
6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                     1        0   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight           0     7048    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight           1      187    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                     0      873    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                     1      157    8265
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight           0      642     771
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight           1       61     771
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                     0       42     771
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                     1       26     771
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight           0     4895    6261
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight           1      110    6261
6 months    ki1135781-COHORTS          INDIA                          Low birth weight                     0     1093    6261
6 months    ki1135781-COHORTS          INDIA                          Low birth weight                     1      163    6261
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight           0     2330    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight           1       88    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                     0      205    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                     1       43    2666
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight           0    10449   16740
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight           1      211   16740
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                     0     5275   16740
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                     1      805   16740
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight           0     2921    4041
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight           1       83    4041
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                     0      901    4041
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                     1      136    4041
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight           0      150     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight           1       15     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                     0       33     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                     1       10     208
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight           0      160     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight           1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                     0        8     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                     1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight           0      165     220
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight           1       20     220
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                     0       29     220
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                     1        6     220
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight           0      196     221
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight           1        5     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                     0       19     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                     1        1     221
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight           0      180     198
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight           1        6     198
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                     0        4     198
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                     1        8     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight           0      201     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight           1       23     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                     0       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                     1        3     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0       76     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1       27     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                     0        1     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                     1        4     108
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight           0      232     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight           1       97     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                     0       17     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                     1       26     372
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight           0      317     407
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight           1       22     407
24 months   ki1000108-IRC              INDIA                          Low birth weight                     0       50     407
24 months   ki1000108-IRC              INDIA                          Low birth weight                     1       18     407
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight           0       75     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight           1       11     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                     0       31     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                     1       20     137
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight           0      412     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight           1       26     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                     0      116     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                     1       23     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight           0      376     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight           1       12     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                     0      103     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                     1       23     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                     0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                     1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight           0     1218    1436
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight           1       86    1436
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                     0       98    1436
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                     1       34    1436
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight           0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight           1        0       1
24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                     0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                     1        1       1
24 months   ki1114097-CMIN             PERU                           Normal or high birthweight           0        3       4
24 months   ki1114097-CMIN             PERU                           Normal or high birthweight           1        0       4
24 months   ki1114097-CMIN             PERU                           Low birth weight                     0        0       4
24 months   ki1114097-CMIN             PERU                           Low birth weight                     1        1       4
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight           0        2       2
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight           1        0       2
24 months   ki1114097-CONTENT          PERU                           Low birth weight                     0        0       2
24 months   ki1114097-CONTENT          PERU                           Low birth weight                     1        0       2
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight           0     3970    4035
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight           1       65    4035
24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                     0        0    4035
24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                     1        0    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight           0      270     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight           1       92     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                     0       55     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                     1       38     455
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight           0      361     653
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight           1      231     653
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                     0       17     653
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                     1       44     653
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight           0     3381    4861
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight           1      568    4861
24 months   ki1135781-COHORTS          INDIA                          Low birth weight                     0      605    4861
24 months   ki1135781-COHORTS          INDIA                          Low birth weight                     1      307    4861
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight           0     1623    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight           1      571    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                     0      108    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                     1      104    2406
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight           0     4859    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight           1      502    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                     0     2391    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                     1      832    8584
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight           0     2754    4010
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight           1      201    4010
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                     0      894    4010
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                     1      161    4010


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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
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
![](/tmp/6c48854e-dd33-4fa7-82b0-7a593104022c/64c2eeea-9b6f-47d6-b090-b11fa00098b4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6c48854e-dd33-4fa7-82b0-7a593104022c/64c2eeea-9b6f-47d6-b090-b11fa00098b4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6c48854e-dd33-4fa7-82b0-7a593104022c/64c2eeea-9b6f-47d6-b090-b11fa00098b4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6c48854e-dd33-4fa7-82b0-7a593104022c/64c2eeea-9b6f-47d6-b090-b11fa00098b4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0281250   0.0099871   0.0462629
Birth       ki1000108-IRC              INDIA         Low birth weight             NA                0.1060606   0.0316782   0.1804431
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0127959   0.0069095   0.0186822
Birth       ki1101329-Keneba           GAMBIA        Low birth weight             NA                0.0781538   0.0340571   0.1222504
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0107727   0.0089203   0.0126251
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low birth weight             NA                0.1658318   0.1488644   0.1827991
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0049335   0.0030404   0.0068267
Birth       ki1135781-COHORTS          INDIA         Low birth weight             NA                0.1310201   0.1129209   0.1491194
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0018457   0.0002291   0.0034623
Birth       ki1135781-COHORTS          PHILIPPINES   Low birth weight             NA                0.1355932   0.0965193   0.1746672
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0051525   0.0037238   0.0065813
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low birth weight             NA                0.2362862   0.2264179   0.2461545
6 months    ki0047075b-MAL-ED          PERU          Normal or high birthweight   NA                0.0237154   0.0049310   0.0424998
6 months    ki0047075b-MAL-ED          PERU          Low birth weight             NA                0.2941176   0.0771195   0.5111158
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0914500   0.0600901   0.1228100
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low birth weight             NA                0.2582148   0.1199219   0.3965077
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0482962   0.0256918   0.0709007
6 months    ki1000108-IRC              INDIA         Low birth weight             NA                0.1793672   0.0846118   0.2741225
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.1547646   0.1087714   0.2007579
6 months    ki1000109-EE               PAKISTAN      Low birth weight             NA                0.4342717   0.3468798   0.5216635
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.0538012   0.0376379   0.0699645
6 months    ki1000304b-SAS-CompFeed    INDIA         Low birth weight             NA                0.2302899   0.1959868   0.2645930
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0180980   0.0068187   0.0293773
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low birth weight             NA                0.0714223   0.0309561   0.1118886
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0217231   0.0145021   0.0289441
6 months    ki1101329-Keneba           GAMBIA        Low birth weight             NA                0.1313859   0.0795650   0.1832068
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0257416   0.0220845   0.0293987
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low birth weight             NA                0.1559878   0.1341876   0.1777880
6 months    ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0864661   0.0656677   0.1072645
6 months    ki1135781-COHORTS          GUATEMALA     Low birth weight             NA                0.3789822   0.2620834   0.4958810
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0217042   0.0176624   0.0257460
6 months    ki1135781-COHORTS          INDIA         Low birth weight             NA                0.1356761   0.1167987   0.1545534
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0360888   0.0286422   0.0435354
6 months    ki1135781-COHORTS          PHILIPPINES   Low birth weight             NA                0.1819526   0.1337610   0.2301442
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0198026   0.0168792   0.0227261
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low birth weight             NA                0.1339733   0.1250813   0.1428654
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0272891   0.0197077   0.0348704
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low birth weight             NA                0.1352019   0.1108533   0.1595504
24 months   ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   NA                0.0887916   0.0447787   0.1328045
24 months   ki0047075b-MAL-ED          BANGLADESH    Low birth weight             NA                0.2356774   0.1028868   0.3684680
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   NA                0.1081081   0.0632608   0.1529555
24 months   ki0047075b-MAL-ED          INDIA         Low birth weight             NA                0.1714286   0.0462846   0.2965725
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.2952317   0.2458482   0.3446153
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low birth weight             NA                0.6275505   0.4803975   0.7747035
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0650552   0.0387501   0.0913602
24 months   ki1000108-IRC              INDIA         Low birth weight             NA                0.2583242   0.1524296   0.3642188
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.1280857   0.0537144   0.2024570
24 months   ki1017093-NIH-Birth        BANGLADESH    Low birth weight             NA                0.3870863   0.2456192   0.5285534
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.0595334   0.0373279   0.0817390
24 months   ki1017093b-PROVIDE         BANGLADESH    Low birth weight             NA                0.1592188   0.0964394   0.2219983
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0311209   0.0138571   0.0483846
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low birth weight             NA                0.1765658   0.1082728   0.2448589
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0664065   0.0528255   0.0799876
24 months   ki1101329-Keneba           GAMBIA        Low birth weight             NA                0.2685741   0.1923037   0.3448446
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.2450264   0.2004879   0.2895650
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low birth weight             NA                0.4547705   0.3565281   0.5530129
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.3884798   0.3491694   0.4277901
24 months   ki1135781-COHORTS          GUATEMALA     Low birth weight             NA                0.7204800   0.6017878   0.8391721
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.1428547   0.1319565   0.1537528
24 months   ki1135781-COHORTS          INDIA         Low birth weight             NA                0.3455566   0.3148714   0.3762417
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.2587986   0.2404619   0.2771354
24 months   ki1135781-COHORTS          PHILIPPINES   Low birth weight             NA                0.5048174   0.4378021   0.5718327
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0932211   0.0845160   0.1019263
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low birth weight             NA                0.2604569   0.2435634   0.2773504
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0681217   0.0575501   0.0786934
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low birth weight             NA                0.1526380   0.1281285   0.1771475


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA         NA                   NA                0.0414508   0.0215399   0.0613617
Birth       ki1101329-Keneba           GAMBIA        NA                   NA                0.0188189   0.0120322   0.0256057
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0318872   0.0289588   0.0348156
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0310334   0.0268616   0.0352053
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0149800   0.0106354   0.0193246
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1040689   0.0993991   0.1087387
6 months    ki0047075b-MAL-ED          PERU          NA                   NA                0.0407407   0.0171167   0.0643648
6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.1138211   0.0813725   0.1462698
6 months    ki1000108-IRC              INDIA         NA                   NA                0.0691358   0.0443985   0.0938731
6 months    ki1000109-EE               PAKISTAN      NA                   NA                0.2526882   0.2084696   0.2969067
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0950226   0.0765320   0.1135132
6 months    ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1101329-Keneba           GAMBIA        NA                   NA                0.0324638   0.0240979   0.0408297
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0416213   0.0373152   0.0459273
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1128405   0.0904926   0.1351883
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0436033   0.0385446   0.0486620
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0491373   0.0409307   0.0573439
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0606930   0.0568470   0.0645389
6 months    kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0541945   0.0457550   0.0626340
24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1201923   0.0758932   0.1644914
24 months   ki0047075b-MAL-ED          INDIA         NA                   NA                0.1181818   0.0754264   0.1609372
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.3306452   0.2827744   0.3785159
24 months   ki1000108-IRC              INDIA         NA                   NA                0.0982801   0.0693231   0.1272371
24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.2262774   0.1559553   0.2965995
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0680934   0.0462948   0.0898920
24 months   ki1101329-Keneba           GAMBIA        NA                   NA                0.0835655   0.0692473   0.0978836
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.2857143   0.2441594   0.3272692
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4211332   0.3832346   0.4590318
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.1800041   0.1692028   0.1908054
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2805486   0.2625932   0.2985040
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1554054   0.1466191   0.1641917
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0902743   0.0800792   0.1004695


### Parameter: RR


agecat      studyid                    country       intervention_level           baseline_level                 estimate     ci_lower     ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------------------  ----------  -----------  -----------
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1000108-IRC              INDIA         Low birth weight             Normal or high birthweight     3.771044    1.4543975     9.777775
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1101329-Keneba           GAMBIA        Low birth weight             Normal or high birthweight     6.107742    2.9481911    12.653355
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low birth weight             Normal or high birthweight    15.393729   12.6015412    18.804596
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1135781-COHORTS          INDIA         Low birth weight             Normal or high birthweight    26.557164   17.6634064    39.929045
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1135781-COHORTS          PHILIPPINES   Low birth weight             Normal or high birthweight    73.464407   29.2170860   184.721332
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low birth weight             Normal or high birthweight    45.858196   34.7090199    60.588692
6 months    ki0047075b-MAL-ED          PERU          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki0047075b-MAL-ED          PERU          Low birth weight             Normal or high birthweight    12.401961    4.2012963    36.609803
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low birth weight             Normal or high birthweight     2.823561    1.4935574     5.337925
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1000108-IRC              INDIA         Low birth weight             Normal or high birthweight     3.713896    1.8355928     7.514206
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1000109-EE               PAKISTAN      Low birth weight             Normal or high birthweight     2.806014    1.9611044     4.014939
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA         Low birth weight             Normal or high birthweight     4.280384    3.1517671     5.813148
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low birth weight             Normal or high birthweight     3.946422    1.7016788     9.152283
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1101329-Keneba           GAMBIA        Low birth weight             Normal or high birthweight     6.048224    3.6158786    10.116772
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low birth weight             Normal or high birthweight     6.059752    4.9659704     7.394445
6 months    ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1135781-COHORTS          GUATEMALA     Low birth weight             Normal or high birthweight     4.383015    2.9629600     6.483660
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1135781-COHORTS          INDIA         Low birth weight             Normal or high birthweight     6.251140    4.9559605     7.884798
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1135781-COHORTS          PHILIPPINES   Low birth weight             Normal or high birthweight     5.041800    3.6057690     7.049744
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low birth weight             Normal or high birthweight     6.765432    5.7604302     7.945773
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low birth weight             Normal or high birthweight     4.954434    3.5588114     6.897365
24 months   ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH    Low birth weight             Normal or high birthweight     2.654276    1.2559554     5.609420
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki0047075b-MAL-ED          INDIA         Low birth weight             Normal or high birthweight     1.585714    0.6848141     3.671784
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low birth weight             Normal or high birthweight     2.125620    1.5943716     2.833882
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1000108-IRC              INDIA         Low birth weight             Normal or high birthweight     3.970848    2.2281097     7.076685
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH    Low birth weight             Normal or high birthweight     3.022089    1.5271495     5.980435
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH    Low birth weight             Normal or high birthweight     2.674444    1.5539035     4.603020
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low birth weight             Normal or high birthweight     5.673549    2.8869885    11.149734
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1101329-Keneba           GAMBIA        Low birth weight             Normal or high birthweight     4.044394    2.8521390     5.735037
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low birth weight             Normal or high birthweight     1.856006    1.4058079     2.450376
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1135781-COHORTS          GUATEMALA     Low birth weight             Normal or high birthweight     1.854614    1.5283258     2.250562
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1135781-COHORTS          INDIA         Low birth weight             Normal or high birthweight     2.418938    2.1534619     2.717141
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1135781-COHORTS          PHILIPPINES   Low birth weight             Normal or high birthweight     1.950619    1.6794809     2.265529
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low birth weight             Normal or high birthweight     2.793968    2.4970973     3.126133
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low birth weight             Normal or high birthweight     2.240665    1.7925103     2.800865


### Parameter: PAR


agecat      studyid                    country       intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0133258   -0.0000892   0.0267408
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0060231    0.0018235   0.0102227
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0211145    0.0186498   0.0235792
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0260999    0.0221881   0.0300118
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0131343    0.0090385   0.0172301
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0989164    0.0943120   0.1035208
6 months    ki0047075b-MAL-ED          PERU          Normal or high birthweight   NA                0.0170253    0.0012242   0.0328265
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0223711    0.0051153   0.0396269
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0208396    0.0045736   0.0371056
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.0979236    0.0615497   0.1342974
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.0412214    0.0324011   0.0500417
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0140698    0.0040265   0.0241132
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0107407    0.0055376   0.0159438
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0158797    0.0129693   0.0187901
6 months    ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0263744    0.0144244   0.0383243
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0218990    0.0179456   0.0258525
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0130485    0.0083699   0.0177271
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0408903    0.0374189   0.0443617
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0269054    0.0203311   0.0334798
24 months   ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   NA                0.0314007    0.0025953   0.0602061
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   NA                0.0100737   -0.0112967   0.0314441
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0354134    0.0149323   0.0558946
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0332249    0.0135859   0.0528639
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0981917    0.0349219   0.1614614
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.0253886    0.0091122   0.0416650
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0369725    0.0189970   0.0549480
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0171589    0.0096708   0.0246470
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0406878    0.0178348   0.0635409
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0326535    0.0189974   0.0463095
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0371494    0.0307653   0.0435336
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0217500    0.0151205   0.0283795
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0621843    0.0548326   0.0695359
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0221526    0.0151214   0.0291838


### Parameter: PAF


agecat      studyid                    country       intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.3214844   -0.0355573   0.5554244
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.3200549    0.0981781   0.4873429
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.6621628    0.6098411   0.7074680
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.8410259    0.7725864   0.8888687
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.8767893    0.7188230   0.9460095
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.9504892    0.9350146   0.9622789
6 months    ki0047075b-MAL-ED          PERU          Normal or high birthweight   NA                0.4178944    0.0126231   0.6568210
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.1965461    0.0395997   0.3278447
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.3014296    0.0569837   0.4825109
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.3875273    0.2363247   0.5087928
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.4338062    0.3360666   0.5171573
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.4373883    0.1032717   0.6470146
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.3308523    0.1784301   0.4549963
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.3815278    0.3199684   0.4375146
6 months    ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.2337315    0.1297391   0.3252974
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.5022342    0.4259086   0.5684123
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.2655515    0.1748325   0.3462968
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.6737244    0.6291200   0.7129643
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.4964608    0.3794854   0.5913848
24 months   ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   NA                0.2612539   -0.0036392   0.4562331
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   NA                0.0852391   -0.1122687   0.2476750
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.1071041    0.0431903   0.1667485
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.3380635    0.1355299   0.4931462
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.4339439    0.1045191   0.6421816
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.2989633    0.0983312   0.4549523
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.5429676    0.2869759   0.7070526
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.2053353    0.1170140   0.2848222
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.1424075    0.0588064   0.2185827
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0775371    0.0442977   0.1096205
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.2063811    0.1715037   0.2397902
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0775266    0.0537006   0.1007528
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.4001422    0.3557927   0.4414385
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.2453918    0.1668610   0.3165203
