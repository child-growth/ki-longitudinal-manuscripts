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

**Outcome Variable:** wast_rec90d

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

agecat        studyid          country                        birthwt                       wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  ---------------------------  ------------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0       96    318
0-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1      168    318
0-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                         0       23    318
0-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                         1       31    318
0-24 months   CMIN             BANGLADESH                     Normal or high birthweight              0        2     12
0-24 months   CMIN             BANGLADESH                     Normal or high birthweight              1        5     12
0-24 months   CMIN             BANGLADESH                     Low birthweight                         0        3     12
0-24 months   CMIN             BANGLADESH                     Low birthweight                         1        2     12
0-24 months   COHORTS          GUATEMALA                      Normal or high birthweight              0      134    320
0-24 months   COHORTS          GUATEMALA                      Normal or high birthweight              1      139    320
0-24 months   COHORTS          GUATEMALA                      Low birthweight                         0       21    320
0-24 months   COHORTS          GUATEMALA                      Low birthweight                         1       26    320
0-24 months   COHORTS          INDIA                          Normal or high birthweight              0     1227   2516
0-24 months   COHORTS          INDIA                          Normal or high birthweight              1      343   2516
0-24 months   COHORTS          INDIA                          Low birthweight                         0      645   2516
0-24 months   COHORTS          INDIA                          Low birthweight                         1      301   2516
0-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight              0      524   1664
0-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight              1      830   1664
0-24 months   COHORTS          PHILIPPINES                    Low birthweight                         0      130   1664
0-24 months   COHORTS          PHILIPPINES                    Low birthweight                         1      180   1664
0-24 months   EE               PAKISTAN                       Normal or high birthweight              0       93    322
0-24 months   EE               PAKISTAN                       Normal or high birthweight              1       94    322
0-24 months   EE               PAKISTAN                       Low birthweight                         0       67    322
0-24 months   EE               PAKISTAN                       Low birthweight                         1       68    322
0-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight              0      166    641
0-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight              1      219    641
0-24 months   GMS-Nepal        NEPAL                          Low birthweight                         0      128    641
0-24 months   GMS-Nepal        NEPAL                          Low birthweight                         1      128    641
0-24 months   IRC              INDIA                          Normal or high birthweight              0      115    390
0-24 months   IRC              INDIA                          Normal or high birthweight              1      174    390
0-24 months   IRC              INDIA                          Low birthweight                         0       45    390
0-24 months   IRC              INDIA                          Low birthweight                         1       56    390
0-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight              0     1668   6448
0-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight              1      971   6448
0-24 months   JiVitA-3         BANGLADESH                     Low birthweight                         0     2052   6448
0-24 months   JiVitA-3         BANGLADESH                     Low birthweight                         1     1757   6448
0-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight              0      779   1789
0-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight              1      253   1789
0-24 months   JiVitA-4         BANGLADESH                     Low birthweight                         0      512   1789
0-24 months   JiVitA-4         BANGLADESH                     Low birthweight                         1      245   1789
0-24 months   Keneba           GAMBIA                         Normal or high birthweight              0      313   1220
0-24 months   Keneba           GAMBIA                         Normal or high birthweight              1      655   1220
0-24 months   Keneba           GAMBIA                         Low birthweight                         0      101   1220
0-24 months   Keneba           GAMBIA                         Low birthweight                         1      151   1220
0-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight              0       31    122
0-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight              1       46    122
0-24 months   MAL-ED           BANGLADESH                     Low birthweight                         0       12    122
0-24 months   MAL-ED           BANGLADESH                     Low birthweight                         1       33    122
0-24 months   MAL-ED           BRAZIL                         Normal or high birthweight              0        5     24
0-24 months   MAL-ED           BRAZIL                         Normal or high birthweight              1       16     24
0-24 months   MAL-ED           BRAZIL                         Low birthweight                         0        1     24
0-24 months   MAL-ED           BRAZIL                         Low birthweight                         1        2     24
0-24 months   MAL-ED           INDIA                          Normal or high birthweight              0       44    166
0-24 months   MAL-ED           INDIA                          Normal or high birthweight              1       78    166
0-24 months   MAL-ED           INDIA                          Low birthweight                         0       20    166
0-24 months   MAL-ED           INDIA                          Low birthweight                         1       24    166
0-24 months   MAL-ED           NEPAL                          Normal or high birthweight              0       13     90
0-24 months   MAL-ED           NEPAL                          Normal or high birthweight              1       60     90
0-24 months   MAL-ED           NEPAL                          Low birthweight                         0        3     90
0-24 months   MAL-ED           NEPAL                          Low birthweight                         1       14     90
0-24 months   MAL-ED           PERU                           Normal or high birthweight              0        3     35
0-24 months   MAL-ED           PERU                           Normal or high birthweight              1       23     35
0-24 months   MAL-ED           PERU                           Low birthweight                         0        3     35
0-24 months   MAL-ED           PERU                           Low birthweight                         1        6     35
0-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight              0       17     85
0-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight              1       54     85
0-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                         0        1     85
0-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                         1       13     85
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0        6     39
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1       31     39
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0        0     39
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1        2     39
0-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight              0      104    408
0-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight              1      121    408
0-24 months   NIH-Birth        BANGLADESH                     Low birthweight                         0       93    408
0-24 months   NIH-Birth        BANGLADESH                     Low birthweight                         1       90    408
0-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight              0       61    310
0-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight              1      102    310
0-24 months   NIH-Crypto       BANGLADESH                     Low birthweight                         0       56    310
0-24 months   NIH-Crypto       BANGLADESH                     Low birthweight                         1       91    310
0-24 months   PROBIT           BELARUS                        Normal or high birthweight              0      526   4408
0-24 months   PROBIT           BELARUS                        Normal or high birthweight              1     3882   4408
0-24 months   PROBIT           BELARUS                        Low birthweight                         0        0   4408
0-24 months   PROBIT           BELARUS                        Low birthweight                         1        0   4408
0-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight              0       74    308
0-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight              1       94    308
0-24 months   PROVIDE          BANGLADESH                     Low birthweight                         0       55    308
0-24 months   PROVIDE          BANGLADESH                     Low birthweight                         1       85    308
0-24 months   ResPak           PAKISTAN                       Normal or high birthweight              0        8     23
0-24 months   ResPak           PAKISTAN                       Normal or high birthweight              1       10     23
0-24 months   ResPak           PAKISTAN                       Low birthweight                         0        3     23
0-24 months   ResPak           PAKISTAN                       Low birthweight                         1        2     23
0-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight              0      316    811
0-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight              1      178    811
0-24 months   SAS-CompFeed     INDIA                          Low birthweight                         0      185    811
0-24 months   SAS-CompFeed     INDIA                          Low birthweight                         1      132    811
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0      244    703
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      420    703
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0       19    703
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1       20    703
0-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0     1184   3608
0-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1     1293   3608
0-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                         0      460   3608
0-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                         1      671   3608
0-6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0       54    197
0-6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1      112    197
0-6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                         0       11    197
0-6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                         1       20    197
0-6 months    CMIN             BANGLADESH                     Normal or high birthweight              0        1      5
0-6 months    CMIN             BANGLADESH                     Normal or high birthweight              1        0      5
0-6 months    CMIN             BANGLADESH                     Low birthweight                         0        2      5
0-6 months    CMIN             BANGLADESH                     Low birthweight                         1        2      5
0-6 months    COHORTS          GUATEMALA                      Normal or high birthweight              0       45    210
0-6 months    COHORTS          GUATEMALA                      Normal or high birthweight              1      135    210
0-6 months    COHORTS          GUATEMALA                      Low birthweight                         0        5    210
0-6 months    COHORTS          GUATEMALA                      Low birthweight                         1       25    210
0-6 months    COHORTS          INDIA                          Normal or high birthweight              0      678   1718
0-6 months    COHORTS          INDIA                          Normal or high birthweight              1      343   1718
0-6 months    COHORTS          INDIA                          Low birthweight                         0      396   1718
0-6 months    COHORTS          INDIA                          Low birthweight                         1      301   1718
0-6 months    COHORTS          PHILIPPINES                    Normal or high birthweight              0      152    746
0-6 months    COHORTS          PHILIPPINES                    Normal or high birthweight              1      427    746
0-6 months    COHORTS          PHILIPPINES                    Low birthweight                         0       44    746
0-6 months    COHORTS          PHILIPPINES                    Low birthweight                         1      123    746
0-6 months    EE               PAKISTAN                       Normal or high birthweight              0       34    126
0-6 months    EE               PAKISTAN                       Normal or high birthweight              1       45    126
0-6 months    EE               PAKISTAN                       Low birthweight                         0       21    126
0-6 months    EE               PAKISTAN                       Low birthweight                         1       26    126
0-6 months    GMS-Nepal        NEPAL                          Normal or high birthweight              0       52    263
0-6 months    GMS-Nepal        NEPAL                          Normal or high birthweight              1       93    263
0-6 months    GMS-Nepal        NEPAL                          Low birthweight                         0       52    263
0-6 months    GMS-Nepal        NEPAL                          Low birthweight                         1       66    263
0-6 months    IRC              INDIA                          Normal or high birthweight              0       64    236
0-6 months    IRC              INDIA                          Normal or high birthweight              1      113    236
0-6 months    IRC              INDIA                          Low birthweight                         0       22    236
0-6 months    IRC              INDIA                          Low birthweight                         1       37    236
0-6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight              0      584   4009
0-6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight              1      971   4009
0-6 months    JiVitA-3         BANGLADESH                     Low birthweight                         0      697   4009
0-6 months    JiVitA-3         BANGLADESH                     Low birthweight                         1     1757   4009
0-6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight              0      110    510
0-6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight              1      136    510
0-6 months    JiVitA-4         BANGLADESH                     Low birthweight                         0       91    510
0-6 months    JiVitA-4         BANGLADESH                     Low birthweight                         1      173    510
0-6 months    Keneba           GAMBIA                         Normal or high birthweight              0       71    562
0-6 months    Keneba           GAMBIA                         Normal or high birthweight              1      349    562
0-6 months    Keneba           GAMBIA                         Low birthweight                         0       27    562
0-6 months    Keneba           GAMBIA                         Low birthweight                         1      115    562
0-6 months    MAL-ED           BANGLADESH                     Normal or high birthweight              0       10     62
0-6 months    MAL-ED           BANGLADESH                     Normal or high birthweight              1       31     62
0-6 months    MAL-ED           BANGLADESH                     Low birthweight                         0        3     62
0-6 months    MAL-ED           BANGLADESH                     Low birthweight                         1       18     62
0-6 months    MAL-ED           BRAZIL                         Normal or high birthweight              0        1     15
0-6 months    MAL-ED           BRAZIL                         Normal or high birthweight              1       12     15
0-6 months    MAL-ED           BRAZIL                         Low birthweight                         0        0     15
0-6 months    MAL-ED           BRAZIL                         Low birthweight                         1        2     15
0-6 months    MAL-ED           INDIA                          Normal or high birthweight              0       19     80
0-6 months    MAL-ED           INDIA                          Normal or high birthweight              1       41     80
0-6 months    MAL-ED           INDIA                          Low birthweight                         0        6     80
0-6 months    MAL-ED           INDIA                          Low birthweight                         1       14     80
0-6 months    MAL-ED           NEPAL                          Normal or high birthweight              0        6     45
0-6 months    MAL-ED           NEPAL                          Normal or high birthweight              1       29     45
0-6 months    MAL-ED           NEPAL                          Low birthweight                         0        1     45
0-6 months    MAL-ED           NEPAL                          Low birthweight                         1        9     45
0-6 months    MAL-ED           PERU                           Normal or high birthweight              0        0     11
0-6 months    MAL-ED           PERU                           Normal or high birthweight              1        8     11
0-6 months    MAL-ED           PERU                           Low birthweight                         0        0     11
0-6 months    MAL-ED           PERU                           Low birthweight                         1        3     11
0-6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight              0        8     34
0-6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight              1       19     34
0-6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                         0        1     34
0-6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                         1        6     34
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0        0     11
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1       10     11
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0        0     11
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1        1     11
0-6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight              0       29    217
0-6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight              1       79    217
0-6 months    NIH-Birth        BANGLADESH                     Low birthweight                         0       33    217
0-6 months    NIH-Birth        BANGLADESH                     Low birthweight                         1       76    217
0-6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight              0       13    197
0-6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight              1       89    197
0-6 months    NIH-Crypto       BANGLADESH                     Low birthweight                         0        8    197
0-6 months    NIH-Crypto       BANGLADESH                     Low birthweight                         1       87    197
0-6 months    PROBIT           BELARUS                        Normal or high birthweight              0      423   4267
0-6 months    PROBIT           BELARUS                        Normal or high birthweight              1     3844   4267
0-6 months    PROBIT           BELARUS                        Low birthweight                         0        0   4267
0-6 months    PROBIT           BELARUS                        Low birthweight                         1        0   4267
0-6 months    PROVIDE          BANGLADESH                     Normal or high birthweight              0       19    185
0-6 months    PROVIDE          BANGLADESH                     Normal or high birthweight              1       72    185
0-6 months    PROVIDE          BANGLADESH                     Low birthweight                         0       21    185
0-6 months    PROVIDE          BANGLADESH                     Low birthweight                         1       73    185
0-6 months    ResPak           PAKISTAN                       Normal or high birthweight              0        2     14
0-6 months    ResPak           PAKISTAN                       Normal or high birthweight              1       10     14
0-6 months    ResPak           PAKISTAN                       Low birthweight                         0        2     14
0-6 months    ResPak           PAKISTAN                       Low birthweight                         1        0     14
0-6 months    SAS-CompFeed     INDIA                          Normal or high birthweight              0      102    340
0-6 months    SAS-CompFeed     INDIA                          Normal or high birthweight              1       84    340
0-6 months    SAS-CompFeed     INDIA                          Low birthweight                         0       63    340
0-6 months    SAS-CompFeed     INDIA                          Low birthweight                         1       91    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0       92    335
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      223    335
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0        8    335
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1       12    335
0-6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0      392   2517
0-6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1     1221   2517
0-6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                         0      242   2517
0-6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                         1      662   2517
6-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0       42    121
6-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1       56    121
6-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                         0       12    121
6-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                         1       11    121
6-24 months   CMIN             BANGLADESH                     Normal or high birthweight              0        1      7
6-24 months   CMIN             BANGLADESH                     Normal or high birthweight              1        5      7
6-24 months   CMIN             BANGLADESH                     Low birthweight                         0        1      7
6-24 months   CMIN             BANGLADESH                     Low birthweight                         1        0      7
6-24 months   COHORTS          GUATEMALA                      Normal or high birthweight              0       89    110
6-24 months   COHORTS          GUATEMALA                      Normal or high birthweight              1        4    110
6-24 months   COHORTS          GUATEMALA                      Low birthweight                         0       16    110
6-24 months   COHORTS          GUATEMALA                      Low birthweight                         1        1    110
6-24 months   COHORTS          INDIA                          Normal or high birthweight              0      549    798
6-24 months   COHORTS          INDIA                          Normal or high birthweight              1        0    798
6-24 months   COHORTS          INDIA                          Low birthweight                         0      249    798
6-24 months   COHORTS          INDIA                          Low birthweight                         1        0    798
6-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight              0      372    918
6-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight              1      403    918
6-24 months   COHORTS          PHILIPPINES                    Low birthweight                         0       86    918
6-24 months   COHORTS          PHILIPPINES                    Low birthweight                         1       57    918
6-24 months   EE               PAKISTAN                       Normal or high birthweight              0       59    196
6-24 months   EE               PAKISTAN                       Normal or high birthweight              1       49    196
6-24 months   EE               PAKISTAN                       Low birthweight                         0       46    196
6-24 months   EE               PAKISTAN                       Low birthweight                         1       42    196
6-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight              0      114    378
6-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight              1      126    378
6-24 months   GMS-Nepal        NEPAL                          Low birthweight                         0       76    378
6-24 months   GMS-Nepal        NEPAL                          Low birthweight                         1       62    378
6-24 months   IRC              INDIA                          Normal or high birthweight              0       51    154
6-24 months   IRC              INDIA                          Normal or high birthweight              1       61    154
6-24 months   IRC              INDIA                          Low birthweight                         0       23    154
6-24 months   IRC              INDIA                          Low birthweight                         1       19    154
6-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight              0     1084   2439
6-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight              1        0   2439
6-24 months   JiVitA-3         BANGLADESH                     Low birthweight                         0     1355   2439
6-24 months   JiVitA-3         BANGLADESH                     Low birthweight                         1        0   2439
6-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight              0      669   1279
6-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight              1      117   1279
6-24 months   JiVitA-4         BANGLADESH                     Low birthweight                         0      421   1279
6-24 months   JiVitA-4         BANGLADESH                     Low birthweight                         1       72   1279
6-24 months   Keneba           GAMBIA                         Normal or high birthweight              0      242    658
6-24 months   Keneba           GAMBIA                         Normal or high birthweight              1      306    658
6-24 months   Keneba           GAMBIA                         Low birthweight                         0       74    658
6-24 months   Keneba           GAMBIA                         Low birthweight                         1       36    658
6-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight              0       21     60
6-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight              1       15     60
6-24 months   MAL-ED           BANGLADESH                     Low birthweight                         0        9     60
6-24 months   MAL-ED           BANGLADESH                     Low birthweight                         1       15     60
6-24 months   MAL-ED           BRAZIL                         Normal or high birthweight              0        4      9
6-24 months   MAL-ED           BRAZIL                         Normal or high birthweight              1        4      9
6-24 months   MAL-ED           BRAZIL                         Low birthweight                         0        1      9
6-24 months   MAL-ED           BRAZIL                         Low birthweight                         1        0      9
6-24 months   MAL-ED           INDIA                          Normal or high birthweight              0       25     86
6-24 months   MAL-ED           INDIA                          Normal or high birthweight              1       37     86
6-24 months   MAL-ED           INDIA                          Low birthweight                         0       14     86
6-24 months   MAL-ED           INDIA                          Low birthweight                         1       10     86
6-24 months   MAL-ED           NEPAL                          Normal or high birthweight              0        7     45
6-24 months   MAL-ED           NEPAL                          Normal or high birthweight              1       31     45
6-24 months   MAL-ED           NEPAL                          Low birthweight                         0        2     45
6-24 months   MAL-ED           NEPAL                          Low birthweight                         1        5     45
6-24 months   MAL-ED           PERU                           Normal or high birthweight              0        3     24
6-24 months   MAL-ED           PERU                           Normal or high birthweight              1       15     24
6-24 months   MAL-ED           PERU                           Low birthweight                         0        3     24
6-24 months   MAL-ED           PERU                           Low birthweight                         1        3     24
6-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight              0        9     51
6-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight              1       35     51
6-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                         0        0     51
6-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                         1        7     51
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0        6     28
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1       21     28
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0        0     28
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1        1     28
6-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight              0       75    191
6-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight              1       42    191
6-24 months   NIH-Birth        BANGLADESH                     Low birthweight                         0       60    191
6-24 months   NIH-Birth        BANGLADESH                     Low birthweight                         1       14    191
6-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight              0       48    113
6-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight              1       13    113
6-24 months   NIH-Crypto       BANGLADESH                     Low birthweight                         0       48    113
6-24 months   NIH-Crypto       BANGLADESH                     Low birthweight                         1        4    113
6-24 months   PROBIT           BELARUS                        Normal or high birthweight              0      103    141
6-24 months   PROBIT           BELARUS                        Normal or high birthweight              1       38    141
6-24 months   PROBIT           BELARUS                        Low birthweight                         0        0    141
6-24 months   PROBIT           BELARUS                        Low birthweight                         1        0    141
6-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight              0       55    123
6-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight              1       22    123
6-24 months   PROVIDE          BANGLADESH                     Low birthweight                         0       34    123
6-24 months   PROVIDE          BANGLADESH                     Low birthweight                         1       12    123
6-24 months   ResPak           PAKISTAN                       Normal or high birthweight              0        6      9
6-24 months   ResPak           PAKISTAN                       Normal or high birthweight              1        0      9
6-24 months   ResPak           PAKISTAN                       Low birthweight                         0        1      9
6-24 months   ResPak           PAKISTAN                       Low birthweight                         1        2      9
6-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight              0      214    471
6-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight              1       94    471
6-24 months   SAS-CompFeed     INDIA                          Low birthweight                         0      122    471
6-24 months   SAS-CompFeed     INDIA                          Low birthweight                         1       41    471
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0      152    368
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      197    368
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0       11    368
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1        8    368
6-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0      792   1091
6-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1       72   1091
6-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                         0      218   1091
6-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                         1        9   1091


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
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
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
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
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/62b283c9-a640-4740-b044-386411aca805/589d278e-824f-417f-832b-b649a1af24ba/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/62b283c9-a640-4740-b044-386411aca805/589d278e-824f-417f-832b-b649a1af24ba/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/62b283c9-a640-4740-b044-386411aca805/589d278e-824f-417f-832b-b649a1af24ba/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/62b283c9-a640-4740-b044-386411aca805/589d278e-824f-417f-832b-b649a1af24ba/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6354036   0.5719755   0.6988318
0-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.5853120   0.4626622   0.7079617
0-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.5103859   0.4499142   0.5708576
0-24 months   COHORTS          GUATEMALA                      Low birthweight              NA                0.5447858   0.3909813   0.6985902
0-24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.2194901   0.1985122   0.2404681
0-24 months   COHORTS          INDIA                          Low birthweight              NA                0.3178391   0.2886809   0.3469972
0-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.6129253   0.5850393   0.6408113
0-24 months   COHORTS          PHILIPPINES                    Low birthweight              NA                0.5818233   0.5303486   0.6332980
0-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.5002639   0.4203099   0.5802178
0-24 months   EE               PAKISTAN                       Low birthweight              NA                0.5085429   0.4193231   0.5977627
0-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.5716010   0.5156576   0.6275445
0-24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                0.5010111   0.4345819   0.5674403
0-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.5996224   0.5372709   0.6619739
0-24 months   IRC              INDIA                          Low birthweight              NA                0.5407875   0.4436295   0.6379455
0-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.3689653   0.3501082   0.3878225
0-24 months   JiVitA-3         BANGLADESH                     Low birthweight              NA                0.4619185   0.4461859   0.4776510
0-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.2425223   0.2143337   0.2707109
0-24 months   JiVitA-4         BANGLADESH                     Low birthweight              NA                0.3275573   0.2947627   0.3603519
0-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.6773325   0.6455645   0.7091005
0-24 months   Keneba           GAMBIA                         Low birthweight              NA                0.5921275   0.5318989   0.6523561
0-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.5991153   0.4769736   0.7212570
0-24 months   MAL-ED           BANGLADESH                     Low birthweight              NA                0.7280145   0.6149006   0.8411284
0-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.6429241   0.5447330   0.7411152
0-24 months   MAL-ED           INDIA                          Low birthweight              NA                0.5392874   0.3817073   0.6968675
0-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5418919   0.4685276   0.6152562
0-24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.4854417   0.4116144   0.5592689
0-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.6364092   0.5540462   0.7187723
0-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.6259120   0.5557484   0.6960756
0-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.5658783   0.4856236   0.6461330
0-24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                0.6149086   0.5352233   0.6945940
0-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.3593069   0.3128848   0.4057289
0-24 months   SAS-CompFeed     INDIA                          Low birthweight              NA                0.4056128   0.3522848   0.4589408
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.6326417   0.5936355   0.6716480
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.5382195   0.3598954   0.7165437
0-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.5229943   0.5029542   0.5430345
0-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.5911659   0.5630259   0.6193059
0-6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6747157   0.6021738   0.7472576
0-6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.6524226   0.4825462   0.8222989
0-6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7500000   0.6868206   0.8131794
0-6 months    COHORTS          GUATEMALA                      Low birthweight              NA                0.8333333   0.6990149   0.9676518
0-6 months    COHORTS          INDIA                          Normal or high birthweight   NA                0.3359618   0.3069742   0.3649493
0-6 months    COHORTS          INDIA                          Low birthweight              NA                0.4342590   0.3973813   0.4711367
0-6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.7374786   0.7014263   0.7735309
0-6 months    COHORTS          PHILIPPINES                    Low birthweight              NA                0.7328184   0.6663306   0.7993062
0-6 months    EE               PAKISTAN                       Normal or high birthweight   NA                0.5689898   0.4565632   0.6814165
0-6 months    EE               PAKISTAN                       Low birthweight              NA                0.5515389   0.3974841   0.7055938
0-6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.6495856   0.5710874   0.7280838
0-6 months    GMS-Nepal        NEPAL                          Low birthweight              NA                0.5635980   0.4704869   0.6567091
0-6 months    IRC              INDIA                          Normal or high birthweight   NA                0.6390807   0.5658936   0.7122678
0-6 months    IRC              INDIA                          Low birthweight              NA                0.6280414   0.5023045   0.7537783
0-6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.6211708   0.5969921   0.6453494
0-6 months    JiVitA-3         BANGLADESH                     Low birthweight              NA                0.7193678   0.7015298   0.7372059
0-6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.5487913   0.4861362   0.6114464
0-6 months    JiVitA-4         BANGLADESH                     Low birthweight              NA                0.6635536   0.6065252   0.7205819
0-6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                0.8345713   0.7995097   0.8696330
0-6 months    Keneba           GAMBIA                         Low birthweight              NA                0.7950499   0.7350077   0.8550922
0-6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                0.6833333   0.5637856   0.8028811
0-6 months    MAL-ED           INDIA                          Low birthweight              NA                0.7000000   0.4899704   0.9100296
0-6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7305915   0.6467659   0.8144171
0-6 months    NIH-Birth        BANGLADESH                     Low birthweight              NA                0.6987115   0.6110632   0.7863598
0-6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.8725490   0.8070954   0.9380026
0-6 months    NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.9157895   0.8592287   0.9723502
0-6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.7891669   0.7037158   0.8746179
0-6 months    PROVIDE          BANGLADESH                     Low birthweight              NA                0.7711742   0.6904891   0.8518593
0-6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.4498731   0.3768817   0.5228646
0-6 months    SAS-CompFeed     INDIA                          Low birthweight              NA                0.5943851   0.5168591   0.6719111
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.7079365   0.6569927   0.7588803
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.6000000   0.3803796   0.8196204
0-6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.7570414   0.7361287   0.7779542
0-6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.7331640   0.7042491   0.7620789
6-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.5721486   0.4677065   0.6765907
6-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.5297691   0.3158675   0.7436706
6-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.5199404   0.4826643   0.5572164
6-24 months   COHORTS          PHILIPPINES                    Low birthweight              NA                0.4051107   0.3209465   0.4892749
6-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.4563171   0.3541857   0.5584484
6-24 months   EE               PAKISTAN                       Low birthweight              NA                0.4680832   0.3624567   0.5737097
6-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.5301686   0.4613587   0.5989786
6-24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                0.4500700   0.3582792   0.5418608
6-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.5491375   0.4493630   0.6489120
6-24 months   IRC              INDIA                          Low birthweight              NA                0.4742567   0.3110087   0.6375048
6-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.1499390   0.1250241   0.1748540
6-24 months   JiVitA-4         BANGLADESH                     Low birthweight              NA                0.1463747   0.1161240   0.1766254
6-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.5544433   0.5098348   0.5990518
6-24 months   Keneba           GAMBIA                         Low birthweight              NA                0.3153785   0.2139801   0.4167769
6-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.4166667   0.2336005   0.5997328
6-24 months   MAL-ED           BANGLADESH                     Low birthweight              NA                0.6250000   0.4536424   0.7963576
6-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.6033657   0.4599537   0.7467777
6-24 months   MAL-ED           INDIA                          Low birthweight              NA                0.4278923   0.1911232   0.6646613
6-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3622267   0.2710579   0.4533955
6-24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1915945   0.1027035   0.2804856
6-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.2772387   0.1742600   0.3802174
6-24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                0.2498666   0.1146157   0.3851175
6-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.3045121   0.2514465   0.3575777
6-24 months   SAS-CompFeed     INDIA                          Low birthweight              NA                0.2469827   0.1788792   0.3150862
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.5644699   0.5109407   0.6179992
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.4210526   0.1645464   0.6775589
6-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0833333   0.0650219   0.1016448
6-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0396476   0.0139646   0.0653305


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6257862   0.5690209   0.6825515
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.5156250   0.4594779   0.5717721
0-24 months   COHORTS          INDIA                          NA                   NA                0.2559618   0.2388022   0.2731215
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6069712   0.5823178   0.6316245
0-24 months   EE               PAKISTAN                       NA                   NA                0.5031056   0.4439609   0.5622503
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.5413417   0.4990070   0.5836763
0-24 months   IRC              INDIA                          NA                   NA                0.5897436   0.5370721   0.6424150
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4230769   0.4110235   0.4351303
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.2783678   0.2569102   0.2998254
0-24 months   Keneba           GAMBIA                         NA                   NA                0.6606557   0.6326585   0.6886530
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.6475410   0.5607680   0.7343140
0-24 months   MAL-ED           INDIA                          NA                   NA                0.6144578   0.5320591   0.6968566
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5171569   0.4657250   0.5685888
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3822441   0.3470621   0.4174262
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6258890   0.5879514   0.6638267
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.5443459   0.5279394   0.5607524
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.6700508   0.6033656   0.7367359
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.7619048   0.7043195   0.8194900
0-6 months    COHORTS          INDIA                          NA                   NA                0.3748545   0.3519572   0.3977518
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.7372654   0.7055895   0.7689413
0-6 months    EE               PAKISTAN                       NA                   NA                0.5634921   0.4761607   0.6508235
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.6045627   0.5449300   0.6641955
0-6 months    IRC              INDIA                          NA                   NA                0.6355932   0.5725724   0.6986140
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.6804689   0.6660338   0.6949041
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.6058824   0.5634305   0.6483342
0-6 months    Keneba           GAMBIA                         NA                   NA                0.8256228   0.7953169   0.8559287
0-6 months    MAL-ED           INDIA                          NA                   NA                0.6875000   0.5835705   0.7914295
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.7142857   0.6541352   0.7744362
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.8934010   0.8497799   0.9370221
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.5147059   0.4610948   0.5683169
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7014925   0.6517566   0.7512285
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.7481128   0.7311662   0.7650594
6-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.5537190   0.4599630   0.6474751
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.5010893   0.4669869   0.5351918
6-24 months   EE               PAKISTAN                       NA                   NA                0.4642857   0.3910729   0.5374985
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4973545   0.4426760   0.5520330
6-24 months   IRC              INDIA                          NA                   NA                0.5194805   0.4352979   0.6036631
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1477717   0.1285384   0.1670050
6-24 months   Keneba           GAMBIA                         NA                   NA                0.5197568   0.4787855   0.5607282
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.5000000   0.3680930   0.6319070
6-24 months   MAL-ED           INDIA                          NA                   NA                0.5465116   0.4258714   0.6671519
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2931937   0.2273732   0.3590142
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2866242   0.2446853   0.3285631
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5570652   0.5044805   0.6096499
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0742438   0.0587565   0.0897311


### Parameter: RR


agecat        studyid          country                        intervention_level           baseline_level                 estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  ---------------------------  ---------------------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    0.9211656   0.7310661   1.1606968
0-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    1.0673997   0.7851750   1.4510677
0-24 months   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.4480792   1.2686057   1.6529434
0-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    0.9492565   0.8595860   1.0482813
0-24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.0165493   0.8018901   1.2886711
0-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    0.8765049   0.7431905   1.0337334
0-24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    0.9018801   0.7326990   1.1101253
0-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    1.2519292   1.1775175   1.3310433
0-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    1.3506274   1.1587114   1.5743302
0-24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    0.8742051   0.7818183   0.9775092
0-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    1.2151492   0.9392342   1.5721185
0-24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    0.8388042   0.6026074   1.1675802
0-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    0.8958275   0.7307732   1.0981613
0-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    0.9835055   0.8285516   1.1674387
0-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    1.0866446   0.8963163   1.3173882
0-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    1.1288758   0.9391816   1.3568839
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    0.8507494   0.6074391   1.1915177
0-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    1.1303486   1.0634478   1.2014580
0-6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    0.9669592   0.7308674   1.2793156
0-6 months    COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    1.1111111   0.9263461   1.3327286
0-6 months    COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.2925847   1.1452147   1.4589187
0-6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    0.9936809   0.8963447   1.1015871
0-6 months    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    EE               PAKISTAN                       Low birthweight              Normal or high birthweight    0.9693300   0.6888859   1.3639425
0-6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    0.8676270   0.7064773   1.0655354
0-6 months    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          Low birthweight              Normal or high birthweight    0.9827263   0.7797772   1.2384961
0-6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    1.1580838   1.1060094   1.2126101
0-6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    1.2091182   1.0477818   1.3952971
0-6 months    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    0.9526447   0.8740907   1.0382582
0-6 months    MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    1.0243902   0.7238118   1.4497904
0-6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    0.9563641   0.8063326   1.1343114
0-6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    1.0495565   0.9523711   1.1566592
0-6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    0.9772005   0.8401539   1.1366022
0-6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    1.3212282   1.0729201   1.6270028
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    0.8475336   0.5836432   1.2307403
0-6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    0.9684596   0.9229116   1.0162555
6-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    0.9259291   0.5942232   1.4427991
6-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    0.7791483   0.6252850   0.9708727
6-24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.0257849   0.7478749   1.4069662
6-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    0.8489185   0.6666140   1.0810795
6-24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    0.8636393   0.5832929   1.2787278
6-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    0.9762279   0.7488024   1.2727268
6-24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    0.5688202   0.4080500   0.7929332
6-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    1.5000000   0.8938050   2.5173275
6-24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    0.7091757   0.3871534   1.2990462
6-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    0.5289354   0.3114710   0.8982302
6-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    0.9012687   0.4653042   1.7457079
6-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    0.8110768   0.5860168   1.1225713
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    0.7459257   0.4026578   1.3818315
6-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    0.4757709   0.2400632   0.9429098


### Parameter: PAR


agecat        studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0096175   -0.0330070    0.0137720
0-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0052391   -0.0190426    0.0295207
0-24 months   COHORTS          INDIA                          Normal or high birthweight   NA                 0.0364717    0.0228752    0.0500683
0-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0059541   -0.0166967    0.0047885
0-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                 0.0028417   -0.0473126    0.0529960
0-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0302594   -0.0660332    0.0055145
0-24 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0098788   -0.0401427    0.0203850
0-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.0541116    0.0394113    0.0688119
0-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0358455    0.0174819    0.0542091
0-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0166767   -0.0304815   -0.0028719
0-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0484257   -0.0151190    0.1119703
0-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0284662   -0.0776826    0.0207501
0-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0247351   -0.0715011    0.0220310
0-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0138286   -0.0656216    0.0379644
0-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0152905   -0.0367140    0.0672950
0-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0229373   -0.0045867    0.0504612
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0067527   -0.0163964    0.0028910
0-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0213516    0.0104551    0.0322481
0-6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0046650   -0.0329855    0.0236555
0-6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0119048   -0.0096709    0.0334804
0-6 months    COHORTS          INDIA                          Normal or high birthweight   NA                 0.0388927    0.0197163    0.0580691
0-6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0002132   -0.0170553    0.0166289
0-6 months    EE               PAKISTAN                       Normal or high birthweight   NA                -0.0054978   -0.0756510    0.0646555
0-6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0450228   -0.1000400    0.0099943
0-6 months    IRC              INDIA                          Normal or high birthweight   NA                -0.0034875   -0.0399832    0.0330082
0-6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.0592982    0.0406884    0.0779080
0-6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0570910    0.0122771    0.1019050
0-6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0089486   -0.0266116    0.0087145
0-6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0041667   -0.0562660    0.0645993
0-6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0163058   -0.0776096    0.0449980
0-6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0208520   -0.0209627    0.0626667
0-6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0053831   -0.0648324    0.0540662
0-6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0648327    0.0159353    0.1137302
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0064440   -0.0201935    0.0073055
0-6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0089286   -0.0217519    0.0038947
6-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0184296   -0.0646829    0.0278236
6-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0188510   -0.0334451   -0.0042570
6-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                 0.0079686   -0.0585150    0.0744523
6-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0328141   -0.0758581    0.0102299
6-24 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0296570   -0.0831935    0.0238795
6-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0021673   -0.0172800    0.0129454
6-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0346864   -0.0542439   -0.0151289
6-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0833333   -0.0206788    0.1873455
6-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0568541   -0.1364726    0.0227645
6-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0690330   -0.1216167   -0.0164493
6-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0008160   -0.0664613    0.0648294
6-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0178879   -0.0476557    0.0118799
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0074047   -0.0214410    0.0066316
6-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0090895   -0.0157410   -0.0024380


### Parameter: PAF


agecat        studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0153686   -0.0533298    0.0212245
0-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0101607   -0.0380465    0.0561291
0-24 months   COHORTS          INDIA                          Normal or high birthweight   NA                 0.1424889    0.0876307    0.1940486
0-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0098096   -0.0276271    0.0076991
0-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                 0.0056484   -0.0992589    0.1005439
0-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0558970   -0.1241577    0.0082188
0-24 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0167510   -0.0693105    0.0332250
0-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.1279002    0.0923160    0.1620894
0-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.1287702    0.0594794    0.1929562
0-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0252427   -0.0463315   -0.0045789
0-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0747840   -0.0326345    0.1710284
0-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0463274   -0.1294749    0.0306991
0-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0478289   -0.1418175    0.0384229
0-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0222117   -0.1084672    0.0573318
0-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0263099   -0.0677062    0.1120475
0-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0600068   -0.0155463    0.1299390
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0107889   -0.0263389    0.0045254
0-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0392243    0.0189150    0.0591132
0-6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0069621   -0.0501312    0.0344324
0-6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0156250   -0.0132322    0.0436603
0-6 months    COHORTS          INDIA                          Normal or high birthweight   NA                 0.1037542    0.0510889    0.1534965
0-6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0002892   -0.0233959    0.0222959
0-6 months    EE               PAKISTAN                       Normal or high birthweight   NA                -0.0097566   -0.1422518    0.1073699
0-6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0744717   -0.1702723    0.0134864
0-6 months    IRC              INDIA                          Normal or high birthweight   NA                -0.0054870   -0.0645742    0.0503207
0-6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.0871431    0.0592109    0.1142460
0-6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0942279    0.0166243    0.1657075
0-6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0108386   -0.0324644    0.0103343
0-6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0060606   -0.0858378    0.0901813
0-6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0228281   -0.1124795    0.0595985
0-6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0233400   -0.0248250    0.0692414
0-6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0068681   -0.0856216    0.0661725
0-6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.1259607    0.0244260    0.2169281
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0091861   -0.0290217    0.0102672
0-6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0119348   -0.0292329    0.0050725
6-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0332834   -0.1205056    0.0471493
6-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0376201   -0.0672372   -0.0088249
6-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                 0.0171632   -0.1372283    0.1505943
6-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0659773   -0.1566420    0.0175805
6-24 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0570896   -0.1657930    0.0414777
6-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0146668   -0.1222073    0.0825682
6-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0667359   -0.1056540   -0.0291877
6-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.1666667   -0.0861045    0.3606099
6-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.1040309   -0.2622590    0.0343629
6-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2354518   -0.4267494   -0.0698032
6-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0029519   -0.2709414    0.2085296
6-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0624089   -0.1712642    0.0363295
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0132923   -0.0389212    0.0117043
6-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1224280   -0.2127154   -0.0388625
