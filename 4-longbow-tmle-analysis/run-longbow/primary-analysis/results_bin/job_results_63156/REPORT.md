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

agecat      studyid          country                        feducyrs    sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------  ---------  -------  ------  -----------------
Birth       COHORTS          GUATEMALA                      High               0      152     804  sstunted         
Birth       COHORTS          GUATEMALA                      High               1        3     804  sstunted         
Birth       COHORTS          GUATEMALA                      Low                0      348     804  sstunted         
Birth       COHORTS          GUATEMALA                      Low                1        7     804  sstunted         
Birth       COHORTS          GUATEMALA                      Medium             0      293     804  sstunted         
Birth       COHORTS          GUATEMALA                      Medium             1        1     804  sstunted         
Birth       COHORTS          INDIA                          High               0      516    1354  sstunted         
Birth       COHORTS          INDIA                          High               1       11    1354  sstunted         
Birth       COHORTS          INDIA                          Low                0      431    1354  sstunted         
Birth       COHORTS          INDIA                          Low                1        8    1354  sstunted         
Birth       COHORTS          INDIA                          Medium             0      379    1354  sstunted         
Birth       COHORTS          INDIA                          Medium             1        9    1354  sstunted         
Birth       COHORTS          PHILIPPINES                    High               0     1020    2873  sstunted         
Birth       COHORTS          PHILIPPINES                    High               1        7    2873  sstunted         
Birth       COHORTS          PHILIPPINES                    Low                0      810    2873  sstunted         
Birth       COHORTS          PHILIPPINES                    Low                1       17    2873  sstunted         
Birth       COHORTS          PHILIPPINES                    Medium             0     1000    2873  sstunted         
Birth       COHORTS          PHILIPPINES                    Medium             1       19    2873  sstunted         
Birth       GMS-Nepal        NEPAL                          High               0      165     694  sstunted         
Birth       GMS-Nepal        NEPAL                          High               1        7     694  sstunted         
Birth       GMS-Nepal        NEPAL                          Low                0      278     694  sstunted         
Birth       GMS-Nepal        NEPAL                          Low                1       18     694  sstunted         
Birth       GMS-Nepal        NEPAL                          Medium             0      220     694  sstunted         
Birth       GMS-Nepal        NEPAL                          Medium             1        6     694  sstunted         
Birth       JiVitA-3         BANGLADESH                     High               0     4373   21624  sstunted         
Birth       JiVitA-3         BANGLADESH                     High               1      353   21624  sstunted         
Birth       JiVitA-3         BANGLADESH                     Low                0     8355   21624  sstunted         
Birth       JiVitA-3         BANGLADESH                     Low                1     1113   21624  sstunted         
Birth       JiVitA-3         BANGLADESH                     Medium             0     6565   21624  sstunted         
Birth       JiVitA-3         BANGLADESH                     Medium             1      865   21624  sstunted         
Birth       JiVitA-4         BANGLADESH                     High               0      543    2740  sstunted         
Birth       JiVitA-4         BANGLADESH                     High               1       39    2740  sstunted         
Birth       JiVitA-4         BANGLADESH                     Low                0      997    2740  sstunted         
Birth       JiVitA-4         BANGLADESH                     Low                1      105    2740  sstunted         
Birth       JiVitA-4         BANGLADESH                     Medium             0      971    2740  sstunted         
Birth       JiVitA-4         BANGLADESH                     Medium             1       85    2740  sstunted         
Birth       MAL-ED           BANGLADESH                     High               0       44     129  sstunted         
Birth       MAL-ED           BANGLADESH                     High               1        3     129  sstunted         
Birth       MAL-ED           BANGLADESH                     Low                0       35     129  sstunted         
Birth       MAL-ED           BANGLADESH                     Low                1        1     129  sstunted         
Birth       MAL-ED           BANGLADESH                     Medium             0       44     129  sstunted         
Birth       MAL-ED           BANGLADESH                     Medium             1        2     129  sstunted         
Birth       MAL-ED           INDIA                          High               0        7      24  sstunted         
Birth       MAL-ED           INDIA                          High               1        0      24  sstunted         
Birth       MAL-ED           INDIA                          Low                0       13      24  sstunted         
Birth       MAL-ED           INDIA                          Low                1        1      24  sstunted         
Birth       MAL-ED           INDIA                          Medium             0        3      24  sstunted         
Birth       MAL-ED           INDIA                          Medium             1        0      24  sstunted         
Birth       MAL-ED           NEPAL                          High               0        3      10  sstunted         
Birth       MAL-ED           NEPAL                          High               1        0      10  sstunted         
Birth       MAL-ED           NEPAL                          Low                0        3      10  sstunted         
Birth       MAL-ED           NEPAL                          Low                1        1      10  sstunted         
Birth       MAL-ED           NEPAL                          Medium             0        3      10  sstunted         
Birth       MAL-ED           NEPAL                          Medium             1        0      10  sstunted         
Birth       MAL-ED           PERU                           High               0       85     194  sstunted         
Birth       MAL-ED           PERU                           High               1        1     194  sstunted         
Birth       MAL-ED           PERU                           Low                0       57     194  sstunted         
Birth       MAL-ED           PERU                           Low                1        1     194  sstunted         
Birth       MAL-ED           PERU                           Medium             0       49     194  sstunted         
Birth       MAL-ED           PERU                           Medium             1        1     194  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   High               0       10      33  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   High               1        0      33  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Low                0       14      33  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Low                1        0      33  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Medium             0        9      33  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Medium             1        0      33  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               0       62     103  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               1        4     103  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                0       26     103  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                1        1     103  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             0        8     103  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             1        2     103  sstunted         
Birth       NIH-Crypto       BANGLADESH                     High               0      279     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     High               1        5     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Low                0      235     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Low                1        0     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Medium             0      208     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Medium             1        5     732  sstunted         
Birth       PROBIT           BELARUS                        High               0     2059   13424  sstunted         
Birth       PROBIT           BELARUS                        High               1        0   13424  sstunted         
Birth       PROBIT           BELARUS                        Low                0     5318   13424  sstunted         
Birth       PROBIT           BELARUS                        Low                1        2   13424  sstunted         
Birth       PROBIT           BELARUS                        Medium             0     6042   13424  sstunted         
Birth       PROBIT           BELARUS                        Medium             1        3   13424  sstunted         
Birth       PROVIDE          BANGLADESH                     High               0      162     539  sstunted         
Birth       PROVIDE          BANGLADESH                     High               1        1     539  sstunted         
Birth       PROVIDE          BANGLADESH                     Low                0      186     539  sstunted         
Birth       PROVIDE          BANGLADESH                     Low                1        1     539  sstunted         
Birth       PROVIDE          BANGLADESH                     Medium             0      187     539  sstunted         
Birth       PROVIDE          BANGLADESH                     Medium             1        2     539  sstunted         
Birth       SAS-CompFeed     INDIA                          High               0      278    1249  sstunted         
Birth       SAS-CompFeed     INDIA                          High               1       21    1249  sstunted         
Birth       SAS-CompFeed     INDIA                          Low                0      503    1249  sstunted         
Birth       SAS-CompFeed     INDIA                          Low                1       40    1249  sstunted         
Birth       SAS-CompFeed     INDIA                          Medium             0      378    1249  sstunted         
Birth       SAS-CompFeed     INDIA                          Medium             1       29    1249  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       High               0      951   13501  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       High               1       31   13501  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       Low                0     2188   13501  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       Low                1       93   13501  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       Medium             0     9933   13501  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       Medium             1      305   13501  sstunted         
6 months    COHORTS          GUATEMALA                      High               0      140     904  sstunted         
6 months    COHORTS          GUATEMALA                      High               1       25     904  sstunted         
6 months    COHORTS          GUATEMALA                      Low                0      352     904  sstunted         
6 months    COHORTS          GUATEMALA                      Low                1       54     904  sstunted         
6 months    COHORTS          GUATEMALA                      Medium             0      294     904  sstunted         
6 months    COHORTS          GUATEMALA                      Medium             1       39     904  sstunted         
6 months    COHORTS          INDIA                          High               0      533    1385  sstunted         
6 months    COHORTS          INDIA                          High               1       11    1385  sstunted         
6 months    COHORTS          INDIA                          Low                0      428    1385  sstunted         
6 months    COHORTS          INDIA                          Low                1       22    1385  sstunted         
6 months    COHORTS          INDIA                          Medium             0      380    1385  sstunted         
6 months    COHORTS          INDIA                          Medium             1       11    1385  sstunted         
6 months    COHORTS          PHILIPPINES                    High               0      862    2564  sstunted         
6 months    COHORTS          PHILIPPINES                    High               1       29    2564  sstunted         
6 months    COHORTS          PHILIPPINES                    Low                0      699    2564  sstunted         
6 months    COHORTS          PHILIPPINES                    Low                1       47    2564  sstunted         
6 months    COHORTS          PHILIPPINES                    Medium             0      879    2564  sstunted         
6 months    COHORTS          PHILIPPINES                    Medium             1       48    2564  sstunted         
6 months    GMS-Nepal        NEPAL                          High               0      135     563  sstunted         
6 months    GMS-Nepal        NEPAL                          High               1        2     563  sstunted         
6 months    GMS-Nepal        NEPAL                          Low                0      226     563  sstunted         
6 months    GMS-Nepal        NEPAL                          Low                1       17     563  sstunted         
6 months    GMS-Nepal        NEPAL                          Medium             0      181     563  sstunted         
6 months    GMS-Nepal        NEPAL                          Medium             1        2     563  sstunted         
6 months    JiVitA-3         BANGLADESH                     High               0     4131   16132  sstunted         
6 months    JiVitA-3         BANGLADESH                     High               1      148   16132  sstunted         
6 months    JiVitA-3         BANGLADESH                     Low                0     5855   16132  sstunted         
6 months    JiVitA-3         BANGLADESH                     Low                1      449   16132  sstunted         
6 months    JiVitA-3         BANGLADESH                     Medium             0     5188   16132  sstunted         
6 months    JiVitA-3         BANGLADESH                     Medium             1      361   16132  sstunted         
6 months    JiVitA-4         BANGLADESH                     High               0     1068    4689  sstunted         
6 months    JiVitA-4         BANGLADESH                     High               1       31    4689  sstunted         
6 months    JiVitA-4         BANGLADESH                     Low                0     1595    4689  sstunted         
6 months    JiVitA-4         BANGLADESH                     Low                1      130    4689  sstunted         
6 months    JiVitA-4         BANGLADESH                     Medium             0     1766    4689  sstunted         
6 months    JiVitA-4         BANGLADESH                     Medium             1       99    4689  sstunted         
6 months    LCNI-5           MALAWI                         High               0      226     812  sstunted         
6 months    LCNI-5           MALAWI                         High               1       25     812  sstunted         
6 months    LCNI-5           MALAWI                         Low                0      264     812  sstunted         
6 months    LCNI-5           MALAWI                         Low                1       26     812  sstunted         
6 months    LCNI-5           MALAWI                         Medium             0      257     812  sstunted         
6 months    LCNI-5           MALAWI                         Medium             1       14     812  sstunted         
6 months    MAL-ED           BANGLADESH                     High               0       49     132  sstunted         
6 months    MAL-ED           BANGLADESH                     High               1        1     132  sstunted         
6 months    MAL-ED           BANGLADESH                     Low                0       34     132  sstunted         
6 months    MAL-ED           BANGLADESH                     Low                1        2     132  sstunted         
6 months    MAL-ED           BANGLADESH                     Medium             0       45     132  sstunted         
6 months    MAL-ED           BANGLADESH                     Medium             1        1     132  sstunted         
6 months    MAL-ED           INDIA                          High               0       43     138  sstunted         
6 months    MAL-ED           INDIA                          High               1        0     138  sstunted         
6 months    MAL-ED           INDIA                          Low                0       52     138  sstunted         
6 months    MAL-ED           INDIA                          Low                1        2     138  sstunted         
6 months    MAL-ED           INDIA                          Medium             0       40     138  sstunted         
6 months    MAL-ED           INDIA                          Medium             1        1     138  sstunted         
6 months    MAL-ED           NEPAL                          High               0       40      95  sstunted         
6 months    MAL-ED           NEPAL                          High               1        0      95  sstunted         
6 months    MAL-ED           NEPAL                          Low                0       27      95  sstunted         
6 months    MAL-ED           NEPAL                          Low                1        0      95  sstunted         
6 months    MAL-ED           NEPAL                          Medium             0       27      95  sstunted         
6 months    MAL-ED           NEPAL                          Medium             1        1      95  sstunted         
6 months    MAL-ED           PERU                           High               0      104     224  sstunted         
6 months    MAL-ED           PERU                           High               1        3     224  sstunted         
6 months    MAL-ED           PERU                           Low                0       57     224  sstunted         
6 months    MAL-ED           PERU                           Low                1        3     224  sstunted         
6 months    MAL-ED           PERU                           Medium             0       55     224  sstunted         
6 months    MAL-ED           PERU                           Medium             1        2     224  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   High               0       33      92  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   High               1        0      92  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Low                0       35      92  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Low                1        0      92  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Medium             0       24      92  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Medium             1        0      92  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               0      119     201  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               1        8     201  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                0       53     201  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                1        2     201  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             0       17     201  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             1        2     201  sstunted         
6 months    NIH-Crypto       BANGLADESH                     High               0      272     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     High               1        7     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Low                0      216     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Low                1        7     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Medium             0      204     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Medium             1        9     715  sstunted         
6 months    PROBIT           BELARUS                        High               0     2502   15210  sstunted         
6 months    PROBIT           BELARUS                        High               1       11   15210  sstunted         
6 months    PROBIT           BELARUS                        Low                0     5874   15210  sstunted         
6 months    PROBIT           BELARUS                        Low                1       87   15210  sstunted         
6 months    PROBIT           BELARUS                        Medium             0     6667   15210  sstunted         
6 months    PROBIT           BELARUS                        Medium             1       69   15210  sstunted         
6 months    PROVIDE          BANGLADESH                     High               0      207     604  sstunted         
6 months    PROVIDE          BANGLADESH                     High               1        2     604  sstunted         
6 months    PROVIDE          BANGLADESH                     Low                0      200     604  sstunted         
6 months    PROVIDE          BANGLADESH                     Low                1        9     604  sstunted         
6 months    PROVIDE          BANGLADESH                     Medium             0      183     604  sstunted         
6 months    PROVIDE          BANGLADESH                     Medium             1        3     604  sstunted         
6 months    SAS-CompFeed     INDIA                          High               0      326    1333  sstunted         
6 months    SAS-CompFeed     INDIA                          High               1       22    1333  sstunted         
6 months    SAS-CompFeed     INDIA                          Low                0      481    1333  sstunted         
6 months    SAS-CompFeed     INDIA                          Low                1       69    1333  sstunted         
6 months    SAS-CompFeed     INDIA                          Medium             0      398    1333  sstunted         
6 months    SAS-CompFeed     INDIA                          Medium             1       37    1333  sstunted         
6 months    SAS-FoodSuppl    INDIA                          High               0       93     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          High               1        8     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          Low                0      113     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          Low                1       19     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          Medium             0      120     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          Medium             1       27     380  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0      366    2018  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        5    2018  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0     1074    2018  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        9    2018  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0      559    2018  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1        5    2018  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       High               0      572    8429  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       High               1       14    8429  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       Low                0     1391    8429  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       Low                1       68    8429  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       Medium             0     6131    8429  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       Medium             1      253    8429  sstunted         
24 months   COHORTS          GUATEMALA                      High               0       94     992  sstunted         
24 months   COHORTS          GUATEMALA                      High               1       83     992  sstunted         
24 months   COHORTS          GUATEMALA                      Low                0      229     992  sstunted         
24 months   COHORTS          GUATEMALA                      Low                1      233     992  sstunted         
24 months   COHORTS          GUATEMALA                      Medium             0      186     992  sstunted         
24 months   COHORTS          GUATEMALA                      Medium             1      167     992  sstunted         
24 months   COHORTS          INDIA                          High               0      473    1380  sstunted         
24 months   COHORTS          INDIA                          High               1       66    1380  sstunted         
24 months   COHORTS          INDIA                          Low                0      291    1380  sstunted         
24 months   COHORTS          INDIA                          Low                1      159    1380  sstunted         
24 months   COHORTS          INDIA                          Medium             0      308    1380  sstunted         
24 months   COHORTS          INDIA                          Medium             1       83    1380  sstunted         
24 months   COHORTS          PHILIPPINES                    High               0      670    2314  sstunted         
24 months   COHORTS          PHILIPPINES                    High               1      128    2314  sstunted         
24 months   COHORTS          PHILIPPINES                    Low                0      408    2314  sstunted         
24 months   COHORTS          PHILIPPINES                    Low                1      284    2314  sstunted         
24 months   COHORTS          PHILIPPINES                    Medium             0      560    2314  sstunted         
24 months   COHORTS          PHILIPPINES                    Medium             1      264    2314  sstunted         
24 months   GMS-Nepal        NEPAL                          High               0      106     487  sstunted         
24 months   GMS-Nepal        NEPAL                          High               1        7     487  sstunted         
24 months   GMS-Nepal        NEPAL                          Low                0      193     487  sstunted         
24 months   GMS-Nepal        NEPAL                          Low                1       26     487  sstunted         
24 months   GMS-Nepal        NEPAL                          Medium             0      135     487  sstunted         
24 months   GMS-Nepal        NEPAL                          Medium             1       20     487  sstunted         
24 months   JiVitA-3         BANGLADESH                     High               0     1885    8293  sstunted         
24 months   JiVitA-3         BANGLADESH                     High               1      185    8293  sstunted         
24 months   JiVitA-3         BANGLADESH                     Low                0     2735    8293  sstunted         
24 months   JiVitA-3         BANGLADESH                     Low                1      644    8293  sstunted         
24 months   JiVitA-3         BANGLADESH                     Medium             0     2399    8293  sstunted         
24 months   JiVitA-3         BANGLADESH                     Medium             1      445    8293  sstunted         
24 months   JiVitA-4         BANGLADESH                     High               0     1046    4619  sstunted         
24 months   JiVitA-4         BANGLADESH                     High               1       50    4619  sstunted         
24 months   JiVitA-4         BANGLADESH                     Low                0     1495    4619  sstunted         
24 months   JiVitA-4         BANGLADESH                     Low                1      208    4619  sstunted         
24 months   JiVitA-4         BANGLADESH                     Medium             0     1640    4619  sstunted         
24 months   JiVitA-4         BANGLADESH                     Medium             1      180    4619  sstunted         
24 months   LCNI-5           MALAWI                         High               0      155     571  sstunted         
24 months   LCNI-5           MALAWI                         High               1       18     571  sstunted         
24 months   LCNI-5           MALAWI                         Low                0      179     571  sstunted         
24 months   LCNI-5           MALAWI                         Low                1       24     571  sstunted         
24 months   LCNI-5           MALAWI                         Medium             0      169     571  sstunted         
24 months   LCNI-5           MALAWI                         Medium             1       26     571  sstunted         
24 months   MAL-ED           BANGLADESH                     High               0       38     117  sstunted         
24 months   MAL-ED           BANGLADESH                     High               1        2     117  sstunted         
24 months   MAL-ED           BANGLADESH                     Low                0       32     117  sstunted         
24 months   MAL-ED           BANGLADESH                     Low                1        3     117  sstunted         
24 months   MAL-ED           BANGLADESH                     Medium             0       35     117  sstunted         
24 months   MAL-ED           BANGLADESH                     Medium             1        7     117  sstunted         
24 months   MAL-ED           INDIA                          High               0       38     132  sstunted         
24 months   MAL-ED           INDIA                          High               1        4     132  sstunted         
24 months   MAL-ED           INDIA                          Low                0       42     132  sstunted         
24 months   MAL-ED           INDIA                          Low                1        9     132  sstunted         
24 months   MAL-ED           INDIA                          Medium             0       36     132  sstunted         
24 months   MAL-ED           INDIA                          Medium             1        3     132  sstunted         
24 months   MAL-ED           NEPAL                          High               0       38      91  sstunted         
24 months   MAL-ED           NEPAL                          High               1        0      91  sstunted         
24 months   MAL-ED           NEPAL                          Low                0       27      91  sstunted         
24 months   MAL-ED           NEPAL                          Low                1        0      91  sstunted         
24 months   MAL-ED           NEPAL                          Medium             0       25      91  sstunted         
24 months   MAL-ED           NEPAL                          Medium             1        1      91  sstunted         
24 months   MAL-ED           PERU                           High               0       73     164  sstunted         
24 months   MAL-ED           PERU                           High               1        4     164  sstunted         
24 months   MAL-ED           PERU                           Low                0       41     164  sstunted         
24 months   MAL-ED           PERU                           Low                1        3     164  sstunted         
24 months   MAL-ED           PERU                           Medium             0       40     164  sstunted         
24 months   MAL-ED           PERU                           Medium             1        3     164  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   High               0       32      91  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   High               1        2      91  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Low                0       30      91  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Low                1        4      91  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Medium             0       19      91  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Medium             1        4      91  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               0       82     177  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               1       32     177  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                0       29     177  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                1       18     177  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             0       11     177  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             1        5     177  sstunted         
24 months   NIH-Crypto       BANGLADESH                     High               0      196     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     High               1       15     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Low                0      134     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Low                1       10     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Medium             0      148     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Medium             1       11     514  sstunted         
24 months   PROBIT           BELARUS                        High               0      623    3913  sstunted         
24 months   PROBIT           BELARUS                        High               1        4    3913  sstunted         
24 months   PROBIT           BELARUS                        Low                0     1483    3913  sstunted         
24 months   PROBIT           BELARUS                        Low                1       33    3913  sstunted         
24 months   PROBIT           BELARUS                        Medium             0     1745    3913  sstunted         
24 months   PROBIT           BELARUS                        Medium             1       25    3913  sstunted         
24 months   PROVIDE          BANGLADESH                     High               0      195     578  sstunted         
24 months   PROVIDE          BANGLADESH                     High               1        7     578  sstunted         
24 months   PROVIDE          BANGLADESH                     Low                0      170     578  sstunted         
24 months   PROVIDE          BANGLADESH                     Low                1       27     578  sstunted         
24 months   PROVIDE          BANGLADESH                     Medium             0      161     578  sstunted         
24 months   PROVIDE          BANGLADESH                     Medium             1       18     578  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0        5       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1        0       6  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       High               0       92    1594  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       High               1        4    1594  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       Low                0      254    1594  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       Low                1       44    1594  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       Medium             0     1082    1594  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       Medium             1      118    1594  sstunted         


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
