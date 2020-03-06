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

**Outcome Variable:** ever_wasted

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

agecat                        studyid          country                        birthwt                       ever_wasted   n_cell       n
----------------------------  ---------------  -----------------------------  ---------------------------  ------------  -------  ------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0      181     361
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1      140     361
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Low birthweight                         0       17     361
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Low birthweight                         1       23     361
0-24 months (no birth wast)   CMIN             BANGLADESH                     Normal or high birthweight              0       10      17
0-24 months (no birth wast)   CMIN             BANGLADESH                     Normal or high birthweight              1        3      17
0-24 months (no birth wast)   CMIN             BANGLADESH                     Low birthweight                         0        2      17
0-24 months (no birth wast)   CMIN             BANGLADESH                     Low birthweight                         1        2      17
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Normal or high birthweight              0      740     917
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Normal or high birthweight              1       98     917
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Low birthweight                         0       62     917
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Low birthweight                         1       17     917
0-24 months (no birth wast)   COHORTS          INDIA                          Normal or high birthweight              0     4360    6524
0-24 months (no birth wast)   COHORTS          INDIA                          Normal or high birthweight              1      953    6524
0-24 months (no birth wast)   COHORTS          INDIA                          Low birthweight                         0      911    6524
0-24 months (no birth wast)   COHORTS          INDIA                          Low birthweight                         1      300    6524
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Normal or high birthweight              0     1923    2975
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Normal or high birthweight              1      781    2975
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Low birthweight                         0      148    2975
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Low birthweight                         1      123    2975
0-24 months (no birth wast)   CONTENT          PERU                           Normal or high birthweight              0        2       2
0-24 months (no birth wast)   CONTENT          PERU                           Normal or high birthweight              1        0       2
0-24 months (no birth wast)   CONTENT          PERU                           Low birthweight                         0        0       2
0-24 months (no birth wast)   CONTENT          PERU                           Low birthweight                         1        0       2
0-24 months (no birth wast)   EE               PAKISTAN                       Normal or high birthweight              0      124     376
0-24 months (no birth wast)   EE               PAKISTAN                       Normal or high birthweight              1      119     376
0-24 months (no birth wast)   EE               PAKISTAN                       Low birthweight                         0       50     376
0-24 months (no birth wast)   EE               PAKISTAN                       Low birthweight                         1       83     376
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Normal or high birthweight              0      254     659
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Normal or high birthweight              1      215     659
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Low birthweight                         0       75     659
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Low birthweight                         1      115     659
0-24 months (no birth wast)   IRC              INDIA                          Normal or high birthweight              0      173     403
0-24 months (no birth wast)   IRC              INDIA                          Normal or high birthweight              1      162     403
0-24 months (no birth wast)   IRC              INDIA                          Low birthweight                         0       20     403
0-24 months (no birth wast)   IRC              INDIA                          Low birthweight                         1       48     403
0-24 months (no birth wast)   Keneba           GAMBIA                         Normal or high birthweight              0      822    1533
0-24 months (no birth wast)   Keneba           GAMBIA                         Normal or high birthweight              1      489    1533
0-24 months (no birth wast)   Keneba           GAMBIA                         Low birthweight                         0      117    1533
0-24 months (no birth wast)   Keneba           GAMBIA                         Low birthweight                         1      105    1533
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     Normal or high birthweight              0      166     260
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     Normal or high birthweight              1       39     260
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     Low birthweight                         0       37     260
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     Low birthweight                         1       18     260
0-24 months (no birth wast)   MAL-ED           BRAZIL                         Normal or high birthweight              0      209     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         Normal or high birthweight              1       12     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         Low birthweight                         0       11     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         Low birthweight                         1        1     233
0-24 months (no birth wast)   MAL-ED           INDIA                          Normal or high birthweight              0      135     236
0-24 months (no birth wast)   MAL-ED           INDIA                          Normal or high birthweight              1       67     236
0-24 months (no birth wast)   MAL-ED           INDIA                          Low birthweight                         0       16     236
0-24 months (no birth wast)   MAL-ED           INDIA                          Low birthweight                         1       18     236
0-24 months (no birth wast)   MAL-ED           NEPAL                          Normal or high birthweight              0      176     232
0-24 months (no birth wast)   MAL-ED           NEPAL                          Normal or high birthweight              1       37     232
0-24 months (no birth wast)   MAL-ED           NEPAL                          Low birthweight                         0       14     232
0-24 months (no birth wast)   MAL-ED           NEPAL                          Low birthweight                         1        5     232
0-24 months (no birth wast)   MAL-ED           PERU                           Normal or high birthweight              0      266     299
0-24 months (no birth wast)   MAL-ED           PERU                           Normal or high birthweight              1       16     299
0-24 months (no birth wast)   MAL-ED           PERU                           Low birthweight                         0       12     299
0-24 months (no birth wast)   MAL-ED           PERU                           Low birthweight                         1        5     299
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   Normal or high birthweight              0      247     306
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   Normal or high birthweight              1       40     306
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   Low birthweight                         0       14     306
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   Low birthweight                         1        5     306
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0      160     196
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1       26     196
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0        9     196
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1        1     196
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Normal or high birthweight              0      302     581
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Normal or high birthweight              1      109     581
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Low birthweight                         0      106     581
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Low birthweight                         1       64     581
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Normal or high birthweight              0      512     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Normal or high birthweight              1       67     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Low birthweight                         0      134     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Low birthweight                         1       41     754
0-24 months (no birth wast)   PROBIT           BELARUS                        Normal or high birthweight              0    15731   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        Normal or high birthweight              1     1148   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        Low birthweight                         0        0   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        Low birthweight                         1        0   16879
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Normal or high birthweight              0      451     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Normal or high birthweight              1       77     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Low birthweight                         0      114     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Low birthweight                         1       45     687
0-24 months (no birth wast)   ResPak           PAKISTAN                       Normal or high birthweight              0       20      41
0-24 months (no birth wast)   ResPak           PAKISTAN                       Normal or high birthweight              1       15      41
0-24 months (no birth wast)   ResPak           PAKISTAN                       Low birthweight                         0        4      41
0-24 months (no birth wast)   ResPak           PAKISTAN                       Low birthweight                         1        2      41
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Normal or high birthweight              0      762    1492
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Normal or high birthweight              1      370    1492
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Low birthweight                         0      189    1492
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Low birthweight                         1      171    1492
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0     1839    2359
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      440    2359
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0       53    2359
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1       27    2359
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0    10769   13593
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1     1140   13593
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Low birthweight                         0     1438   13593
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Low birthweight                         1      246   13593
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0      213     344
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1       96     344
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Low birthweight                         0       25     344
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Low birthweight                         1       10     344
0-6 months (no birth wast)    CMIN             BANGLADESH                     Normal or high birthweight              0       13      17
0-6 months (no birth wast)    CMIN             BANGLADESH                     Normal or high birthweight              1        0      17
0-6 months (no birth wast)    CMIN             BANGLADESH                     Low birthweight                         0        3      17
0-6 months (no birth wast)    CMIN             BANGLADESH                     Low birthweight                         1        1      17
0-6 months (no birth wast)    COHORTS          GUATEMALA                      Normal or high birthweight              0      775     867
0-6 months (no birth wast)    COHORTS          GUATEMALA                      Normal or high birthweight              1       17     867
0-6 months (no birth wast)    COHORTS          GUATEMALA                      Low birthweight                         0       75     867
0-6 months (no birth wast)    COHORTS          GUATEMALA                      Low birthweight                         1        0     867
0-6 months (no birth wast)    COHORTS          INDIA                          Normal or high birthweight              0     4575    6053
0-6 months (no birth wast)    COHORTS          INDIA                          Normal or high birthweight              1      465    6053
0-6 months (no birth wast)    COHORTS          INDIA                          Low birthweight                         0      944    6053
0-6 months (no birth wast)    COHORTS          INDIA                          Low birthweight                         1       69    6053
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Normal or high birthweight              0     2432    2954
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Normal or high birthweight              1      259    2954
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Low birthweight                         0      240    2954
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Low birthweight                         1       23    2954
0-6 months (no birth wast)    CONTENT          PERU                           Normal or high birthweight              0        2       2
0-6 months (no birth wast)    CONTENT          PERU                           Normal or high birthweight              1        0       2
0-6 months (no birth wast)    CONTENT          PERU                           Low birthweight                         0        0       2
0-6 months (no birth wast)    CONTENT          PERU                           Low birthweight                         1        0       2
0-6 months (no birth wast)    EE               PAKISTAN                       Normal or high birthweight              0      187     374
0-6 months (no birth wast)    EE               PAKISTAN                       Normal or high birthweight              1       55     374
0-6 months (no birth wast)    EE               PAKISTAN                       Low birthweight                         0      107     374
0-6 months (no birth wast)    EE               PAKISTAN                       Low birthweight                         1       25     374
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Normal or high birthweight              0      369     641
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Normal or high birthweight              1       94     641
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Low birthweight                         0      149     641
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Low birthweight                         1       29     641
0-6 months (no birth wast)    IRC              INDIA                          Normal or high birthweight              0      216     384
0-6 months (no birth wast)    IRC              INDIA                          Normal or high birthweight              1      108     384
0-6 months (no birth wast)    IRC              INDIA                          Low birthweight                         0       38     384
0-6 months (no birth wast)    IRC              INDIA                          Low birthweight                         1       22     384
0-6 months (no birth wast)    Keneba           GAMBIA                         Normal or high birthweight              0     1154    1519
0-6 months (no birth wast)    Keneba           GAMBIA                         Normal or high birthweight              1      149    1519
0-6 months (no birth wast)    Keneba           GAMBIA                         Low birthweight                         0      184    1519
0-6 months (no birth wast)    Keneba           GAMBIA                         Low birthweight                         1       32    1519
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     Normal or high birthweight              0      189     259
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     Normal or high birthweight              1       16     259
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     Low birthweight                         0       51     259
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     Low birthweight                         1        3     259
0-6 months (no birth wast)    MAL-ED           BRAZIL                         Normal or high birthweight              0      213     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         Normal or high birthweight              1        8     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         Low birthweight                         0       12     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         Low birthweight                         1        0     233
0-6 months (no birth wast)    MAL-ED           INDIA                          Normal or high birthweight              0      166     234
0-6 months (no birth wast)    MAL-ED           INDIA                          Normal or high birthweight              1       35     234
0-6 months (no birth wast)    MAL-ED           INDIA                          Low birthweight                         0       30     234
0-6 months (no birth wast)    MAL-ED           INDIA                          Low birthweight                         1        3     234
0-6 months (no birth wast)    MAL-ED           NEPAL                          Normal or high birthweight              0      198     230
0-6 months (no birth wast)    MAL-ED           NEPAL                          Normal or high birthweight              1       13     230
0-6 months (no birth wast)    MAL-ED           NEPAL                          Low birthweight                         0       18     230
0-6 months (no birth wast)    MAL-ED           NEPAL                          Low birthweight                         1        1     230
0-6 months (no birth wast)    MAL-ED           PERU                           Normal or high birthweight              0      279     299
0-6 months (no birth wast)    MAL-ED           PERU                           Normal or high birthweight              1        3     299
0-6 months (no birth wast)    MAL-ED           PERU                           Low birthweight                         0       15     299
0-6 months (no birth wast)    MAL-ED           PERU                           Low birthweight                         1        2     299
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   Normal or high birthweight              0      275     305
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   Normal or high birthweight              1       11     305
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   Low birthweight                         0       16     305
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   Low birthweight                         1        3     305
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0      178     196
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1        8     196
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0       10     196
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1        0     196
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     Normal or high birthweight              0      374     564
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     Normal or high birthweight              1       33     564
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     Low birthweight                         0      145     564
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     Low birthweight                         1       12     564
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Normal or high birthweight              0      560     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Normal or high birthweight              1       17     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Low birthweight                         0      169     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Low birthweight                         1        3     749
0-6 months (no birth wast)    PROBIT           BELARUS                        Normal or high birthweight              0    15671   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        Normal or high birthweight              1     1022   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        Low birthweight                         0        0   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        Low birthweight                         1        0   16693
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     Normal or high birthweight              0      503     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     Normal or high birthweight              1       25     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     Low birthweight                         0      143     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     Low birthweight                         1       12     683
0-6 months (no birth wast)    ResPak           PAKISTAN                       Normal or high birthweight              0       25      41
0-6 months (no birth wast)    ResPak           PAKISTAN                       Normal or high birthweight              1       10      41
0-6 months (no birth wast)    ResPak           PAKISTAN                       Low birthweight                         0        6      41
0-6 months (no birth wast)    ResPak           PAKISTAN                       Low birthweight                         1        0      41
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Normal or high birthweight              0      984    1465
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Normal or high birthweight              1      142    1465
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Low birthweight                         0      296    1465
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Low birthweight                         1       43    1465
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0     2085    2351
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      187    2351
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0       66    2351
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1       13    2351
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0    11395   13334
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1      382   13334
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Low birthweight                         0     1511   13334
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Low birthweight                         1       46   13334
6-24 months                   CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0      244     365
6-24 months                   CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1       78     365
6-24 months                   CMC-V-BCS-2002   INDIA                          Low birthweight                         0       24     365
6-24 months                   CMC-V-BCS-2002   INDIA                          Low birthweight                         1       19     365
6-24 months                   CMIN             BANGLADESH                     Normal or high birthweight              0        6      12
6-24 months                   CMIN             BANGLADESH                     Normal or high birthweight              1        3      12
6-24 months                   CMIN             BANGLADESH                     Low birthweight                         0        2      12
6-24 months                   CMIN             BANGLADESH                     Low birthweight                         1        1      12
6-24 months                   COHORTS          GUATEMALA                      Normal or high birthweight              0      669     827
6-24 months                   COHORTS          GUATEMALA                      Normal or high birthweight              1       85     827
6-24 months                   COHORTS          GUATEMALA                      Low birthweight                         0       56     827
6-24 months                   COHORTS          GUATEMALA                      Low birthweight                         1       17     827
6-24 months                   COHORTS          INDIA                          Normal or high birthweight              0     4495    6299
6-24 months                   COHORTS          INDIA                          Normal or high birthweight              1      539    6299
6-24 months                   COHORTS          INDIA                          Low birthweight                         0     1022    6299
6-24 months                   COHORTS          INDIA                          Low birthweight                         1      243    6299
6-24 months                   COHORTS          PHILIPPINES                    Normal or high birthweight              0     1886    2766
6-24 months                   COHORTS          PHILIPPINES                    Normal or high birthweight              1      626    2766
6-24 months                   COHORTS          PHILIPPINES                    Low birthweight                         0      142    2766
6-24 months                   COHORTS          PHILIPPINES                    Low birthweight                         1      112    2766
6-24 months                   CONTENT          PERU                           Normal or high birthweight              0        2       2
6-24 months                   CONTENT          PERU                           Normal or high birthweight              1        0       2
6-24 months                   CONTENT          PERU                           Low birthweight                         0        0       2
6-24 months                   CONTENT          PERU                           Low birthweight                         1        0       2
6-24 months                   EE               PAKISTAN                       Normal or high birthweight              0      151     373
6-24 months                   EE               PAKISTAN                       Normal or high birthweight              1       91     373
6-24 months                   EE               PAKISTAN                       Low birthweight                         0       61     373
6-24 months                   EE               PAKISTAN                       Low birthweight                         1       70     373
6-24 months                   GMS-Nepal        NEPAL                          Normal or high birthweight              0      235     589
6-24 months                   GMS-Nepal        NEPAL                          Normal or high birthweight              1      177     589
6-24 months                   GMS-Nepal        NEPAL                          Low birthweight                         0       76     589
6-24 months                   GMS-Nepal        NEPAL                          Low birthweight                         1      101     589
6-24 months                   IRC              INDIA                          Normal or high birthweight              0      243     404
6-24 months                   IRC              INDIA                          Normal or high birthweight              1       92     404
6-24 months                   IRC              INDIA                          Low birthweight                         0       35     404
6-24 months                   IRC              INDIA                          Low birthweight                         1       34     404
6-24 months                   Keneba           GAMBIA                         Normal or high birthweight              0      857    1473
6-24 months                   Keneba           GAMBIA                         Normal or high birthweight              1      412    1473
6-24 months                   Keneba           GAMBIA                         Low birthweight                         0      119    1473
6-24 months                   Keneba           GAMBIA                         Low birthweight                         1       85    1473
6-24 months                   MAL-ED           BANGLADESH                     Normal or high birthweight              0      160     238
6-24 months                   MAL-ED           BANGLADESH                     Normal or high birthweight              1       27     238
6-24 months                   MAL-ED           BANGLADESH                     Low birthweight                         0       36     238
6-24 months                   MAL-ED           BANGLADESH                     Low birthweight                         1       15     238
6-24 months                   MAL-ED           BRAZIL                         Normal or high birthweight              0      192     207
6-24 months                   MAL-ED           BRAZIL                         Normal or high birthweight              1        5     207
6-24 months                   MAL-ED           BRAZIL                         Low birthweight                         0        9     207
6-24 months                   MAL-ED           BRAZIL                         Low birthweight                         1        1     207
6-24 months                   MAL-ED           INDIA                          Normal or high birthweight              0      150     226
6-24 months                   MAL-ED           INDIA                          Normal or high birthweight              1       42     226
6-24 months                   MAL-ED           INDIA                          Low birthweight                         0       18     226
6-24 months                   MAL-ED           INDIA                          Low birthweight                         1       16     226
6-24 months                   MAL-ED           NEPAL                          Normal or high birthweight              0      182     228
6-24 months                   MAL-ED           NEPAL                          Normal or high birthweight              1       27     228
6-24 months                   MAL-ED           NEPAL                          Low birthweight                         0       14     228
6-24 months                   MAL-ED           NEPAL                          Low birthweight                         1        5     228
6-24 months                   MAL-ED           PERU                           Normal or high birthweight              0      237     267
6-24 months                   MAL-ED           PERU                           Normal or high birthweight              1       14     267
6-24 months                   MAL-ED           PERU                           Low birthweight                         0       12     267
6-24 months                   MAL-ED           PERU                           Low birthweight                         1        4     267
6-24 months                   MAL-ED           SOUTH AFRICA                   Normal or high birthweight              0      211     258
6-24 months                   MAL-ED           SOUTH AFRICA                   Normal or high birthweight              1       32     258
6-24 months                   MAL-ED           SOUTH AFRICA                   Low birthweight                         0       10     258
6-24 months                   MAL-ED           SOUTH AFRICA                   Low birthweight                         1        5     258
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0      155     184
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1       21     184
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0        7     184
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1        1     184
6-24 months                   NIH-Birth        BANGLADESH                     Normal or high birthweight              0      272     522
6-24 months                   NIH-Birth        BANGLADESH                     Normal or high birthweight              1       94     522
6-24 months                   NIH-Birth        BANGLADESH                     Low birthweight                         0       96     522
6-24 months                   NIH-Birth        BANGLADESH                     Low birthweight                         1       60     522
6-24 months                   NIH-Crypto       BANGLADESH                     Normal or high birthweight              0      504     730
6-24 months                   NIH-Crypto       BANGLADESH                     Normal or high birthweight              1       55     730
6-24 months                   NIH-Crypto       BANGLADESH                     Low birthweight                         0      130     730
6-24 months                   NIH-Crypto       BANGLADESH                     Low birthweight                         1       41     730
6-24 months                   PROBIT           BELARUS                        Normal or high birthweight              0    16459   16598
6-24 months                   PROBIT           BELARUS                        Normal or high birthweight              1      139   16598
6-24 months                   PROBIT           BELARUS                        Low birthweight                         0        0   16598
6-24 months                   PROBIT           BELARUS                        Low birthweight                         1        0   16598
6-24 months                   PROVIDE          BANGLADESH                     Normal or high birthweight              0      407     615
6-24 months                   PROVIDE          BANGLADESH                     Normal or high birthweight              1       60     615
6-24 months                   PROVIDE          BANGLADESH                     Low birthweight                         0      109     615
6-24 months                   PROVIDE          BANGLADESH                     Low birthweight                         1       39     615
6-24 months                   ResPak           PAKISTAN                       Normal or high birthweight              0       21      32
6-24 months                   ResPak           PAKISTAN                       Normal or high birthweight              1        6      32
6-24 months                   ResPak           PAKISTAN                       Low birthweight                         0        3      32
6-24 months                   ResPak           PAKISTAN                       Low birthweight                         1        2      32
6-24 months                   SAS-CompFeed     INDIA                          Normal or high birthweight              0      768    1379
6-24 months                   SAS-CompFeed     INDIA                          Normal or high birthweight              1      278    1379
6-24 months                   SAS-CompFeed     INDIA                          Low birthweight                         0      188    1379
6-24 months                   SAS-CompFeed     INDIA                          Low birthweight                         1      145    1379
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0     1633    1998
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      300    1998
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0       46    1998
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1       19    1998
6-24 months                   ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0     8559   10780
6-24 months                   ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1      820   10780
6-24 months                   ZVITAMBO         ZIMBABWE                       Low birthweight                         0     1189   10780
6-24 months                   ZVITAMBO         ZIMBABWE                       Low birthweight                         1      212   10780


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
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
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
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/c9140a9d-ca25-4f14-9641-3235a5ca253b/a795a805-396e-4b65-b08d-9d0199afd7c6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c9140a9d-ca25-4f14-9641-3235a5ca253b/a795a805-396e-4b65-b08d-9d0199afd7c6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c9140a9d-ca25-4f14-9641-3235a5ca253b/a795a805-396e-4b65-b08d-9d0199afd7c6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c9140a9d-ca25-4f14-9641-3235a5ca253b/a795a805-396e-4b65-b08d-9d0199afd7c6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid          country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.4361371   0.3818125   0.4904616
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.5750000   0.4215917   0.7284083
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1169451   0.0951756   0.1387146
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Low birthweight              NA                0.2151899   0.1245196   0.3058601
0-24 months (no birth wast)   COHORTS          INDIA                          Normal or high birthweight   NA                0.1793714   0.1690542   0.1896885
0-24 months (no birth wast)   COHORTS          INDIA                          Low birthweight              NA                0.2477291   0.2234136   0.2720447
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.2888314   0.2717459   0.3059168
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Low birthweight              NA                0.4538745   0.3945888   0.5131603
0-24 months (no birth wast)   EE               PAKISTAN                       Normal or high birthweight   NA                0.4897119   0.4267756   0.5526482
0-24 months (no birth wast)   EE               PAKISTAN                       Low birthweight              NA                0.6240602   0.5416325   0.7064878
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.4584222   0.4132933   0.5035511
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Low birthweight              NA                0.6052632   0.5357084   0.6748179
0-24 months (no birth wast)   IRC              INDIA                          Normal or high birthweight   NA                0.4835821   0.4300023   0.5371619
0-24 months (no birth wast)   IRC              INDIA                          Low birthweight              NA                0.7058824   0.5974498   0.8143149
0-24 months (no birth wast)   Keneba           GAMBIA                         Normal or high birthweight   NA                0.3729977   0.3468113   0.3991841
0-24 months (no birth wast)   Keneba           GAMBIA                         Low birthweight              NA                0.4729730   0.4072756   0.5386703
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.1902439   0.1364119   0.2440759
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     Low birthweight              NA                0.3272727   0.2030280   0.4515175
0-24 months (no birth wast)   MAL-ED           INDIA                          Normal or high birthweight   NA                0.3316832   0.2666182   0.3967482
0-24 months (no birth wast)   MAL-ED           INDIA                          Low birthweight              NA                0.5294118   0.3612807   0.6975429
0-24 months (no birth wast)   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.1737089   0.1227202   0.2246976
0-24 months (no birth wast)   MAL-ED           NEPAL                          Low birthweight              NA                0.2631579   0.0647291   0.4615867
0-24 months (no birth wast)   MAL-ED           PERU                           Normal or high birthweight   NA                0.0567376   0.0296916   0.0837836
0-24 months (no birth wast)   MAL-ED           PERU                           Low birthweight              NA                0.2941176   0.0771586   0.5110767
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.1393728   0.0992386   0.1795070
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.2631579   0.0648329   0.4614829
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.2652068   0.2224922   0.3079214
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.3764706   0.3035766   0.4493646
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.1157168   0.0896438   0.1417897
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.2342857   0.1714909   0.2970805
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.1458333   0.1157069   0.1759597
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Low birthweight              NA                0.2830189   0.2129496   0.3530881
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.3268551   0.2810739   0.3726363
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Low birthweight              NA                0.4750000   0.4011194   0.5488806
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1930671   0.1768587   0.2092756
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.3375000   0.2338606   0.4411394
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0957259   0.0904416   0.1010103
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.1460808   0.1292114   0.1629501
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.3106796   0.2590061   0.3623531
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.2857143   0.1358327   0.4355958
0-6 months (no birth wast)    COHORTS          INDIA                          Normal or high birthweight   NA                0.0922619   0.0842717   0.1002522
0-6 months (no birth wast)    COHORTS          INDIA                          Low birthweight              NA                0.0681145   0.0525985   0.0836305
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0962467   0.0851017   0.1073918
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Low birthweight              NA                0.0874525   0.0533051   0.1215999
0-6 months (no birth wast)    EE               PAKISTAN                       Normal or high birthweight   NA                0.2272727   0.1744028   0.2801426
0-6 months (no birth wast)    EE               PAKISTAN                       Low birthweight              NA                0.1893939   0.1224625   0.2563254
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.2030238   0.1663553   0.2396922
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Low birthweight              NA                0.1629213   0.1086277   0.2172150
0-6 months (no birth wast)    IRC              INDIA                          Normal or high birthweight   NA                0.3333333   0.2819366   0.3847301
0-6 months (no birth wast)    IRC              INDIA                          Low birthweight              NA                0.3666667   0.2445737   0.4887596
0-6 months (no birth wast)    Keneba           GAMBIA                         Normal or high birthweight   NA                0.1143515   0.0970665   0.1316365
0-6 months (no birth wast)    Keneba           GAMBIA                         Low birthweight              NA                0.1481481   0.1007573   0.1955390
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0810811   0.0545390   0.1076231
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     Low birthweight              NA                0.0764331   0.0348364   0.1180298
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0473485   0.0292197   0.0654773
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     Low birthweight              NA                0.0774194   0.0353150   0.1195237
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.1261101   0.0935535   0.1586668
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Low birthweight              NA                0.1268437   0.0994123   0.1542750
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0823063   0.0710031   0.0936095
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.1645570   0.0827776   0.2463363
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0324361   0.0292365   0.0356357
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0295440   0.0211331   0.0379549
6-24 months                   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.2422360   0.1953760   0.2890960
6-24 months                   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.4418605   0.2932246   0.5904963
6-24 months                   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1127321   0.0901442   0.1353200
6-24 months                   COHORTS          GUATEMALA                      Low birthweight              NA                0.2328767   0.1358603   0.3298931
6-24 months                   COHORTS          INDIA                          Normal or high birthweight   NA                0.1070719   0.0985297   0.1156142
6-24 months                   COHORTS          INDIA                          Low birthweight              NA                0.1920949   0.1703841   0.2138056
6-24 months                   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.2492038   0.2322856   0.2661221
6-24 months                   COHORTS          PHILIPPINES                    Low birthweight              NA                0.4409449   0.3798747   0.5020151
6-24 months                   EE               PAKISTAN                       Normal or high birthweight   NA                0.3760331   0.3149224   0.4371437
6-24 months                   EE               PAKISTAN                       Low birthweight              NA                0.5343511   0.4488173   0.6198850
6-24 months                   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.4296117   0.3817716   0.4774517
6-24 months                   GMS-Nepal        NEPAL                          Low birthweight              NA                0.5706215   0.4976380   0.6436050
6-24 months                   IRC              INDIA                          Normal or high birthweight   NA                0.2746269   0.2267731   0.3224806
6-24 months                   IRC              INDIA                          Low birthweight              NA                0.4927536   0.3746438   0.6108635
6-24 months                   Keneba           GAMBIA                         Normal or high birthweight   NA                0.3246651   0.2988934   0.3504367
6-24 months                   Keneba           GAMBIA                         Low birthweight              NA                0.4166667   0.3489909   0.4843424
6-24 months                   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.1443850   0.0939024   0.1948676
6-24 months                   MAL-ED           BANGLADESH                     Low birthweight              NA                0.2941176   0.1688024   0.4194329
6-24 months                   MAL-ED           INDIA                          Normal or high birthweight   NA                0.2187500   0.1601457   0.2773543
6-24 months                   MAL-ED           INDIA                          Low birthweight              NA                0.4705882   0.3024413   0.6387352
6-24 months                   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.1291866   0.0836143   0.1747589
6-24 months                   MAL-ED           NEPAL                          Low birthweight              NA                0.2631579   0.0647216   0.4615942
6-24 months                   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.1316872   0.0890884   0.1742861
6-24 months                   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.3333333   0.0943104   0.5723562
6-24 months                   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.2568306   0.2120292   0.3016320
6-24 months                   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.3846154   0.3081986   0.4610322
6-24 months                   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0983900   0.0736827   0.1230972
6-24 months                   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.2397661   0.1757314   0.3038008
6-24 months                   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.1284797   0.0981059   0.1588534
6-24 months                   PROVIDE          BANGLADESH                     Low birthweight              NA                0.2635135   0.1924814   0.3345456
6-24 months                   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.2657744   0.2303488   0.3012000
6-24 months                   SAS-CompFeed     INDIA                          Low birthweight              NA                0.4354354   0.3687205   0.5021504
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1551992   0.1390533   0.1713451
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.2923077   0.1817109   0.4029045
6-24 months                   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0874294   0.0817126   0.0931461
6-24 months                   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.1513205   0.1325546   0.1700864


### Parameter: E(Y)


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          NA                   NA                0.4515235   0.4001173   0.5029298
0-24 months (no birth wast)   COHORTS          GUATEMALA                      NA                   NA                0.1254089   0.1039619   0.1468560
0-24 months (no birth wast)   COHORTS          INDIA                          NA                   NA                0.1920601   0.1825006   0.2016195
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    NA                   NA                0.3038655   0.2873358   0.3203952
0-24 months (no birth wast)   EE               PAKISTAN                       NA                   NA                0.5372340   0.4867685   0.5876996
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          NA                   NA                0.5007587   0.4625551   0.5389624
0-24 months (no birth wast)   IRC              INDIA                          NA                   NA                0.5210918   0.4722583   0.5699254
0-24 months (no birth wast)   Keneba           GAMBIA                         NA                   NA                0.3874755   0.3630804   0.4118706
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     NA                   NA                0.2192308   0.1688447   0.2696168
0-24 months (no birth wast)   MAL-ED           INDIA                          NA                   NA                0.3601695   0.2987933   0.4215457
0-24 months (no birth wast)   MAL-ED           NEPAL                          NA                   NA                0.1810345   0.1313803   0.2306886
0-24 months (no birth wast)   MAL-ED           PERU                           NA                   NA                0.0702341   0.0412206   0.0992477
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1470588   0.1073119   0.1868057
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     NA                   NA                0.2977625   0.2605481   0.3349769
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          NA                   NA                0.3626005   0.3118807   0.4133204
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1979652   0.1818822   0.2140482
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1019642   0.0968771   0.1070514
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          NA                   NA                0.3081395   0.2592761   0.3570030
0-6 months (no birth wast)    COHORTS          INDIA                          NA                   NA                0.0882207   0.0810753   0.0953662
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    NA                   NA                0.0954638   0.0848652   0.1060624
0-6 months (no birth wast)    EE               PAKISTAN                       NA                   NA                0.2139037   0.1722896   0.2555179
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          NA                   NA                0.1918877   0.1613794   0.2223959
0-6 months (no birth wast)    IRC              INDIA                          NA                   NA                0.3385417   0.2911496   0.3859338
0-6 months (no birth wast)    Keneba           GAMBIA                         NA                   NA                0.1191573   0.1028598   0.1354549
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     NA                   NA                0.0797872   0.0574049   0.1021695
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     NA                   NA                0.0541728   0.0371844   0.0711612
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          NA                   NA                0.1262799   0.0958566   0.1567031
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0850702   0.0737905   0.0963499
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0320984   0.0291065   0.0350903
6-24 months                   CMC-V-BCS-2002   INDIA                          NA                   NA                0.2657534   0.2203741   0.3111327
6-24 months                   COHORTS          GUATEMALA                      NA                   NA                0.1233374   0.1009129   0.1457618
6-24 months                   COHORTS          INDIA                          NA                   NA                0.1241467   0.1160028   0.1322905
6-24 months                   COHORTS          PHILIPPINES                    NA                   NA                0.2668113   0.2503255   0.2832971
6-24 months                   EE               PAKISTAN                       NA                   NA                0.4316354   0.3813029   0.4819679
6-24 months                   GMS-Nepal        NEPAL                          NA                   NA                0.4719864   0.4316361   0.5123367
6-24 months                   IRC              INDIA                          NA                   NA                0.3118812   0.2666517   0.3571107
6-24 months                   Keneba           GAMBIA                         NA                   NA                0.3374067   0.3132523   0.3615610
6-24 months                   MAL-ED           BANGLADESH                     NA                   NA                0.1764706   0.1279362   0.2250050
6-24 months                   MAL-ED           INDIA                          NA                   NA                0.2566372   0.1995660   0.3137084
6-24 months                   MAL-ED           NEPAL                          NA                   NA                0.1403509   0.0951649   0.1855368
6-24 months                   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1434109   0.1005601   0.1862616
6-24 months                   NIH-Birth        BANGLADESH                     NA                   NA                0.2950192   0.2558591   0.3341792
6-24 months                   NIH-Crypto       BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   PROVIDE          BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   SAS-CompFeed     INDIA                          NA                   NA                0.3067440   0.2633529   0.3501352
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1596597   0.1435945   0.1757248
6-24 months                   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0957328   0.0901784   0.1012872


### Parameter: RR


agecat                        studyid          country                        intervention_level           baseline_level                 estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  ---------------------------  ---------------------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    1.3183929   0.9821341    1.769778
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    1.8400930   1.1608790    2.916706
0-24 months (no birth wast)   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.3810965   1.2325833    1.547504
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    1.5714171   1.3614989    1.813701
0-24 months (no birth wast)   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.2743413   1.0598636    1.532221
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    1.3203182   1.1349120    1.536014
0-24 months (no birth wast)   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   IRC              INDIA                          Low birthweight              Normal or high birthweight    1.4596950   1.2078304    1.764080
0-24 months (no birth wast)   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.2680318   1.0852704    1.481571
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    1.7202797   1.0714337    2.762058
0-24 months (no birth wast)   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    1.5961370   1.0988951    2.318377
0-24 months (no birth wast)   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    1.5149360   0.6745061    3.402535
0-24 months (no birth wast)   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    5.1838235   2.1538670   12.476177
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    1.8881579   0.8426742    4.230746
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    1.4195359   1.1034861    1.826106
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    2.0246482   1.4265293    2.873548
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    1.9407008   1.4057971    2.679134
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    1.4532432   1.3057748    1.617366
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    1.7480966   1.2714763    2.403381
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    1.5260314   1.3426898    1.734408
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    0.9196429   0.5304173    1.594486
0-6 months (no birth wast)    COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    COHORTS          INDIA                          Low birthweight              Normal or high birthweight    0.7382734   0.5786013    0.942009
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    0.9086278   0.6046556    1.365413
0-6 months (no birth wast)    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    EE               PAKISTAN                       Low birthweight              Normal or high birthweight    0.8333333   0.5458492    1.272228
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    0.8024743   0.5493044    1.172328
0-6 months (no birth wast)    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    IRC              INDIA                          Low birthweight              Normal or high birthweight    1.1000000   0.7621303    1.587655
0-6 months (no birth wast)    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.2955506   0.9094932    1.845480
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    0.9426752   0.4995125    1.779007
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    1.6350968   0.8407963    3.179773
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    1.0058166   0.8666369    1.167348
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    1.9993231   1.1938892    3.348127
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    0.9108367   0.6738902    1.231096
6-24 months                   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    1.8240906   1.2374317    2.688881
6-24 months                   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    2.0657534   1.3011066    3.279775
6-24 months                   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.7940733   1.5622795    2.060258
6-24 months                   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    1.7694146   1.5165018    2.064507
6-24 months                   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.4210217   1.1311873    1.785118
6-24 months                   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    1.3282262   1.1210427    1.573700
6-24 months                   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   IRC              INDIA                          Low birthweight              Normal or high birthweight    1.7942659   1.3341017    2.413152
6-24 months                   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.2833738   1.0711266    1.537678
6-24 months                   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    2.0370370   1.1738979    3.534822
6-24 months                   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    2.1512605   1.3763856    3.362373
6-24 months                   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    2.0370370   0.8860364    4.683238
6-24 months                   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    2.5312500   1.1526408    5.558737
6-24 months                   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    1.4975450   1.1496217    1.950764
6-24 months                   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    2.4368953   1.6890015    3.515958
6-24 months                   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    2.0510135   1.4330348    2.935488
6-24 months                   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    1.6383650   1.4702882    1.825656
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    1.8834359   1.2721372    2.788481
6-24 months                   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    1.7307742   1.5043670    1.991256


### Parameter: PAR


agecat                        studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------------------------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0153865   -0.0031996    0.0339726
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0084638    0.0002346    0.0166931
0-24 months (no birth wast)   COHORTS          INDIA                          Normal or high birthweight   NA                 0.0126887    0.0077435    0.0176340
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0150342    0.0091605    0.0209079
0-24 months (no birth wast)   EE               PAKISTAN                       Normal or high birthweight   NA                 0.0475221    0.0102666    0.0847776
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0423366    0.0178973    0.0667758
0-24 months (no birth wast)   IRC              INDIA                          Normal or high birthweight   NA                 0.0375097    0.0155387    0.0594808
0-24 months (no birth wast)   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0144778    0.0040856    0.0248701
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0289869   -0.0004563    0.0584300
0-24 months (no birth wast)   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0284863    0.0010383    0.0559344
0-24 months (no birth wast)   MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0073256   -0.0097485    0.0243997
0-24 months (no birth wast)   MAL-ED           PERU                           Normal or high birthweight   NA                 0.0134965   -0.0004132    0.0274062
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0076860   -0.0053175    0.0206895
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0325557    0.0074939    0.0576174
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0275193    0.0113386    0.0437000
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0317504    0.0135749    0.0499259
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0357454    0.0211835    0.0503073
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0048981    0.0011875    0.0086087
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0062383    0.0040306    0.0084460
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0025401   -0.0186903    0.0136101
0-6 months (no birth wast)    COHORTS          INDIA                          Normal or high birthweight   NA                -0.0040412   -0.0069708   -0.0011116
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0007830   -0.0039823    0.0024163
0-6 months (no birth wast)    EE               PAKISTAN                       Normal or high birthweight   NA                -0.0133690   -0.0435287    0.0167907
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0111361   -0.0293825    0.0071103
0-6 months (no birth wast)    IRC              INDIA                          Normal or high birthweight   NA                 0.0052083   -0.0155256    0.0259422
0-6 months (no birth wast)    Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0048058   -0.0023919    0.0120035
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0012938   -0.0150306    0.0124429
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0068243   -0.0036218    0.0172704
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0001697   -0.0041901    0.0045296
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0027638   -0.0000743    0.0056020
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0003377   -0.0013886    0.0007132
6-24 months                   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0235174    0.0040032    0.0430316
6-24 months                   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0106053    0.0015105    0.0197001
6-24 months                   COHORTS          INDIA                          Normal or high birthweight   NA                 0.0170748    0.0123144    0.0218351
6-24 months                   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0176075    0.0114330    0.0237819
6-24 months                   EE               PAKISTAN                       Normal or high birthweight   NA                 0.0556023    0.0178927    0.0933120
6-24 months                   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0423748    0.0156351    0.0691144
6-24 months                   IRC              INDIA                          Normal or high birthweight   NA                 0.0372543    0.0140606    0.0604480
6-24 months                   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0127416    0.0025818    0.0229013
6-24 months                   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0320856    0.0020971    0.0620740
6-24 months                   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0378872    0.0086291    0.0671453
6-24 months                   MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0111643   -0.0064731    0.0288016
6-24 months                   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0117236   -0.0035254    0.0269726
6-24 months                   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0381886    0.0112436    0.0651335
6-24 months                   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0331169    0.0164620    0.0497718
6-24 months                   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0324960    0.0133524    0.0516395
6-24 months                   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0409696    0.0268241    0.0551152
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0044605    0.0006711    0.0082499
6-24 months                   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0083035    0.0057219    0.0108851


### Parameter: PAF


agecat                        studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------------------------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0340768   -0.0080884    0.0744784
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0674899    0.0003089    0.1301562
0-24 months (no birth wast)   COHORTS          INDIA                          Normal or high birthweight   NA                 0.0660665    0.0400801    0.0913494
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0494764    0.0299811    0.0685799
0-24 months (no birth wast)   EE               PAKISTAN                       Normal or high birthweight   NA                 0.0884570    0.0158066    0.1557446
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0845448    0.0340412    0.1324079
0-24 months (no birth wast)   IRC              INDIA                          Normal or high birthweight   NA                 0.0719829    0.0282748    0.1137251
0-24 months (no birth wast)   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0373645    0.0101439    0.0638365
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.1322208   -0.0109622    0.2551248
0-24 months (no birth wast)   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0790914   -0.0004069    0.1522724
0-24 months (no birth wast)   MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0404650   -0.0582243    0.1299506
0-24 months (no birth wast)   MAL-ED           PERU                           Normal or high birthweight   NA                 0.1921648   -0.0139099    0.3563554
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0522648   -0.0395781    0.1359937
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.1093343    0.0213611    0.1893994
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.1921256    0.0751259    0.2943245
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.1787910    0.0727850    0.2726776
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0985807    0.0619882    0.1337457
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0247422    0.0058743    0.0432521
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0611815    0.0394519    0.0824195
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0082433   -0.0620396    0.0428281
0-6 months (no birth wast)    COHORTS          INDIA                          Normal or high birthweight   NA                -0.0458077   -0.0793769   -0.0132825
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0082018   -0.0422683    0.0247513
0-6 months (no birth wast)    EE               PAKISTAN                       Normal or high birthweight   NA                -0.0625000   -0.2130273    0.0693480
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0580344   -0.1572834    0.0327030
0-6 months (no birth wast)    IRC              INDIA                          Normal or high birthweight   NA                 0.0153846   -0.0478053    0.0747638
0-6 months (no birth wast)    Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0403319   -0.0218158    0.0986998
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0162162   -0.2037684    0.1421145
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.1259726   -0.0852081    0.2960576
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0013442   -0.0339318    0.0354166
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0324890   -0.0012181    0.0650613
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0105211   -0.0437836    0.0216815
6-24 months                   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0884933    0.0126002    0.1585531
6-24 months                   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0859859    0.0105354    0.1556830
6-24 months                   COHORTS          INDIA                          Normal or high birthweight   NA                 0.1375371    0.0991744    0.1742661
6-24 months                   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0659922    0.0426798    0.0887369
6-24 months                   EE               PAKISTAN                       Normal or high birthweight   NA                 0.1288178    0.0364620    0.2123213
6-24 months                   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0897796    0.0309798    0.1450115
6-24 months                   IRC              INDIA                          Normal or high birthweight   NA                 0.1194504    0.0422968    0.1903884
6-24 months                   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0377632    0.0071784    0.0674059
6-24 months                   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.1818182   -0.0011039    0.3313167
6-24 months                   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.1476293    0.0278878    0.2526215
6-24 months                   MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0795455   -0.0529975    0.1954049
6-24 months                   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0817484   -0.0287843    0.1804055
6-24 months                   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.1294443    0.0336367    0.2157534
6-24 months                   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.2518262    0.1219976    0.3624573
6-24 months                   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.2018688    0.0781932    0.3089513
6-24 months                   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.1335630    0.0966263    0.1689893
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0279375    0.0040189    0.0512817
6-24 months                   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0867359    0.0597600    0.1129378
