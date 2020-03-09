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
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Normal or high birthweight              0    10942   22227
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Normal or high birthweight              1     2026   22227
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Low birthweight                         0     7384   22227
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Low birthweight                         1     1875   22227
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     Normal or high birthweight              0     2566    4487
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     Normal or high birthweight              1      756    4487
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     Low birthweight                         0      721    4487
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     Low birthweight                         1      444    4487
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
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Normal or high birthweight              0    11868   22042
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Normal or high birthweight              1     1067   22042
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Low birthweight                         0     8512   22042
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Low birthweight                         1      595   22042
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     Normal or high birthweight              0     3188    4372
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     Normal or high birthweight              1       98    4372
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     Low birthweight                         0     1058    4372
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     Low birthweight                         1       28    4372
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
6-24 months                   JiVitA-3         BANGLADESH                     Normal or high birthweight              0     7494   14528
6-24 months                   JiVitA-3         BANGLADESH                     Normal or high birthweight              1     1084   14528
6-24 months                   JiVitA-3         BANGLADESH                     Low birthweight                         0     4595   14528
6-24 months                   JiVitA-3         BANGLADESH                     Low birthweight                         1     1355   14528
6-24 months                   JiVitA-4         BANGLADESH                     Normal or high birthweight              0     2620    4499
6-24 months                   JiVitA-4         BANGLADESH                     Normal or high birthweight              1      701    4499
6-24 months                   JiVitA-4         BANGLADESH                     Low birthweight                         0      745    4499
6-24 months                   JiVitA-4         BANGLADESH                     Low birthweight                         1      433    4499
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/089a4b44-eb64-4ac4-84e0-d94fab941773/57cc78b7-95dc-4973-aeb7-f386ae3f0c48/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/089a4b44-eb64-4ac4-84e0-d94fab941773/57cc78b7-95dc-4973-aeb7-f386ae3f0c48/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/089a4b44-eb64-4ac4-84e0-d94fab941773/57cc78b7-95dc-4973-aeb7-f386ae3f0c48/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/089a4b44-eb64-4ac4-84e0-d94fab941773/57cc78b7-95dc-4973-aeb7-f386ae3f0c48/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid          country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.4380768   0.3837075   0.4924460
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.6088581   0.4605781   0.7571380
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1168713   0.0950851   0.1386576
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Low birthweight              NA                0.2187032   0.1240060   0.3134004
0-24 months (no birth wast)   COHORTS          INDIA                          Normal or high birthweight   NA                0.1795304   0.1691947   0.1898660
0-24 months (no birth wast)   COHORTS          INDIA                          Low birthweight              NA                0.2494601   0.2245736   0.2743467
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.2892516   0.2721580   0.3063452
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Low birthweight              NA                0.4439689   0.3854322   0.5025055
0-24 months (no birth wast)   EE               PAKISTAN                       Normal or high birthweight   NA                0.4906201   0.4274259   0.5538142
0-24 months (no birth wast)   EE               PAKISTAN                       Low birthweight              NA                0.6247464   0.5420298   0.7074630
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.4568056   0.4114382   0.5021729
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Low birthweight              NA                0.6075261   0.5358319   0.6792202
0-24 months (no birth wast)   IRC              INDIA                          Normal or high birthweight   NA                0.4833173   0.4296852   0.5369494
0-24 months (no birth wast)   IRC              INDIA                          Low birthweight              NA                0.7078726   0.5982291   0.8175161
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.1556647   0.1478960   0.1634334
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Low birthweight              NA                0.2050095   0.1958615   0.2141575
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.2286292   0.2111599   0.2460985
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     Low birthweight              NA                0.3781023   0.3448891   0.4113155
0-24 months (no birth wast)   Keneba           GAMBIA                         Normal or high birthweight   NA                0.3702540   0.3441072   0.3964007
0-24 months (no birth wast)   Keneba           GAMBIA                         Low birthweight              NA                0.4924812   0.4250393   0.5599232
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.1943874   0.1403008   0.2484740
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     Low birthweight              NA                0.3038219   0.1805917   0.4270521
0-24 months (no birth wast)   MAL-ED           INDIA                          Normal or high birthweight   NA                0.3331962   0.2680508   0.3983417
0-24 months (no birth wast)   MAL-ED           INDIA                          Low birthweight              NA                0.5037104   0.3309933   0.6764274
0-24 months (no birth wast)   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.1737089   0.1227202   0.2246976
0-24 months (no birth wast)   MAL-ED           NEPAL                          Low birthweight              NA                0.2631579   0.0647291   0.4615867
0-24 months (no birth wast)   MAL-ED           PERU                           Normal or high birthweight   NA                0.0567376   0.0296916   0.0837836
0-24 months (no birth wast)   MAL-ED           PERU                           Low birthweight              NA                0.2941176   0.0771586   0.5110767
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.1393728   0.0992386   0.1795070
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.2631579   0.0648329   0.4614829
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.2652398   0.2224741   0.3080055
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.3781894   0.3048961   0.4514827
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.1169261   0.0907042   0.1431479
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.2311858   0.1679964   0.2943752
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.1483604   0.1180191   0.1787016
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Low birthweight              NA                0.2802282   0.2101662   0.3502902
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.3269301   0.2818254   0.3720349
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Low birthweight              NA                0.4738482   0.3991514   0.5485451
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1929609   0.1767533   0.2091685
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.3467136   0.2383272   0.4551000
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0956513   0.0903703   0.1009323
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.1444278   0.1275804   0.1612753
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.3119667   0.2602220   0.3637113
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.3581844   0.2064786   0.5098902
0-6 months (no birth wast)    COHORTS          INDIA                          Normal or high birthweight   NA                0.0920906   0.0840903   0.1000909
0-6 months (no birth wast)    COHORTS          INDIA                          Low birthweight              NA                0.0686096   0.0526135   0.0846056
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0963114   0.0851511   0.1074716
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Low birthweight              NA                0.0807117   0.0488032   0.1126202
0-6 months (no birth wast)    EE               PAKISTAN                       Normal or high birthweight   NA                0.2263371   0.1733766   0.2792975
0-6 months (no birth wast)    EE               PAKISTAN                       Low birthweight              NA                0.1840173   0.1168627   0.2511720
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.2029147   0.1661125   0.2397170
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Low birthweight              NA                0.1654634   0.1092106   0.2217163
0-6 months (no birth wast)    IRC              INDIA                          Normal or high birthweight   NA                0.3326376   0.2811625   0.3841127
0-6 months (no birth wast)    IRC              INDIA                          Low birthweight              NA                0.3498070   0.2267467   0.4728674
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.0826831   0.0768768   0.0884895
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Low birthweight              NA                0.0652930   0.0597295   0.0708565
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.0297981   0.0236420   0.0359541
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     Low birthweight              NA                0.0247383   0.0141072   0.0353693
0-6 months (no birth wast)    Keneba           GAMBIA                         Normal or high birthweight   NA                0.1138188   0.0965109   0.1311266
0-6 months (no birth wast)    Keneba           GAMBIA                         Low birthweight              NA                0.1603560   0.1108122   0.2098997
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0813324   0.0545954   0.1080693
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     Low birthweight              NA                0.0916215   0.0476274   0.1356156
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.0469961   0.0289279   0.0650643
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     Low birthweight              NA                0.0826636   0.0377941   0.1275331
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.1263902   0.0938616   0.1589189
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Low birthweight              NA                0.1267143   0.0994030   0.1540256
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0823373   0.0710319   0.0936427
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.1775081   0.0933373   0.2616789
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0324398   0.0292404   0.0356393
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0298075   0.0214116   0.0382033
6-24 months                   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.2436111   0.1966650   0.2905572
6-24 months                   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.4577228   0.3057408   0.6097049
6-24 months                   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1124727   0.0898963   0.1350491
6-24 months                   COHORTS          GUATEMALA                      Low birthweight              NA                0.2344436   0.1334749   0.3354123
6-24 months                   COHORTS          INDIA                          Normal or high birthweight   NA                0.1072647   0.0987011   0.1158283
6-24 months                   COHORTS          INDIA                          Low birthweight              NA                0.1936696   0.1714778   0.2158614
6-24 months                   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.2499116   0.2329802   0.2668429
6-24 months                   COHORTS          PHILIPPINES                    Low birthweight              NA                0.4343156   0.3736575   0.4949738
6-24 months                   EE               PAKISTAN                       Normal or high birthweight   NA                0.3814426   0.3200397   0.4428454
6-24 months                   EE               PAKISTAN                       Low birthweight              NA                0.5317493   0.4465152   0.6169834
6-24 months                   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.4268920   0.3788527   0.4749313
6-24 months                   GMS-Nepal        NEPAL                          Low birthweight              NA                0.5712768   0.4968259   0.6457277
6-24 months                   IRC              INDIA                          Normal or high birthweight   NA                0.2749793   0.2271449   0.3228137
6-24 months                   IRC              INDIA                          Low birthweight              NA                0.5086859   0.3892456   0.6281262
6-24 months                   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.1258774   0.1176610   0.1340937
6-24 months                   JiVitA-3         BANGLADESH                     Low birthweight              NA                0.2301223   0.2184346   0.2418100
6-24 months                   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.2119701   0.1949462   0.2289940
6-24 months                   JiVitA-4         BANGLADESH                     Low birthweight              NA                0.3672171   0.3339688   0.4004653
6-24 months                   Keneba           GAMBIA                         Normal or high birthweight   NA                0.3224851   0.2967387   0.3482314
6-24 months                   Keneba           GAMBIA                         Low birthweight              NA                0.4341303   0.3650412   0.5032193
6-24 months                   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.1483024   0.0976374   0.1989674
6-24 months                   MAL-ED           BANGLADESH                     Low birthweight              NA                0.2724784   0.1519967   0.3929601
6-24 months                   MAL-ED           INDIA                          Normal or high birthweight   NA                0.2198593   0.1612125   0.2785060
6-24 months                   MAL-ED           INDIA                          Low birthweight              NA                0.4701862   0.2965653   0.6438070
6-24 months                   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.1291866   0.0836143   0.1747589
6-24 months                   MAL-ED           NEPAL                          Low birthweight              NA                0.2631579   0.0647216   0.4615942
6-24 months                   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.1316872   0.0890884   0.1742861
6-24 months                   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.3333333   0.0943104   0.5723562
6-24 months                   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.2549404   0.2100350   0.2998458
6-24 months                   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.3693894   0.2934343   0.4453445
6-24 months                   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.0992895   0.0745550   0.1240239
6-24 months                   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.2335007   0.1694659   0.2975354
6-24 months                   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.1316790   0.1010554   0.1623025
6-24 months                   PROVIDE          BANGLADESH                     Low birthweight              NA                0.2521112   0.1803978   0.3238245
6-24 months                   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.2654853   0.2304941   0.3004766
6-24 months                   SAS-CompFeed     INDIA                          Low birthweight              NA                0.4376107   0.3730754   0.5021460
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1551722   0.1390256   0.1713188
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.2637292   0.1518958   0.3755627
6-24 months                   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0874186   0.0817006   0.0931367
6-24 months                   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.1507486   0.1320206   0.1694766


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
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     NA                   NA                0.1755073   0.1694892   0.1815253
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     NA                   NA                0.2674393   0.2524050   0.2824735
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
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     NA                   NA                0.0754015   0.0712481   0.0795550
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     NA                   NA                0.0288198   0.0235259   0.0341136
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
6-24 months                   JiVitA-3         BANGLADESH                     NA                   NA                0.1678827   0.1611001   0.1746653
6-24 months                   JiVitA-4         BANGLADESH                     NA                   NA                0.2520560   0.2372444   0.2668676
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


agecat                        studyid          country                        intervention_level           baseline_level                 estimate    ci_lower     ci_upper
----------------------------  ---------------  -----------------------------  ---------------------------  ---------------------------  ----------  ----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    1.3898433   1.0573674    1.8268623
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    1.8713165   1.1680231    2.9980790
0-24 months (no birth wast)   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.3895150   1.2386901    1.5587046
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    1.5348883   1.3289817    1.7726971
0-24 months (no birth wast)   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.2733812   1.0587625    1.5315047
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    1.3299445   1.1398631    1.5517236
0-24 months (no birth wast)   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   IRC              INDIA                          Low birthweight              Normal or high birthweight    1.4646128   1.2101196    1.7726269
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    1.3169941   1.2341051    1.4054504
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    1.6537796   1.4703526    1.8600892
0-24 months (no birth wast)   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.3301174   1.1407943    1.5508601
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    1.5629714   0.9546511    2.5589237
0-24 months (no birth wast)   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    1.5117529   1.0172766    2.2465836
0-24 months (no birth wast)   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    1.5149360   0.6745061    3.4025355
0-24 months (no birth wast)   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    5.1838235   2.1538670   12.4761774
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    1.8881579   0.8426742    4.2307456
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    1.4258398   1.1076973    1.8353563
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    1.9771965   1.3888625    2.8147539
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    1.8888346   1.3694464    2.6052105
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    1.4493868   1.3032536    1.6119060
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    1.7968075   1.2998304    2.4837987
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    1.5099405   1.3272093    1.7178304
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    1.1481496   0.7283952    1.8097970
0-6 months (no birth wast)    COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    COHORTS          INDIA                          Low birthweight              Normal or high birthweight    0.7450224   0.5809031    0.9555093
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    0.8380287   0.5550339    1.2653141
0-6 months (no birth wast)    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    EE               PAKISTAN                       Low birthweight              Normal or high birthweight    0.8130235   0.5268148    1.2547242
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    0.8154333   0.5544727    1.1992140
0-6 months (no birth wast)    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    IRC              INDIA                          Low birthweight              Normal or high birthweight    1.0516160   0.7168691    1.5426753
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    0.7896774   0.7098702    0.8784569
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    0.8301970   0.5109757    1.3488451
0-6 months (no birth wast)    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.4088710   0.9983948    1.9881089
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    1.1265069   0.6295724    2.0156822
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    1.7589467   0.9043085    3.4212810
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    1.0025642   0.8581704    1.1712533
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    2.1558651   1.3158552    3.5321169
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    0.9188535   0.6817860    1.2383531
6-24 months                   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    1.8789080   1.2808440    2.7562258
6-24 months                   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    2.0844482   1.2961900    3.3520735
6-24 months                   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.8055297   1.5712003    2.0748071
6-24 months                   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    1.7378774   1.4887883    2.0286416
6-24 months                   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.3940480   1.1116051    1.7482556
6-24 months                   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    1.3382233   1.1267451    1.5893937
6-24 months                   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   IRC              INDIA                          Low birthweight              Normal or high birthweight    1.8499062   1.3800084    2.4798057
6-24 months                   JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    1.8281467   1.6826871    1.9861805
6-24 months                   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    1.7324002   1.5326219    1.9582198
6-24 months                   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.3462027   1.1274177    1.6074447
6-24 months                   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    1.8373160   1.0517739    3.2095587
6-24 months                   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    2.1385780   1.3571977    3.3698229
6-24 months                   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    2.0370370   0.8860364    4.6832384
6-24 months                   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    2.5312500   1.1526408    5.5587366
6-24 months                   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    1.4489245   1.1044196    1.9008918
6-24 months                   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    2.3517163   1.6247774    3.4038936
6-24 months                   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    1.9145894   1.3265071    2.7633870
6-24 months                   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    1.6483422   1.4815226    1.8339457
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    1.6995909   1.0982428    2.6302102
6-24 months                   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.0000000
6-24 months                   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    1.7244443   1.4986976    1.9841948


### Parameter: PAR


agecat                        studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------------------------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0134468   -0.0053811    0.0322747
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0085376    0.0002989    0.0167764
0-24 months (no birth wast)   COHORTS          INDIA                          Normal or high birthweight   NA                 0.0125297    0.0075795    0.0174799
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0146140    0.0088271    0.0204008
0-24 months (no birth wast)   EE               PAKISTAN                       Normal or high birthweight   NA                 0.0466140    0.0093451    0.0838828
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0439532    0.0190803    0.0688260
0-24 months (no birth wast)   IRC              INDIA                          Normal or high birthweight   NA                 0.0377746    0.0156697    0.0598794
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.0198426    0.0149745    0.0247106
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0388101    0.0289579    0.0486623
0-24 months (no birth wast)   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0172216    0.0068685    0.0275747
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0248434   -0.0049443    0.0546311
0-24 months (no birth wast)   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0269733   -0.0008036    0.0547502
0-24 months (no birth wast)   MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0073256   -0.0097485    0.0243997
0-24 months (no birth wast)   MAL-ED           PERU                           Normal or high birthweight   NA                 0.0134965   -0.0004132    0.0274062
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0076860   -0.0053175    0.0206895
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0325227    0.0073625    0.0576829
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0263100    0.0101447    0.0424753
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0292233    0.0111136    0.0473330
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0356704    0.0214579    0.0498828
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0050043    0.0012726    0.0087361
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0063129    0.0041083    0.0085176
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0038271   -0.0201838    0.0125295
0-6 months (no birth wast)    COHORTS          INDIA                          Normal or high birthweight   NA                -0.0038699   -0.0068239   -0.0009159
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0008476   -0.0040792    0.0023840
0-6 months (no birth wast)    EE               PAKISTAN                       Normal or high birthweight   NA                -0.0124333   -0.0428115    0.0179449
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0110271   -0.0295274    0.0074733
0-6 months (no birth wast)    IRC              INDIA                          Normal or high birthweight   NA                 0.0059041   -0.0144566    0.0262647
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.0072816   -0.0105303   -0.0040329
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0009783   -0.0041761    0.0022195
0-6 months (no birth wast)    Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0053386   -0.0019011    0.0125783
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0015451   -0.0156069    0.0125166
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0071767   -0.0032916    0.0176449
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0001104   -0.0041704    0.0039496
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0027329   -0.0001129    0.0055787
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0003415   -0.0013921    0.0007092
6-24 months                   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0221423    0.0026366    0.0416481
6-24 months                   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0108646    0.0017615    0.0199677
6-24 months                   COHORTS          INDIA                          Normal or high birthweight   NA                 0.0168820    0.0121356    0.0216284
6-24 months                   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0168997    0.0108114    0.0229880
6-24 months                   EE               PAKISTAN                       Normal or high birthweight   NA                 0.0501928    0.0128444    0.0875413
6-24 months                   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0450944    0.0179732    0.0722157
6-24 months                   IRC              INDIA                          Normal or high birthweight   NA                 0.0369019    0.0136418    0.0601620
6-24 months                   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.0420053    0.0361289    0.0478818
6-24 months                   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0400859    0.0302578    0.0499140
6-24 months                   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0149216    0.0048683    0.0249748
6-24 months                   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0281682   -0.0017642    0.0581006
6-24 months                   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0367779    0.0076806    0.0658752
6-24 months                   MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0111643   -0.0064731    0.0288016
6-24 months                   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0117236   -0.0035254    0.0269726
6-24 months                   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0400788    0.0128732    0.0672843
6-24 months                   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0322174    0.0156881    0.0487466
6-24 months                   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0292966    0.0101586    0.0484346
6-24 months                   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0412587    0.0271553    0.0553620
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0044875    0.0006885    0.0082865
6-24 months                   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0083142    0.0057342    0.0108942


### Parameter: PAF


agecat                        studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------------------------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0297809   -0.0128955    0.0706592
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0680783    0.0007905    0.1308348
0-24 months (no birth wast)   COHORTS          INDIA                          Normal or high birthweight   NA                 0.0652385    0.0392153    0.0905569
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0480935    0.0288770    0.0669298
0-24 months (no birth wast)   EE               PAKISTAN                       Normal or high birthweight   NA                 0.0867666    0.0140430    0.1541262
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0877731    0.0363248    0.1364747
0-24 months (no birth wast)   IRC              INDIA                          Normal or high birthweight   NA                 0.0724912    0.0285100    0.1144812
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.1130583    0.0845753    0.1406552
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.1451173    0.1070473    0.1815641
0-24 months (no birth wast)   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0444456    0.0173048    0.0708368
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.1133208   -0.0313496    0.2376979
0-24 months (no birth wast)   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0748905   -0.0054861    0.1488419
0-24 months (no birth wast)   MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0404650   -0.0582243    0.1299506
0-24 months (no birth wast)   MAL-ED           PERU                           Normal or high birthweight   NA                 0.1921648   -0.0139099    0.3563554
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0522648   -0.0395781    0.1359937
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.1092237    0.0208920    0.1895864
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.1836829    0.0665646    0.2861063
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.1645608    0.0587436    0.2584820
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0983738    0.0634819    0.1319658
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0252789    0.0063038    0.0438917
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0619130    0.0402169    0.0831187
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0124202   -0.0669278    0.0393028
0-6 months (no birth wast)    COHORTS          INDIA                          Normal or high birthweight   NA                -0.0438660   -0.0777203   -0.0110751
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0088785   -0.0432928    0.0244005
0-6 months (no birth wast)    EE               PAKISTAN                       Normal or high birthweight   NA                -0.0581257   -0.2098616    0.0745801
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0574662   -0.1581625    0.0344751
0-6 months (no birth wast)    IRC              INDIA                          Normal or high birthweight   NA                 0.0174397   -0.0446195    0.0758120
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.0965714   -0.1396361   -0.0551339
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0339457   -0.1513438    0.0714817
0-6 months (no birth wast)    Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0448028   -0.0177468    0.1035082
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0193657   -0.2116922    0.1424337
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.1324774   -0.0790455    0.3025360
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0008741   -0.0334451    0.0306704
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0321252   -0.0016756    0.0647853
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0106376   -0.0438915    0.0215569
6-24 months                   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0833191    0.0074637    0.1533771
6-24 months                   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0880886    0.0125736    0.1578285
6-24 months                   COHORTS          INDIA                          Normal or high birthweight   NA                 0.1359843    0.0976849    0.1726580
6-24 months                   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0633396    0.0403400    0.0857881
6-24 months                   EE               PAKISTAN                       Normal or high birthweight   NA                 0.1162852    0.0248375    0.1991572
6-24 months                   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0955418    0.0358202    0.1515641
6-24 months                   IRC              INDIA                          Normal or high birthweight   NA                 0.1183203    0.0409986    0.1894078
6-24 months                   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.2502065    0.2145754    0.2842211
6-24 months                   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.1590357    0.1188334    0.1974038
6-24 months                   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0442243    0.0139313    0.0735867
6-24 months                   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.1596197   -0.0225568    0.3093400
6-24 months                   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.1433070    0.0242630    0.2478272
6-24 months                   MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0795455   -0.0529975    0.1954049
6-24 months                   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0817484   -0.0287843    0.1804055
6-24 months                   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.1358514    0.0389958    0.2229453
6-24 months                   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.2449863    0.1161127    0.3550698
6-24 months                   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.1819943    0.0581748    0.2895354
6-24 months                   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.1345052    0.0984116    0.1691539
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0281065    0.0041267    0.0515089
6-24 months                   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0868479    0.0598850    0.1130375
