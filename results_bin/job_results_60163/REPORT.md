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

agecat      studyid          country                        birthwt                       sstunted   n_cell       n
----------  ---------------  -----------------------------  ---------------------------  ---------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight           0       78      92
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight           1        3      92
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight                      0       10      92
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight                      1        1      92
Birth       CMIN             BANGLADESH                     Normal or high birthweight           0       14      26
Birth       CMIN             BANGLADESH                     Normal or high birthweight           1        0      26
Birth       CMIN             BANGLADESH                     Low birthweight                      0        6      26
Birth       CMIN             BANGLADESH                     Low birthweight                      1        6      26
Birth       COHORTS          GUATEMALA                      Normal or high birthweight           0      713     784
Birth       COHORTS          GUATEMALA                      Normal or high birthweight           1        4     784
Birth       COHORTS          GUATEMALA                      Low birthweight                      0       61     784
Birth       COHORTS          GUATEMALA                      Low birthweight                      1        6     784
Birth       COHORTS          INDIA                          Normal or high birthweight           0     5242    6638
Birth       COHORTS          INDIA                          Normal or high birthweight           1       26    6638
Birth       COHORTS          INDIA                          Low birthweight                      0     1190    6638
Birth       COHORTS          INDIA                          Low birthweight                      1      180    6638
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight           0     2704    3004
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight           1        5    3004
Birth       COHORTS          PHILIPPINES                    Low birthweight                      0      255    3004
Birth       COHORTS          PHILIPPINES                    Low birthweight                      1       40    3004
Birth       CONTENT          PERU                           Normal or high birthweight           0        2       2
Birth       CONTENT          PERU                           Normal or high birthweight           1        0       2
Birth       CONTENT          PERU                           Low birthweight                      0        0       2
Birth       CONTENT          PERU                           Low birthweight                      1        0       2
Birth       EE               PAKISTAN                       Normal or high birthweight           0      148     240
Birth       EE               PAKISTAN                       Normal or high birthweight           1       12     240
Birth       EE               PAKISTAN                       Low birthweight                      0       44     240
Birth       EE               PAKISTAN                       Low birthweight                      1       36     240
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight           0      475     696
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight           1        1     696
Birth       GMS-Nepal        NEPAL                          Low birthweight                      0      190     696
Birth       GMS-Nepal        NEPAL                          Low birthweight                      1       30     696
Birth       IRC              INDIA                          Normal or high birthweight           0      308     383
Birth       IRC              INDIA                          Normal or high birthweight           1        9     383
Birth       IRC              INDIA                          Low birthweight                      0       59     383
Birth       IRC              INDIA                          Low birthweight                      1        7     383
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight           0    12790   22454
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight           1       68   22454
Birth       JiVitA-3         BANGLADESH                     Low birthweight                      0     7216   22454
Birth       JiVitA-3         BANGLADESH                     Low birthweight                      1     2380   22454
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight           0     1789    2823
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight           1       10    2823
Birth       JiVitA-4         BANGLADESH                     Low birthweight                      0      801    2823
Birth       JiVitA-4         BANGLADESH                     Low birthweight                      1      223    2823
Birth       Keneba           GAMBIA                         Normal or high birthweight           0     1290    1529
Birth       Keneba           GAMBIA                         Normal or high birthweight           1       18    1529
Birth       Keneba           GAMBIA                         Low birthweight                      0      210    1529
Birth       Keneba           GAMBIA                         Low birthweight                      1       11    1529
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight           0      176     231
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight           1        1     231
Birth       MAL-ED           BANGLADESH                     Low birthweight                      0       46     231
Birth       MAL-ED           BANGLADESH                     Low birthweight                      1        8     231
Birth       MAL-ED           BRAZIL                         Normal or high birthweight           0       59      65
Birth       MAL-ED           BRAZIL                         Normal or high birthweight           1        2      65
Birth       MAL-ED           BRAZIL                         Low birthweight                      0        3      65
Birth       MAL-ED           BRAZIL                         Low birthweight                      1        1      65
Birth       MAL-ED           INDIA                          Normal or high birthweight           0       38      47
Birth       MAL-ED           INDIA                          Normal or high birthweight           1        1      47
Birth       MAL-ED           INDIA                          Low birthweight                      0        7      47
Birth       MAL-ED           INDIA                          Low birthweight                      1        1      47
Birth       MAL-ED           NEPAL                          Normal or high birthweight           0       24      27
Birth       MAL-ED           NEPAL                          Normal or high birthweight           1        0      27
Birth       MAL-ED           NEPAL                          Low birthweight                      0        2      27
Birth       MAL-ED           NEPAL                          Low birthweight                      1        1      27
Birth       MAL-ED           PERU                           Normal or high birthweight           0      220     233
Birth       MAL-ED           PERU                           Normal or high birthweight           1        1     233
Birth       MAL-ED           PERU                           Low birthweight                      0        9     233
Birth       MAL-ED           PERU                           Low birthweight                      1        3     233
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight           0      115     123
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight           1        0     123
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight                      0        6     123
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight                      1        2     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0      113     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1        5     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                      0        2     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                      1        5     125
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight           0      423     608
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight           1        0     608
Birth       NIH-Birth        BANGLADESH                     Low birthweight                      0      166     608
Birth       NIH-Birth        BANGLADESH                     Low birthweight                      1       19     608
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight           0      559     732
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight           1        1     732
Birth       NIH-Crypto       BANGLADESH                     Low birthweight                      0      163     732
Birth       NIH-Crypto       BANGLADESH                     Low birthweight                      1        9     732
Birth       PROBIT           BELARUS                        Normal or high birthweight           0    13888   13893
Birth       PROBIT           BELARUS                        Normal or high birthweight           1        5   13893
Birth       PROBIT           BELARUS                        Low birthweight                      0        0   13893
Birth       PROBIT           BELARUS                        Low birthweight                      1        0   13893
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight           0      401     539
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight           1        1     539
Birth       PROVIDE          BANGLADESH                     Low birthweight                      0      134     539
Birth       PROVIDE          BANGLADESH                     Low birthweight                      1        3     539
Birth       ResPak           PAKISTAN                       Normal or high birthweight           0       34      42
Birth       ResPak           PAKISTAN                       Normal or high birthweight           1        1      42
Birth       ResPak           PAKISTAN                       Low birthweight                      0        6      42
Birth       ResPak           PAKISTAN                       Low birthweight                      1        1      42
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight           0      907    1252
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight           1        7    1252
Birth       SAS-CompFeed     INDIA                          Low birthweight                      0      254    1252
Birth       SAS-CompFeed     INDIA                          Low birthweight                      1       84    1252
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight           0    11800   13830
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight           1      129   13830
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight                      0     1589   13830
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight                      1      312   13830
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight           0      289     361
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight           1       30     361
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                      0       30     361
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                      1       12     361
6 months    CMIN             BANGLADESH                     Normal or high birthweight           0        8      12
6 months    CMIN             BANGLADESH                     Normal or high birthweight           1        1      12
6 months    CMIN             BANGLADESH                     Low birthweight                      0        3      12
6 months    CMIN             BANGLADESH                     Low birthweight                      1        0      12
6 months    COHORTS          GUATEMALA                      Normal or high birthweight           0      642     771
6 months    COHORTS          GUATEMALA                      Normal or high birthweight           1       61     771
6 months    COHORTS          GUATEMALA                      Low birthweight                      0       42     771
6 months    COHORTS          GUATEMALA                      Low birthweight                      1       26     771
6 months    COHORTS          INDIA                          Normal or high birthweight           0     4895    6261
6 months    COHORTS          INDIA                          Normal or high birthweight           1      110    6261
6 months    COHORTS          INDIA                          Low birthweight                      0     1093    6261
6 months    COHORTS          INDIA                          Low birthweight                      1      163    6261
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight           0     2330    2666
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight           1       88    2666
6 months    COHORTS          PHILIPPINES                    Low birthweight                      0      205    2666
6 months    COHORTS          PHILIPPINES                    Low birthweight                      1       43    2666
6 months    CONTENT          PERU                           Normal or high birthweight           0        2       2
6 months    CONTENT          PERU                           Normal or high birthweight           1        0       2
6 months    CONTENT          PERU                           Low birthweight                      0        0       2
6 months    CONTENT          PERU                           Low birthweight                      1        0       2
6 months    EE               PAKISTAN                       Normal or high birthweight           0      212     372
6 months    EE               PAKISTAN                       Normal or high birthweight           1       30     372
6 months    EE               PAKISTAN                       Low birthweight                      0       80     372
6 months    EE               PAKISTAN                       Low birthweight                      1       50     372
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight           0      391     563
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight           1        6     563
6 months    GMS-Nepal        NEPAL                          Low birthweight                      0      151     563
6 months    GMS-Nepal        NEPAL                          Low birthweight                      1       15     563
6 months    IRC              INDIA                          Normal or high birthweight           0      320     401
6 months    IRC              INDIA                          Normal or high birthweight           1       15     401
6 months    IRC              INDIA                          Low birthweight                      0       54     401
6 months    IRC              INDIA                          Low birthweight                      1       12     401
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight           0     8238   14130
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight           1      121   14130
6 months    JiVitA-3         BANGLADESH                     Low birthweight                      0     5035   14130
6 months    JiVitA-3         BANGLADESH                     Low birthweight                      1      736   14130
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight           0     2920    4041
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight           1       84    4041
6 months    JiVitA-4         BANGLADESH                     Low birthweight                      0      901    4041
6 months    JiVitA-4         BANGLADESH                     Low birthweight                      1      136    4041
6 months    Keneba           GAMBIA                         Normal or high birthweight           0     1132    1334
6 months    Keneba           GAMBIA                         Normal or high birthweight           1       14    1334
6 months    Keneba           GAMBIA                         Low birthweight                      0      168    1334
6 months    Keneba           GAMBIA                         Low birthweight                      1       20    1334
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight           0      185     238
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight           1        3     238
6 months    MAL-ED           BANGLADESH                     Low birthweight                      0       45     238
6 months    MAL-ED           BANGLADESH                     Low birthweight                      1        5     238
6 months    MAL-ED           BRAZIL                         Normal or high birthweight           0      199     209
6 months    MAL-ED           BRAZIL                         Normal or high birthweight           1        0     209
6 months    MAL-ED           BRAZIL                         Low birthweight                      0       10     209
6 months    MAL-ED           BRAZIL                         Low birthweight                      1        0     209
6 months    MAL-ED           INDIA                          Normal or high birthweight           0      188     227
6 months    MAL-ED           INDIA                          Normal or high birthweight           1        5     227
6 months    MAL-ED           INDIA                          Low birthweight                      0       33     227
6 months    MAL-ED           INDIA                          Low birthweight                      1        1     227
6 months    MAL-ED           NEPAL                          Normal or high birthweight           0      210     229
6 months    MAL-ED           NEPAL                          Normal or high birthweight           1        0     229
6 months    MAL-ED           NEPAL                          Low birthweight                      0       18     229
6 months    MAL-ED           NEPAL                          Low birthweight                      1        1     229
6 months    MAL-ED           PERU                           Normal or high birthweight           0      249     270
6 months    MAL-ED           PERU                           Normal or high birthweight           1        5     270
6 months    MAL-ED           PERU                           Low birthweight                      0       12     270
6 months    MAL-ED           PERU                           Low birthweight                      1        4     270
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight           0      235     253
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight           1        3     253
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                      0       12     253
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                      1        3     253
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0      170     186
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1        7     186
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                      0        7     186
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                      1        2     186
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight           0      358     518
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight           1        9     518
6 months    NIH-Birth        BANGLADESH                     Low birthweight                      0      125     518
6 months    NIH-Birth        BANGLADESH                     Low birthweight                      1       26     518
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight           0      535     715
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight           1       10     715
6 months    NIH-Crypto       BANGLADESH                     Low birthweight                      0      157     715
6 months    NIH-Crypto       BANGLADESH                     Low birthweight                      1       13     715
6 months    PROBIT           BELARUS                        Normal or high birthweight           0    15583   15760
6 months    PROBIT           BELARUS                        Normal or high birthweight           1      177   15760
6 months    PROBIT           BELARUS                        Low birthweight                      0        0   15760
6 months    PROBIT           BELARUS                        Low birthweight                      1        0   15760
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight           0      457     604
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight           1        4     604
6 months    PROVIDE          BANGLADESH                     Low birthweight                      0      133     604
6 months    PROVIDE          BANGLADESH                     Low birthweight                      1       10     604
6 months    ResPak           PAKISTAN                       Normal or high birthweight           0       23      34
6 months    ResPak           PAKISTAN                       Normal or high birthweight           1        6      34
6 months    ResPak           PAKISTAN                       Low birthweight                      0        2      34
6 months    ResPak           PAKISTAN                       Low birthweight                      1        3      34
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight           0      948    1326
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight           1       55    1326
6 months    SAS-CompFeed     INDIA                          Low birthweight                      0      252    1326
6 months    SAS-CompFeed     INDIA                          Low birthweight                      1       71    1326
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0     1931    2011
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1       13    2011
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                      0       63    2011
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                      1        4    2011
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight           0     7375    8636
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight           1      191    8636
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                      0      912    8636
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                      1      158    8636
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight           0      226     363
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight           1       94     363
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                      0       16     363
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                      1       27     363
24 months   CMIN             BANGLADESH                     Normal or high birthweight           0        6      11
24 months   CMIN             BANGLADESH                     Normal or high birthweight           1        2      11
24 months   CMIN             BANGLADESH                     Low birthweight                      0        1      11
24 months   CMIN             BANGLADESH                     Low birthweight                      1        2      11
24 months   COHORTS          GUATEMALA                      Normal or high birthweight           0      322     650
24 months   COHORTS          GUATEMALA                      Normal or high birthweight           1      267     650
24 months   COHORTS          GUATEMALA                      Low birthweight                      0       14     650
24 months   COHORTS          GUATEMALA                      Low birthweight                      1       47     650
24 months   COHORTS          INDIA                          Normal or high birthweight           0     3216    4858
24 months   COHORTS          INDIA                          Normal or high birthweight           1      733    4858
24 months   COHORTS          INDIA                          Low birthweight                      0      537    4858
24 months   COHORTS          INDIA                          Low birthweight                      1      372    4858
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight           0     1607    2406
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight           1      587    2406
24 months   COHORTS          PHILIPPINES                    Low birthweight                      0      106    2406
24 months   COHORTS          PHILIPPINES                    Low birthweight                      1      106    2406
24 months   CONTENT          PERU                           Normal or high birthweight           0        2       2
24 months   CONTENT          PERU                           Normal or high birthweight           1        0       2
24 months   CONTENT          PERU                           Low birthweight                      0        0       2
24 months   CONTENT          PERU                           Low birthweight                      1        0       2
24 months   EE               PAKISTAN                       Normal or high birthweight           0       74     167
24 months   EE               PAKISTAN                       Normal or high birthweight           1       26     167
24 months   EE               PAKISTAN                       Low birthweight                      0       34     167
24 months   EE               PAKISTAN                       Low birthweight                      1       33     167
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight           0      331     487
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight           1       24     487
24 months   GMS-Nepal        NEPAL                          Low birthweight                      0      103     487
24 months   GMS-Nepal        NEPAL                          Low birthweight                      1       29     487
24 months   IRC              INDIA                          Normal or high birthweight           0      316     403
24 months   IRC              INDIA                          Normal or high birthweight           1       19     403
24 months   IRC              INDIA                          Low birthweight                      0       50     403
24 months   IRC              INDIA                          Low birthweight                      1       18     403
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight           0     3859    7307
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight           1      382    7307
24 months   JiVitA-3         BANGLADESH                     Low birthweight                      0     2279    7307
24 months   JiVitA-3         BANGLADESH                     Low birthweight                      1      787    7307
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight           0     2748    4010
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight           1      207    4010
24 months   JiVitA-4         BANGLADESH                     Low birthweight                      0      886    4010
24 months   JiVitA-4         BANGLADESH                     Low birthweight                      1      169    4010
24 months   Keneba           GAMBIA                         Normal or high birthweight           0      854    1056
24 months   Keneba           GAMBIA                         Normal or high birthweight           1       51    1056
24 months   Keneba           GAMBIA                         Low birthweight                      0      120    1056
24 months   Keneba           GAMBIA                         Low birthweight                      1       31    1056
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight           0      150     210
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight           1       15     210
24 months   MAL-ED           BANGLADESH                     Low birthweight                      0       33     210
24 months   MAL-ED           BANGLADESH                     Low birthweight                      1       12     210
24 months   MAL-ED           BRAZIL                         Normal or high birthweight           0      160     169
24 months   MAL-ED           BRAZIL                         Normal or high birthweight           1        1     169
24 months   MAL-ED           BRAZIL                         Low birthweight                      0        8     169
24 months   MAL-ED           BRAZIL                         Low birthweight                      1        0     169
24 months   MAL-ED           INDIA                          Normal or high birthweight           0      164     218
24 months   MAL-ED           INDIA                          Normal or high birthweight           1       21     218
24 months   MAL-ED           INDIA                          Low birthweight                      0       28     218
24 months   MAL-ED           INDIA                          Low birthweight                      1        5     218
24 months   MAL-ED           NEPAL                          Normal or high birthweight           0      198     221
24 months   MAL-ED           NEPAL                          Normal or high birthweight           1        5     221
24 months   MAL-ED           NEPAL                          Low birthweight                      0       17     221
24 months   MAL-ED           NEPAL                          Low birthweight                      1        1     221
24 months   MAL-ED           PERU                           Normal or high birthweight           0      181     199
24 months   MAL-ED           PERU                           Normal or high birthweight           1        6     199
24 months   MAL-ED           PERU                           Low birthweight                      0        4     199
24 months   MAL-ED           PERU                           Low birthweight                      1        8     199
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight           0      200     237
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight           1       24     237
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                      0       10     237
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                      1        3     237
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0      112     162
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1       42     162
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                      0        2     162
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                      1        6     162
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight           0      242     414
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight           1       45     414
24 months   NIH-Birth        BANGLADESH                     Low birthweight                      0       78     414
24 months   NIH-Birth        BANGLADESH                     Low birthweight                      1       49     414
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight           0      375     514
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight           1       13     514
24 months   NIH-Crypto       BANGLADESH                     Low birthweight                      0      103     514
24 months   NIH-Crypto       BANGLADESH                     Low birthweight                      1       23     514
24 months   PROBIT           BELARUS                        Normal or high birthweight           0     3970    4035
24 months   PROBIT           BELARUS                        Normal or high birthweight           1       65    4035
24 months   PROBIT           BELARUS                        Low birthweight                      0        0    4035
24 months   PROBIT           BELARUS                        Low birthweight                      1        0    4035
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight           0      411     578
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight           1       28     578
24 months   PROVIDE          BANGLADESH                     Low birthweight                      0      115     578
24 months   PROVIDE          BANGLADESH                     Low birthweight                      1       24     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0        5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                      0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                      1        0       6
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight           0     1313    1635
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight           1      129    1635
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                      0      145    1635
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                      1       48    1635


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/33c97913-d893-4e74-892d-b191cf44ccd9/64346483-f980-42a8-ab4a-a594991bd7ab/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/33c97913-d893-4e74-892d-b191cf44ccd9/64346483-f980-42a8-ab4a-a594991bd7ab/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/33c97913-d893-4e74-892d-b191cf44ccd9/64346483-f980-42a8-ab4a-a594991bd7ab/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/33c97913-d893-4e74-892d-b191cf44ccd9/64346483-f980-42a8-ab4a-a594991bd7ab/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country       intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA         Normal or high birthweight   NA                0.0049607   0.0030606   0.0068608
Birth       COHORTS          INDIA         Low birthweight              NA                0.1282991   0.1106047   0.1459936
Birth       COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0018457   0.0002291   0.0034623
Birth       COHORTS          PHILIPPINES   Low birthweight              NA                0.1355932   0.0965193   0.1746672
Birth       EE               PAKISTAN      Normal or high birthweight   NA                0.0760142   0.0342192   0.1178092
Birth       EE               PAKISTAN      Low birthweight              NA                0.4509550   0.3398843   0.5620256
Birth       IRC              INDIA         Normal or high birthweight   NA                0.0283912   0.0100839   0.0466984
Birth       IRC              INDIA         Low birthweight              NA                0.1060606   0.0316774   0.1804438
Birth       JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.0053923   0.0040814   0.0067031
Birth       JiVitA-3         BANGLADESH    Low birthweight              NA                0.2387851   0.2294685   0.2481018
Birth       JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.0055907   0.0014979   0.0096836
Birth       JiVitA-4         BANGLADESH    Low birthweight              NA                0.2173630   0.1880083   0.2467178
Birth       Keneba           GAMBIA        Normal or high birthweight   NA                0.0136819   0.0073846   0.0199792
Birth       Keneba           GAMBIA        Low birthweight              NA                0.0486955   0.0205549   0.0768360
Birth       SAS-CompFeed     INDIA         Normal or high birthweight   NA                0.0076586   0.0028611   0.0124562
Birth       SAS-CompFeed     INDIA         Low birthweight              NA                0.2485207   0.1798026   0.3172388
Birth       ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0108258   0.0089687   0.0126829
Birth       ZVITAMBO         ZIMBABWE      Low birthweight              NA                0.1618723   0.1452647   0.1784800
6 months    CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0943370   0.0622838   0.1263901
6 months    CMC-V-BCS-2002   INDIA         Low birthweight              NA                0.2891445   0.1528279   0.4254611
6 months    COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0862110   0.0654401   0.1069818
6 months    COHORTS          GUATEMALA     Low birthweight              NA                0.3807510   0.2639544   0.4975476
6 months    COHORTS          INDIA         Normal or high birthweight   NA                0.0218772   0.0178348   0.0259197
6 months    COHORTS          INDIA         Low birthweight              NA                0.1275040   0.1088178   0.1461901
6 months    COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0364049   0.0289473   0.0438626
6 months    COHORTS          PHILIPPINES   Low birthweight              NA                0.1705043   0.1244354   0.2165731
6 months    EE               PAKISTAN      Normal or high birthweight   NA                0.1246246   0.0830700   0.1661791
6 months    EE               PAKISTAN      Low birthweight              NA                0.3917661   0.3073638   0.4761683
6 months    GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.0151134   0.0031014   0.0271253
6 months    GMS-Nepal        NEPAL         Low birthweight              NA                0.0903614   0.0467092   0.1340136
6 months    IRC              INDIA         Normal or high birthweight   NA                0.0439299   0.0217819   0.0660780
6 months    IRC              INDIA         Low birthweight              NA                0.1834244   0.0876213   0.2792276
6 months    JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.0146067   0.0116406   0.0175729
6 months    JiVitA-3         BANGLADESH    Low birthweight              NA                0.1248017   0.1156097   0.1339936
6 months    JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.0278662   0.0203207   0.0354118
6 months    JiVitA-4         BANGLADESH    Low birthweight              NA                0.1299399   0.1052950   0.1545849
6 months    Keneba           GAMBIA        Normal or high birthweight   NA                0.0121852   0.0058108   0.0185596
6 months    Keneba           GAMBIA        Low birthweight              NA                0.1002475   0.0561547   0.1443403
6 months    NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0245232   0.0086840   0.0403623
6 months    NIH-Birth        BANGLADESH    Low birthweight              NA                0.1721854   0.1119095   0.2324614
6 months    NIH-Crypto       BANGLADESH    Normal or high birthweight   NA                0.0183849   0.0070961   0.0296738
6 months    NIH-Crypto       BANGLADESH    Low birthweight              NA                0.0794632   0.0391968   0.1197296
6 months    SAS-CompFeed     INDIA         Normal or high birthweight   NA                0.0551213   0.0388056   0.0714371
6 months    SAS-CompFeed     INDIA         Low birthweight              NA                0.2162155   0.1784565   0.2539745
6 months    ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0251807   0.0216462   0.0287153
6 months    ZVITAMBO         ZIMBABWE      Low birthweight              NA                0.1518423   0.1306647   0.1730198
24 months   CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.2936024   0.2435718   0.3436330
24 months   CMC-V-BCS-2002   INDIA         Low birthweight              NA                0.6251198   0.4791358   0.7711038
24 months   COHORTS          GUATEMALA     Normal or high birthweight   NA                0.4532358   0.4129615   0.4935101
24 months   COHORTS          GUATEMALA     Low birthweight              NA                0.7694826   0.6586869   0.8802783
24 months   COHORTS          INDIA         Normal or high birthweight   NA                0.1876832   0.1756133   0.1997532
24 months   COHORTS          INDIA         Low birthweight              NA                0.3935729   0.3625225   0.4246233
24 months   COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.2678229   0.2493448   0.2863009
24 months   COHORTS          PHILIPPINES   Low birthweight              NA                0.4961333   0.4305114   0.5617552
24 months   EE               PAKISTAN      Normal or high birthweight   NA                0.2635190   0.1768713   0.3501666
24 months   EE               PAKISTAN      Low birthweight              NA                0.4987259   0.3756170   0.6218348
24 months   GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.0677360   0.0415181   0.0939538
24 months   GMS-Nepal        NEPAL         Low birthweight              NA                0.2184466   0.1460128   0.2908805
24 months   IRC              INDIA         Normal or high birthweight   NA                0.0562109   0.0313788   0.0810430
24 months   IRC              INDIA         Low birthweight              NA                0.2660136   0.1568474   0.3751798
24 months   JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.0906334   0.0808461   0.1004207
24 months   JiVitA-3         BANGLADESH    Low birthweight              NA                0.2533569   0.2359645   0.2707492
24 months   JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.0712933   0.0605693   0.0820173
24 months   JiVitA-4         BANGLADESH    Low birthweight              NA                0.1531620   0.1292573   0.1770668
24 months   Keneba           GAMBIA        Normal or high birthweight   NA                0.0557456   0.0407271   0.0707640
24 months   Keneba           GAMBIA        Low birthweight              NA                0.2144918   0.1491086   0.2798749
24 months   MAL-ED           BANGLADESH    Normal or high birthweight   NA                0.0915206   0.0474806   0.1355606
24 months   MAL-ED           BANGLADESH    Low birthweight              NA                0.2428727   0.1080309   0.3777146
24 months   MAL-ED           INDIA         Normal or high birthweight   NA                0.1135135   0.0676972   0.1593299
24 months   MAL-ED           INDIA         Low birthweight              NA                0.1515152   0.0289013   0.2741290
24 months   NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.1588219   0.1162334   0.2014104
24 months   NIH-Birth        BANGLADESH    Low birthweight              NA                0.3821298   0.2966780   0.4675816
24 months   NIH-Crypto       BANGLADESH    Normal or high birthweight   NA                0.0333212   0.0153202   0.0513222
24 months   NIH-Crypto       BANGLADESH    Low birthweight              NA                0.1714984   0.1033071   0.2396897
24 months   PROVIDE          BANGLADESH    Normal or high birthweight   NA                0.0657858   0.0423804   0.0891911
24 months   PROVIDE          BANGLADESH    Low birthweight              NA                0.1653359   0.0995474   0.2311244
24 months   ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0896923   0.0749456   0.1044391
24 months   ZVITAMBO         ZIMBABWE      Low birthweight              NA                0.2442546   0.1829399   0.3055692


### Parameter: E(Y)


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA         NA                   NA                0.0310334   0.0268616   0.0352053
Birth       COHORTS          PHILIPPINES   NA                   NA                0.0149800   0.0106354   0.0193246
Birth       EE               PAKISTAN      NA                   NA                0.2000000   0.1492882   0.2507118
Birth       IRC              INDIA         NA                   NA                0.0417755   0.0217118   0.0618391
Birth       JiVitA-3         BANGLADESH    NA                   NA                0.1090229   0.1044694   0.1135764
Birth       JiVitA-4         BANGLADESH    NA                   NA                0.0825363   0.0708486   0.0942240
Birth       Keneba           GAMBIA        NA                   NA                0.0189666   0.0121272   0.0258061
Birth       SAS-CompFeed     INDIA         NA                   NA                0.0726837   0.0523147   0.0930527
Birth       ZVITAMBO         ZIMBABWE      NA                   NA                0.0318872   0.0289588   0.0348156
6 months    CMC-V-BCS-2002   INDIA         NA                   NA                0.1163435   0.0832220   0.1494650
6 months    COHORTS          GUATEMALA     NA                   NA                0.1128405   0.0904926   0.1351883
6 months    COHORTS          INDIA         NA                   NA                0.0436033   0.0385446   0.0486620
6 months    COHORTS          PHILIPPINES   NA                   NA                0.0491373   0.0409307   0.0573439
6 months    EE               PAKISTAN      NA                   NA                0.2150538   0.1732462   0.2568613
6 months    GMS-Nepal        NEPAL         NA                   NA                0.0373002   0.0216334   0.0529670
6 months    IRC              INDIA         NA                   NA                0.0673317   0.0427738   0.0918896
6 months    JiVitA-3         BANGLADESH    NA                   NA                0.0606511   0.0563622   0.0649400
6 months    JiVitA-4         BANGLADESH    NA                   NA                0.0544420   0.0459722   0.0629117
6 months    Keneba           GAMBIA        NA                   NA                0.0254873   0.0170269   0.0339476
6 months    NIH-Birth        BANGLADESH    NA                   NA                0.0675676   0.0459314   0.0892038
6 months    NIH-Crypto       BANGLADESH    NA                   NA                0.0321678   0.0192256   0.0451101
6 months    SAS-CompFeed     INDIA         NA                   NA                0.0950226   0.0765320   0.1135132
6 months    ZVITAMBO         ZIMBABWE      NA                   NA                0.0404122   0.0362587   0.0445657
24 months   CMC-V-BCS-2002   INDIA         NA                   NA                0.3333333   0.2847723   0.3818943
24 months   COHORTS          GUATEMALA     NA                   NA                0.4830769   0.4446313   0.5215225
24 months   COHORTS          INDIA         NA                   NA                0.2274599   0.2156709   0.2392489
24 months   COHORTS          PHILIPPINES   NA                   NA                0.2880299   0.2699315   0.3061283
24 months   EE               PAKISTAN      NA                   NA                0.3532934   0.2805798   0.4260070
24 months   GMS-Nepal        NEPAL         NA                   NA                0.1088296   0.0811421   0.1365171
24 months   IRC              INDIA         NA                   NA                0.0918114   0.0635840   0.1200389
24 months   JiVitA-3         BANGLADESH    NA                   NA                0.1599836   0.1502803   0.1696868
24 months   JiVitA-4         BANGLADESH    NA                   NA                0.0937656   0.0834379   0.1040932
24 months   Keneba           GAMBIA        NA                   NA                0.0776515   0.0615026   0.0938005
24 months   MAL-ED           BANGLADESH    NA                   NA                0.1285714   0.0831916   0.1739513
24 months   MAL-ED           INDIA         NA                   NA                0.1192661   0.0761440   0.1623881
24 months   NIH-Birth        BANGLADESH    NA                   NA                0.2270531   0.1866503   0.2674560
24 months   NIH-Crypto       BANGLADESH    NA                   NA                0.0700389   0.0479542   0.0921236
24 months   PROVIDE          BANGLADESH    NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ZVITAMBO         ZIMBABWE      NA                   NA                0.1082569   0.0931919   0.1233219


### Parameter: RR


agecat      studyid          country       intervention_level           baseline_level                 estimate     ci_lower     ci_upper
----------  ---------------  ------------  ---------------------------  ---------------------------  ----------  -----------  -----------
Birth       COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       COHORTS          INDIA         Low birthweight              Normal or high birthweight    25.863153   17.2143886    38.857185
Birth       COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       COHORTS          PHILIPPINES   Low birthweight              Normal or high birthweight    73.464407   29.2170860   184.721332
Birth       EE               PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       EE               PAKISTAN      Low birthweight              Normal or high birthweight     5.932509    3.2466588    10.840270
Birth       IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       IRC              INDIA         Low birthweight              Normal or high birthweight     3.735690    1.4408347     9.685623
Birth       JiVitA-3         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       JiVitA-3         BANGLADESH    Low birthweight              Normal or high birthweight    44.282967   34.7104516    56.495410
Birth       JiVitA-4         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       JiVitA-4         BANGLADESH    Low birthweight              Normal or high birthweight    38.879175   18.3719457    82.277093
Birth       Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       Keneba           GAMBIA        Low birthweight              Normal or high birthweight     3.559125    1.6991666     7.455049
Birth       SAS-CompFeed     INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       SAS-CompFeed     INDIA         Low birthweight              Normal or high birthweight    32.449704   19.4675936    54.089032
Birth       ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ZVITAMBO         ZIMBABWE      Low birthweight              Normal or high birthweight    14.952407   12.2436973    18.260372
6 months    CMC-V-BCS-2002   INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    CMC-V-BCS-2002   INDIA         Low birthweight              Normal or high birthweight     3.065018    1.7210056     5.458631
6 months    COHORTS          GUATEMALA     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    COHORTS          GUATEMALA     Low birthweight              Normal or high birthweight     4.416503    2.9888444     6.526099
6 months    COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    COHORTS          INDIA         Low birthweight              Normal or high birthweight     5.828157    4.6062659     7.374175
6 months    COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    COHORTS          PHILIPPINES   Low birthweight              Normal or high birthweight     4.683548    3.3383610     6.570775
6 months    EE               PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    EE               PAKISTAN      Low birthweight              Normal or high birthweight     3.143569    2.1107403     4.681783
6 months    GMS-Nepal        NEPAL         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    GMS-Nepal        NEPAL         Low birthweight              Normal or high birthweight     5.978916    2.3588012    15.154915
6 months    IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    IRC              INDIA         Low birthweight              Normal or high birthweight     4.175386    2.0249624     8.609467
6 months    JiVitA-3         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    JiVitA-3         BANGLADESH    Low birthweight              Normal or high birthweight     8.544125    6.9032031    10.575102
6 months    JiVitA-4         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    JiVitA-4         BANGLADESH    Low birthweight              Normal or high birthweight     4.662990    3.3570214     6.477013
6 months    Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    Keneba           GAMBIA        Low birthweight              Normal or high birthweight     8.227007    4.1648966    16.250978
6 months    NIH-Birth        BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    NIH-Birth        BANGLADESH    Low birthweight              Normal or high birthweight     7.021339    3.3679464    14.637764
6 months    NIH-Crypto       BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    NIH-Crypto       BANGLADESH    Low birthweight              Normal or high birthweight     4.322192    1.9489421     9.585375
6 months    SAS-CompFeed     INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    SAS-CompFeed     INDIA         Low birthweight              Normal or high birthweight     3.922537    2.8919735     5.320346
6 months    ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ZVITAMBO         ZIMBABWE      Low birthweight              Normal or high birthweight     6.030097    4.9487297     7.347759
24 months   CMC-V-BCS-2002   INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   CMC-V-BCS-2002   INDIA         Low birthweight              Normal or high birthweight     2.129138    1.5957605     2.840794
24 months   COHORTS          GUATEMALA     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   COHORTS          GUATEMALA     Low birthweight              Normal or high birthweight     1.697753    1.4336008     2.010578
24 months   COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   COHORTS          INDIA         Low birthweight              Normal or high birthweight     2.097006    1.8976908     2.317256
24 months   COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   COHORTS          PHILIPPINES   Low birthweight              Normal or high birthweight     1.852468    1.5978195     2.147701
24 months   EE               PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   EE               PAKISTAN      Low birthweight              Normal or high birthweight     1.892562    1.2539191     2.856476
24 months   GMS-Nepal        NEPAL         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   GMS-Nepal        NEPAL         Low birthweight              Normal or high birthweight     3.224973    1.9373883     5.368285
24 months   IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   IRC              INDIA         Low birthweight              Normal or high birthweight     4.732419    2.5991059     8.616728
24 months   JiVitA-3         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   JiVitA-3         BANGLADESH    Low birthweight              Normal or high birthweight     2.795404    2.4663558     3.168351
24 months   JiVitA-4         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   JiVitA-4         BANGLADESH    Low birthweight              Normal or high birthweight     2.148337    1.7321060     2.664591
24 months   Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   Keneba           GAMBIA        Low birthweight              Normal or high birthweight     3.847693    2.5631507     5.775993
24 months   MAL-ED           BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   MAL-ED           BANGLADESH    Low birthweight              Normal or high birthweight     2.653749    1.2823902     5.491608
24 months   MAL-ED           INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   MAL-ED           INDIA         Low birthweight              Normal or high birthweight     1.334776    0.5403395     3.297238
24 months   NIH-Birth        BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   NIH-Birth        BANGLADESH    Low birthweight              Normal or high birthweight     2.406027    1.6988724     3.407535
24 months   NIH-Crypto       BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   NIH-Crypto       BANGLADESH    Low birthweight              Normal or high birthweight     5.146822    2.6317487    10.065467
24 months   PROVIDE          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   PROVIDE          BANGLADESH    Low birthweight              Normal or high birthweight     2.513247    1.4750903     4.282049
24 months   ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ZVITAMBO         ZIMBABWE      Low birthweight              Normal or high birthweight     2.723249    2.0172193     3.676389


### Parameter: PAR


agecat      studyid          country       intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  ------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS          INDIA         Normal or high birthweight   NA                0.0260728    0.0221604   0.0299851
Birth       COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0131343    0.0090385   0.0172301
Birth       EE               PAKISTAN      Normal or high birthweight   NA                0.1239858    0.0787847   0.1691869
Birth       IRC              INDIA         Normal or high birthweight   NA                0.0133843   -0.0001400   0.0269086
Birth       JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.1036306    0.0991355   0.1081258
Birth       JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.0769456    0.0653131   0.0885780
Birth       Keneba           GAMBIA        Normal or high birthweight   NA                0.0052848    0.0009872   0.0095823
Birth       SAS-CompFeed     INDIA         Normal or high birthweight   NA                0.0650251    0.0478410   0.0822091
Birth       ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0210614    0.0185975   0.0235252
6 months    CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0220065    0.0048144   0.0391987
6 months    COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0266295    0.0147089   0.0385501
6 months    COHORTS          INDIA         Normal or high birthweight   NA                0.0217260    0.0177818   0.0256703
6 months    COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0127323    0.0080738   0.0173909
6 months    EE               PAKISTAN      Normal or high birthweight   NA                0.0904292    0.0553733   0.1254851
6 months    GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.0221868    0.0085395   0.0358341
6 months    IRC              INDIA         Normal or high birthweight   NA                0.0234017    0.0069375   0.0398660
6 months    JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.0460444    0.0420187   0.0500700
6 months    JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.0265757    0.0200292   0.0331223
6 months    Keneba           GAMBIA        Normal or high birthweight   NA                0.0133021    0.0068189   0.0197853
6 months    NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0430444    0.0239784   0.0621104
6 months    NIH-Crypto       BANGLADESH    Normal or high birthweight   NA                0.0137829    0.0037367   0.0238291
6 months    SAS-CompFeed     INDIA         Normal or high birthweight   NA                0.0399013    0.0317411   0.0480615
6 months    ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0152315    0.0124361   0.0180269
24 months   CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0397310    0.0186882   0.0607738
24 months   COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0298411    0.0170337   0.0426486
24 months   COHORTS          INDIA         Normal or high birthweight   NA                0.0397766    0.0332154   0.0463379
24 months   COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0202071    0.0136871   0.0267270
24 months   EE               PAKISTAN      Normal or high birthweight   NA                0.0897745    0.0275209   0.1520280
24 months   GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.0410936    0.0197545   0.0624327
24 months   IRC              INDIA         Normal or high birthweight   NA                0.0356005    0.0159392   0.0552618
24 months   JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.0693502    0.0608460   0.0778544
24 months   JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.0224723    0.0153313   0.0296133
24 months   Keneba           GAMBIA        Normal or high birthweight   NA                0.0219060    0.0120214   0.0317905
24 months   MAL-ED           BANGLADESH    Normal or high birthweight   NA                0.0370508    0.0066594   0.0674422
24 months   MAL-ED           INDIA         Normal or high birthweight   NA                0.0057525   -0.0141444   0.0256495
24 months   NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0682312    0.0373252   0.0991373
24 months   NIH-Crypto       BANGLADESH    Normal or high birthweight   NA                0.0367177    0.0187230   0.0547124
24 months   PROVIDE          BANGLADESH    Normal or high birthweight   NA                0.0241796    0.0074638   0.0408955
24 months   ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0185645    0.0107561   0.0263730


### Parameter: PAF


agecat      studyid          country       intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  ------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS          INDIA         Normal or high birthweight   NA                0.8401501    0.7714883   0.8881809
Birth       COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.8767893    0.7188230   0.9460095
Birth       EE               PAKISTAN      Normal or high birthweight   NA                0.6199289    0.3944569   0.7614472
Birth       IRC              INDIA         Normal or high birthweight   NA                0.3203864   -0.0371590   0.5546733
Birth       JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.9505401    0.9372001   0.9610465
Birth       JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.9322634    0.8609854   0.9669945
Birth       Keneba           GAMBIA        Normal or high birthweight   NA                0.2786357    0.0428735   0.4563242
Birth       SAS-CompFeed     INDIA         Normal or high birthweight   NA                0.8946305    0.8325207   0.9337069
Birth       ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.6604958    0.6080780   0.7059030
6 months    CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.1891514    0.0362008   0.3178295
6 months    COHORTS          GUATEMALA     Normal or high birthweight   NA                0.2359925    0.1323229   0.3272756
6 months    COHORTS          INDIA         Normal or high birthweight   NA                0.4982660    0.4221417   0.5643621
6 months    COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.2591179    0.1687329   0.3396751
6 months    EE               PAKISTAN      Normal or high birthweight   NA                0.4204956    0.2519431   0.5510699
6 months    GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.5948183    0.2092188   0.7923924
6 months    IRC              INDIA         Normal or high birthweight   NA                0.3475591    0.0921690   0.5311032
6 months    JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.7591680    0.7105331   0.7996316
6 months    JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.4881481    0.3733318   0.5819281
6 months    Keneba           GAMBIA        Normal or high birthweight   NA                0.5219111    0.2886701   0.6786737
6 months    NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.6370572    0.3694075   0.7911052
6 months    NIH-Crypto       BANGLADESH    Normal or high birthweight   NA                0.4284687    0.0953947   0.6389054
6 months    SAS-CompFeed     INDIA         Normal or high birthweight   NA                0.4199136    0.3269532   0.5000344
6 months    ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.3769031    0.3159325   0.4324395
24 months   CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.1191929    0.0539011   0.1799788
24 months   COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0617730    0.0345192   0.0882575
24 months   COHORTS          INDIA         Normal or high birthweight   NA                0.1748732    0.1462567   0.2025305
24 months   COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0701561    0.0473501   0.0924161
24 months   EE               PAKISTAN      Normal or high birthweight   NA                0.2541073    0.0576311   0.4096199
24 months   GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.3775961    0.1754897   0.5301615
24 months   IRC              INDIA         Normal or high birthweight   NA                0.3877567    0.1725793   0.5469756
24 months   JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.4334832    0.3832127   0.4796565
24 months   JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.2396646    0.1630056   0.3093026
24 months   Keneba           GAMBIA        Normal or high birthweight   NA                0.2821060    0.1563604   0.3891091
24 months   MAL-ED           BANGLADESH    Normal or high birthweight   NA                0.2881730    0.0315337   0.4768041
24 months   MAL-ED           INDIA         Normal or high birthweight   NA                0.0482328   -0.1333022   0.2006891
24 months   NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.3005078    0.1577495   0.4190691
24 months   NIH-Crypto       BANGLADESH    Normal or high birthweight   NA                0.5242470    0.2709583   0.6895365
24 months   PROVIDE          BANGLADESH    Normal or high birthweight   NA                0.2687658    0.0725973   0.4234398
24 months   ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.1714860    0.0996884   0.2375578
