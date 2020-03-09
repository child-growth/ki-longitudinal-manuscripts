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

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* impsan
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        feducyrs    stunted   n_cell       n
----------  ---------------  -----------------------------  ---------  --------  -------  ------
Birth       COHORTS          GUATEMALA                      High              0      146     804
Birth       COHORTS          GUATEMALA                      High              1        9     804
Birth       COHORTS          GUATEMALA                      Low               0      330     804
Birth       COHORTS          GUATEMALA                      Low               1       25     804
Birth       COHORTS          GUATEMALA                      Medium            0      280     804
Birth       COHORTS          GUATEMALA                      Medium            1       14     804
Birth       COHORTS          INDIA                          High              0      479    1354
Birth       COHORTS          INDIA                          High              1       48    1354
Birth       COHORTS          INDIA                          Low               0      392    1354
Birth       COHORTS          INDIA                          Low               1       47    1354
Birth       COHORTS          INDIA                          Medium            0      354    1354
Birth       COHORTS          INDIA                          Medium            1       34    1354
Birth       COHORTS          PHILIPPINES                    High              0      990    2873
Birth       COHORTS          PHILIPPINES                    High              1       37    2873
Birth       COHORTS          PHILIPPINES                    Low               0      758    2873
Birth       COHORTS          PHILIPPINES                    Low               1       69    2873
Birth       COHORTS          PHILIPPINES                    Medium            0      952    2873
Birth       COHORTS          PHILIPPINES                    Medium            1       67    2873
Birth       GMS-Nepal        NEPAL                          High              0      147     694
Birth       GMS-Nepal        NEPAL                          High              1       25     694
Birth       GMS-Nepal        NEPAL                          Low               0      235     694
Birth       GMS-Nepal        NEPAL                          Low               1       61     694
Birth       GMS-Nepal        NEPAL                          Medium            0      190     694
Birth       GMS-Nepal        NEPAL                          Medium            1       36     694
Birth       JiVitA-3         BANGLADESH                     High              0     3509   21624
Birth       JiVitA-3         BANGLADESH                     High              1     1217   21624
Birth       JiVitA-3         BANGLADESH                     Low               0     6170   21624
Birth       JiVitA-3         BANGLADESH                     Low               1     3298   21624
Birth       JiVitA-3         BANGLADESH                     Medium            0     4854   21624
Birth       JiVitA-3         BANGLADESH                     Medium            1     2576   21624
Birth       JiVitA-4         BANGLADESH                     High              0      427    2740
Birth       JiVitA-4         BANGLADESH                     High              1      155    2740
Birth       JiVitA-4         BANGLADESH                     Low               0      753    2740
Birth       JiVitA-4         BANGLADESH                     Low               1      349    2740
Birth       JiVitA-4         BANGLADESH                     Medium            0      728    2740
Birth       JiVitA-4         BANGLADESH                     Medium            1      328    2740
Birth       MAL-ED           BANGLADESH                     High              0       39     129
Birth       MAL-ED           BANGLADESH                     High              1        8     129
Birth       MAL-ED           BANGLADESH                     Low               0       28     129
Birth       MAL-ED           BANGLADESH                     Low               1        8     129
Birth       MAL-ED           BANGLADESH                     Medium            0       36     129
Birth       MAL-ED           BANGLADESH                     Medium            1       10     129
Birth       MAL-ED           INDIA                          High              0        6      24
Birth       MAL-ED           INDIA                          High              1        1      24
Birth       MAL-ED           INDIA                          Low               0       13      24
Birth       MAL-ED           INDIA                          Low               1        1      24
Birth       MAL-ED           INDIA                          Medium            0        3      24
Birth       MAL-ED           INDIA                          Medium            1        0      24
Birth       MAL-ED           NEPAL                          High              0        2      10
Birth       MAL-ED           NEPAL                          High              1        1      10
Birth       MAL-ED           NEPAL                          Low               0        3      10
Birth       MAL-ED           NEPAL                          Low               1        1      10
Birth       MAL-ED           NEPAL                          Medium            0        3      10
Birth       MAL-ED           NEPAL                          Medium            1        0      10
Birth       MAL-ED           PERU                           High              0       79     194
Birth       MAL-ED           PERU                           High              1        7     194
Birth       MAL-ED           PERU                           Low               0       47     194
Birth       MAL-ED           PERU                           Low               1       11     194
Birth       MAL-ED           PERU                           Medium            0       47     194
Birth       MAL-ED           PERU                           Medium            1        3     194
Birth       MAL-ED           SOUTH AFRICA                   High              0       10      33
Birth       MAL-ED           SOUTH AFRICA                   High              1        0      33
Birth       MAL-ED           SOUTH AFRICA                   Low               0       14      33
Birth       MAL-ED           SOUTH AFRICA                   Low               1        0      33
Birth       MAL-ED           SOUTH AFRICA                   Medium            0        8      33
Birth       MAL-ED           SOUTH AFRICA                   Medium            1        1      33
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0       58     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1        8     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       21     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1        6     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0        6     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1        4     103
Birth       NIH-Crypto       BANGLADESH                     High              0      252     732
Birth       NIH-Crypto       BANGLADESH                     High              1       32     732
Birth       NIH-Crypto       BANGLADESH                     Low               0      207     732
Birth       NIH-Crypto       BANGLADESH                     Low               1       28     732
Birth       NIH-Crypto       BANGLADESH                     Medium            0      172     732
Birth       NIH-Crypto       BANGLADESH                     Medium            1       41     732
Birth       PROBIT           BELARUS                        High              0     2053   13424
Birth       PROBIT           BELARUS                        High              1        6   13424
Birth       PROBIT           BELARUS                        Low               0     5309   13424
Birth       PROBIT           BELARUS                        Low               1       11   13424
Birth       PROBIT           BELARUS                        Medium            0     6029   13424
Birth       PROBIT           BELARUS                        Medium            1       16   13424
Birth       PROVIDE          BANGLADESH                     High              0      144     539
Birth       PROVIDE          BANGLADESH                     High              1       19     539
Birth       PROVIDE          BANGLADESH                     Low               0      168     539
Birth       PROVIDE          BANGLADESH                     Low               1       19     539
Birth       PROVIDE          BANGLADESH                     Medium            0      179     539
Birth       PROVIDE          BANGLADESH                     Medium            1       10     539
Birth       SAS-CompFeed     INDIA                          High              0      230    1249
Birth       SAS-CompFeed     INDIA                          High              1       69    1249
Birth       SAS-CompFeed     INDIA                          Low               0      380    1249
Birth       SAS-CompFeed     INDIA                          Low               1      163    1249
Birth       SAS-CompFeed     INDIA                          Medium            0      291    1249
Birth       SAS-CompFeed     INDIA                          Medium            1      116    1249
Birth       ZVITAMBO         ZIMBABWE                       High              0      885   13501
Birth       ZVITAMBO         ZIMBABWE                       High              1       97   13501
Birth       ZVITAMBO         ZIMBABWE                       Low               0     2019   13501
Birth       ZVITAMBO         ZIMBABWE                       Low               1      262   13501
Birth       ZVITAMBO         ZIMBABWE                       Medium            0     9209   13501
Birth       ZVITAMBO         ZIMBABWE                       Medium            1     1029   13501
6 months    COHORTS          GUATEMALA                      High              0       99     904
6 months    COHORTS          GUATEMALA                      High              1       66     904
6 months    COHORTS          GUATEMALA                      Low               0      239     904
6 months    COHORTS          GUATEMALA                      Low               1      167     904
6 months    COHORTS          GUATEMALA                      Medium            0      199     904
6 months    COHORTS          GUATEMALA                      Medium            1      134     904
6 months    COHORTS          INDIA                          High              0      484    1385
6 months    COHORTS          INDIA                          High              1       60    1385
6 months    COHORTS          INDIA                          Low               0      334    1385
6 months    COHORTS          INDIA                          Low               1      116    1385
6 months    COHORTS          INDIA                          Medium            0      327    1385
6 months    COHORTS          INDIA                          Medium            1       64    1385
6 months    COHORTS          PHILIPPINES                    High              0      753    2564
6 months    COHORTS          PHILIPPINES                    High              1      138    2564
6 months    COHORTS          PHILIPPINES                    Low               0      544    2564
6 months    COHORTS          PHILIPPINES                    Low               1      202    2564
6 months    COHORTS          PHILIPPINES                    Medium            0      725    2564
6 months    COHORTS          PHILIPPINES                    Medium            1      202    2564
6 months    GMS-Nepal        NEPAL                          High              0      116     563
6 months    GMS-Nepal        NEPAL                          High              1       21     563
6 months    GMS-Nepal        NEPAL                          Low               0      183     563
6 months    GMS-Nepal        NEPAL                          Low               1       60     563
6 months    GMS-Nepal        NEPAL                          Medium            0      142     563
6 months    GMS-Nepal        NEPAL                          Medium            1       41     563
6 months    JiVitA-3         BANGLADESH                     High              0     3546   16132
6 months    JiVitA-3         BANGLADESH                     High              1      733   16132
6 months    JiVitA-3         BANGLADESH                     Low               0     4490   16132
6 months    JiVitA-3         BANGLADESH                     Low               1     1814   16132
6 months    JiVitA-3         BANGLADESH                     Medium            0     4076   16132
6 months    JiVitA-3         BANGLADESH                     Medium            1     1473   16132
6 months    JiVitA-4         BANGLADESH                     High              0      909    4689
6 months    JiVitA-4         BANGLADESH                     High              1      190    4689
6 months    JiVitA-4         BANGLADESH                     Low               0     1205    4689
6 months    JiVitA-4         BANGLADESH                     Low               1      520    4689
6 months    JiVitA-4         BANGLADESH                     Medium            0     1401    4689
6 months    JiVitA-4         BANGLADESH                     Medium            1      464    4689
6 months    LCNI-5           MALAWI                         High              0      166     812
6 months    LCNI-5           MALAWI                         High              1       85     812
6 months    LCNI-5           MALAWI                         Low               0      183     812
6 months    LCNI-5           MALAWI                         Low               1      107     812
6 months    LCNI-5           MALAWI                         Medium            0      168     812
6 months    LCNI-5           MALAWI                         Medium            1      103     812
6 months    MAL-ED           BANGLADESH                     High              0       44     132
6 months    MAL-ED           BANGLADESH                     High              1        6     132
6 months    MAL-ED           BANGLADESH                     Low               0       30     132
6 months    MAL-ED           BANGLADESH                     Low               1        6     132
6 months    MAL-ED           BANGLADESH                     Medium            0       39     132
6 months    MAL-ED           BANGLADESH                     Medium            1        7     132
6 months    MAL-ED           INDIA                          High              0       37     138
6 months    MAL-ED           INDIA                          High              1        6     138
6 months    MAL-ED           INDIA                          Low               0       44     138
6 months    MAL-ED           INDIA                          Low               1       10     138
6 months    MAL-ED           INDIA                          Medium            0       36     138
6 months    MAL-ED           INDIA                          Medium            1        5     138
6 months    MAL-ED           NEPAL                          High              0       40      95
6 months    MAL-ED           NEPAL                          High              1        0      95
6 months    MAL-ED           NEPAL                          Low               0       26      95
6 months    MAL-ED           NEPAL                          Low               1        1      95
6 months    MAL-ED           NEPAL                          Medium            0       24      95
6 months    MAL-ED           NEPAL                          Medium            1        4      95
6 months    MAL-ED           PERU                           High              0       85     224
6 months    MAL-ED           PERU                           High              1       22     224
6 months    MAL-ED           PERU                           Low               0       46     224
6 months    MAL-ED           PERU                           Low               1       14     224
6 months    MAL-ED           PERU                           Medium            0       47     224
6 months    MAL-ED           PERU                           Medium            1       10     224
6 months    MAL-ED           SOUTH AFRICA                   High              0       29      92
6 months    MAL-ED           SOUTH AFRICA                   High              1        4      92
6 months    MAL-ED           SOUTH AFRICA                   Low               0       30      92
6 months    MAL-ED           SOUTH AFRICA                   Low               1        5      92
6 months    MAL-ED           SOUTH AFRICA                   Medium            0       20      92
6 months    MAL-ED           SOUTH AFRICA                   Medium            1        4      92
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0      100     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1       27     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       44     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1       11     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0       11     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1        8     201
6 months    NIH-Crypto       BANGLADESH                     High              0      235     715
6 months    NIH-Crypto       BANGLADESH                     High              1       44     715
6 months    NIH-Crypto       BANGLADESH                     Low               0      172     715
6 months    NIH-Crypto       BANGLADESH                     Low               1       51     715
6 months    NIH-Crypto       BANGLADESH                     Medium            0      158     715
6 months    NIH-Crypto       BANGLADESH                     Medium            1       55     715
6 months    PROBIT           BELARUS                        High              0     2453   15210
6 months    PROBIT           BELARUS                        High              1       60   15210
6 months    PROBIT           BELARUS                        Low               0     5668   15210
6 months    PROBIT           BELARUS                        Low               1      293   15210
6 months    PROBIT           BELARUS                        Medium            0     6511   15210
6 months    PROBIT           BELARUS                        Medium            1      225   15210
6 months    PROVIDE          BANGLADESH                     High              0      188     604
6 months    PROVIDE          BANGLADESH                     High              1       21     604
6 months    PROVIDE          BANGLADESH                     Low               0      162     604
6 months    PROVIDE          BANGLADESH                     Low               1       47     604
6 months    PROVIDE          BANGLADESH                     Medium            0      158     604
6 months    PROVIDE          BANGLADESH                     Medium            1       28     604
6 months    SAS-CompFeed     INDIA                          High              0      273    1333
6 months    SAS-CompFeed     INDIA                          High              1       75    1333
6 months    SAS-CompFeed     INDIA                          Low               0      356    1333
6 months    SAS-CompFeed     INDIA                          Low               1      194    1333
6 months    SAS-CompFeed     INDIA                          Medium            0      326    1333
6 months    SAS-CompFeed     INDIA                          Medium            1      109    1333
6 months    SAS-FoodSuppl    INDIA                          High              0       67     380
6 months    SAS-FoodSuppl    INDIA                          High              1       34     380
6 months    SAS-FoodSuppl    INDIA                          Low               0       72     380
6 months    SAS-FoodSuppl    INDIA                          Low               1       60     380
6 months    SAS-FoodSuppl    INDIA                          Medium            0       78     380
6 months    SAS-FoodSuppl    INDIA                          Medium            1       69     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      346    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1       25    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0      963    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1      120    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0      514    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1       50    2018
6 months    ZVITAMBO         ZIMBABWE                       High              0      504    8429
6 months    ZVITAMBO         ZIMBABWE                       High              1       82    8429
6 months    ZVITAMBO         ZIMBABWE                       Low               0     1157    8429
6 months    ZVITAMBO         ZIMBABWE                       Low               1      302    8429
6 months    ZVITAMBO         ZIMBABWE                       Medium            0     5410    8429
6 months    ZVITAMBO         ZIMBABWE                       Medium            1      974    8429
24 months   COHORTS          GUATEMALA                      High              0       33     992
24 months   COHORTS          GUATEMALA                      High              1      144     992
24 months   COHORTS          GUATEMALA                      Low               0       84     992
24 months   COHORTS          GUATEMALA                      Low               1      378     992
24 months   COHORTS          GUATEMALA                      Medium            0       73     992
24 months   COHORTS          GUATEMALA                      Medium            1      280     992
24 months   COHORTS          INDIA                          High              0      339    1380
24 months   COHORTS          INDIA                          High              1      200    1380
24 months   COHORTS          INDIA                          Low               0      124    1380
24 months   COHORTS          INDIA                          Low               1      326    1380
24 months   COHORTS          INDIA                          Medium            0      179    1380
24 months   COHORTS          INDIA                          Medium            1      212    1380
24 months   COHORTS          PHILIPPINES                    High              0      421    2314
24 months   COHORTS          PHILIPPINES                    High              1      377    2314
24 months   COHORTS          PHILIPPINES                    Low               0      159    2314
24 months   COHORTS          PHILIPPINES                    Low               1      533    2314
24 months   COHORTS          PHILIPPINES                    Medium            0      281    2314
24 months   COHORTS          PHILIPPINES                    Medium            1      543    2314
24 months   GMS-Nepal        NEPAL                          High              0       75     487
24 months   GMS-Nepal        NEPAL                          High              1       38     487
24 months   GMS-Nepal        NEPAL                          Low               0      117     487
24 months   GMS-Nepal        NEPAL                          Low               1      102     487
24 months   GMS-Nepal        NEPAL                          Medium            0       76     487
24 months   GMS-Nepal        NEPAL                          Medium            1       79     487
24 months   JiVitA-3         BANGLADESH                     High              0     1317    8293
24 months   JiVitA-3         BANGLADESH                     High              1      753    8293
24 months   JiVitA-3         BANGLADESH                     Low               0     1513    8293
24 months   JiVitA-3         BANGLADESH                     Low               1     1866    8293
24 months   JiVitA-3         BANGLADESH                     Medium            0     1409    8293
24 months   JiVitA-3         BANGLADESH                     Medium            1     1435    8293
24 months   JiVitA-4         BANGLADESH                     High              0      772    4619
24 months   JiVitA-4         BANGLADESH                     High              1      324    4619
24 months   JiVitA-4         BANGLADESH                     Low               0      925    4619
24 months   JiVitA-4         BANGLADESH                     Low               1      778    4619
24 months   JiVitA-4         BANGLADESH                     Medium            0     1070    4619
24 months   JiVitA-4         BANGLADESH                     Medium            1      750    4619
24 months   LCNI-5           MALAWI                         High              0       94     571
24 months   LCNI-5           MALAWI                         High              1       79     571
24 months   LCNI-5           MALAWI                         Low               0      122     571
24 months   LCNI-5           MALAWI                         Low               1       81     571
24 months   LCNI-5           MALAWI                         Medium            0      104     571
24 months   LCNI-5           MALAWI                         Medium            1       91     571
24 months   MAL-ED           BANGLADESH                     High              0       28     117
24 months   MAL-ED           BANGLADESH                     High              1       12     117
24 months   MAL-ED           BANGLADESH                     Low               0       20     117
24 months   MAL-ED           BANGLADESH                     Low               1       15     117
24 months   MAL-ED           BANGLADESH                     Medium            0       20     117
24 months   MAL-ED           BANGLADESH                     Medium            1       22     117
24 months   MAL-ED           INDIA                          High              0       29     132
24 months   MAL-ED           INDIA                          High              1       13     132
24 months   MAL-ED           INDIA                          Low               0       28     132
24 months   MAL-ED           INDIA                          Low               1       23     132
24 months   MAL-ED           INDIA                          Medium            0       19     132
24 months   MAL-ED           INDIA                          Medium            1       20     132
24 months   MAL-ED           NEPAL                          High              0       31      91
24 months   MAL-ED           NEPAL                          High              1        7      91
24 months   MAL-ED           NEPAL                          Low               0       20      91
24 months   MAL-ED           NEPAL                          Low               1        7      91
24 months   MAL-ED           NEPAL                          Medium            0       19      91
24 months   MAL-ED           NEPAL                          Medium            1        7      91
24 months   MAL-ED           PERU                           High              0       47     164
24 months   MAL-ED           PERU                           High              1       30     164
24 months   MAL-ED           PERU                           Low               0       26     164
24 months   MAL-ED           PERU                           Low               1       18     164
24 months   MAL-ED           PERU                           Medium            0       28     164
24 months   MAL-ED           PERU                           Medium            1       15     164
24 months   MAL-ED           SOUTH AFRICA                   High              0       23      91
24 months   MAL-ED           SOUTH AFRICA                   High              1       11      91
24 months   MAL-ED           SOUTH AFRICA                   Low               0       23      91
24 months   MAL-ED           SOUTH AFRICA                   Low               1       11      91
24 months   MAL-ED           SOUTH AFRICA                   Medium            0       11      91
24 months   MAL-ED           SOUTH AFRICA                   Medium            1       12      91
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0       37     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1       77     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       11     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1       36     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0        4     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1       12     177
24 months   NIH-Crypto       BANGLADESH                     High              0      179     514
24 months   NIH-Crypto       BANGLADESH                     High              1       32     514
24 months   NIH-Crypto       BANGLADESH                     Low               0       91     514
24 months   NIH-Crypto       BANGLADESH                     Low               1       53     514
24 months   NIH-Crypto       BANGLADESH                     Medium            0      112     514
24 months   NIH-Crypto       BANGLADESH                     Medium            1       47     514
24 months   PROBIT           BELARUS                        High              0      599    3913
24 months   PROBIT           BELARUS                        High              1       28    3913
24 months   PROBIT           BELARUS                        Low               0     1394    3913
24 months   PROBIT           BELARUS                        Low               1      122    3913
24 months   PROBIT           BELARUS                        Medium            0     1658    3913
24 months   PROBIT           BELARUS                        Medium            1      112    3913
24 months   PROVIDE          BANGLADESH                     High              0      169     578
24 months   PROVIDE          BANGLADESH                     High              1       33     578
24 months   PROVIDE          BANGLADESH                     Low               0      107     578
24 months   PROVIDE          BANGLADESH                     Low               1       90     578
24 months   PROVIDE          BANGLADESH                     Medium            0      112     578
24 months   PROVIDE          BANGLADESH                     Medium            1       67     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0        5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        0       6
24 months   ZVITAMBO         ZIMBABWE                       High              0       69    1594
24 months   ZVITAMBO         ZIMBABWE                       High              1       27    1594
24 months   ZVITAMBO         ZIMBABWE                       Low               0      170    1594
24 months   ZVITAMBO         ZIMBABWE                       Low               1      128    1594
24 months   ZVITAMBO         ZIMBABWE                       Medium            0      812    1594
24 months   ZVITAMBO         ZIMBABWE                       Medium            1      388    1594


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/56fd8d69-c25b-4792-acc7-ecaab165a9f5/a0c851f9-4d4b-482a-8b39-7f44030ae2ca/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/56fd8d69-c25b-4792-acc7-ecaab165a9f5/a0c851f9-4d4b-482a-8b39-7f44030ae2ca/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/56fd8d69-c25b-4792-acc7-ecaab165a9f5/a0c851f9-4d4b-482a-8b39-7f44030ae2ca/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/56fd8d69-c25b-4792-acc7-ecaab165a9f5/a0c851f9-4d4b-482a-8b39-7f44030ae2ca/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      High                 NA                0.0580645    0.0212246   0.0949044
Birth       COHORTS          GUATEMALA                      Low                  NA                0.0704225    0.0437906   0.0970545
Birth       COHORTS          GUATEMALA                      Medium               NA                0.0476190    0.0232611   0.0719770
Birth       COHORTS          INDIA                          High                 NA                0.0910488    0.0664018   0.1156958
Birth       COHORTS          INDIA                          Low                  NA                0.1071399    0.0783111   0.1359688
Birth       COHORTS          INDIA                          Medium               NA                0.0867115    0.0584280   0.1149950
Birth       COHORTS          PHILIPPINES                    High                 NA                0.0442642    0.0309985   0.0575299
Birth       COHORTS          PHILIPPINES                    Low                  NA                0.0755518    0.0568895   0.0942142
Birth       COHORTS          PHILIPPINES                    Medium               NA                0.0656548    0.0499450   0.0813647
Birth       GMS-Nepal        NEPAL                          High                 NA                0.1829630    0.1472916   0.2186344
Birth       GMS-Nepal        NEPAL                          Low                  NA                0.1772068    0.1412425   0.2131711
Birth       GMS-Nepal        NEPAL                          Medium               NA                0.1736313    0.1352683   0.2119943
Birth       JiVitA-3         BANGLADESH                     High                 NA                0.3267363    0.3154649   0.3380076
Birth       JiVitA-3         BANGLADESH                     Low                  NA                0.3247337    0.3163519   0.3331154
Birth       JiVitA-3         BANGLADESH                     Medium               NA                0.3286060    0.3203128   0.3368992
Birth       JiVitA-4         BANGLADESH                     High                 NA                0.3161838    0.2876933   0.3446742
Birth       JiVitA-4         BANGLADESH                     Low                  NA                0.2931619    0.2717633   0.3145606
Birth       JiVitA-4         BANGLADESH                     Medium               NA                0.3067664    0.2822170   0.3313158
Birth       MAL-ED           BANGLADESH                     High                 NA                0.1702128    0.0623508   0.2780748
Birth       MAL-ED           BANGLADESH                     Low                  NA                0.2222222    0.0858870   0.3585575
Birth       MAL-ED           BANGLADESH                     Medium               NA                0.2173913    0.0977303   0.3370523
Birth       NIH-Crypto       BANGLADESH                     High                 NA                0.1201267    0.0845247   0.1557287
Birth       NIH-Crypto       BANGLADESH                     Low                  NA                0.1200538    0.0797707   0.1603370
Birth       NIH-Crypto       BANGLADESH                     Medium               NA                0.1763776    0.1249935   0.2277617
Birth       PROBIT           BELARUS                        High                 NA                0.0029140   -0.0013455   0.0071736
Birth       PROBIT           BELARUS                        Low                  NA                0.0020677    0.0002440   0.0038914
Birth       PROBIT           BELARUS                        Medium               NA                0.0026468    0.0006929   0.0046007
Birth       PROVIDE          BANGLADESH                     High                 NA                0.0925078    0.0488801   0.1361355
Birth       PROVIDE          BANGLADESH                     Low                  NA                0.1133888    0.0626370   0.1641406
Birth       PROVIDE          BANGLADESH                     Medium               NA                0.0530760    0.0203269   0.0858250
Birth       SAS-CompFeed     INDIA                          High                 NA                0.2705348    0.2281090   0.3129606
Birth       SAS-CompFeed     INDIA                          Low                  NA                0.2754028    0.2394740   0.3113316
Birth       SAS-CompFeed     INDIA                          Medium               NA                0.2896437    0.2573510   0.3219364
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                0.1030991    0.0939941   0.1122040
Birth       ZVITAMBO         ZIMBABWE                       Low                  NA                0.0996261    0.0908062   0.1084461
Birth       ZVITAMBO         ZIMBABWE                       Medium               NA                0.1032534    0.0979738   0.1085330
6 months    COHORTS          GUATEMALA                      High                 NA                0.3389351    0.2693687   0.4085014
6 months    COHORTS          GUATEMALA                      Low                  NA                0.3894508    0.3432332   0.4356684
6 months    COHORTS          GUATEMALA                      Medium               NA                0.4329473    0.3813817   0.4845129
6 months    COHORTS          INDIA                          High                 NA                0.1249630    0.0967925   0.1531336
6 months    COHORTS          INDIA                          Low                  NA                0.2215432    0.1829534   0.2601331
6 months    COHORTS          INDIA                          Medium               NA                0.1702174    0.1308138   0.2096211
6 months    COHORTS          PHILIPPINES                    High                 NA                0.1958473    0.1625106   0.2291840
6 months    COHORTS          PHILIPPINES                    Low                  NA                0.2335375    0.2011882   0.2658869
6 months    COHORTS          PHILIPPINES                    Medium               NA                0.2106036    0.1830916   0.2381155
6 months    GMS-Nepal        NEPAL                          High                 NA                0.1576907    0.0873507   0.2280307
6 months    GMS-Nepal        NEPAL                          Low                  NA                0.2521602    0.1942746   0.3100459
6 months    GMS-Nepal        NEPAL                          Medium               NA                0.2429584    0.1691098   0.3168071
6 months    JiVitA-3         BANGLADESH                     High                 NA                0.2269172    0.2046047   0.2492297
6 months    JiVitA-3         BANGLADESH                     Low                  NA                0.2655135    0.2517233   0.2793038
6 months    JiVitA-3         BANGLADESH                     Medium               NA                0.2463094    0.2332121   0.2594068
6 months    JiVitA-4         BANGLADESH                     High                 NA                0.1862962    0.1438955   0.2286969
6 months    JiVitA-4         BANGLADESH                     Low                  NA                0.2815221    0.2496144   0.3134298
6 months    JiVitA-4         BANGLADESH                     Medium               NA                0.2537556    0.2276991   0.2798122
6 months    LCNI-5           MALAWI                         High                 NA                0.3589913    0.3001656   0.4178170
6 months    LCNI-5           MALAWI                         Low                  NA                0.3601580    0.3043313   0.4159847
6 months    LCNI-5           MALAWI                         Medium               NA                0.3778521    0.3199386   0.4357655
6 months    MAL-ED           BANGLADESH                     High                 NA                0.1200000    0.0295838   0.2104162
6 months    MAL-ED           BANGLADESH                     Low                  NA                0.1666667    0.0444637   0.2888697
6 months    MAL-ED           BANGLADESH                     Medium               NA                0.1521739    0.0479796   0.2563682
6 months    MAL-ED           INDIA                          High                 NA                0.1395349    0.0355905   0.2434793
6 months    MAL-ED           INDIA                          Low                  NA                0.1851852    0.0812020   0.2891684
6 months    MAL-ED           INDIA                          Medium               NA                0.1219512    0.0214230   0.2224794
6 months    MAL-ED           PERU                           High                 NA                0.2064146    0.1291942   0.2836349
6 months    MAL-ED           PERU                           Low                  NA                0.2441174    0.1305119   0.3577229
6 months    MAL-ED           PERU                           Medium               NA                0.1613499    0.0681629   0.2545370
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2125984    0.1412626   0.2839342
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2000000    0.0940235   0.3059765
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.4210526    0.1984952   0.6436100
6 months    NIH-Crypto       BANGLADESH                     High                 NA                0.1814048    0.1389435   0.2238661
6 months    NIH-Crypto       BANGLADESH                     Low                  NA                0.2238425    0.1724089   0.2752760
6 months    NIH-Crypto       BANGLADESH                     Medium               NA                0.2256164    0.1721682   0.2790647
6 months    PROBIT           BELARUS                        High                 NA                0.0260032    0.0161191   0.0358874
6 months    PROBIT           BELARUS                        Low                  NA                0.0422599    0.0301787   0.0543411
6 months    PROBIT           BELARUS                        Medium               NA                0.0365562    0.0248060   0.0483064
6 months    PROVIDE          BANGLADESH                     High                 NA                0.1063277    0.0652258   0.1474296
6 months    PROVIDE          BANGLADESH                     Low                  NA                0.2250799    0.1683838   0.2817760
6 months    PROVIDE          BANGLADESH                     Medium               NA                0.1483060    0.0971046   0.1995074
6 months    SAS-CompFeed     INDIA                          High                 NA                0.2832785    0.2423603   0.3241966
6 months    SAS-CompFeed     INDIA                          Low                  NA                0.3029947    0.2630964   0.3428930
6 months    SAS-CompFeed     INDIA                          Medium               NA                0.2582939    0.2011506   0.3154372
6 months    SAS-FoodSuppl    INDIA                          High                 NA                0.3354666    0.2414327   0.4295004
6 months    SAS-FoodSuppl    INDIA                          Low                  NA                0.4573234    0.3726560   0.5419908
6 months    SAS-FoodSuppl    INDIA                          Medium               NA                0.4691643    0.3882591   0.5500694
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0699119    0.0440802   0.0957437
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1094303    0.0907296   0.1281310
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0908535    0.0674676   0.1142393
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                0.1669019    0.1321436   0.2016603
6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                0.2029325    0.1771139   0.2287512
6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                0.1550621    0.1456034   0.1645208
24 months   COHORTS          GUATEMALA                      High                 NA                0.7947999    0.7368886   0.8527111
24 months   COHORTS          GUATEMALA                      Low                  NA                0.8144541    0.7795417   0.8493665
24 months   COHORTS          GUATEMALA                      Medium               NA                0.8100694    0.7694716   0.8506672
24 months   COHORTS          INDIA                          High                 NA                0.4378367    0.3950974   0.4805759
24 months   COHORTS          INDIA                          Low                  NA                0.6596652    0.6173467   0.7019837
24 months   COHORTS          INDIA                          Medium               NA                0.5364430    0.4830351   0.5898509
24 months   COHORTS          PHILIPPINES                    High                 NA                0.5686221    0.5296817   0.6075624
24 months   COHORTS          PHILIPPINES                    Low                  NA                0.7210248    0.6836828   0.7583667
24 months   COHORTS          PHILIPPINES                    Medium               NA                0.6426077    0.6066386   0.6785768
24 months   GMS-Nepal        NEPAL                          High                 NA                0.3808874    0.2905962   0.4711787
24 months   GMS-Nepal        NEPAL                          Low                  NA                0.4465712    0.3823273   0.5108151
24 months   GMS-Nepal        NEPAL                          Medium               NA                0.5187304    0.4317009   0.6057599
24 months   JiVitA-3         BANGLADESH                     High                 NA                0.4874992    0.4446880   0.5303104
24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.4970407    0.4744388   0.5196425
24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.4875046    0.4615307   0.5134784
24 months   JiVitA-4         BANGLADESH                     High                 NA                0.3584498    0.3160734   0.4008261
24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.4382748    0.4063654   0.4701843
24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.4243050    0.3973048   0.4513052
24 months   LCNI-5           MALAWI                         High                 NA                0.4690357    0.3949180   0.5431534
24 months   LCNI-5           MALAWI                         Low                  NA                0.3994304    0.3324391   0.4664217
24 months   LCNI-5           MALAWI                         Medium               NA                0.4580395    0.3875846   0.5284944
24 months   MAL-ED           BANGLADESH                     High                 NA                0.3339975    0.1888011   0.4791938
24 months   MAL-ED           BANGLADESH                     Low                  NA                0.3831718    0.2221242   0.5442194
24 months   MAL-ED           BANGLADESH                     Medium               NA                0.5093015    0.3523744   0.6662285
24 months   MAL-ED           INDIA                          High                 NA                0.3069587    0.1618936   0.4520238
24 months   MAL-ED           INDIA                          Low                  NA                0.4648660    0.3254193   0.6043128
24 months   MAL-ED           INDIA                          Medium               NA                0.5147632    0.3536157   0.6759107
24 months   MAL-ED           NEPAL                          High                 NA                0.1842105    0.0602732   0.3081478
24 months   MAL-ED           NEPAL                          Low                  NA                0.2592593    0.0930459   0.4254726
24 months   MAL-ED           NEPAL                          Medium               NA                0.2692308    0.0977903   0.4406712
24 months   MAL-ED           PERU                           High                 NA                0.3820152    0.2678721   0.4961582
24 months   MAL-ED           PERU                           Low                  NA                0.4342597    0.2882379   0.5802814
24 months   MAL-ED           PERU                           Medium               NA                0.3633946    0.2156133   0.5111758
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.3268154    0.1827231   0.4709076
24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.3020693    0.1483884   0.4557501
24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.4957546    0.2753935   0.7161157
24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.1841033    0.1296622   0.2385444
24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.3464575    0.2642847   0.4286303
24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.2755970    0.1918357   0.3593584
24 months   PROBIT           BELARUS                        High                 NA                0.0503785    0.0152918   0.0854651
24 months   PROBIT           BELARUS                        Low                  NA                0.0774309    0.0423107   0.1125512
24 months   PROBIT           BELARUS                        Medium               NA                0.0682322    0.0371738   0.0992906
24 months   PROVIDE          BANGLADESH                     High                 NA                0.1821333    0.1299164   0.2343502
24 months   PROVIDE          BANGLADESH                     Low                  NA                0.4434364    0.3727509   0.5141220
24 months   PROVIDE          BANGLADESH                     Medium               NA                0.3568502    0.2851007   0.4285996
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.2707196    0.1793567   0.3620825
24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.4162745    0.3616874   0.4708615
24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.3258247    0.2995395   0.3521099


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      NA                   NA                0.0597015   0.0433139   0.0760891
Birth       COHORTS          INDIA                          NA                   NA                0.0952733   0.0796294   0.1109171
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.0602158   0.0515157   0.0689159
Birth       GMS-Nepal        NEPAL                          NA                   NA                0.1757925   0.1474525   0.2041325
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.3279227   0.3204672   0.3353781
Birth       JiVitA-4         BANGLADESH                     NA                   NA                0.3036496   0.2833035   0.3239957
Birth       MAL-ED           BANGLADESH                     NA                   NA                0.2015504   0.1320546   0.2710462
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       PROBIT           BELARUS                        NA                   NA                0.0024583   0.0007394   0.0041772
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       SAS-CompFeed     INDIA                          NA                   NA                0.2786229   0.2475201   0.3097257
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1028072   0.0976841   0.1079303
6 months    COHORTS          GUATEMALA                      NA                   NA                0.4059735   0.3739435   0.4380034
6 months    COHORTS          INDIA                          NA                   NA                0.1732852   0.1533446   0.1932258
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2113885   0.1955816   0.2271953
6 months    GMS-Nepal        NEPAL                          NA                   NA                0.2166963   0.1826342   0.2507583
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.2491941   0.2409375   0.2574508
6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.2503732   0.2360124   0.2647340
6 months    LCNI-5           MALAWI                         NA                   NA                0.3633005   0.3301997   0.3964012
6 months    MAL-ED           BANGLADESH                     NA                   NA                0.1439394   0.0838283   0.2040505
6 months    MAL-ED           INDIA                          NA                   NA                0.1521739   0.0920273   0.2123205
6 months    MAL-ED           PERU                           NA                   NA                0.2053571   0.1523375   0.2583768
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2288557   0.1706344   0.2870770
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    PROBIT           BELARUS                        NA                   NA                0.0380013   0.0281677   0.0478349
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2835709   0.2656121   0.3015297
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0966303   0.0837364   0.1095242
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1611105   0.1532617   0.1689592
24 months   COHORTS          GUATEMALA                      NA                   NA                0.8084677   0.7839679   0.8329676
24 months   COHORTS          INDIA                          NA                   NA                0.5347826   0.5084567   0.5611085
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6279170   0.6082186   0.6476154
24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4496920   0.4054647   0.4939193
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4888460   0.4756120   0.5020800
24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.4009526   0.3835903   0.4183149
24 months   LCNI-5           MALAWI                         NA                   NA                0.4395797   0.3988336   0.4803258
24 months   MAL-ED           BANGLADESH                     NA                   NA                0.4188034   0.3290222   0.5085847
24 months   MAL-ED           INDIA                          NA                   NA                0.4242424   0.3396095   0.5088753
24 months   MAL-ED           NEPAL                          NA                   NA                0.2307692   0.1437242   0.3178143
24 months   MAL-ED           PERU                           NA                   NA                0.3841463   0.3094772   0.4588155
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.3736264   0.2736811   0.4735717
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   PROBIT           BELARUS                        NA                   NA                0.0669563   0.0407410   0.0931716
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.3406524   0.3173794   0.3639255


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
Birth       COHORTS          GUATEMALA                      Low                  High              1.2128326   0.5794578   2.538516
Birth       COHORTS          GUATEMALA                      Medium               High              0.8201058   0.3630178   1.852729
Birth       COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
Birth       COHORTS          INDIA                          Low                  High              1.1767308   0.8038190   1.722646
Birth       COHORTS          INDIA                          Medium               High              0.9523630   0.6243202   1.452773
Birth       COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
Birth       COHORTS          PHILIPPINES                    Low                  High              1.7068381   1.1585097   2.514693
Birth       COHORTS          PHILIPPINES                    Medium               High              1.4832484   1.0118210   2.174323
Birth       GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
Birth       GMS-Nepal        NEPAL                          Low                  High              0.9685390   0.8002333   1.172243
Birth       GMS-Nepal        NEPAL                          Medium               High              0.9489968   0.7689648   1.171178
Birth       JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       JiVitA-3         BANGLADESH                     Low                  High              0.9938708   0.9642286   1.024424
Birth       JiVitA-3         BANGLADESH                     Medium               High              1.0057223   0.9763112   1.036020
Birth       JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       JiVitA-4         BANGLADESH                     Low                  High              0.9271884   0.8546428   1.005892
Birth       JiVitA-4         BANGLADESH                     Medium               High              0.9702156   0.8878071   1.060273
Birth       MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       MAL-ED           BANGLADESH                     Low                  High              1.3055556   0.5404307   3.153920
Birth       MAL-ED           BANGLADESH                     Medium               High              1.2771739   0.5517153   2.956548
Birth       NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       NIH-Crypto       BANGLADESH                     Low                  High              0.9993934   0.6452584   1.547887
Birth       NIH-Crypto       BANGLADESH                     Medium               High              1.4682629   0.9771561   2.206194
Birth       PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
Birth       PROBIT           BELARUS                        Low                  High              0.7095551   0.1438641   3.499612
Birth       PROBIT           BELARUS                        Medium               High              0.9082989   0.2074103   3.977655
Birth       PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       PROVIDE          BANGLADESH                     Low                  High              1.2257209   0.6416730   2.341366
Birth       PROVIDE          BANGLADESH                     Medium               High              0.5737456   0.2643058   1.245467
Birth       SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
Birth       SAS-CompFeed     INDIA                          Low                  High              1.0179939   0.9624009   1.076798
Birth       SAS-CompFeed     INDIA                          Medium               High              1.0706337   0.9219529   1.243292
Birth       ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
Birth       ZVITAMBO         ZIMBABWE                       Low                  High              0.9663146   0.8687711   1.074810
Birth       ZVITAMBO         ZIMBABWE                       Medium               High              1.0014969   0.9258949   1.083272
6 months    COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6 months    COHORTS          GUATEMALA                      Low                  High              1.1490426   0.9122884   1.447239
6 months    COHORTS          GUATEMALA                      Medium               High              1.2773752   1.0142055   1.608833
6 months    COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    COHORTS          INDIA                          Low                  High              1.7728700   1.3428631   2.340572
6 months    COHORTS          INDIA                          Medium               High              1.3621423   0.9950560   1.864650
6 months    COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6 months    COHORTS          PHILIPPINES                    Low                  High              1.1924470   0.9611475   1.479408
6 months    COHORTS          PHILIPPINES                    Medium               High              1.0753458   0.8716034   1.326714
6 months    GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
6 months    GMS-Nepal        NEPAL                          Low                  High              1.5990811   0.9669995   2.644325
6 months    GMS-Nepal        NEPAL                          Medium               High              1.5407277   0.8983085   2.642569
6 months    JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    JiVitA-3         BANGLADESH                     Low                  High              1.1700901   1.0494006   1.304660
6 months    JiVitA-3         BANGLADESH                     Medium               High              1.0854596   0.9732068   1.210660
6 months    JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    JiVitA-4         BANGLADESH                     Low                  High              1.5111532   1.1759809   1.941855
6 months    JiVitA-4         BANGLADESH                     Medium               High              1.3621086   1.0622615   1.746594
6 months    LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
6 months    LCNI-5           MALAWI                         Low                  High              1.0032499   0.8020185   1.254971
6 months    LCNI-5           MALAWI                         Medium               High              1.0525382   0.8434016   1.313534
6 months    MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    MAL-ED           BANGLADESH                     Low                  High              1.3888889   0.4853720   3.974297
6 months    MAL-ED           BANGLADESH                     Medium               High              1.2681159   0.4581439   3.510072
6 months    MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    MAL-ED           INDIA                          Low                  High              1.3271605   0.5221427   3.373321
6 months    MAL-ED           INDIA                          Medium               High              0.8739837   0.2877246   2.654787
6 months    MAL-ED           PERU                           High                 High              1.0000000   1.0000000   1.000000
6 months    MAL-ED           PERU                           Low                  High              1.1826560   0.6501193   2.151413
6 months    MAL-ED           PERU                           Medium               High              0.7816791   0.3924987   1.556750
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              0.9407407   0.5024418   1.761384
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              1.9805068   1.0589422   3.704080
6 months    NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    NIH-Crypto       BANGLADESH                     Low                  High              1.2339390   0.9004927   1.690858
6 months    NIH-Crypto       BANGLADESH                     Medium               High              1.2437179   0.9033529   1.712326
6 months    PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
6 months    PROBIT           BELARUS                        Low                  High              1.6251781   1.1532326   2.290261
6 months    PROBIT           BELARUS                        Medium               High              1.4058321   1.0273249   1.923796
6 months    PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    PROVIDE          BANGLADESH                     Low                  High              2.1168515   1.3360314   3.354008
6 months    PROVIDE          BANGLADESH                     Medium               High              1.3948016   0.8307275   2.341889
6 months    SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed     INDIA                          Low                  High              1.0696001   0.8573356   1.334418
6 months    SAS-CompFeed     INDIA                          Medium               High              0.9118022   0.6633172   1.253372
6 months    SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    SAS-FoodSuppl    INDIA                          Low                  High              1.3632458   0.9768154   1.902549
6 months    SAS-FoodSuppl    INDIA                          Medium               High              1.3985425   1.0098997   1.936748
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.5652592   1.0423950   2.350391
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2995417   0.8298901   2.034979
6 months    ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6 months    ZVITAMBO         ZIMBABWE                       Low                  High              1.2158789   0.9536459   1.550221
6 months    ZVITAMBO         ZIMBABWE                       Medium               High              0.9290611   0.7487865   1.152738
24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
24 months   COHORTS          GUATEMALA                      Low                  High              1.0247285   0.9424841   1.114150
24 months   COHORTS          GUATEMALA                      Medium               High              1.0192118   0.9338651   1.112359
24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
24 months   COHORTS          INDIA                          Low                  High              1.5066468   1.3442732   1.688633
24 months   COHORTS          INDIA                          Medium               High              1.2252126   1.0693316   1.403817
24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
24 months   COHORTS          PHILIPPINES                    Low                  High              1.2680211   1.1651191   1.380011
24 months   COHORTS          PHILIPPINES                    Medium               High              1.1301139   1.0361660   1.232580
24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
24 months   GMS-Nepal        NEPAL                          Low                  High              1.1724494   0.8913436   1.542208
24 months   GMS-Nepal        NEPAL                          Medium               High              1.3618996   1.0208932   1.816812
24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   JiVitA-3         BANGLADESH                     Low                  High              1.0195723   0.9278210   1.120397
24 months   JiVitA-3         BANGLADESH                     Medium               High              1.0000111   0.9031984   1.107201
24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   JiVitA-4         BANGLADESH                     Low                  High              1.2226953   1.0653091   1.403333
24 months   JiVitA-4         BANGLADESH                     Medium               High              1.1837223   1.0372837   1.350834
24 months   LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
24 months   LCNI-5           MALAWI                         Low                  High              0.8515992   0.6772768   1.070790
24 months   LCNI-5           MALAWI                         Medium               High              0.9765558   0.7837494   1.216794
24 months   MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   MAL-ED           BANGLADESH                     Low                  High              1.1472297   0.6333557   2.078036
24 months   MAL-ED           BANGLADESH                     Medium               High              1.5248663   0.8995787   2.584785
24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.000000
24 months   MAL-ED           INDIA                          Low                  High              1.5144256   0.8660949   2.648076
24 months   MAL-ED           INDIA                          Medium               High              1.6769788   0.9486301   2.964546
24 months   MAL-ED           NEPAL                          High                 High              1.0000000   1.0000000   1.000000
24 months   MAL-ED           NEPAL                          Low                  High              1.4074074   0.5556613   3.564754
24 months   MAL-ED           NEPAL                          Medium               High              1.4615385   0.5787559   3.690839
24 months   MAL-ED           PERU                           High                 High              1.0000000   1.0000000   1.000000
24 months   MAL-ED           PERU                           Low                  High              1.1367603   0.7251533   1.782001
24 months   MAL-ED           PERU                           Medium               High              0.9512569   0.5746467   1.574689
24 months   MAL-ED           SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
24 months   MAL-ED           SOUTH AFRICA                   Low                  High              0.9242810   0.4881398   1.750104
24 months   MAL-ED           SOUTH AFRICA                   Medium               High              1.5169256   0.8141831   2.826223
24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   NIH-Crypto       BANGLADESH                     Low                  High              1.8818648   1.2899593   2.745370
24 months   NIH-Crypto       BANGLADESH                     Medium               High              1.4969695   0.9815975   2.282929
24 months   PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
24 months   PROBIT           BELARUS                        Low                  High              1.5369847   0.8171259   2.891014
24 months   PROBIT           BELARUS                        Medium               High              1.3543920   0.6427108   2.854126
24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   PROVIDE          BANGLADESH                     Low                  High              2.4346806   1.7555363   3.376558
24 months   PROVIDE          BANGLADESH                     Medium               High              1.9592800   1.3825918   2.776509
24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.5376592   1.0709338   2.207789
24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.2035504   0.8511070   1.701941


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      High                 NA                 0.0016370   -0.0315661   0.0348400
Birth       COHORTS          INDIA                          High                 NA                 0.0042245   -0.0153051   0.0237541
Birth       COHORTS          PHILIPPINES                    High                 NA                 0.0159516    0.0038875   0.0280157
Birth       GMS-Nepal        NEPAL                          High                 NA                -0.0071705   -0.0291360   0.0147950
Birth       JiVitA-3         BANGLADESH                     High                 NA                 0.0011864   -0.0072355   0.0096082
Birth       JiVitA-4         BANGLADESH                     High                 NA                -0.0125341   -0.0336815   0.0086132
Birth       MAL-ED           BANGLADESH                     High                 NA                 0.0313376   -0.0580281   0.1207034
Birth       NIH-Crypto       BANGLADESH                     High                 NA                 0.0178515   -0.0108925   0.0465954
Birth       PROBIT           BELARUS                        High                 NA                -0.0004558   -0.0040331   0.0031216
Birth       PROVIDE          BANGLADESH                     High                 NA                -0.0034540   -0.0393273   0.0324193
Birth       SAS-CompFeed     INDIA                          High                 NA                 0.0080881   -0.0105397   0.0267158
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.0002919   -0.0078920   0.0073083
6 months    COHORTS          GUATEMALA                      High                 NA                 0.0670384    0.0045131   0.1295636
6 months    COHORTS          INDIA                          High                 NA                 0.0483222    0.0237948   0.0728495
6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0155411   -0.0142387   0.0453210
6 months    GMS-Nepal        NEPAL                          High                 NA                 0.0590056   -0.0065711   0.1245822
6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0222770    0.0011271   0.0434269
6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0640770    0.0238811   0.1042730
6 months    LCNI-5           MALAWI                         High                 NA                 0.0043092   -0.0449834   0.0536018
6 months    MAL-ED           BANGLADESH                     High                 NA                 0.0239394   -0.0508616   0.0987403
6 months    MAL-ED           INDIA                          High                 NA                 0.0126390   -0.0750471   0.1003252
6 months    MAL-ED           PERU                           High                 NA                -0.0010574   -0.0571346   0.0550198
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0162573   -0.0289964   0.0615110
6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0283854   -0.0054953   0.0622661
6 months    PROBIT           BELARUS                        High                 NA                 0.0119981    0.0039639   0.0200322
6 months    PROVIDE          BANGLADESH                     High                 NA                 0.0526127    0.0155612   0.0896642
6 months    SAS-CompFeed     INDIA                          High                 NA                 0.0002924   -0.0421292   0.0427141
6 months    SAS-FoodSuppl    INDIA                          High                 NA                 0.0934808    0.0115742   0.1753873
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0267184    0.0024226   0.0510141
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0057915   -0.0396205   0.0280375
24 months   COHORTS          GUATEMALA                      High                 NA                 0.0136679   -0.0386645   0.0660002
24 months   COHORTS          INDIA                          High                 NA                 0.0969460    0.0629813   0.1309106
24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0592950    0.0261254   0.0924645
24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0688046   -0.0126404   0.1502496
24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0013468   -0.0395393   0.0422330
24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0425028    0.0030736   0.0819321
24 months   LCNI-5           MALAWI                         High                 NA                -0.0294560   -0.0909907   0.0320787
24 months   MAL-ED           BANGLADESH                     High                 NA                 0.0848060   -0.0355732   0.2051851
24 months   MAL-ED           INDIA                          High                 NA                 0.1172838   -0.0061978   0.2407653
24 months   MAL-ED           NEPAL                          High                 NA                 0.0465587   -0.0539837   0.1471012
24 months   MAL-ED           PERU                           High                 NA                 0.0021312   -0.0819927   0.0862550
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.0468110   -0.0708143   0.1644363
24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0727060    0.0242081   0.1212040
24 months   PROBIT           BELARUS                        High                 NA                 0.0165778   -0.0187789   0.0519345
24 months   PROVIDE          BANGLADESH                     High                 NA                 0.1465864    0.0985300   0.1946429
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0699328   -0.0187911   0.1586568


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      High                 NA                 0.0274194   -0.7228537   0.4509614
Birth       COHORTS          INDIA                          High                 NA                 0.0443405   -0.1841735   0.2287574
Birth       COHORTS          PHILIPPINES                    High                 NA                 0.2649070    0.0406848   0.4367214
Birth       GMS-Nepal        NEPAL                          High                 NA                -0.0407895   -0.1738239   0.0771676
Birth       JiVitA-3         BANGLADESH                     High                 NA                 0.0036179   -0.0223989   0.0289726
Birth       JiVitA-4         BANGLADESH                     High                 NA                -0.0412783   -0.1135325   0.0262875
Birth       MAL-ED           BANGLADESH                     High                 NA                 0.1554828   -0.4245093   0.4993299
Birth       NIH-Crypto       BANGLADESH                     High                 NA                 0.1293789   -0.1038419   0.3133246
Birth       PROBIT           BELARUS                        High                 NA                -0.1853945   -2.9796979   0.6469179
Birth       PROVIDE          BANGLADESH                     High                 NA                -0.0387858   -0.5307422   0.2950635
Birth       SAS-CompFeed     INDIA                          High                 NA                 0.0290287   -0.0417070   0.0949613
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.0028391   -0.0795607   0.0684302
6 months    COHORTS          GUATEMALA                      High                 NA                 0.1651300   -0.0042920   0.3059708
6 months    COHORTS          INDIA                          High                 NA                 0.2788591    0.1262865   0.4047887
6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0735193   -0.0785852   0.2041737
6 months    GMS-Nepal        NEPAL                          High                 NA                 0.2722962   -0.1000929   0.5186290
6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0893960    0.0005492   0.1703446
6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.2559260    0.0762946   0.4006249
6 months    LCNI-5           MALAWI                         High                 NA                 0.0118612   -0.1335554   0.1386232
6 months    MAL-ED           BANGLADESH                     High                 NA                 0.1663158   -0.5487082   0.5512199
6 months    MAL-ED           INDIA                          High                 NA                 0.0830565   -0.7177637   0.5105349
6 months    MAL-ED           PERU                           High                 NA                -0.0051491   -0.3189160   0.2339733
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0710373   -0.1488645   0.2488482
6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.1353037   -0.0409237   0.2816959
6 months    PROBIT           BELARUS                        High                 NA                 0.3157278    0.0919743   0.4843445
6 months    PROVIDE          BANGLADESH                     High                 NA                 0.3310218    0.0623154   0.5227267
6 months    SAS-CompFeed     INDIA                          High                 NA                 0.0010313   -0.1603265   0.1399502
6 months    SAS-FoodSuppl    INDIA                          High                 NA                 0.2179307    0.0008942   0.3878201
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2765010   -0.0205299   0.4870794
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0359473   -0.2687149   0.1541151
24 months   COHORTS          GUATEMALA                      High                 NA                 0.0169059   -0.0500083   0.0795558
24 months   COHORTS          INDIA                          High                 NA                 0.1812811    0.1146741   0.2428768
24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0944312    0.0398800   0.1458830
24 months   GMS-Nepal        NEPAL                          High                 NA                 0.1530038   -0.0485739   0.3158302
24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0027551   -0.0844894   0.0829810
24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.1060046    0.0021595   0.1990425
24 months   LCNI-5           MALAWI                         High                 NA                -0.0670095   -0.2166836   0.0642520
24 months   MAL-ED           BANGLADESH                     High                 NA                 0.2024958   -0.1440331   0.4440608
24 months   MAL-ED           INDIA                          High                 NA                 0.2764546   -0.0842774   0.5171734
24 months   MAL-ED           NEPAL                          High                 NA                 0.2017544   -0.3717774   0.5354960
24 months   MAL-ED           PERU                           High                 NA                 0.0055479   -0.2394685   0.2021297
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.1252883   -0.2499330   0.3878707
24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.2831129    0.0732179   0.4454715
24 months   PROBIT           BELARUS                        High                 NA                 0.2475918   -0.4608818   0.6124819
24 months   PROVIDE          BANGLADESH                     High                 NA                 0.4459313    0.2860360   0.5700173
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.2052909   -0.1031238   0.4274781
