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

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        meducyrs    sstunted   n_cell       n
----------  ---------------  -----------------------------  ---------  ---------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          High               0       49      92
Birth       CMC-V-BCS-2002   INDIA                          High               1        2      92
Birth       CMC-V-BCS-2002   INDIA                          Low                0       16      92
Birth       CMC-V-BCS-2002   INDIA                          Low                1        0      92
Birth       CMC-V-BCS-2002   INDIA                          Medium             0       23      92
Birth       CMC-V-BCS-2002   INDIA                          Medium             1        2      92
Birth       COHORTS          GUATEMALA                      High               0      177     842
Birth       COHORTS          GUATEMALA                      High               1        1     842
Birth       COHORTS          GUATEMALA                      Low                0      384     842
Birth       COHORTS          GUATEMALA                      Low                1        7     842
Birth       COHORTS          GUATEMALA                      Medium             0      270     842
Birth       COHORTS          GUATEMALA                      Medium             1        3     842
Birth       COHORTS          INDIA                          High               0      668    5216
Birth       COHORTS          INDIA                          High               1       10    5216
Birth       COHORTS          INDIA                          Low                0     1683    5216
Birth       COHORTS          INDIA                          Low                1       73    5216
Birth       COHORTS          INDIA                          Medium             0     2716    5216
Birth       COHORTS          INDIA                          Medium             1       66    5216
Birth       COHORTS          PHILIPPINES                    High               0     1156    3050
Birth       COHORTS          PHILIPPINES                    High               1       13    3050
Birth       COHORTS          PHILIPPINES                    Low                0      882    3050
Birth       COHORTS          PHILIPPINES                    Low                1       18    3050
Birth       COHORTS          PHILIPPINES                    Medium             0      966    3050
Birth       COHORTS          PHILIPPINES                    Medium             1       15    3050
Birth       EE               PAKISTAN                       High               0        5     239
Birth       EE               PAKISTAN                       High               1        2     239
Birth       EE               PAKISTAN                       Low                0      171     239
Birth       EE               PAKISTAN                       Low                1       44     239
Birth       EE               PAKISTAN                       Medium             0       16     239
Birth       EE               PAKISTAN                       Medium             1        1     239
Birth       GMS-Nepal        NEPAL                          High               0       82     693
Birth       GMS-Nepal        NEPAL                          High               1        3     693
Birth       GMS-Nepal        NEPAL                          Low                0      462     693
Birth       GMS-Nepal        NEPAL                          Low                1       23     693
Birth       GMS-Nepal        NEPAL                          Medium             0      118     693
Birth       GMS-Nepal        NEPAL                          Medium             1        5     693
Birth       IRC              INDIA                          High               0      110     388
Birth       IRC              INDIA                          High               1        3     388
Birth       IRC              INDIA                          Low                0      137     388
Birth       IRC              INDIA                          Low                1        5     388
Birth       IRC              INDIA                          Medium             0      125     388
Birth       IRC              INDIA                          Medium             1        8     388
Birth       MAL-ED           BANGLADESH                     High               0       65     187
Birth       MAL-ED           BANGLADESH                     High               1        2     187
Birth       MAL-ED           BANGLADESH                     Low                0       62     187
Birth       MAL-ED           BANGLADESH                     Low                1        3     187
Birth       MAL-ED           BANGLADESH                     Medium             0       53     187
Birth       MAL-ED           BANGLADESH                     Medium             1        2     187
Birth       MAL-ED           BRAZIL                         High               0       18      65
Birth       MAL-ED           BRAZIL                         High               1        0      65
Birth       MAL-ED           BRAZIL                         Low                0       17      65
Birth       MAL-ED           BRAZIL                         Low                1        0      65
Birth       MAL-ED           BRAZIL                         Medium             0       27      65
Birth       MAL-ED           BRAZIL                         Medium             1        3      65
Birth       MAL-ED           INDIA                          High               0        8      40
Birth       MAL-ED           INDIA                          High               1        0      40
Birth       MAL-ED           INDIA                          Low                0       18      40
Birth       MAL-ED           INDIA                          Low                1        0      40
Birth       MAL-ED           INDIA                          Medium             0       12      40
Birth       MAL-ED           INDIA                          Medium             1        2      40
Birth       MAL-ED           NEPAL                          High               0        5      25
Birth       MAL-ED           NEPAL                          High               1        0      25
Birth       MAL-ED           NEPAL                          Low                0       12      25
Birth       MAL-ED           NEPAL                          Low                1        0      25
Birth       MAL-ED           NEPAL                          Medium             0        7      25
Birth       MAL-ED           NEPAL                          Medium             1        1      25
Birth       MAL-ED           PERU                           High               0       66     233
Birth       MAL-ED           PERU                           High               1        2     233
Birth       MAL-ED           PERU                           Low                0       83     233
Birth       MAL-ED           PERU                           Low                1        1     233
Birth       MAL-ED           PERU                           Medium             0       80     233
Birth       MAL-ED           PERU                           Medium             1        1     233
Birth       MAL-ED           SOUTH AFRICA                   High               0       35     123
Birth       MAL-ED           SOUTH AFRICA                   High               1        0     123
Birth       MAL-ED           SOUTH AFRICA                   Low                0       60     123
Birth       MAL-ED           SOUTH AFRICA                   Low                1        2     123
Birth       MAL-ED           SOUTH AFRICA                   Medium             0       26     123
Birth       MAL-ED           SOUTH AFRICA                   Medium             1        0     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               0        7     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               1        0     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                0       32     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                1        2     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             0       58     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             1        6     105
Birth       NIH-Birth        BANGLADESH                     High               0      165     608
Birth       NIH-Birth        BANGLADESH                     High               1        5     608
Birth       NIH-Birth        BANGLADESH                     Low                0      215     608
Birth       NIH-Birth        BANGLADESH                     Low                1        9     608
Birth       NIH-Birth        BANGLADESH                     Medium             0      209     608
Birth       NIH-Birth        BANGLADESH                     Medium             1        5     608
Birth       NIH-Crypto       BANGLADESH                     High               0      243     732
Birth       NIH-Crypto       BANGLADESH                     High               1        4     732
Birth       NIH-Crypto       BANGLADESH                     Low                0      230     732
Birth       NIH-Crypto       BANGLADESH                     Low                1        2     732
Birth       NIH-Crypto       BANGLADESH                     Medium             0      249     732
Birth       NIH-Crypto       BANGLADESH                     Medium             1        4     732
Birth       PROBIT           BELARUS                        High               0     2249   13893
Birth       PROBIT           BELARUS                        High               1        0   13893
Birth       PROBIT           BELARUS                        Low                0     4963   13893
Birth       PROBIT           BELARUS                        Low                1        2   13893
Birth       PROBIT           BELARUS                        Medium             0     6676   13893
Birth       PROBIT           BELARUS                        Medium             1        3   13893
Birth       PROVIDE          BANGLADESH                     High               0      170     539
Birth       PROVIDE          BANGLADESH                     High               1        1     539
Birth       PROVIDE          BANGLADESH                     Low                0      164     539
Birth       PROVIDE          BANGLADESH                     Low                1        1     539
Birth       PROVIDE          BANGLADESH                     Medium             0      201     539
Birth       PROVIDE          BANGLADESH                     Medium             1        2     539
Birth       SAS-CompFeed     INDIA                          High               0      235    1252
Birth       SAS-CompFeed     INDIA                          High               1       13    1252
Birth       SAS-CompFeed     INDIA                          Low                0      535    1252
Birth       SAS-CompFeed     INDIA                          Low                1       52    1252
Birth       SAS-CompFeed     INDIA                          Medium             0      391    1252
Birth       SAS-CompFeed     INDIA                          Medium             1       26    1252
Birth       ZVITAMBO         ZIMBABWE                       High               0     7301   13855
Birth       ZVITAMBO         ZIMBABWE                       High               1      214   13855
Birth       ZVITAMBO         ZIMBABWE                       Low                0     2802   13855
Birth       ZVITAMBO         ZIMBABWE                       Low                1      110   13855
Birth       ZVITAMBO         ZIMBABWE                       Medium             0     3310   13855
Birth       ZVITAMBO         ZIMBABWE                       Medium             1      118   13855
6 months    CMC-V-BCS-2002   INDIA                          High               0      144     369
6 months    CMC-V-BCS-2002   INDIA                          High               1       13     369
6 months    CMC-V-BCS-2002   INDIA                          Low                0       89     369
6 months    CMC-V-BCS-2002   INDIA                          Low                1       16     369
6 months    CMC-V-BCS-2002   INDIA                          Medium             0       94     369
6 months    CMC-V-BCS-2002   INDIA                          Medium             1       13     369
6 months    COHORTS          GUATEMALA                      High               0      161     952
6 months    COHORTS          GUATEMALA                      High               1       24     952
6 months    COHORTS          GUATEMALA                      Low                0      381     952
6 months    COHORTS          GUATEMALA                      Low                1       68     952
6 months    COHORTS          GUATEMALA                      Medium             0      288     952
6 months    COHORTS          GUATEMALA                      Medium             1       30     952
6 months    COHORTS          INDIA                          High               0      731    5413
6 months    COHORTS          INDIA                          High               1        5    5413
6 months    COHORTS          INDIA                          Low                0     1638    5413
6 months    COHORTS          INDIA                          Low                1      139    5413
6 months    COHORTS          INDIA                          Medium             0     2793    5413
6 months    COHORTS          INDIA                          Medium             1      107    5413
6 months    COHORTS          PHILIPPINES                    High               0      986    2708
6 months    COHORTS          PHILIPPINES                    High               1       28    2708
6 months    COHORTS          PHILIPPINES                    Low                0      770    2708
6 months    COHORTS          PHILIPPINES                    Low                1       56    2708
6 months    COHORTS          PHILIPPINES                    Medium             0      820    2708
6 months    COHORTS          PHILIPPINES                    Medium             1       48    2708
6 months    EE               PAKISTAN                       High               0       12     370
6 months    EE               PAKISTAN                       High               1        3     370
6 months    EE               PAKISTAN                       Low                0      248     370
6 months    EE               PAKISTAN                       Low                1       74     370
6 months    EE               PAKISTAN                       Medium             0       30     370
6 months    EE               PAKISTAN                       Medium             1        3     370
6 months    GMS-Nepal        NEPAL                          High               0       68     561
6 months    GMS-Nepal        NEPAL                          High               1        0     561
6 months    GMS-Nepal        NEPAL                          Low                0      378     561
6 months    GMS-Nepal        NEPAL                          Low                1       21     561
6 months    GMS-Nepal        NEPAL                          Medium             0       94     561
6 months    GMS-Nepal        NEPAL                          Medium             1        0     561
6 months    Guatemala BSC    GUATEMALA                      High               0      103     277
6 months    Guatemala BSC    GUATEMALA                      High               1       14     277
6 months    Guatemala BSC    GUATEMALA                      Low                0       67     277
6 months    Guatemala BSC    GUATEMALA                      Low                1        6     277
6 months    Guatemala BSC    GUATEMALA                      Medium             0       82     277
6 months    Guatemala BSC    GUATEMALA                      Medium             1        5     277
6 months    IRC              INDIA                          High               0      117     407
6 months    IRC              INDIA                          High               1        6     407
6 months    IRC              INDIA                          Low                0      133     407
6 months    IRC              INDIA                          Low                1       13     407
6 months    IRC              INDIA                          Medium             0      128     407
6 months    IRC              INDIA                          Medium             1       10     407
6 months    LCNI-5           MALAWI                         High               0      279     813
6 months    LCNI-5           MALAWI                         High               1       19     813
6 months    LCNI-5           MALAWI                         Low                0      233     813
6 months    LCNI-5           MALAWI                         Low                1       28     813
6 months    LCNI-5           MALAWI                         Medium             0      236     813
6 months    LCNI-5           MALAWI                         Medium             1       18     813
6 months    MAL-ED           BANGLADESH                     High               0       72     196
6 months    MAL-ED           BANGLADESH                     High               1        1     196
6 months    MAL-ED           BANGLADESH                     Low                0       59     196
6 months    MAL-ED           BANGLADESH                     Low                1        5     196
6 months    MAL-ED           BANGLADESH                     Medium             0       58     196
6 months    MAL-ED           BANGLADESH                     Medium             1        1     196
6 months    MAL-ED           BRAZIL                         High               0       71     208
6 months    MAL-ED           BRAZIL                         High               1        0     208
6 months    MAL-ED           BRAZIL                         Low                0       56     208
6 months    MAL-ED           BRAZIL                         Low                1        0     208
6 months    MAL-ED           BRAZIL                         Medium             0       81     208
6 months    MAL-ED           BRAZIL                         Medium             1        0     208
6 months    MAL-ED           INDIA                          High               0       58     208
6 months    MAL-ED           INDIA                          High               1        1     208
6 months    MAL-ED           INDIA                          Low                0       70     208
6 months    MAL-ED           INDIA                          Low                1        2     208
6 months    MAL-ED           INDIA                          Medium             0       73     208
6 months    MAL-ED           INDIA                          Medium             1        4     208
6 months    MAL-ED           NEPAL                          High               0       53     221
6 months    MAL-ED           NEPAL                          High               1        0     221
6 months    MAL-ED           NEPAL                          Low                0       93     221
6 months    MAL-ED           NEPAL                          Low                1        0     221
6 months    MAL-ED           NEPAL                          Medium             0       74     221
6 months    MAL-ED           NEPAL                          Medium             1        1     221
6 months    MAL-ED           PERU                           High               0       80     272
6 months    MAL-ED           PERU                           High               1        1     272
6 months    MAL-ED           PERU                           Low                0       88     272
6 months    MAL-ED           PERU                           Low                1        6     272
6 months    MAL-ED           PERU                           Medium             0       94     272
6 months    MAL-ED           PERU                           Medium             1        3     272
6 months    MAL-ED           SOUTH AFRICA                   High               0       68     254
6 months    MAL-ED           SOUTH AFRICA                   High               1        2     254
6 months    MAL-ED           SOUTH AFRICA                   Low                0      123     254
6 months    MAL-ED           SOUTH AFRICA                   Low                1        4     254
6 months    MAL-ED           SOUTH AFRICA                   Medium             0       57     254
6 months    MAL-ED           SOUTH AFRICA                   Medium             1        0     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               0        9     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               1        0     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                0       60     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                1        2     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             0      126     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             1        6     203
6 months    NIH-Birth        BANGLADESH                     High               0      152     537
6 months    NIH-Birth        BANGLADESH                     High               1        3     537
6 months    NIH-Birth        BANGLADESH                     Low                0      174     537
6 months    NIH-Birth        BANGLADESH                     Low                1       21     537
6 months    NIH-Birth        BANGLADESH                     Medium             0      176     537
6 months    NIH-Birth        BANGLADESH                     Medium             1       11     537
6 months    NIH-Crypto       BANGLADESH                     High               0      232     715
6 months    NIH-Crypto       BANGLADESH                     High               1        8     715
6 months    NIH-Crypto       BANGLADESH                     Low                0      221     715
6 months    NIH-Crypto       BANGLADESH                     Low                1        8     715
6 months    NIH-Crypto       BANGLADESH                     Medium             0      239     715
6 months    NIH-Crypto       BANGLADESH                     Medium             1        7     715
6 months    PROBIT           BELARUS                        High               0     2644   15760
6 months    PROBIT           BELARUS                        High               1       13   15760
6 months    PROBIT           BELARUS                        Low                0     5543   15760
6 months    PROBIT           BELARUS                        Low                1      100   15760
6 months    PROBIT           BELARUS                        Medium             0     7396   15760
6 months    PROBIT           BELARUS                        Medium             1       64   15760
6 months    PROVIDE          BANGLADESH                     High               0      208     604
6 months    PROVIDE          BANGLADESH                     High               1        1     604
6 months    PROVIDE          BANGLADESH                     Low                0      181     604
6 months    PROVIDE          BANGLADESH                     Low                1        6     604
6 months    PROVIDE          BANGLADESH                     Medium             0      201     604
6 months    PROVIDE          BANGLADESH                     Medium             1        7     604
6 months    SAS-CompFeed     INDIA                          High               0      278    1336
6 months    SAS-CompFeed     INDIA                          High               1       12    1336
6 months    SAS-CompFeed     INDIA                          Low                0      521    1336
6 months    SAS-CompFeed     INDIA                          Low                1       76    1336
6 months    SAS-CompFeed     INDIA                          Medium             0      409    1336
6 months    SAS-CompFeed     INDIA                          Medium             1       40    1336
6 months    SAS-FoodSuppl    INDIA                          High               0       33     380
6 months    SAS-FoodSuppl    INDIA                          High               1        2     380
6 months    SAS-FoodSuppl    INDIA                          Low                0      257     380
6 months    SAS-FoodSuppl    INDIA                          Low                1       47     380
6 months    SAS-FoodSuppl    INDIA                          Medium             0       36     380
6 months    SAS-FoodSuppl    INDIA                          Medium             1        5     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0      506    2021
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        6    2021
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0       73    2021
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        1    2021
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0     1423    2021
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1       12    2021
6 months    ZVITAMBO         ZIMBABWE                       High               0     4535    8655
6 months    ZVITAMBO         ZIMBABWE                       High               1      167    8655
6 months    ZVITAMBO         ZIMBABWE                       Low                0     1714    8655
6 months    ZVITAMBO         ZIMBABWE                       Low                1       81    8655
6 months    ZVITAMBO         ZIMBABWE                       Medium             0     2055    8655
6 months    ZVITAMBO         ZIMBABWE                       Medium             1      103    8655
24 months   CMC-V-BCS-2002   INDIA                          High               0      106     371
24 months   CMC-V-BCS-2002   INDIA                          High               1       52     371
24 months   CMC-V-BCS-2002   INDIA                          Low                0       66     371
24 months   CMC-V-BCS-2002   INDIA                          Low                1       39     371
24 months   CMC-V-BCS-2002   INDIA                          Medium             0       74     371
24 months   CMC-V-BCS-2002   INDIA                          Medium             1       34     371
24 months   COHORTS          GUATEMALA                      High               0      101    1057
24 months   COHORTS          GUATEMALA                      High               1      108    1057
24 months   COHORTS          GUATEMALA                      Low                0      241    1057
24 months   COHORTS          GUATEMALA                      Low                1      265    1057
24 months   COHORTS          GUATEMALA                      Medium             0      199    1057
24 months   COHORTS          GUATEMALA                      Medium             1      143    1057
24 months   COHORTS          INDIA                          High               0      583    4198
24 months   COHORTS          INDIA                          High               1       25    4198
24 months   COHORTS          INDIA                          Low                0      721    4198
24 months   COHORTS          INDIA                          Low                1      551    4198
24 months   COHORTS          INDIA                          Medium             0     1871    4198
24 months   COHORTS          INDIA                          Medium             1      447    4198
24 months   COHORTS          PHILIPPINES                    High               0      752    2445
24 months   COHORTS          PHILIPPINES                    High               1      162    2445
24 months   COHORTS          PHILIPPINES                    Low                0      453    2445
24 months   COHORTS          PHILIPPINES                    Low                1      291    2445
24 months   COHORTS          PHILIPPINES                    Medium             0      533    2445
24 months   COHORTS          PHILIPPINES                    Medium             1      254    2445
24 months   EE               PAKISTAN                       High               0        5     165
24 months   EE               PAKISTAN                       High               1        1     165
24 months   EE               PAKISTAN                       Low                0       88     165
24 months   EE               PAKISTAN                       Low                1       54     165
24 months   EE               PAKISTAN                       Medium             0       15     165
24 months   EE               PAKISTAN                       Medium             1        2     165
24 months   GMS-Nepal        NEPAL                          High               0       53     485
24 months   GMS-Nepal        NEPAL                          High               1        2     485
24 months   GMS-Nepal        NEPAL                          Low                0      301     485
24 months   GMS-Nepal        NEPAL                          Low                1       43     485
24 months   GMS-Nepal        NEPAL                          Medium             0       78     485
24 months   GMS-Nepal        NEPAL                          Medium             1        8     485
24 months   IRC              INDIA                          High               0      111     409
24 months   IRC              INDIA                          High               1       13     409
24 months   IRC              INDIA                          Low                0      131     409
24 months   IRC              INDIA                          Low                1       15     409
24 months   IRC              INDIA                          Medium             0      126     409
24 months   IRC              INDIA                          Medium             1       13     409
24 months   LCNI-5           MALAWI                         High               0      201     572
24 months   LCNI-5           MALAWI                         High               1       19     572
24 months   LCNI-5           MALAWI                         Low                0      150     572
24 months   LCNI-5           MALAWI                         Low                1       27     572
24 months   LCNI-5           MALAWI                         Medium             0      153     572
24 months   LCNI-5           MALAWI                         Medium             1       22     572
24 months   MAL-ED           BANGLADESH                     High               0       57     171
24 months   MAL-ED           BANGLADESH                     High               1        7     171
24 months   MAL-ED           BANGLADESH                     Low                0       53     171
24 months   MAL-ED           BANGLADESH                     Low                1        6     171
24 months   MAL-ED           BANGLADESH                     Medium             0       44     171
24 months   MAL-ED           BANGLADESH                     Medium             1        4     171
24 months   MAL-ED           BRAZIL                         High               0       62     168
24 months   MAL-ED           BRAZIL                         High               1        0     168
24 months   MAL-ED           BRAZIL                         Low                0       42     168
24 months   MAL-ED           BRAZIL                         Low                1        0     168
24 months   MAL-ED           BRAZIL                         Medium             0       63     168
24 months   MAL-ED           BRAZIL                         Medium             1        1     168
24 months   MAL-ED           INDIA                          High               0       53     199
24 months   MAL-ED           INDIA                          High               1        2     199
24 months   MAL-ED           INDIA                          Low                0       60     199
24 months   MAL-ED           INDIA                          Low                1        9     199
24 months   MAL-ED           INDIA                          Medium             0       65     199
24 months   MAL-ED           INDIA                          Medium             1       10     199
24 months   MAL-ED           NEPAL                          High               0       46     213
24 months   MAL-ED           NEPAL                          High               1        2     213
24 months   MAL-ED           NEPAL                          Low                0       89     213
24 months   MAL-ED           NEPAL                          Low                1        2     213
24 months   MAL-ED           NEPAL                          Medium             0       73     213
24 months   MAL-ED           NEPAL                          Medium             1        1     213
24 months   MAL-ED           PERU                           High               0       56     200
24 months   MAL-ED           PERU                           High               1        3     200
24 months   MAL-ED           PERU                           Low                0       67     200
24 months   MAL-ED           PERU                           Low                1        7     200
24 months   MAL-ED           PERU                           Medium             0       62     200
24 months   MAL-ED           PERU                           Medium             1        5     200
24 months   MAL-ED           SOUTH AFRICA                   High               0       63     238
24 months   MAL-ED           SOUTH AFRICA                   High               1        4     238
24 months   MAL-ED           SOUTH AFRICA                   Low                0      103     238
24 months   MAL-ED           SOUTH AFRICA                   Low                1       17     238
24 months   MAL-ED           SOUTH AFRICA                   Medium             0       45     238
24 months   MAL-ED           SOUTH AFRICA                   Medium             1        6     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               0        6     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               1        1     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                0       32     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                1       22     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             0       85     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             1       29     175
24 months   NIH-Birth        BANGLADESH                     High               0      117     429
24 months   NIH-Birth        BANGLADESH                     High               1       13     429
24 months   NIH-Birth        BANGLADESH                     Low                0      104     429
24 months   NIH-Birth        BANGLADESH                     Low                1       49     429
24 months   NIH-Birth        BANGLADESH                     Medium             0      113     429
24 months   NIH-Birth        BANGLADESH                     Medium             1       33     429
24 months   NIH-Crypto       BANGLADESH                     High               0      185     514
24 months   NIH-Crypto       BANGLADESH                     High               1        6     514
24 months   NIH-Crypto       BANGLADESH                     Low                0      133     514
24 months   NIH-Crypto       BANGLADESH                     Low                1       13     514
24 months   NIH-Crypto       BANGLADESH                     Medium             0      160     514
24 months   NIH-Crypto       BANGLADESH                     Medium             1       17     514
24 months   PROBIT           BELARUS                        High               0      663    4035
24 months   PROBIT           BELARUS                        High               1        1    4035
24 months   PROBIT           BELARUS                        Low                0     1378    4035
24 months   PROBIT           BELARUS                        Low                1       29    4035
24 months   PROBIT           BELARUS                        Medium             0     1929    4035
24 months   PROBIT           BELARUS                        Medium             1       35    4035
24 months   PROVIDE          BANGLADESH                     High               0      193     578
24 months   PROVIDE          BANGLADESH                     High               1        8     578
24 months   PROVIDE          BANGLADESH                     Low                0      150     578
24 months   PROVIDE          BANGLADESH                     Low                1       24     578
24 months   PROVIDE          BANGLADESH                     Medium             0      183     578
24 months   PROVIDE          BANGLADESH                     Medium             1       20     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1        1       6
24 months   ZVITAMBO         ZIMBABWE                       High               0      787    1639
24 months   ZVITAMBO         ZIMBABWE                       High               1       75    1639
24 months   ZVITAMBO         ZIMBABWE                       Low                0      298    1639
24 months   ZVITAMBO         ZIMBABWE                       Low                1       47    1639
24 months   ZVITAMBO         ZIMBABWE                       Medium             0      376    1639
24 months   ZVITAMBO         ZIMBABWE                       Medium             1       56    1639


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
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
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/f0b4bfbc-bf34-4cf6-b027-b04067e8b43e/115a07de-6a60-4662-ba0c-4f1b57407e6e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f0b4bfbc-bf34-4cf6-b027-b04067e8b43e/115a07de-6a60-4662-ba0c-4f1b57407e6e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f0b4bfbc-bf34-4cf6-b027-b04067e8b43e/115a07de-6a60-4662-ba0c-4f1b57407e6e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f0b4bfbc-bf34-4cf6-b027-b04067e8b43e/115a07de-6a60-4662-ba0c-4f1b57407e6e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA         High                 NA                0.0147493   0.0056745   0.0238240
Birth       COHORTS          INDIA         Low                  NA                0.0415718   0.0322348   0.0509087
Birth       COHORTS          INDIA         Medium               NA                0.0237239   0.0180682   0.0293797
Birth       COHORTS          PHILIPPINES   High                 NA                0.0111206   0.0051082   0.0171330
Birth       COHORTS          PHILIPPINES   Low                  NA                0.0200000   0.0108520   0.0291480
Birth       COHORTS          PHILIPPINES   Medium               NA                0.0152905   0.0076107   0.0229703
Birth       NIH-Birth        BANGLADESH    High                 NA                0.0294118   0.0039927   0.0548308
Birth       NIH-Birth        BANGLADESH    Low                  NA                0.0401786   0.0144406   0.0659165
Birth       NIH-Birth        BANGLADESH    Medium               NA                0.0233645   0.0031090   0.0436200
Birth       SAS-CompFeed     INDIA         High                 NA                0.0524194   0.0369617   0.0678771
Birth       SAS-CompFeed     INDIA         Low                  NA                0.0885860   0.0600275   0.1171446
Birth       SAS-CompFeed     INDIA         Medium               NA                0.0623501   0.0328535   0.0918467
Birth       ZVITAMBO         ZIMBABWE      High                 NA                0.0284764   0.0247157   0.0322371
Birth       ZVITAMBO         ZIMBABWE      Low                  NA                0.0377747   0.0308499   0.0446995
Birth       ZVITAMBO         ZIMBABWE      Medium               NA                0.0344224   0.0283192   0.0405256
6 months    CMC-V-BCS-2002   INDIA         High                 NA                0.0828025   0.0396366   0.1259684
6 months    CMC-V-BCS-2002   INDIA         Low                  NA                0.1523810   0.0835461   0.2212158
6 months    CMC-V-BCS-2002   INDIA         Medium               NA                0.1214953   0.0595088   0.1834819
6 months    COHORTS          GUATEMALA     High                 NA                0.1297297   0.0812860   0.1781734
6 months    COHORTS          GUATEMALA     Low                  NA                0.1514477   0.1182717   0.1846236
6 months    COHORTS          GUATEMALA     Medium               NA                0.0943396   0.0621962   0.1264831
6 months    COHORTS          INDIA         High                 NA                0.0067935   0.0008586   0.0127284
6 months    COHORTS          INDIA         Low                  NA                0.0782217   0.0657358   0.0907077
6 months    COHORTS          INDIA         Medium               NA                0.0368966   0.0300351   0.0437580
6 months    COHORTS          PHILIPPINES   High                 NA                0.0276134   0.0175258   0.0377010
6 months    COHORTS          PHILIPPINES   Low                  NA                0.0677966   0.0506492   0.0849440
6 months    COHORTS          PHILIPPINES   Medium               NA                0.0552995   0.0400914   0.0705077
6 months    Guatemala BSC    GUATEMALA     High                 NA                0.1196581   0.0607416   0.1785747
6 months    Guatemala BSC    GUATEMALA     Low                  NA                0.0821918   0.0190725   0.1453111
6 months    Guatemala BSC    GUATEMALA     Medium               NA                0.0574713   0.0084769   0.1064657
6 months    IRC              INDIA         High                 NA                0.0487805   0.0106657   0.0868952
6 months    IRC              INDIA         Low                  NA                0.0890411   0.0427870   0.1352952
6 months    IRC              INDIA         Medium               NA                0.0724638   0.0291557   0.1157718
6 months    LCNI-5           MALAWI        High                 NA                0.0637584   0.0360016   0.0915152
6 months    LCNI-5           MALAWI        Low                  NA                0.1072797   0.0697123   0.1448471
6 months    LCNI-5           MALAWI        Medium               NA                0.0708661   0.0392901   0.1024421
6 months    NIH-Crypto       BANGLADESH    High                 NA                0.0333333   0.0106073   0.0560594
6 months    NIH-Crypto       BANGLADESH    Low                  NA                0.0349345   0.0111365   0.0587325
6 months    NIH-Crypto       BANGLADESH    Medium               NA                0.0284553   0.0076632   0.0492473
6 months    PROBIT           BELARUS       High                 NA                0.0048927   0.0009804   0.0088050
6 months    PROBIT           BELARUS       Low                  NA                0.0177211   0.0079019   0.0275402
6 months    PROBIT           BELARUS       Medium               NA                0.0085791   0.0039329   0.0132253
6 months    SAS-CompFeed     INDIA         High                 NA                0.0413793   0.0226362   0.0601225
6 months    SAS-CompFeed     INDIA         Low                  NA                0.1273032   0.1083867   0.1462196
6 months    SAS-CompFeed     INDIA         Medium               NA                0.0890869   0.0621624   0.1160113
6 months    ZVITAMBO         ZIMBABWE      High                 NA                0.0355168   0.0302263   0.0408073
6 months    ZVITAMBO         ZIMBABWE      Low                  NA                0.0451253   0.0355220   0.0547287
6 months    ZVITAMBO         ZIMBABWE      Medium               NA                0.0477294   0.0387340   0.0567248
24 months   CMC-V-BCS-2002   INDIA         High                 NA                0.3291139   0.2557465   0.4024813
24 months   CMC-V-BCS-2002   INDIA         Low                  NA                0.3714286   0.2788832   0.4639739
24 months   CMC-V-BCS-2002   INDIA         Medium               NA                0.3148148   0.2271039   0.4025258
24 months   COHORTS          GUATEMALA     High                 NA                0.5167464   0.4489656   0.5845272
24 months   COHORTS          GUATEMALA     Low                  NA                0.5237154   0.4801783   0.5672525
24 months   COHORTS          GUATEMALA     Medium               NA                0.4181287   0.3658278   0.4704295
24 months   COHORTS          INDIA         High                 NA                0.0411184   0.0253333   0.0569036
24 months   COHORTS          INDIA         Low                  NA                0.4331761   0.4059420   0.4604102
24 months   COHORTS          INDIA         Medium               NA                0.1928387   0.1767759   0.2089014
24 months   COHORTS          PHILIPPINES   High                 NA                0.1772429   0.1524810   0.2020048
24 months   COHORTS          PHILIPPINES   Low                  NA                0.3911290   0.3560560   0.4262020
24 months   COHORTS          PHILIPPINES   Medium               NA                0.3227446   0.2900741   0.3554151
24 months   IRC              INDIA         High                 NA                0.1048387   0.0508528   0.1588246
24 months   IRC              INDIA         Low                  NA                0.1027397   0.0534301   0.1520493
24 months   IRC              INDIA         Medium               NA                0.0935252   0.0450617   0.1419886
24 months   LCNI-5           MALAWI        High                 NA                0.0863636   0.0492128   0.1235145
24 months   LCNI-5           MALAWI        Low                  NA                0.1525424   0.0995278   0.2055570
24 months   LCNI-5           MALAWI        Medium               NA                0.1257143   0.0765525   0.1748761
24 months   NIH-Birth        BANGLADESH    High                 NA                0.1000000   0.0483697   0.1516303
24 months   NIH-Birth        BANGLADESH    Low                  NA                0.3202614   0.2462443   0.3942786
24 months   NIH-Birth        BANGLADESH    Medium               NA                0.2260274   0.1581036   0.2939512
24 months   NIH-Crypto       BANGLADESH    High                 NA                0.0314136   0.0066518   0.0561754
24 months   NIH-Crypto       BANGLADESH    Low                  NA                0.0890411   0.0427988   0.1352834
24 months   NIH-Crypto       BANGLADESH    Medium               NA                0.0960452   0.0525946   0.1394958
24 months   PROVIDE          BANGLADESH    High                 NA                0.0398010   0.0127518   0.0668501
24 months   PROVIDE          BANGLADESH    Low                  NA                0.1379310   0.0866506   0.1892114
24 months   PROVIDE          BANGLADESH    Medium               NA                0.0985222   0.0574904   0.1395540
24 months   ZVITAMBO         ZIMBABWE      High                 NA                0.0870070   0.0681862   0.1058277
24 months   ZVITAMBO         ZIMBABWE      Low                  NA                0.1362319   0.1000235   0.1724403
24 months   ZVITAMBO         ZIMBABWE      Medium               NA                0.1296296   0.0979454   0.1613138


### Parameter: E(Y)


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA         NA                   NA                0.0285660   0.0240448   0.0330871
Birth       COHORTS          PHILIPPINES   NA                   NA                0.0150820   0.0107558   0.0194081
Birth       NIH-Birth        BANGLADESH    NA                   NA                0.0312500   0.0174085   0.0450915
Birth       SAS-CompFeed     INDIA         NA                   NA                0.0726837   0.0523147   0.0930527
Birth       ZVITAMBO         ZIMBABWE      NA                   NA                0.0319018   0.0289755   0.0348282
6 months    CMC-V-BCS-2002   INDIA         NA                   NA                0.1138211   0.0813725   0.1462698
6 months    COHORTS          GUATEMALA     NA                   NA                0.1281513   0.1069071   0.1493954
6 months    COHORTS          INDIA         NA                   NA                0.0463699   0.0407674   0.0519723
6 months    COHORTS          PHILIPPINES   NA                   NA                0.0487445   0.0406327   0.0568562
6 months    Guatemala BSC    GUATEMALA     NA                   NA                0.0902527   0.0564475   0.1240580
6 months    IRC              INDIA         NA                   NA                0.0712531   0.0462303   0.0962759
6 months    LCNI-5           MALAWI        NA                   NA                0.0799508   0.0612962   0.0986054
6 months    NIH-Crypto       BANGLADESH    NA                   NA                0.0321678   0.0192256   0.0451101
6 months    PROBIT           BELARUS       NA                   NA                0.0112310   0.0054733   0.0169886
6 months    SAS-CompFeed     INDIA         NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ZVITAMBO         ZIMBABWE      NA                   NA                0.0405546   0.0363986   0.0447105
24 months   CMC-V-BCS-2002   INDIA         NA                   NA                0.3369272   0.2887662   0.3850883
24 months   COHORTS          GUATEMALA     NA                   NA                0.4881741   0.4580257   0.5183225
24 months   COHORTS          INDIA         NA                   NA                0.2436875   0.2306994   0.2566756
24 months   COHORTS          PHILIPPINES   NA                   NA                0.2891616   0.2711872   0.3071359
24 months   IRC              INDIA         NA                   NA                0.1002445   0.0711031   0.1293859
24 months   LCNI-5           MALAWI        NA                   NA                0.1188811   0.0923348   0.1454274
24 months   NIH-Birth        BANGLADESH    NA                   NA                0.2214452   0.1821080   0.2607825
24 months   NIH-Crypto       BANGLADESH    NA                   NA                0.0700389   0.0479542   0.0921236
24 months   PROVIDE          BANGLADESH    NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ZVITAMBO         ZIMBABWE      NA                   NA                0.1086028   0.0935351   0.1236705


### Parameter: RR


agecat      studyid          country       intervention_level   baseline_level      estimate    ci_lower     ci_upper
----------  ---------------  ------------  -------------------  ---------------  -----------  ----------  -----------
Birth       COHORTS          INDIA         High                 High               1.0000000   1.0000000    1.0000000
Birth       COHORTS          INDIA         Low                  High               2.8185649   1.4641121    5.4260247
Birth       COHORTS          INDIA         Medium               High               1.6084831   0.8314811    3.1115776
Birth       COHORTS          PHILIPPINES   High                 High               1.0000000   1.0000000    1.0000000
Birth       COHORTS          PHILIPPINES   Low                  High               1.7984615   0.8858124    3.6514095
Birth       COHORTS          PHILIPPINES   Medium               High               1.3749706   0.6573636    2.8759489
Birth       NIH-Birth        BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
Birth       NIH-Birth        BANGLADESH    Low                  High               1.3660714   0.4658790    4.0056565
Birth       NIH-Birth        BANGLADESH    Medium               High               0.7943925   0.2335614    2.7018994
Birth       SAS-CompFeed     INDIA         High                 High               1.0000000   1.0000000    1.0000000
Birth       SAS-CompFeed     INDIA         Low                  High               1.6899489   1.2364493    2.3097811
Birth       SAS-CompFeed     INDIA         Medium               High               1.1894484   0.7448073    1.8995350
Birth       ZVITAMBO         ZIMBABWE      High                 High               1.0000000   1.0000000    1.0000000
Birth       ZVITAMBO         ZIMBABWE      Low                  High               1.3265283   1.0582649    1.6627948
Birth       ZVITAMBO         ZIMBABWE      Medium               High               1.2088054   0.9690401    1.5078949
6 months    CMC-V-BCS-2002   INDIA         High                 High               1.0000000   1.0000000    1.0000000
6 months    CMC-V-BCS-2002   INDIA         Low                  High               1.8402930   0.9232314    3.6682878
6 months    CMC-V-BCS-2002   INDIA         Medium               High               1.4672897   0.7075042    3.0430054
6 months    COHORTS          GUATEMALA     High                 High               1.0000000   1.0000000    1.0000000
6 months    COHORTS          GUATEMALA     Low                  High               1.1674091   0.7571874    1.7998765
6 months    COHORTS          GUATEMALA     Medium               High               0.7272013   0.4386494    1.2055680
6 months    COHORTS          INDIA         High                 High               1.0000000   1.0000000    1.0000000
6 months    COHORTS          INDIA         Low                  High              11.5142375   4.7374574   27.9849831
6 months    COHORTS          INDIA         Medium               High               5.4311724   2.2232285   13.2679273
6 months    COHORTS          PHILIPPINES   High                 High               1.0000000   1.0000000    1.0000000
6 months    COHORTS          PHILIPPINES   Low                  High               2.4552058   1.5744151    3.8287460
6 months    COHORTS          PHILIPPINES   Medium               High               2.0026333   1.2676959    3.1636453
6 months    Guatemala BSC    GUATEMALA     High                 High               1.0000000   1.0000000    1.0000000
6 months    Guatemala BSC    GUATEMALA     Low                  High               0.6868885   0.2758706    1.7102790
6 months    Guatemala BSC    GUATEMALA     Medium               High               0.4802956   0.1794552    1.2854673
6 months    IRC              INDIA         High                 High               1.0000000   1.0000000    1.0000000
6 months    IRC              INDIA         Low                  High               1.8253425   0.7142605    4.6647899
6 months    IRC              INDIA         Medium               High               1.4855072   0.5554590    3.9728075
6 months    LCNI-5           MALAWI        High                 High               1.0000000   1.0000000    1.0000000
6 months    LCNI-5           MALAWI        Low                  High               1.6825973   0.9623597    2.9418663
6 months    LCNI-5           MALAWI        Medium               High               1.1114795   0.5961566    2.0722519
6 months    NIH-Crypto       BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
6 months    NIH-Crypto       BANGLADESH    Low                  High               1.0480349   0.3997689    2.7475307
6 months    NIH-Crypto       BANGLADESH    Medium               High               0.8536585   0.3142418    2.3190194
6 months    PROBIT           BELARUS       High                 High               1.0000000   1.0000000    1.0000000
6 months    PROBIT           BELARUS       Low                  High               3.6219141   1.9891646    6.5948596
6 months    PROBIT           BELARUS       Medium               High               1.7534337   0.8078447    3.8058422
6 months    SAS-CompFeed     INDIA         High                 High               1.0000000   1.0000000    1.0000000
6 months    SAS-CompFeed     INDIA         Low                  High               3.0764936   1.9394695    4.8801040
6 months    SAS-CompFeed     INDIA         Medium               High               2.1529324   1.5557700    2.9793081
6 months    ZVITAMBO         ZIMBABWE      High                 High               1.0000000   1.0000000    1.0000000
6 months    ZVITAMBO         ZIMBABWE      Low                  High               1.2705353   0.9798765    1.6474115
6 months    ZVITAMBO         ZIMBABWE      Medium               High               1.3438535   1.0568748    1.7087571
24 months   CMC-V-BCS-2002   INDIA         High                 High               1.0000000   1.0000000    1.0000000
24 months   CMC-V-BCS-2002   INDIA         Low                  High               1.1285714   0.8078518    1.5766178
24 months   CMC-V-BCS-2002   INDIA         Medium               High               0.9565527   0.6694908    1.3666999
24 months   COHORTS          GUATEMALA     High                 High               1.0000000   1.0000000    1.0000000
24 months   COHORTS          GUATEMALA     Low                  High               1.0134863   0.8677107    1.1837523
24 months   COHORTS          GUATEMALA     Medium               High               0.8091564   0.6750210    0.9699462
24 months   COHORTS          INDIA         High                 High               1.0000000   1.0000000    1.0000000
24 months   COHORTS          INDIA         Low                  High              10.5348428   7.1397598   15.5443481
24 months   COHORTS          INDIA         Medium               High               4.6898361   3.1663198    6.9464121
24 months   COHORTS          PHILIPPINES   High                 High               1.0000000   1.0000000    1.0000000
24 months   COHORTS          PHILIPPINES   Low                  High               2.2067403   1.8691958    2.6052396
24 months   COHORTS          PHILIPPINES   Medium               High               1.8209171   1.5323704    2.1637973
24 months   IRC              INDIA         High                 High               1.0000000   1.0000000    1.0000000
24 months   IRC              INDIA         Low                  High               0.9799789   0.4847353    1.9812023
24 months   IRC              INDIA         Medium               High               0.8920863   0.4296741    1.8521432
24 months   LCNI-5           MALAWI        High                 High               1.0000000   1.0000000    1.0000000
24 months   LCNI-5           MALAWI        Low                  High               1.7662801   1.0159844    3.0706628
24 months   LCNI-5           MALAWI        Medium               High               1.4556391   0.8139073    2.6033495
24 months   NIH-Birth        BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   NIH-Birth        BANGLADESH    Low                  High               3.2026144   1.8190192    5.6386095
24 months   NIH-Birth        BANGLADESH    Medium               High               2.2602740   1.2437058    4.1077549
24 months   NIH-Crypto       BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   NIH-Crypto       BANGLADESH    Low                  High               2.8344749   1.1028551    7.2849534
24 months   NIH-Crypto       BANGLADESH    Medium               High               3.0574388   1.2321130    7.5869111
24 months   PROVIDE          BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   PROVIDE          BANGLADESH    Low                  High               3.4655172   1.5971258    7.5196390
24 months   PROVIDE          BANGLADESH    Medium               High               2.4753695   1.1155198    5.4929137
24 months   ZVITAMBO         ZIMBABWE      High                 High               1.0000000   1.0000000    1.0000000
24 months   ZVITAMBO         ZIMBABWE      Low                  High               1.5657585   1.1114719    2.2057235
24 months   ZVITAMBO         ZIMBABWE      Medium               High               1.4898765   1.0749767    2.0649118


### Parameter: PAR


agecat      studyid          country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          INDIA         High                 NA                 0.0138167    0.0047954   0.0228379
Birth       COHORTS          PHILIPPINES   High                 NA                 0.0039614   -0.0012496   0.0091723
Birth       NIH-Birth        BANGLADESH    High                 NA                 0.0018382   -0.0199882   0.0236647
Birth       SAS-CompFeed     INDIA         High                 NA                 0.0202644    0.0038212   0.0367075
Birth       ZVITAMBO         ZIMBABWE      High                 NA                 0.0034255    0.0007118   0.0061392
6 months    CMC-V-BCS-2002   INDIA         High                 NA                 0.0310186   -0.0054594   0.0674965
6 months    COHORTS          GUATEMALA     High                 NA                -0.0015785   -0.0450067   0.0418498
6 months    COHORTS          INDIA         High                 NA                 0.0395764    0.0320244   0.0471283
6 months    COHORTS          PHILIPPINES   High                 NA                 0.0211310    0.0115731   0.0306889
6 months    Guatemala BSC    GUATEMALA     High                 NA                -0.0294054   -0.0704132   0.0116024
6 months    IRC              INDIA         High                 NA                 0.0224726   -0.0121801   0.0571253
6 months    LCNI-5           MALAWI        High                 NA                 0.0161924   -0.0073371   0.0397219
6 months    NIH-Crypto       BANGLADESH    High                 NA                -0.0011655   -0.0195299   0.0171989
6 months    PROBIT           BELARUS       High                 NA                 0.0063382    0.0022081   0.0104684
6 months    SAS-CompFeed     INDIA         High                 NA                 0.0544291    0.0383084   0.0705498
6 months    ZVITAMBO         ZIMBABWE      High                 NA                 0.0050378    0.0011843   0.0088913
24 months   CMC-V-BCS-2002   INDIA         High                 NA                 0.0078133   -0.0480210   0.0636476
24 months   COHORTS          GUATEMALA     High                 NA                -0.0285723   -0.0892875   0.0321429
24 months   COHORTS          INDIA         High                 NA                 0.2025690    0.1839764   0.2211617
24 months   COHORTS          PHILIPPINES   High                 NA                 0.1119187    0.0900599   0.1337775
24 months   IRC              INDIA         High                 NA                -0.0045942   -0.0492763   0.0400878
24 months   LCNI-5           MALAWI        High                 NA                 0.0325175    0.0005298   0.0645051
24 months   NIH-Birth        BANGLADESH    High                 NA                 0.1214452    0.0704792   0.1724113
24 months   NIH-Crypto       BANGLADESH    High                 NA                 0.0386253    0.0132246   0.0640260
24 months   PROVIDE          BANGLADESH    High                 NA                 0.0501644    0.0224541   0.0778747
24 months   ZVITAMBO         ZIMBABWE      High                 NA                 0.0215958    0.0071506   0.0360411


### Parameter: PAF


agecat      studyid          country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          INDIA         High                 NA                 0.4836768    0.0648619   0.7149195
Birth       COHORTS          PHILIPPINES   High                 NA                 0.2626548   -0.1651706   0.5333920
Birth       NIH-Birth        BANGLADESH    High                 NA                 0.0588235   -0.9758330   0.5516761
Birth       SAS-CompFeed     INDIA         High                 NA                 0.2788018    0.0696446   0.4409376
Birth       ZVITAMBO         ZIMBABWE      High                 NA                 0.1073750    0.0187178   0.1880221
6 months    CMC-V-BCS-2002   INDIA         High                 NA                 0.2725205   -0.1181970   0.5267144
6 months    COHORTS          GUATEMALA     High                 NA                -0.0123172   -0.4148127   0.2756736
6 months    COHORTS          INDIA         High                 NA                 0.8534936    0.6522116   0.9382840
6 months    COHORTS          PHILIPPINES   High                 NA                 0.4335067    0.2172768   0.5900023
6 months    Guatemala BSC    GUATEMALA     High                 NA                -0.3258120   -0.8505799   0.0501478
6 months    IRC              INDIA         High                 NA                 0.3153911   -0.3699702   0.6578835
6 months    LCNI-5           MALAWI        High                 NA                 0.2025297   -0.1486756   0.4463546
6 months    NIH-Crypto       BANGLADESH    High                 NA                -0.0362319   -0.7974273   0.4026037
6 months    PROBIT           BELARUS       High                 NA                 0.5643530    0.2256841   0.7548955
6 months    SAS-CompFeed     INDIA         High                 NA                 0.5681034    0.3771488   0.7005150
6 months    ZVITAMBO         ZIMBABWE      High                 NA                 0.1242225    0.0247386   0.2135582
24 months   CMC-V-BCS-2002   INDIA         High                 NA                 0.0231899   -0.1574128   0.1756113
24 months   COHORTS          GUATEMALA     High                 NA                -0.0585290   -0.1905625   0.0588620
24 months   COHORTS          INDIA         High                 NA                 0.8312658    0.7537135   0.8843979
24 months   COHORTS          PHILIPPINES   High                 NA                 0.3870455    0.3087887   0.4564422
24 months   IRC              INDIA         High                 NA                -0.0458301   -0.6013753   0.3169868
24 months   LCNI-5           MALAWI        High                 NA                 0.2735294   -0.0440139   0.4944900
24 months   NIH-Birth        BANGLADESH    High                 NA                 0.5484211    0.2742037   0.7190347
24 months   NIH-Crypto       BANGLADESH    High                 NA                 0.5514834    0.0815919   0.7809611
24 months   PROVIDE          BANGLADESH    High                 NA                 0.5575966    0.1758141   0.7625284
24 months   ZVITAMBO         ZIMBABWE      High                 NA                 0.1988516    0.0569014   0.3194363
