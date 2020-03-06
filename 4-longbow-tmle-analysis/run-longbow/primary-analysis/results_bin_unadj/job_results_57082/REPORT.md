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

**Outcome Variable:** pers_wast

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

agecat        studyid          country                        birthwt                       pers_wast   n_cell       n
------------  ---------------  -----------------------------  ---------------------------  ----------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight            0      305     365
0-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight            1       17     365
0-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                       0       38     365
0-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                       1        5     365
0-24 months   CMIN             BANGLADESH                     Normal or high birthweight            0        9      12
0-24 months   CMIN             BANGLADESH                     Normal or high birthweight            1        0      12
0-24 months   CMIN             BANGLADESH                     Low birthweight                       0        3      12
0-24 months   CMIN             BANGLADESH                     Low birthweight                       1        0      12
0-24 months   COHORTS          GUATEMALA                      Normal or high birthweight            0      706     795
0-24 months   COHORTS          GUATEMALA                      Normal or high birthweight            1       17     795
0-24 months   COHORTS          GUATEMALA                      Low birthweight                       0       69     795
0-24 months   COHORTS          GUATEMALA                      Low birthweight                       1        3     795
0-24 months   COHORTS          INDIA                          Normal or high birthweight            0     3998    5268
0-24 months   COHORTS          INDIA                          Normal or high birthweight            1      281    5268
0-24 months   COHORTS          INDIA                          Low birthweight                       0      763    5268
0-24 months   COHORTS          INDIA                          Low birthweight                       1      226    5268
0-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight            0     2409    2768
0-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight            1      106    2768
0-24 months   COHORTS          PHILIPPINES                    Low birthweight                       0      219    2768
0-24 months   COHORTS          PHILIPPINES                    Low birthweight                       1       34    2768
0-24 months   CONTENT          PERU                           Normal or high birthweight            0        2       2
0-24 months   CONTENT          PERU                           Normal or high birthweight            1        0       2
0-24 months   CONTENT          PERU                           Low birthweight                       0        0       2
0-24 months   CONTENT          PERU                           Low birthweight                       1        0       2
0-24 months   EE               PAKISTAN                       Normal or high birthweight            0      225     376
0-24 months   EE               PAKISTAN                       Normal or high birthweight            1       19     376
0-24 months   EE               PAKISTAN                       Low birthweight                       0      118     376
0-24 months   EE               PAKISTAN                       Low birthweight                       1       14     376
0-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight            0      378     596
0-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight            1       40     596
0-24 months   GMS-Nepal        NEPAL                          Low birthweight                       0      138     596
0-24 months   GMS-Nepal        NEPAL                          Low birthweight                       1       40     596
0-24 months   IRC              INDIA                          Normal or high birthweight            0      303     404
0-24 months   IRC              INDIA                          Normal or high birthweight            1       32     404
0-24 months   IRC              INDIA                          Low birthweight                       0       53     404
0-24 months   IRC              INDIA                          Low birthweight                       1       16     404
0-24 months   Keneba           GAMBIA                         Normal or high birthweight            0     1219    1496
0-24 months   Keneba           GAMBIA                         Normal or high birthweight            1       60    1496
0-24 months   Keneba           GAMBIA                         Low birthweight                       0      197    1496
0-24 months   Keneba           GAMBIA                         Low birthweight                       1       20    1496
0-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight            0      186     245
0-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight            1        8     245
0-24 months   MAL-ED           BANGLADESH                     Low birthweight                       0       47     245
0-24 months   MAL-ED           BANGLADESH                     Low birthweight                       1        4     245
0-24 months   MAL-ED           BRAZIL                         Normal or high birthweight            0      206     218
0-24 months   MAL-ED           BRAZIL                         Normal or high birthweight            1        2     218
0-24 months   MAL-ED           BRAZIL                         Low birthweight                       0       10     218
0-24 months   MAL-ED           BRAZIL                         Low birthweight                       1        0     218
0-24 months   MAL-ED           INDIA                          Normal or high birthweight            0      181     231
0-24 months   MAL-ED           INDIA                          Normal or high birthweight            1       14     231
0-24 months   MAL-ED           INDIA                          Low birthweight                       0       31     231
0-24 months   MAL-ED           INDIA                          Low birthweight                       1        5     231
0-24 months   MAL-ED           NEPAL                          Normal or high birthweight            0      209     231
0-24 months   MAL-ED           NEPAL                          Normal or high birthweight            1        3     231
0-24 months   MAL-ED           NEPAL                          Low birthweight                       0       19     231
0-24 months   MAL-ED           NEPAL                          Low birthweight                       1        0     231
0-24 months   MAL-ED           PERU                           Normal or high birthweight            0      263     281
0-24 months   MAL-ED           PERU                           Normal or high birthweight            1        1     281
0-24 months   MAL-ED           PERU                           Low birthweight                       0       17     281
0-24 months   MAL-ED           PERU                           Low birthweight                       1        0     281
0-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight            0      256     274
0-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight            1        2     274
0-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                       0       16     274
0-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                       1        0     274
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0      181     190
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1        0     190
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                       0        9     190
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                       1        0     190
0-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight            0      344     515
0-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight            1       18     515
0-24 months   NIH-Birth        BANGLADESH                     Low birthweight                       0      124     515
0-24 months   NIH-Birth        BANGLADESH                     Low birthweight                       1       29     515
0-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight            0      548     730
0-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight            1       11     730
0-24 months   NIH-Crypto       BANGLADESH                     Low birthweight                       0      156     730
0-24 months   NIH-Crypto       BANGLADESH                     Low birthweight                       1       15     730
0-24 months   PROBIT           BELARUS                        Normal or high birthweight            0    16449   16583
0-24 months   PROBIT           BELARUS                        Normal or high birthweight            1      134   16583
0-24 months   PROBIT           BELARUS                        Low birthweight                       0        0   16583
0-24 months   PROBIT           BELARUS                        Low birthweight                       1        0   16583
0-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight            0      482     641
0-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight            1        6     641
0-24 months   PROVIDE          BANGLADESH                     Low birthweight                       0      144     641
0-24 months   PROVIDE          BANGLADESH                     Low birthweight                       1        9     641
0-24 months   ResPak           PAKISTAN                       Normal or high birthweight            0       28      35
0-24 months   ResPak           PAKISTAN                       Normal or high birthweight            1        2      35
0-24 months   ResPak           PAKISTAN                       Low birthweight                       0        4      35
0-24 months   ResPak           PAKISTAN                       Low birthweight                       1        1      35
0-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight            0      986    1356
0-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight            1       48    1356
0-24 months   SAS-CompFeed     INDIA                          Low birthweight                       0      258    1356
0-24 months   SAS-CompFeed     INDIA                          Low birthweight                       1       64    1356
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0     2016    2143
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1       52    2143
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                       0       70    2143
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                       1        5    2143
0-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight            0     8208    9501
0-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight            1      110    9501
0-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                       0     1125    9501
0-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                       1       58    9501
0-6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight            0      270     351
0-6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight            1       39     351
0-6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                       0       32     351
0-6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                       1       10     351
0-6 months    CMIN             BANGLADESH                     Normal or high birthweight            0        9      12
0-6 months    CMIN             BANGLADESH                     Normal or high birthweight            1        0      12
0-6 months    CMIN             BANGLADESH                     Low birthweight                       0        3      12
0-6 months    CMIN             BANGLADESH                     Low birthweight                       1        0      12
0-6 months    COHORTS          PHILIPPINES                    Normal or high birthweight            0      754     853
0-6 months    COHORTS          PHILIPPINES                    Normal or high birthweight            1       37     853
0-6 months    COHORTS          PHILIPPINES                    Low birthweight                       0       47     853
0-6 months    COHORTS          PHILIPPINES                    Low birthweight                       1       15     853
0-6 months    CONTENT          PERU                           Normal or high birthweight            0        2       2
0-6 months    CONTENT          PERU                           Normal or high birthweight            1        0       2
0-6 months    CONTENT          PERU                           Low birthweight                       0        0       2
0-6 months    CONTENT          PERU                           Low birthweight                       1        0       2
0-6 months    EE               PAKISTAN                       Normal or high birthweight            0      227     370
0-6 months    EE               PAKISTAN                       Normal or high birthweight            1       14     370
0-6 months    EE               PAKISTAN                       Low birthweight                       0      118     370
0-6 months    EE               PAKISTAN                       Low birthweight                       1       11     370
0-6 months    GMS-Nepal        NEPAL                          Normal or high birthweight            0      368     566
0-6 months    GMS-Nepal        NEPAL                          Normal or high birthweight            1       29     566
0-6 months    GMS-Nepal        NEPAL                          Low birthweight                       0      136     566
0-6 months    GMS-Nepal        NEPAL                          Low birthweight                       1       33     566
0-6 months    IRC              INDIA                          Normal or high birthweight            0      284     397
0-6 months    IRC              INDIA                          Normal or high birthweight            1       46     397
0-6 months    IRC              INDIA                          Low birthweight                       0       50     397
0-6 months    IRC              INDIA                          Low birthweight                       1       17     397
0-6 months    Keneba           GAMBIA                         Normal or high birthweight            0     1177    1406
0-6 months    Keneba           GAMBIA                         Normal or high birthweight            1       25    1406
0-6 months    Keneba           GAMBIA                         Low birthweight                       0      185    1406
0-6 months    Keneba           GAMBIA                         Low birthweight                       1       19    1406
0-6 months    MAL-ED           BANGLADESH                     Normal or high birthweight            0      188     245
0-6 months    MAL-ED           BANGLADESH                     Normal or high birthweight            1        6     245
0-6 months    MAL-ED           BANGLADESH                     Low birthweight                       0       50     245
0-6 months    MAL-ED           BANGLADESH                     Low birthweight                       1        1     245
0-6 months    MAL-ED           BRAZIL                         Normal or high birthweight            0      207     218
0-6 months    MAL-ED           BRAZIL                         Normal or high birthweight            1        1     218
0-6 months    MAL-ED           BRAZIL                         Low birthweight                       0       10     218
0-6 months    MAL-ED           BRAZIL                         Low birthweight                       1        0     218
0-6 months    MAL-ED           INDIA                          Normal or high birthweight            0      183     230
0-6 months    MAL-ED           INDIA                          Normal or high birthweight            1       12     230
0-6 months    MAL-ED           INDIA                          Low birthweight                       0       30     230
0-6 months    MAL-ED           INDIA                          Low birthweight                       1        5     230
0-6 months    MAL-ED           NEPAL                          Normal or high birthweight            0      206     231
0-6 months    MAL-ED           NEPAL                          Normal or high birthweight            1        6     231
0-6 months    MAL-ED           NEPAL                          Low birthweight                       0       18     231
0-6 months    MAL-ED           NEPAL                          Low birthweight                       1        1     231
0-6 months    MAL-ED           PERU                           Normal or high birthweight            0      264     281
0-6 months    MAL-ED           PERU                           Normal or high birthweight            1        0     281
0-6 months    MAL-ED           PERU                           Low birthweight                       0       17     281
0-6 months    MAL-ED           PERU                           Low birthweight                       1        0     281
0-6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight            0      256     273
0-6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight            1        2     273
0-6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                       0       15     273
0-6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                       1        0     273
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0      181     190
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1        0     190
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                       0        9     190
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                       1        0     190
0-6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight            0      118     166
0-6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight            1        4     166
0-6 months    NIH-Birth        BANGLADESH                     Low birthweight                       0       37     166
0-6 months    NIH-Birth        BANGLADESH                     Low birthweight                       1        7     166
0-6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight            0      200     250
0-6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight            1        3     250
0-6 months    NIH-Crypto       BANGLADESH                     Low birthweight                       0       45     250
0-6 months    NIH-Crypto       BANGLADESH                     Low birthweight                       1        2     250
0-6 months    PROBIT           BELARUS                        Normal or high birthweight            0    12437   13534
0-6 months    PROBIT           BELARUS                        Normal or high birthweight            1     1097   13534
0-6 months    PROBIT           BELARUS                        Low birthweight                       0        0   13534
0-6 months    PROBIT           BELARUS                        Low birthweight                       1        0   13534
0-6 months    PROVIDE          BANGLADESH                     Normal or high birthweight            0      479     638
0-6 months    PROVIDE          BANGLADESH                     Normal or high birthweight            1        7     638
0-6 months    PROVIDE          BANGLADESH                     Low birthweight                       0      145     638
0-6 months    PROVIDE          BANGLADESH                     Low birthweight                       1        7     638
0-6 months    ResPak           PAKISTAN                       Normal or high birthweight            0       27      34
0-6 months    ResPak           PAKISTAN                       Normal or high birthweight            1        2      34
0-6 months    ResPak           PAKISTAN                       Low birthweight                       0        3      34
0-6 months    ResPak           PAKISTAN                       Low birthweight                       1        2      34
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0     1924    2040
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1       44    2040
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                       0       65    2040
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                       1        7    2040
0-6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight            0      557     632
0-6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight            1       10     632
0-6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                       0       61     632
0-6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                       1        4     632
6-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight            0      305     365
6-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight            1       17     365
6-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                       0       38     365
6-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                       1        5     365
6-24 months   CMIN             BANGLADESH                     Normal or high birthweight            0        9      12
6-24 months   CMIN             BANGLADESH                     Normal or high birthweight            1        0      12
6-24 months   CMIN             BANGLADESH                     Low birthweight                       0        3      12
6-24 months   CMIN             BANGLADESH                     Low birthweight                       1        0      12
6-24 months   COHORTS          GUATEMALA                      Normal or high birthweight            0      706     795
6-24 months   COHORTS          GUATEMALA                      Normal or high birthweight            1       17     795
6-24 months   COHORTS          GUATEMALA                      Low birthweight                       0       69     795
6-24 months   COHORTS          GUATEMALA                      Low birthweight                       1        3     795
6-24 months   COHORTS          INDIA                          Normal or high birthweight            0     3998    5268
6-24 months   COHORTS          INDIA                          Normal or high birthweight            1      281    5268
6-24 months   COHORTS          INDIA                          Low birthweight                       0      763    5268
6-24 months   COHORTS          INDIA                          Low birthweight                       1      226    5268
6-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight            0     2409    2768
6-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight            1      106    2768
6-24 months   COHORTS          PHILIPPINES                    Low birthweight                       0      219    2768
6-24 months   COHORTS          PHILIPPINES                    Low birthweight                       1       34    2768
6-24 months   CONTENT          PERU                           Normal or high birthweight            0        2       2
6-24 months   CONTENT          PERU                           Normal or high birthweight            1        0       2
6-24 months   CONTENT          PERU                           Low birthweight                       0        0       2
6-24 months   CONTENT          PERU                           Low birthweight                       1        0       2
6-24 months   EE               PAKISTAN                       Normal or high birthweight            0      225     376
6-24 months   EE               PAKISTAN                       Normal or high birthweight            1       19     376
6-24 months   EE               PAKISTAN                       Low birthweight                       0      118     376
6-24 months   EE               PAKISTAN                       Low birthweight                       1       14     376
6-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight            0      378     596
6-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight            1       40     596
6-24 months   GMS-Nepal        NEPAL                          Low birthweight                       0      138     596
6-24 months   GMS-Nepal        NEPAL                          Low birthweight                       1       40     596
6-24 months   IRC              INDIA                          Normal or high birthweight            0      303     404
6-24 months   IRC              INDIA                          Normal or high birthweight            1       32     404
6-24 months   IRC              INDIA                          Low birthweight                       0       53     404
6-24 months   IRC              INDIA                          Low birthweight                       1       16     404
6-24 months   Keneba           GAMBIA                         Normal or high birthweight            0     1219    1496
6-24 months   Keneba           GAMBIA                         Normal or high birthweight            1       60    1496
6-24 months   Keneba           GAMBIA                         Low birthweight                       0      197    1496
6-24 months   Keneba           GAMBIA                         Low birthweight                       1       20    1496
6-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight            0      186     245
6-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight            1        8     245
6-24 months   MAL-ED           BANGLADESH                     Low birthweight                       0       47     245
6-24 months   MAL-ED           BANGLADESH                     Low birthweight                       1        4     245
6-24 months   MAL-ED           BRAZIL                         Normal or high birthweight            0      206     218
6-24 months   MAL-ED           BRAZIL                         Normal or high birthweight            1        2     218
6-24 months   MAL-ED           BRAZIL                         Low birthweight                       0       10     218
6-24 months   MAL-ED           BRAZIL                         Low birthweight                       1        0     218
6-24 months   MAL-ED           INDIA                          Normal or high birthweight            0      181     231
6-24 months   MAL-ED           INDIA                          Normal or high birthweight            1       14     231
6-24 months   MAL-ED           INDIA                          Low birthweight                       0       31     231
6-24 months   MAL-ED           INDIA                          Low birthweight                       1        5     231
6-24 months   MAL-ED           NEPAL                          Normal or high birthweight            0      209     231
6-24 months   MAL-ED           NEPAL                          Normal or high birthweight            1        3     231
6-24 months   MAL-ED           NEPAL                          Low birthweight                       0       19     231
6-24 months   MAL-ED           NEPAL                          Low birthweight                       1        0     231
6-24 months   MAL-ED           PERU                           Normal or high birthweight            0      263     281
6-24 months   MAL-ED           PERU                           Normal or high birthweight            1        1     281
6-24 months   MAL-ED           PERU                           Low birthweight                       0       17     281
6-24 months   MAL-ED           PERU                           Low birthweight                       1        0     281
6-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight            0      256     274
6-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight            1        2     274
6-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                       0       16     274
6-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                       1        0     274
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0      181     190
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1        0     190
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                       0        9     190
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                       1        0     190
6-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight            0      344     515
6-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight            1       18     515
6-24 months   NIH-Birth        BANGLADESH                     Low birthweight                       0      124     515
6-24 months   NIH-Birth        BANGLADESH                     Low birthweight                       1       29     515
6-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight            0      548     730
6-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight            1       11     730
6-24 months   NIH-Crypto       BANGLADESH                     Low birthweight                       0      156     730
6-24 months   NIH-Crypto       BANGLADESH                     Low birthweight                       1       15     730
6-24 months   PROBIT           BELARUS                        Normal or high birthweight            0    16449   16583
6-24 months   PROBIT           BELARUS                        Normal or high birthweight            1      134   16583
6-24 months   PROBIT           BELARUS                        Low birthweight                       0        0   16583
6-24 months   PROBIT           BELARUS                        Low birthweight                       1        0   16583
6-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight            0      482     641
6-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight            1        6     641
6-24 months   PROVIDE          BANGLADESH                     Low birthweight                       0      144     641
6-24 months   PROVIDE          BANGLADESH                     Low birthweight                       1        9     641
6-24 months   ResPak           PAKISTAN                       Normal or high birthweight            0       28      35
6-24 months   ResPak           PAKISTAN                       Normal or high birthweight            1        2      35
6-24 months   ResPak           PAKISTAN                       Low birthweight                       0        4      35
6-24 months   ResPak           PAKISTAN                       Low birthweight                       1        1      35
6-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight            0      986    1356
6-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight            1       48    1356
6-24 months   SAS-CompFeed     INDIA                          Low birthweight                       0      258    1356
6-24 months   SAS-CompFeed     INDIA                          Low birthweight                       1       64    1356
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0     2016    2143
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1       52    2143
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                       0       70    2143
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                       1        5    2143
6-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight            0     8208    9501
6-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight            1      110    9501
6-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                       0     1125    9501
6-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                       1       58    9501


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/342d4e09-8692-4d41-a458-472422bc1a5e/d81157dd-5cfc-47ea-aff3-bc46e7cbfbb0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/342d4e09-8692-4d41-a458-472422bc1a5e/d81157dd-5cfc-47ea-aff3-bc46e7cbfbb0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/342d4e09-8692-4d41-a458-472422bc1a5e/d81157dd-5cfc-47ea-aff3-bc46e7cbfbb0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/342d4e09-8692-4d41-a458-472422bc1a5e/d81157dd-5cfc-47ea-aff3-bc46e7cbfbb0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0527950   0.0283363   0.0772538
0-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.1162791   0.0203350   0.2122231
0-24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.0656695   0.0582470   0.0730921
0-24 months   COHORTS          INDIA                          Low birthweight              NA                0.2285137   0.2023432   0.2546841
0-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0421471   0.0342931   0.0500011
0-24 months   COHORTS          PHILIPPINES                    Low birthweight              NA                0.1343874   0.0923527   0.1764220
0-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.0778689   0.0442014   0.1115363
0-24 months   EE               PAKISTAN                       Low birthweight              NA                0.1060606   0.0534625   0.1586588
0-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0956938   0.0674694   0.1239181
0-24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                0.2247191   0.1633496   0.2860886
0-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.0955224   0.0640075   0.1270372
0-24 months   IRC              INDIA                          Low birthweight              NA                0.2318841   0.1321805   0.3315876
0-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.0469116   0.0353195   0.0585038
0-24 months   Keneba           GAMBIA                         Low birthweight              NA                0.0921659   0.0536667   0.1306651
0-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.0717949   0.0354836   0.1081062
0-24 months   MAL-ED           INDIA                          Low birthweight              NA                0.1388889   0.0256743   0.2521034
0-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0497238   0.0273096   0.0721379
0-24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1895425   0.1273779   0.2517070
0-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0196780   0.0081563   0.0311996
0-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.0877193   0.0452906   0.1301480
0-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0122951   0.0025102   0.0220800
0-24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                0.0588235   0.0215112   0.0961359
0-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.0464217   0.0316426   0.0612007
0-24 months   SAS-CompFeed     INDIA                          Low birthweight              NA                0.1987578   0.1361692   0.2613463
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0251451   0.0183956   0.0318946
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.0666667   0.0102001   0.1231333
0-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0132243   0.0107693   0.0156794
0-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0490279   0.0367228   0.0613330
0-6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1262136   0.0891332   0.1632940
0-6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.2380952   0.1091015   0.3670890
0-6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0467762   0.0320523   0.0615002
0-6 months    COHORTS          PHILIPPINES                    Low birthweight              NA                0.2419355   0.1352735   0.3485975
0-6 months    EE               PAKISTAN                       Normal or high birthweight   NA                0.0580913   0.0285188   0.0876637
0-6 months    EE               PAKISTAN                       Low birthweight              NA                0.0852713   0.0370112   0.1335315
0-6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0730479   0.0474284   0.0986673
0-6 months    GMS-Nepal        NEPAL                          Low birthweight              NA                0.1952663   0.1354487   0.2550838
0-6 months    IRC              INDIA                          Normal or high birthweight   NA                0.1393939   0.1019775   0.1768104
0-6 months    IRC              INDIA                          Low birthweight              NA                0.2537313   0.1494052   0.3580575
0-6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                0.0207987   0.0127281   0.0288692
0-6 months    Keneba           GAMBIA                         Low birthweight              NA                0.0931373   0.0532421   0.1330324
0-6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                0.0615385   0.0277352   0.0953417
0-6 months    MAL-ED           INDIA                          Low birthweight              NA                0.1428571   0.0266754   0.2590389
0-6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0144033   0.0038022   0.0250044
0-6 months    PROVIDE          BANGLADESH                     Low birthweight              NA                0.0460526   0.0127057   0.0793996
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0223577   0.0158242   0.0288912
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.0972222   0.0287741   0.1656703
6-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0527950   0.0283363   0.0772538
6-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.1162791   0.0203350   0.2122231
6-24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.0656695   0.0582470   0.0730921
6-24 months   COHORTS          INDIA                          Low birthweight              NA                0.2285137   0.2023432   0.2546841
6-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0421471   0.0342931   0.0500011
6-24 months   COHORTS          PHILIPPINES                    Low birthweight              NA                0.1343874   0.0923527   0.1764220
6-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.0778689   0.0442014   0.1115363
6-24 months   EE               PAKISTAN                       Low birthweight              NA                0.1060606   0.0534625   0.1586588
6-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0956938   0.0674694   0.1239181
6-24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                0.2247191   0.1633496   0.2860886
6-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.0955224   0.0640075   0.1270372
6-24 months   IRC              INDIA                          Low birthweight              NA                0.2318841   0.1321805   0.3315876
6-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.0469116   0.0353195   0.0585038
6-24 months   Keneba           GAMBIA                         Low birthweight              NA                0.0921659   0.0536667   0.1306651
6-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.0717949   0.0354836   0.1081062
6-24 months   MAL-ED           INDIA                          Low birthweight              NA                0.1388889   0.0256743   0.2521034
6-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0497238   0.0273096   0.0721379
6-24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1895425   0.1273779   0.2517070
6-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0196780   0.0081563   0.0311996
6-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.0877193   0.0452906   0.1301480
6-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0122951   0.0025102   0.0220800
6-24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                0.0588235   0.0215112   0.0961359
6-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.0464217   0.0316426   0.0612007
6-24 months   SAS-CompFeed     INDIA                          Low birthweight              NA                0.1987578   0.1361692   0.2613463
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0251451   0.0183956   0.0318946
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.0666667   0.0102001   0.1231333
6-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0132243   0.0107693   0.0156794
6-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0490279   0.0367228   0.0613330


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.0602740   0.0358249   0.0847231
0-24 months   COHORTS          INDIA                          NA                   NA                0.0962415   0.0882767   0.1042062
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0505780   0.0424131   0.0587430
0-24 months   EE               PAKISTAN                       NA                   NA                0.0877660   0.0591276   0.1164044
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1342282   0.1068369   0.1616195
0-24 months   IRC              INDIA                          NA                   NA                0.1188119   0.0872211   0.1504026
0-24 months   Keneba           GAMBIA                         NA                   NA                0.0534759   0.0420715   0.0648803
0-24 months   MAL-ED           INDIA                          NA                   NA                0.0822511   0.0467438   0.1177583
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.0912621   0.0663660   0.1161582
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.0234009   0.0116889   0.0351130
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.0825959   0.0584656   0.1067261
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0265982   0.0197841   0.0334124
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176823   0.0150321   0.0203326
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.1396011   0.1032926   0.1759097
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
0-6 months    EE               PAKISTAN                       NA                   NA                0.0675676   0.0419574   0.0931778
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.1095406   0.0837882   0.1352931
0-6 months    IRC              INDIA                          NA                   NA                0.1586902   0.1227025   0.1946778
0-6 months    Keneba           GAMBIA                         NA                   NA                0.0312945   0.0221903   0.0403986
0-6 months    MAL-ED           INDIA                          NA                   NA                0.0739130   0.0400273   0.1077988
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0219436   0.0105669   0.0333202
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0250000   0.0182234   0.0317766
6-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.0602740   0.0358249   0.0847231
6-24 months   COHORTS          INDIA                          NA                   NA                0.0962415   0.0882767   0.1042062
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0505780   0.0424131   0.0587430
6-24 months   EE               PAKISTAN                       NA                   NA                0.0877660   0.0591276   0.1164044
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1342282   0.1068369   0.1616195
6-24 months   IRC              INDIA                          NA                   NA                0.1188119   0.0872211   0.1504026
6-24 months   Keneba           GAMBIA                         NA                   NA                0.0534759   0.0420715   0.0648803
6-24 months   MAL-ED           INDIA                          NA                   NA                0.0822511   0.0467438   0.1177583
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.0912621   0.0663660   0.1161582
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.0234009   0.0116889   0.0351130
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.0825959   0.0584656   0.1067261
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0265982   0.0197841   0.0334124
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176823   0.0150321   0.0203326


### Parameter: RR


agecat        studyid          country                        intervention_level           baseline_level                estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  ---------------------------  ---------------------------  ---------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    2.202462   0.8549566    5.673786
0-24 months   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   COHORTS          INDIA                          Low birthweight              Normal or high birthweight    3.479751   2.9625578    4.087233
0-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    3.188530   2.2154834    4.588942
0-24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.362041   0.7054286    2.629829
0-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    2.348315   1.5710384    3.510151
0-24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    2.427536   1.4118689    4.173852
0-24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.964670   1.2092383    3.192032
0-24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    1.934524   0.7412333    5.048859
0-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    3.811910   2.1829334    6.656482
0-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    4.457735   2.0858664    9.526690
0-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    4.784314   1.7291761   13.237320
0-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    4.281574   3.2895961    5.572682
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    2.651282   1.0903832    6.446630
0-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    3.707400   2.7132633    5.065788
0-6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    1.886447   1.0185603    3.493835
0-6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    5.172188   3.0089360    8.890695
0-6 months    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.467885   0.6856411    3.142586
0-6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    2.673128   1.6779613    4.258509
0-6 months    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    IRC              INDIA                          Low birthweight              Normal or high birthweight    1.820247   1.1139842    2.974277
0-6 months    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    4.478039   2.5123372    7.981745
0-6 months    MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    2.321429   0.8700394    6.194008
0-6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    3.197368   1.1386341    8.978446
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    4.348485   2.0290167    9.319451
6-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    2.202462   0.8549566    5.673786
6-24 months   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   COHORTS          INDIA                          Low birthweight              Normal or high birthweight    3.479751   2.9625578    4.087233
6-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    3.188530   2.2154834    4.588942
6-24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.362041   0.7054286    2.629829
6-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    2.348315   1.5710384    3.510151
6-24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    2.427536   1.4118689    4.173852
6-24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.964670   1.2092383    3.192032
6-24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    1.934524   0.7412333    5.048859
6-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    3.811910   2.1829334    6.656482
6-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    4.457735   2.0858664    9.526690
6-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    4.784314   1.7291761   13.237320
6-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    4.281574   3.2895961    5.572682
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    2.651282   1.0903832    6.446630
6-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    3.707400   2.7132633    5.065788


### Parameter: PAR


agecat        studyid          country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0074789   -0.0043735   0.0193314
0-24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.0305719    0.0251839   0.0359599
0-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0084309    0.0043989   0.0124630
0-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.0098971   -0.0120693   0.0318635
0-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0385344    0.0178100   0.0592588
0-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.0232895    0.0047410   0.0418380
0-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.0065643    0.0006765   0.0124521
0-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.0104562   -0.0083379   0.0292503
0-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0415384    0.0211440   0.0619328
0-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0159384    0.0054294   0.0264475
0-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0111059    0.0017713   0.0204404
0-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.0361742    0.0224388   0.0499096
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0014532   -0.0005632   0.0034695
0-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0044580    0.0028777   0.0060383
0-6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0133875   -0.0031171   0.0298922
0-6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0141851    0.0056514   0.0227188
0-6 months    EE               PAKISTAN                       Normal or high birthweight   NA                0.0094763   -0.0103015   0.0292540
0-6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0364928    0.0165230   0.0564625
0-6 months    IRC              INDIA                          Normal or high birthweight   NA                0.0192962    0.0001218   0.0384707
0-6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                0.0104958    0.0044417   0.0165499
0-6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                0.0123746   -0.0064230   0.0311721
0-6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0075403   -0.0008617   0.0159423
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0026423    0.0001425   0.0051420
6-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0074789   -0.0043735   0.0193314
6-24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.0305719    0.0251839   0.0359599
6-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0084309    0.0043989   0.0124630
6-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.0098971   -0.0120693   0.0318635
6-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0385344    0.0178100   0.0592588
6-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.0232895    0.0047410   0.0418380
6-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.0065643    0.0006765   0.0124521
6-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.0104562   -0.0083379   0.0292503
6-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0415384    0.0211440   0.0619328
6-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0159384    0.0054294   0.0264475
6-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0111059    0.0017713   0.0204404
6-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.0361742    0.0224388   0.0499096
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0014532   -0.0005632   0.0034695
6-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0044580    0.0028777   0.0060383


### Parameter: PAF


agecat        studyid          country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1240824   -0.0891428   0.2955638
0-24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.3176584    0.2653143   0.3662732
0-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1666913    0.0877005   0.2388427
0-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.1127670   -0.1734017   0.3291450
0-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.2870813    0.1256919   0.4186797
0-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.1960199    0.0321423   0.3321498
0-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.1227522    0.0086578   0.2237153
0-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.1271255   -0.1267794   0.3238163
0-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.4551546    0.2274075   0.6157657
0-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.4475024    0.1403579   0.6449062
0-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.4745902    0.0290084   0.7156973
0-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.4379663    0.3374210   0.5232540
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0546337   -0.0229578   0.1263399
0-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2521168    0.1663130   0.3290895
0-6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0958986   -0.0282734   0.2050758
0-6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.2326899    0.0941985   0.3500068
0-6 months    EE               PAKISTAN                       Normal or high birthweight   NA                0.1402490   -0.2024925   0.3853002
0-6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.3331437    0.1425341   0.4813820
0-6 months    IRC              INDIA                          Normal or high birthweight   NA                0.1215969   -0.0055049   0.2326323
0-6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                0.3353880    0.1439006   0.4840446
0-6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                0.1674208   -0.1161918   0.3789704
0-6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.3436214   -0.1023367   0.6091640
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1056911    0.0043545   0.1967136
6-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1240824   -0.0891428   0.2955638
6-24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.3176584    0.2653143   0.3662732
6-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1666913    0.0877005   0.2388427
6-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.1127670   -0.1734017   0.3291450
6-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.2870813    0.1256919   0.4186797
6-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.1960199    0.0321423   0.3321498
6-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.1227522    0.0086578   0.2237153
6-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.1271255   -0.1267794   0.3238163
6-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.4551546    0.2274075   0.6157657
6-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.4475024    0.1403579   0.6449062
6-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.4745902    0.0290084   0.7156973
6-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.4379663    0.3374210   0.5232540
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0546337   -0.0229578   0.1263399
6-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2521168    0.1663130   0.3290895
