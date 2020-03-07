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
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight          0    11711   22454
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight          1     1147   22454
Birth       JiVitA-3         BANGLADESH                     Low birthweight                     0     3357   22454
Birth       JiVitA-3         BANGLADESH                     Low birthweight                     1     6239   22454
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight          0     1617    2823
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight          1      182    2823
Birth       JiVitA-4         BANGLADESH                     Low birthweight                     0      349    2823
Birth       JiVitA-4         BANGLADESH                     Low birthweight                     1      675    2823
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
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight          0     7292   14130
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight          1     1067   14130
6 months    JiVitA-3         BANGLADESH                     Low birthweight                     0     3217   14130
6 months    JiVitA-3         BANGLADESH                     Low birthweight                     1     2554   14130
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight          0     2493    4041
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight          1      511    4041
6 months    JiVitA-4         BANGLADESH                     Low birthweight                     0      539    4041
6 months    JiVitA-4         BANGLADESH                     Low birthweight                     1      498    4041
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
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight          0     2578    7307
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight          1     1663    7307
24 months   JiVitA-3         BANGLADESH                     Low birthweight                     0     1077    7307
24 months   JiVitA-3         BANGLADESH                     Low birthweight                     1     1989    7307
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight          0     1966    4010
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight          1      989    4010
24 months   JiVitA-4         BANGLADESH                     Low birthweight                     0      444    4010
24 months   JiVitA-4         BANGLADESH                     Low birthweight                     1      611    4010
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/7de802ed-847c-4575-b710-23c5b38fbbf4/96a11339-d847-4faf-9b6a-0d21e9522560/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7de802ed-847c-4575-b710-23c5b38fbbf4/96a11339-d847-4faf-9b6a-0d21e9522560/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7de802ed-847c-4575-b710-23c5b38fbbf4/96a11339-d847-4faf-9b6a-0d21e9522560/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7de802ed-847c-4575-b710-23c5b38fbbf4/96a11339-d847-4faf-9b6a-0d21e9522560/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0309127   0.0182426   0.0435829
Birth       COHORTS          GUATEMALA                      Low birthweight              NA                0.3492544   0.2366102   0.4618986
Birth       COHORTS          INDIA                          Normal or high birthweight   NA                0.0396130   0.0343410   0.0448849
Birth       COHORTS          INDIA                          Low birthweight              NA                0.4220204   0.3955181   0.4485228
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0242905   0.0184915   0.0300894
Birth       COHORTS          PHILIPPINES                    Low birthweight              NA                0.3876813   0.3307310   0.4446315
Birth       EE               PAKISTAN                       Normal or high birthweight   NA                0.2998203   0.2279940   0.3716466
Birth       EE               PAKISTAN                       Low birthweight              NA                0.6475372   0.5412915   0.7537829
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0480531   0.0287373   0.0673689
Birth       GMS-Nepal        NEPAL                          Low birthweight              NA                0.4447346   0.3784672   0.5110021
Birth       IRC              INDIA                          Normal or high birthweight   NA                0.0794164   0.0496384   0.1091945
Birth       IRC              INDIA                          Low birthweight              NA                0.2765644   0.1622717   0.3908570
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.0915671   0.0857095   0.0974247
Birth       JiVitA-3         BANGLADESH                     Low birthweight              NA                0.6458201   0.6352749   0.6563654
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.1007428   0.0841681   0.1173176
Birth       JiVitA-4         BANGLADESH                     Low birthweight              NA                0.6578392   0.6236307   0.6920477
Birth       Keneba           GAMBIA                         Normal or high birthweight   NA                0.0300195   0.0207807   0.0392582
Birth       Keneba           GAMBIA                         Low birthweight              NA                0.1728009   0.1215160   0.2240858
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.0795196   0.0395944   0.1194449
Birth       MAL-ED           BANGLADESH                     Low birthweight              NA                0.5561797   0.4169482   0.6954112
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0326722   0.0156257   0.0497186
Birth       NIH-Birth        BANGLADESH                     Low birthweight              NA                0.4494427   0.3770011   0.5218843
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0733517   0.0515981   0.0951053
Birth       NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.3437934   0.2720018   0.4155850
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0124378   0.0015937   0.0232819
Birth       PROVIDE          BANGLADESH                     Low birthweight              NA                0.3138686   0.2360885   0.3916487
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.1311687   0.0977428   0.1645946
Birth       SAS-CompFeed     INDIA                          Low birthweight              NA                0.6714012   0.6099850   0.7328175
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0585824   0.0543683   0.0627965
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.3856682   0.3637456   0.4075908
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.2565456   0.2085686   0.3045227
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.6647324   0.5160412   0.8134236
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.3652798   0.3296471   0.4009124
6 months    COHORTS          GUATEMALA                      Low birthweight              NA                0.7667711   0.6633983   0.8701440
6 months    COHORTS          INDIA                          Normal or high birthweight   NA                0.1295672   0.1202560   0.1388783
6 months    COHORTS          INDIA                          Low birthweight              NA                0.4054397   0.3780772   0.4328023
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1813015   0.1659474   0.1966556
6 months    COHORTS          PHILIPPINES                    Low birthweight              NA                0.4974089   0.4352466   0.5595712
6 months    EE               PAKISTAN                       Normal or high birthweight   NA                0.3588735   0.2977537   0.4199934
6 months    EE               PAKISTAN                       Low birthweight              NA                0.7352223   0.6575779   0.8128667
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1316717   0.0982643   0.1650791
6 months    GMS-Nepal        NEPAL                          Low birthweight              NA                0.4112128   0.3355016   0.4869239
6 months    IRC              INDIA                          Normal or high birthweight   NA                0.1982450   0.1554162   0.2410738
6 months    IRC              INDIA                          Low birthweight              NA                0.4141763   0.2932354   0.5351171
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.1280644   0.1197068   0.1364220
6 months    JiVitA-3         BANGLADESH                     Low birthweight              NA                0.4406876   0.4258357   0.4555395
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.1700821   0.1540800   0.1860841
6 months    JiVitA-4         BANGLADESH                     Low birthweight              NA                0.4808632   0.4439550   0.5177714
6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                0.1020242   0.0844399   0.1196085
6 months    Keneba           GAMBIA                         Low birthweight              NA                0.3220240   0.2560441   0.3880039
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.1231007   0.0760974   0.1701040
6 months    MAL-ED           BANGLADESH                     Low birthweight              NA                0.3939007   0.2542684   0.5335330
6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                0.1606218   0.1087048   0.2125387
6 months    MAL-ED           INDIA                          Low birthweight              NA                0.2352941   0.0923981   0.3781901
6 months    MAL-ED           PERU                           Normal or high birthweight   NA                0.1811024   0.1336548   0.2285499
6 months    MAL-ED           PERU                           Low birthweight              NA                0.6875000   0.4599613   0.9150387
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.1890756   0.1392299   0.2389213
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.3333333   0.0943013   0.5723654
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1649683   0.1268299   0.2031067
6 months    NIH-Birth        BANGLADESH                     Low birthweight              NA                0.5244679   0.4445003   0.6044356
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.1414374   0.1121601   0.1707146
6 months    NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.4438646   0.3674223   0.5203070
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0989605   0.0716985   0.1262225
6 months    PROVIDE          BANGLADESH                     Low birthweight              NA                0.3318622   0.2537037   0.4100208
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.2011565   0.1846496   0.2176634
6 months    SAS-CompFeed     INDIA                          Low birthweight              NA                0.5337888   0.4918570   0.5757206
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0895547   0.0768608   0.1022486
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.2650245   0.1531125   0.3769365
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1273270   0.1198144   0.1348397
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.4146544   0.3854526   0.4438561
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6937500   0.6431778   0.7443222
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.8604651   0.7567550   0.9641752
24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.4912013   0.4757463   0.5066564
24 months   COHORTS          INDIA                          Low birthweight              NA                0.7183426   0.6900486   0.7466366
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.6018285   0.5814091   0.6222478
24 months   COHORTS          PHILIPPINES                    Low birthweight              NA                0.8112304   0.7615997   0.8608610
24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.6539901   0.5611318   0.7468483
24 months   EE               PAKISTAN                       Low birthweight              NA                0.7626787   0.6585524   0.8668051
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.4036855   0.3525777   0.4547933
24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                0.5659619   0.4781662   0.6537576
24 months   IRC              INDIA                          Normal or high birthweight   NA                0.3750383   0.3232194   0.4268571
24 months   IRC              INDIA                          Low birthweight              NA                0.5775974   0.4623767   0.6928180
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.3943601   0.3771406   0.4115795
24 months   JiVitA-3         BANGLADESH                     Low birthweight              NA                0.6456891   0.6265466   0.6648315
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.3370476   0.3156375   0.3584576
24 months   JiVitA-4         BANGLADESH                     Low birthweight              NA                0.5682522   0.5309950   0.6055093
24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.2861264   0.2566775   0.3155754
24 months   Keneba           GAMBIA                         Low birthweight              NA                0.5224303   0.4418419   0.6030186
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.4295983   0.3536139   0.5055827
24 months   MAL-ED           BANGLADESH                     Low birthweight              NA                0.6267465   0.4852606   0.7682325
24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.4140931   0.3430313   0.4851549
24 months   MAL-ED           INDIA                          Low birthweight              NA                0.4373343   0.2566502   0.6180185
24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.1970443   0.1422024   0.2518863
24 months   MAL-ED           NEPAL                          Low birthweight              NA                0.3888889   0.1631692   0.6146086
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.4854701   0.4278255   0.5431147
24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.7660326   0.6943518   0.8377135
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.1911395   0.1519463   0.2303328
24 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.4563062   0.3688213   0.5437911
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.2794962   0.2378633   0.3211291
24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                0.4863805   0.4011475   0.5716135
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.3125309   0.2886138   0.3364480
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.6032696   0.5347404   0.6717988


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      NA                   NA                0.0586735   0.0422124   0.0751345
Birth       COHORTS          INDIA                          NA                   NA                0.1193130   0.1115144   0.1271117
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.0599201   0.0514314   0.0684088
Birth       EE               PAKISTAN                       NA                   NA                0.4166667   0.3541635   0.4791698
Birth       GMS-Nepal        NEPAL                          NA                   NA                0.1752874   0.1470202   0.2035545
Birth       IRC              INDIA                          NA                   NA                0.1148825   0.0829051   0.1468600
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.3289392   0.3215744   0.3363039
Birth       JiVitA-4         BANGLADESH                     NA                   NA                0.3035778   0.2836422   0.3235133
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
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.2562633   0.2474260   0.2651005
6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.2496907   0.2335617   0.2658197
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
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4997947   0.4858988   0.5136907
24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.3990025   0.3802617   0.4177433
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
Birth       COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    11.298072    6.7049369   19.037678
Birth       COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       COHORTS          INDIA                          Low birthweight              Normal or high birthweight    10.653591    9.1960745   12.342114
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    15.960226   12.0580926   21.125132
Birth       EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       EE               PAKISTAN                       Low birthweight              Normal or high birthweight     2.159751    1.6143172    2.889473
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     9.255064    6.0262687   14.213805
Birth       IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       IRC              INDIA                          Low birthweight              Normal or high birthweight     3.482457    1.9977993    6.070434
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight     7.052972    6.6110926    7.524385
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight     6.529886    5.4929732    7.762539
Birth       Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     5.756298    3.7498715    8.836294
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     6.994244    3.9852963   12.274984
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    13.756132    7.9708563   23.740380
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     4.686920    3.2600275    6.738355
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    25.235036   10.1943721   62.466532
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     5.118610    4.0844633    6.414592
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     6.583347    6.0071206    7.214846
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     2.591088    1.9363581    3.467198
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     2.099134    1.7772431    2.479325
6 months    COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    COHORTS          INDIA                          Low birthweight              Normal or high birthweight     3.129186    2.8372582    3.451151
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight     2.743545    2.3603255    3.188984
6 months    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    EE               PAKISTAN                       Low birthweight              Normal or high birthweight     2.048695    1.6747002    2.506210
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     3.123016    2.2841098    4.270035
6 months    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    IRC              INDIA                          Low birthweight              Normal or high birthweight     2.089214    1.4535626    3.002841
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight     3.441140    3.2105854    3.688252
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight     2.827242    2.5038333    3.192425
6 months    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     3.156349    2.4182933    4.119656
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     3.199826    1.9040319    5.377474
6 months    MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     1.464896    0.7362525    2.914651
6 months    MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    MAL-ED           PERU                           Low birthweight              Normal or high birthweight     3.796196    2.4890164    5.789878
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     1.762963    0.8211707    3.784887
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     3.179204    2.4121547    4.190171
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     3.138242    2.3984521    4.106216
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     3.353482    2.3343803    4.817485
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     2.653600    2.4269280    2.901444
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     2.959359    1.8953366    4.620712
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     3.256609    2.9714478    3.569136
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     1.240310    1.0773492    1.427921
24 months   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   COHORTS          INDIA                          Low birthweight              Normal or high birthweight     1.462420    1.3919861    1.536418
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight     1.347943    1.2580518    1.444257
24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight     1.166193    0.9564939    1.421866
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     1.401987    1.1489048    1.710819
24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight     1.540102    1.2102448    1.959864
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight     1.637308    1.5573367    1.721387
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight     1.685970    1.5422940    1.843031
24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     1.825872    1.5180374    2.196131
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     1.458913    1.0950065    1.943757
24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     1.056126    0.6753619    1.651561
24 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     1.973611    1.0368238    3.756801
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     1.577919    1.3582730    1.833084
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     2.387294    1.8078373    3.152481
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     1.740204    1.3857936    2.185254
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     1.930272    1.6841906    2.212308


### Parameter: PAR


agecat      studyid          country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0277607    0.0160171   0.0395044
Birth       COHORTS          INDIA                          Normal or high birthweight   NA                0.0797001    0.0730335   0.0863667
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0356296    0.0289224   0.0423369
Birth       EE               PAKISTAN                       Normal or high birthweight   NA                0.1168464    0.0691099   0.1645829
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1272342    0.1014868   0.1529817
Birth       IRC              INDIA                          Normal or high birthweight   NA                0.0354661    0.0145582   0.0563739
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.2373721    0.2306373   0.2441068
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.2028349    0.1850550   0.2206149
Birth       Keneba           GAMBIA                         Normal or high birthweight   NA                0.0242644    0.0159592   0.0325696
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.1109566    0.0694696   0.1524435
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1268673    0.0997427   0.1539919
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0646265    0.0450774   0.0841755
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0766160    0.0537812   0.0994507
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.1475853    0.1277637   0.1674069
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0449606    0.0413725   0.0485487
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0453934    0.0235929   0.0671939
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0354984    0.0231201   0.0478768
6 months    COHORTS          INDIA                          Normal or high birthweight   NA                0.0557068    0.0493586   0.0620550
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0295012    0.0226489   0.0363534
6 months    EE               PAKISTAN                       Normal or high birthweight   NA                0.1303738    0.0911416   0.1696060
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0850246    0.0584121   0.1116371
6 months    IRC              INDIA                          Normal or high birthweight   NA                0.0386628    0.0160306   0.0612949
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.1281989    0.1210924   0.1353054
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.0796086    0.0681760   0.0910412
6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                0.0314091    0.0209279   0.0418902
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.0617733    0.0280333   0.0955132
6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                0.0111844   -0.0118508   0.0342197
6 months    MAL-ED           PERU                           Normal or high birthweight   NA                0.0300087    0.0101626   0.0498549
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.0085528   -0.0065226   0.0236282
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1053020    0.0760858   0.1345181
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0683528    0.0473144   0.0893913
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0599799    0.0383691   0.0815907
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.0831573    0.0674049   0.0989097
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0069147    0.0028786   0.0109508
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0353640    0.0311345   0.0395935
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0197486    0.0049969   0.0345004
24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.0427633    0.0363507   0.0491758
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0187035    0.0135313   0.0238757
24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.0525968   -0.0042684   0.1094620
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0439531    0.0160335   0.0718727
24 months   IRC              INDIA                          Normal or high birthweight   NA                0.0418352    0.0187943   0.0648761
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.1054346    0.0949090   0.1159603
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.0619549    0.0500178   0.0738920
24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.0367902    0.0236776   0.0499029
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.0465922    0.0101903   0.0829940
24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.0033381   -0.0250932   0.0317694
24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.0156253   -0.0045245   0.0357752
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0845782    0.0538329   0.1153235
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0656698    0.0403857   0.0909539
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0492235    0.0259549   0.0724921
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0336464    0.0240488   0.0432441


### Parameter: PAF


agecat      studyid          country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.4731393    0.2949974   0.6062679
Birth       COHORTS          INDIA                          Normal or high birthweight   NA                0.6679913    0.6284865   0.7032953
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.5946192    0.5107518   0.6641099
Birth       EE               PAKISTAN                       Normal or high birthweight   NA                0.2804314    0.1556688   0.3867584
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.7258609    0.6084203   0.8080794
Birth       IRC              INDIA                          Normal or high birthweight   NA                0.3087160    0.1228280   0.4552110
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.7216291    0.7055342   0.7368443
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.6681482    0.6180891   0.7116458
Birth       Keneba           GAMBIA                         Normal or high birthweight   NA                0.4469911    0.3095625   0.5570651
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.5825219    0.3760820   0.7206557
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7952095    0.6698165   0.8729823
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.4683819    0.3351267   0.5749299
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.8603337    0.6824197   0.9385772
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.5294465    0.4387465   0.6054891
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.4342218    0.4050737   0.4619418
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1503396    0.0760377   0.2186665
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0885738    0.0569334   0.1191527
6 months    COHORTS          INDIA                          Normal or high birthweight   NA                0.3006724    0.2681091   0.3317870
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1399469    0.1077085   0.1710205
6 months    EE               PAKISTAN                       Normal or high birthweight   NA                0.2664783    0.1794560   0.3442715
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.3923676    0.2690845   0.4948565
6 months    IRC              INDIA                          Normal or high birthweight   NA                0.1631975    0.0642507   0.2516817
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.5002624    0.4747508   0.5245349
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.3188290    0.2746619   0.3603066
6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                0.2353915    0.1579814   0.3056850
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.3341372    0.1443771   0.4818123
6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                0.0650990   -0.0781515   0.1893163
6 months    MAL-ED           PERU                           Normal or high birthweight   NA                0.1421467    0.0463079   0.2283544
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.0432773   -0.0356917   0.1162251
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3896173    0.2802547   0.4823628
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.3258152    0.2259412   0.4128029
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.3773736    0.2435589   0.4875165
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.2924842    0.2428415   0.3388721
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0716778    0.0298357   0.1117154
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2173692    0.1924250   0.2415430
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0276786    0.0064743   0.0484303
24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.0800864    0.0678021   0.0922087
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0301411    0.0216506   0.0385580
24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.0744378   -0.0105970   0.1523175
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0981889    0.0333165   0.1587078
24 months   IRC              INDIA                          Normal or high birthweight   NA                0.1003546    0.0429935   0.1542776
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.2109559    0.1889358   0.2323782
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.1552745    0.1244982   0.1849690
24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.1139310    0.0725220   0.1534913
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.0978435    0.0171126   0.1719435
24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.0079968   -0.0624954   0.0738121
24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.0734724   -0.0252655   0.1627014
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1483702    0.0907547   0.2023349
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.2557143    0.1542583   0.3449996
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.1497431    0.0765387   0.2171444
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0971942    0.0690467   0.1244907
