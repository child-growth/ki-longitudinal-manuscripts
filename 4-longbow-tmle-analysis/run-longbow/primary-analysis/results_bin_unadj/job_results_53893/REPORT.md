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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/39180fc0-8cfa-4c7a-92e6-d5a67aa204f2/2c7f8ae9-6780-4c64-8cca-daf31f77513d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/39180fc0-8cfa-4c7a-92e6-d5a67aa204f2/2c7f8ae9-6780-4c64-8cca-daf31f77513d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/39180fc0-8cfa-4c7a-92e6-d5a67aa204f2/2c7f8ae9-6780-4c64-8cca-daf31f77513d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/39180fc0-8cfa-4c7a-92e6-d5a67aa204f2/2c7f8ae9-6780-4c64-8cca-daf31f77513d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0283912   0.0100839   0.0466984
Birth       ki1000108-IRC              INDIA         Low birthweight              NA                0.1060606   0.0316774   0.1804438
Birth       ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.0750000   0.0341025   0.1158975
Birth       ki1000109-EE               PAKISTAN      Low birthweight              NA                0.4500000   0.3407561   0.5592439
Birth       ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.0076586   0.0028611   0.0124562
Birth       ki1000304b-SAS-CompFeed    INDIA         Low birthweight              NA                0.2485207   0.1798026   0.3172388
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0137615   0.0074459   0.0200770
Birth       ki1101329-Keneba           GAMBIA        Low birthweight              NA                0.0497738   0.0210919   0.0784556
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0108140   0.0089579   0.0126700
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              NA                0.1641241   0.1474735   0.1807747
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0049355   0.0030429   0.0068280
Birth       ki1135781-COHORTS          INDIA         Low birthweight              NA                0.1313869   0.1134969   0.1492768
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0018457   0.0002291   0.0034623
Birth       ki1135781-COHORTS          PHILIPPINES   Low birthweight              NA                0.1355932   0.0965193   0.1746672
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0052885   0.0040146   0.0065624
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              NA                0.2480200   0.2387225   0.2573175
Birth       kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0055586   0.0014892   0.0096281
Birth       kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              NA                0.2177734   0.1885211   0.2470258
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0917431   0.0604135   0.1230727
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low birthweight              NA                0.2857143   0.1489053   0.4225233
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0447761   0.0226021   0.0669501
6 months    ki1000108-IRC              INDIA         Low birthweight              NA                0.1818182   0.0886512   0.2749851
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.1239669   0.0823914   0.1655425
6 months    ki1000109-EE               PAKISTAN      Low birthweight              NA                0.3846154   0.3008726   0.4683582
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.0548355   0.0386045   0.0710665
6 months    ki1000304b-SAS-CompFeed    INDIA         Low birthweight              NA                0.2198142   0.1864957   0.2531328
6 months    ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0245232   0.0086840   0.0403623
6 months    ki1017093-NIH-Birth        BANGLADESH    Low birthweight              NA                0.1721854   0.1119095   0.2324614
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0183486   0.0070732   0.0296241
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low birthweight              NA                0.0764706   0.0364945   0.1164467
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0122164   0.0058540   0.0185788
6 months    ki1101329-Keneba           GAMBIA        Low birthweight              NA                0.1063830   0.0622926   0.1504734
6 months    ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.0151134   0.0031014   0.0271253
6 months    ki1113344-GMS-Nepal        NEPAL         Low birthweight              NA                0.0903614   0.0467092   0.1340136
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0252445   0.0217097   0.0287794
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              NA                0.1476636   0.1264055   0.1689216
6 months    ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0867710   0.0659486   0.1075933
6 months    ki1135781-COHORTS          GUATEMALA     Low birthweight              NA                0.3823529   0.2667742   0.4979317
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0219780   0.0179159   0.0260401
6 months    ki1135781-COHORTS          INDIA         Low birthweight              NA                0.1297771   0.1111904   0.1483638
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0363937   0.0289281   0.0438593
6 months    ki1135781-COHORTS          PHILIPPINES   Low birthweight              NA                0.1733871   0.1262608   0.2205134
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0144754   0.0116151   0.0173357
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              NA                0.1275342   0.1183642   0.1367043
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0279627   0.0203215   0.0356039
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              NA                0.1311475   0.1075919   0.1547032
24 months   ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   NA                0.0909091   0.0469398   0.1348784
24 months   ki0047075b-MAL-ED          BANGLADESH    Low birthweight              NA                0.2666667   0.1371537   0.3961797
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   NA                0.1135135   0.0676972   0.1593299
24 months   ki0047075b-MAL-ED          INDIA         Low birthweight              NA                0.1515152   0.0289013   0.2741290
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.2987805   0.2491784   0.3483826
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low birthweight              NA                0.6279070   0.4832387   0.7725753
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0567164   0.0319170   0.0815158
24 months   ki1000108-IRC              INDIA         Low birthweight              NA                0.2647059   0.1597165   0.3696953
24 months   ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.2600000   0.1737707   0.3462293
24 months   ki1000109-EE               PAKISTAN      Low birthweight              NA                0.4925373   0.3724668   0.6126079
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.1567944   0.1146768   0.1989121
24 months   ki1017093-NIH-Birth        BANGLADESH    Low birthweight              NA                0.3858268   0.3010625   0.4705911
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.0637813   0.0409028   0.0866598
24 months   ki1017093b-PROVIDE         BANGLADESH    Low birthweight              NA                0.1726619   0.1097755   0.2355482
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0335052   0.0155822   0.0514282
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low birthweight              NA                0.1825397   0.1150251   0.2500543
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0563536   0.0413223   0.0713848
24 months   ki1101329-Keneba           GAMBIA        Low birthweight              NA                0.2052980   0.1408425   0.2697535
24 months   ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.0676056   0.0414617   0.0937496
24 months   ki1113344-GMS-Nepal        NEPAL         Low birthweight              NA                0.2196970   0.1489918   0.2904021
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0894591   0.0747237   0.1041944
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              NA                0.2487047   0.1877019   0.3097074
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.4533107   0.4130767   0.4935447
24 months   ki1135781-COHORTS          GUATEMALA     Low birthweight              NA                0.7704918   0.6648829   0.8761007
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.1856166   0.1734891   0.1977441
24 months   ki1135781-COHORTS          INDIA         Low birthweight              NA                0.4092409   0.3772737   0.4412082
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.2675479   0.2490206   0.2860751
24 months   ki1135781-COHORTS          PHILIPPINES   Low birthweight              NA                0.5000000   0.4326806   0.5673194
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0900731   0.0804445   0.0997017
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              NA                0.2566862   0.2391133   0.2742592
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0700508   0.0593501   0.0807514
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              NA                0.1601896   0.1356807   0.1846985


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
Birth       ki1000109-EE               PAKISTAN      Low birthweight              Normal or high birthweight     6.000000    3.3031037    10.898840
Birth       ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA         Low birthweight              Normal or high birthweight    32.449704   19.4675935    54.089032
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1101329-Keneba           GAMBIA        Low birthweight              Normal or high birthweight     3.616893    1.7314365     7.555527
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              Normal or high birthweight    15.177030   12.4336447    18.525723
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1135781-COHORTS          INDIA         Low birthweight              Normal or high birthweight    26.620999   17.7215809    39.989525
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1135781-COHORTS          PHILIPPINES   Low birthweight              Normal or high birthweight    73.464407   29.2170860   184.721332
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              Normal or high birthweight    46.897634   36.8223663    59.729678
Birth       kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              Normal or high birthweight    39.177426   18.5185230    82.882998
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low birthweight              Normal or high birthweight     3.114286    1.7295651     5.607638
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1000108-IRC              INDIA         Low birthweight              Normal or high birthweight     4.060606    1.9911679     8.280829
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1000109-EE               PAKISTAN      Low birthweight              Normal or high birthweight     3.102564    2.0800122     4.627811
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA         Low birthweight              Normal or high birthweight     4.008612    2.9791380     5.393833
6 months    ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH    Low birthweight              Normal or high birthweight     7.021339    3.3679464    14.637764
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low birthweight              Normal or high birthweight     4.167647    1.8599751     9.338448
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1101329-Keneba           GAMBIA        Low birthweight              Normal or high birthweight     8.708207    4.4757602    16.943013
6 months    ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1113344-GMS-Nepal        NEPAL         Low birthweight              Normal or high birthweight     5.978916    2.3588012    15.154915
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              Normal or high birthweight     5.849332    4.7850609     7.150314
6 months    ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1135781-COHORTS          GUATEMALA     Low birthweight              Normal or high birthweight     4.406461    2.9955222     6.481974
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1135781-COHORTS          INDIA         Low birthweight              Normal or high birthweight     5.904857    4.6737142     7.460305
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1135781-COHORTS          PHILIPPINES   Low birthweight              Normal or high birthweight     4.764204    3.3892547     6.696943
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              Normal or high birthweight     8.810401    7.1542140    10.849993
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              Normal or high birthweight     4.690086    3.3846631     6.498994
24 months   ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH    Low birthweight              Normal or high birthweight     2.933333    1.4780350     5.821543
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki0047075b-MAL-ED          INDIA         Low birthweight              Normal or high birthweight     1.334776    0.5403395     3.297238
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low birthweight              Normal or high birthweight     2.101566    1.5820219     2.791732
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1000108-IRC              INDIA         Low birthweight              Normal or high birthweight     4.667183    2.5862655     8.422412
24 months   ki1000109-EE               PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1000109-EE               PAKISTAN      Low birthweight              Normal or high birthweight     1.894374    1.2551823     2.859070
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH    Low birthweight              Normal or high birthweight     2.460717    1.7392177     3.481525
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH    Low birthweight              Normal or high birthweight     2.707092    1.6236540     4.513489
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low birthweight              Normal or high birthweight     5.448107    2.8431748    10.439694
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1101329-Keneba           GAMBIA        Low birthweight              Normal or high birthweight     3.643033    2.4129496     5.500195
24 months   ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1113344-GMS-Nepal        NEPAL         Low birthweight              Normal or high birthweight     3.249684    1.9649089     5.374523
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              Normal or high birthweight     2.780094    2.0689228     3.735723
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1135781-COHORTS          GUATEMALA     Low birthweight              Normal or high birthweight     1.699699    1.4436249     2.001197
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1135781-COHORTS          INDIA         Low birthweight              Normal or high birthweight     2.204765    1.9912940     2.441120
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1135781-COHORTS          PHILIPPINES   Low birthweight              Normal or high birthweight     1.868825    1.6062566     2.174313
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              Normal or high birthweight     2.849755    2.5137521     3.230670
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              Normal or high birthweight     2.286764    1.8425816     2.838024


### Parameter: PAR


agecat      studyid                    country       intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0133843   -0.0001400   0.0269086
Birth       ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.1250000    0.0801207   0.1698793
Birth       ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.0650251    0.0478410   0.0822091
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0052052    0.0009130   0.0094974
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0210732    0.0186080   0.0235384
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0260980    0.0221863   0.0300097
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0131343    0.0090385   0.0172301
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.1037344    0.0992413   0.1082274
Birth       kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0769777    0.0653481   0.0886072
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0220780    0.0049079   0.0392481
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0225556    0.0060251   0.0390860
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.0910868    0.0560518   0.1261219
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.0401871    0.0319661   0.0484082
6 months    ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0430444    0.0239784   0.0621104
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0138192    0.0037782   0.0238602
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0132709    0.0067511   0.0197906
6 months    ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.0221868    0.0085395   0.0358341
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0151677    0.0123654   0.0179700
6 months    ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0260695    0.0141390   0.0380000
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0216252    0.0176616   0.0255888
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0127436    0.0080550   0.0174321
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0461757    0.0421790   0.0501723
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0264793    0.0199199   0.0330386
24 months   ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   NA                0.0376623    0.0067660   0.0685587
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   NA                0.0057525   -0.0141444   0.0256495
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0381467    0.0174237   0.0588697
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0350950    0.0153637   0.0548263
24 months   ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.0932934    0.0315037   0.1550832
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0702587    0.0394882   0.1010292
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.0261841    0.0096493   0.0427188
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0365338    0.0185340   0.0545335
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0212979    0.0113247   0.0312712
24 months   ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.0412239    0.0199257   0.0625222
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0187978    0.0109821   0.0266135
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0297662    0.0169943   0.0425382
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0418432    0.0349917   0.0486948
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0204821    0.0137899   0.0271742
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0699105    0.0614416   0.0783794
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0237148    0.0166249   0.0308048


### Parameter: PAF


agecat      studyid                    country       intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.3203864   -0.0371590   0.5546733
Birth       ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.6250000    0.4050898   0.7636198
Birth       ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.8946305    0.8325207   0.9337069
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.2744385    0.0386214   0.4524119
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.6608676    0.6084475   0.7062699
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.8409632    0.7725567   0.8887956
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.8767893    0.7188230   0.9460095
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.9514915    0.9385396   0.9617139
Birth       kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.9326521    0.8617762   0.9671856
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.1939712    0.0379931   0.3246592
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.3349917    0.0793898   0.5196272
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.4235537    0.2548268   0.5540764
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.4229217    0.3300385   0.5029276
6 months    ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.6370572    0.3694075   0.7911052
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.4295971    0.0969022   0.6397296
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.5206858    0.2866905   0.6779208
6 months    ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.5948183    0.2092188   0.7923924
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.3753248    0.3142203   0.4309849
6 months    ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.2310296    0.1271465   0.3225489
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.4959546    0.4191970   0.5625681
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.2593463    0.1683110   0.3404170
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.7613330    0.7146070   0.8004087
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.4863757    0.3700720   0.5812063
24 months   ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   NA                0.2929293    0.0321157   0.4834620
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   NA                0.0482328   -0.1333022   0.2006891
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.1132195    0.0497563   0.1724443
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.3822509    0.1670189   0.5418697
24 months   ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.2640678    0.0687461   0.4184226
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.3094373    0.1679613   0.4268574
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.2910461    0.0990301   0.4421393
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.5216208    0.2697509   0.6866184
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.2742757    0.1475642   0.3821520
24 months   ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.3787935    0.1774276   0.5308650
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.1736407    0.1017998   0.2397355
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0616180    0.0344527   0.0880189
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.1839588    0.1540977   0.2127659
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0711109    0.0476933   0.0939526
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.4369854    0.3874325   0.4825297
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.2529161    0.1766544   0.3221141
