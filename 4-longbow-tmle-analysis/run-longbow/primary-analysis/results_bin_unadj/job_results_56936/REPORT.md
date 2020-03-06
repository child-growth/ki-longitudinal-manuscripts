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

**Outcome Variable:** swasted

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

agecat      studyid          country                        meducyrs    swasted   n_cell       n
----------  ---------------  -----------------------------  ---------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          High              0       49      86
Birth       CMC-V-BCS-2002   INDIA                          High              1        0      86
Birth       CMC-V-BCS-2002   INDIA                          Low               0       15      86
Birth       CMC-V-BCS-2002   INDIA                          Low               1        0      86
Birth       CMC-V-BCS-2002   INDIA                          Medium            0       21      86
Birth       CMC-V-BCS-2002   INDIA                          Medium            1        1      86
Birth       COHORTS          GUATEMALA                      High              0      145     748
Birth       COHORTS          GUATEMALA                      High              1       12     748
Birth       COHORTS          GUATEMALA                      Low               0      325     748
Birth       COHORTS          GUATEMALA                      Low               1       19     748
Birth       COHORTS          GUATEMALA                      Medium            0      220     748
Birth       COHORTS          GUATEMALA                      Medium            1       27     748
Birth       COHORTS          INDIA                          High              0      632    4879
Birth       COHORTS          INDIA                          High              1       24    4879
Birth       COHORTS          INDIA                          Low               0     1513    4879
Birth       COHORTS          INDIA                          Low               1       89    4879
Birth       COHORTS          INDIA                          Medium            0     2494    4879
Birth       COHORTS          INDIA                          Medium            1      127    4879
Birth       COHORTS          PHILIPPINES                    High              0     1076    2899
Birth       COHORTS          PHILIPPINES                    High              1       52    2899
Birth       COHORTS          PHILIPPINES                    Low               0      810    2899
Birth       COHORTS          PHILIPPINES                    Low               1       28    2899
Birth       COHORTS          PHILIPPINES                    Medium            0      892    2899
Birth       COHORTS          PHILIPPINES                    Medium            1       41    2899
Birth       EE               PAKISTAN                       High              0        5     177
Birth       EE               PAKISTAN                       High              1        0     177
Birth       EE               PAKISTAN                       Low               0      150     177
Birth       EE               PAKISTAN                       Low               1        6     177
Birth       EE               PAKISTAN                       Medium            0       16     177
Birth       EE               PAKISTAN                       Medium            1        0     177
Birth       GMS-Nepal        NEPAL                          High              0       76     639
Birth       GMS-Nepal        NEPAL                          High              1        5     639
Birth       GMS-Nepal        NEPAL                          Low               0      430     639
Birth       GMS-Nepal        NEPAL                          Low               1       14     639
Birth       GMS-Nepal        NEPAL                          Medium            0      106     639
Birth       GMS-Nepal        NEPAL                          Medium            1        8     639
Birth       IRC              INDIA                          High              0       89     343
Birth       IRC              INDIA                          High              1       12     343
Birth       IRC              INDIA                          Low               0      102     343
Birth       IRC              INDIA                          Low               1       24     343
Birth       IRC              INDIA                          Medium            0       98     343
Birth       IRC              INDIA                          Medium            1       18     343
Birth       MAL-ED           BANGLADESH                     High              0       63     175
Birth       MAL-ED           BANGLADESH                     High              1        1     175
Birth       MAL-ED           BANGLADESH                     Low               0       58     175
Birth       MAL-ED           BANGLADESH                     Low               1        2     175
Birth       MAL-ED           BANGLADESH                     Medium            0       48     175
Birth       MAL-ED           BANGLADESH                     Medium            1        3     175
Birth       MAL-ED           BRAZIL                         High              0       18      62
Birth       MAL-ED           BRAZIL                         High              1        0      62
Birth       MAL-ED           BRAZIL                         Low               0       17      62
Birth       MAL-ED           BRAZIL                         Low               1        0      62
Birth       MAL-ED           BRAZIL                         Medium            0       27      62
Birth       MAL-ED           BRAZIL                         Medium            1        0      62
Birth       MAL-ED           INDIA                          High              0        8      38
Birth       MAL-ED           INDIA                          High              1        0      38
Birth       MAL-ED           INDIA                          Low               0       18      38
Birth       MAL-ED           INDIA                          Low               1        0      38
Birth       MAL-ED           INDIA                          Medium            0       12      38
Birth       MAL-ED           INDIA                          Medium            1        0      38
Birth       MAL-ED           NEPAL                          High              0        4      24
Birth       MAL-ED           NEPAL                          High              1        1      24
Birth       MAL-ED           NEPAL                          Low               0       12      24
Birth       MAL-ED           NEPAL                          Low               1        0      24
Birth       MAL-ED           NEPAL                          Medium            0        7      24
Birth       MAL-ED           NEPAL                          Medium            1        0      24
Birth       MAL-ED           PERU                           High              0       65     228
Birth       MAL-ED           PERU                           High              1        0     228
Birth       MAL-ED           PERU                           Low               0       83     228
Birth       MAL-ED           PERU                           Low               1        0     228
Birth       MAL-ED           PERU                           Medium            0       80     228
Birth       MAL-ED           PERU                           Medium            1        0     228
Birth       MAL-ED           SOUTH AFRICA                   High              0       35     120
Birth       MAL-ED           SOUTH AFRICA                   High              1        0     120
Birth       MAL-ED           SOUTH AFRICA                   Low               0       59     120
Birth       MAL-ED           SOUTH AFRICA                   Low               1        0     120
Birth       MAL-ED           SOUTH AFRICA                   Medium            0       26     120
Birth       MAL-ED           SOUTH AFRICA                   Medium            1        0     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0        7      97
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1        0      97
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       32      97
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1        0      97
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0       58      97
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1        0      97
Birth       NIH-Birth        BANGLADESH                     High              0      151     575
Birth       NIH-Birth        BANGLADESH                     High              1       12     575
Birth       NIH-Birth        BANGLADESH                     Low               0      198     575
Birth       NIH-Birth        BANGLADESH                     Low               1       12     575
Birth       NIH-Birth        BANGLADESH                     Medium            0      188     575
Birth       NIH-Birth        BANGLADESH                     Medium            1       14     575
Birth       NIH-Crypto       BANGLADESH                     High              0      224     707
Birth       NIH-Crypto       BANGLADESH                     High              1       12     707
Birth       NIH-Crypto       BANGLADESH                     Low               0      210     707
Birth       NIH-Crypto       BANGLADESH                     Low               1       16     707
Birth       NIH-Crypto       BANGLADESH                     Medium            0      226     707
Birth       NIH-Crypto       BANGLADESH                     Medium            1       19     707
Birth       PROBIT           BELARUS                        High              0     2099   13817
Birth       PROBIT           BELARUS                        High              1      141   13817
Birth       PROBIT           BELARUS                        Low               0     4591   13817
Birth       PROBIT           BELARUS                        Low               1      349   13817
Birth       PROBIT           BELARUS                        Medium            0     6208   13817
Birth       PROBIT           BELARUS                        Medium            1      429   13817
Birth       PROVIDE          BANGLADESH                     High              0      166     532
Birth       PROVIDE          BANGLADESH                     High              1        3     532
Birth       PROVIDE          BANGLADESH                     Low               0      162     532
Birth       PROVIDE          BANGLADESH                     Low               1        2     532
Birth       PROVIDE          BANGLADESH                     Medium            0      191     532
Birth       PROVIDE          BANGLADESH                     Medium            1        8     532
Birth       SAS-CompFeed     INDIA                          High              0      229    1103
Birth       SAS-CompFeed     INDIA                          High              1        4    1103
Birth       SAS-CompFeed     INDIA                          Low               0      488    1103
Birth       SAS-CompFeed     INDIA                          Low               1       12    1103
Birth       SAS-CompFeed     INDIA                          Medium            0      357    1103
Birth       SAS-CompFeed     INDIA                          Medium            1       13    1103
Birth       ZVITAMBO         ZIMBABWE                       High              0     6547   12897
Birth       ZVITAMBO         ZIMBABWE                       High              1      468   12897
Birth       ZVITAMBO         ZIMBABWE                       Low               0     2549   12897
Birth       ZVITAMBO         ZIMBABWE                       Low               1      148   12897
Birth       ZVITAMBO         ZIMBABWE                       Medium            0     3010   12897
Birth       ZVITAMBO         ZIMBABWE                       Medium            1      175   12897
6 months    CMC-V-BCS-2002   INDIA                          High              0      152     368
6 months    CMC-V-BCS-2002   INDIA                          High              1        5     368
6 months    CMC-V-BCS-2002   INDIA                          Low               0      101     368
6 months    CMC-V-BCS-2002   INDIA                          Low               1        3     368
6 months    CMC-V-BCS-2002   INDIA                          Medium            0      103     368
6 months    CMC-V-BCS-2002   INDIA                          Medium            1        4     368
6 months    COHORTS          GUATEMALA                      High              0      182     953
6 months    COHORTS          GUATEMALA                      High              1        3     953
6 months    COHORTS          GUATEMALA                      Low               0      447     953
6 months    COHORTS          GUATEMALA                      Low               1        2     953
6 months    COHORTS          GUATEMALA                      Medium            0      318     953
6 months    COHORTS          GUATEMALA                      Medium            1        1     953
6 months    COHORTS          INDIA                          High              0      730    5407
6 months    COHORTS          INDIA                          High              1        7    5407
6 months    COHORTS          INDIA                          Low               0     1705    5407
6 months    COHORTS          INDIA                          Low               1       69    5407
6 months    COHORTS          INDIA                          Medium            0     2811    5407
6 months    COHORTS          INDIA                          Medium            1       85    5407
6 months    COHORTS          PHILIPPINES                    High              0     1006    2706
6 months    COHORTS          PHILIPPINES                    High              1        9    2706
6 months    COHORTS          PHILIPPINES                    Low               0      811    2706
6 months    COHORTS          PHILIPPINES                    Low               1       13    2706
6 months    COHORTS          PHILIPPINES                    Medium            0      854    2706
6 months    COHORTS          PHILIPPINES                    Medium            1       13    2706
6 months    EE               PAKISTAN                       High              0       15     372
6 months    EE               PAKISTAN                       High              1        0     372
6 months    EE               PAKISTAN                       Low               0      311     372
6 months    EE               PAKISTAN                       Low               1       13     372
6 months    EE               PAKISTAN                       Medium            0       33     372
6 months    EE               PAKISTAN                       Medium            1        0     372
6 months    GMS-Nepal        NEPAL                          High              0       68     561
6 months    GMS-Nepal        NEPAL                          High              1        0     561
6 months    GMS-Nepal        NEPAL                          Low               0      394     561
6 months    GMS-Nepal        NEPAL                          Low               1        5     561
6 months    GMS-Nepal        NEPAL                          Medium            0       92     561
6 months    GMS-Nepal        NEPAL                          Medium            1        2     561
6 months    Guatemala BSC    GUATEMALA                      High              0      117     277
6 months    Guatemala BSC    GUATEMALA                      High              1        0     277
6 months    Guatemala BSC    GUATEMALA                      Low               0       73     277
6 months    Guatemala BSC    GUATEMALA                      Low               1        0     277
6 months    Guatemala BSC    GUATEMALA                      Medium            0       87     277
6 months    Guatemala BSC    GUATEMALA                      Medium            1        0     277
6 months    IRC              INDIA                          High              0      118     408
6 months    IRC              INDIA                          High              1        6     408
6 months    IRC              INDIA                          Low               0      138     408
6 months    IRC              INDIA                          Low               1        7     408
6 months    IRC              INDIA                          Medium            0      130     408
6 months    IRC              INDIA                          Medium            1        9     408
6 months    LCNI-5           MALAWI                         High              0      298     813
6 months    LCNI-5           MALAWI                         High              1        0     813
6 months    LCNI-5           MALAWI                         Low               0      261     813
6 months    LCNI-5           MALAWI                         Low               1        0     813
6 months    LCNI-5           MALAWI                         Medium            0      254     813
6 months    LCNI-5           MALAWI                         Medium            1        0     813
6 months    MAL-ED           BANGLADESH                     High              0       73     196
6 months    MAL-ED           BANGLADESH                     High              1        0     196
6 months    MAL-ED           BANGLADESH                     Low               0       62     196
6 months    MAL-ED           BANGLADESH                     Low               1        2     196
6 months    MAL-ED           BANGLADESH                     Medium            0       59     196
6 months    MAL-ED           BANGLADESH                     Medium            1        0     196
6 months    MAL-ED           BRAZIL                         High              0       71     208
6 months    MAL-ED           BRAZIL                         High              1        0     208
6 months    MAL-ED           BRAZIL                         Low               0       56     208
6 months    MAL-ED           BRAZIL                         Low               1        0     208
6 months    MAL-ED           BRAZIL                         Medium            0       81     208
6 months    MAL-ED           BRAZIL                         Medium            1        0     208
6 months    MAL-ED           INDIA                          High              0       58     208
6 months    MAL-ED           INDIA                          High              1        1     208
6 months    MAL-ED           INDIA                          Low               0       70     208
6 months    MAL-ED           INDIA                          Low               1        2     208
6 months    MAL-ED           INDIA                          Medium            0       75     208
6 months    MAL-ED           INDIA                          Medium            1        2     208
6 months    MAL-ED           NEPAL                          High              0       53     221
6 months    MAL-ED           NEPAL                          High              1        0     221
6 months    MAL-ED           NEPAL                          Low               0       93     221
6 months    MAL-ED           NEPAL                          Low               1        0     221
6 months    MAL-ED           NEPAL                          Medium            0       75     221
6 months    MAL-ED           NEPAL                          Medium            1        0     221
6 months    MAL-ED           PERU                           High              0       81     272
6 months    MAL-ED           PERU                           High              1        0     272
6 months    MAL-ED           PERU                           Low               0       94     272
6 months    MAL-ED           PERU                           Low               1        0     272
6 months    MAL-ED           PERU                           Medium            0       97     272
6 months    MAL-ED           PERU                           Medium            1        0     272
6 months    MAL-ED           SOUTH AFRICA                   High              0       70     254
6 months    MAL-ED           SOUTH AFRICA                   High              1        0     254
6 months    MAL-ED           SOUTH AFRICA                   Low               0      125     254
6 months    MAL-ED           SOUTH AFRICA                   Low               1        2     254
6 months    MAL-ED           SOUTH AFRICA                   Medium            0       56     254
6 months    MAL-ED           SOUTH AFRICA                   Medium            1        1     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0        9     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1        0     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       62     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1        0     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0      132     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1        0     203
6 months    NIH-Birth        BANGLADESH                     High              0      153     537
6 months    NIH-Birth        BANGLADESH                     High              1        2     537
6 months    NIH-Birth        BANGLADESH                     Low               0      191     537
6 months    NIH-Birth        BANGLADESH                     Low               1        4     537
6 months    NIH-Birth        BANGLADESH                     Medium            0      187     537
6 months    NIH-Birth        BANGLADESH                     Medium            1        0     537
6 months    NIH-Crypto       BANGLADESH                     High              0      240     715
6 months    NIH-Crypto       BANGLADESH                     High              1        0     715
6 months    NIH-Crypto       BANGLADESH                     Low               0      229     715
6 months    NIH-Crypto       BANGLADESH                     Low               1        0     715
6 months    NIH-Crypto       BANGLADESH                     Medium            0      246     715
6 months    NIH-Crypto       BANGLADESH                     Medium            1        0     715
6 months    PROBIT           BELARUS                        High              0     2657   15757
6 months    PROBIT           BELARUS                        High              1        0   15757
6 months    PROBIT           BELARUS                        Low               0     5635   15757
6 months    PROBIT           BELARUS                        Low               1        6   15757
6 months    PROBIT           BELARUS                        Medium            0     7456   15757
6 months    PROBIT           BELARUS                        Medium            1        3   15757
6 months    PROVIDE          BANGLADESH                     High              0      208     603
6 months    PROVIDE          BANGLADESH                     High              1        1     603
6 months    PROVIDE          BANGLADESH                     Low               0      184     603
6 months    PROVIDE          BANGLADESH                     Low               1        3     603
6 months    PROVIDE          BANGLADESH                     Medium            0      206     603
6 months    PROVIDE          BANGLADESH                     Medium            1        1     603
6 months    SAS-CompFeed     INDIA                          High              0      285    1334
6 months    SAS-CompFeed     INDIA                          High              1        4    1334
6 months    SAS-CompFeed     INDIA                          Low               0      565    1334
6 months    SAS-CompFeed     INDIA                          Low               1       31    1334
6 months    SAS-CompFeed     INDIA                          Medium            0      441    1334
6 months    SAS-CompFeed     INDIA                          Medium            1        8    1334
6 months    SAS-FoodSuppl    INDIA                          High              0       35     380
6 months    SAS-FoodSuppl    INDIA                          High              1        0     380
6 months    SAS-FoodSuppl    INDIA                          Low               0      287     380
6 months    SAS-FoodSuppl    INDIA                          Low               1       17     380
6 months    SAS-FoodSuppl    INDIA                          Medium            0       39     380
6 months    SAS-FoodSuppl    INDIA                          Medium            1        2     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      508    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        4    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0       74    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        0    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0     1426    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        8    2020
6 months    ZVITAMBO         ZIMBABWE                       High              0     4569    8492
6 months    ZVITAMBO         ZIMBABWE                       High              1       35    8492
6 months    ZVITAMBO         ZIMBABWE                       Low               0     1745    8492
6 months    ZVITAMBO         ZIMBABWE                       Low               1       21    8492
6 months    ZVITAMBO         ZIMBABWE                       Medium            0     2099    8492
6 months    ZVITAMBO         ZIMBABWE                       Medium            1       23    8492
24 months   CMC-V-BCS-2002   INDIA                          High              0      158     372
24 months   CMC-V-BCS-2002   INDIA                          High              1        0     372
24 months   CMC-V-BCS-2002   INDIA                          Low               0      103     372
24 months   CMC-V-BCS-2002   INDIA                          Low               1        2     372
24 months   CMC-V-BCS-2002   INDIA                          Medium            0      108     372
24 months   CMC-V-BCS-2002   INDIA                          Medium            1        1     372
24 months   COHORTS          GUATEMALA                      High              0      209    1068
24 months   COHORTS          GUATEMALA                      High              1        0    1068
24 months   COHORTS          GUATEMALA                      Low               0      509    1068
24 months   COHORTS          GUATEMALA                      Low               1        3    1068
24 months   COHORTS          GUATEMALA                      Medium            0      346    1068
24 months   COHORTS          GUATEMALA                      Medium            1        1    1068
24 months   COHORTS          INDIA                          High              0      599    4166
24 months   COHORTS          INDIA                          High              1        2    4166
24 months   COHORTS          INDIA                          Low               0     1238    4166
24 months   COHORTS          INDIA                          Low               1       26    4166
24 months   COHORTS          INDIA                          Medium            0     2286    4166
24 months   COHORTS          INDIA                          Medium            1       15    4166
24 months   COHORTS          PHILIPPINES                    High              0      903    2449
24 months   COHORTS          PHILIPPINES                    High              1        8    2449
24 months   COHORTS          PHILIPPINES                    Low               0      741    2449
24 months   COHORTS          PHILIPPINES                    Low               1        7    2449
24 months   COHORTS          PHILIPPINES                    Medium            0      780    2449
24 months   COHORTS          PHILIPPINES                    Medium            1       10    2449
24 months   EE               PAKISTAN                       High              0        6     166
24 months   EE               PAKISTAN                       High              1        0     166
24 months   EE               PAKISTAN                       Low               0      141     166
24 months   EE               PAKISTAN                       Low               1        2     166
24 months   EE               PAKISTAN                       Medium            0       15     166
24 months   EE               PAKISTAN                       Medium            1        2     166
24 months   GMS-Nepal        NEPAL                          High              0       53     484
24 months   GMS-Nepal        NEPAL                          High              1        2     484
24 months   GMS-Nepal        NEPAL                          Low               0      335     484
24 months   GMS-Nepal        NEPAL                          Low               1        9     484
24 months   GMS-Nepal        NEPAL                          Medium            0       81     484
24 months   GMS-Nepal        NEPAL                          Medium            1        4     484
24 months   IRC              INDIA                          High              0      122     409
24 months   IRC              INDIA                          High              1        2     409
24 months   IRC              INDIA                          Low               0      145     409
24 months   IRC              INDIA                          Low               1        1     409
24 months   IRC              INDIA                          Medium            0      137     409
24 months   IRC              INDIA                          Medium            1        2     409
24 months   LCNI-5           MALAWI                         High              0      214     556
24 months   LCNI-5           MALAWI                         High              1        0     556
24 months   LCNI-5           MALAWI                         Low               0      172     556
24 months   LCNI-5           MALAWI                         Low               1        0     556
24 months   LCNI-5           MALAWI                         Medium            0      169     556
24 months   LCNI-5           MALAWI                         Medium            1        1     556
24 months   MAL-ED           BANGLADESH                     High              0       64     171
24 months   MAL-ED           BANGLADESH                     High              1        0     171
24 months   MAL-ED           BANGLADESH                     Low               0       59     171
24 months   MAL-ED           BANGLADESH                     Low               1        0     171
24 months   MAL-ED           BANGLADESH                     Medium            0       48     171
24 months   MAL-ED           BANGLADESH                     Medium            1        0     171
24 months   MAL-ED           BRAZIL                         High              0       62     168
24 months   MAL-ED           BRAZIL                         High              1        0     168
24 months   MAL-ED           BRAZIL                         Low               0       41     168
24 months   MAL-ED           BRAZIL                         Low               1        1     168
24 months   MAL-ED           BRAZIL                         Medium            0       64     168
24 months   MAL-ED           BRAZIL                         Medium            1        0     168
24 months   MAL-ED           INDIA                          High              0       55     199
24 months   MAL-ED           INDIA                          High              1        0     199
24 months   MAL-ED           INDIA                          Low               0       68     199
24 months   MAL-ED           INDIA                          Low               1        1     199
24 months   MAL-ED           INDIA                          Medium            0       74     199
24 months   MAL-ED           INDIA                          Medium            1        1     199
24 months   MAL-ED           NEPAL                          High              0       48     213
24 months   MAL-ED           NEPAL                          High              1        0     213
24 months   MAL-ED           NEPAL                          Low               0       91     213
24 months   MAL-ED           NEPAL                          Low               1        0     213
24 months   MAL-ED           NEPAL                          Medium            0       74     213
24 months   MAL-ED           NEPAL                          Medium            1        0     213
24 months   MAL-ED           PERU                           High              0       59     200
24 months   MAL-ED           PERU                           High              1        0     200
24 months   MAL-ED           PERU                           Low               0       73     200
24 months   MAL-ED           PERU                           Low               1        1     200
24 months   MAL-ED           PERU                           Medium            0       66     200
24 months   MAL-ED           PERU                           Medium            1        1     200
24 months   MAL-ED           SOUTH AFRICA                   High              0       67     238
24 months   MAL-ED           SOUTH AFRICA                   High              1        0     238
24 months   MAL-ED           SOUTH AFRICA                   Low               0      120     238
24 months   MAL-ED           SOUTH AFRICA                   Low               1        0     238
24 months   MAL-ED           SOUTH AFRICA                   Medium            0       51     238
24 months   MAL-ED           SOUTH AFRICA                   Medium            1        0     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0        7     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1        0     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       54     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1        0     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0      114     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1        0     175
24 months   NIH-Birth        BANGLADESH                     High              0      128     428
24 months   NIH-Birth        BANGLADESH                     High              1        2     428
24 months   NIH-Birth        BANGLADESH                     Low               0      149     428
24 months   NIH-Birth        BANGLADESH                     Low               1        3     428
24 months   NIH-Birth        BANGLADESH                     Medium            0      141     428
24 months   NIH-Birth        BANGLADESH                     Medium            1        5     428
24 months   NIH-Crypto       BANGLADESH                     High              0      190     514
24 months   NIH-Crypto       BANGLADESH                     High              1        1     514
24 months   NIH-Crypto       BANGLADESH                     Low               0      145     514
24 months   NIH-Crypto       BANGLADESH                     Low               1        1     514
24 months   NIH-Crypto       BANGLADESH                     Medium            0      175     514
24 months   NIH-Crypto       BANGLADESH                     Medium            1        2     514
24 months   PROBIT           BELARUS                        High              0      652    3970
24 months   PROBIT           BELARUS                        High              1        2    3970
24 months   PROBIT           BELARUS                        Low               0     1377    3970
24 months   PROBIT           BELARUS                        Low               1        4    3970
24 months   PROBIT           BELARUS                        Medium            0     1934    3970
24 months   PROBIT           BELARUS                        Medium            1        1    3970
24 months   PROVIDE          BANGLADESH                     High              0      199     579
24 months   PROVIDE          BANGLADESH                     High              1        2     579
24 months   PROVIDE          BANGLADESH                     Low               0      170     579
24 months   PROVIDE          BANGLADESH                     Low               1        4     579
24 months   PROVIDE          BANGLADESH                     Medium            0      201     579
24 months   PROVIDE          BANGLADESH                     Medium            1        3     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0        4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        0       6
24 months   ZVITAMBO         ZIMBABWE                       High              0      168     433
24 months   ZVITAMBO         ZIMBABWE                       High              1       16     433
24 months   ZVITAMBO         ZIMBABWE                       Low               0      109     433
24 months   ZVITAMBO         ZIMBABWE                       Low               1        9     433
24 months   ZVITAMBO         ZIMBABWE                       Medium            0      125     433
24 months   ZVITAMBO         ZIMBABWE                       Medium            1        6     433


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
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
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
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/d8f56fc9-8501-4764-b6b1-ae33a4590c79/641c139a-1c00-4d70-8b88-5751edf79b36/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d8f56fc9-8501-4764-b6b1-ae33a4590c79/641c139a-1c00-4d70-8b88-5751edf79b36/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d8f56fc9-8501-4764-b6b1-ae33a4590c79/641c139a-1c00-4d70-8b88-5751edf79b36/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d8f56fc9-8501-4764-b6b1-ae33a4590c79/641c139a-1c00-4d70-8b88-5751edf79b36/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      GUATEMALA     High                 NA                0.0764331   0.0348455   0.1180207
Birth       COHORTS      GUATEMALA     Low                  NA                0.0552326   0.0310769   0.0793882
Birth       COHORTS      GUATEMALA     Medium               NA                0.1093117   0.0703726   0.1482509
Birth       COHORTS      INDIA         High                 NA                0.0365854   0.0222172   0.0509535
Birth       COHORTS      INDIA         Low                  NA                0.0555556   0.0443376   0.0667735
Birth       COHORTS      INDIA         Medium               NA                0.0484548   0.0402335   0.0566761
Birth       COHORTS      PHILIPPINES   High                 NA                0.0460993   0.0338597   0.0583389
Birth       COHORTS      PHILIPPINES   Low                  NA                0.0334129   0.0212432   0.0455825
Birth       COHORTS      PHILIPPINES   Medium               NA                0.0439443   0.0307897   0.0570988
Birth       GMS-Nepal    NEPAL         High                 NA                0.0617284   0.0092776   0.1141792
Birth       GMS-Nepal    NEPAL         Low                  NA                0.0315315   0.0152644   0.0477987
Birth       GMS-Nepal    NEPAL         Medium               NA                0.0701754   0.0232478   0.1171031
Birth       IRC          INDIA         High                 NA                0.1188119   0.0556165   0.1820073
Birth       IRC          INDIA         Low                  NA                0.1904762   0.1218117   0.2591406
Birth       IRC          INDIA         Medium               NA                0.1551724   0.0891875   0.2211573
Birth       NIH-Birth    BANGLADESH    High                 NA                0.0736196   0.0334938   0.1137454
Birth       NIH-Birth    BANGLADESH    Low                  NA                0.0571429   0.0257218   0.0885639
Birth       NIH-Birth    BANGLADESH    Medium               NA                0.0693069   0.0342526   0.1043613
Birth       NIH-Crypto   BANGLADESH    High                 NA                0.0508475   0.0227994   0.0788955
Birth       NIH-Crypto   BANGLADESH    Low                  NA                0.0707965   0.0373336   0.1042593
Birth       NIH-Crypto   BANGLADESH    Medium               NA                0.0775510   0.0440362   0.1110659
Birth       PROBIT       BELARUS       High                 NA                0.0629464   0.0296659   0.0962269
Birth       PROBIT       BELARUS       Low                  NA                0.0706478   0.0295785   0.1117171
Birth       PROBIT       BELARUS       Medium               NA                0.0646376   0.0341951   0.0950801
Birth       ZVITAMBO     ZIMBABWE      High                 NA                0.0667142   0.0608748   0.0725536
Birth       ZVITAMBO     ZIMBABWE      Low                  NA                0.0548758   0.0462805   0.0634711
Birth       ZVITAMBO     ZIMBABWE      Medium               NA                0.0549451   0.0470309   0.0628592
6 months    COHORTS      INDIA         High                 NA                0.0094980   0.0024947   0.0165012
6 months    COHORTS      INDIA         Low                  NA                0.0388952   0.0298972   0.0478931
6 months    COHORTS      INDIA         Medium               NA                0.0293508   0.0232029   0.0354988
6 months    COHORTS      PHILIPPINES   High                 NA                0.0088670   0.0030987   0.0146353
6 months    COHORTS      PHILIPPINES   Low                  NA                0.0157767   0.0072669   0.0242865
6 months    COHORTS      PHILIPPINES   Medium               NA                0.0149942   0.0069033   0.0230852
6 months    IRC          INDIA         High                 NA                0.0483871   0.0105720   0.0862022
6 months    IRC          INDIA         Low                  NA                0.0482759   0.0133443   0.0832074
6 months    IRC          INDIA         Medium               NA                0.0647482   0.0237890   0.1057074
6 months    ZVITAMBO     ZIMBABWE      High                 NA                0.0076021   0.0050930   0.0101112
6 months    ZVITAMBO     ZIMBABWE      Low                  NA                0.0118913   0.0068354   0.0169471
6 months    ZVITAMBO     ZIMBABWE      Medium               NA                0.0108388   0.0064330   0.0152446
24 months   COHORTS      PHILIPPINES   High                 NA                0.0087816   0.0027219   0.0148412
24 months   COHORTS      PHILIPPINES   Low                  NA                0.0093583   0.0024568   0.0162598
24 months   COHORTS      PHILIPPINES   Medium               NA                0.0126582   0.0048609   0.0204555
24 months   ZVITAMBO     ZIMBABWE      High                 NA                0.0869565   0.0461962   0.1277169
24 months   ZVITAMBO     ZIMBABWE      Low                  NA                0.0762712   0.0283242   0.1242182
24 months   ZVITAMBO     ZIMBABWE      Medium               NA                0.0458015   0.0099610   0.0816420


### Parameter: E(Y)


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      GUATEMALA     NA                   NA                0.0775401   0.0583612   0.0967191
Birth       COHORTS      INDIA         NA                   NA                0.0491904   0.0431214   0.0552594
Birth       COHORTS      PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       GMS-Nepal    NEPAL         NA                   NA                0.0422535   0.0266438   0.0578632
Birth       IRC          INDIA         NA                   NA                0.1574344   0.1188345   0.1960344
Birth       NIH-Birth    BANGLADESH    NA                   NA                0.0660870   0.0457632   0.0864107
Birth       NIH-Crypto   BANGLADESH    NA                   NA                0.0664781   0.0481022   0.0848539
Birth       PROBIT       BELARUS       NA                   NA                0.0665123   0.0333611   0.0996634
Birth       ZVITAMBO     ZIMBABWE      NA                   NA                0.0613321   0.0571909   0.0654732
6 months    COHORTS      INDIA         NA                   NA                0.0297762   0.0252454   0.0343071
6 months    COHORTS      PHILIPPINES   NA                   NA                0.0129342   0.0086762   0.0171922
6 months    IRC          INDIA         NA                   NA                0.0539216   0.0319786   0.0758646
6 months    ZVITAMBO     ZIMBABWE      NA                   NA                0.0093029   0.0072609   0.0113448
24 months   COHORTS      PHILIPPINES   NA                   NA                0.0102082   0.0062264   0.0141901
24 months   ZVITAMBO     ZIMBABWE      NA                   NA                0.0715935   0.0472820   0.0959051


### Parameter: RR


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      GUATEMALA     High                 High              1.0000000   1.0000000   1.0000000
Birth       COHORTS      GUATEMALA     Low                  High              0.7226260   0.3595339   1.4524034
Birth       COHORTS      GUATEMALA     Medium               High              1.4301619   0.7463557   2.7404668
Birth       COHORTS      INDIA         High                 High              1.0000000   1.0000000   1.0000000
Birth       COHORTS      INDIA         Low                  High              1.5185185   0.9764190   2.3615871
Birth       COHORTS      INDIA         Medium               High              1.3244309   0.8634401   2.0315447
Birth       COHORTS      PHILIPPINES   High                 High              1.0000000   1.0000000   1.0000000
Birth       COHORTS      PHILIPPINES   Low                  High              0.7248026   0.4618214   1.1375369
Birth       COHORTS      PHILIPPINES   Medium               High              0.9532525   0.6389039   1.4222646
Birth       GMS-Nepal    NEPAL         High                 High              1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal    NEPAL         Low                  High              0.5108108   0.1890368   1.3803012
Birth       GMS-Nepal    NEPAL         Medium               High              1.1368421   0.3855700   3.3519466
Birth       IRC          INDIA         High                 High              1.0000000   1.0000000   1.0000000
Birth       IRC          INDIA         Low                  High              1.6031746   0.8431932   3.0481375
Birth       IRC          INDIA         Medium               High              1.3060345   0.6610092   2.5804874
Birth       NIH-Birth    BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       NIH-Birth    BANGLADESH    Low                  High              0.7761905   0.3578708   1.6834892
Birth       NIH-Birth    BANGLADESH    Medium               High              0.9414191   0.4475658   1.9802003
Birth       NIH-Crypto   BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto   BANGLADESH    Low                  High              1.3923304   0.6733838   2.8788692
Birth       NIH-Crypto   BANGLADESH    Medium               High              1.5251701   0.7568142   3.0735995
Birth       PROBIT       BELARUS       High                 High              1.0000000   1.0000000   1.0000000
Birth       PROBIT       BELARUS       Low                  High              1.1223476   0.8262568   1.5245431
Birth       PROBIT       BELARUS       Medium               High              1.0268674   0.7571197   1.3927212
Birth       ZVITAMBO     ZIMBABWE      High                 High              1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO     ZIMBABWE      Low                  High              0.8225505   0.6874447   0.9842092
Birth       ZVITAMBO     ZIMBABWE      Medium               High              0.8235888   0.6958436   0.9747859
6 months    COHORTS      INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    COHORTS      INDIA         Low                  High              4.0951039   1.8908265   8.8690715
6 months    COHORTS      INDIA         Medium               High              3.0902230   1.4358105   6.6509322
6 months    COHORTS      PHILIPPINES   High                 High              1.0000000   1.0000000   1.0000000
6 months    COHORTS      PHILIPPINES   Low                  High              1.7792611   0.7642414   4.1423691
6 months    COHORTS      PHILIPPINES   Medium               High              1.6910163   0.7262384   3.9374617
6 months    IRC          INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    IRC          INDIA         Low                  High              0.9977011   0.3439183   2.8943142
6 months    IRC          INDIA         Medium               High              1.3381295   0.4895938   3.6572985
6 months    ZVITAMBO     ZIMBABWE      High                 High              1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO     ZIMBABWE      Low                  High              1.5642129   0.9131440   2.6794920
6 months    ZVITAMBO     ZIMBABWE      Medium               High              1.4257708   0.8445987   2.4068501
24 months   COHORTS      PHILIPPINES   High                 High              1.0000000   1.0000000   1.0000000
24 months   COHORTS      PHILIPPINES   Low                  High              1.0656751   0.3881533   2.9258120
24 months   COHORTS      PHILIPPINES   Medium               High              1.4414557   0.5715907   3.6351088
24 months   ZVITAMBO     ZIMBABWE      High                 High              1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO     ZIMBABWE      Low                  High              0.8771186   0.4004071   1.9213875
24 months   ZVITAMBO     ZIMBABWE      Medium               High              0.5267176   0.2115570   1.3113790


### Parameter: PAR


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     High                 NA                 0.0011070   -0.0359245    0.0381384
Birth       COHORTS      INDIA         High                 NA                 0.0126050   -0.0010976    0.0263077
Birth       COHORTS      PHILIPPINES   High                 NA                -0.0043608   -0.0136476    0.0049261
Birth       GMS-Nepal    NEPAL         High                 NA                -0.0194749   -0.0674050    0.0284552
Birth       IRC          INDIA         High                 NA                 0.0386225   -0.0173388    0.0945838
Birth       NIH-Birth    BANGLADESH    High                 NA                -0.0075327   -0.0408537    0.0257883
Birth       NIH-Crypto   BANGLADESH    High                 NA                 0.0156306   -0.0088471    0.0401084
Birth       PROBIT       BELARUS       High                 NA                 0.0035658   -0.0108712    0.0180029
Birth       ZVITAMBO     ZIMBABWE      High                 NA                -0.0053821   -0.0091442   -0.0016200
6 months    COHORTS      INDIA         High                 NA                 0.0202783    0.0127813    0.0277752
6 months    COHORTS      PHILIPPINES   High                 NA                 0.0040672   -0.0010750    0.0092095
6 months    IRC          INDIA         High                 NA                 0.0055345   -0.0267498    0.0378187
6 months    ZVITAMBO     ZIMBABWE      High                 NA                 0.0017008   -0.0002068    0.0036084
24 months   COHORTS      PHILIPPINES   High                 NA                 0.0014267   -0.0035989    0.0064523
24 months   ZVITAMBO     ZIMBABWE      High                 NA                -0.0153630   -0.0443536    0.0136276


### Parameter: PAF


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     High                 NA                 0.0142763   -0.6001614    0.3927792
Birth       COHORTS      INDIA         High                 NA                 0.2562500   -0.0792375    0.4874492
Birth       COHORTS      PHILIPPINES   High                 NA                -0.1044780   -0.3501471    0.0964897
Birth       GMS-Nepal    NEPAL         High                 NA                -0.4609053   -2.1514607    0.3227761
Birth       IRC          INDIA         High                 NA                 0.2453245   -0.2028254    0.5265023
Birth       NIH-Birth    BANGLADESH    High                 NA                -0.1139813   -0.7500217    0.2908921
Birth       NIH-Crypto   BANGLADESH    High                 NA                 0.2351244   -0.2295204    0.5241765
Birth       PROBIT       BELARUS       High                 NA                 0.0536117   -0.1853732    0.2444146
Birth       ZVITAMBO     ZIMBABWE      High                 NA                -0.0877533   -0.1505957   -0.0283431
6 months    COHORTS      INDIA         High                 NA                 0.6810218    0.3441589    0.8448601
6 months    COHORTS      PHILIPPINES   High                 NA                 0.3144546   -0.2005200    0.6085259
6 months    IRC          INDIA         High                 NA                 0.1026393   -0.7462155    0.5388563
6 months    ZVITAMBO     ZIMBABWE      High                 NA                 0.1828240   -0.0452424    0.3611275
24 months   COHORTS      PHILIPPINES   High                 NA                 0.1397585   -0.5193606    0.5129429
24 months   ZVITAMBO     ZIMBABWE      High                 NA                -0.2145863   -0.6877207    0.1259100
