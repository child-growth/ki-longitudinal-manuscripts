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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight           0      176     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight           1        1     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                      0       46     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                      1        8     231
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight           0       59      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight           1        2      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birthweight                      0        3      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birthweight                      1        1      65
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight           0       38      47
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight           1        1      47
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight                      0        7      47
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight                      1        1      47
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight           0       24      27
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight           1        0      27
Birth       ki0047075b-MAL-ED          NEPAL                          Low birthweight                      0        2      27
Birth       ki0047075b-MAL-ED          NEPAL                          Low birthweight                      1        1      27
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight           0      220     233
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight           1        1     233
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight                      0        9     233
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight                      1        3     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight           0      115     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight           1        0     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                      0        6     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                      1        2     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0      113     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1        5     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                      0        2     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                      1        5     125
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight           0       78      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight           1        3      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                      0       10      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                      1        1      92
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight           0      308     383
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight           1        9     383
Birth       ki1000108-IRC              INDIA                          Low birthweight                      0       59     383
Birth       ki1000108-IRC              INDIA                          Low birthweight                      1        7     383
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight           0      148     240
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight           1       12     240
Birth       ki1000109-EE               PAKISTAN                       Low birthweight                      0       44     240
Birth       ki1000109-EE               PAKISTAN                       Low birthweight                      1       36     240
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight           0       34      42
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight           1        1      42
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight                      0        6      42
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight                      1        1      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight           0      907    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight           1        7    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                      0      254    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                      1       84    1252
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight           0      423     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight           1        0     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                      0      166     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                      1       19     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight           0      401     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight           1        1     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                      0      134     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                      1        3     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight           0      559     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight           1        1     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                      0      163     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                      1        9     732
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight           0     1290    1529
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight           1       18    1529
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight                      0      210    1529
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight                      1       11    1529
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight           0      475     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight           1        1     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight                      0      190     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight                      1       30     696
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight           0       14      26
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight           1        0      26
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight                      0        6      26
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight                      1        6      26
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight           0        2       2
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight           1        0       2
Birth       ki1114097-CONTENT          PERU                           Low birthweight                      0        0       2
Birth       ki1114097-CONTENT          PERU                           Low birthweight                      1        0       2
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight           0    13885   13890
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight           1        5   13890
Birth       ki1119695-PROBIT           BELARUS                        Low birthweight                      0        0   13890
Birth       ki1119695-PROBIT           BELARUS                        Low birthweight                      1        0   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight           0    11800   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight           1      129   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                      0     1589   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                      1      312   13830
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight           0      713     784
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight           1        4     784
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight                      0       61     784
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight                      1        6     784
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight           0     5242    6638
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight           1       26    6638
Birth       ki1135781-COHORTS          INDIA                          Low birthweight                      0     1190    6638
Birth       ki1135781-COHORTS          INDIA                          Low birthweight                      1      180    6638
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight           0     2704    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight           1        5    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight                      0      255    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight                      1       40    3004
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight           0    12790   22454
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight           1       68   22454
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                      0     7216   22454
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                      1     2380   22454
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight           0     1789    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight           1       10    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                      0      801    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                      1      223    2823
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight           0      185     238
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight           1        3     238
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                      0       45     238
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                      1        5     238
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight           0      199     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight           1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                      0       10     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                      1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight           0      188     227
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight           1        5     227
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                      0       33     227
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                      1        1     227
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight           0      210     229
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight           1        0     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                      0       18     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                      1        1     229
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight           0      249     270
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight           1        5     270
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                      0       12     270
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                      1        4     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight           0      235     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight           1        3     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                      0       12     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                      1        3     253
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0      170     186
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1        7     186
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                      0        7     186
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                      1        2     186
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight           0      297     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight           1       30     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                      0       30     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                      1       12     369
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight           0      320     401
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight           1       15     401
6 months    ki1000108-IRC              INDIA                          Low birthweight                      0       54     401
6 months    ki1000108-IRC              INDIA                          Low birthweight                      1       12     401
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight           0      212     372
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight           1       30     372
6 months    ki1000109-EE               PAKISTAN                       Low birthweight                      0       80     372
6 months    ki1000109-EE               PAKISTAN                       Low birthweight                      1       50     372
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight           0       23      34
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight           1        6      34
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                      0        2      34
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                      1        3      34
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight           0      948    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight           1       55    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                      0      252    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                      1       71    1326
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight           0      358     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight           1        9     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                      0      125     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                      1       26     518
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight           0      457     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight           1        4     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                      0      133     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                      1       10     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight           0      535     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight           1       10     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                      0      157     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                      1       13     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0     1931    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1       13    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                      0       63    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                      1        4    2011
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight           0     1132    1334
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight           1       14    1334
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                      0      168    1334
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                      1       20    1334
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight           0      391     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight           1        6     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                      0      151     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                      1       15     563
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight           0        8      12
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight           1        1      12
6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                      0        3      12
6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                      1        0      12
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight           0        2       2
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight           1        0       2
6 months    ki1114097-CONTENT          PERU                           Low birthweight                      0        0       2
6 months    ki1114097-CONTENT          PERU                           Low birthweight                      1        0       2
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight           0    15518   15761
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight           1      243   15761
6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                      0        0   15761
6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                      1        0   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight           0     7375    8636
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight           1      191    8636
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                      0      912    8636
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                      1      158    8636
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight           0      642     771
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight           1       61     771
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                      0       42     771
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                      1       26     771
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight           0     4895    6261
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight           1      110    6261
6 months    ki1135781-COHORTS          INDIA                          Low birthweight                      0     1093    6261
6 months    ki1135781-COHORTS          INDIA                          Low birthweight                      1      163    6261
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight           0     2330    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight           1       88    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                      0      205    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                      1       43    2666
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight           0     8238   14130
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight           1      121   14130
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                      0     5035   14130
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                      1      736   14130
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight           0     2920    4041
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight           1       84    4041
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                      0      901    4041
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                      1      136    4041
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight           0      150     210
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight           1       15     210
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                      0       33     210
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                      1       12     210
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight           0      160     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight           1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                      0        8     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                      1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight           0      164     218
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight           1       21     218
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                      0       28     218
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                      1        5     218
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight           0      198     221
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight           1        5     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                      0       17     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                      1        1     221
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight           0      181     199
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight           1        6     199
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                      0        4     199
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                      1        8     199
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight           0      200     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight           1       24     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                      0       10     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                      1        3     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0      112     162
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1       42     162
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                      0        2     162
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                      1        6     162
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight           0      230     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight           1       98     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                      0       16     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                      1       27     371
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight           0      316     403
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight           1       19     403
24 months   ki1000108-IRC              INDIA                          Low birthweight                      0       50     403
24 months   ki1000108-IRC              INDIA                          Low birthweight                      1       18     403
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight           0       74     167
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight           1       26     167
24 months   ki1000109-EE               PAKISTAN                       Low birthweight                      0       34     167
24 months   ki1000109-EE               PAKISTAN                       Low birthweight                      1       33     167
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight           0      242     414
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight           1       45     414
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                      0       78     414
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                      1       49     414
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight           0      411     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight           1       28     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                      0      115     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                      1       24     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight           0      375     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight           1       13     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                      0      103     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                      1       23     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                      0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                      1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight           0      854    1056
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight           1       51    1056
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                      0      120    1056
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                      1       31    1056
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight           0      331     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight           1       24     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                      0      103     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                      1       29     487
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight           0        6      11
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight           1        2      11
24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                      0        1      11
24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                      1        2      11
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight           0        2       2
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight           1        0       2
24 months   ki1114097-CONTENT          PERU                           Low birthweight                      0        0       2
24 months   ki1114097-CONTENT          PERU                           Low birthweight                      1        0       2
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight           0     3970    4035
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight           1       65    4035
24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                      0        0    4035
24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                      1        0    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight           0     1313    1635
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight           1      129    1635
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                      0      145    1635
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                      1       48    1635
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight           0      322     650
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight           1      267     650
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                      0       14     650
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                      1       47     650
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight           0     3216    4858
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight           1      733    4858
24 months   ki1135781-COHORTS          INDIA                          Low birthweight                      0      537    4858
24 months   ki1135781-COHORTS          INDIA                          Low birthweight                      1      372    4858
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight           0     1607    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight           1      587    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                      0      106    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                      1      106    2406
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight           0     3859    7307
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight           1      382    7307
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                      0     2279    7307
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                      1      787    7307
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight           0     2748    4010
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight           1      207    4010
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                      0      886    4010
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                      1      169    4010


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
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/6491c33b-93a9-416e-981f-aa86a1f34db9/2ac66e43-d061-4755-acac-0b5642cd11ac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6491c33b-93a9-416e-981f-aa86a1f34db9/2ac66e43-d061-4755-acac-0b5642cd11ac/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6491c33b-93a9-416e-981f-aa86a1f34db9/2ac66e43-d061-4755-acac-0b5642cd11ac/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6491c33b-93a9-416e-981f-aa86a1f34db9/2ac66e43-d061-4755-acac-0b5642cd11ac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0283912   0.0100839   0.0466984
Birth       ki1000108-IRC              INDIA         Low birthweight              NA                0.1060606   0.0316774   0.1804438
Birth       ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.0747301   0.0336318   0.1158285
Birth       ki1000109-EE               PAKISTAN      Low birthweight              NA                0.4456702   0.3365148   0.5548256
Birth       ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.0076586   0.0028611   0.0124562
Birth       ki1000304b-SAS-CompFeed    INDIA         Low birthweight              NA                0.2485207   0.1798026   0.3172388
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0136870   0.0073885   0.0199855
Birth       ki1101329-Keneba           GAMBIA        Low birthweight              NA                0.0466760   0.0192278   0.0741242
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0107339   0.0088857   0.0125821
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              NA                0.1662450   0.1493296   0.1831604
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0049403   0.0030445   0.0068362
Birth       ki1135781-COHORTS          INDIA         Low birthweight              NA                0.1308298   0.1127973   0.1488623
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0018457   0.0002291   0.0034623
Birth       ki1135781-COHORTS          PHILIPPINES   Low birthweight              NA                0.1355932   0.0965193   0.1746672
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0053279   0.0040228   0.0066331
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              NA                0.2452322   0.2358361   0.2546282
Birth       kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0055389   0.0014975   0.0095803
Birth       kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              NA                0.2179077   0.1884773   0.2473382
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0912821   0.0599466   0.1226176
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low birthweight              NA                0.2784112   0.1368019   0.4200205
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0459078   0.0236223   0.0681933
6 months    ki1000108-IRC              INDIA         Low birthweight              NA                0.1689423   0.0754325   0.2624522
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.1221541   0.0807419   0.1635664
6 months    ki1000109-EE               PAKISTAN      Low birthweight              NA                0.3882808   0.3027286   0.4738330
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.0538012   0.0376379   0.0699645
6 months    ki1000304b-SAS-CompFeed    INDIA         Low birthweight              NA                0.2302899   0.1959868   0.2645930
6 months    ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0245232   0.0086840   0.0403623
6 months    ki1017093-NIH-Birth        BANGLADESH    Low birthweight              NA                0.1721854   0.1119095   0.2324614
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0181052   0.0068103   0.0294002
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low birthweight              NA                0.0719378   0.0313203   0.1125553
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0122603   0.0058712   0.0186493
6 months    ki1101329-Keneba           GAMBIA        Low birthweight              NA                0.1056968   0.0624802   0.1489133
6 months    ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.0151134   0.0031014   0.0271253
6 months    ki1113344-GMS-Nepal        NEPAL         Low birthweight              NA                0.0903614   0.0467092   0.1340136
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0251336   0.0215990   0.0286681
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              NA                0.1530839   0.1320301   0.1741377
6 months    ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0861502   0.0654041   0.1068964
6 months    ki1135781-COHORTS          GUATEMALA     Low birthweight              NA                0.3833215   0.2627715   0.5038715
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0217416   0.0176879   0.0257953
6 months    ki1135781-COHORTS          INDIA         Low birthweight              NA                0.1357685   0.1169892   0.1545477
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0360694   0.0286267   0.0435120
6 months    ki1135781-COHORTS          PHILIPPINES   Low birthweight              NA                0.1812133   0.1329372   0.2294894
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0142366   0.0113781   0.0170951
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              NA                0.1288148   0.1194402   0.1381894
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0278101   0.0202536   0.0353665
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              NA                0.1356807   0.1112568   0.1601047
24 months   ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   NA                0.0894093   0.0454434   0.1333751
24 months   ki0047075b-MAL-ED          BANGLADESH    Low birthweight              NA                0.2794017   0.1425401   0.4162633
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   NA                0.1135135   0.0676972   0.1593299
24 months   ki0047075b-MAL-ED          INDIA         Low birthweight              NA                0.1515152   0.0289013   0.2741290
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.2996104   0.2499411   0.3492798
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low birthweight              NA                0.6485481   0.5026763   0.7944199
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0568730   0.0320777   0.0816684
24 months   ki1000108-IRC              INDIA         Low birthweight              NA                0.2733797   0.1617215   0.3850379
24 months   ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.2665417   0.1797836   0.3532997
24 months   ki1000109-EE               PAKISTAN      Low birthweight              NA                0.5169119   0.3957165   0.6381073
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.1559849   0.1135161   0.1984536
24 months   ki1017093-NIH-Birth        BANGLADESH    Low birthweight              NA                0.3911154   0.3059634   0.4762674
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.0642246   0.0412049   0.0872443
24 months   ki1017093b-PROVIDE         BANGLADESH    Low birthweight              NA                0.1677463   0.1041178   0.2313748
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0338428   0.0159375   0.0517482
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low birthweight              NA                0.1869794   0.1181962   0.2557625
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0560084   0.0409948   0.0710221
24 months   ki1101329-Keneba           GAMBIA        Low birthweight              NA                0.2123058   0.1460005   0.2786112
24 months   ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.0661596   0.0400902   0.0922290
24 months   ki1113344-GMS-Nepal        NEPAL         Low birthweight              NA                0.2290361   0.1569241   0.3011481
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0888299   0.0741075   0.1035522
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              NA                0.2594662   0.1976988   0.3212336
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.4527212   0.4124632   0.4929791
24 months   ki1135781-COHORTS          GUATEMALA     Low birthweight              NA                0.7776378   0.6688714   0.8864041
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.1844764   0.1723884   0.1965643
24 months   ki1135781-COHORTS          INDIA         Low birthweight              NA                0.4173004   0.3854833   0.4491174
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.2660371   0.2475413   0.2845330
24 months   ki1135781-COHORTS          PHILIPPINES   Low birthweight              NA                0.5185328   0.4517669   0.5852988
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0882543   0.0786609   0.0978477
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              NA                0.2617646   0.2441468   0.2793825
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0698752   0.0592045   0.0805459
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              NA                0.1613836   0.1367491   0.1860181


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA         NA                   NA                0.0417755   0.0217118   0.0618391
Birth       ki1000109-EE               PAKISTAN      NA                   NA                0.2000000   0.1492882   0.2507118
Birth       ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0726837   0.0523147   0.0930527
Birth       ki1101329-Keneba           GAMBIA        NA                   NA                0.0189666   0.0121272   0.0258061
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0318872   0.0289588   0.0348156
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0310334   0.0268616   0.0352053
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0149800   0.0106354   0.0193246
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1090229   0.1044694   0.1135764
Birth       kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0825363   0.0708486   0.0942240
6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.1138211   0.0813725   0.1462698
6 months    ki1000108-IRC              INDIA         NA                   NA                0.0673317   0.0427738   0.0918896
6 months    ki1000109-EE               PAKISTAN      NA                   NA                0.2150538   0.1732462   0.2568613
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0950226   0.0765320   0.1135132
6 months    ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.0675676   0.0459314   0.0892038
6 months    ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1101329-Keneba           GAMBIA        NA                   NA                0.0254873   0.0170269   0.0339476
6 months    ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.0373002   0.0216334   0.0529670
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0404122   0.0362587   0.0445657
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1128405   0.0904926   0.1351883
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0436033   0.0385446   0.0486620
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0491373   0.0409307   0.0573439
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0606511   0.0563622   0.0649400
6 months    kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0544420   0.0459722   0.0629117
24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1285714   0.0831916   0.1739513
24 months   ki0047075b-MAL-ED          INDIA         NA                   NA                0.1192661   0.0761440   0.1623881
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.3369272   0.2887662   0.3850883
24 months   ki1000108-IRC              INDIA         NA                   NA                0.0918114   0.0635840   0.1200388
24 months   ki1000109-EE               PAKISTAN      NA                   NA                0.3532934   0.2805798   0.4260070
24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.2270531   0.1866503   0.2674560
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0700389   0.0479542   0.0921236
24 months   ki1101329-Keneba           GAMBIA        NA                   NA                0.0776515   0.0615026   0.0938005
24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1088296   0.0811421   0.1365171
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.1082569   0.0931919   0.1233219
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4830769   0.4446313   0.5215225
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.2274599   0.2156709   0.2392489
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2880299   0.2699315   0.3061283
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1599836   0.1502803   0.1696868
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0937656   0.0834379   0.1040932


### Parameter: RR


agecat      studyid                    country       intervention_level           baseline_level                 estimate     ci_lower     ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------------------  ----------  -----------  -----------
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1000108-IRC              INDIA         Low birthweight              Normal or high birthweight     3.735690    1.4408347     9.685623
Birth       ki1000109-EE               PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1000109-EE               PAKISTAN      Low birthweight              Normal or high birthweight     5.963729    3.2612598    10.905621
Birth       ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA         Low birthweight              Normal or high birthweight    32.449704   19.4675935    54.089032
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1101329-Keneba           GAMBIA        Low birthweight              Normal or high birthweight     3.410251    1.6157701     7.197691
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              Normal or high birthweight    15.487860   12.6797126    18.917921
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1135781-COHORTS          INDIA         Low birthweight              Normal or high birthweight    26.481953   17.6150809    39.812128
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1135781-COHORTS          PHILIPPINES   Low birthweight              Normal or high birthweight    73.464407   29.2170860   184.721332
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              Normal or high birthweight    46.027593   36.0014879    58.845881
Birth       kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              Normal or high birthweight    39.341407   18.6380488    83.042294
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low birthweight              Normal or high birthweight     3.050009    1.6515088     5.632762
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1000108-IRC              INDIA         Low birthweight              Normal or high birthweight     3.680036    1.7635455     7.679227
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1000109-EE               PAKISTAN      Low birthweight              Normal or high birthweight     3.178613    2.1239355     4.757010
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA         Low birthweight              Normal or high birthweight     4.280384    3.1517671     5.813148
6 months    ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH    Low birthweight              Normal or high birthweight     7.021339    3.3679464    14.637764
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low birthweight              Normal or high birthweight     3.973318    1.7138642     9.211498
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1101329-Keneba           GAMBIA        Low birthweight              Normal or high birthweight     8.621085    4.4582784    16.670807
6 months    ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1113344-GMS-Nepal        NEPAL         Low birthweight              Normal or high birthweight     5.978916    2.3588012    15.154915
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              Normal or high birthweight     6.090813    5.0042581     7.413288
6 months    ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1135781-COHORTS          GUATEMALA     Low birthweight              Normal or high birthweight     4.449454    2.9927946     6.615101
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1135781-COHORTS          INDIA         Low birthweight              Normal or high birthweight     6.244643    4.9523912     7.874088
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1135781-COHORTS          PHILIPPINES   Low birthweight              Normal or high birthweight     5.024021    3.5885521     7.033696
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              Normal or high birthweight     9.048117    7.3261560    11.174814
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              Normal or high birthweight     4.878835    3.5264297     6.749895
24 months   ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH    Low birthweight              Normal or high birthweight     3.124976    1.5657754     6.236829
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki0047075b-MAL-ED          INDIA         Low birthweight              Normal or high birthweight     1.334776    0.5403395     3.297238
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low birthweight              Normal or high birthweight     2.164638    1.6382597     2.860143
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1000108-IRC              INDIA         Low birthweight              Normal or high birthweight     4.806843    2.6393605     8.754294
24 months   ki1000109-EE               PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1000109-EE               PAKISTAN      Low birthweight              Normal or high birthweight     1.939329    1.2968714     2.900053
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH    Low birthweight              Normal or high birthweight     2.507393    1.7705073     3.550972
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH    Low birthweight              Normal or high birthweight     2.611871    1.5507881     4.398970
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low birthweight              Normal or high birthweight     5.524932    2.8986632    10.530672
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1101329-Keneba           GAMBIA        Low birthweight              Normal or high birthweight     3.790604    2.5164072     5.709998
24 months   ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1113344-GMS-Nepal        NEPAL         Low birthweight              Normal or high birthweight     3.461873    2.0946682     5.721463
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              Normal or high birthweight     2.920933    2.1867157     3.901674
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1135781-COHORTS          GUATEMALA     Low birthweight              Normal or high birthweight     1.717697    1.4554736     2.027163
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1135781-COHORTS          INDIA         Low birthweight              Normal or high birthweight     2.262080    2.0471695     2.499552
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1135781-COHORTS          PHILIPPINES   Low birthweight              Normal or high birthweight     1.949099    1.6852477     2.254261
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              Normal or high birthweight     2.966027    2.6151448     3.363988
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              Normal or high birthweight     2.309598    1.8618048     2.865092


### Parameter: PAR


agecat      studyid                    country       intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0133843   -0.0001400   0.0269086
Birth       ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.1252699    0.0803172   0.1702225
Birth       ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.0650251    0.0478410   0.0822091
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0052797    0.0009831   0.0095762
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0211533    0.0186886   0.0236180
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0260931    0.0221810   0.0300052
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0131343    0.0090385   0.0172301
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.1036950    0.0992011   0.1081888
Birth       kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0769974    0.0653713   0.0886236
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0225390    0.0053267   0.0397514
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0214239    0.0049143   0.0379334
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.0928996    0.0577941   0.1280052
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.0412214    0.0324011   0.0500417
6 months    ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0430444    0.0239784   0.0621104
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0140626    0.0040184   0.0241068
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0132270    0.0067507   0.0197033
6 months    ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.0221868    0.0085395   0.0358341
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0152786    0.0124817   0.0180756
6 months    ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0266902    0.0147538   0.0386267
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0218617    0.0179054   0.0258179
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0130679    0.0083876   0.0177482
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0464145    0.0424158   0.0504131
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0266319    0.0200928   0.0331710
24 months   ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   NA                0.0391622    0.0082237   0.0701006
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   NA                0.0057525   -0.0141444   0.0256495
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0373168    0.0167679   0.0578657
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0349384    0.0151483   0.0547285
24 months   ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.0867518    0.0246616   0.1488419
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0710683    0.0400746   0.1020620
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.0257408    0.0091216   0.0423600
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0361961    0.0182059   0.0541863
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0216431    0.0118153   0.0314709
24 months   ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.0426700    0.0214352   0.0639048
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0194270    0.0116019   0.0272521
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0303558    0.0175107   0.0432009
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0429835    0.0362158   0.0497512
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0219928    0.0153684   0.0286171
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0717293    0.0632647   0.0801939
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0238904    0.0168153   0.0309655


### Parameter: PAF


agecat      studyid                    country       intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.3203864   -0.0371590   0.5546733
Birth       ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.6263494    0.4047301   0.7654597
Birth       ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.8946305    0.8325207   0.9337069
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.2783664    0.0426370   0.4560527
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.6633794    0.6111633   0.7085834
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.8408060    0.7722690   0.8887164
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.8767893    0.7188230   0.9460095
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.9511301    0.9378371   0.9615805
Birth       kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.9328915    0.8625940   0.9672245
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.1980216    0.0415109   0.3289759
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.3181843    0.0629949   0.5038740
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.4319832    0.2630107   0.5622147
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.4338062    0.3360666   0.5171573
6 months    ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.6370572    0.3694075   0.7911052
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.4371637    0.1026010   0.6469968
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.5189650    0.2857253   0.6760425
6 months    ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.5948183    0.2092188   0.7923924
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.3780699    0.3170577   0.4336315
6 months    ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.2365306    0.1328290   0.3278310
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.5013769    0.4248102   0.5677513
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.2659469    0.1752329   0.3466834
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.7652698    0.7184594   0.8042973
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.4891796    0.3742521   0.5829990
24 months   ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   NA                0.3045947    0.0424079   0.4949953
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   NA                0.0482328   -0.1333022   0.2006891
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.1107563    0.0477795   0.1695679
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.3805451    0.1648436   0.5405360
24 months   ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.2455516    0.0498984   0.4009142
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.3130029    0.1696905   0.4315794
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.2861191    0.0925407   0.4384036
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.5167995    0.2659342   0.6819321
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.2787206    0.1537748   0.3852181
24 months   ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.3920808    0.1908565   0.5432630
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.1794528    0.1075195   0.2455883
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0628384    0.0355024   0.0893996
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.1889717    0.1594654   0.2174423
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0763559    0.0531573   0.0989861
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.4483540    0.3988598   0.4937731
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.2547885    0.1787748   0.3237662
