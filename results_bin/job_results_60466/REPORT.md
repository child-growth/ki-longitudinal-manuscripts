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

**Outcome Variable:** ever_swasted

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

agecat                        studyid          country                        birthwt                       ever_swasted   n_cell       n
----------------------------  ---------------  -----------------------------  ---------------------------  -------------  -------  ------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0      271     361
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1       50     361
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Low birthweight                          0       35     361
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Low birthweight                          1        5     361
0-24 months (no birth wast)   CMIN             BANGLADESH                     Normal or high birthweight               0       13      17
0-24 months (no birth wast)   CMIN             BANGLADESH                     Normal or high birthweight               1        0      17
0-24 months (no birth wast)   CMIN             BANGLADESH                     Low birthweight                          0        4      17
0-24 months (no birth wast)   CMIN             BANGLADESH                     Low birthweight                          1        0      17
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Normal or high birthweight               0      825     917
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Normal or high birthweight               1       13     917
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Low birthweight                          0       74     917
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Low birthweight                          1        5     917
0-24 months (no birth wast)   COHORTS          INDIA                          Normal or high birthweight               0     5070    6524
0-24 months (no birth wast)   COHORTS          INDIA                          Normal or high birthweight               1      243    6524
0-24 months (no birth wast)   COHORTS          INDIA                          Low birthweight                          0     1124    6524
0-24 months (no birth wast)   COHORTS          INDIA                          Low birthweight                          1       87    6524
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Normal or high birthweight               0     2494    2975
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Normal or high birthweight               1      210    2975
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Low birthweight                          0      233    2975
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Low birthweight                          1       38    2975
0-24 months (no birth wast)   CONTENT          PERU                           Normal or high birthweight               0        2       2
0-24 months (no birth wast)   CONTENT          PERU                           Normal or high birthweight               1        0       2
0-24 months (no birth wast)   CONTENT          PERU                           Low birthweight                          0        0       2
0-24 months (no birth wast)   CONTENT          PERU                           Low birthweight                          1        0       2
0-24 months (no birth wast)   EE               PAKISTAN                       Normal or high birthweight               0      203     376
0-24 months (no birth wast)   EE               PAKISTAN                       Normal or high birthweight               1       40     376
0-24 months (no birth wast)   EE               PAKISTAN                       Low birthweight                          0      107     376
0-24 months (no birth wast)   EE               PAKISTAN                       Low birthweight                          1       26     376
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Normal or high birthweight               0      380     659
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Normal or high birthweight               1       89     659
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Low birthweight                          0      148     659
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Low birthweight                          1       42     659
0-24 months (no birth wast)   IRC              INDIA                          Normal or high birthweight               0      277     403
0-24 months (no birth wast)   IRC              INDIA                          Normal or high birthweight               1       58     403
0-24 months (no birth wast)   IRC              INDIA                          Low birthweight                          0       51     403
0-24 months (no birth wast)   IRC              INDIA                          Low birthweight                          1       17     403
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Normal or high birthweight               0    12531   22227
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Normal or high birthweight               1      437   22227
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Low birthweight                          0     8860   22227
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Low birthweight                          1      399   22227
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     Normal or high birthweight               0     3204    4487
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     Normal or high birthweight               1      118    4487
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     Low birthweight                          0     1075    4487
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     Low birthweight                          1       90    4487
0-24 months (no birth wast)   Keneba           GAMBIA                         Normal or high birthweight               0     1128    1533
0-24 months (no birth wast)   Keneba           GAMBIA                         Normal or high birthweight               1      183    1533
0-24 months (no birth wast)   Keneba           GAMBIA                         Low birthweight                          0      179    1533
0-24 months (no birth wast)   Keneba           GAMBIA                         Low birthweight                          1       43    1533
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     Normal or high birthweight               0      196     260
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     Normal or high birthweight               1        9     260
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     Low birthweight                          0       52     260
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     Low birthweight                          1        3     260
0-24 months (no birth wast)   MAL-ED           BRAZIL                         Normal or high birthweight               0      217     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         Normal or high birthweight               1        4     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         Low birthweight                          0       12     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         Low birthweight                          1        0     233
0-24 months (no birth wast)   MAL-ED           INDIA                          Normal or high birthweight               0      190     236
0-24 months (no birth wast)   MAL-ED           INDIA                          Normal or high birthweight               1       12     236
0-24 months (no birth wast)   MAL-ED           INDIA                          Low birthweight                          0       34     236
0-24 months (no birth wast)   MAL-ED           INDIA                          Low birthweight                          1        0     236
0-24 months (no birth wast)   MAL-ED           NEPAL                          Normal or high birthweight               0      212     232
0-24 months (no birth wast)   MAL-ED           NEPAL                          Normal or high birthweight               1        1     232
0-24 months (no birth wast)   MAL-ED           NEPAL                          Low birthweight                          0       19     232
0-24 months (no birth wast)   MAL-ED           NEPAL                          Low birthweight                          1        0     232
0-24 months (no birth wast)   MAL-ED           PERU                           Normal or high birthweight               0      278     299
0-24 months (no birth wast)   MAL-ED           PERU                           Normal or high birthweight               1        4     299
0-24 months (no birth wast)   MAL-ED           PERU                           Low birthweight                          0       17     299
0-24 months (no birth wast)   MAL-ED           PERU                           Low birthweight                          1        0     299
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   Normal or high birthweight               0      276     306
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   Normal or high birthweight               1       11     306
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   Low birthweight                          0       18     306
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   Low birthweight                          1        1     306
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0      180     196
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1        6     196
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0       10     196
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1        0     196
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Normal or high birthweight               0      380     581
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Normal or high birthweight               1       31     581
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Low birthweight                          0      148     581
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Low birthweight                          1       22     581
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Normal or high birthweight               0      570     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Normal or high birthweight               1        9     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Low birthweight                          0      164     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Low birthweight                          1       11     754
0-24 months (no birth wast)   PROBIT           BELARUS                        Normal or high birthweight               0    16675   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        Normal or high birthweight               1      204   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        Low birthweight                          0        0   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        Low birthweight                          1        0   16879
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Normal or high birthweight               0      518     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Normal or high birthweight               1       10     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Low birthweight                          0      150     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Low birthweight                          1        9     687
0-24 months (no birth wast)   ResPak           PAKISTAN                       Normal or high birthweight               0       32      41
0-24 months (no birth wast)   ResPak           PAKISTAN                       Normal or high birthweight               1        3      41
0-24 months (no birth wast)   ResPak           PAKISTAN                       Low birthweight                          0        6      41
0-24 months (no birth wast)   ResPak           PAKISTAN                       Low birthweight                          1        0      41
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Normal or high birthweight               0     1025    1492
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Normal or high birthweight               1      107    1492
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Low birthweight                          0      296    1492
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Low birthweight                          1       64    1492
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     2171    2359
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1      108    2359
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0       70    2359
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1       10    2359
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0    11511   13593
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1      398   13593
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Low birthweight                          0     1605   13593
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Low birthweight                          1       79   13593
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0      279     344
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1       30     344
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Low birthweight                          0       35     344
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Low birthweight                          1        0     344
0-6 months (no birth wast)    CMIN             BANGLADESH                     Normal or high birthweight               0       13      17
0-6 months (no birth wast)    CMIN             BANGLADESH                     Normal or high birthweight               1        0      17
0-6 months (no birth wast)    CMIN             BANGLADESH                     Low birthweight                          0        4      17
0-6 months (no birth wast)    CMIN             BANGLADESH                     Low birthweight                          1        0      17
0-6 months (no birth wast)    COHORTS          GUATEMALA                      Normal or high birthweight               0      790     867
0-6 months (no birth wast)    COHORTS          GUATEMALA                      Normal or high birthweight               1        2     867
0-6 months (no birth wast)    COHORTS          GUATEMALA                      Low birthweight                          0       75     867
0-6 months (no birth wast)    COHORTS          GUATEMALA                      Low birthweight                          1        0     867
0-6 months (no birth wast)    COHORTS          INDIA                          Normal or high birthweight               0     4943    6053
0-6 months (no birth wast)    COHORTS          INDIA                          Normal or high birthweight               1       97    6053
0-6 months (no birth wast)    COHORTS          INDIA                          Low birthweight                          0      992    6053
0-6 months (no birth wast)    COHORTS          INDIA                          Low birthweight                          1       21    6053
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Normal or high birthweight               0     2631    2954
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Normal or high birthweight               1       60    2954
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Low birthweight                          0      257    2954
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Low birthweight                          1        6    2954
0-6 months (no birth wast)    CONTENT          PERU                           Normal or high birthweight               0        2       2
0-6 months (no birth wast)    CONTENT          PERU                           Normal or high birthweight               1        0       2
0-6 months (no birth wast)    CONTENT          PERU                           Low birthweight                          0        0       2
0-6 months (no birth wast)    CONTENT          PERU                           Low birthweight                          1        0       2
0-6 months (no birth wast)    EE               PAKISTAN                       Normal or high birthweight               0      229     374
0-6 months (no birth wast)    EE               PAKISTAN                       Normal or high birthweight               1       13     374
0-6 months (no birth wast)    EE               PAKISTAN                       Low birthweight                          0      125     374
0-6 months (no birth wast)    EE               PAKISTAN                       Low birthweight                          1        7     374
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Normal or high birthweight               0      439     641
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Normal or high birthweight               1       24     641
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Low birthweight                          0      171     641
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Low birthweight                          1        7     641
0-6 months (no birth wast)    IRC              INDIA                          Normal or high birthweight               0      273     384
0-6 months (no birth wast)    IRC              INDIA                          Normal or high birthweight               1       51     384
0-6 months (no birth wast)    IRC              INDIA                          Low birthweight                          0       55     384
0-6 months (no birth wast)    IRC              INDIA                          Low birthweight                          1        5     384
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Normal or high birthweight               0    12683   22042
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Normal or high birthweight               1      252   22042
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Low birthweight                          0     8972   22042
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Low birthweight                          1      135   22042
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     Normal or high birthweight               0     3270    4372
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     Normal or high birthweight               1       16    4372
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     Low birthweight                          0     1081    4372
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     Low birthweight                          1        5    4372
0-6 months (no birth wast)    Keneba           GAMBIA                         Normal or high birthweight               0     1251    1519
0-6 months (no birth wast)    Keneba           GAMBIA                         Normal or high birthweight               1       52    1519
0-6 months (no birth wast)    Keneba           GAMBIA                         Low birthweight                          0      202    1519
0-6 months (no birth wast)    Keneba           GAMBIA                         Low birthweight                          1       14    1519
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     Normal or high birthweight               0      198     259
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     Normal or high birthweight               1        7     259
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     Low birthweight                          0       54     259
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     Low birthweight                          1        0     259
0-6 months (no birth wast)    MAL-ED           BRAZIL                         Normal or high birthweight               0      218     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         Normal or high birthweight               1        3     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         Low birthweight                          0       12     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         Low birthweight                          1        0     233
0-6 months (no birth wast)    MAL-ED           INDIA                          Normal or high birthweight               0      194     234
0-6 months (no birth wast)    MAL-ED           INDIA                          Normal or high birthweight               1        7     234
0-6 months (no birth wast)    MAL-ED           INDIA                          Low birthweight                          0       33     234
0-6 months (no birth wast)    MAL-ED           INDIA                          Low birthweight                          1        0     234
0-6 months (no birth wast)    MAL-ED           NEPAL                          Normal or high birthweight               0      210     230
0-6 months (no birth wast)    MAL-ED           NEPAL                          Normal or high birthweight               1        1     230
0-6 months (no birth wast)    MAL-ED           NEPAL                          Low birthweight                          0       19     230
0-6 months (no birth wast)    MAL-ED           NEPAL                          Low birthweight                          1        0     230
0-6 months (no birth wast)    MAL-ED           PERU                           Normal or high birthweight               0      281     299
0-6 months (no birth wast)    MAL-ED           PERU                           Normal or high birthweight               1        1     299
0-6 months (no birth wast)    MAL-ED           PERU                           Low birthweight                          0       17     299
0-6 months (no birth wast)    MAL-ED           PERU                           Low birthweight                          1        0     299
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   Normal or high birthweight               0      284     305
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   Normal or high birthweight               1        2     305
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   Low birthweight                          0       18     305
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   Low birthweight                          1        1     305
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0      183     196
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1        3     196
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0       10     196
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1        0     196
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     Normal or high birthweight               0      400     564
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     Normal or high birthweight               1        7     564
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     Low birthweight                          0      156     564
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     Low birthweight                          1        1     564
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Normal or high birthweight               0      576     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Normal or high birthweight               1        1     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Low birthweight                          0      172     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Low birthweight                          1        0     749
0-6 months (no birth wast)    PROBIT           BELARUS                        Normal or high birthweight               0    16501   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        Normal or high birthweight               1      192   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        Low birthweight                          0        0   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        Low birthweight                          1        0   16693
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     Normal or high birthweight               0      523     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     Normal or high birthweight               1        5     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     Low birthweight                          0      154     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     Low birthweight                          1        1     683
0-6 months (no birth wast)    ResPak           PAKISTAN                       Normal or high birthweight               0       33      41
0-6 months (no birth wast)    ResPak           PAKISTAN                       Normal or high birthweight               1        2      41
0-6 months (no birth wast)    ResPak           PAKISTAN                       Low birthweight                          0        6      41
0-6 months (no birth wast)    ResPak           PAKISTAN                       Low birthweight                          1        0      41
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Normal or high birthweight               0     1093    1465
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Normal or high birthweight               1       33    1465
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Low birthweight                          0      326    1465
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Low birthweight                          1       13    1465
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     2235    2351
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1       37    2351
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0       76    2351
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1        3    2351
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0    11656   13334
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1      121   13334
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Low birthweight                          0     1546   13334
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Low birthweight                          1       11   13334
6-24 months                   CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0      297     365
6-24 months                   CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1       25     365
6-24 months                   CMC-V-BCS-2002   INDIA                          Low birthweight                          0       38     365
6-24 months                   CMC-V-BCS-2002   INDIA                          Low birthweight                          1        5     365
6-24 months                   CMIN             BANGLADESH                     Normal or high birthweight               0        9      12
6-24 months                   CMIN             BANGLADESH                     Normal or high birthweight               1        0      12
6-24 months                   CMIN             BANGLADESH                     Low birthweight                          0        3      12
6-24 months                   CMIN             BANGLADESH                     Low birthweight                          1        0      12
6-24 months                   COHORTS          GUATEMALA                      Normal or high birthweight               0      743     827
6-24 months                   COHORTS          GUATEMALA                      Normal or high birthweight               1       11     827
6-24 months                   COHORTS          GUATEMALA                      Low birthweight                          0       68     827
6-24 months                   COHORTS          GUATEMALA                      Low birthweight                          1        5     827
6-24 months                   COHORTS          INDIA                          Normal or high birthweight               0     4878    6299
6-24 months                   COHORTS          INDIA                          Normal or high birthweight               1      156    6299
6-24 months                   COHORTS          INDIA                          Low birthweight                          0     1181    6299
6-24 months                   COHORTS          INDIA                          Low birthweight                          1       84    6299
6-24 months                   COHORTS          PHILIPPINES                    Normal or high birthweight               0     2357    2766
6-24 months                   COHORTS          PHILIPPINES                    Normal or high birthweight               1      155    2766
6-24 months                   COHORTS          PHILIPPINES                    Low birthweight                          0      222    2766
6-24 months                   COHORTS          PHILIPPINES                    Low birthweight                          1       32    2766
6-24 months                   CONTENT          PERU                           Normal or high birthweight               0        2       2
6-24 months                   CONTENT          PERU                           Normal or high birthweight               1        0       2
6-24 months                   CONTENT          PERU                           Low birthweight                          0        0       2
6-24 months                   CONTENT          PERU                           Low birthweight                          1        0       2
6-24 months                   EE               PAKISTAN                       Normal or high birthweight               0      210     373
6-24 months                   EE               PAKISTAN                       Normal or high birthweight               1       32     373
6-24 months                   EE               PAKISTAN                       Low birthweight                          0      112     373
6-24 months                   EE               PAKISTAN                       Low birthweight                          1       19     373
6-24 months                   GMS-Nepal        NEPAL                          Normal or high birthweight               0      340     589
6-24 months                   GMS-Nepal        NEPAL                          Normal or high birthweight               1       72     589
6-24 months                   GMS-Nepal        NEPAL                          Low birthweight                          0      137     589
6-24 months                   GMS-Nepal        NEPAL                          Low birthweight                          1       40     589
6-24 months                   IRC              INDIA                          Normal or high birthweight               0      323     404
6-24 months                   IRC              INDIA                          Normal or high birthweight               1       12     404
6-24 months                   IRC              INDIA                          Low birthweight                          0       56     404
6-24 months                   IRC              INDIA                          Low birthweight                          1       13     404
6-24 months                   JiVitA-3         BANGLADESH                     Normal or high birthweight               0     8385   14528
6-24 months                   JiVitA-3         BANGLADESH                     Normal or high birthweight               1      193   14528
6-24 months                   JiVitA-3         BANGLADESH                     Low birthweight                          0     5661   14528
6-24 months                   JiVitA-3         BANGLADESH                     Low birthweight                          1      289   14528
6-24 months                   JiVitA-4         BANGLADESH                     Normal or high birthweight               0     3214    4499
6-24 months                   JiVitA-4         BANGLADESH                     Normal or high birthweight               1      107    4499
6-24 months                   JiVitA-4         BANGLADESH                     Low birthweight                          0     1086    4499
6-24 months                   JiVitA-4         BANGLADESH                     Low birthweight                          1       92    4499
6-24 months                   Keneba           GAMBIA                         Normal or high birthweight               0     1131    1473
6-24 months                   Keneba           GAMBIA                         Normal or high birthweight               1      138    1473
6-24 months                   Keneba           GAMBIA                         Low birthweight                          0      174    1473
6-24 months                   Keneba           GAMBIA                         Low birthweight                          1       30    1473
6-24 months                   MAL-ED           BANGLADESH                     Normal or high birthweight               0      185     238
6-24 months                   MAL-ED           BANGLADESH                     Normal or high birthweight               1        2     238
6-24 months                   MAL-ED           BANGLADESH                     Low birthweight                          0       48     238
6-24 months                   MAL-ED           BANGLADESH                     Low birthweight                          1        3     238
6-24 months                   MAL-ED           BRAZIL                         Normal or high birthweight               0      196     207
6-24 months                   MAL-ED           BRAZIL                         Normal or high birthweight               1        1     207
6-24 months                   MAL-ED           BRAZIL                         Low birthweight                          0       10     207
6-24 months                   MAL-ED           BRAZIL                         Low birthweight                          1        0     207
6-24 months                   MAL-ED           INDIA                          Normal or high birthweight               0      187     226
6-24 months                   MAL-ED           INDIA                          Normal or high birthweight               1        5     226
6-24 months                   MAL-ED           INDIA                          Low birthweight                          0       34     226
6-24 months                   MAL-ED           INDIA                          Low birthweight                          1        0     226
6-24 months                   MAL-ED           NEPAL                          Normal or high birthweight               0      209     228
6-24 months                   MAL-ED           NEPAL                          Normal or high birthweight               1        0     228
6-24 months                   MAL-ED           NEPAL                          Low birthweight                          0       19     228
6-24 months                   MAL-ED           NEPAL                          Low birthweight                          1        0     228
6-24 months                   MAL-ED           PERU                           Normal or high birthweight               0      248     267
6-24 months                   MAL-ED           PERU                           Normal or high birthweight               1        3     267
6-24 months                   MAL-ED           PERU                           Low birthweight                          0       16     267
6-24 months                   MAL-ED           PERU                           Low birthweight                          1        0     267
6-24 months                   MAL-ED           SOUTH AFRICA                   Normal or high birthweight               0      233     258
6-24 months                   MAL-ED           SOUTH AFRICA                   Normal or high birthweight               1       10     258
6-24 months                   MAL-ED           SOUTH AFRICA                   Low birthweight                          0       15     258
6-24 months                   MAL-ED           SOUTH AFRICA                   Low birthweight                          1        0     258
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0      173     184
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1        3     184
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0        8     184
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1        0     184
6-24 months                   NIH-Birth        BANGLADESH                     Normal or high birthweight               0      340     522
6-24 months                   NIH-Birth        BANGLADESH                     Normal or high birthweight               1       26     522
6-24 months                   NIH-Birth        BANGLADESH                     Low birthweight                          0      134     522
6-24 months                   NIH-Birth        BANGLADESH                     Low birthweight                          1       22     522
6-24 months                   NIH-Crypto       BANGLADESH                     Normal or high birthweight               0      550     730
6-24 months                   NIH-Crypto       BANGLADESH                     Normal or high birthweight               1        9     730
6-24 months                   NIH-Crypto       BANGLADESH                     Low birthweight                          0      160     730
6-24 months                   NIH-Crypto       BANGLADESH                     Low birthweight                          1       11     730
6-24 months                   PROBIT           BELARUS                        Normal or high birthweight               0    16586   16598
6-24 months                   PROBIT           BELARUS                        Normal or high birthweight               1       12   16598
6-24 months                   PROBIT           BELARUS                        Low birthweight                          0        0   16598
6-24 months                   PROBIT           BELARUS                        Low birthweight                          1        0   16598
6-24 months                   PROVIDE          BANGLADESH                     Normal or high birthweight               0      462     615
6-24 months                   PROVIDE          BANGLADESH                     Normal or high birthweight               1        5     615
6-24 months                   PROVIDE          BANGLADESH                     Low birthweight                          0      140     615
6-24 months                   PROVIDE          BANGLADESH                     Low birthweight                          1        8     615
6-24 months                   ResPak           PAKISTAN                       Normal or high birthweight               0       26      32
6-24 months                   ResPak           PAKISTAN                       Normal or high birthweight               1        1      32
6-24 months                   ResPak           PAKISTAN                       Low birthweight                          0        5      32
6-24 months                   ResPak           PAKISTAN                       Low birthweight                          1        0      32
6-24 months                   SAS-CompFeed     INDIA                          Normal or high birthweight               0      968    1379
6-24 months                   SAS-CompFeed     INDIA                          Normal or high birthweight               1       78    1379
6-24 months                   SAS-CompFeed     INDIA                          Low birthweight                          0      278    1379
6-24 months                   SAS-CompFeed     INDIA                          Low birthweight                          1       55    1379
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     1860    1998
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1       73    1998
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0       57    1998
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1        8    1998
6-24 months                   ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0     9097   10780
6-24 months                   ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1      282   10780
6-24 months                   ZVITAMBO         ZIMBABWE                       Low birthweight                          0     1328   10780
6-24 months                   ZVITAMBO         ZIMBABWE                       Low birthweight                          1       73   10780


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
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

* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/dfd3e129-8597-4a23-b8a1-27988e87bdbd/caa9b305-d4d6-4399-be7a-00e7f14ed3a7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dfd3e129-8597-4a23-b8a1-27988e87bdbd/caa9b305-d4d6-4399-be7a-00e7f14ed3a7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dfd3e129-8597-4a23-b8a1-27988e87bdbd/caa9b305-d4d6-4399-be7a-00e7f14ed3a7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dfd3e129-8597-4a23-b8a1-27988e87bdbd/caa9b305-d4d6-4399-be7a-00e7f14ed3a7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid          country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1557632    0.1160384   0.1954881
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.1250000    0.0223688   0.2276312
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0155131    0.0071413   0.0238849
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Low birthweight              NA                0.0632911    0.0095700   0.1170123
0-24 months (no birth wast)   COHORTS          INDIA                          Normal or high birthweight   NA                0.0458362    0.0402225   0.0514498
0-24 months (no birth wast)   COHORTS          INDIA                          Low birthweight              NA                0.0706859    0.0560713   0.0853006
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0777518    0.0676502   0.0878534
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Low birthweight              NA                0.1351746    0.0948234   0.1755258
0-24 months (no birth wast)   EE               PAKISTAN                       Normal or high birthweight   NA                0.1606498    0.1139018   0.2073979
0-24 months (no birth wast)   EE               PAKISTAN                       Low birthweight              NA                0.1870262    0.1190982   0.2549541
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1888035    0.1530233   0.2245837
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Low birthweight              NA                0.2274351    0.1653741   0.2894961
0-24 months (no birth wast)   IRC              INDIA                          Normal or high birthweight   NA                0.1732574    0.1326249   0.2138899
0-24 months (no birth wast)   IRC              INDIA                          Low birthweight              NA                0.2462874    0.1410488   0.3515260
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.0334645    0.0298469   0.0370821
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Low birthweight              NA                0.0430812    0.0382030   0.0479595
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.0358174    0.0289476   0.0426871
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     Low birthweight              NA                0.0760469    0.0594943   0.0925996
0-24 months (no birth wast)   Keneba           GAMBIA                         Normal or high birthweight   NA                0.1389556    0.1201861   0.1577250
0-24 months (no birth wast)   Keneba           GAMBIA                         Low birthweight              NA                0.2066490    0.1517563   0.2615417
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0762855    0.0506031   0.1019679
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1249421    0.0756512   0.1742329
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0155440    0.0054613   0.0256267
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.0628571    0.0268741   0.0988402
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0189394    0.0073041   0.0305747
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Low birthweight              NA                0.0566038    0.0206590   0.0925485
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.0953483    0.0729147   0.1177820
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Low birthweight              NA                0.1723192    0.1300045   0.2146340
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0473657    0.0386395   0.0560920
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.1249623    0.0477813   0.2021433
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0334227    0.0301952   0.0366502
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0469064    0.0367730   0.0570398
0-6 months (no birth wast)    COHORTS          INDIA                          Normal or high birthweight   NA                0.0191341    0.0153532   0.0229150
0-6 months (no birth wast)    COHORTS          INDIA                          Low birthweight              NA                0.0209421    0.0121617   0.0297225
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0222965    0.0167171   0.0278759
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Low birthweight              NA                0.0228137    0.0047656   0.0408617
0-6 months (no birth wast)    EE               PAKISTAN                       Normal or high birthweight   NA                0.0537190    0.0252747   0.0821633
0-6 months (no birth wast)    EE               PAKISTAN                       Low birthweight              NA                0.0530303    0.0147502   0.0913104
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0518359    0.0316264   0.0720453
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Low birthweight              NA                0.0393258    0.0107497   0.0679020
0-6 months (no birth wast)    IRC              INDIA                          Normal or high birthweight   NA                0.1574074    0.1177008   0.1971141
0-6 months (no birth wast)    IRC              INDIA                          Low birthweight              NA                0.0833333    0.0133082   0.1533584
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.0194958    0.0165912   0.0224005
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Low birthweight              NA                0.0144229    0.0116328   0.0172131
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.0048691    0.0015684   0.0081699
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     Low birthweight              NA                0.0046041   -0.0002959   0.0095040
0-6 months (no birth wast)    Keneba           GAMBIA                         Normal or high birthweight   NA                0.0399050    0.0292141   0.0505960
0-6 months (no birth wast)    Keneba           GAMBIA                         Low birthweight              NA                0.0671996    0.0320583   0.1023409
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.0299952    0.0188069   0.0411835
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Low birthweight              NA                0.0356968    0.0163237   0.0550700
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0102467    0.0084275   0.0120660
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0071153    0.0026993   0.0115312
6-24 months                   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0776398    0.0483707   0.1069088
6-24 months                   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.1162791    0.0203350   0.2122231
6-24 months                   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0145889    0.0060255   0.0231522
6-24 months                   COHORTS          GUATEMALA                      Low birthweight              NA                0.0684932    0.0105148   0.1264715
6-24 months                   COHORTS          INDIA                          Normal or high birthweight   NA                0.0310995    0.0262969   0.0359021
6-24 months                   COHORTS          INDIA                          Low birthweight              NA                0.0643881    0.0506425   0.0781338
6-24 months                   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0618129    0.0523873   0.0712385
6-24 months                   COHORTS          PHILIPPINES                    Low birthweight              NA                0.1238692    0.0833842   0.1643541
6-24 months                   EE               PAKISTAN                       Normal or high birthweight   NA                0.1317193    0.0888538   0.1745847
6-24 months                   EE               PAKISTAN                       Low birthweight              NA                0.1424403    0.0812182   0.2036623
6-24 months                   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1751172    0.1379866   0.2122477
6-24 months                   GMS-Nepal        NEPAL                          Low birthweight              NA                0.2339989    0.1695785   0.2984193
6-24 months                   IRC              INDIA                          Normal or high birthweight   NA                0.0350041    0.0151534   0.0548548
6-24 months                   IRC              INDIA                          Low birthweight              NA                0.1681679    0.0716820   0.2646538
6-24 months                   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.0222959    0.0190484   0.0255433
6-24 months                   JiVitA-3         BANGLADESH                     Low birthweight              NA                0.0493024    0.0430149   0.0555899
6-24 months                   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.0321509    0.0255606   0.0387412
6-24 months                   JiVitA-4         BANGLADESH                     Low birthweight              NA                0.0783465    0.0607969   0.0958960
6-24 months                   Keneba           GAMBIA                         Normal or high birthweight   NA                0.1083380    0.0912121   0.1254638
6-24 months                   Keneba           GAMBIA                         Low birthweight              NA                0.1438547    0.0958249   0.1918845
6-24 months                   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0723688    0.0459077   0.0988298
6-24 months                   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1363397    0.0822824   0.1903969
6-24 months                   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0161002    0.0056595   0.0265409
6-24 months                   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.0643275    0.0275309   0.1011241
6-24 months                   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0107066    0.0013648   0.0200485
6-24 months                   PROVIDE          BANGLADESH                     Low birthweight              NA                0.0540541    0.0175940   0.0905142
6-24 months                   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.0753064    0.0514236   0.0991892
6-24 months                   SAS-CompFeed     INDIA                          Low birthweight              NA                0.1612674    0.1193734   0.2031615
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0377651    0.0292650   0.0462653
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.1230769    0.0431912   0.2029626
6-24 months                   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0299854    0.0265354   0.0334354
6-24 months                   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0525057    0.0407657   0.0642458


### Parameter: E(Y)


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1523546   0.1152325   0.1894766
0-24 months (no birth wast)   COHORTS          GUATEMALA                      NA                   NA                0.0196292   0.0106457   0.0286128
0-24 months (no birth wast)   COHORTS          INDIA                          NA                   NA                0.0505825   0.0452644   0.0559005
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    NA                   NA                0.0833613   0.0734265   0.0932961
0-24 months (no birth wast)   EE               PAKISTAN                       NA                   NA                0.1755319   0.1370287   0.2140352
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          NA                   NA                0.1987860   0.1682929   0.2292792
0-24 months (no birth wast)   IRC              INDIA                          NA                   NA                0.1861042   0.1480592   0.2241492
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     NA                   NA                0.0376119   0.0347245   0.0404993
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     NA                   NA                0.0463561   0.0396916   0.0530207
0-24 months (no birth wast)   Keneba           GAMBIA                         NA                   NA                0.1474234   0.1296705   0.1651762
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     NA                   NA                0.0912220   0.0677898   0.1146542
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     NA                   NA                0.0265252   0.0150478   0.0380026
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     NA                   NA                0.0276565   0.0153851   0.0399279
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          NA                   NA                0.1146113   0.0915227   0.1376999
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0500212   0.0412227   0.0588197
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0350916   0.0319981   0.0381851
0-6 months (no birth wast)    COHORTS          INDIA                          NA                   NA                0.0194945   0.0160113   0.0229777
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    NA                   NA                0.0223426   0.0170120   0.0276732
0-6 months (no birth wast)    EE               PAKISTAN                       NA                   NA                0.0534759   0.0306442   0.0763077
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          NA                   NA                0.0483619   0.0317414   0.0649825
0-6 months (no birth wast)    IRC              INDIA                          NA                   NA                0.1458333   0.1104867   0.1811800
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     NA                   NA                0.0175574   0.0154912   0.0196236
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     NA                   NA                0.0048033   0.0020515   0.0075551
0-6 months (no birth wast)    Keneba           GAMBIA                         NA                   NA                0.0434496   0.0331941   0.0537052
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          NA                   NA                0.0313993   0.0187576   0.0440411
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0098995   0.0082190   0.0115800
6-24 months                   CMC-V-BCS-2002   INDIA                          NA                   NA                0.0821918   0.0539763   0.1104073
6-24 months                   COHORTS          GUATEMALA                      NA                   NA                0.0193470   0.0099536   0.0287404
6-24 months                   COHORTS          INDIA                          NA                   NA                0.0381013   0.0333732   0.0428293
6-24 months                   COHORTS          PHILIPPINES                    NA                   NA                0.0676067   0.0582484   0.0769649
6-24 months                   EE               PAKISTAN                       NA                   NA                0.1367292   0.1018167   0.1716417
6-24 months                   GMS-Nepal        NEPAL                          NA                   NA                0.1901528   0.1584343   0.2218713
6-24 months                   IRC              INDIA                          NA                   NA                0.0618812   0.0383576   0.0854048
6-24 months                   JiVitA-3         BANGLADESH                     NA                   NA                0.0331773   0.0301204   0.0362342
6-24 months                   JiVitA-4         BANGLADESH                     NA                   NA                0.0442321   0.0375131   0.0509510
6-24 months                   Keneba           GAMBIA                         NA                   NA                0.1140530   0.0978143   0.1302917
6-24 months                   NIH-Birth        BANGLADESH                     NA                   NA                0.0919540   0.0671416   0.1167664
6-24 months                   NIH-Crypto       BANGLADESH                     NA                   NA                0.0273973   0.0155476   0.0392469
6-24 months                   PROVIDE          BANGLADESH                     NA                   NA                0.0211382   0.0097604   0.0325160
6-24 months                   SAS-CompFeed     INDIA                          NA                   NA                0.0964467   0.0724546   0.1204388
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0405405   0.0318905   0.0491906
6-24 months                   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0329314   0.0295624   0.0363003


### Parameter: RR


agecat                        studyid          country                        intervention_level           baseline_level                 estimate    ci_lower     ci_upper
----------------------------  ---------------  -----------------------------  ---------------------------  ---------------------------  ----------  ----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    0.8025000   0.3396735    1.8959567
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    4.0798442   1.4921752   11.1549428
0-24 months (no birth wast)   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.5421421   1.2130854    1.9604572
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    1.7385399   1.2556948    2.4070507
0-24 months (no birth wast)   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.1641852   0.7294734    1.8579529
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    1.2046128   0.8645558    1.6784250
0-24 months (no birth wast)   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   IRC              INDIA                          Low birthweight              Normal or high birthweight    1.4215114   0.8729173    2.3148752
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    1.2873705   1.1031674    1.5023312
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    2.1231873   1.5818911    2.8497059
0-24 months (no birth wast)   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.4871590   1.1043911    2.0025893
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    1.6378216   0.9764174    2.7472467
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    4.0438095   1.7024219    9.6053718
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    2.9886792   1.2352498    7.2310911
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    1.8072599   1.3895501    2.3505366
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    2.6382430   1.3848600    5.0260141
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    1.4034295   1.1077228    1.7780750
0-6 months (no birth wast)    COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.0944931   0.6885442    1.7397797
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    1.0231939   0.4462795    2.3458972
0-6 months (no birth wast)    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    EE               PAKISTAN                       Low birthweight              Normal or high birthweight    0.9871795   0.4032747    2.4165249
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    0.7586610   0.3325931    1.7305428
0-6 months (no birth wast)    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    IRC              INDIA                          Low birthweight              Normal or high birthweight    0.5294118   0.2201742    1.2729774
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    0.7397937   0.5828259    0.9390363
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    0.9455571   0.2661084    3.3598275
0-6 months (no birth wast)    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.6839872   0.9360262    3.0296295
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    1.1900845   0.9057318    1.5637091
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    0.6943952   0.3641591    1.3241044
6-24 months                   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    1.4976744   0.6045650    3.7101529
6-24 months                   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    4.6948941   1.6759628   13.1518621
6-24 months                   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   COHORTS          INDIA                          Low birthweight              Normal or high birthweight    2.0703916   1.5915575    2.6932871
6-24 months                   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    2.0039374   1.3977017    2.8731201
6-24 months                   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.0813927   0.6304908    1.8547618
6-24 months                   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    1.3362420   0.9441264    1.8912113
6-24 months                   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   IRC              INDIA                          Low birthweight              Normal or high birthweight    4.8042315   2.1462692   10.7538420
6-24 months                   JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    2.2112793   1.8107579    2.7003920
6-24 months                   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    2.4368362   1.7970000    3.3044911
6-24 months                   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.3278327   0.9178636    1.9209170
6-24 months                   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    1.8839575   1.0995496    3.2279544
6-24 months                   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    3.9954516   1.6827630    9.4865610
6-24 months                   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    5.0486486   1.6757724   15.2102114
6-24 months                   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    2.1414837   1.5107901    3.0354663
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    3.2590095   1.6395696    6.4780066
6-24 months                   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    1.7510437   1.3617807    2.2515771


### Parameter: PAR


agecat                        studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------------------------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0034087   -0.0156434    0.0088261
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0041161   -0.0006476    0.0088798
0-24 months (no birth wast)   COHORTS          INDIA                          Normal or high birthweight   NA                 0.0047463    0.0018494    0.0076431
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0056095    0.0016811    0.0095380
0-24 months (no birth wast)   EE               PAKISTAN                       Normal or high birthweight   NA                 0.0148821   -0.0146848    0.0444489
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0099826   -0.0103502    0.0303154
0-24 months (no birth wast)   IRC              INDIA                          Normal or high birthweight   NA                 0.0128468   -0.0060887    0.0317823
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.0041474    0.0016288    0.0066660
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0105388    0.0057159    0.0153617
0-24 months (no birth wast)   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0084678    0.0004015    0.0165340
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0149365   -0.0018138    0.0316868
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0109812    0.0021914    0.0197709
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0087171   -0.0001074    0.0175416
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0192629    0.0105835    0.0279423
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0026555    0.0001144    0.0051965
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0016689    0.0003540    0.0029838
0-6 months (no birth wast)    COHORTS          INDIA                          Normal or high birthweight   NA                 0.0003604   -0.0012367    0.0019575
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0000460   -0.0016358    0.0017279
0-6 months (no birth wast)    EE               PAKISTAN                       Normal or high birthweight   NA                -0.0002431   -0.0170753    0.0165891
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0034739   -0.0132029    0.0062550
0-6 months (no birth wast)    IRC              INDIA                          Normal or high birthweight   NA                -0.0115741   -0.0244373    0.0012891
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.0019385   -0.0036240   -0.0002529
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0000658   -0.0015406    0.0014089
0-6 months (no birth wast)    Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0035446   -0.0014151    0.0085043
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0014041   -0.0009910    0.0037992
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0003472   -0.0008769    0.0001825
6-24 months                   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0045520   -0.0073343    0.0164384
6-24 months                   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0047582   -0.0005192    0.0100356
6-24 months                   COHORTS          INDIA                          Normal or high birthweight   NA                 0.0070018    0.0040573    0.0099462
6-24 months                   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0057938    0.0018897    0.0096978
6-24 months                   EE               PAKISTAN                       Normal or high birthweight   NA                 0.0050099   -0.0211056    0.0311255
6-24 months                   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0150356   -0.0070796    0.0371509
6-24 months                   IRC              INDIA                          Normal or high birthweight   NA                 0.0268771    0.0097476    0.0440065
6-24 months                   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.0108815    0.0079700    0.0137930
6-24 months                   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0120812    0.0072418    0.0169205
6-24 months                   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0057150   -0.0014698    0.0128998
6-24 months                   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0195853    0.0011934    0.0379771
6-24 months                   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0112971    0.0022155    0.0203787
6-24 months                   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0104316    0.0012562    0.0196070
6-24 months                   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0211403    0.0110087    0.0312719
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0027754    0.0000789    0.0054719
6-24 months                   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0029460    0.0013646    0.0045273


### Parameter: PAF


agecat                        studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------------------------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0223733   -0.1057891    0.0547501
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2096924   -0.0486896    0.4044128
0-24 months (no birth wast)   COHORTS          INDIA                          Normal or high birthweight   NA                 0.0938325    0.0355750    0.1485709
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0672920    0.0195473    0.1127116
0-24 months (no birth wast)   EE               PAKISTAN                       Normal or high birthweight   NA                 0.0847827   -0.0997071    0.2383220
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0502177   -0.0576649    0.1470962
0-24 months (no birth wast)   IRC              INDIA                          Normal or high birthweight   NA                 0.0690301   -0.0378821    0.1649294
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.1102679    0.0411448    0.1744080
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.2273440    0.1221557    0.3199280
0-24 months (no birth wast)   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0574385    0.0013566    0.1103709
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.1637381   -0.0362036    0.3250999
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.4139896    0.0540478    0.6369709
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.3151914   -0.0430123    0.5503765
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.1680718    0.0902394    0.2392454
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0530868    0.0017027    0.1018261
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0475579    0.0095709    0.0840879
0-6 months (no birth wast)    COHORTS          INDIA                          Normal or high birthweight   NA                 0.0184867   -0.0669023    0.0970417
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0020607   -0.0761268    0.0745675
0-6 months (no birth wast)    EE               PAKISTAN                       Normal or high birthweight   NA                -0.0045455   -0.3741944    0.2656704
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0718317   -0.2914856    0.1104638
0-6 months (no birth wast)    IRC              INDIA                          Normal or high birthweight   NA                -0.0793651   -0.1698267    0.0041013
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.1104070   -0.2089261   -0.0199166
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0137090   -0.3709271    0.2504300
0-6 months (no birth wast)    Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0815794   -0.0384803    0.1877589
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0447177   -0.0232547    0.1081748
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0350742   -0.0896120    0.0167339
6-24 months                   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0553830   -0.0996776    0.1885792
6-24 months                   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2459383   -0.0450901    0.4559235
6-24 months                   COHORTS          INDIA                          Normal or high birthweight   NA                 0.1837677    0.1062461    0.2545653
6-24 months                   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0856981    0.0272178    0.1406629
6-24 months                   EE               PAKISTAN                       Normal or high birthweight   NA                 0.0366414   -0.1744939    0.2098215
6-24 months                   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0790713   -0.0444998    0.1880232
6-24 months                   IRC              INDIA                          Normal or high birthweight   NA                 0.4343334    0.1517296    0.6227870
6-24 months                   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.3279787    0.2426953    0.4036581
6-24 months                   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.2731313    0.1648799    0.3673508
6-24 months                   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0501081   -0.0147346    0.1108073
6-24 months                   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.2129898   -0.0046307    0.3834699
6-24 months                   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.4123435    0.0515703    0.6358821
6-24 months                   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.4934937   -0.0019911    0.7439611
6-24 months                   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.2191914    0.1044211    0.3192538
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0684601    0.0011170    0.1312630
6-24 months                   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0894575    0.0410004    0.1354661
