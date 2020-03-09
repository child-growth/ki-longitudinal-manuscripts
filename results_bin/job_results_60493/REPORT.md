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
0-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight            0     8074   13429
0-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight            1      237   13429
0-24 months   JiVitA-3         BANGLADESH                     Low birthweight                       0     4608   13429
0-24 months   JiVitA-3         BANGLADESH                     Low birthweight                       1      510   13429
0-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight            0     3108    4435
0-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight            1      171    4435
0-24 months   JiVitA-4         BANGLADESH                     Low birthweight                       0      976    4435
0-24 months   JiVitA-4         BANGLADESH                     Low birthweight                       1      180    4435
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
0-6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight            0       29      38
0-6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight            1        1      38
0-6 months    JiVitA-3         BANGLADESH                     Low birthweight                       0        7      38
0-6 months    JiVitA-3         BANGLADESH                     Low birthweight                       1        1      38
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
6-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight            0     8074   13429
6-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight            1      237   13429
6-24 months   JiVitA-3         BANGLADESH                     Low birthweight                       0     4608   13429
6-24 months   JiVitA-3         BANGLADESH                     Low birthweight                       1      510   13429
6-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight            0     3108    4435
6-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight            1      171    4435
6-24 months   JiVitA-4         BANGLADESH                     Low birthweight                       0      976    4435
6-24 months   JiVitA-4         BANGLADESH                     Low birthweight                       1      180    4435
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
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/e021f6c4-853d-4279-921c-e462ce63030a/0476cec4-98d9-4450-b59e-ab9913a518f4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e021f6c4-853d-4279-921c-e462ce63030a/0476cec4-98d9-4450-b59e-ab9913a518f4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e021f6c4-853d-4279-921c-e462ce63030a/0476cec4-98d9-4450-b59e-ab9913a518f4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e021f6c4-853d-4279-921c-e462ce63030a/0476cec4-98d9-4450-b59e-ab9913a518f4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0527950   0.0283363   0.0772538
0-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.1162791   0.0203350   0.2122231
0-24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.0660235   0.0585607   0.0734862
0-24 months   COHORTS          INDIA                          Low birthweight              NA                0.2239445   0.1974667   0.2504222
0-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0421142   0.0342608   0.0499676
0-24 months   COHORTS          PHILIPPINES                    Low birthweight              NA                0.1333454   0.0920865   0.1746043
0-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.0794076   0.0453147   0.1135005
0-24 months   EE               PAKISTAN                       Low birthweight              NA                0.1042520   0.0518337   0.1566703
0-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0920592   0.0642595   0.1198589
0-24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                0.2230813   0.1621333   0.2840293
0-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.0957473   0.0642152   0.1272795
0-24 months   IRC              INDIA                          Low birthweight              NA                0.2360640   0.1350737   0.3370543
0-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.0282356   0.0240926   0.0323787
0-24 months   JiVitA-3         BANGLADESH                     Low birthweight              NA                0.0998939   0.0907042   0.1090836
0-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.0521985   0.0432921   0.0611049
0-24 months   JiVitA-4         BANGLADESH                     Low birthweight              NA                0.1535721   0.1300772   0.1770671
0-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.0466868   0.0350969   0.0582768
0-24 months   Keneba           GAMBIA                         Low birthweight              NA                0.0927909   0.0543526   0.1312292
0-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.0717949   0.0354836   0.1081062
0-24 months   MAL-ED           INDIA                          Low birthweight              NA                0.1388889   0.0256743   0.2521034
0-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0492242   0.0267442   0.0717041
0-24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1951866   0.1320025   0.2583708
0-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0200066   0.0083577   0.0316555
0-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.0844869   0.0423886   0.1265852
0-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0122951   0.0025102   0.0220800
0-24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                0.0588235   0.0215112   0.0961359
0-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.0475142   0.0324666   0.0625617
0-24 months   SAS-CompFeed     INDIA                          Low birthweight              NA                0.1883246   0.1312427   0.2454066
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0251451   0.0183956   0.0318946
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.0666667   0.0102001   0.1231333
0-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0132378   0.0107828   0.0156928
0-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0488506   0.0365463   0.0611550
0-6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1254104   0.0883585   0.1624623
0-6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.2188269   0.0886733   0.3489805
0-6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0467391   0.0320120   0.0614662
0-6 months    COHORTS          PHILIPPINES                    Low birthweight              NA                0.2442701   0.1341346   0.3544057
0-6 months    EE               PAKISTAN                       Normal or high birthweight   NA                0.0596123   0.0299579   0.0892668
0-6 months    EE               PAKISTAN                       Low birthweight              NA                0.0878228   0.0403907   0.1352548
0-6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0719773   0.0463328   0.0976218
0-6 months    GMS-Nepal        NEPAL                          Low birthweight              NA                0.1921238   0.1323215   0.2519261
0-6 months    IRC              INDIA                          Normal or high birthweight   NA                0.1405273   0.1031114   0.1779432
0-6 months    IRC              INDIA                          Low birthweight              NA                0.2999406   0.1959733   0.4039078
0-6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                0.0211400   0.0129421   0.0293380
0-6 months    Keneba           GAMBIA                         Low birthweight              NA                0.0961704   0.0526683   0.1396725
0-6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                0.0615385   0.0277352   0.0953417
0-6 months    MAL-ED           INDIA                          Low birthweight              NA                0.1428571   0.0266754   0.2590389
0-6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0144033   0.0038022   0.0250044
0-6 months    PROVIDE          BANGLADESH                     Low birthweight              NA                0.0460526   0.0127057   0.0793996
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0223577   0.0158242   0.0288912
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.0972222   0.0287741   0.1656703
6-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0527950   0.0283363   0.0772538
6-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.1162791   0.0203350   0.2122231
6-24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.0660770   0.0586319   0.0735221
6-24 months   COHORTS          INDIA                          Low birthweight              NA                0.2245546   0.1983779   0.2507314
6-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0420400   0.0341974   0.0498825
6-24 months   COHORTS          PHILIPPINES                    Low birthweight              NA                0.1322090   0.0908915   0.1735265
6-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.0781449   0.0443574   0.1119323
6-24 months   EE               PAKISTAN                       Low birthweight              NA                0.1056404   0.0529709   0.1583100
6-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0927462   0.0648521   0.1206404
6-24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                0.2227525   0.1617217   0.2837833
6-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.0958210   0.0642554   0.1273867
6-24 months   IRC              INDIA                          Low birthweight              NA                0.2391413   0.1388967   0.3393859
6-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.0287440   0.0245070   0.0329809
6-24 months   JiVitA-3         BANGLADESH                     Low birthweight              NA                0.1004763   0.0912723   0.1096802
6-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.0522314   0.0433543   0.0611085
6-24 months   JiVitA-4         BANGLADESH                     Low birthweight              NA                0.1528761   0.1294746   0.1762777
6-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.0464156   0.0348744   0.0579567
6-24 months   Keneba           GAMBIA                         Low birthweight              NA                0.0958637   0.0565523   0.1351750
6-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.0717949   0.0354836   0.1081062
6-24 months   MAL-ED           INDIA                          Low birthweight              NA                0.1388889   0.0256743   0.2521034
6-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0496189   0.0270968   0.0721410
6-24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1916436   0.1288688   0.2544184
6-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0199231   0.0082985   0.0315477
6-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.0845019   0.0424950   0.1265089
6-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0122951   0.0025102   0.0220800
6-24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                0.0588235   0.0215112   0.0961359
6-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.0475142   0.0324666   0.0625617
6-24 months   SAS-CompFeed     INDIA                          Low birthweight              NA                0.1883246   0.1312427   0.2454066
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0251451   0.0183956   0.0318946
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.0666667   0.0102001   0.1231333
6-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0132294   0.0107747   0.0156841
6-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0489557   0.0366500   0.0612613


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.0602740   0.0358249   0.0847231
0-24 months   COHORTS          INDIA                          NA                   NA                0.0962415   0.0882767   0.1042062
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0505780   0.0424131   0.0587430
0-24 months   EE               PAKISTAN                       NA                   NA                0.0877660   0.0591276   0.1164044
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1342282   0.1068369   0.1616195
0-24 months   IRC              INDIA                          NA                   NA                0.1188119   0.0872211   0.1504026
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0556259   0.0512873   0.0599644
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.0791432   0.0700117   0.0882747
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
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0556259   0.0512873   0.0599644
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.0791432   0.0700117   0.0882747
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
0-24 months   COHORTS          INDIA                          Low birthweight              Normal or high birthweight    3.391892   2.8812584    3.993024
0-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    3.166281   2.2074454    4.541600
0-24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.312871   0.6774241    2.544391
0-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    2.423238   1.6081640    3.651419
0-24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    2.465489   1.4356587    4.234041
0-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    3.537868   2.9873626    4.189819
0-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    2.942079   2.3370689    3.703711
0-24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.987517   1.2265748    3.220532
0-24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    1.934524   0.7412333    5.048859
0-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    3.965260   2.2605620    6.955477
0-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    4.222952   1.9677265    9.062907
0-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    4.784314   1.7291761   13.237320
0-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    3.963545   3.0652924    5.125022
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    2.651282   1.0903832    6.446630
0-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    3.690240   2.6991829    5.045182
0-6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    1.744886   0.8990547    3.386477
0-6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    5.226248   3.0149661    9.059362
0-6 months    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.473232   0.7071200    3.069368
0-6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    2.669228   1.6611082    4.289170
0-6 months    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    IRC              INDIA                          Low birthweight              Normal or high birthweight    2.134394   1.3765348    3.309496
0-6 months    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    4.549204   2.5074793    8.253411
0-6 months    MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    2.321429   0.8700394    6.194008
0-6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    3.197368   1.1386341    8.978446
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    4.348485   2.0290167    9.319451
6-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    2.202462   0.8549566    5.673786
6-24 months   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   COHORTS          INDIA                          Low birthweight              Normal or high birthweight    3.398379   2.8909088    3.994930
6-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    3.144841   2.1862655    4.523707
6-24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.351854   0.6988815    2.614905
6-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    2.401742   1.5952270    3.616014
6-24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    2.495707   1.4645463    4.252891
6-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    3.495559   2.9512591    4.140244
6-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    2.926902   2.3270102    3.681443
6-24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    2.065333   1.2785873    3.336184
6-24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    1.934524   0.7412333    5.048859
6-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    3.862313   2.2011325    6.777177
6-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    4.241407   1.9767257    9.100674
6-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    4.784314   1.7291761   13.237320
6-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    3.963545   3.0652924    5.125022
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    2.651282   1.0903832    6.446630
6-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    3.700526   2.7076105    5.057556


### Parameter: PAR


agecat        studyid          country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0074789   -0.0043735   0.0193314
0-24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.0302180    0.0248367   0.0355993
0-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0084638    0.0044515   0.0124762
0-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.0083584   -0.0138775   0.0305943
0-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0421690    0.0214048   0.0629332
0-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.0230646    0.0044687   0.0416605
0-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.0273903    0.0236399   0.0311406
0-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.0269447    0.0201044   0.0337850
0-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.0067891    0.0009003   0.0126779
0-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.0104562   -0.0083379   0.0292503
0-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0420380    0.0215569   0.0625191
0-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0156098    0.0051287   0.0260909
0-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0111059    0.0017713   0.0204404
0-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.0350817    0.0216207   0.0485427
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0014532   -0.0005632   0.0034695
0-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0044446    0.0028657   0.0060234
0-6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0141907   -0.0024236   0.0308050
0-6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0142222    0.0056795   0.0227650
0-6 months    EE               PAKISTAN                       Normal or high birthweight   NA                0.0079553   -0.0119143   0.0278248
0-6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0375633    0.0173791   0.0577476
0-6 months    IRC              INDIA                          Normal or high birthweight   NA                0.0181629   -0.0011331   0.0374589
0-6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                0.0101544    0.0040778   0.0162310
0-6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                0.0123746   -0.0064230   0.0311721
0-6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0075403   -0.0008617   0.0159423
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0026423    0.0001425   0.0051420
6-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0074789   -0.0043735   0.0193314
6-24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.0301645    0.0247980   0.0355309
6-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0085381    0.0045234   0.0125528
6-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.0096211   -0.0124265   0.0316686
6-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0414820    0.0206595   0.0623044
6-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.0229908    0.0044440   0.0415377
6-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.0268819    0.0230942   0.0306696
6-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.0269118    0.0200983   0.0337253
6-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.0070604    0.0011869   0.0129338
6-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.0104562   -0.0083379   0.0292503
6-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0416433    0.0211485   0.0621381
6-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0156933    0.0052174   0.0261693
6-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0111059    0.0017713   0.0204404
6-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.0350817    0.0216207   0.0485427
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0014532   -0.0005632   0.0034695
6-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0044530    0.0028740   0.0060319


### Parameter: PAF


agecat        studyid          country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1240824   -0.0891428   0.2955638
0-24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.3139810    0.2614993   0.3627331
0-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1673419    0.0887255   0.2391759
0-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.0952346   -0.1947485   0.3148346
0-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.3141590    0.1531600   0.4445493
0-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.1941267    0.0298419   0.3305917
0-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.4924012    0.4294807   0.5483824
0-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.3404547    0.2564705   0.4149526
0-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.1269559    0.0128041   0.2279081
0-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.1271255   -0.1267794   0.3238163
0-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.4606288    0.2309034   0.6217364
0-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.4382762    0.1299668   0.6373315
0-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.4745902    0.0290084   0.7156973
0-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.4247390    0.3246016   0.5100296
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0546337   -0.0229578   0.1263399
0-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2513553    0.1656348   0.3282690
0-6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1016519   -0.0233995   0.2114230
0-6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.2332990    0.0946194   0.3507368
0-6 months    EE               PAKISTAN                       Normal or high birthweight   NA                0.1177377   -0.2254868   0.3648347
0-6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.3429169    0.1498522   0.4921375
0-6 months    IRC              INDIA                          Normal or high birthweight   NA                0.1144550   -0.0133065   0.2261078
0-6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                0.3244794    0.1300971   0.4754264
0-6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                0.1674208   -0.1161918   0.3789704
0-6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.3436214   -0.1023367   0.6091640
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1056911    0.0043545   0.1967136
6-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1240824   -0.0891428   0.2955638
6-24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.3134249    0.2611676   0.3619861
6-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1688101    0.0902194   0.2406117
6-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.1096221   -0.1777898   0.3268978
6-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.3090406    0.1474637   0.4399946
6-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.1935062    0.0295430   0.3297672
6-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.4832626    0.4188908   0.5405037
6-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.3400394    0.2565387   0.4141618
6-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.1320286    0.0183694   0.2325277
6-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.1271255   -0.1267794   0.3238163
6-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.4563040    0.2264661   0.6178508
6-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.4406209    0.1327551   0.6391965
6-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.4745902    0.0290084   0.7156973
6-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.4247390    0.3246016   0.5100296
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0546337   -0.0229578   0.1263399
6-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2518312    0.1661109   0.3287399
