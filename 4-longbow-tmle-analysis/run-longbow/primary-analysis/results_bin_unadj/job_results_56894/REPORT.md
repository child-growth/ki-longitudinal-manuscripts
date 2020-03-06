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

**Outcome Variable:** wasted

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

agecat      studyid          country                        meducyrs    wasted   n_cell       n
----------  ---------------  -----------------------------  ---------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          High             0       44      86
Birth       CMC-V-BCS-2002   INDIA                          High             1        5      86
Birth       CMC-V-BCS-2002   INDIA                          Low              0       13      86
Birth       CMC-V-BCS-2002   INDIA                          Low              1        2      86
Birth       CMC-V-BCS-2002   INDIA                          Medium           0       18      86
Birth       CMC-V-BCS-2002   INDIA                          Medium           1        4      86
Birth       COHORTS          GUATEMALA                      High             0      124     748
Birth       COHORTS          GUATEMALA                      High             1       33     748
Birth       COHORTS          GUATEMALA                      Low              0      258     748
Birth       COHORTS          GUATEMALA                      Low              1       86     748
Birth       COHORTS          GUATEMALA                      Medium           0      177     748
Birth       COHORTS          GUATEMALA                      Medium           1       70     748
Birth       COHORTS          INDIA                          High             0      558    4879
Birth       COHORTS          INDIA                          High             1       98    4879
Birth       COHORTS          INDIA                          Low              0     1297    4879
Birth       COHORTS          INDIA                          Low              1      305    4879
Birth       COHORTS          INDIA                          Medium           0     2170    4879
Birth       COHORTS          INDIA                          Medium           1      451    4879
Birth       COHORTS          PHILIPPINES                    High             0      929    2899
Birth       COHORTS          PHILIPPINES                    High             1      199    2899
Birth       COHORTS          PHILIPPINES                    Low              0      727    2899
Birth       COHORTS          PHILIPPINES                    Low              1      111    2899
Birth       COHORTS          PHILIPPINES                    Medium           0      792    2899
Birth       COHORTS          PHILIPPINES                    Medium           1      141    2899
Birth       EE               PAKISTAN                       High             0        5     177
Birth       EE               PAKISTAN                       High             1        0     177
Birth       EE               PAKISTAN                       Low              0      136     177
Birth       EE               PAKISTAN                       Low              1       20     177
Birth       EE               PAKISTAN                       Medium           0       14     177
Birth       EE               PAKISTAN                       Medium           1        2     177
Birth       GMS-Nepal        NEPAL                          High             0       61     639
Birth       GMS-Nepal        NEPAL                          High             1       20     639
Birth       GMS-Nepal        NEPAL                          Low              0      361     639
Birth       GMS-Nepal        NEPAL                          Low              1       83     639
Birth       GMS-Nepal        NEPAL                          Medium           0       85     639
Birth       GMS-Nepal        NEPAL                          Medium           1       29     639
Birth       IRC              INDIA                          High             0       77     343
Birth       IRC              INDIA                          High             1       24     343
Birth       IRC              INDIA                          Low              0       92     343
Birth       IRC              INDIA                          Low              1       34     343
Birth       IRC              INDIA                          Medium           0       82     343
Birth       IRC              INDIA                          Medium           1       34     343
Birth       MAL-ED           BANGLADESH                     High             0       56     175
Birth       MAL-ED           BANGLADESH                     High             1        8     175
Birth       MAL-ED           BANGLADESH                     Low              0       51     175
Birth       MAL-ED           BANGLADESH                     Low              1        9     175
Birth       MAL-ED           BANGLADESH                     Medium           0       39     175
Birth       MAL-ED           BANGLADESH                     Medium           1       12     175
Birth       MAL-ED           BRAZIL                         High             0       18      62
Birth       MAL-ED           BRAZIL                         High             1        0      62
Birth       MAL-ED           BRAZIL                         Low              0       16      62
Birth       MAL-ED           BRAZIL                         Low              1        1      62
Birth       MAL-ED           BRAZIL                         Medium           0       26      62
Birth       MAL-ED           BRAZIL                         Medium           1        1      62
Birth       MAL-ED           INDIA                          High             0        8      38
Birth       MAL-ED           INDIA                          High             1        0      38
Birth       MAL-ED           INDIA                          Low              0       15      38
Birth       MAL-ED           INDIA                          Low              1        3      38
Birth       MAL-ED           INDIA                          Medium           0       11      38
Birth       MAL-ED           INDIA                          Medium           1        1      38
Birth       MAL-ED           NEPAL                          High             0        4      24
Birth       MAL-ED           NEPAL                          High             1        1      24
Birth       MAL-ED           NEPAL                          Low              0       12      24
Birth       MAL-ED           NEPAL                          Low              1        0      24
Birth       MAL-ED           NEPAL                          Medium           0        6      24
Birth       MAL-ED           NEPAL                          Medium           1        1      24
Birth       MAL-ED           PERU                           High             0       63     228
Birth       MAL-ED           PERU                           High             1        2     228
Birth       MAL-ED           PERU                           Low              0       83     228
Birth       MAL-ED           PERU                           Low              1        0     228
Birth       MAL-ED           PERU                           Medium           0       77     228
Birth       MAL-ED           PERU                           Medium           1        3     228
Birth       MAL-ED           SOUTH AFRICA                   High             0       32     120
Birth       MAL-ED           SOUTH AFRICA                   High             1        3     120
Birth       MAL-ED           SOUTH AFRICA                   Low              0       53     120
Birth       MAL-ED           SOUTH AFRICA                   Low              1        6     120
Birth       MAL-ED           SOUTH AFRICA                   Medium           0       23     120
Birth       MAL-ED           SOUTH AFRICA                   Medium           1        3     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             0        7      97
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             1        0      97
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low              0       32      97
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low              1        0      97
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium           0       57      97
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium           1        1      97
Birth       NIH-Birth        BANGLADESH                     High             0      121     575
Birth       NIH-Birth        BANGLADESH                     High             1       42     575
Birth       NIH-Birth        BANGLADESH                     Low              0      150     575
Birth       NIH-Birth        BANGLADESH                     Low              1       60     575
Birth       NIH-Birth        BANGLADESH                     Medium           0      136     575
Birth       NIH-Birth        BANGLADESH                     Medium           1       66     575
Birth       NIH-Crypto       BANGLADESH                     High             0      174     707
Birth       NIH-Crypto       BANGLADESH                     High             1       62     707
Birth       NIH-Crypto       BANGLADESH                     Low              0      178     707
Birth       NIH-Crypto       BANGLADESH                     Low              1       48     707
Birth       NIH-Crypto       BANGLADESH                     Medium           0      183     707
Birth       NIH-Crypto       BANGLADESH                     Medium           1       62     707
Birth       PROBIT           BELARUS                        High             0     1785   13817
Birth       PROBIT           BELARUS                        High             1      455   13817
Birth       PROBIT           BELARUS                        Low              0     3891   13817
Birth       PROBIT           BELARUS                        Low              1     1049   13817
Birth       PROBIT           BELARUS                        Medium           0     5235   13817
Birth       PROBIT           BELARUS                        Medium           1     1402   13817
Birth       PROVIDE          BANGLADESH                     High             0      138     532
Birth       PROVIDE          BANGLADESH                     High             1       31     532
Birth       PROVIDE          BANGLADESH                     Low              0      126     532
Birth       PROVIDE          BANGLADESH                     Low              1       38     532
Birth       PROVIDE          BANGLADESH                     Medium           0      151     532
Birth       PROVIDE          BANGLADESH                     Medium           1       48     532
Birth       SAS-CompFeed     INDIA                          High             0      206    1103
Birth       SAS-CompFeed     INDIA                          High             1       27    1103
Birth       SAS-CompFeed     INDIA                          Low              0      444    1103
Birth       SAS-CompFeed     INDIA                          Low              1       56    1103
Birth       SAS-CompFeed     INDIA                          Medium           0      335    1103
Birth       SAS-CompFeed     INDIA                          Medium           1       35    1103
Birth       ZVITAMBO         ZIMBABWE                       High             0     5847   12897
Birth       ZVITAMBO         ZIMBABWE                       High             1     1168   12897
Birth       ZVITAMBO         ZIMBABWE                       Low              0     2307   12897
Birth       ZVITAMBO         ZIMBABWE                       Low              1      390   12897
Birth       ZVITAMBO         ZIMBABWE                       Medium           0     2686   12897
Birth       ZVITAMBO         ZIMBABWE                       Medium           1      499   12897
6 months    CMC-V-BCS-2002   INDIA                          High             0      136     368
6 months    CMC-V-BCS-2002   INDIA                          High             1       21     368
6 months    CMC-V-BCS-2002   INDIA                          Low              0       95     368
6 months    CMC-V-BCS-2002   INDIA                          Low              1        9     368
6 months    CMC-V-BCS-2002   INDIA                          Medium           0       91     368
6 months    CMC-V-BCS-2002   INDIA                          Medium           1       16     368
6 months    COHORTS          GUATEMALA                      High             0      179     953
6 months    COHORTS          GUATEMALA                      High             1        6     953
6 months    COHORTS          GUATEMALA                      Low              0      430     953
6 months    COHORTS          GUATEMALA                      Low              1       19     953
6 months    COHORTS          GUATEMALA                      Medium           0      313     953
6 months    COHORTS          GUATEMALA                      Medium           1        6     953
6 months    COHORTS          INDIA                          High             0      677    5407
6 months    COHORTS          INDIA                          High             1       60    5407
6 months    COHORTS          INDIA                          Low              0     1479    5407
6 months    COHORTS          INDIA                          Low              1      295    5407
6 months    COHORTS          INDIA                          Medium           0     2557    5407
6 months    COHORTS          INDIA                          Medium           1      339    5407
6 months    COHORTS          PHILIPPINES                    High             0      963    2706
6 months    COHORTS          PHILIPPINES                    High             1       52    2706
6 months    COHORTS          PHILIPPINES                    Low              0      764    2706
6 months    COHORTS          PHILIPPINES                    Low              1       60    2706
6 months    COHORTS          PHILIPPINES                    Medium           0      818    2706
6 months    COHORTS          PHILIPPINES                    Medium           1       49    2706
6 months    EE               PAKISTAN                       High             0       15     372
6 months    EE               PAKISTAN                       High             1        0     372
6 months    EE               PAKISTAN                       Low              0      280     372
6 months    EE               PAKISTAN                       Low              1       44     372
6 months    EE               PAKISTAN                       Medium           0       30     372
6 months    EE               PAKISTAN                       Medium           1        3     372
6 months    GMS-Nepal        NEPAL                          High             0       64     561
6 months    GMS-Nepal        NEPAL                          High             1        4     561
6 months    GMS-Nepal        NEPAL                          Low              0      359     561
6 months    GMS-Nepal        NEPAL                          Low              1       40     561
6 months    GMS-Nepal        NEPAL                          Medium           0       87     561
6 months    GMS-Nepal        NEPAL                          Medium           1        7     561
6 months    Guatemala BSC    GUATEMALA                      High             0      117     277
6 months    Guatemala BSC    GUATEMALA                      High             1        0     277
6 months    Guatemala BSC    GUATEMALA                      Low              0       73     277
6 months    Guatemala BSC    GUATEMALA                      Low              1        0     277
6 months    Guatemala BSC    GUATEMALA                      Medium           0       84     277
6 months    Guatemala BSC    GUATEMALA                      Medium           1        3     277
6 months    IRC              INDIA                          High             0      111     408
6 months    IRC              INDIA                          High             1       13     408
6 months    IRC              INDIA                          Low              0      126     408
6 months    IRC              INDIA                          Low              1       19     408
6 months    IRC              INDIA                          Medium           0      117     408
6 months    IRC              INDIA                          Medium           1       22     408
6 months    LCNI-5           MALAWI                         High             0      295     813
6 months    LCNI-5           MALAWI                         High             1        3     813
6 months    LCNI-5           MALAWI                         Low              0      254     813
6 months    LCNI-5           MALAWI                         Low              1        7     813
6 months    LCNI-5           MALAWI                         Medium           0      250     813
6 months    LCNI-5           MALAWI                         Medium           1        4     813
6 months    MAL-ED           BANGLADESH                     High             0       72     196
6 months    MAL-ED           BANGLADESH                     High             1        1     196
6 months    MAL-ED           BANGLADESH                     Low              0       60     196
6 months    MAL-ED           BANGLADESH                     Low              1        4     196
6 months    MAL-ED           BANGLADESH                     Medium           0       58     196
6 months    MAL-ED           BANGLADESH                     Medium           1        1     196
6 months    MAL-ED           BRAZIL                         High             0       71     208
6 months    MAL-ED           BRAZIL                         High             1        0     208
6 months    MAL-ED           BRAZIL                         Low              0       55     208
6 months    MAL-ED           BRAZIL                         Low              1        1     208
6 months    MAL-ED           BRAZIL                         Medium           0       81     208
6 months    MAL-ED           BRAZIL                         Medium           1        0     208
6 months    MAL-ED           INDIA                          High             0       54     208
6 months    MAL-ED           INDIA                          High             1        5     208
6 months    MAL-ED           INDIA                          Low              0       65     208
6 months    MAL-ED           INDIA                          Low              1        7     208
6 months    MAL-ED           INDIA                          Medium           0       71     208
6 months    MAL-ED           INDIA                          Medium           1        6     208
6 months    MAL-ED           NEPAL                          High             0       53     221
6 months    MAL-ED           NEPAL                          High             1        0     221
6 months    MAL-ED           NEPAL                          Low              0       92     221
6 months    MAL-ED           NEPAL                          Low              1        1     221
6 months    MAL-ED           NEPAL                          Medium           0       73     221
6 months    MAL-ED           NEPAL                          Medium           1        2     221
6 months    MAL-ED           PERU                           High             0       81     272
6 months    MAL-ED           PERU                           High             1        0     272
6 months    MAL-ED           PERU                           Low              0       94     272
6 months    MAL-ED           PERU                           Low              1        0     272
6 months    MAL-ED           PERU                           Medium           0       97     272
6 months    MAL-ED           PERU                           Medium           1        0     272
6 months    MAL-ED           SOUTH AFRICA                   High             0       70     254
6 months    MAL-ED           SOUTH AFRICA                   High             1        0     254
6 months    MAL-ED           SOUTH AFRICA                   Low              0      122     254
6 months    MAL-ED           SOUTH AFRICA                   Low              1        5     254
6 months    MAL-ED           SOUTH AFRICA                   Medium           0       55     254
6 months    MAL-ED           SOUTH AFRICA                   Medium           1        2     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             0        9     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             1        0     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low              0       62     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low              1        0     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium           0      131     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium           1        1     203
6 months    NIH-Birth        BANGLADESH                     High             0      148     537
6 months    NIH-Birth        BANGLADESH                     High             1        7     537
6 months    NIH-Birth        BANGLADESH                     Low              0      180     537
6 months    NIH-Birth        BANGLADESH                     Low              1       15     537
6 months    NIH-Birth        BANGLADESH                     Medium           0      174     537
6 months    NIH-Birth        BANGLADESH                     Medium           1       13     537
6 months    NIH-Crypto       BANGLADESH                     High             0      237     715
6 months    NIH-Crypto       BANGLADESH                     High             1        3     715
6 months    NIH-Crypto       BANGLADESH                     Low              0      217     715
6 months    NIH-Crypto       BANGLADESH                     Low              1       12     715
6 months    NIH-Crypto       BANGLADESH                     Medium           0      240     715
6 months    NIH-Crypto       BANGLADESH                     Medium           1        6     715
6 months    PROBIT           BELARUS                        High             0     2649   15757
6 months    PROBIT           BELARUS                        High             1        8   15757
6 months    PROBIT           BELARUS                        Low              0     5593   15757
6 months    PROBIT           BELARUS                        Low              1       48   15757
6 months    PROBIT           BELARUS                        Medium           0     7407   15757
6 months    PROBIT           BELARUS                        Medium           1       52   15757
6 months    PROVIDE          BANGLADESH                     High             0      201     603
6 months    PROVIDE          BANGLADESH                     High             1        8     603
6 months    PROVIDE          BANGLADESH                     Low              0      178     603
6 months    PROVIDE          BANGLADESH                     Low              1        9     603
6 months    PROVIDE          BANGLADESH                     Medium           0      199     603
6 months    PROVIDE          BANGLADESH                     Medium           1        8     603
6 months    SAS-CompFeed     INDIA                          High             0      264    1334
6 months    SAS-CompFeed     INDIA                          High             1       25    1334
6 months    SAS-CompFeed     INDIA                          Low              0      501    1334
6 months    SAS-CompFeed     INDIA                          Low              1       95    1334
6 months    SAS-CompFeed     INDIA                          Medium           0      403    1334
6 months    SAS-CompFeed     INDIA                          Medium           1       46    1334
6 months    SAS-FoodSuppl    INDIA                          High             0       32     380
6 months    SAS-FoodSuppl    INDIA                          High             1        3     380
6 months    SAS-FoodSuppl    INDIA                          Low              0      248     380
6 months    SAS-FoodSuppl    INDIA                          Low              1       56     380
6 months    SAS-FoodSuppl    INDIA                          Medium           0       31     380
6 months    SAS-FoodSuppl    INDIA                          Medium           1       10     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0      491    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1       21    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0       72    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1        2    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           0     1370    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1       64    2020
6 months    ZVITAMBO         ZIMBABWE                       High             0     4492    8492
6 months    ZVITAMBO         ZIMBABWE                       High             1      112    8492
6 months    ZVITAMBO         ZIMBABWE                       Low              0     1687    8492
6 months    ZVITAMBO         ZIMBABWE                       Low              1       79    8492
6 months    ZVITAMBO         ZIMBABWE                       Medium           0     2048    8492
6 months    ZVITAMBO         ZIMBABWE                       Medium           1       74    8492
24 months   CMC-V-BCS-2002   INDIA                          High             0      152     372
24 months   CMC-V-BCS-2002   INDIA                          High             1        6     372
24 months   CMC-V-BCS-2002   INDIA                          Low              0       95     372
24 months   CMC-V-BCS-2002   INDIA                          Low              1       10     372
24 months   CMC-V-BCS-2002   INDIA                          Medium           0      102     372
24 months   CMC-V-BCS-2002   INDIA                          Medium           1        7     372
24 months   COHORTS          GUATEMALA                      High             0      200    1068
24 months   COHORTS          GUATEMALA                      High             1        9    1068
24 months   COHORTS          GUATEMALA                      Low              0      485    1068
24 months   COHORTS          GUATEMALA                      Low              1       27    1068
24 months   COHORTS          GUATEMALA                      Medium           0      334    1068
24 months   COHORTS          GUATEMALA                      Medium           1       13    1068
24 months   COHORTS          INDIA                          High             0      584    4166
24 months   COHORTS          INDIA                          High             1       17    4166
24 months   COHORTS          INDIA                          Low              0     1067    4166
24 months   COHORTS          INDIA                          Low              1      197    4166
24 months   COHORTS          INDIA                          Medium           0     2131    4166
24 months   COHORTS          INDIA                          Medium           1      170    4166
24 months   COHORTS          PHILIPPINES                    High             0      864    2449
24 months   COHORTS          PHILIPPINES                    High             1       47    2449
24 months   COHORTS          PHILIPPINES                    Low              0      681    2449
24 months   COHORTS          PHILIPPINES                    Low              1       67    2449
24 months   COHORTS          PHILIPPINES                    Medium           0      737    2449
24 months   COHORTS          PHILIPPINES                    Medium           1       53    2449
24 months   EE               PAKISTAN                       High             0        5     166
24 months   EE               PAKISTAN                       High             1        1     166
24 months   EE               PAKISTAN                       Low              0      119     166
24 months   EE               PAKISTAN                       Low              1       24     166
24 months   EE               PAKISTAN                       Medium           0       13     166
24 months   EE               PAKISTAN                       Medium           1        4     166
24 months   GMS-Nepal        NEPAL                          High             0       45     484
24 months   GMS-Nepal        NEPAL                          High             1       10     484
24 months   GMS-Nepal        NEPAL                          Low              0      285     484
24 months   GMS-Nepal        NEPAL                          Low              1       59     484
24 months   GMS-Nepal        NEPAL                          Medium           0       64     484
24 months   GMS-Nepal        NEPAL                          Medium           1       21     484
24 months   IRC              INDIA                          High             0      116     409
24 months   IRC              INDIA                          High             1        8     409
24 months   IRC              INDIA                          Low              0      136     409
24 months   IRC              INDIA                          Low              1       10     409
24 months   IRC              INDIA                          Medium           0      126     409
24 months   IRC              INDIA                          Medium           1       13     409
24 months   LCNI-5           MALAWI                         High             0      213     556
24 months   LCNI-5           MALAWI                         High             1        1     556
24 months   LCNI-5           MALAWI                         Low              0      167     556
24 months   LCNI-5           MALAWI                         Low              1        5     556
24 months   LCNI-5           MALAWI                         Medium           0      166     556
24 months   LCNI-5           MALAWI                         Medium           1        4     556
24 months   MAL-ED           BANGLADESH                     High             0       60     171
24 months   MAL-ED           BANGLADESH                     High             1        4     171
24 months   MAL-ED           BANGLADESH                     Low              0       52     171
24 months   MAL-ED           BANGLADESH                     Low              1        7     171
24 months   MAL-ED           BANGLADESH                     Medium           0       45     171
24 months   MAL-ED           BANGLADESH                     Medium           1        3     171
24 months   MAL-ED           BRAZIL                         High             0       62     168
24 months   MAL-ED           BRAZIL                         High             1        0     168
24 months   MAL-ED           BRAZIL                         Low              0       40     168
24 months   MAL-ED           BRAZIL                         Low              1        2     168
24 months   MAL-ED           BRAZIL                         Medium           0       63     168
24 months   MAL-ED           BRAZIL                         Medium           1        1     168
24 months   MAL-ED           INDIA                          High             0       51     199
24 months   MAL-ED           INDIA                          High             1        4     199
24 months   MAL-ED           INDIA                          Low              0       60     199
24 months   MAL-ED           INDIA                          Low              1        9     199
24 months   MAL-ED           INDIA                          Medium           0       66     199
24 months   MAL-ED           INDIA                          Medium           1        9     199
24 months   MAL-ED           NEPAL                          High             0       47     213
24 months   MAL-ED           NEPAL                          High             1        1     213
24 months   MAL-ED           NEPAL                          Low              0       89     213
24 months   MAL-ED           NEPAL                          Low              1        2     213
24 months   MAL-ED           NEPAL                          Medium           0       73     213
24 months   MAL-ED           NEPAL                          Medium           1        1     213
24 months   MAL-ED           PERU                           High             0       59     200
24 months   MAL-ED           PERU                           High             1        0     200
24 months   MAL-ED           PERU                           Low              0       72     200
24 months   MAL-ED           PERU                           Low              1        2     200
24 months   MAL-ED           PERU                           Medium           0       65     200
24 months   MAL-ED           PERU                           Medium           1        2     200
24 months   MAL-ED           SOUTH AFRICA                   High             0       67     238
24 months   MAL-ED           SOUTH AFRICA                   High             1        0     238
24 months   MAL-ED           SOUTH AFRICA                   Low              0      119     238
24 months   MAL-ED           SOUTH AFRICA                   Low              1        1     238
24 months   MAL-ED           SOUTH AFRICA                   Medium           0       51     238
24 months   MAL-ED           SOUTH AFRICA                   Medium           1        0     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             0        7     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             1        0     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low              0       51     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low              1        3     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium           0      114     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium           1        0     175
24 months   NIH-Birth        BANGLADESH                     High             0      116     428
24 months   NIH-Birth        BANGLADESH                     High             1       14     428
24 months   NIH-Birth        BANGLADESH                     Low              0      131     428
24 months   NIH-Birth        BANGLADESH                     Low              1       21     428
24 months   NIH-Birth        BANGLADESH                     Medium           0      128     428
24 months   NIH-Birth        BANGLADESH                     Medium           1       18     428
24 months   NIH-Crypto       BANGLADESH                     High             0      174     514
24 months   NIH-Crypto       BANGLADESH                     High             1       17     514
24 months   NIH-Crypto       BANGLADESH                     Low              0      132     514
24 months   NIH-Crypto       BANGLADESH                     Low              1       14     514
24 months   NIH-Crypto       BANGLADESH                     Medium           0      163     514
24 months   NIH-Crypto       BANGLADESH                     Medium           1       14     514
24 months   PROBIT           BELARUS                        High             0      650    3970
24 months   PROBIT           BELARUS                        High             1        4    3970
24 months   PROBIT           BELARUS                        Low              0     1367    3970
24 months   PROBIT           BELARUS                        Low              1       14    3970
24 months   PROBIT           BELARUS                        Medium           0     1921    3970
24 months   PROBIT           BELARUS                        Medium           1       14    3970
24 months   PROVIDE          BANGLADESH                     High             0      183     579
24 months   PROVIDE          BANGLADESH                     High             1       18     579
24 months   PROVIDE          BANGLADESH                     Low              0      151     579
24 months   PROVIDE          BANGLADESH                     Low              1       23     579
24 months   PROVIDE          BANGLADESH                     Medium           0      183     579
24 months   PROVIDE          BANGLADESH                     Medium           1       21     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           0        4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1        0       6
24 months   ZVITAMBO         ZIMBABWE                       High             0      153     433
24 months   ZVITAMBO         ZIMBABWE                       High             1       31     433
24 months   ZVITAMBO         ZIMBABWE                       Low              0       92     433
24 months   ZVITAMBO         ZIMBABWE                       Low              1       26     433
24 months   ZVITAMBO         ZIMBABWE                       Medium           0      109     433
24 months   ZVITAMBO         ZIMBABWE                       Medium           1       22     433


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
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/e2667952-c4c9-4de9-8602-8c0a2a656b7b/82958c6e-29ee-498a-9f89-578a20d8d24e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e2667952-c4c9-4de9-8602-8c0a2a656b7b/82958c6e-29ee-498a-9f89-578a20d8d24e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e2667952-c4c9-4de9-8602-8c0a2a656b7b/82958c6e-29ee-498a-9f89-578a20d8d24e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e2667952-c4c9-4de9-8602-8c0a2a656b7b/82958c6e-29ee-498a-9f89-578a20d8d24e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA     High                 NA                0.2101911   0.1464151   0.2739670
Birth       COHORTS          GUATEMALA     Low                  NA                0.2500000   0.2042111   0.2957889
Birth       COHORTS          GUATEMALA     Medium               NA                0.2834008   0.2271629   0.3396387
Birth       COHORTS          INDIA         High                 NA                0.1493902   0.1221088   0.1766717
Birth       COHORTS          INDIA         Low                  NA                0.1903870   0.1711597   0.2096143
Birth       COHORTS          INDIA         Medium               NA                0.1720717   0.1576203   0.1865231
Birth       COHORTS          PHILIPPINES   High                 NA                0.1764184   0.1541703   0.1986666
Birth       COHORTS          PHILIPPINES   Low                  NA                0.1324582   0.1095028   0.1554137
Birth       COHORTS          PHILIPPINES   Medium               NA                0.1511254   0.1281389   0.1741119
Birth       GMS-Nepal        NEPAL         High                 NA                0.2469136   0.1529325   0.3408947
Birth       GMS-Nepal        NEPAL         Low                  NA                0.1869369   0.1506453   0.2232286
Birth       GMS-Nepal        NEPAL         Medium               NA                0.2543860   0.1743769   0.3343951
Birth       IRC              INDIA         High                 NA                0.2376238   0.1544951   0.3207525
Birth       IRC              INDIA         Low                  NA                0.2698413   0.1922238   0.3474588
Birth       IRC              INDIA         Medium               NA                0.2931034   0.2101487   0.3760582
Birth       MAL-ED           BANGLADESH    High                 NA                0.1250000   0.0437429   0.2062571
Birth       MAL-ED           BANGLADESH    Low                  NA                0.1500000   0.0593909   0.2406091
Birth       MAL-ED           BANGLADESH    Medium               NA                0.2352941   0.1185432   0.3520450
Birth       NIH-Birth        BANGLADESH    High                 NA                0.2576687   0.1904698   0.3248676
Birth       NIH-Birth        BANGLADESH    Low                  NA                0.2857143   0.2245612   0.3468674
Birth       NIH-Birth        BANGLADESH    Medium               NA                0.3267327   0.2619975   0.3914679
Birth       NIH-Crypto       BANGLADESH    High                 NA                0.2627119   0.2065220   0.3189017
Birth       NIH-Crypto       BANGLADESH    Low                  NA                0.2123894   0.1590284   0.2657503
Birth       NIH-Crypto       BANGLADESH    Medium               NA                0.2530612   0.1985824   0.3075400
Birth       PROBIT           BELARUS       High                 NA                0.2031250   0.1349953   0.2712547
Birth       PROBIT           BELARUS       Low                  NA                0.2123482   0.1383108   0.2863855
Birth       PROBIT           BELARUS       Medium               NA                0.2112400   0.1492109   0.2732691
Birth       PROVIDE          BANGLADESH    High                 NA                0.1834320   0.1250274   0.2418365
Birth       PROVIDE          BANGLADESH    Low                  NA                0.2317073   0.1670723   0.2963423
Birth       PROVIDE          BANGLADESH    Medium               NA                0.2412060   0.1817103   0.3007018
Birth       SAS-CompFeed     INDIA         High                 NA                0.1158798   0.0868080   0.1449517
Birth       SAS-CompFeed     INDIA         Low                  NA                0.1120000   0.0591325   0.1648675
Birth       SAS-CompFeed     INDIA         Medium               NA                0.0945946   0.0713435   0.1178457
Birth       ZVITAMBO         ZIMBABWE      High                 NA                0.1665004   0.1577825   0.1752182
Birth       ZVITAMBO         ZIMBABWE      Low                  NA                0.1446051   0.1313312   0.1578790
Birth       ZVITAMBO         ZIMBABWE      Medium               NA                0.1566719   0.1440477   0.1692961
6 months    CMC-V-BCS-2002   INDIA         High                 NA                0.1337580   0.0804406   0.1870753
6 months    CMC-V-BCS-2002   INDIA         Low                  NA                0.0865385   0.0324291   0.1406478
6 months    CMC-V-BCS-2002   INDIA         Medium               NA                0.1495327   0.0818708   0.2171946
6 months    COHORTS          GUATEMALA     High                 NA                0.0324324   0.0068924   0.0579724
6 months    COHORTS          GUATEMALA     Low                  NA                0.0423163   0.0236861   0.0609465
6 months    COHORTS          GUATEMALA     Medium               NA                0.0188088   0.0038933   0.0337243
6 months    COHORTS          INDIA         High                 NA                0.0814111   0.0616661   0.1011561
6 months    COHORTS          INDIA         Low                  NA                0.1662909   0.1489627   0.1836190
6 months    COHORTS          INDIA         Medium               NA                0.1170580   0.1053480   0.1287680
6 months    COHORTS          PHILIPPINES   High                 NA                0.0512315   0.0376658   0.0647973
6 months    COHORTS          PHILIPPINES   Low                  NA                0.0728155   0.0550712   0.0905599
6 months    COHORTS          PHILIPPINES   Medium               NA                0.0565167   0.0411432   0.0718903
6 months    IRC              INDIA         High                 NA                0.1048387   0.0508527   0.1588248
6 months    IRC              INDIA         Low                  NA                0.1310345   0.0760436   0.1860254
6 months    IRC              INDIA         Medium               NA                0.1582734   0.0975210   0.2190257
6 months    MAL-ED           INDIA         High                 NA                0.0847458   0.0135099   0.1559816
6 months    MAL-ED           INDIA         Low                  NA                0.0972222   0.0286258   0.1658187
6 months    MAL-ED           INDIA         Medium               NA                0.0779221   0.0179066   0.1379376
6 months    NIH-Birth        BANGLADESH    High                 NA                0.0451613   0.0124396   0.0778829
6 months    NIH-Birth        BANGLADESH    Low                  NA                0.0769231   0.0394876   0.1143585
6 months    NIH-Birth        BANGLADESH    Medium               NA                0.0695187   0.0330318   0.1060056
6 months    PROBIT           BELARUS       High                 NA                0.0030109   0.0001880   0.0058339
6 months    PROBIT           BELARUS       Low                  NA                0.0085091   0.0053795   0.0116388
6 months    PROBIT           BELARUS       Medium               NA                0.0069714   0.0052775   0.0086654
6 months    PROVIDE          BANGLADESH    High                 NA                0.0382775   0.0122440   0.0643110
6 months    PROVIDE          BANGLADESH    Low                  NA                0.0481283   0.0174256   0.0788311
6 months    PROVIDE          BANGLADESH    Medium               NA                0.0386473   0.0123674   0.0649273
6 months    SAS-CompFeed     INDIA         High                 NA                0.0865052   0.0668908   0.1061196
6 months    SAS-CompFeed     INDIA         Low                  NA                0.1593960   0.1314037   0.1873882
6 months    SAS-CompFeed     INDIA         Medium               NA                0.1024499   0.0580384   0.1468614
6 months    ZVITAMBO         ZIMBABWE      High                 NA                0.0243267   0.0198763   0.0287771
6 months    ZVITAMBO         ZIMBABWE      Low                  NA                0.0447339   0.0350920   0.0543757
6 months    ZVITAMBO         ZIMBABWE      Medium               NA                0.0348728   0.0270666   0.0426789
24 months   CMC-V-BCS-2002   INDIA         High                 NA                0.0379747   0.0081316   0.0678178
24 months   CMC-V-BCS-2002   INDIA         Low                  NA                0.0952381   0.0390156   0.1514606
24 months   CMC-V-BCS-2002   INDIA         Medium               NA                0.0642202   0.0181371   0.1103033
24 months   COHORTS          GUATEMALA     High                 NA                0.0430622   0.0155283   0.0705961
24 months   COHORTS          GUATEMALA     Low                  NA                0.0527344   0.0333657   0.0721030
24 months   COHORTS          GUATEMALA     Medium               NA                0.0374640   0.0174745   0.0574535
24 months   COHORTS          INDIA         High                 NA                0.0282862   0.0150300   0.0415424
24 months   COHORTS          INDIA         Low                  NA                0.1558544   0.1358560   0.1758528
24 months   COHORTS          INDIA         Medium               NA                0.0738809   0.0631918   0.0845700
24 months   COHORTS          PHILIPPINES   High                 NA                0.0515917   0.0372247   0.0659586
24 months   COHORTS          PHILIPPINES   Low                  NA                0.0895722   0.0691033   0.1100411
24 months   COHORTS          PHILIPPINES   Medium               NA                0.0670886   0.0496397   0.0845375
24 months   GMS-Nepal        NEPAL         High                 NA                0.1818182   0.0797808   0.2838556
24 months   GMS-Nepal        NEPAL         Low                  NA                0.1715116   0.1316360   0.2113873
24 months   GMS-Nepal        NEPAL         Medium               NA                0.2470588   0.1552745   0.3388431
24 months   IRC              INDIA         High                 NA                0.0645161   0.0212228   0.1078095
24 months   IRC              INDIA         Low                  NA                0.0684932   0.0274709   0.1095154
24 months   IRC              INDIA         Medium               NA                0.0935252   0.0450617   0.1419886
24 months   NIH-Birth        BANGLADESH    High                 NA                0.1076923   0.0543424   0.1610423
24 months   NIH-Birth        BANGLADESH    Low                  NA                0.1381579   0.0832372   0.1930786
24 months   NIH-Birth        BANGLADESH    Medium               NA                0.1232877   0.0698967   0.1766787
24 months   NIH-Crypto       BANGLADESH    High                 NA                0.0890052   0.0485830   0.1294274
24 months   NIH-Crypto       BANGLADESH    Low                  NA                0.0958904   0.0480833   0.1436975
24 months   NIH-Crypto       BANGLADESH    Medium               NA                0.0790960   0.0392973   0.1188947
24 months   PROVIDE          BANGLADESH    High                 NA                0.0895522   0.0500437   0.1290608
24 months   PROVIDE          BANGLADESH    Low                  NA                0.1321839   0.0818162   0.1825516
24 months   PROVIDE          BANGLADESH    Medium               NA                0.1029412   0.0612049   0.1446774
24 months   ZVITAMBO         ZIMBABWE      High                 NA                0.1684783   0.1143343   0.2226222
24 months   ZVITAMBO         ZIMBABWE      Low                  NA                0.2203390   0.1454690   0.2952090
24 months   ZVITAMBO         ZIMBABWE      Medium               NA                0.1679389   0.1038522   0.2320256


### Parameter: E(Y)


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA     NA                   NA                0.2526738   0.2215120   0.2838356
Birth       COHORTS          INDIA         NA                   NA                0.1750359   0.1643722   0.1856996
Birth       COHORTS          PHILIPPINES   NA                   NA                0.1555709   0.1423748   0.1687670
Birth       GMS-Nepal        NEPAL         NA                   NA                0.2065728   0.1751584   0.2379871
Birth       IRC              INDIA         NA                   NA                0.2682216   0.2212677   0.3151755
Birth       MAL-ED           BANGLADESH    NA                   NA                0.1657143   0.1104670   0.2209616
Birth       NIH-Birth        BANGLADESH    NA                   NA                0.2921739   0.2549711   0.3293768
Birth       NIH-Crypto       BANGLADESH    NA                   NA                0.2432815   0.2116319   0.2749310
Birth       PROBIT           BELARUS       NA                   NA                0.2103206   0.1450833   0.2755580
Birth       PROVIDE          BANGLADESH    NA                   NA                0.2199248   0.1846953   0.2551543
Birth       SAS-CompFeed     INDIA         NA                   NA                0.1069810   0.0760961   0.1378659
Birth       ZVITAMBO         ZIMBABWE      NA                   NA                0.1594945   0.1531752   0.1658137
6 months    CMC-V-BCS-2002   INDIA         NA                   NA                0.1250000   0.0911644   0.1588356
6 months    COHORTS          GUATEMALA     NA                   NA                0.0325289   0.0212599   0.0437978
6 months    COHORTS          INDIA         NA                   NA                0.1283521   0.1194359   0.1372684
6 months    COHORTS          PHILIPPINES   NA                   NA                0.0594974   0.0505830   0.0684118
6 months    IRC              INDIA         NA                   NA                0.1323529   0.0994307   0.1652752
6 months    MAL-ED           INDIA         NA                   NA                0.0865385   0.0482372   0.1248397
6 months    NIH-Birth        BANGLADESH    NA                   NA                0.0651769   0.0442802   0.0860736
6 months    PROBIT           BELARUS       NA                   NA                0.0068541   0.0051915   0.0085167
6 months    PROVIDE          BANGLADESH    NA                   NA                0.0414594   0.0255348   0.0573839
6 months    SAS-CompFeed     INDIA         NA                   NA                0.1244378   0.0992652   0.1496104
6 months    ZVITAMBO         ZIMBABWE      NA                   NA                0.0312058   0.0275075   0.0349041
24 months   CMC-V-BCS-2002   INDIA         NA                   NA                0.0618280   0.0373207   0.0863352
24 months   COHORTS          GUATEMALA     NA                   NA                0.0458801   0.0333262   0.0584341
24 months   COHORTS          INDIA         NA                   NA                0.0921747   0.0833896   0.1009599
24 months   COHORTS          PHILIPPINES   NA                   NA                0.0681911   0.0582056   0.0781766
24 months   GMS-Nepal        NEPAL         NA                   NA                0.1859504   0.1512529   0.2206479
24 months   IRC              INDIA         NA                   NA                0.0757946   0.0501131   0.1014762
24 months   NIH-Birth        BANGLADESH    NA                   NA                0.1238318   0.0925894   0.1550741
24 months   NIH-Crypto       BANGLADESH    NA                   NA                0.0875486   0.0630907   0.1120065
24 months   PROVIDE          BANGLADESH    NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ZVITAMBO         ZIMBABWE      NA                   NA                0.1824480   0.1460286   0.2188675


### Parameter: RR


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.0000000
Birth       COHORTS          GUATEMALA     Low                  High              1.1893939   0.8344607   1.6952961
Birth       COHORTS          GUATEMALA     Medium               High              1.3483008   0.9382836   1.9374900
Birth       COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.0000000
Birth       COHORTS          INDIA         Low                  High              1.2744274   1.0343920   1.5701640
Birth       COHORTS          INDIA         Medium               High              1.1518271   0.9420891   1.4082592
Birth       COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.0000000
Birth       COHORTS          PHILIPPINES   Low                  High              0.7508185   0.6059715   0.9302887
Birth       COHORTS          PHILIPPINES   Medium               High              0.8566304   0.7030473   1.0437643
Birth       GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal        NEPAL         Low                  High              0.7570946   0.4938408   1.1606822
Birth       GMS-Nepal        NEPAL         Medium               High              1.0302632   0.6287995   1.6880456
Birth       IRC              INDIA         High                 High              1.0000000   1.0000000   1.0000000
Birth       IRC              INDIA         Low                  High              1.1355820   0.7219803   1.7861242
Birth       IRC              INDIA         Medium               High              1.2334770   0.7865128   1.9344446
Birth       MAL-ED           BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       MAL-ED           BANGLADESH    Low                  High              1.2000000   0.4940740   2.9145433
Birth       MAL-ED           BANGLADESH    Medium               High              1.8823529   0.8308823   4.2644459
Birth       NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       NIH-Birth        BANGLADESH    Low                  High              1.1088435   0.7913120   1.5537918
Birth       NIH-Birth        BANGLADESH    Medium               High              1.2680339   0.9138832   1.7594262
Birth       NIH-Crypto       BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto       BANGLADESH    Low                  High              0.8084499   0.5812416   1.1244742
Birth       NIH-Crypto       BANGLADESH    Medium               High              0.9632653   0.7111356   1.3047865
Birth       PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.0000000
Birth       PROBIT           BELARUS       Low                  High              1.0454064   0.8775031   1.2454367
Birth       PROBIT           BELARUS       Medium               High              1.0399509   0.9033628   1.1971910
Birth       PROVIDE          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH    Low                  High              1.2631786   0.8272244   1.9288844
Birth       PROVIDE          BANGLADESH    Medium               High              1.3149619   0.8790122   1.9671227
Birth       SAS-CompFeed     INDIA         High                 High              1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed     INDIA         Low                  High              0.9665185   0.6634127   1.4081100
Birth       SAS-CompFeed     INDIA         Medium               High              0.8163163   0.5675296   1.1741631
Birth       ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO         ZIMBABWE      Low                  High              0.8684973   0.7813999   0.9653030
Birth       ZVITAMBO         ZIMBABWE      Medium               High              0.9409704   0.8547566   1.0358800
6 months    CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    CMC-V-BCS-2002   INDIA         Low                  High              0.6469780   0.3082149   1.3580802
6 months    CMC-V-BCS-2002   INDIA         Medium               High              1.1179350   0.6116839   2.0431773
6 months    COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.0000000
6 months    COHORTS          GUATEMALA     Low                  High              1.3047513   0.5293082   3.2162280
6 months    COHORTS          GUATEMALA     Medium               High              0.5799373   0.1896799   1.7731311
6 months    COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    COHORTS          INDIA         Low                  High              2.0426062   1.5687109   2.6596614
6 months    COHORTS          INDIA         Medium               High              1.4378626   1.1060586   1.8692036
6 months    COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.0000000
6 months    COHORTS          PHILIPPINES   Low                  High              1.4213032   0.9917477   2.0369119
6 months    COHORTS          PHILIPPINES   Medium               High              1.1031630   0.7546995   1.6125207
6 months    IRC              INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA         Low                  High              1.2498674   0.6432269   2.4286430
6 months    IRC              INDIA         Medium               High              1.5096846   0.7942446   2.8695788
6 months    MAL-ED           INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    MAL-ED           INDIA         Low                  High              1.1472222   0.3828517   3.4376725
6 months    MAL-ED           INDIA         Medium               High              0.9194805   0.2940435   2.8752363
6 months    NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
6 months    NIH-Birth        BANGLADESH    Low                  High              1.7032967   0.7115903   4.0770930
6 months    NIH-Birth        BANGLADESH    Medium               High              1.5393430   0.6291925   3.7660603
6 months    PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.0000000
6 months    PROBIT           BELARUS       Low                  High              2.8260947   1.1133993   7.1733572
6 months    PROBIT           BELARUS       Medium               High              2.3153908   0.9673834   5.5417890
6 months    PROVIDE          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH    Low                  High              1.2573529   0.4948615   3.1947051
6 months    PROVIDE          BANGLADESH    Medium               High              1.0096618   0.3859169   2.6415457
6 months    SAS-CompFeed     INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed     INDIA         Low                  High              1.8426174   1.4730499   2.3049042
6 months    SAS-CompFeed     INDIA         Medium               High              1.1843207   0.6729856   2.0841687
6 months    ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO         ZIMBABWE      Low                  High              1.8388812   1.3860361   2.4396797
6 months    ZVITAMBO         ZIMBABWE      Medium               High              1.4335196   1.0736224   1.9140606
24 months   CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.0000000
24 months   CMC-V-BCS-2002   INDIA         Low                  High              2.5079365   0.9385330   6.7016777
24 months   CMC-V-BCS-2002   INDIA         Medium               High              1.6911315   0.5834495   4.9017540
24 months   COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.0000000
24 months   COHORTS          GUATEMALA     Low                  High              1.2246094   0.5858103   2.5599895
24 months   COHORTS          GUATEMALA     Medium               High              0.8699968   0.3783079   2.0007364
24 months   COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.0000000
24 months   COHORTS          INDIA         Low                  High              5.5099125   3.3894036   8.9570731
24 months   COHORTS          INDIA         Medium               High              2.6119079   1.5993708   4.2654667
24 months   COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.0000000
24 months   COHORTS          PHILIPPINES   Low                  High              1.7361759   1.2110047   2.4890959
24 months   COHORTS          PHILIPPINES   Medium               High              1.3003771   0.8883510   1.9035049
24 months   GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal        NEPAL         Low                  High              0.9433140   0.5138547   1.7316982
24 months   GMS-Nepal        NEPAL         Medium               High              1.3588235   0.6932177   2.6635232
24 months   IRC              INDIA         High                 High              1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA         Low                  High              1.0616438   0.4318684   2.6097941
24 months   IRC              INDIA         Medium               High              1.4496403   0.6209420   3.3843046
24 months   NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   NIH-Birth        BANGLADESH    Low                  High              1.2828947   0.6797381   2.4212543
24 months   NIH-Birth        BANGLADESH    Medium               High              1.1448141   0.5928874   2.2105366
24 months   NIH-Crypto       BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto       BANGLADESH    Low                  High              1.0773570   0.5488709   2.1147015
24 months   NIH-Crypto       BANGLADESH    Medium               High              0.8886673   0.4511977   1.7502963
24 months   PROVIDE          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH    Low                  High              1.4760536   0.8240046   2.6440804
24 months   PROVIDE          BANGLADESH    Medium               High              1.1495098   0.6313808   2.0928300
24 months   ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO         ZIMBABWE      Low                  High              1.3078185   0.8192751   2.0876860
24 months   ZVITAMBO         ZIMBABWE      Medium               High              0.9967988   0.6052534   1.6416396


### Parameter: PAR


agecat      studyid          country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA     High                 NA                 0.0424827   -0.0152321    0.1001976
Birth       COHORTS          INDIA         High                 NA                 0.0256456   -0.0000029    0.0512942
Birth       COHORTS          PHILIPPINES   High                 NA                -0.0208476   -0.0376976   -0.0039975
Birth       GMS-Nepal        NEPAL         High                 NA                -0.0403408   -0.1274046    0.0467229
Birth       IRC              INDIA         High                 NA                 0.0305978   -0.0404330    0.1016286
Birth       MAL-ED           BANGLADESH    High                 NA                 0.0407143   -0.0287520    0.1101806
Birth       NIH-Birth        BANGLADESH    High                 NA                 0.0345052   -0.0232836    0.0922940
Birth       NIH-Crypto       BANGLADESH    High                 NA                -0.0194304   -0.0647200    0.0258592
Birth       PROBIT           BELARUS       High                 NA                 0.0071956   -0.0163220    0.0307133
Birth       PROVIDE          BANGLADESH    High                 NA                 0.0364929   -0.0133570    0.0863428
Birth       SAS-CompFeed     INDIA         High                 NA                -0.0088989   -0.0345544    0.0167567
Birth       ZVITAMBO         ZIMBABWE      High                 NA                -0.0070059   -0.0127727   -0.0012391
6 months    CMC-V-BCS-2002   INDIA         High                 NA                -0.0087580   -0.0482800    0.0307641
6 months    COHORTS          GUATEMALA     High                 NA                 0.0000964   -0.0228389    0.0230318
6 months    COHORTS          INDIA         High                 NA                 0.0469410    0.0278863    0.0659958
6 months    COHORTS          PHILIPPINES   High                 NA                 0.0082659   -0.0029341    0.0194659
6 months    IRC              INDIA         High                 NA                 0.0275142   -0.0196749    0.0747033
6 months    MAL-ED           INDIA         High                 NA                 0.0017927   -0.0587275    0.0623129
6 months    NIH-Birth        BANGLADESH    High                 NA                 0.0200156   -0.0098052    0.0498364
6 months    PROBIT           BELARUS       High                 NA                 0.0038432    0.0016285    0.0060579
6 months    PROVIDE          BANGLADESH    High                 NA                 0.0031819   -0.0183012    0.0246649
6 months    SAS-CompFeed     INDIA         High                 NA                 0.0379326    0.0074343    0.0684309
6 months    ZVITAMBO         ZIMBABWE      High                 NA                 0.0068792    0.0034140    0.0103444
24 months   CMC-V-BCS-2002   INDIA         High                 NA                 0.0238533   -0.0032516    0.0509582
24 months   COHORTS          GUATEMALA     High                 NA                 0.0028179   -0.0220618    0.0276977
24 months   COHORTS          INDIA         High                 NA                 0.0638886    0.0496687    0.0781084
24 months   COHORTS          PHILIPPINES   High                 NA                 0.0165994    0.0042481    0.0289508
24 months   GMS-Nepal        NEPAL         High                 NA                 0.0041322   -0.0920409    0.1003054
24 months   IRC              INDIA         High                 NA                 0.0112785   -0.0261027    0.0486597
24 months   NIH-Birth        BANGLADESH    High                 NA                 0.0161395   -0.0296130    0.0618920
24 months   NIH-Crypto       BANGLADESH    High                 NA                -0.0014566   -0.0333596    0.0304464
24 months   PROVIDE          BANGLADESH    High                 NA                 0.0175289   -0.0158274    0.0508852
24 months   ZVITAMBO         ZIMBABWE      High                 NA                 0.0139698   -0.0280594    0.0559989


### Parameter: PAF


agecat      studyid          country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA     High                 NA                 0.1681326   -0.0941799    0.3675599
Birth       COHORTS          INDIA         High                 NA                 0.1465164   -0.0131418    0.2810145
Birth       COHORTS          PHILIPPINES   High                 NA                -0.1340068   -0.2472762   -0.0310237
Birth       GMS-Nepal        NEPAL         High                 NA                -0.1952862   -0.7000593    0.1596122
Birth       IRC              INDIA         High                 NA                 0.1140766   -0.1942263    0.3427877
Birth       MAL-ED           BANGLADESH    High                 NA                 0.2456897   -0.3051245    0.5640385
Birth       NIH-Birth        BANGLADESH    High                 NA                 0.1180982   -0.1034312    0.2951524
Birth       NIH-Crypto       BANGLADESH    High                 NA                -0.0798680   -0.2829337    0.0910561
Birth       PROBIT           BELARUS       High                 NA                 0.0342126   -0.0842514    0.1397334
Birth       PROVIDE          BANGLADESH    High                 NA                 0.1659333   -0.0934401    0.3637812
Birth       SAS-CompFeed     INDIA         High                 NA                -0.0831818   -0.3673012    0.1418988
Birth       ZVITAMBO         ZIMBABWE      High                 NA                -0.0439257   -0.0806896   -0.0084124
6 months    CMC-V-BCS-2002   INDIA         High                 NA                -0.0700637   -0.4373815    0.2033873
6 months    COHORTS          GUATEMALA     High                 NA                 0.0029643   -1.0222350    0.5084250
6 months    COHORTS          INDIA         High                 NA                 0.3657205    0.2006958    0.4966742
6 months    COHORTS          PHILIPPINES   High                 NA                 0.1389285   -0.0701982    0.3071899
6 months    IRC              INDIA         High                 NA                 0.2078853   -0.2379515    0.4931581
6 months    MAL-ED           INDIA         High                 NA                 0.0207156   -1.0000169    0.5205051
6 months    NIH-Birth        BANGLADESH    High                 NA                 0.3070968   -0.3224587    0.6369528
6 months    PROBIT           BELARUS       High                 NA                 0.5607131    0.0129124    0.8045027
6 months    PROVIDE          BANGLADESH    High                 NA                 0.0767464   -0.6169746    0.4728444
6 months    SAS-CompFeed     INDIA         High                 NA                 0.3048318    0.0708995    0.4798637
6 months    ZVITAMBO         ZIMBABWE      High                 NA                 0.2204449    0.1045090    0.3213710
24 months   CMC-V-BCS-2002   INDIA         High                 NA                 0.3858008   -0.2035002    0.6865471
24 months   COHORTS          GUATEMALA     High                 NA                 0.0614198   -0.6721728    0.4731808
24 months   COHORTS          INDIA         High                 NA                 0.6931243    0.5151209    0.8057811
24 months   COHORTS          PHILIPPINES   High                 NA                 0.2434253    0.0427656    0.4020219
24 months   GMS-Nepal        NEPAL         High                 NA                 0.0222222   -0.6594230    0.4238664
24 months   IRC              INDIA         High                 NA                 0.1488033   -0.5154091    0.5218877
24 months   NIH-Birth        BANGLADESH    High                 NA                 0.1303338   -0.3283374    0.4306271
24 months   NIH-Crypto       BANGLADESH    High                 NA                -0.0166376   -0.4548708    0.2895919
24 months   PROVIDE          BANGLADESH    High                 NA                 0.1636976   -0.2109775    0.4224487
24 months   ZVITAMBO         ZIMBABWE      High                 NA                 0.0765685   -0.1846907    0.2802124
