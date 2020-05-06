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

agecat      studyid          country                        feducyrs    stunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------  --------  -------  ------  -----------------
Birth       COHORTS          GUATEMALA                      High              0      146     804  stunted          
Birth       COHORTS          GUATEMALA                      High              1        9     804  stunted          
Birth       COHORTS          GUATEMALA                      Low               0      330     804  stunted          
Birth       COHORTS          GUATEMALA                      Low               1       25     804  stunted          
Birth       COHORTS          GUATEMALA                      Medium            0      280     804  stunted          
Birth       COHORTS          GUATEMALA                      Medium            1       14     804  stunted          
Birth       COHORTS          INDIA                          High              0      479    1354  stunted          
Birth       COHORTS          INDIA                          High              1       48    1354  stunted          
Birth       COHORTS          INDIA                          Low               0      392    1354  stunted          
Birth       COHORTS          INDIA                          Low               1       47    1354  stunted          
Birth       COHORTS          INDIA                          Medium            0      354    1354  stunted          
Birth       COHORTS          INDIA                          Medium            1       34    1354  stunted          
Birth       COHORTS          PHILIPPINES                    High              0      990    2873  stunted          
Birth       COHORTS          PHILIPPINES                    High              1       37    2873  stunted          
Birth       COHORTS          PHILIPPINES                    Low               0      758    2873  stunted          
Birth       COHORTS          PHILIPPINES                    Low               1       69    2873  stunted          
Birth       COHORTS          PHILIPPINES                    Medium            0      952    2873  stunted          
Birth       COHORTS          PHILIPPINES                    Medium            1       67    2873  stunted          
Birth       GMS-Nepal        NEPAL                          High              0      147     694  stunted          
Birth       GMS-Nepal        NEPAL                          High              1       25     694  stunted          
Birth       GMS-Nepal        NEPAL                          Low               0      235     694  stunted          
Birth       GMS-Nepal        NEPAL                          Low               1       61     694  stunted          
Birth       GMS-Nepal        NEPAL                          Medium            0      190     694  stunted          
Birth       GMS-Nepal        NEPAL                          Medium            1       36     694  stunted          
Birth       JiVitA-3         BANGLADESH                     High              0     3509   21624  stunted          
Birth       JiVitA-3         BANGLADESH                     High              1     1217   21624  stunted          
Birth       JiVitA-3         BANGLADESH                     Low               0     6170   21624  stunted          
Birth       JiVitA-3         BANGLADESH                     Low               1     3298   21624  stunted          
Birth       JiVitA-3         BANGLADESH                     Medium            0     4854   21624  stunted          
Birth       JiVitA-3         BANGLADESH                     Medium            1     2576   21624  stunted          
Birth       JiVitA-4         BANGLADESH                     High              0      427    2740  stunted          
Birth       JiVitA-4         BANGLADESH                     High              1      155    2740  stunted          
Birth       JiVitA-4         BANGLADESH                     Low               0      753    2740  stunted          
Birth       JiVitA-4         BANGLADESH                     Low               1      349    2740  stunted          
Birth       JiVitA-4         BANGLADESH                     Medium            0      728    2740  stunted          
Birth       JiVitA-4         BANGLADESH                     Medium            1      328    2740  stunted          
Birth       MAL-ED           BANGLADESH                     High              0       39     129  stunted          
Birth       MAL-ED           BANGLADESH                     High              1        8     129  stunted          
Birth       MAL-ED           BANGLADESH                     Low               0       28     129  stunted          
Birth       MAL-ED           BANGLADESH                     Low               1        8     129  stunted          
Birth       MAL-ED           BANGLADESH                     Medium            0       36     129  stunted          
Birth       MAL-ED           BANGLADESH                     Medium            1       10     129  stunted          
Birth       MAL-ED           INDIA                          High              0        6      24  stunted          
Birth       MAL-ED           INDIA                          High              1        1      24  stunted          
Birth       MAL-ED           INDIA                          Low               0       13      24  stunted          
Birth       MAL-ED           INDIA                          Low               1        1      24  stunted          
Birth       MAL-ED           INDIA                          Medium            0        3      24  stunted          
Birth       MAL-ED           INDIA                          Medium            1        0      24  stunted          
Birth       MAL-ED           NEPAL                          High              0        2      10  stunted          
Birth       MAL-ED           NEPAL                          High              1        1      10  stunted          
Birth       MAL-ED           NEPAL                          Low               0        3      10  stunted          
Birth       MAL-ED           NEPAL                          Low               1        1      10  stunted          
Birth       MAL-ED           NEPAL                          Medium            0        3      10  stunted          
Birth       MAL-ED           NEPAL                          Medium            1        0      10  stunted          
Birth       MAL-ED           PERU                           High              0       79     194  stunted          
Birth       MAL-ED           PERU                           High              1        7     194  stunted          
Birth       MAL-ED           PERU                           Low               0       47     194  stunted          
Birth       MAL-ED           PERU                           Low               1       11     194  stunted          
Birth       MAL-ED           PERU                           Medium            0       47     194  stunted          
Birth       MAL-ED           PERU                           Medium            1        3     194  stunted          
Birth       MAL-ED           SOUTH AFRICA                   High              0       10      33  stunted          
Birth       MAL-ED           SOUTH AFRICA                   High              1        0      33  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Low               0       14      33  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Low               1        0      33  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Medium            0        8      33  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Medium            1        1      33  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0       58     103  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1        8     103  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       21     103  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1        6     103  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0        6     103  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1        4     103  stunted          
Birth       NIH-Crypto       BANGLADESH                     High              0      252     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     High              1       32     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     Low               0      207     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     Low               1       28     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     Medium            0      172     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     Medium            1       41     732  stunted          
Birth       PROBIT           BELARUS                        High              0     2053   13424  stunted          
Birth       PROBIT           BELARUS                        High              1        6   13424  stunted          
Birth       PROBIT           BELARUS                        Low               0     5309   13424  stunted          
Birth       PROBIT           BELARUS                        Low               1       11   13424  stunted          
Birth       PROBIT           BELARUS                        Medium            0     6029   13424  stunted          
Birth       PROBIT           BELARUS                        Medium            1       16   13424  stunted          
Birth       PROVIDE          BANGLADESH                     High              0      144     539  stunted          
Birth       PROVIDE          BANGLADESH                     High              1       19     539  stunted          
Birth       PROVIDE          BANGLADESH                     Low               0      168     539  stunted          
Birth       PROVIDE          BANGLADESH                     Low               1       19     539  stunted          
Birth       PROVIDE          BANGLADESH                     Medium            0      179     539  stunted          
Birth       PROVIDE          BANGLADESH                     Medium            1       10     539  stunted          
Birth       SAS-CompFeed     INDIA                          High              0      230    1249  stunted          
Birth       SAS-CompFeed     INDIA                          High              1       69    1249  stunted          
Birth       SAS-CompFeed     INDIA                          Low               0      380    1249  stunted          
Birth       SAS-CompFeed     INDIA                          Low               1      163    1249  stunted          
Birth       SAS-CompFeed     INDIA                          Medium            0      291    1249  stunted          
Birth       SAS-CompFeed     INDIA                          Medium            1      116    1249  stunted          
Birth       ZVITAMBO         ZIMBABWE                       High              0      885   13501  stunted          
Birth       ZVITAMBO         ZIMBABWE                       High              1       97   13501  stunted          
Birth       ZVITAMBO         ZIMBABWE                       Low               0     2019   13501  stunted          
Birth       ZVITAMBO         ZIMBABWE                       Low               1      262   13501  stunted          
Birth       ZVITAMBO         ZIMBABWE                       Medium            0     9209   13501  stunted          
Birth       ZVITAMBO         ZIMBABWE                       Medium            1     1029   13501  stunted          
6 months    COHORTS          GUATEMALA                      High              0       99     904  stunted          
6 months    COHORTS          GUATEMALA                      High              1       66     904  stunted          
6 months    COHORTS          GUATEMALA                      Low               0      239     904  stunted          
6 months    COHORTS          GUATEMALA                      Low               1      167     904  stunted          
6 months    COHORTS          GUATEMALA                      Medium            0      199     904  stunted          
6 months    COHORTS          GUATEMALA                      Medium            1      134     904  stunted          
6 months    COHORTS          INDIA                          High              0      484    1385  stunted          
6 months    COHORTS          INDIA                          High              1       60    1385  stunted          
6 months    COHORTS          INDIA                          Low               0      334    1385  stunted          
6 months    COHORTS          INDIA                          Low               1      116    1385  stunted          
6 months    COHORTS          INDIA                          Medium            0      327    1385  stunted          
6 months    COHORTS          INDIA                          Medium            1       64    1385  stunted          
6 months    COHORTS          PHILIPPINES                    High              0      753    2564  stunted          
6 months    COHORTS          PHILIPPINES                    High              1      138    2564  stunted          
6 months    COHORTS          PHILIPPINES                    Low               0      544    2564  stunted          
6 months    COHORTS          PHILIPPINES                    Low               1      202    2564  stunted          
6 months    COHORTS          PHILIPPINES                    Medium            0      725    2564  stunted          
6 months    COHORTS          PHILIPPINES                    Medium            1      202    2564  stunted          
6 months    GMS-Nepal        NEPAL                          High              0      116     563  stunted          
6 months    GMS-Nepal        NEPAL                          High              1       21     563  stunted          
6 months    GMS-Nepal        NEPAL                          Low               0      183     563  stunted          
6 months    GMS-Nepal        NEPAL                          Low               1       60     563  stunted          
6 months    GMS-Nepal        NEPAL                          Medium            0      142     563  stunted          
6 months    GMS-Nepal        NEPAL                          Medium            1       41     563  stunted          
6 months    JiVitA-3         BANGLADESH                     High              0     3546   16132  stunted          
6 months    JiVitA-3         BANGLADESH                     High              1      733   16132  stunted          
6 months    JiVitA-3         BANGLADESH                     Low               0     4490   16132  stunted          
6 months    JiVitA-3         BANGLADESH                     Low               1     1814   16132  stunted          
6 months    JiVitA-3         BANGLADESH                     Medium            0     4076   16132  stunted          
6 months    JiVitA-3         BANGLADESH                     Medium            1     1473   16132  stunted          
6 months    JiVitA-4         BANGLADESH                     High              0      909    4689  stunted          
6 months    JiVitA-4         BANGLADESH                     High              1      190    4689  stunted          
6 months    JiVitA-4         BANGLADESH                     Low               0     1205    4689  stunted          
6 months    JiVitA-4         BANGLADESH                     Low               1      520    4689  stunted          
6 months    JiVitA-4         BANGLADESH                     Medium            0     1401    4689  stunted          
6 months    JiVitA-4         BANGLADESH                     Medium            1      464    4689  stunted          
6 months    LCNI-5           MALAWI                         High              0      166     812  stunted          
6 months    LCNI-5           MALAWI                         High              1       85     812  stunted          
6 months    LCNI-5           MALAWI                         Low               0      183     812  stunted          
6 months    LCNI-5           MALAWI                         Low               1      107     812  stunted          
6 months    LCNI-5           MALAWI                         Medium            0      168     812  stunted          
6 months    LCNI-5           MALAWI                         Medium            1      103     812  stunted          
6 months    MAL-ED           BANGLADESH                     High              0       44     132  stunted          
6 months    MAL-ED           BANGLADESH                     High              1        6     132  stunted          
6 months    MAL-ED           BANGLADESH                     Low               0       30     132  stunted          
6 months    MAL-ED           BANGLADESH                     Low               1        6     132  stunted          
6 months    MAL-ED           BANGLADESH                     Medium            0       39     132  stunted          
6 months    MAL-ED           BANGLADESH                     Medium            1        7     132  stunted          
6 months    MAL-ED           INDIA                          High              0       37     138  stunted          
6 months    MAL-ED           INDIA                          High              1        6     138  stunted          
6 months    MAL-ED           INDIA                          Low               0       44     138  stunted          
6 months    MAL-ED           INDIA                          Low               1       10     138  stunted          
6 months    MAL-ED           INDIA                          Medium            0       36     138  stunted          
6 months    MAL-ED           INDIA                          Medium            1        5     138  stunted          
6 months    MAL-ED           NEPAL                          High              0       40      95  stunted          
6 months    MAL-ED           NEPAL                          High              1        0      95  stunted          
6 months    MAL-ED           NEPAL                          Low               0       26      95  stunted          
6 months    MAL-ED           NEPAL                          Low               1        1      95  stunted          
6 months    MAL-ED           NEPAL                          Medium            0       24      95  stunted          
6 months    MAL-ED           NEPAL                          Medium            1        4      95  stunted          
6 months    MAL-ED           PERU                           High              0       85     224  stunted          
6 months    MAL-ED           PERU                           High              1       22     224  stunted          
6 months    MAL-ED           PERU                           Low               0       46     224  stunted          
6 months    MAL-ED           PERU                           Low               1       14     224  stunted          
6 months    MAL-ED           PERU                           Medium            0       47     224  stunted          
6 months    MAL-ED           PERU                           Medium            1       10     224  stunted          
6 months    MAL-ED           SOUTH AFRICA                   High              0       29      92  stunted          
6 months    MAL-ED           SOUTH AFRICA                   High              1        4      92  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Low               0       30      92  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Low               1        5      92  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Medium            0       20      92  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Medium            1        4      92  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0      100     201  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1       27     201  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       44     201  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1       11     201  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0       11     201  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1        8     201  stunted          
6 months    NIH-Crypto       BANGLADESH                     High              0      235     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     High              1       44     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     Low               0      172     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     Low               1       51     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     Medium            0      158     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     Medium            1       55     715  stunted          
6 months    PROBIT           BELARUS                        High              0     2453   15210  stunted          
6 months    PROBIT           BELARUS                        High              1       60   15210  stunted          
6 months    PROBIT           BELARUS                        Low               0     5668   15210  stunted          
6 months    PROBIT           BELARUS                        Low               1      293   15210  stunted          
6 months    PROBIT           BELARUS                        Medium            0     6511   15210  stunted          
6 months    PROBIT           BELARUS                        Medium            1      225   15210  stunted          
6 months    PROVIDE          BANGLADESH                     High              0      188     604  stunted          
6 months    PROVIDE          BANGLADESH                     High              1       21     604  stunted          
6 months    PROVIDE          BANGLADESH                     Low               0      162     604  stunted          
6 months    PROVIDE          BANGLADESH                     Low               1       47     604  stunted          
6 months    PROVIDE          BANGLADESH                     Medium            0      158     604  stunted          
6 months    PROVIDE          BANGLADESH                     Medium            1       28     604  stunted          
6 months    SAS-CompFeed     INDIA                          High              0      273    1333  stunted          
6 months    SAS-CompFeed     INDIA                          High              1       75    1333  stunted          
6 months    SAS-CompFeed     INDIA                          Low               0      356    1333  stunted          
6 months    SAS-CompFeed     INDIA                          Low               1      194    1333  stunted          
6 months    SAS-CompFeed     INDIA                          Medium            0      326    1333  stunted          
6 months    SAS-CompFeed     INDIA                          Medium            1      109    1333  stunted          
6 months    SAS-FoodSuppl    INDIA                          High              0       67     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          High              1       34     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          Low               0       72     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          Low               1       60     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          Medium            0       78     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          Medium            1       69     380  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      346    2018  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1       25    2018  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0      963    2018  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1      120    2018  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0      514    2018  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1       50    2018  stunted          
6 months    ZVITAMBO         ZIMBABWE                       High              0      504    8429  stunted          
6 months    ZVITAMBO         ZIMBABWE                       High              1       82    8429  stunted          
6 months    ZVITAMBO         ZIMBABWE                       Low               0     1157    8429  stunted          
6 months    ZVITAMBO         ZIMBABWE                       Low               1      302    8429  stunted          
6 months    ZVITAMBO         ZIMBABWE                       Medium            0     5410    8429  stunted          
6 months    ZVITAMBO         ZIMBABWE                       Medium            1      974    8429  stunted          
24 months   COHORTS          GUATEMALA                      High              0       33     992  stunted          
24 months   COHORTS          GUATEMALA                      High              1      144     992  stunted          
24 months   COHORTS          GUATEMALA                      Low               0       84     992  stunted          
24 months   COHORTS          GUATEMALA                      Low               1      378     992  stunted          
24 months   COHORTS          GUATEMALA                      Medium            0       73     992  stunted          
24 months   COHORTS          GUATEMALA                      Medium            1      280     992  stunted          
24 months   COHORTS          INDIA                          High              0      339    1380  stunted          
24 months   COHORTS          INDIA                          High              1      200    1380  stunted          
24 months   COHORTS          INDIA                          Low               0      124    1380  stunted          
24 months   COHORTS          INDIA                          Low               1      326    1380  stunted          
24 months   COHORTS          INDIA                          Medium            0      179    1380  stunted          
24 months   COHORTS          INDIA                          Medium            1      212    1380  stunted          
24 months   COHORTS          PHILIPPINES                    High              0      421    2314  stunted          
24 months   COHORTS          PHILIPPINES                    High              1      377    2314  stunted          
24 months   COHORTS          PHILIPPINES                    Low               0      159    2314  stunted          
24 months   COHORTS          PHILIPPINES                    Low               1      533    2314  stunted          
24 months   COHORTS          PHILIPPINES                    Medium            0      281    2314  stunted          
24 months   COHORTS          PHILIPPINES                    Medium            1      543    2314  stunted          
24 months   GMS-Nepal        NEPAL                          High              0       75     487  stunted          
24 months   GMS-Nepal        NEPAL                          High              1       38     487  stunted          
24 months   GMS-Nepal        NEPAL                          Low               0      117     487  stunted          
24 months   GMS-Nepal        NEPAL                          Low               1      102     487  stunted          
24 months   GMS-Nepal        NEPAL                          Medium            0       76     487  stunted          
24 months   GMS-Nepal        NEPAL                          Medium            1       79     487  stunted          
24 months   JiVitA-3         BANGLADESH                     High              0     1317    8293  stunted          
24 months   JiVitA-3         BANGLADESH                     High              1      753    8293  stunted          
24 months   JiVitA-3         BANGLADESH                     Low               0     1513    8293  stunted          
24 months   JiVitA-3         BANGLADESH                     Low               1     1866    8293  stunted          
24 months   JiVitA-3         BANGLADESH                     Medium            0     1409    8293  stunted          
24 months   JiVitA-3         BANGLADESH                     Medium            1     1435    8293  stunted          
24 months   JiVitA-4         BANGLADESH                     High              0      772    4619  stunted          
24 months   JiVitA-4         BANGLADESH                     High              1      324    4619  stunted          
24 months   JiVitA-4         BANGLADESH                     Low               0      925    4619  stunted          
24 months   JiVitA-4         BANGLADESH                     Low               1      778    4619  stunted          
24 months   JiVitA-4         BANGLADESH                     Medium            0     1070    4619  stunted          
24 months   JiVitA-4         BANGLADESH                     Medium            1      750    4619  stunted          
24 months   LCNI-5           MALAWI                         High              0       94     571  stunted          
24 months   LCNI-5           MALAWI                         High              1       79     571  stunted          
24 months   LCNI-5           MALAWI                         Low               0      122     571  stunted          
24 months   LCNI-5           MALAWI                         Low               1       81     571  stunted          
24 months   LCNI-5           MALAWI                         Medium            0      104     571  stunted          
24 months   LCNI-5           MALAWI                         Medium            1       91     571  stunted          
24 months   MAL-ED           BANGLADESH                     High              0       28     117  stunted          
24 months   MAL-ED           BANGLADESH                     High              1       12     117  stunted          
24 months   MAL-ED           BANGLADESH                     Low               0       20     117  stunted          
24 months   MAL-ED           BANGLADESH                     Low               1       15     117  stunted          
24 months   MAL-ED           BANGLADESH                     Medium            0       20     117  stunted          
24 months   MAL-ED           BANGLADESH                     Medium            1       22     117  stunted          
24 months   MAL-ED           INDIA                          High              0       29     132  stunted          
24 months   MAL-ED           INDIA                          High              1       13     132  stunted          
24 months   MAL-ED           INDIA                          Low               0       28     132  stunted          
24 months   MAL-ED           INDIA                          Low               1       23     132  stunted          
24 months   MAL-ED           INDIA                          Medium            0       19     132  stunted          
24 months   MAL-ED           INDIA                          Medium            1       20     132  stunted          
24 months   MAL-ED           NEPAL                          High              0       31      91  stunted          
24 months   MAL-ED           NEPAL                          High              1        7      91  stunted          
24 months   MAL-ED           NEPAL                          Low               0       20      91  stunted          
24 months   MAL-ED           NEPAL                          Low               1        7      91  stunted          
24 months   MAL-ED           NEPAL                          Medium            0       19      91  stunted          
24 months   MAL-ED           NEPAL                          Medium            1        7      91  stunted          
24 months   MAL-ED           PERU                           High              0       47     164  stunted          
24 months   MAL-ED           PERU                           High              1       30     164  stunted          
24 months   MAL-ED           PERU                           Low               0       26     164  stunted          
24 months   MAL-ED           PERU                           Low               1       18     164  stunted          
24 months   MAL-ED           PERU                           Medium            0       28     164  stunted          
24 months   MAL-ED           PERU                           Medium            1       15     164  stunted          
24 months   MAL-ED           SOUTH AFRICA                   High              0       23      91  stunted          
24 months   MAL-ED           SOUTH AFRICA                   High              1       11      91  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Low               0       23      91  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Low               1       11      91  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Medium            0       11      91  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Medium            1       12      91  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0       37     177  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1       77     177  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       11     177  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1       36     177  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0        4     177  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1       12     177  stunted          
24 months   NIH-Crypto       BANGLADESH                     High              0      179     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     High              1       32     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     Low               0       91     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     Low               1       53     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     Medium            0      112     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     Medium            1       47     514  stunted          
24 months   PROBIT           BELARUS                        High              0      599    3913  stunted          
24 months   PROBIT           BELARUS                        High              1       28    3913  stunted          
24 months   PROBIT           BELARUS                        Low               0     1394    3913  stunted          
24 months   PROBIT           BELARUS                        Low               1      122    3913  stunted          
24 months   PROBIT           BELARUS                        Medium            0     1658    3913  stunted          
24 months   PROBIT           BELARUS                        Medium            1      112    3913  stunted          
24 months   PROVIDE          BANGLADESH                     High              0      169     578  stunted          
24 months   PROVIDE          BANGLADESH                     High              1       33     578  stunted          
24 months   PROVIDE          BANGLADESH                     Low               0      107     578  stunted          
24 months   PROVIDE          BANGLADESH                     Low               1       90     578  stunted          
24 months   PROVIDE          BANGLADESH                     Medium            0      112     578  stunted          
24 months   PROVIDE          BANGLADESH                     Medium            1       67     578  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0        5       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        0       6  stunted          
24 months   ZVITAMBO         ZIMBABWE                       High              0       69    1594  stunted          
24 months   ZVITAMBO         ZIMBABWE                       High              1       27    1594  stunted          
24 months   ZVITAMBO         ZIMBABWE                       Low               0      170    1594  stunted          
24 months   ZVITAMBO         ZIMBABWE                       Low               1      128    1594  stunted          
24 months   ZVITAMBO         ZIMBABWE                       Medium            0      812    1594  stunted          
24 months   ZVITAMBO         ZIMBABWE                       Medium            1      388    1594  stunted          


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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
