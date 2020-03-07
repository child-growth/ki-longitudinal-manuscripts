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

agecat      studyid          country                        feducyrs    sstunted   n_cell       n
----------  ---------------  -----------------------------  ---------  ---------  -------  ------
Birth       COHORTS          GUATEMALA                      High               0      152     804
Birth       COHORTS          GUATEMALA                      High               1        3     804
Birth       COHORTS          GUATEMALA                      Low                0      348     804
Birth       COHORTS          GUATEMALA                      Low                1        7     804
Birth       COHORTS          GUATEMALA                      Medium             0      293     804
Birth       COHORTS          GUATEMALA                      Medium             1        1     804
Birth       COHORTS          INDIA                          High               0      516    1354
Birth       COHORTS          INDIA                          High               1       11    1354
Birth       COHORTS          INDIA                          Low                0      431    1354
Birth       COHORTS          INDIA                          Low                1        8    1354
Birth       COHORTS          INDIA                          Medium             0      379    1354
Birth       COHORTS          INDIA                          Medium             1        9    1354
Birth       COHORTS          PHILIPPINES                    High               0     1020    2873
Birth       COHORTS          PHILIPPINES                    High               1        7    2873
Birth       COHORTS          PHILIPPINES                    Low                0      810    2873
Birth       COHORTS          PHILIPPINES                    Low                1       17    2873
Birth       COHORTS          PHILIPPINES                    Medium             0     1000    2873
Birth       COHORTS          PHILIPPINES                    Medium             1       19    2873
Birth       GMS-Nepal        NEPAL                          High               0      165     694
Birth       GMS-Nepal        NEPAL                          High               1        7     694
Birth       GMS-Nepal        NEPAL                          Low                0      278     694
Birth       GMS-Nepal        NEPAL                          Low                1       18     694
Birth       GMS-Nepal        NEPAL                          Medium             0      220     694
Birth       GMS-Nepal        NEPAL                          Medium             1        6     694
Birth       JiVitA-3         BANGLADESH                     High               0     4373   21624
Birth       JiVitA-3         BANGLADESH                     High               1      353   21624
Birth       JiVitA-3         BANGLADESH                     Low                0     8355   21624
Birth       JiVitA-3         BANGLADESH                     Low                1     1113   21624
Birth       JiVitA-3         BANGLADESH                     Medium             0     6565   21624
Birth       JiVitA-3         BANGLADESH                     Medium             1      865   21624
Birth       JiVitA-4         BANGLADESH                     High               0      543    2740
Birth       JiVitA-4         BANGLADESH                     High               1       39    2740
Birth       JiVitA-4         BANGLADESH                     Low                0      997    2740
Birth       JiVitA-4         BANGLADESH                     Low                1      105    2740
Birth       JiVitA-4         BANGLADESH                     Medium             0      971    2740
Birth       JiVitA-4         BANGLADESH                     Medium             1       85    2740
Birth       MAL-ED           BANGLADESH                     High               0       44     129
Birth       MAL-ED           BANGLADESH                     High               1        3     129
Birth       MAL-ED           BANGLADESH                     Low                0       35     129
Birth       MAL-ED           BANGLADESH                     Low                1        1     129
Birth       MAL-ED           BANGLADESH                     Medium             0       44     129
Birth       MAL-ED           BANGLADESH                     Medium             1        2     129
Birth       MAL-ED           INDIA                          High               0        7      24
Birth       MAL-ED           INDIA                          High               1        0      24
Birth       MAL-ED           INDIA                          Low                0       13      24
Birth       MAL-ED           INDIA                          Low                1        1      24
Birth       MAL-ED           INDIA                          Medium             0        3      24
Birth       MAL-ED           INDIA                          Medium             1        0      24
Birth       MAL-ED           NEPAL                          High               0        3      10
Birth       MAL-ED           NEPAL                          High               1        0      10
Birth       MAL-ED           NEPAL                          Low                0        3      10
Birth       MAL-ED           NEPAL                          Low                1        1      10
Birth       MAL-ED           NEPAL                          Medium             0        3      10
Birth       MAL-ED           NEPAL                          Medium             1        0      10
Birth       MAL-ED           PERU                           High               0       85     194
Birth       MAL-ED           PERU                           High               1        1     194
Birth       MAL-ED           PERU                           Low                0       57     194
Birth       MAL-ED           PERU                           Low                1        1     194
Birth       MAL-ED           PERU                           Medium             0       49     194
Birth       MAL-ED           PERU                           Medium             1        1     194
Birth       MAL-ED           SOUTH AFRICA                   High               0       10      33
Birth       MAL-ED           SOUTH AFRICA                   High               1        0      33
Birth       MAL-ED           SOUTH AFRICA                   Low                0       14      33
Birth       MAL-ED           SOUTH AFRICA                   Low                1        0      33
Birth       MAL-ED           SOUTH AFRICA                   Medium             0        9      33
Birth       MAL-ED           SOUTH AFRICA                   Medium             1        0      33
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               0       62     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               1        4     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                0       26     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                1        1     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             0        8     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             1        2     103
Birth       NIH-Crypto       BANGLADESH                     High               0      279     732
Birth       NIH-Crypto       BANGLADESH                     High               1        5     732
Birth       NIH-Crypto       BANGLADESH                     Low                0      235     732
Birth       NIH-Crypto       BANGLADESH                     Low                1        0     732
Birth       NIH-Crypto       BANGLADESH                     Medium             0      208     732
Birth       NIH-Crypto       BANGLADESH                     Medium             1        5     732
Birth       PROBIT           BELARUS                        High               0     2059   13424
Birth       PROBIT           BELARUS                        High               1        0   13424
Birth       PROBIT           BELARUS                        Low                0     5318   13424
Birth       PROBIT           BELARUS                        Low                1        2   13424
Birth       PROBIT           BELARUS                        Medium             0     6042   13424
Birth       PROBIT           BELARUS                        Medium             1        3   13424
Birth       PROVIDE          BANGLADESH                     High               0      162     539
Birth       PROVIDE          BANGLADESH                     High               1        1     539
Birth       PROVIDE          BANGLADESH                     Low                0      186     539
Birth       PROVIDE          BANGLADESH                     Low                1        1     539
Birth       PROVIDE          BANGLADESH                     Medium             0      187     539
Birth       PROVIDE          BANGLADESH                     Medium             1        2     539
Birth       SAS-CompFeed     INDIA                          High               0      278    1249
Birth       SAS-CompFeed     INDIA                          High               1       21    1249
Birth       SAS-CompFeed     INDIA                          Low                0      503    1249
Birth       SAS-CompFeed     INDIA                          Low                1       40    1249
Birth       SAS-CompFeed     INDIA                          Medium             0      378    1249
Birth       SAS-CompFeed     INDIA                          Medium             1       29    1249
Birth       ZVITAMBO         ZIMBABWE                       High               0      951   13501
Birth       ZVITAMBO         ZIMBABWE                       High               1       31   13501
Birth       ZVITAMBO         ZIMBABWE                       Low                0     2188   13501
Birth       ZVITAMBO         ZIMBABWE                       Low                1       93   13501
Birth       ZVITAMBO         ZIMBABWE                       Medium             0     9933   13501
Birth       ZVITAMBO         ZIMBABWE                       Medium             1      305   13501
6 months    COHORTS          GUATEMALA                      High               0      140     904
6 months    COHORTS          GUATEMALA                      High               1       25     904
6 months    COHORTS          GUATEMALA                      Low                0      352     904
6 months    COHORTS          GUATEMALA                      Low                1       54     904
6 months    COHORTS          GUATEMALA                      Medium             0      294     904
6 months    COHORTS          GUATEMALA                      Medium             1       39     904
6 months    COHORTS          INDIA                          High               0      533    1385
6 months    COHORTS          INDIA                          High               1       11    1385
6 months    COHORTS          INDIA                          Low                0      428    1385
6 months    COHORTS          INDIA                          Low                1       22    1385
6 months    COHORTS          INDIA                          Medium             0      380    1385
6 months    COHORTS          INDIA                          Medium             1       11    1385
6 months    COHORTS          PHILIPPINES                    High               0      862    2564
6 months    COHORTS          PHILIPPINES                    High               1       29    2564
6 months    COHORTS          PHILIPPINES                    Low                0      699    2564
6 months    COHORTS          PHILIPPINES                    Low                1       47    2564
6 months    COHORTS          PHILIPPINES                    Medium             0      879    2564
6 months    COHORTS          PHILIPPINES                    Medium             1       48    2564
6 months    GMS-Nepal        NEPAL                          High               0      135     563
6 months    GMS-Nepal        NEPAL                          High               1        2     563
6 months    GMS-Nepal        NEPAL                          Low                0      226     563
6 months    GMS-Nepal        NEPAL                          Low                1       17     563
6 months    GMS-Nepal        NEPAL                          Medium             0      181     563
6 months    GMS-Nepal        NEPAL                          Medium             1        2     563
6 months    JiVitA-3         BANGLADESH                     High               0     4131   16132
6 months    JiVitA-3         BANGLADESH                     High               1      148   16132
6 months    JiVitA-3         BANGLADESH                     Low                0     5855   16132
6 months    JiVitA-3         BANGLADESH                     Low                1      449   16132
6 months    JiVitA-3         BANGLADESH                     Medium             0     5188   16132
6 months    JiVitA-3         BANGLADESH                     Medium             1      361   16132
6 months    JiVitA-4         BANGLADESH                     High               0     1068    4689
6 months    JiVitA-4         BANGLADESH                     High               1       31    4689
6 months    JiVitA-4         BANGLADESH                     Low                0     1595    4689
6 months    JiVitA-4         BANGLADESH                     Low                1      130    4689
6 months    JiVitA-4         BANGLADESH                     Medium             0     1766    4689
6 months    JiVitA-4         BANGLADESH                     Medium             1       99    4689
6 months    LCNI-5           MALAWI                         High               0      226     812
6 months    LCNI-5           MALAWI                         High               1       25     812
6 months    LCNI-5           MALAWI                         Low                0      264     812
6 months    LCNI-5           MALAWI                         Low                1       26     812
6 months    LCNI-5           MALAWI                         Medium             0      257     812
6 months    LCNI-5           MALAWI                         Medium             1       14     812
6 months    MAL-ED           BANGLADESH                     High               0       49     132
6 months    MAL-ED           BANGLADESH                     High               1        1     132
6 months    MAL-ED           BANGLADESH                     Low                0       34     132
6 months    MAL-ED           BANGLADESH                     Low                1        2     132
6 months    MAL-ED           BANGLADESH                     Medium             0       45     132
6 months    MAL-ED           BANGLADESH                     Medium             1        1     132
6 months    MAL-ED           INDIA                          High               0       43     138
6 months    MAL-ED           INDIA                          High               1        0     138
6 months    MAL-ED           INDIA                          Low                0       52     138
6 months    MAL-ED           INDIA                          Low                1        2     138
6 months    MAL-ED           INDIA                          Medium             0       40     138
6 months    MAL-ED           INDIA                          Medium             1        1     138
6 months    MAL-ED           NEPAL                          High               0       40      95
6 months    MAL-ED           NEPAL                          High               1        0      95
6 months    MAL-ED           NEPAL                          Low                0       27      95
6 months    MAL-ED           NEPAL                          Low                1        0      95
6 months    MAL-ED           NEPAL                          Medium             0       27      95
6 months    MAL-ED           NEPAL                          Medium             1        1      95
6 months    MAL-ED           PERU                           High               0      104     224
6 months    MAL-ED           PERU                           High               1        3     224
6 months    MAL-ED           PERU                           Low                0       57     224
6 months    MAL-ED           PERU                           Low                1        3     224
6 months    MAL-ED           PERU                           Medium             0       55     224
6 months    MAL-ED           PERU                           Medium             1        2     224
6 months    MAL-ED           SOUTH AFRICA                   High               0       33      92
6 months    MAL-ED           SOUTH AFRICA                   High               1        0      92
6 months    MAL-ED           SOUTH AFRICA                   Low                0       35      92
6 months    MAL-ED           SOUTH AFRICA                   Low                1        0      92
6 months    MAL-ED           SOUTH AFRICA                   Medium             0       24      92
6 months    MAL-ED           SOUTH AFRICA                   Medium             1        0      92
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               0      119     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               1        8     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                0       53     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                1        2     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             0       17     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             1        2     201
6 months    NIH-Crypto       BANGLADESH                     High               0      272     715
6 months    NIH-Crypto       BANGLADESH                     High               1        7     715
6 months    NIH-Crypto       BANGLADESH                     Low                0      216     715
6 months    NIH-Crypto       BANGLADESH                     Low                1        7     715
6 months    NIH-Crypto       BANGLADESH                     Medium             0      204     715
6 months    NIH-Crypto       BANGLADESH                     Medium             1        9     715
6 months    PROBIT           BELARUS                        High               0     2502   15210
6 months    PROBIT           BELARUS                        High               1       11   15210
6 months    PROBIT           BELARUS                        Low                0     5874   15210
6 months    PROBIT           BELARUS                        Low                1       87   15210
6 months    PROBIT           BELARUS                        Medium             0     6667   15210
6 months    PROBIT           BELARUS                        Medium             1       69   15210
6 months    PROVIDE          BANGLADESH                     High               0      207     604
6 months    PROVIDE          BANGLADESH                     High               1        2     604
6 months    PROVIDE          BANGLADESH                     Low                0      200     604
6 months    PROVIDE          BANGLADESH                     Low                1        9     604
6 months    PROVIDE          BANGLADESH                     Medium             0      183     604
6 months    PROVIDE          BANGLADESH                     Medium             1        3     604
6 months    SAS-CompFeed     INDIA                          High               0      326    1333
6 months    SAS-CompFeed     INDIA                          High               1       22    1333
6 months    SAS-CompFeed     INDIA                          Low                0      481    1333
6 months    SAS-CompFeed     INDIA                          Low                1       69    1333
6 months    SAS-CompFeed     INDIA                          Medium             0      398    1333
6 months    SAS-CompFeed     INDIA                          Medium             1       37    1333
6 months    SAS-FoodSuppl    INDIA                          High               0       93     380
6 months    SAS-FoodSuppl    INDIA                          High               1        8     380
6 months    SAS-FoodSuppl    INDIA                          Low                0      113     380
6 months    SAS-FoodSuppl    INDIA                          Low                1       19     380
6 months    SAS-FoodSuppl    INDIA                          Medium             0      120     380
6 months    SAS-FoodSuppl    INDIA                          Medium             1       27     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0      366    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        5    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0     1074    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        9    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0      559    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1        5    2018
6 months    ZVITAMBO         ZIMBABWE                       High               0      572    8429
6 months    ZVITAMBO         ZIMBABWE                       High               1       14    8429
6 months    ZVITAMBO         ZIMBABWE                       Low                0     1391    8429
6 months    ZVITAMBO         ZIMBABWE                       Low                1       68    8429
6 months    ZVITAMBO         ZIMBABWE                       Medium             0     6131    8429
6 months    ZVITAMBO         ZIMBABWE                       Medium             1      253    8429
24 months   COHORTS          GUATEMALA                      High               0       94     992
24 months   COHORTS          GUATEMALA                      High               1       83     992
24 months   COHORTS          GUATEMALA                      Low                0      229     992
24 months   COHORTS          GUATEMALA                      Low                1      233     992
24 months   COHORTS          GUATEMALA                      Medium             0      186     992
24 months   COHORTS          GUATEMALA                      Medium             1      167     992
24 months   COHORTS          INDIA                          High               0      473    1380
24 months   COHORTS          INDIA                          High               1       66    1380
24 months   COHORTS          INDIA                          Low                0      291    1380
24 months   COHORTS          INDIA                          Low                1      159    1380
24 months   COHORTS          INDIA                          Medium             0      308    1380
24 months   COHORTS          INDIA                          Medium             1       83    1380
24 months   COHORTS          PHILIPPINES                    High               0      670    2314
24 months   COHORTS          PHILIPPINES                    High               1      128    2314
24 months   COHORTS          PHILIPPINES                    Low                0      408    2314
24 months   COHORTS          PHILIPPINES                    Low                1      284    2314
24 months   COHORTS          PHILIPPINES                    Medium             0      560    2314
24 months   COHORTS          PHILIPPINES                    Medium             1      264    2314
24 months   GMS-Nepal        NEPAL                          High               0      106     487
24 months   GMS-Nepal        NEPAL                          High               1        7     487
24 months   GMS-Nepal        NEPAL                          Low                0      193     487
24 months   GMS-Nepal        NEPAL                          Low                1       26     487
24 months   GMS-Nepal        NEPAL                          Medium             0      135     487
24 months   GMS-Nepal        NEPAL                          Medium             1       20     487
24 months   JiVitA-3         BANGLADESH                     High               0     1885    8293
24 months   JiVitA-3         BANGLADESH                     High               1      185    8293
24 months   JiVitA-3         BANGLADESH                     Low                0     2735    8293
24 months   JiVitA-3         BANGLADESH                     Low                1      644    8293
24 months   JiVitA-3         BANGLADESH                     Medium             0     2399    8293
24 months   JiVitA-3         BANGLADESH                     Medium             1      445    8293
24 months   JiVitA-4         BANGLADESH                     High               0     1046    4619
24 months   JiVitA-4         BANGLADESH                     High               1       50    4619
24 months   JiVitA-4         BANGLADESH                     Low                0     1495    4619
24 months   JiVitA-4         BANGLADESH                     Low                1      208    4619
24 months   JiVitA-4         BANGLADESH                     Medium             0     1640    4619
24 months   JiVitA-4         BANGLADESH                     Medium             1      180    4619
24 months   LCNI-5           MALAWI                         High               0      155     571
24 months   LCNI-5           MALAWI                         High               1       18     571
24 months   LCNI-5           MALAWI                         Low                0      179     571
24 months   LCNI-5           MALAWI                         Low                1       24     571
24 months   LCNI-5           MALAWI                         Medium             0      169     571
24 months   LCNI-5           MALAWI                         Medium             1       26     571
24 months   MAL-ED           BANGLADESH                     High               0       38     117
24 months   MAL-ED           BANGLADESH                     High               1        2     117
24 months   MAL-ED           BANGLADESH                     Low                0       32     117
24 months   MAL-ED           BANGLADESH                     Low                1        3     117
24 months   MAL-ED           BANGLADESH                     Medium             0       35     117
24 months   MAL-ED           BANGLADESH                     Medium             1        7     117
24 months   MAL-ED           INDIA                          High               0       38     132
24 months   MAL-ED           INDIA                          High               1        4     132
24 months   MAL-ED           INDIA                          Low                0       42     132
24 months   MAL-ED           INDIA                          Low                1        9     132
24 months   MAL-ED           INDIA                          Medium             0       36     132
24 months   MAL-ED           INDIA                          Medium             1        3     132
24 months   MAL-ED           NEPAL                          High               0       38      91
24 months   MAL-ED           NEPAL                          High               1        0      91
24 months   MAL-ED           NEPAL                          Low                0       27      91
24 months   MAL-ED           NEPAL                          Low                1        0      91
24 months   MAL-ED           NEPAL                          Medium             0       25      91
24 months   MAL-ED           NEPAL                          Medium             1        1      91
24 months   MAL-ED           PERU                           High               0       73     164
24 months   MAL-ED           PERU                           High               1        4     164
24 months   MAL-ED           PERU                           Low                0       41     164
24 months   MAL-ED           PERU                           Low                1        3     164
24 months   MAL-ED           PERU                           Medium             0       40     164
24 months   MAL-ED           PERU                           Medium             1        3     164
24 months   MAL-ED           SOUTH AFRICA                   High               0       32      91
24 months   MAL-ED           SOUTH AFRICA                   High               1        2      91
24 months   MAL-ED           SOUTH AFRICA                   Low                0       30      91
24 months   MAL-ED           SOUTH AFRICA                   Low                1        4      91
24 months   MAL-ED           SOUTH AFRICA                   Medium             0       19      91
24 months   MAL-ED           SOUTH AFRICA                   Medium             1        4      91
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               0       82     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               1       32     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                0       29     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                1       18     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             0       11     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             1        5     177
24 months   NIH-Crypto       BANGLADESH                     High               0      196     514
24 months   NIH-Crypto       BANGLADESH                     High               1       15     514
24 months   NIH-Crypto       BANGLADESH                     Low                0      134     514
24 months   NIH-Crypto       BANGLADESH                     Low                1       10     514
24 months   NIH-Crypto       BANGLADESH                     Medium             0      148     514
24 months   NIH-Crypto       BANGLADESH                     Medium             1       11     514
24 months   PROBIT           BELARUS                        High               0      623    3913
24 months   PROBIT           BELARUS                        High               1        4    3913
24 months   PROBIT           BELARUS                        Low                0     1483    3913
24 months   PROBIT           BELARUS                        Low                1       33    3913
24 months   PROBIT           BELARUS                        Medium             0     1745    3913
24 months   PROBIT           BELARUS                        Medium             1       25    3913
24 months   PROVIDE          BANGLADESH                     High               0      195     578
24 months   PROVIDE          BANGLADESH                     High               1        7     578
24 months   PROVIDE          BANGLADESH                     Low                0      170     578
24 months   PROVIDE          BANGLADESH                     Low                1       27     578
24 months   PROVIDE          BANGLADESH                     Medium             0      161     578
24 months   PROVIDE          BANGLADESH                     Medium             1       18     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0        5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1        0       6
24 months   ZVITAMBO         ZIMBABWE                       High               0       92    1594
24 months   ZVITAMBO         ZIMBABWE                       High               1        4    1594
24 months   ZVITAMBO         ZIMBABWE                       Low                0      254    1594
24 months   ZVITAMBO         ZIMBABWE                       Low                1       44    1594
24 months   ZVITAMBO         ZIMBABWE                       Medium             0     1082    1594
24 months   ZVITAMBO         ZIMBABWE                       Medium             1      118    1594


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

* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE

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




# Results Detail

## Results Plots
![](/tmp/73a96b84-7bf7-40d6-8296-1b2e19553041/fb6a63ae-d2e5-41b6-a28c-8fcff1222d61/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/73a96b84-7bf7-40d6-8296-1b2e19553041/fb6a63ae-d2e5-41b6-a28c-8fcff1222d61/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/73a96b84-7bf7-40d6-8296-1b2e19553041/fb6a63ae-d2e5-41b6-a28c-8fcff1222d61/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/73a96b84-7bf7-40d6-8296-1b2e19553041/fb6a63ae-d2e5-41b6-a28c-8fcff1222d61/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA                          High                 NA                0.0208729   0.0086629   0.0330828
Birth       COHORTS          INDIA                          Low                  NA                0.0182232   0.0057064   0.0307401
Birth       COHORTS          INDIA                          Medium               NA                0.0231959   0.0082128   0.0381790
Birth       COHORTS          PHILIPPINES                    High                 NA                0.0068160   0.0017831   0.0118489
Birth       COHORTS          PHILIPPINES                    Low                  NA                0.0205562   0.0108839   0.0302286
Birth       COHORTS          PHILIPPINES                    Medium               NA                0.0186457   0.0103388   0.0269526
Birth       GMS-Nepal        NEPAL                          High                 NA                0.0406977   0.0111475   0.0702478
Birth       GMS-Nepal        NEPAL                          Low                  NA                0.0608108   0.0335661   0.0880555
Birth       GMS-Nepal        NEPAL                          Medium               NA                0.0265487   0.0055745   0.0475229
Birth       JiVitA-3         BANGLADESH                     High                 NA                0.1105743   0.1036782   0.1174703
Birth       JiVitA-3         BANGLADESH                     Low                  NA                0.1099700   0.1047119   0.1152282
Birth       JiVitA-3         BANGLADESH                     Medium               NA                0.1088660   0.1033890   0.1143430
Birth       JiVitA-4         BANGLADESH                     High                 NA                0.0722252   0.0581759   0.0862745
Birth       JiVitA-4         BANGLADESH                     Low                  NA                0.0838069   0.0711746   0.0964391
Birth       JiVitA-4         BANGLADESH                     Medium               NA                0.0840234   0.0701054   0.0979414
Birth       SAS-CompFeed     INDIA                          High                 NA                0.0779073   0.0543135   0.1015011
Birth       SAS-CompFeed     INDIA                          Low                  NA                0.0687829   0.0521378   0.0854280
Birth       SAS-CompFeed     INDIA                          Medium               NA                0.0734410   0.0289820   0.1179000
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                0.0335652   0.0209854   0.0461449
Birth       ZVITAMBO         ZIMBABWE                       Low                  NA                0.0400273   0.0311463   0.0489083
Birth       ZVITAMBO         ZIMBABWE                       Medium               NA                0.0297990   0.0264525   0.0331454
6 months    COHORTS          GUATEMALA                      High                 NA                0.1610124   0.0982228   0.2238019
6 months    COHORTS          GUATEMALA                      Low                  NA                0.1241081   0.0909250   0.1572912
6 months    COHORTS          GUATEMALA                      Medium               NA                0.1268985   0.0904537   0.1633433
6 months    COHORTS          INDIA                          High                 NA                0.0244943   0.0084340   0.0405546
6 months    COHORTS          INDIA                          Low                  NA                0.0377034   0.0208545   0.0545523
6 months    COHORTS          INDIA                          Medium               NA                0.0285054   0.0110781   0.0459326
6 months    COHORTS          PHILIPPINES                    High                 NA                0.0425716   0.0225491   0.0625942
6 months    COHORTS          PHILIPPINES                    Low                  NA                0.0502233   0.0326852   0.0677615
6 months    COHORTS          PHILIPPINES                    Medium               NA                0.0548403   0.0361013   0.0735792
6 months    JiVitA-3         BANGLADESH                     High                 NA                0.0559452   0.0428519   0.0690384
6 months    JiVitA-3         BANGLADESH                     Low                  NA                0.0641272   0.0566933   0.0715610
6 months    JiVitA-3         BANGLADESH                     Medium               NA                0.0588779   0.0509165   0.0668393
6 months    JiVitA-4         BANGLADESH                     High                 NA                0.0354945   0.0083821   0.0626068
6 months    JiVitA-4         BANGLADESH                     Low                  NA                0.0703104   0.0531646   0.0874561
6 months    JiVitA-4         BANGLADESH                     Medium               NA                0.0585146   0.0463247   0.0707045
6 months    LCNI-5           MALAWI                         High                 NA                0.0975949   0.0602072   0.1349825
6 months    LCNI-5           MALAWI                         Low                  NA                0.0873765   0.0543547   0.1203983
6 months    LCNI-5           MALAWI                         Medium               NA                0.0516960   0.0250759   0.0783161
6 months    NIH-Crypto       BANGLADESH                     High                 NA                0.0250896   0.0067251   0.0434541
6 months    NIH-Crypto       BANGLADESH                     Low                  NA                0.0313901   0.0084883   0.0542920
6 months    NIH-Crypto       BANGLADESH                     Medium               NA                0.0422535   0.0152190   0.0692881
6 months    PROBIT           BELARUS                        High                 NA                0.0060461   0.0012779   0.0108143
6 months    PROBIT           BELARUS                        Low                  NA                0.0128543   0.0061534   0.0195552
6 months    PROBIT           BELARUS                        Medium               NA                0.0117204   0.0042996   0.0191413
6 months    SAS-CompFeed     INDIA                          High                 NA                0.0754331   0.0524806   0.0983856
6 months    SAS-CompFeed     INDIA                          Low                  NA                0.1041213   0.0834124   0.1248303
6 months    SAS-CompFeed     INDIA                          Medium               NA                0.0844667   0.0544156   0.1145178
6 months    SAS-FoodSuppl    INDIA                          High                 NA                0.0792079   0.0264698   0.1319460
6 months    SAS-FoodSuppl    INDIA                          Low                  NA                0.1439394   0.0839775   0.2039013
6 months    SAS-FoodSuppl    INDIA                          Medium               NA                0.1836735   0.1209952   0.2463517
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0134771   0.0017411   0.0252131
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0083102   0.0029023   0.0137182
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0088652   0.0011273   0.0166032
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                0.0236413   0.0113329   0.0359498
6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                0.0459664   0.0351308   0.0568019
6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                0.0397457   0.0349549   0.0445366
24 months   COHORTS          GUATEMALA                      High                 NA                0.4181938   0.3410778   0.4953099
24 months   COHORTS          GUATEMALA                      Low                  NA                0.4876157   0.4390619   0.5361695
24 months   COHORTS          GUATEMALA                      Medium               NA                0.5043925   0.4477862   0.5609988
24 months   COHORTS          INDIA                          High                 NA                0.1581047   0.1256045   0.1906049
24 months   COHORTS          INDIA                          Low                  NA                0.2632829   0.2238754   0.3026904
24 months   COHORTS          INDIA                          Medium               NA                0.2217705   0.1771269   0.2664140
24 months   COHORTS          PHILIPPINES                    High                 NA                0.2069287   0.1725957   0.2412616
24 months   COHORTS          PHILIPPINES                    Low                  NA                0.3591291   0.3196148   0.3986434
24 months   COHORTS          PHILIPPINES                    Medium               NA                0.3048958   0.2699591   0.3398326
24 months   GMS-Nepal        NEPAL                          High                 NA                0.0619469   0.0174552   0.1064386
24 months   GMS-Nepal        NEPAL                          Low                  NA                0.1187215   0.0758376   0.1616053
24 months   GMS-Nepal        NEPAL                          Medium               NA                0.1290323   0.0762025   0.1818620
24 months   JiVitA-3         BANGLADESH                     High                 NA                0.1427377   0.1141016   0.1713738
24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.1569493   0.1432910   0.1706076
24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.1502449   0.1309551   0.1695348
24 months   JiVitA-4         BANGLADESH                     High                 NA                0.0560668   0.0321378   0.0799959
24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.1221768   0.1016992   0.1426545
24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.1029879   0.0841500   0.1218258
24 months   LCNI-5           MALAWI                         High                 NA                0.1009182   0.0551913   0.1466451
24 months   LCNI-5           MALAWI                         Low                  NA                0.1148458   0.0703336   0.1593580
24 months   LCNI-5           MALAWI                         Medium               NA                0.1292632   0.0813217   0.1772046
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2807018   0.1979832   0.3634203
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.3829787   0.2436095   0.5223479
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.3125000   0.0847388   0.5402612
24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.1075730   0.0521043   0.1630416
24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.0655653   0.0181380   0.1129926
24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.0666096   0.0248940   0.1083253
24 months   PROVIDE          BANGLADESH                     High                 NA                0.0346535   0.0094092   0.0598978
24 months   PROVIDE          BANGLADESH                     Low                  NA                0.1370558   0.0889906   0.1851211
24 months   PROVIDE          BANGLADESH                     Medium               NA                0.1005587   0.0564632   0.1446541


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA                          NA                   NA                0.0206795   0.0130966   0.0282623
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.0149669   0.0105263   0.0194076
Birth       GMS-Nepal        NEPAL                          NA                   NA                0.0446686   0.0292885   0.0600487
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.1077969   0.1031162   0.1124775
Birth       JiVitA-4         BANGLADESH                     NA                   NA                0.0835766   0.0713713   0.0957819
Birth       SAS-CompFeed     INDIA                          NA                   NA                0.0720576   0.0515501   0.0925652
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.0317754   0.0288166   0.0347342
6 months    COHORTS          GUATEMALA                      NA                   NA                0.1305310   0.1085580   0.1525039
6 months    COHORTS          INDIA                          NA                   NA                0.0317690   0.0225290   0.0410089
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0483619   0.0400565   0.0566674
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0593851   0.0553716   0.0633986
6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.0554489   0.0485553   0.0623426
6 months    LCNI-5           MALAWI                         NA                   NA                0.0800493   0.0613726   0.0987259
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0321678   0.0192256   0.0451101
6 months    PROBIT           BELARUS                        NA                   NA                0.0109796   0.0053040   0.0166552
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.0960240   0.0777684   0.1142796
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.1421053   0.1069532   0.1772573
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0094153   0.0052007   0.0136299
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0397437   0.0355730   0.0439145
24 months   COHORTS          GUATEMALA                      NA                   NA                0.4868952   0.4557757   0.5180146
24 months   COHORTS          INDIA                          NA                   NA                0.2231884   0.2012119   0.2451650
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.2921348   0.2736026   0.3106670
24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1088296   0.0811421   0.1365171
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1536235   0.1447035   0.1625436
24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.0948257   0.0851298   0.1045216
24 months   LCNI-5           MALAWI                         NA                   NA                0.1190893   0.0924996   0.1456790
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3107345   0.2423622   0.3791067
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0700389   0.0479542   0.0921236
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.0899654   0.0666186   0.1133122


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
Birth       COHORTS          INDIA                          Low                  High              0.8730586   0.3541786   2.152110
Birth       COHORTS          INDIA                          Medium               High              1.1112933   0.4649040   2.656404
Birth       COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
Birth       COHORTS          PHILIPPINES                    Low                  High              3.0158922   1.2564899   7.238901
Birth       COHORTS          PHILIPPINES                    Medium               High              2.7355951   1.1548408   6.480097
Birth       GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
Birth       GMS-Nepal        NEPAL                          Low                  High              1.4942085   0.6366137   3.507086
Birth       GMS-Nepal        NEPAL                          Medium               High              0.6523388   0.2230853   1.907548
Birth       JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       JiVitA-3         BANGLADESH                     Low                  High              0.9945355   0.9396827   1.052590
Birth       JiVitA-3         BANGLADESH                     Medium               High              0.9845510   0.9306117   1.041617
Birth       JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       JiVitA-4         BANGLADESH                     Low                  High              1.1603553   1.0046447   1.340200
Birth       JiVitA-4         BANGLADESH                     Medium               High              1.1633530   0.9903836   1.366531
Birth       SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
Birth       SAS-CompFeed     INDIA                          Low                  High              0.8828817   0.6219116   1.253361
Birth       SAS-CompFeed     INDIA                          Medium               High              0.9426716   0.5694675   1.560457
Birth       ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
Birth       ZVITAMBO         ZIMBABWE                       Low                  High              1.1925254   0.7715347   1.843231
Birth       ZVITAMBO         ZIMBABWE                       Medium               High              0.8877949   0.6004020   1.312753
6 months    COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6 months    COHORTS          GUATEMALA                      Low                  High              0.7707986   0.4808188   1.235664
6 months    COHORTS          GUATEMALA                      Medium               High              0.7881289   0.4865061   1.276751
6 months    COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    COHORTS          INDIA                          Low                  High              1.5392711   0.6964913   3.401845
6 months    COHORTS          INDIA                          Medium               High              1.1637544   0.4750661   2.850812
6 months    COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6 months    COHORTS          PHILIPPINES                    Low                  High              1.1797366   0.6569156   2.118657
6 months    COHORTS          PHILIPPINES                    Medium               High              1.2881875   0.7206920   2.302547
6 months    JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    JiVitA-3         BANGLADESH                     Low                  High              1.1462509   0.8862077   1.482599
6 months    JiVitA-3         BANGLADESH                     Medium               High              1.0524215   0.8053824   1.375236
6 months    JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    JiVitA-4         BANGLADESH                     Low                  High              1.9808831   0.8860947   4.428306
6 months    JiVitA-4         BANGLADESH                     Medium               High              1.6485557   0.7569455   3.590399
6 months    LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
6 months    LCNI-5           MALAWI                         Low                  High              0.8952980   0.5228059   1.533186
6 months    LCNI-5           MALAWI                         Medium               High              0.5297000   0.2787953   1.006409
6 months    NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    NIH-Crypto       BANGLADESH                     Low                  High              1.2511211   0.4451121   3.516651
6 months    NIH-Crypto       BANGLADESH                     Medium               High              1.6841046   0.6370276   4.452253
6 months    PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
6 months    PROBIT           BELARUS                        Low                  High              2.1260454   0.9331763   4.843746
6 months    PROBIT           BELARUS                        Medium               High              1.9385046   0.7665242   4.902389
6 months    SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed     INDIA                          Low                  High              1.3803134   0.9374067   2.032485
6 months    SAS-CompFeed     INDIA                          Medium               High              1.1197564   0.6839766   1.833183
6 months    SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    SAS-FoodSuppl    INDIA                          Low                  High              1.8172348   0.8285460   3.985708
6 months    SAS-FoodSuppl    INDIA                          Medium               High              2.3188776   1.0973616   4.900110
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.6166205   0.2079183   1.828703
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.6578014   0.1917037   2.257144
6 months    ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6 months    ZVITAMBO         ZIMBABWE                       Low                  High              1.9443234   1.0980110   3.442947
6 months    ZVITAMBO         ZIMBABWE                       Medium               High              1.6811974   0.9853957   2.868314
24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
24 months   COHORTS          GUATEMALA                      Low                  High              1.1660041   0.9475395   1.434838
24 months   COHORTS          GUATEMALA                      Medium               High              1.2061213   0.9739487   1.493640
24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
24 months   COHORTS          INDIA                          Low                  High              1.6652442   1.2982520   2.135978
24 months   COHORTS          INDIA                          Medium               High              1.4026813   1.0565113   1.862275
24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
24 months   COHORTS          PHILIPPINES                    Low                  High              1.7355215   1.4250686   2.113607
24 months   COHORTS          PHILIPPINES                    Medium               High              1.4734346   1.2073075   1.798224
24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
24 months   GMS-Nepal        NEPAL                          Low                  High              1.9165036   0.8577545   4.282095
24 months   GMS-Nepal        NEPAL                          Medium               High              2.0829493   0.9112463   4.761257
24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   JiVitA-3         BANGLADESH                     Low                  High              1.0995644   0.8866671   1.363580
24 months   JiVitA-3         BANGLADESH                     Medium               High              1.0525948   0.8358164   1.325597
24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   JiVitA-4         BANGLADESH                     Low                  High              2.1791286   1.3734135   3.457517
24 months   JiVitA-4         BANGLADESH                     Medium               High              1.8368774   1.1688162   2.886783
24 months   LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
24 months   LCNI-5           MALAWI                         Low                  High              1.1380087   0.6258045   2.069438
24 months   LCNI-5           MALAWI                         Medium               High              1.2808705   0.7136168   2.299034
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              1.3643617   0.8542131   2.179178
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              1.1132812   0.5072030   2.443588
24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   NIH-Crypto       BANGLADESH                     Low                  High              0.6094958   0.2507384   1.481565
24 months   NIH-Crypto       BANGLADESH                     Medium               High              0.6192041   0.2750923   1.393764
24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   PROVIDE          BANGLADESH                     Low                  High              3.9550399   1.7620749   8.877228
24 months   PROVIDE          BANGLADESH                     Medium               High              2.9018356   1.2399471   6.791136


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          INDIA                          High                 NA                -0.0001934   -0.0097082   0.0093214
Birth       COHORTS          PHILIPPINES                    High                 NA                 0.0081510    0.0029606   0.0133414
Birth       GMS-Nepal        NEPAL                          High                 NA                 0.0039709   -0.0220469   0.0299888
Birth       JiVitA-3         BANGLADESH                     High                 NA                -0.0027774   -0.0080937   0.0025389
Birth       JiVitA-4         BANGLADESH                     High                 NA                 0.0113515    0.0040792   0.0186237
Birth       SAS-CompFeed     INDIA                          High                 NA                -0.0058496   -0.0229139   0.0112146
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.0017897   -0.0139680   0.0103886
6 months    COHORTS          GUATEMALA                      High                 NA                -0.0304814   -0.0875161   0.0265533
6 months    COHORTS          INDIA                          High                 NA                 0.0072746   -0.0071707   0.0217200
6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0057903   -0.0129035   0.0244841
6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0034399   -0.0091429   0.0160227
6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0199545   -0.0061751   0.0460840
6 months    LCNI-5           MALAWI                         High                 NA                -0.0175456   -0.0473811   0.0122899
6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0070782   -0.0084639   0.0226203
6 months    PROBIT           BELARUS                        High                 NA                 0.0049335   -0.0012046   0.0110716
6 months    SAS-CompFeed     INDIA                          High                 NA                 0.0205909   -0.0054554   0.0466372
6 months    SAS-FoodSuppl    INDIA                          High                 NA                 0.0628973    0.0125139   0.1132808
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0040618   -0.0143016   0.0061780
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0161024    0.0039487   0.0282561
24 months   COHORTS          GUATEMALA                      High                 NA                 0.0687013   -0.0021854   0.1395881
24 months   COHORTS          INDIA                          High                 NA                 0.0650837    0.0363501   0.0938174
24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0852062    0.0536736   0.1167387
24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0468827    0.0041336   0.0896318
24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0108859   -0.0163150   0.0380867
24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0387589    0.0161768   0.0613410
24 months   LCNI-5           MALAWI                         High                 NA                 0.0181711   -0.0211450   0.0574872
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0300327   -0.0219599   0.0820253
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0375340   -0.0839085   0.0088404
24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0553119    0.0281657   0.0824581


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          High                 NA                -0.0093521   -0.5922383    0.3601512
Birth       COHORTS          PHILIPPINES                    High                 NA                 0.5445982    0.1054980    0.7681494
Birth       GMS-Nepal        NEPAL                          High                 NA                 0.0888972   -0.7252775    0.5188552
Birth       JiVitA-3         BANGLADESH                     High                 NA                -0.0257649   -0.0763623    0.0224541
Birth       JiVitA-4         BANGLADESH                     High                 NA                 0.1358210    0.0423467    0.2201714
Birth       SAS-CompFeed     INDIA                          High                 NA                -0.0811801   -0.3536279    0.1364315
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.0563243   -0.5182737    0.2650726
6 months    COHORTS          GUATEMALA                      High                 NA                -0.2335185   -0.7557551    0.1333826
6 months    COHORTS          INDIA                          High                 NA                 0.2289858   -0.3830770    0.5701881
6 months    COHORTS          PHILIPPINES                    High                 NA                 0.1197283   -0.3646413    0.4321745
6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0579256   -0.1795786    0.2476092
6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.3598712   -0.3422003    0.6947067
6 months    LCNI-5           MALAWI                         High                 NA                -0.2191852   -0.6499969    0.0991422
6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.2200405   -0.4347783    0.5760064
6 months    PROBIT           BELARUS                        High                 NA                 0.4493333   -0.2170827    0.7508520
6 months    SAS-CompFeed     INDIA                          High                 NA                 0.2144349   -0.0839263    0.4306693
6 months    SAS-FoodSuppl    INDIA                          High                 NA                 0.4426109   -0.0267209    0.6974031
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4314087   -2.0243888    0.3225306
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.4051561    0.0099666    0.6425987
24 months   COHORTS          GUATEMALA                      High                 NA                 0.1411009   -0.0177737    0.2751751
24 months   COHORTS          INDIA                          High                 NA                 0.2916090    0.1534916    0.4071910
24 months   COHORTS          PHILIPPINES                    High                 NA                 0.2916673    0.1761593    0.3909803
24 months   GMS-Nepal        NEPAL                          High                 NA                 0.4307898   -0.1085570    0.7077279
24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0708606   -0.1242604    0.2321174
24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.4087381    0.1144857    0.6052118
24 months   LCNI-5           MALAWI                         High                 NA                 0.1525838   -0.2497983    0.4254159
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0966507   -0.0868678    0.2491820
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.5359028   -1.3410445   -0.0076687
24 months   PROVIDE          BANGLADESH                     High                 NA                 0.6148134    0.2437471    0.8038107
