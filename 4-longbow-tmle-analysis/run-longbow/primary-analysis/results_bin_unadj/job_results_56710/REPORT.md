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

**Outcome Variable:** stunted

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

agecat      studyid          country                        birthwt                       stunted   n_cell       n
----------  ---------------  -----------------------------  ---------------------------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0       71      92
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       10      92
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight                     0        4      92
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight                     1        7      92
Birth       CMIN             BANGLADESH                     Normal or high birthweight          0       13      26
Birth       CMIN             BANGLADESH                     Normal or high birthweight          1        1      26
Birth       CMIN             BANGLADESH                     Low birthweight                     0        4      26
Birth       CMIN             BANGLADESH                     Low birthweight                     1        8      26
Birth       COHORTS          GUATEMALA                      Normal or high birthweight          0      695     784
Birth       COHORTS          GUATEMALA                      Normal or high birthweight          1       22     784
Birth       COHORTS          GUATEMALA                      Low birthweight                     0       43     784
Birth       COHORTS          GUATEMALA                      Low birthweight                     1       24     784
Birth       COHORTS          INDIA                          Normal or high birthweight          0     5059    6638
Birth       COHORTS          INDIA                          Normal or high birthweight          1      209    6638
Birth       COHORTS          INDIA                          Low birthweight                     0      787    6638
Birth       COHORTS          INDIA                          Low birthweight                     1      583    6638
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight          0     2643    3004
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight          1       66    3004
Birth       COHORTS          PHILIPPINES                    Low birthweight                     0      181    3004
Birth       COHORTS          PHILIPPINES                    Low birthweight                     1      114    3004
Birth       CONTENT          PERU                           Normal or high birthweight          0        2       2
Birth       CONTENT          PERU                           Normal or high birthweight          1        0       2
Birth       CONTENT          PERU                           Low birthweight                     0        0       2
Birth       CONTENT          PERU                           Low birthweight                     1        0       2
Birth       EE               PAKISTAN                       Normal or high birthweight          0      112     240
Birth       EE               PAKISTAN                       Normal or high birthweight          1       48     240
Birth       EE               PAKISTAN                       Low birthweight                     0       28     240
Birth       EE               PAKISTAN                       Low birthweight                     1       52     240
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight          0      453     696
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight          1       23     696
Birth       GMS-Nepal        NEPAL                          Low birthweight                     0      121     696
Birth       GMS-Nepal        NEPAL                          Low birthweight                     1       99     696
Birth       IRC              INDIA                          Normal or high birthweight          0      292     383
Birth       IRC              INDIA                          Normal or high birthweight          1       25     383
Birth       IRC              INDIA                          Low birthweight                     0       47     383
Birth       IRC              INDIA                          Low birthweight                     1       19     383
Birth       Keneba           GAMBIA                         Normal or high birthweight          0     1269    1529
Birth       Keneba           GAMBIA                         Normal or high birthweight          1       39    1529
Birth       Keneba           GAMBIA                         Low birthweight                     0      177    1529
Birth       Keneba           GAMBIA                         Low birthweight                     1       44    1529
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight          0      163     231
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight          1       14     231
Birth       MAL-ED           BANGLADESH                     Low birthweight                     0       24     231
Birth       MAL-ED           BANGLADESH                     Low birthweight                     1       30     231
Birth       MAL-ED           BRAZIL                         Normal or high birthweight          0       55      65
Birth       MAL-ED           BRAZIL                         Normal or high birthweight          1        6      65
Birth       MAL-ED           BRAZIL                         Low birthweight                     0        1      65
Birth       MAL-ED           BRAZIL                         Low birthweight                     1        3      65
Birth       MAL-ED           INDIA                          Normal or high birthweight          0       34      47
Birth       MAL-ED           INDIA                          Normal or high birthweight          1        5      47
Birth       MAL-ED           INDIA                          Low birthweight                     0        3      47
Birth       MAL-ED           INDIA                          Low birthweight                     1        5      47
Birth       MAL-ED           NEPAL                          Normal or high birthweight          0       24      27
Birth       MAL-ED           NEPAL                          Normal or high birthweight          1        0      27
Birth       MAL-ED           NEPAL                          Low birthweight                     0        1      27
Birth       MAL-ED           NEPAL                          Low birthweight                     1        2      27
Birth       MAL-ED           PERU                           Normal or high birthweight          0      205     233
Birth       MAL-ED           PERU                           Normal or high birthweight          1       16     233
Birth       MAL-ED           PERU                           Low birthweight                     0        2     233
Birth       MAL-ED           PERU                           Low birthweight                     1       10     233
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight          0      109     123
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight          1        6     123
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight                     0        4     123
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight                     1        4     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      102     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       16     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        0     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        7     125
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight          0      409     608
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight          1       14     608
Birth       NIH-Birth        BANGLADESH                     Low birthweight                     0      102     608
Birth       NIH-Birth        BANGLADESH                     Low birthweight                     1       83     608
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight          0      519     732
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight          1       41     732
Birth       NIH-Crypto       BANGLADESH                     Low birthweight                     0      112     732
Birth       NIH-Crypto       BANGLADESH                     Low birthweight                     1       60     732
Birth       PROBIT           BELARUS                        Normal or high birthweight          0    13859   13893
Birth       PROBIT           BELARUS                        Normal or high birthweight          1       34   13893
Birth       PROBIT           BELARUS                        Low birthweight                     0        0   13893
Birth       PROBIT           BELARUS                        Low birthweight                     1        0   13893
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight          0      397     539
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight          1        5     539
Birth       PROVIDE          BANGLADESH                     Low birthweight                     0       94     539
Birth       PROVIDE          BANGLADESH                     Low birthweight                     1       43     539
Birth       ResPak           PAKISTAN                       Normal or high birthweight          0       28      42
Birth       ResPak           PAKISTAN                       Normal or high birthweight          1        7      42
Birth       ResPak           PAKISTAN                       Low birthweight                     0        0      42
Birth       ResPak           PAKISTAN                       Low birthweight                     1        7      42
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight          0      793    1252
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight          1      121    1252
Birth       SAS-CompFeed     INDIA                          Low birthweight                     0      110    1252
Birth       SAS-CompFeed     INDIA                          Low birthweight                     1      228    1252
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0    11231   13830
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      698   13830
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight                     0     1167   13830
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight                     1      734   13830
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      237     361
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       82     361
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                     0       15     361
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                     1       27     361
6 months    CMIN             BANGLADESH                     Normal or high birthweight          0        6      12
6 months    CMIN             BANGLADESH                     Normal or high birthweight          1        3      12
6 months    CMIN             BANGLADESH                     Low birthweight                     0        2      12
6 months    CMIN             BANGLADESH                     Low birthweight                     1        1      12
6 months    COHORTS          GUATEMALA                      Normal or high birthweight          0      446     771
6 months    COHORTS          GUATEMALA                      Normal or high birthweight          1      257     771
6 months    COHORTS          GUATEMALA                      Low birthweight                     0       16     771
6 months    COHORTS          GUATEMALA                      Low birthweight                     1       52     771
6 months    COHORTS          INDIA                          Normal or high birthweight          0     4360    6261
6 months    COHORTS          INDIA                          Normal or high birthweight          1      645    6261
6 months    COHORTS          INDIA                          Low birthweight                     0      741    6261
6 months    COHORTS          INDIA                          Low birthweight                     1      515    6261
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight          0     1979    2666
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight          1      439    2666
6 months    COHORTS          PHILIPPINES                    Low birthweight                     0      125    2666
6 months    COHORTS          PHILIPPINES                    Low birthweight                     1      123    2666
6 months    CONTENT          PERU                           Normal or high birthweight          0        2       2
6 months    CONTENT          PERU                           Normal or high birthweight          1        0       2
6 months    CONTENT          PERU                           Low birthweight                     0        0       2
6 months    CONTENT          PERU                           Low birthweight                     1        0       2
6 months    EE               PAKISTAN                       Normal or high birthweight          0      155     372
6 months    EE               PAKISTAN                       Normal or high birthweight          1       87     372
6 months    EE               PAKISTAN                       Low birthweight                     0       35     372
6 months    EE               PAKISTAN                       Low birthweight                     1       95     372
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight          0      344     563
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight          1       53     563
6 months    GMS-Nepal        NEPAL                          Low birthweight                     0       97     563
6 months    GMS-Nepal        NEPAL                          Low birthweight                     1       69     563
6 months    IRC              INDIA                          Normal or high birthweight          0      268     401
6 months    IRC              INDIA                          Normal or high birthweight          1       67     401
6 months    IRC              INDIA                          Low birthweight                     0       38     401
6 months    IRC              INDIA                          Low birthweight                     1       28     401
6 months    Keneba           GAMBIA                         Normal or high birthweight          0     1029    1334
6 months    Keneba           GAMBIA                         Normal or high birthweight          1      117    1334
6 months    Keneba           GAMBIA                         Low birthweight                     0      127    1334
6 months    Keneba           GAMBIA                         Low birthweight                     1       61    1334
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight          0      165     238
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight          1       23     238
6 months    MAL-ED           BANGLADESH                     Low birthweight                     0       29     238
6 months    MAL-ED           BANGLADESH                     Low birthweight                     1       21     238
6 months    MAL-ED           BRAZIL                         Normal or high birthweight          0      194     209
6 months    MAL-ED           BRAZIL                         Normal or high birthweight          1        5     209
6 months    MAL-ED           BRAZIL                         Low birthweight                     0        9     209
6 months    MAL-ED           BRAZIL                         Low birthweight                     1        1     209
6 months    MAL-ED           INDIA                          Normal or high birthweight          0      162     227
6 months    MAL-ED           INDIA                          Normal or high birthweight          1       31     227
6 months    MAL-ED           INDIA                          Low birthweight                     0       26     227
6 months    MAL-ED           INDIA                          Low birthweight                     1        8     227
6 months    MAL-ED           NEPAL                          Normal or high birthweight          0      204     229
6 months    MAL-ED           NEPAL                          Normal or high birthweight          1        6     229
6 months    MAL-ED           NEPAL                          Low birthweight                     0       15     229
6 months    MAL-ED           NEPAL                          Low birthweight                     1        4     229
6 months    MAL-ED           PERU                           Normal or high birthweight          0      208     270
6 months    MAL-ED           PERU                           Normal or high birthweight          1       46     270
6 months    MAL-ED           PERU                           Low birthweight                     0        5     270
6 months    MAL-ED           PERU                           Low birthweight                     1       11     270
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight          0      193     253
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight          1       45     253
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                     0       10     253
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                     1        5     253
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      143     186
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       34     186
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        2     186
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        7     186
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight          0      306     518
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight          1       61     518
6 months    NIH-Birth        BANGLADESH                     Low birthweight                     0       72     518
6 months    NIH-Birth        BANGLADESH                     Low birthweight                     1       79     518
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight          0      467     715
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight          1       78     715
6 months    NIH-Crypto       BANGLADESH                     Low birthweight                     0       98     715
6 months    NIH-Crypto       BANGLADESH                     Low birthweight                     1       72     715
6 months    PROBIT           BELARUS                        Normal or high birthweight          0    15140   15760
6 months    PROBIT           BELARUS                        Normal or high birthweight          1      620   15760
6 months    PROBIT           BELARUS                        Low birthweight                     0        0   15760
6 months    PROBIT           BELARUS                        Low birthweight                     1        0   15760
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight          0      417     604
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight          1       44     604
6 months    PROVIDE          BANGLADESH                     Low birthweight                     0       91     604
6 months    PROVIDE          BANGLADESH                     Low birthweight                     1       52     604
6 months    ResPak           PAKISTAN                       Normal or high birthweight          0       18      34
6 months    ResPak           PAKISTAN                       Normal or high birthweight          1       11      34
6 months    ResPak           PAKISTAN                       Low birthweight                     0        1      34
6 months    ResPak           PAKISTAN                       Low birthweight                     1        4      34
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight          0      803    1326
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight          1      200    1326
6 months    SAS-CompFeed     INDIA                          Low birthweight                     0      146    1326
6 months    SAS-CompFeed     INDIA                          Low birthweight                     1      177    1326
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     1770    2011
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1      174    2011
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0       47    2011
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1       20    2011
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0     6601    8636
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      965    8636
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                     0      630    8636
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                     1      440    8636
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0       98     363
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1      222     363
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                     0        6     363
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                     1       37     363
24 months   CMIN             BANGLADESH                     Normal or high birthweight          0        3      11
24 months   CMIN             BANGLADESH                     Normal or high birthweight          1        5      11
24 months   CMIN             BANGLADESH                     Low birthweight                     0        1      11
24 months   CMIN             BANGLADESH                     Low birthweight                     1        2      11
24 months   COHORTS          GUATEMALA                      Normal or high birthweight          0      119     650
24 months   COHORTS          GUATEMALA                      Normal or high birthweight          1      470     650
24 months   COHORTS          GUATEMALA                      Low birthweight                     0        2     650
24 months   COHORTS          GUATEMALA                      Low birthweight                     1       59     650
24 months   COHORTS          INDIA                          Normal or high birthweight          0     2020    4858
24 months   COHORTS          INDIA                          Normal or high birthweight          1     1929    4858
24 months   COHORTS          INDIA                          Low birthweight                     0      244    4858
24 months   COHORTS          INDIA                          Low birthweight                     1      665    4858
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight          0      875    2406
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight          1     1319    2406
24 months   COHORTS          PHILIPPINES                    Low birthweight                     0       38    2406
24 months   COHORTS          PHILIPPINES                    Low birthweight                     1      174    2406
24 months   CONTENT          PERU                           Normal or high birthweight          0        2       2
24 months   CONTENT          PERU                           Normal or high birthweight          1        0       2
24 months   CONTENT          PERU                           Low birthweight                     0        0       2
24 months   CONTENT          PERU                           Low birthweight                     1        0       2
24 months   EE               PAKISTAN                       Normal or high birthweight          0       34     167
24 months   EE               PAKISTAN                       Normal or high birthweight          1       66     167
24 months   EE               PAKISTAN                       Low birthweight                     0       15     167
24 months   EE               PAKISTAN                       Low birthweight                     1       52     167
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight          0      211     487
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight          1      144     487
24 months   GMS-Nepal        NEPAL                          Low birthweight                     0       58     487
24 months   GMS-Nepal        NEPAL                          Low birthweight                     1       74     487
24 months   IRC              INDIA                          Normal or high birthweight          0      208     403
24 months   IRC              INDIA                          Normal or high birthweight          1      127     403
24 months   IRC              INDIA                          Low birthweight                     0       27     403
24 months   IRC              INDIA                          Low birthweight                     1       41     403
24 months   Keneba           GAMBIA                         Normal or high birthweight          0      646    1056
24 months   Keneba           GAMBIA                         Normal or high birthweight          1      259    1056
24 months   Keneba           GAMBIA                         Low birthweight                     0       69    1056
24 months   Keneba           GAMBIA                         Low birthweight                     1       82    1056
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight          0       94     210
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight          1       71     210
24 months   MAL-ED           BANGLADESH                     Low birthweight                     0       16     210
24 months   MAL-ED           BANGLADESH                     Low birthweight                     1       29     210
24 months   MAL-ED           BRAZIL                         Normal or high birthweight          0      154     169
24 months   MAL-ED           BRAZIL                         Normal or high birthweight          1        7     169
24 months   MAL-ED           BRAZIL                         Low birthweight                     0        8     169
24 months   MAL-ED           BRAZIL                         Low birthweight                     1        0     169
24 months   MAL-ED           INDIA                          Normal or high birthweight          0      109     218
24 months   MAL-ED           INDIA                          Normal or high birthweight          1       76     218
24 months   MAL-ED           INDIA                          Low birthweight                     0       18     218
24 months   MAL-ED           INDIA                          Low birthweight                     1       15     218
24 months   MAL-ED           NEPAL                          Normal or high birthweight          0      163     221
24 months   MAL-ED           NEPAL                          Normal or high birthweight          1       40     221
24 months   MAL-ED           NEPAL                          Low birthweight                     0       11     221
24 months   MAL-ED           NEPAL                          Low birthweight                     1        7     221
24 months   MAL-ED           PERU                           Normal or high birthweight          0      124     199
24 months   MAL-ED           PERU                           Normal or high birthweight          1       63     199
24 months   MAL-ED           PERU                           Low birthweight                     0        2     199
24 months   MAL-ED           PERU                           Low birthweight                     1       10     199
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight          0      144     237
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight          1       80     237
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                     0        9     237
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                     1        4     237
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0       48     162
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1      106     162
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        1     162
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        7     162
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight          0      150     414
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight          1      137     414
24 months   NIH-Birth        BANGLADESH                     Low birthweight                     0       28     414
24 months   NIH-Birth        BANGLADESH                     Low birthweight                     1       99     414
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight          0      315     514
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight          1       73     514
24 months   NIH-Crypto       BANGLADESH                     Low birthweight                     0       67     514
24 months   NIH-Crypto       BANGLADESH                     Low birthweight                     1       59     514
24 months   PROBIT           BELARUS                        Normal or high birthweight          0     3760    4035
24 months   PROBIT           BELARUS                        Normal or high birthweight          1      275    4035
24 months   PROBIT           BELARUS                        Low birthweight                     0        0    4035
24 months   PROBIT           BELARUS                        Low birthweight                     1        0    4035
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight          0      319     578
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight          1      120     578
24 months   PROVIDE          BANGLADESH                     Low birthweight                     0       69     578
24 months   PROVIDE          BANGLADESH                     Low birthweight                     1       70     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0        5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        0       6
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0      991    1635
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      451    1635
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                     0       78    1635
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                     1      115    1635


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
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
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




# Results Detail

## Results Plots
![](/tmp/2a2f4679-6b4b-42af-b92f-978dec2b1eed/21090ee7-f27f-4ed3-9002-d80c9b633cb6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2a2f4679-6b4b-42af-b92f-978dec2b1eed/21090ee7-f27f-4ed3-9002-d80c9b633cb6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2a2f4679-6b4b-42af-b92f-978dec2b1eed/21090ee7-f27f-4ed3-9002-d80c9b633cb6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2a2f4679-6b4b-42af-b92f-978dec2b1eed/21090ee7-f27f-4ed3-9002-d80c9b633cb6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0306834   0.0180520   0.0433148
Birth       COHORTS          GUATEMALA                      Low birthweight              NA                0.3582090   0.2433267   0.4730912
Birth       COHORTS          INDIA                          Normal or high birthweight   NA                0.0396735   0.0344022   0.0449448
Birth       COHORTS          INDIA                          Low birthweight              NA                0.4255474   0.3993643   0.4517306
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0243632   0.0185566   0.0301699
Birth       COHORTS          PHILIPPINES                    Low birthweight              NA                0.3864407   0.3308657   0.4420156
Birth       EE               PAKISTAN                       Normal or high birthweight   NA                0.3000000   0.2288452   0.3711548
Birth       EE               PAKISTAN                       Low birthweight              NA                0.6500000   0.5452629   0.7547371
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0483193   0.0290413   0.0675974
Birth       GMS-Nepal        NEPAL                          Low birthweight              NA                0.4500000   0.3842135   0.5157865
Birth       IRC              INDIA                          Normal or high birthweight   NA                0.0788644   0.0491553   0.1085734
Birth       IRC              INDIA                          Low birthweight              NA                0.2878788   0.1785019   0.3972557
Birth       Keneba           GAMBIA                         Normal or high birthweight   NA                0.0298165   0.0205963   0.0390367
Birth       Keneba           GAMBIA                         Low birthweight              NA                0.1990950   0.1464309   0.2517591
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.0790960   0.0392497   0.1189424
Birth       MAL-ED           BANGLADESH                     Low birthweight              NA                0.5555556   0.4227349   0.6883763
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0330969   0.0160353   0.0501586
Birth       NIH-Birth        BANGLADESH                     Low birthweight              NA                0.4486486   0.3769209   0.5203764
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0732143   0.0516250   0.0948036
Birth       NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.3488372   0.2775623   0.4201122
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0124378   0.0015937   0.0232819
Birth       PROVIDE          BANGLADESH                     Low birthweight              NA                0.3138686   0.2360885   0.3916487
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.1323851   0.0977557   0.1670146
Birth       SAS-CompFeed     INDIA                          Low birthweight              NA                0.6745562   0.6137235   0.7353889
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0585129   0.0543008   0.0627249
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.3861126   0.3642262   0.4079990
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.2570533   0.2090307   0.3050759
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.6428571   0.4977449   0.7879694
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.3655761   0.3299531   0.4011991
6 months    COHORTS          GUATEMALA                      Low birthweight              NA                0.7647059   0.6638205   0.8655913
6 months    COHORTS          INDIA                          Normal or high birthweight   NA                0.1288711   0.1195879   0.1381544
6 months    COHORTS          INDIA                          Low birthweight              NA                0.4100318   0.3828292   0.4372345
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1815550   0.1661876   0.1969224
6 months    COHORTS          PHILIPPINES                    Low birthweight              NA                0.4959677   0.4337292   0.5582063
6 months    EE               PAKISTAN                       Normal or high birthweight   NA                0.3595041   0.2989652   0.4200431
6 months    EE               PAKISTAN                       Low birthweight              NA                0.7307692   0.6544185   0.8071200
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1335013   0.1000151   0.1669874
6 months    GMS-Nepal        NEPAL                          Low birthweight              NA                0.4156627   0.3406245   0.4907009
6 months    IRC              INDIA                          Normal or high birthweight   NA                0.2000000   0.1571128   0.2428872
6 months    IRC              INDIA                          Low birthweight              NA                0.4242424   0.3048587   0.5436262
6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                0.1020942   0.0845581   0.1196304
6 months    Keneba           GAMBIA                         Low birthweight              NA                0.3244681   0.2575196   0.3914166
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.1223404   0.0754017   0.1692792
6 months    MAL-ED           BANGLADESH                     Low birthweight              NA                0.4200000   0.2829068   0.5570932
6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                0.1606218   0.1087048   0.2125387
6 months    MAL-ED           INDIA                          Low birthweight              NA                0.2352941   0.0923981   0.3781901
6 months    MAL-ED           PERU                           Normal or high birthweight   NA                0.1811024   0.1336548   0.2285499
6 months    MAL-ED           PERU                           Low birthweight              NA                0.6875000   0.4599613   0.9150387
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.1890756   0.1392299   0.2389213
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.3333333   0.0943013   0.5723654
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1662125   0.1280889   0.2043362
6 months    NIH-Birth        BANGLADESH                     Low birthweight              NA                0.5231788   0.4434377   0.6029199
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.1431193   0.1136979   0.1725406
6 months    NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.4235294   0.3492005   0.4978583
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0954447   0.0686005   0.1222889
6 months    PROVIDE          BANGLADESH                     Low birthweight              NA                0.3636364   0.2847274   0.4425453
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.1994018   0.1813440   0.2174596
6 months    SAS-CompFeed     INDIA                          Low birthweight              NA                0.5479876   0.4971334   0.5988418
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0895062   0.0768129   0.1021994
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.2985075   0.1889082   0.4081068
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1275443   0.1200273   0.1350612
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.4112150   0.3817304   0.4406995
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6937500   0.6431778   0.7443222
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.8604651   0.7567550   0.9641752
24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.4884781   0.4728860   0.5040702
24 months   COHORTS          INDIA                          Low birthweight              NA                0.7315732   0.7027625   0.7603838
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.6011851   0.5806918   0.6216783
24 months   COHORTS          PHILIPPINES                    Low birthweight              NA                0.8207547   0.7691130   0.8723965
24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.6600000   0.5668756   0.7531244
24 months   EE               PAKISTAN                       Low birthweight              NA                0.7761194   0.6760071   0.8762317
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.4056338   0.3545040   0.4567636
24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                0.5606061   0.4758514   0.6453607
24 months   IRC              INDIA                          Normal or high birthweight   NA                0.3791045   0.3270864   0.4311225
24 months   IRC              INDIA                          Low birthweight              NA                0.6029412   0.4865023   0.7193801
24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.2861878   0.2567269   0.3156488
24 months   Keneba           GAMBIA                         Low birthweight              NA                0.5430464   0.4635550   0.6225377
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.4303030   0.3545759   0.5060302
24 months   MAL-ED           BANGLADESH                     Low birthweight              NA                0.6444444   0.5042519   0.7846370
24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.4108108   0.3397535   0.4818681
24 months   MAL-ED           INDIA                          Low birthweight              NA                0.4545455   0.2842679   0.6248230
24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.1970443   0.1422024   0.2518863
24 months   MAL-ED           NEPAL                          Low birthweight              NA                0.3888889   0.1631692   0.6146086
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.4773519   0.4194949   0.5352090
24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.7795276   0.7073397   0.8517154
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.1881443   0.1492183   0.2270704
24 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.4682540   0.3810415   0.5554664
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.2733485   0.2316219   0.3150751
24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                0.5035971   0.4204063   0.5867880
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.3127601   0.2888237   0.3366964
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.5958549   0.5266015   0.6651083


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      NA                   NA                0.0586735   0.0422124   0.0751345
Birth       COHORTS          INDIA                          NA                   NA                0.1193130   0.1115144   0.1271117
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.0599201   0.0514314   0.0684088
Birth       EE               PAKISTAN                       NA                   NA                0.4166667   0.3541635   0.4791698
Birth       GMS-Nepal        NEPAL                          NA                   NA                0.1752874   0.1470202   0.2035545
Birth       IRC              INDIA                          NA                   NA                0.1148825   0.0829051   0.1468600
Birth       Keneba           GAMBIA                         NA                   NA                0.0542838   0.0429232   0.0656445
Birth       MAL-ED           BANGLADESH                     NA                   NA                0.1904762   0.1397281   0.2412242
Birth       NIH-Birth        BANGLADESH                     NA                   NA                0.1595395   0.1304091   0.1886699
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       SAS-CompFeed     INDIA                          NA                   NA                0.2787540   0.2475949   0.3099131
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1035430   0.0984652   0.1086208
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.3019391   0.2545145   0.3493636
6 months    COHORTS          GUATEMALA                      NA                   NA                0.4007782   0.3661645   0.4353920
6 months    COHORTS          INDIA                          NA                   NA                0.1852739   0.1756495   0.1948983
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2108027   0.1953170   0.2262884
6 months    EE               PAKISTAN                       NA                   NA                0.4892473   0.4383809   0.5401137
6 months    GMS-Nepal        NEPAL                          NA                   NA                0.2166963   0.1826342   0.2507583
6 months    IRC              INDIA                          NA                   NA                0.2369077   0.1952403   0.2785751
6 months    Keneba           GAMBIA                         NA                   NA                0.1334333   0.1151789   0.1516876
6 months    MAL-ED           BANGLADESH                     NA                   NA                0.1848739   0.1354515   0.2342964
6 months    MAL-ED           INDIA                          NA                   NA                0.1718062   0.1226272   0.2209851
6 months    MAL-ED           PERU                           NA                   NA                0.2111111   0.1623431   0.2598792
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.1976285   0.1484630   0.2467939
6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.2702703   0.2319893   0.3085512
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2843137   0.2660295   0.3025980
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0964694   0.0835627   0.1093762
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1626911   0.1549064   0.1704758
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7134986   0.6669235   0.7600737
24 months   COHORTS          INDIA                          NA                   NA                0.5339646   0.5199355   0.5479937
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6205320   0.6011383   0.6399257
24 months   EE               PAKISTAN                       NA                   NA                0.7065868   0.6373214   0.7758523
24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4476386   0.4034301   0.4918471
24 months   IRC              INDIA                          NA                   NA                0.4168734   0.3686766   0.4650703
24 months   Keneba           GAMBIA                         NA                   NA                0.3229167   0.2947011   0.3511322
24 months   MAL-ED           BANGLADESH                     NA                   NA                0.4761905   0.4084806   0.5439003
24 months   MAL-ED           INDIA                          NA                   NA                0.4174312   0.3518190   0.4830433
24 months   MAL-ED           NEPAL                          NA                   NA                0.2126697   0.1585982   0.2667411
24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5700483   0.5223021   0.6177945
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.3461774   0.3231098   0.3692449


### Parameter: RR


agecat      studyid          country                        intervention_level           baseline_level                 estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------------------  ----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    11.674356    6.9278186   19.672942
Birth       COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       COHORTS          INDIA                          Low birthweight              Normal or high birthweight    10.726239    9.2652530   12.417600
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    15.861633   12.0075869   20.952704
Birth       EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       EE               PAKISTAN                       Low birthweight              Normal or high birthweight     2.166667    1.6265316    2.886169
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     9.313043    6.0891201   14.243894
Birth       IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       IRC              INDIA                          Low birthweight              Normal or high birthweight     3.650303    2.1377890    6.232941
Birth       Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     6.677341    4.4450331   10.030719
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     7.023809    4.0216120   12.267195
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    13.555599    7.9016557   23.255158
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     4.764606    3.3283157    6.820708
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    25.235036   10.1943721   62.466532
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     5.095408    4.0800948    6.363378
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     6.598763    6.0210301    7.231932
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     2.500871    1.8656840    3.352313
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     2.091783    1.7753626    2.464599
6 months    COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    COHORTS          INDIA                          Low birthweight              Normal or high birthweight     3.181720    2.8849030    3.509075
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight     2.731777    2.3480499    3.178214
6 months    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    EE               PAKISTAN                       Low birthweight              Normal or high birthweight     2.032714    1.6672864    2.478235
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     3.113548    2.2858158    4.241017
6 months    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    IRC              INDIA                          Low birthweight              Normal or high birthweight     2.121212    1.4891300    3.021590
6 months    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     3.178123    2.4298278    4.156866
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     3.433044    2.0744807    5.681319
6 months    MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     1.464896    0.7362525    2.914651
6 months    MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    MAL-ED           PERU                           Low birthweight              Normal or high birthweight     3.796196    2.4890164    5.789878
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     1.762963    0.8211707    3.784887
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     3.147649    2.3899336    4.145595
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     2.959276    2.2583822    3.877694
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     3.809917    2.6707818    5.434914
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     2.748158    2.4323082    3.105023
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     3.335049    2.2499175    4.943537
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     3.224096    2.9383206    3.537665
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     1.240310    1.0773492    1.427921
24 months   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   COHORTS          INDIA                          Low birthweight              Normal or high birthweight     1.497658    1.4236294    1.575536
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight     1.365228    1.2709454    1.466505
24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight     1.175938    0.9713129    1.423672
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     1.382050    1.1351107    1.682709
24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight     1.590435    1.2549641    2.015583
24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     1.897517    1.5865987    2.269365
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     1.497653    1.1321145    1.981216
24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     1.106459    0.7323842    1.671598
24 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     1.973611    1.0368238    3.756801
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     1.633025    1.4020029    1.902115
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     2.488802    1.8840487    3.287672
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     1.842326    1.4712391    2.307012
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     1.905150    1.6576496    2.189605


### Parameter: PAR


agecat      studyid          country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0279901    0.0162136   0.0397666
Birth       COHORTS          INDIA                          Normal or high birthweight   NA                0.0796395    0.0729686   0.0863105
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0355569    0.0288515   0.0422623
Birth       EE               PAKISTAN                       Normal or high birthweight   NA                0.1166667    0.0695607   0.1637727
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1269680    0.1012321   0.1527039
Birth       IRC              INDIA                          Normal or high birthweight   NA                0.0360182    0.0149439   0.0570925
Birth       Keneba           GAMBIA                         Normal or high birthweight   NA                0.0244673    0.0161832   0.0327514
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.1113801    0.0697875   0.1529728
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1264425    0.0993385   0.1535466
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0647639    0.0453221   0.0842056
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0766160    0.0537812   0.0994507
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.1463689    0.1254630   0.1672748
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0450302    0.0414357   0.0486246
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0448858    0.0229875   0.0667840
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0352021    0.0228346   0.0475696
6 months    COHORTS          INDIA                          Normal or high birthweight   NA                0.0564028    0.0499976   0.0628080
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0292477    0.0223495   0.0361459
6 months    EE               PAKISTAN                       Normal or high birthweight   NA                0.1297432    0.0912210   0.1682653
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0831950    0.0567348   0.1096552
6 months    IRC              INDIA                          Normal or high birthweight   NA                0.0369077    0.0144953   0.0593202
6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                0.0313390    0.0207381   0.0419400
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.0625335    0.0284005   0.0966666
6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                0.0111844   -0.0118508   0.0342197
6 months    MAL-ED           PERU                           Normal or high birthweight   NA                0.0300087    0.0101626   0.0498549
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.0085528   -0.0065226   0.0236282
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1040577    0.0747426   0.1333729
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0666709    0.0457443   0.0875976
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0634957    0.0417652   0.0852262
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.0849119    0.0668320   0.1029918
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0069632    0.0029382   0.0109883
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0351468    0.0308925   0.0394010
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0197486    0.0049969   0.0345004
24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.0454865    0.0388020   0.0521710
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0193470    0.0138557   0.0248382
24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.0465868   -0.0089473   0.1021210
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0420048    0.0144856   0.0695240
24 months   IRC              INDIA                          Normal or high birthweight   NA                0.0377690    0.0147427   0.0607952
24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.0367288    0.0234477   0.0500099
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.0458874    0.0097252   0.0820497
24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.0066204   -0.0213876   0.0346284
24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.0156253   -0.0045245   0.0357752
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0926964    0.0612957   0.1240971
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0686650    0.0430363   0.0942937
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0553712    0.0315930   0.0791494
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0334173    0.0236999   0.0431347


### Parameter: PAF


agecat      studyid          country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.4770481    0.2987381   0.6100192
Birth       COHORTS          INDIA                          Normal or high birthweight   NA                0.6674840    0.6279692   0.7028017
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.5934047    0.5094727   0.6629755
Birth       EE               PAKISTAN                       Normal or high birthweight   NA                0.2800000    0.1573257   0.3848157
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.7243422    0.6073385   0.8064816
Birth       IRC              INDIA                          Normal or high birthweight   NA                0.3135217    0.1263589   0.4605880
Birth       Keneba           GAMBIA                         Normal or high birthweight   NA                0.4507295    0.3137717   0.5603532
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.5847458    0.3779897   0.7227762
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7925471    0.6675563   0.8705444
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.4693777    0.3376223   0.5749252
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.8603337    0.6824197   0.9385772
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.5250826    0.4289844   0.6050081
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.4348932    0.4057107   0.4626426
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1486584    0.0740395   0.2172641
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0878344    0.0562361   0.1183747
6 months    COHORTS          INDIA                          Normal or high birthweight   NA                0.3044292    0.2716781   0.3357075
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1387444    0.1062928   0.1700177
6 months    EE               PAKISTAN                       Normal or high birthweight   NA                0.2651894    0.1799114   0.3415996
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.3839245    0.2612818   0.4862060
6 months    IRC              INDIA                          Normal or high birthweight   NA                0.1557895    0.0578120   0.2435784
6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                0.2348668    0.1568225   0.3056873
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.3382495    0.1464563   0.4869464
6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                0.0650990   -0.0781515   0.1893163
6 months    MAL-ED           PERU                           Normal or high birthweight   NA                0.1421467    0.0463079   0.2283544
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.0432773   -0.0356917   0.1162251
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3850136    0.2755694   0.4779234
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.3177982    0.2181869   0.4047179
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.3994939    0.2659854   0.5087187
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.2986558    0.2399869   0.3527957
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0721809    0.0304522   0.1121135
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2160339    0.1909534   0.2403369
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0276786    0.0064743   0.0484303
24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.0851864    0.0723612   0.0978342
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0311780    0.0221716   0.0401014
24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.0659322   -0.0170700   0.1421607
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0938364    0.0298773   0.1535788
24 months   IRC              INDIA                          Normal or high birthweight   NA                0.0906006    0.0333369   0.1444720
24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.1137409    0.0718380   0.1537520
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.0963636    0.0162802   0.1699276
24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.0158598   -0.0535968   0.0807376
24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.0734724   -0.0252655   0.1627014
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1626115    0.1035171   0.2178104
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.2673774    0.1649311   0.3572556
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.1684450    0.0934112   0.2372687
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0965323    0.0680542   0.1241403
