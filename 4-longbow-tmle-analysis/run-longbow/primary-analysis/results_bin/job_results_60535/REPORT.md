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

**Outcome Variable:** ever_co

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

agecat        studyid          country                        birthwt                       ever_co   n_cell       n
------------  ---------------  -----------------------------  ---------------------------  --------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      266     365
0-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       56     365
0-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                     0       16     365
0-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                     1       27     365
0-24 months   CMIN             BANGLADESH                     Normal or high birthweight          0       12      20
0-24 months   CMIN             BANGLADESH                     Normal or high birthweight          1        2      20
0-24 months   CMIN             BANGLADESH                     Low birthweight                     0        4      20
0-24 months   CMIN             BANGLADESH                     Low birthweight                     1        2      20
0-24 months   COHORTS          GUATEMALA                      Normal or high birthweight          0      763     929
0-24 months   COHORTS          GUATEMALA                      Normal or high birthweight          1       85     929
0-24 months   COHORTS          GUATEMALA                      Low birthweight                     0       64     929
0-24 months   COHORTS          GUATEMALA                      Low birthweight                     1       17     929
0-24 months   COHORTS          INDIA                          Normal or high birthweight          0     5088    6758
0-24 months   COHORTS          INDIA                          Normal or high birthweight          1      291    6758
0-24 months   COHORTS          INDIA                          Low birthweight                     0     1059    6758
0-24 months   COHORTS          INDIA                          Low birthweight                     1      320    6758
0-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight          0     2283    3001
0-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight          1      431    3001
0-24 months   COHORTS          PHILIPPINES                    Low birthweight                     0      168    3001
0-24 months   COHORTS          PHILIPPINES                    Low birthweight                     1      119    3001
0-24 months   CONTENT          PERU                           Normal or high birthweight          0        2       2
0-24 months   CONTENT          PERU                           Normal or high birthweight          1        0       2
0-24 months   CONTENT          PERU                           Low birthweight                     0        0       2
0-24 months   CONTENT          PERU                           Low birthweight                     1        0       2
0-24 months   EE               PAKISTAN                       Normal or high birthweight          0      154     378
0-24 months   EE               PAKISTAN                       Normal or high birthweight          1       91     378
0-24 months   EE               PAKISTAN                       Low birthweight                     0       55     378
0-24 months   EE               PAKISTAN                       Low birthweight                     1       78     378
0-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight          0      374     685
0-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight          1      103     685
0-24 months   GMS-Nepal        NEPAL                          Low birthweight                     0      110     685
0-24 months   GMS-Nepal        NEPAL                          Low birthweight                     1       98     685
0-24 months   IRC              INDIA                          Normal or high birthweight          0      295     404
0-24 months   IRC              INDIA                          Normal or high birthweight          1       40     404
0-24 months   IRC              INDIA                          Low birthweight                     0       36     404
0-24 months   IRC              INDIA                          Low birthweight                     1       33     404
0-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight          0    12621   22524
0-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight          1      411   22524
0-24 months   JiVitA-3         BANGLADESH                     Low birthweight                     0     7875   22524
0-24 months   JiVitA-3         BANGLADESH                     Low birthweight                     1     1617   22524
0-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight          0     2974    4508
0-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight          1      355    4508
0-24 months   JiVitA-4         BANGLADESH                     Low birthweight                     0      792    4508
0-24 months   JiVitA-4         BANGLADESH                     Low birthweight                     1      387    4508
0-24 months   Keneba           GAMBIA                         Normal or high birthweight          0     1139    1538
0-24 months   Keneba           GAMBIA                         Normal or high birthweight          1      177    1538
0-24 months   Keneba           GAMBIA                         Low birthweight                     0      145    1538
0-24 months   Keneba           GAMBIA                         Low birthweight                     1       77    1538
0-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight          0      184     260
0-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight          1       21     260
0-24 months   MAL-ED           BANGLADESH                     Low birthweight                     0       38     260
0-24 months   MAL-ED           BANGLADESH                     Low birthweight                     1       17     260
0-24 months   MAL-ED           BRAZIL                         Normal or high birthweight          0      219     233
0-24 months   MAL-ED           BRAZIL                         Normal or high birthweight          1        2     233
0-24 months   MAL-ED           BRAZIL                         Low birthweight                     0       11     233
0-24 months   MAL-ED           BRAZIL                         Low birthweight                     1        1     233
0-24 months   MAL-ED           INDIA                          Normal or high birthweight          0      168     241
0-24 months   MAL-ED           INDIA                          Normal or high birthweight          1       37     241
0-24 months   MAL-ED           INDIA                          Low birthweight                     0       24     241
0-24 months   MAL-ED           INDIA                          Low birthweight                     1       12     241
0-24 months   MAL-ED           NEPAL                          Normal or high birthweight          0      200     233
0-24 months   MAL-ED           NEPAL                          Normal or high birthweight          1       14     233
0-24 months   MAL-ED           NEPAL                          Low birthweight                     0       14     233
0-24 months   MAL-ED           NEPAL                          Low birthweight                     1        5     233
0-24 months   MAL-ED           PERU                           Normal or high birthweight          0      275     299
0-24 months   MAL-ED           PERU                           Normal or high birthweight          1        7     299
0-24 months   MAL-ED           PERU                           Low birthweight                     0       12     299
0-24 months   MAL-ED           PERU                           Low birthweight                     1        5     299
0-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight          0      274     310
0-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight          1       16     310
0-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                     0       15     310
0-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                     1        5     310
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      172     196
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       14     196
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        9     196
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        1     196
0-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight          0      364     603
0-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight          1       59     603
0-24 months   NIH-Birth        BANGLADESH                     Low birthweight                     0      106     603
0-24 months   NIH-Birth        BANGLADESH                     Low birthweight                     1       74     603
0-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight          0      549     758
0-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight          1       32     758
0-24 months   NIH-Crypto       BANGLADESH                     Low birthweight                     0      138     758
0-24 months   NIH-Crypto       BANGLADESH                     Low birthweight                     1       39     758
0-24 months   PROBIT           BELARUS                        Normal or high birthweight          0    16879   16897
0-24 months   PROBIT           BELARUS                        Normal or high birthweight          1       18   16897
0-24 months   PROBIT           BELARUS                        Low birthweight                     0        0   16897
0-24 months   PROBIT           BELARUS                        Low birthweight                     1        0   16897
0-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight          0      489     700
0-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight          1       43     700
0-24 months   PROVIDE          BANGLADESH                     Low birthweight                     0      121     700
0-24 months   PROVIDE          BANGLADESH                     Low birthweight                     1       47     700
0-24 months   ResPak           PAKISTAN                       Normal or high birthweight          0       33      42
0-24 months   ResPak           PAKISTAN                       Normal or high birthweight          1        2      42
0-24 months   ResPak           PAKISTAN                       Low birthweight                     0        4      42
0-24 months   ResPak           PAKISTAN                       Low birthweight                     1        3      42
0-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight          0      943    1503
0-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight          1      193    1503
0-24 months   SAS-CompFeed     INDIA                          Low birthweight                     0      210    1503
0-24 months   SAS-CompFeed     INDIA                          Low birthweight                     1      157    1503
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     2188    2371
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1      101    2371
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0       67    2371
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1       15    2371
0-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0    11726   13897
0-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      339   13897
0-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                     0     1581   13897
0-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                     1      251   13897
0-6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      307     361
0-6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       11     361
0-6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                     0       24     361
0-6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                     1       19     361
0-6 months    CMIN             BANGLADESH                     Normal or high birthweight          0       14      20
0-6 months    CMIN             BANGLADESH                     Normal or high birthweight          1        0      20
0-6 months    CMIN             BANGLADESH                     Low birthweight                     0        5      20
0-6 months    CMIN             BANGLADESH                     Low birthweight                     1        1      20
0-6 months    COHORTS          GUATEMALA                      Normal or high birthweight          0      802     896
0-6 months    COHORTS          GUATEMALA                      Normal or high birthweight          1       16     896
0-6 months    COHORTS          GUATEMALA                      Low birthweight                     0       77     896
0-6 months    COHORTS          GUATEMALA                      Low birthweight                     1        1     896
0-6 months    COHORTS          INDIA                          Normal or high birthweight          0     5223    6593
0-6 months    COHORTS          INDIA                          Normal or high birthweight          1       30    6593
0-6 months    COHORTS          INDIA                          Low birthweight                     0     1192    6593
0-6 months    COHORTS          INDIA                          Low birthweight                     1      148    6593
0-6 months    COHORTS          PHILIPPINES                    Normal or high birthweight          0     2674    3000
0-6 months    COHORTS          PHILIPPINES                    Normal or high birthweight          1       40    3000
0-6 months    COHORTS          PHILIPPINES                    Low birthweight                     0      255    3000
0-6 months    COHORTS          PHILIPPINES                    Low birthweight                     1       31    3000
0-6 months    CONTENT          PERU                           Normal or high birthweight          0        2       2
0-6 months    CONTENT          PERU                           Normal or high birthweight          1        0       2
0-6 months    CONTENT          PERU                           Low birthweight                     0        0       2
0-6 months    CONTENT          PERU                           Low birthweight                     1        0       2
0-6 months    EE               PAKISTAN                       Normal or high birthweight          0      216     378
0-6 months    EE               PAKISTAN                       Normal or high birthweight          1       29     378
0-6 months    EE               PAKISTAN                       Low birthweight                     0      106     378
0-6 months    EE               PAKISTAN                       Low birthweight                     1       27     378
0-6 months    GMS-Nepal        NEPAL                          Normal or high birthweight          0      469     685
0-6 months    GMS-Nepal        NEPAL                          Normal or high birthweight          1        8     685
0-6 months    GMS-Nepal        NEPAL                          Low birthweight                     0      180     685
0-6 months    GMS-Nepal        NEPAL                          Low birthweight                     1       28     685
0-6 months    IRC              INDIA                          Normal or high birthweight          0      327     403
0-6 months    IRC              INDIA                          Normal or high birthweight          1        8     403
0-6 months    IRC              INDIA                          Low birthweight                     0       53     403
0-6 months    IRC              INDIA                          Low birthweight                     1       15     403
0-6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight          0    12976   22477
0-6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight          1       55   22477
0-6 months    JiVitA-3         BANGLADESH                     Low birthweight                     0     8641   22477
0-6 months    JiVitA-3         BANGLADESH                     Low birthweight                     1      805   22477
0-6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight          0     3292    4466
0-6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight          1       28    4466
0-6 months    JiVitA-4         BANGLADESH                     Low birthweight                     0     1050    4466
0-6 months    JiVitA-4         BANGLADESH                     Low birthweight                     1       96    4466
0-6 months    Keneba           GAMBIA                         Normal or high birthweight          0     1300    1537
0-6 months    Keneba           GAMBIA                         Normal or high birthweight          1       16    1537
0-6 months    Keneba           GAMBIA                         Low birthweight                     0      196    1537
0-6 months    Keneba           GAMBIA                         Low birthweight                     1       25    1537
0-6 months    MAL-ED           BANGLADESH                     Normal or high birthweight          0      202     260
0-6 months    MAL-ED           BANGLADESH                     Normal or high birthweight          1        3     260
0-6 months    MAL-ED           BANGLADESH                     Low birthweight                     0       49     260
0-6 months    MAL-ED           BANGLADESH                     Low birthweight                     1        6     260
0-6 months    MAL-ED           BRAZIL                         Normal or high birthweight          0      221     233
0-6 months    MAL-ED           BRAZIL                         Normal or high birthweight          1        0     233
0-6 months    MAL-ED           BRAZIL                         Low birthweight                     0       11     233
0-6 months    MAL-ED           BRAZIL                         Low birthweight                     1        1     233
0-6 months    MAL-ED           INDIA                          Normal or high birthweight          0      194     241
0-6 months    MAL-ED           INDIA                          Normal or high birthweight          1       11     241
0-6 months    MAL-ED           INDIA                          Low birthweight                     0       31     241
0-6 months    MAL-ED           INDIA                          Low birthweight                     1        5     241
0-6 months    MAL-ED           NEPAL                          Normal or high birthweight          0      210     233
0-6 months    MAL-ED           NEPAL                          Normal or high birthweight          1        4     233
0-6 months    MAL-ED           NEPAL                          Low birthweight                     0       16     233
0-6 months    MAL-ED           NEPAL                          Low birthweight                     1        3     233
0-6 months    MAL-ED           PERU                           Normal or high birthweight          0      282     299
0-6 months    MAL-ED           PERU                           Normal or high birthweight          1        0     299
0-6 months    MAL-ED           PERU                           Low birthweight                     0       15     299
0-6 months    MAL-ED           PERU                           Low birthweight                     1        2     299
0-6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight          0      290     310
0-6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight          1        0     310
0-6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                     0       17     310
0-6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                     1        3     310
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      186     196
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        0     196
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        9     196
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        1     196
0-6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight          0      415     601
0-6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight          1        8     601
0-6 months    NIH-Birth        BANGLADESH                     Low birthweight                     0      142     601
0-6 months    NIH-Birth        BANGLADESH                     Low birthweight                     1       36     601
0-6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight          0      580     758
0-6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight          1        1     758
0-6 months    NIH-Crypto       BANGLADESH                     Low birthweight                     0      161     758
0-6 months    NIH-Crypto       BANGLADESH                     Low birthweight                     1       16     758
0-6 months    PROBIT           BELARUS                        Normal or high birthweight          0    16879   16892
0-6 months    PROBIT           BELARUS                        Normal or high birthweight          1       13   16892
0-6 months    PROBIT           BELARUS                        Low birthweight                     0        0   16892
0-6 months    PROBIT           BELARUS                        Low birthweight                     1        0   16892
0-6 months    PROVIDE          BANGLADESH                     Normal or high birthweight          0      527     700
0-6 months    PROVIDE          BANGLADESH                     Normal or high birthweight          1        5     700
0-6 months    PROVIDE          BANGLADESH                     Low birthweight                     0      143     700
0-6 months    PROVIDE          BANGLADESH                     Low birthweight                     1       25     700
0-6 months    ResPak           PAKISTAN                       Normal or high birthweight          0       34      42
0-6 months    ResPak           PAKISTAN                       Normal or high birthweight          1        1      42
0-6 months    ResPak           PAKISTAN                       Low birthweight                     0        5      42
0-6 months    ResPak           PAKISTAN                       Low birthweight                     1        2      42
0-6 months    SAS-CompFeed     INDIA                          Normal or high birthweight          0     1095    1495
0-6 months    SAS-CompFeed     INDIA                          Normal or high birthweight          1       40    1495
0-6 months    SAS-CompFeed     INDIA                          Low birthweight                     0      294    1495
0-6 months    SAS-CompFeed     INDIA                          Low birthweight                     1       66    1495
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     2277    2371
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       12    2371
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0       77    2371
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        5    2371
0-6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0    11995   13802
0-6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1       39   13802
0-6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                     0     1640   13802
0-6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                     1      128   13802
6-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      274     365
6-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       48     365
6-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                     0       24     365
6-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                     1       19     365
6-24 months   CMIN             BANGLADESH                     Normal or high birthweight          0        7      12
6-24 months   CMIN             BANGLADESH                     Normal or high birthweight          1        2      12
6-24 months   CMIN             BANGLADESH                     Low birthweight                     0        2      12
6-24 months   CMIN             BANGLADESH                     Low birthweight                     1        1      12
6-24 months   COHORTS          GUATEMALA                      Normal or high birthweight          0      679     825
6-24 months   COHORTS          GUATEMALA                      Normal or high birthweight          1       74     825
6-24 months   COHORTS          GUATEMALA                      Low birthweight                     0       56     825
6-24 months   COHORTS          GUATEMALA                      Low birthweight                     1       16     825
6-24 months   COHORTS          INDIA                          Normal or high birthweight          0     4750    6296
6-24 months   COHORTS          INDIA                          Normal or high birthweight          1      284    6296
6-24 months   COHORTS          INDIA                          Low birthweight                     0     1019    6296
6-24 months   COHORTS          INDIA                          Low birthweight                     1      243    6296
6-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight          0     2091    2765
6-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight          1      420    2765
6-24 months   COHORTS          PHILIPPINES                    Low birthweight                     0      148    2765
6-24 months   COHORTS          PHILIPPINES                    Low birthweight                     1      106    2765
6-24 months   CONTENT          PERU                           Normal or high birthweight          0        2       2
6-24 months   CONTENT          PERU                           Normal or high birthweight          1        0       2
6-24 months   CONTENT          PERU                           Low birthweight                     0        0       2
6-24 months   CONTENT          PERU                           Low birthweight                     1        0       2
6-24 months   EE               PAKISTAN                       Normal or high birthweight          0      155     371
6-24 months   EE               PAKISTAN                       Normal or high birthweight          1       86     371
6-24 months   EE               PAKISTAN                       Low birthweight                     0       60     371
6-24 months   EE               PAKISTAN                       Low birthweight                     1       70     371
6-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight          0      311     589
6-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight          1      101     589
6-24 months   GMS-Nepal        NEPAL                          Low birthweight                     0       87     589
6-24 months   GMS-Nepal        NEPAL                          Low birthweight                     1       90     589
6-24 months   IRC              INDIA                          Normal or high birthweight          0      299     404
6-24 months   IRC              INDIA                          Normal or high birthweight          1       36     404
6-24 months   IRC              INDIA                          Low birthweight                     0       43     404
6-24 months   IRC              INDIA                          Low birthweight                     1       26     404
6-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight          0     8212   14513
6-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight          1      364   14513
6-24 months   JiVitA-3         BANGLADESH                     Low birthweight                     0     4988   14513
6-24 months   JiVitA-3         BANGLADESH                     Low birthweight                     1      949   14513
6-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight          0     2983    4499
6-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight          1      338    4499
6-24 months   JiVitA-4         BANGLADESH                     Low birthweight                     0      847    4499
6-24 months   JiVitA-4         BANGLADESH                     Low birthweight                     1      331    4499
6-24 months   Keneba           GAMBIA                         Normal or high birthweight          0     1096    1473
6-24 months   Keneba           GAMBIA                         Normal or high birthweight          1      173    1473
6-24 months   Keneba           GAMBIA                         Low birthweight                     0      138    1473
6-24 months   Keneba           GAMBIA                         Low birthweight                     1       66    1473
6-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight          0      167     237
6-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight          1       19     237
6-24 months   MAL-ED           BANGLADESH                     Low birthweight                     0       36     237
6-24 months   MAL-ED           BANGLADESH                     Low birthweight                     1       15     237
6-24 months   MAL-ED           BRAZIL                         Normal or high birthweight          0      195     207
6-24 months   MAL-ED           BRAZIL                         Normal or high birthweight          1        2     207
6-24 months   MAL-ED           BRAZIL                         Low birthweight                     0       10     207
6-24 months   MAL-ED           BRAZIL                         Low birthweight                     1        0     207
6-24 months   MAL-ED           INDIA                          Normal or high birthweight          0      159     226
6-24 months   MAL-ED           INDIA                          Normal or high birthweight          1       33     226
6-24 months   MAL-ED           INDIA                          Low birthweight                     0       24     226
6-24 months   MAL-ED           INDIA                          Low birthweight                     1       10     226
6-24 months   MAL-ED           NEPAL                          Normal or high birthweight          0      198     228
6-24 months   MAL-ED           NEPAL                          Normal or high birthweight          1       11     228
6-24 months   MAL-ED           NEPAL                          Low birthweight                     0       17     228
6-24 months   MAL-ED           NEPAL                          Low birthweight                     1        2     228
6-24 months   MAL-ED           PERU                           Normal or high birthweight          0      244     267
6-24 months   MAL-ED           PERU                           Normal or high birthweight          1        7     267
6-24 months   MAL-ED           PERU                           Low birthweight                     0       12     267
6-24 months   MAL-ED           PERU                           Low birthweight                     1        4     267
6-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight          0      227     258
6-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight          1       16     258
6-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                     0       11     258
6-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                     1        4     258
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      162     184
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       14     184
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        8     184
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        0     184
6-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight          0      312     522
6-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight          1       54     522
6-24 months   NIH-Birth        BANGLADESH                     Low birthweight                     0       99     522
6-24 months   NIH-Birth        BANGLADESH                     Low birthweight                     1       57     522
6-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight          0      528     730
6-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight          1       31     730
6-24 months   NIH-Crypto       BANGLADESH                     Low birthweight                     0      139     730
6-24 months   NIH-Crypto       BANGLADESH                     Low birthweight                     1       32     730
6-24 months   PROBIT           BELARUS                        Normal or high birthweight          0    16592   16598
6-24 months   PROBIT           BELARUS                        Normal or high birthweight          1        6   16598
6-24 months   PROBIT           BELARUS                        Low birthweight                     0        0   16598
6-24 months   PROBIT           BELARUS                        Low birthweight                     1        0   16598
6-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight          0      427     614
6-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight          1       39     614
6-24 months   PROVIDE          BANGLADESH                     Low birthweight                     0      112     614
6-24 months   PROVIDE          BANGLADESH                     Low birthweight                     1       36     614
6-24 months   ResPak           PAKISTAN                       Normal or high birthweight          0       25      32
6-24 months   ResPak           PAKISTAN                       Normal or high birthweight          1        2      32
6-24 months   ResPak           PAKISTAN                       Low birthweight                     0        3      32
6-24 months   ResPak           PAKISTAN                       Low birthweight                     1        2      32
6-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight          0      865    1379
6-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight          1      181    1379
6-24 months   SAS-CompFeed     INDIA                          Low birthweight                     0      201    1379
6-24 months   SAS-CompFeed     INDIA                          Low birthweight                     1      132    1379
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     1834    1997
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       98    1997
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0       52    1997
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1       13    1997
6-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0     9068   10778
6-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      309   10778
6-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                     0     1267   10778
6-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                     1      134   10778


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
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
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
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/c94e7223-ddb5-4ac2-a5d5-3f7409107878/f2534eee-621b-4229-a87f-0960302d6891/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c94e7223-ddb5-4ac2-a5d5-3f7409107878/f2534eee-621b-4229-a87f-0960302d6891/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c94e7223-ddb5-4ac2-a5d5-3f7409107878/f2534eee-621b-4229-a87f-0960302d6891/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c94e7223-ddb5-4ac2-a5d5-3f7409107878/f2534eee-621b-4229-a87f-0960302d6891/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1743247   0.1327735   0.2158759
0-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.6081403   0.4536328   0.7626479
0-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0998071   0.0796289   0.1199854
0-24 months   COHORTS          GUATEMALA                      Low birthweight              NA                0.2068066   0.1183239   0.2952894
0-24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.0543757   0.0483165   0.0604350
0-24 months   COHORTS          INDIA                          Low birthweight              NA                0.2270538   0.2047750   0.2493326
0-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1592711   0.1455262   0.1730160
0-24 months   COHORTS          PHILIPPINES                    Low birthweight              NA                0.4128337   0.3563620   0.4693054
0-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.3720562   0.3111640   0.4329484
0-24 months   EE               PAKISTAN                       Low birthweight              NA                0.5840031   0.4998574   0.6681488
0-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.2090772   0.1723827   0.2457717
0-24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                0.4924349   0.4243837   0.5604861
0-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.1194012   0.0844787   0.1543236
0-24 months   IRC              INDIA                          Low birthweight              NA                0.4679964   0.3458811   0.5901117
0-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.0315537   0.0283151   0.0347923
0-24 months   JiVitA-3         BANGLADESH                     Low birthweight              NA                0.1724114   0.1643012   0.1805215
0-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.1071956   0.0946321   0.1197591
0-24 months   JiVitA-4         BANGLADESH                     Low birthweight              NA                0.3291754   0.2981143   0.3602365
0-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.1326682   0.1143246   0.1510117
0-24 months   Keneba           GAMBIA                         Low birthweight              NA                0.3483974   0.2865621   0.4102326
0-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.1041108   0.0624035   0.1458181
0-24 months   MAL-ED           BANGLADESH                     Low birthweight              NA                0.2838011   0.1657629   0.4018393
0-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.1792269   0.1264502   0.2320037
0-24 months   MAL-ED           INDIA                          Low birthweight              NA                0.3071603   0.1498112   0.4645094
0-24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.0654206   0.0322204   0.0986207
0-24 months   MAL-ED           NEPAL                          Low birthweight              NA                0.2631579   0.0647309   0.4615849
0-24 months   MAL-ED           PERU                           Normal or high birthweight   NA                0.0248227   0.0066333   0.0430120
0-24 months   MAL-ED           PERU                           Low birthweight              NA                0.2941176   0.0771586   0.5110767
0-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.0551724   0.0288523   0.0814925
0-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.2500000   0.0599205   0.4400795
0-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1374584   0.1042942   0.1706226
0-24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.4044332   0.3322892   0.4765773
0-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0554426   0.0368570   0.0740282
0-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.2152940   0.1542382   0.2763497
0-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0835276   0.0598933   0.1071618
0-24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                0.2804005   0.2090211   0.3517798
0-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.1724644   0.1366617   0.2082670
0-24 months   SAS-CompFeed     INDIA                          Low birthweight              NA                0.4181355   0.3527665   0.4835045
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0441172   0.0357024   0.0525320
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.1898532   0.1053882   0.2743183
0-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0281083   0.0251561   0.0310605
0-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.1374538   0.1216495   0.1532580
0-6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0345544   0.0144216   0.0546872
0-6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.4470330   0.2862997   0.6077663
0-6 months    COHORTS          INDIA                          Normal or high birthweight   NA                0.0057329   0.0036903   0.0077755
0-6 months    COHORTS          INDIA                          Low birthweight              NA                0.1062636   0.0896438   0.1228834
0-6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0146842   0.0101641   0.0192042
0-6 months    COHORTS          PHILIPPINES                    Low birthweight              NA                0.1048255   0.0695342   0.1401168
0-6 months    EE               PAKISTAN                       Normal or high birthweight   NA                0.1190262   0.0785352   0.1595172
0-6 months    EE               PAKISTAN                       Low birthweight              NA                0.2069360   0.1384529   0.2754191
0-6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0167715   0.0052391   0.0283039
0-6 months    GMS-Nepal        NEPAL                          Low birthweight              NA                0.1346154   0.0881975   0.1810333
0-6 months    IRC              INDIA                          Normal or high birthweight   NA                0.0238806   0.0075110   0.0402502
0-6 months    IRC              INDIA                          Low birthweight              NA                0.2205882   0.1219131   0.3192634
0-6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.0042771   0.0031326   0.0054216
0-6 months    JiVitA-3         BANGLADESH                     Low birthweight              NA                0.0847697   0.0787680   0.0907714
0-6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.0085682   0.0045299   0.0126065
0-6 months    JiVitA-4         BANGLADESH                     Low birthweight              NA                0.0823434   0.0636521   0.1010347
0-6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                0.0123162   0.0063059   0.0183264
0-6 months    Keneba           GAMBIA                         Low birthweight              NA                0.1091388   0.0654928   0.1527849
0-6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                0.0536585   0.0227472   0.0845698
0-6 months    MAL-ED           INDIA                          Low birthweight              NA                0.1388889   0.0256845   0.2520932
0-6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0189125   0.0059208   0.0319043
0-6 months    NIH-Birth        BANGLADESH                     Low birthweight              NA                0.2022472   0.1431897   0.2613047
0-6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0093985   0.0011934   0.0176035
0-6 months    PROVIDE          BANGLADESH                     Low birthweight              NA                0.1488095   0.0949537   0.2026653
0-6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.0357724   0.0183748   0.0531700
0-6 months    SAS-CompFeed     INDIA                          Low birthweight              NA                0.1715720   0.1247381   0.2184060
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0052425   0.0022835   0.0082015
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.0609756   0.0091733   0.1127779
0-6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0032413   0.0022256   0.0042570
0-6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0719428   0.0598084   0.0840772
6-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1488688   0.1098974   0.1878403
6-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.4633864   0.3045872   0.6221857
6-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0977159   0.0764869   0.1189449
6-24 months   COHORTS          GUATEMALA                      Low birthweight              NA                0.2232928   0.1229367   0.3236489
6-24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.0565533   0.0501766   0.0629300
6-24 months   COHORTS          INDIA                          Low birthweight              NA                0.1898149   0.1678465   0.2117833
6-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1677986   0.1532053   0.1823920
6-24 months   COHORTS          PHILIPPINES                    Low birthweight              NA                0.4077383   0.3478991   0.4675775
6-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.3564674   0.2957522   0.4171825
6-24 months   EE               PAKISTAN                       Low birthweight              NA                0.5469317   0.4615527   0.6323108
6-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.2375150   0.1965855   0.2784445
6-24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                0.5232400   0.4480879   0.5983921
6-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.1073603   0.0741506   0.1405699
6-24 months   IRC              INDIA                          Low birthweight              NA                0.3858935   0.2678116   0.5039755
6-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.0424828   0.0378832   0.0470823
6-24 months   JiVitA-3         BANGLADESH                     Low birthweight              NA                0.1613357   0.1513146   0.1713568
6-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.1024741   0.0902408   0.1147074
6-24 months   JiVitA-4         BANGLADESH                     Low birthweight              NA                0.2788130   0.2502826   0.3073435
6-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.1350718   0.1162255   0.1539182
6-24 months   Keneba           GAMBIA                         Low birthweight              NA                0.3243068   0.2625886   0.3860249
6-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.1032801   0.0595724   0.1469878
6-24 months   MAL-ED           BANGLADESH                     Low birthweight              NA                0.2815704   0.1530385   0.4101022
6-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.1712656   0.1177907   0.2247404
6-24 months   MAL-ED           INDIA                          Low birthweight              NA                0.2990441   0.1402966   0.4577916
6-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1480472   0.1114447   0.1846496
6-24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.3641036   0.2877825   0.4404247
6-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0558461   0.0368081   0.0748840
6-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.1706507   0.1120556   0.2292457
6-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0863349   0.0609028   0.1117671
6-24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                0.2331208   0.1635234   0.3027181
6-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.1756081   0.1447416   0.2064746
6-24 months   SAS-CompFeed     INDIA                          Low birthweight              NA                0.3856000   0.3184871   0.4527129
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0507531   0.0409618   0.0605443
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.2009346   0.1025622   0.2993070
6-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0328402   0.0292299   0.0364504
6-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0969274   0.0814460   0.1124089


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.2273973   0.1843378   0.2704567
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1097955   0.0896809   0.1299101
0-24 months   COHORTS          INDIA                          NA                   NA                0.0904114   0.0835737   0.0972490
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1832722   0.1694278   0.1971167
0-24 months   EE               PAKISTAN                       NA                   NA                0.4470899   0.3969017   0.4972782
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.2934307   0.2593074   0.3275539
0-24 months   IRC              INDIA                          NA                   NA                0.1806931   0.1431275   0.2182586
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0900373   0.0858293   0.0942453
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1645963   0.1519758   0.1772167
0-24 months   Keneba           GAMBIA                         NA                   NA                0.1651495   0.1465863   0.1837128
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1461538   0.1031316   0.1891761
0-24 months   MAL-ED           INDIA                          NA                   NA                0.2033195   0.1524012   0.2542378
0-24 months   MAL-ED           NEPAL                          NA                   NA                0.0815451   0.0463297   0.1167604
0-24 months   MAL-ED           PERU                           NA                   NA                0.0401338   0.0178494   0.0624181
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.0677419   0.0397221   0.0957618
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2205638   0.1874426   0.2536851
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2328676   0.1923832   0.2733520
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0489245   0.0402400   0.0576090
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0424552   0.0391029   0.0458075
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.0831025   0.0545881   0.1116169
0-6 months    COHORTS          INDIA                          NA                   NA                0.0269983   0.0230857   0.0309109
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0236667   0.0182263   0.0291070
0-6 months    EE               PAKISTAN                       NA                   NA                0.1481481   0.1122884   0.1840079
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.0525547   0.0358322   0.0692773
0-6 months    IRC              INDIA                          NA                   NA                0.0570720   0.0343950   0.0797490
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0382613   0.0355749   0.0409477
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.0277653   0.0218336   0.0336971
0-6 months    Keneba           GAMBIA                         NA                   NA                0.0266753   0.0186172   0.0347335
0-6 months    MAL-ED           INDIA                          NA                   NA                0.0663900   0.0348925   0.0978876
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.0732113   0.0523687   0.0940539
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.0709030   0.0481799   0.0936261
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0071700   0.0037732   0.0105668
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120997   0.0102756   0.0139237
6-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1835616   0.1437921   0.2233311
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1090909   0.0878048   0.1303770
6-24 months   COHORTS          INDIA                          NA                   NA                0.0837039   0.0768626   0.0905453
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1902351   0.1756031   0.2048671
6-24 months   EE               PAKISTAN                       NA                   NA                0.4204852   0.3701867   0.4707837
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.3242784   0.2864427   0.3621142
6-24 months   IRC              INDIA                          NA                   NA                0.1534653   0.1182750   0.1886557
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0904706   0.0854589   0.0954824
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1486997   0.1368826   0.1605168
6-24 months   Keneba           GAMBIA                         NA                   NA                0.1622539   0.1434197   0.1810881
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1434599   0.0987369   0.1881829
6-24 months   MAL-ED           INDIA                          NA                   NA                0.1902655   0.1389784   0.2415526
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2126437   0.1775086   0.2477788
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2269761   0.1910133   0.2629388
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0555834   0.0455321   0.0656347
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0411022   0.0373541   0.0448504


### Parameter: RR


agecat        studyid          country                        intervention_level           baseline_level                 estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  ---------------------------  ---------------------------  ----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     3.488549    2.4590407    4.949074
0-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     2.072062    1.2903544    3.327336
0-24 months   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   COHORTS          INDIA                          Low birthweight              Normal or high birthweight     4.175645    3.6031026    4.839166
0-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight     2.592019    2.2069423    3.044285
0-24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight     1.569664    1.2631084    1.950619
0-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     2.355278    1.8863780    2.940733
0-24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight     3.919529    2.6472155    5.803347
0-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight     5.464057    4.9010860    6.091694
0-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight     3.070792    2.6419514    3.569243
0-24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     2.626081    2.0980947    3.286936
0-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     2.725953    1.5265596    4.867691
0-24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     1.713807    0.9494772    3.093422
0-24 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     4.022556    1.6209628    9.982314
0-24 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    11.848740    4.1890056   33.514548
0-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     4.531250    1.8467195   11.118216
0-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     2.942223    2.1798085    3.971300
0-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     3.883188    2.5035029    6.023219
0-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     3.356980    2.2922227    4.916327
0-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     2.424475    1.9999979    2.939042
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     4.303381    2.6519388    6.983227
0-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     4.890149    4.1855793    5.713320
0-6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    12.937070    6.5219658   25.662169
0-6 months    COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    COHORTS          INDIA                          Low birthweight              Normal or high birthweight    18.535756   12.5640806   27.345755
0-6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight     7.138677    4.5227081   11.267743
0-6 months    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    EE               PAKISTAN                       Low birthweight              Normal or high birthweight     1.738575    1.0844676    2.787214
0-6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     8.026442    3.7191997   17.321946
0-6 months    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    IRC              INDIA                          Low birthweight              Normal or high birthweight     9.237132    4.0743311   20.941993
0-6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    19.819437   15.0419957   26.114226
0-6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight     9.610315    5.7298048   16.118901
0-6 months    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     8.861428    4.7189062   16.640489
0-6 months    MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     2.588384    0.9540245    7.022599
0-6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    10.693820    5.0694818   22.558083
0-6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    15.833333    6.1537207   40.738678
0-6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     4.796215    3.0031819    7.659768
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    11.631098    4.1942654   32.254142
0-6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    22.195521   15.5494540   31.682215
6-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     3.112716    2.0233673    4.788554
6-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     2.285122    1.3861787    3.767034
6-24 months   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   COHORTS          INDIA                          Low birthweight              Normal or high birthweight     3.356389    2.8591315    3.940128
6-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight     2.429926    2.0508427    2.879080
6-24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight     1.534311    1.2186083    1.931802
6-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     2.202977    1.7626762    2.753261
6-24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight     3.594379    2.3267900    5.552526
6-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight     3.797675    3.3593120    4.293241
6-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight     2.720815    2.3252069    3.183732
6-24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     2.400995    1.9004586    3.033361
6-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     2.726279    1.4616512    5.085069
6-24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     1.746084    0.9426074    3.234443
6-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     2.459375    1.7773994    3.403021
6-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     3.055733    1.8827639    4.959467
6-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     2.700191    1.7781710    4.100298
6-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     2.195798    1.8064041    2.669132
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     3.959064    2.3391020    6.700943
6-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     2.951490    2.4317349    3.582337


### Parameter: PAR


agecat        studyid          country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0530726    0.0297236   0.0764215
0-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0099883    0.0017542   0.0182224
0-24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.0360356    0.0310636   0.0410076
0-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0240011    0.0178875   0.0301148
0-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.0750337    0.0371601   0.1129073
0-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0843535    0.0591771   0.1095298
0-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.0612919    0.0363631   0.0862207
0-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.0584836    0.0547995   0.0621677
0-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.0574007    0.0483380   0.0664633
0-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.0324814    0.0224089   0.0425539
0-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.0420431    0.0125441   0.0715421
0-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.0240926   -0.0015680   0.0497532
0-24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.0161245   -0.0016978   0.0339468
0-24 months   MAL-ED           PERU                           Normal or high birthweight   NA                0.0153111    0.0010506   0.0295716
0-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.0125695   -0.0009119   0.0260510
0-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0831054    0.0574005   0.1088104
0-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0382250    0.0225919   0.0538580
0-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0450438    0.0265598   0.0635279
0-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.0604032    0.0387774   0.0820291
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0048073    0.0017230   0.0078915
0-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0143469    0.0121502   0.0165436
0-6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0485481    0.0260618   0.0710344
0-6 months    COHORTS          INDIA                          Normal or high birthweight   NA                0.0212654    0.0176809   0.0248500
0-6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0089825    0.0053810   0.0125840
0-6 months    EE               PAKISTAN                       Normal or high birthweight   NA                0.0291220    0.0010002   0.0572437
0-6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0357833    0.0207029   0.0508636
0-6 months    IRC              INDIA                          Normal or high birthweight   NA                0.0331914    0.0148417   0.0515411
0-6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.0339842    0.0313615   0.0366070
0-6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.0191971    0.0140390   0.0243552
0-6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                0.0143592    0.0080332   0.0206851
0-6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                0.0127315   -0.0052142   0.0306772
0-6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0542988    0.0351779   0.0734197
0-6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0334586    0.0196592   0.0472581
0-6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.0351306    0.0189965   0.0512647
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0019275    0.0000868   0.0037682
0-6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0088584    0.0072583   0.0104584
6-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0346928    0.0141836   0.0552020
6-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0113750    0.0023874   0.0203626
6-24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.0271506    0.0224646   0.0318367
6-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0224364    0.0162332   0.0286396
6-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.0640178    0.0262675   0.1017681
6-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0867635    0.0593905   0.1141365
6-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.0461051    0.0234803   0.0687298
6-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.0479879    0.0435713   0.0524044
6-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.0462256    0.0380327   0.0544185
6-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.0271821    0.0175095   0.0368547
6-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.0401798    0.0099189   0.0704407
6-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.0189999   -0.0061977   0.0441976
6-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0645965    0.0379761   0.0912169
6-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0304553    0.0155390   0.0453717
6-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0358149    0.0174070   0.0542229
6-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.0513680    0.0315816   0.0711543
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0048303    0.0014429   0.0082178
6-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0082621    0.0061704   0.0103538


### Parameter: PAF


agecat        studyid          country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.2333914    0.1296920   0.3247346
0-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0909722    0.0143640   0.1616260
0-24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.3985741    0.3493564   0.4440687
0-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1309589    0.0978760   0.1628286
0-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.1678269    0.0776854   0.2491585
0-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.2874732    0.1988928   0.3662591
0-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.3392045    0.2019147   0.4528772
0-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.6495482    0.6176879   0.6787534
0-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.3487361    0.2949495   0.3984195
0-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.1966786    0.1360310   0.2530690
0-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.2876631    0.0747974   0.4515539
0-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.1184961   -0.0151037   0.2345125
0-24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.1977373   -0.0342233   0.3776727
0-24 months   MAL-ED           PERU                           Normal or high birthweight   NA                0.3815012    0.0126056   0.6125755
0-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.1855501   -0.0227823   0.3514469
0-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3767863    0.2587319   0.4760394
0-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.4080917    0.2452504   0.5357992
0-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.3503410    0.2069496   0.4678058
0-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.2593887    0.1727555   0.3369493
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0982591    0.0353455   0.1570696
0-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.3379303    0.2915261   0.3812952
0-6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.5841951    0.3432077   0.7367604
0-6 months    COHORTS          INDIA                          Normal or high birthweight   NA                0.7876574    0.7063495   0.8464522
0-6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.3795424    0.2403576   0.4932252
0-6 months    EE               PAKISTAN                       Normal or high birthweight   NA                0.1965732   -0.0119874   0.3621515
0-6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.6808758    0.4166183   0.8254312
0-6 months    IRC              INDIA                          Normal or high birthweight   NA                0.5815704    0.2758198   0.7582324
0-6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.8882136    0.8553385   0.9136176
0-6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.6914055    0.5378170   0.7939549
0-6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                0.5382939    0.3255631   0.6839252
0-6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                0.1917683   -0.1099638   0.4114776
0-6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7416720    0.5209728   0.8606899
0-6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.7807018    0.5147381   0.9008953
0-6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.4954744    0.2876844   0.6426499
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2688305    0.0076893   0.4612485
0-6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.7321154    0.6476853   0.7963123
6-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1889982    0.0746224   0.2892372
6-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1042708    0.0200958   0.1812150
6-24 months   COHORTS          INDIA                          Normal or high birthweight   NA                0.3243650    0.2720815   0.3728932
6-24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1179406    0.0854748   0.1492538
6-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.1522475    0.0569240   0.2379359
6-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.2675586    0.1801836   0.3456213
6-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.3004266    0.1515326   0.4231918
6-24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.5304247    0.4869901   0.5701819
6-24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.3108657    0.2554285   0.3621752
6-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.1675281    0.1076865   0.2233564
6-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.2800770    0.0547408   0.4516962
6-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.0998601   -0.0410779   0.2217184
6-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3037781    0.1741193   0.4130812
6-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.3528948    0.1788263   0.4900651
6-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.2932048    0.1391240   0.4197080
6-24 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.2263144    0.1472357   0.2980599
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0869023    0.0258441   0.1441335
6-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2010128    0.1517575   0.2474080
