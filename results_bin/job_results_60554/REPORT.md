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

**Outcome Variable:** ever_co

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

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        feducyrs    ever_co   n_cell       n
------------  ---------------  -----------------------------  ---------  --------  -------  ------
0-24 months   COHORTS          GUATEMALA                      High              0      203    1234
0-24 months   COHORTS          GUATEMALA                      High              1       28    1234
0-24 months   COHORTS          GUATEMALA                      Low               0      497    1234
0-24 months   COHORTS          GUATEMALA                      Low               1       61    1234
0-24 months   COHORTS          GUATEMALA                      Medium            0      395    1234
0-24 months   COHORTS          GUATEMALA                      Medium            1       50    1234
0-24 months   COHORTS          INDIA                          High              0      538    1447
0-24 months   COHORTS          INDIA                          High              1       29    1447
0-24 months   COHORTS          INDIA                          Low               0      412    1447
0-24 months   COHORTS          INDIA                          Low               1       60    1447
0-24 months   COHORTS          INDIA                          Medium            0      388    1447
0-24 months   COHORTS          INDIA                          Medium            1       20    1447
0-24 months   COHORTS          PHILIPPINES                    High              0      916    2868
0-24 months   COHORTS          PHILIPPINES                    High              1      112    2868
0-24 months   COHORTS          PHILIPPINES                    Low               0      619    2868
0-24 months   COHORTS          PHILIPPINES                    Low               1      207    2868
0-24 months   COHORTS          PHILIPPINES                    Medium            0      803    2868
0-24 months   COHORTS          PHILIPPINES                    Medium            1      211    2868
0-24 months   GMS-Nepal        NEPAL                          High              0      125     684
0-24 months   GMS-Nepal        NEPAL                          High              1       44     684
0-24 months   GMS-Nepal        NEPAL                          Low               0      197     684
0-24 months   GMS-Nepal        NEPAL                          Low               1       95     684
0-24 months   GMS-Nepal        NEPAL                          Medium            0      160     684
0-24 months   GMS-Nepal        NEPAL                          Medium            1       63     684
0-24 months   JiVitA-3         BANGLADESH                     High              0     6064   25939
0-24 months   JiVitA-3         BANGLADESH                     High              1      410   25939
0-24 months   JiVitA-3         BANGLADESH                     Low               0     9558   25939
0-24 months   JiVitA-3         BANGLADESH                     Low               1     1058   25939
0-24 months   JiVitA-3         BANGLADESH                     Medium            0     8028   25939
0-24 months   JiVitA-3         BANGLADESH                     Medium            1      821   25939
0-24 months   JiVitA-4         BANGLADESH                     High              0     1104    5276
0-24 months   JiVitA-4         BANGLADESH                     High              1      143    5276
0-24 months   JiVitA-4         BANGLADESH                     Low               0     1580    5276
0-24 months   JiVitA-4         BANGLADESH                     Low               1      373    5276
0-24 months   JiVitA-4         BANGLADESH                     Medium            0     1744    5276
0-24 months   JiVitA-4         BANGLADESH                     Medium            1      332    5276
0-24 months   LCNI-5           MALAWI                         High              0      239     813
0-24 months   LCNI-5           MALAWI                         High              1       12     813
0-24 months   LCNI-5           MALAWI                         Low               0      274     813
0-24 months   LCNI-5           MALAWI                         Low               1       17     813
0-24 months   LCNI-5           MALAWI                         Medium            0      259     813
0-24 months   LCNI-5           MALAWI                         Medium            1       12     813
0-24 months   MAL-ED           BANGLADESH                     High              0       50     147
0-24 months   MAL-ED           BANGLADESH                     High              1        4     147
0-24 months   MAL-ED           BANGLADESH                     Low               0       33     147
0-24 months   MAL-ED           BANGLADESH                     Low               1        6     147
0-24 months   MAL-ED           BANGLADESH                     Medium            0       45     147
0-24 months   MAL-ED           BANGLADESH                     Medium            1        9     147
0-24 months   MAL-ED           INDIA                          High              0       36     147
0-24 months   MAL-ED           INDIA                          High              1        8     147
0-24 months   MAL-ED           INDIA                          Low               0       46     147
0-24 months   MAL-ED           INDIA                          Low               1       13     147
0-24 months   MAL-ED           INDIA                          Medium            0       36     147
0-24 months   MAL-ED           INDIA                          Medium            1        8     147
0-24 months   MAL-ED           NEPAL                          High              0       39      98
0-24 months   MAL-ED           NEPAL                          High              1        3      98
0-24 months   MAL-ED           NEPAL                          Low               0       26      98
0-24 months   MAL-ED           NEPAL                          Low               1        2      98
0-24 months   MAL-ED           NEPAL                          Medium            0       21      98
0-24 months   MAL-ED           NEPAL                          Medium            1        7      98
0-24 months   MAL-ED           PERU                           High              0      116     250
0-24 months   MAL-ED           PERU                           High              1        4     250
0-24 months   MAL-ED           PERU                           Low               0       68     250
0-24 months   MAL-ED           PERU                           Low               1        1     250
0-24 months   MAL-ED           PERU                           Medium            0       58     250
0-24 months   MAL-ED           PERU                           Medium            1        3     250
0-24 months   MAL-ED           SOUTH AFRICA                   High              0       40     110
0-24 months   MAL-ED           SOUTH AFRICA                   High              1        3     110
0-24 months   MAL-ED           SOUTH AFRICA                   Low               0       34     110
0-24 months   MAL-ED           SOUTH AFRICA                   Low               1        3     110
0-24 months   MAL-ED           SOUTH AFRICA                   Medium            0       27     110
0-24 months   MAL-ED           SOUTH AFRICA                   Medium            1        3     110
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0      120     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1       10     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       54     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1        7     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0       20     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1        0     211
0-24 months   NIH-Crypto       BANGLADESH                     High              0      279     758
0-24 months   NIH-Crypto       BANGLADESH                     High              1       17     758
0-24 months   NIH-Crypto       BANGLADESH                     Low               0      212     758
0-24 months   NIH-Crypto       BANGLADESH                     Low               1       30     758
0-24 months   NIH-Crypto       BANGLADESH                     Medium            0      196     758
0-24 months   NIH-Crypto       BANGLADESH                     Medium            1       24     758
0-24 months   PROBIT           BELARUS                        High              0     2707   16314
0-24 months   PROBIT           BELARUS                        High              1        0   16314
0-24 months   PROBIT           BELARUS                        Low               0     6409   16314
0-24 months   PROBIT           BELARUS                        Low               1        9   16314
0-24 months   PROBIT           BELARUS                        Medium            0     7182   16314
0-24 months   PROBIT           BELARUS                        Medium            1        7   16314
0-24 months   PROVIDE          BANGLADESH                     High              0      213     700
0-24 months   PROVIDE          BANGLADESH                     High              1       19     700
0-24 months   PROVIDE          BANGLADESH                     Low               0      193     700
0-24 months   PROVIDE          BANGLADESH                     Low               1       45     700
0-24 months   PROVIDE          BANGLADESH                     Medium            0      204     700
0-24 months   PROVIDE          BANGLADESH                     Medium            1       26     700
0-24 months   SAS-CompFeed     INDIA                          High              0      327    1510
0-24 months   SAS-CompFeed     INDIA                          High              1       59    1510
0-24 months   SAS-CompFeed     INDIA                          Low               0      457    1510
0-24 months   SAS-CompFeed     INDIA                          Low               1      186    1510
0-24 months   SAS-CompFeed     INDIA                          Medium            0      377    1510
0-24 months   SAS-CompFeed     INDIA                          Medium            1      104    1510
0-24 months   SAS-FoodSuppl    INDIA                          High              0       76     418
0-24 months   SAS-FoodSuppl    INDIA                          High              1       34     418
0-24 months   SAS-FoodSuppl    INDIA                          Low               0       92     418
0-24 months   SAS-FoodSuppl    INDIA                          Low               1       55     418
0-24 months   SAS-FoodSuppl    INDIA                          Medium            0       95     418
0-24 months   SAS-FoodSuppl    INDIA                          Medium            1       66     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      434    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1       15    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0     1202    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1       68    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0      629    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1       35    2383
0-24 months   ZVITAMBO         ZIMBABWE                       High              0      965   13564
0-24 months   ZVITAMBO         ZIMBABWE                       High              1       27   13564
0-24 months   ZVITAMBO         ZIMBABWE                       Low               0     2131   13564
0-24 months   ZVITAMBO         ZIMBABWE                       Low               1      152   13564
0-24 months   ZVITAMBO         ZIMBABWE                       Medium            0     9909   13564
0-24 months   ZVITAMBO         ZIMBABWE                       Medium            1      380   13564
0-6 months    COHORTS          GUATEMALA                      High              0      187     996
0-6 months    COHORTS          GUATEMALA                      High              1        3     996
0-6 months    COHORTS          GUATEMALA                      Low               0      433     996
0-6 months    COHORTS          GUATEMALA                      Low               1        9     996
0-6 months    COHORTS          GUATEMALA                      Medium            0      359     996
0-6 months    COHORTS          GUATEMALA                      Medium            1        5     996
0-6 months    COHORTS          INDIA                          High              0      547    1417
0-6 months    COHORTS          INDIA                          High              1       10    1417
0-6 months    COHORTS          INDIA                          Low               0      446    1417
0-6 months    COHORTS          INDIA                          Low               1       12    1417
0-6 months    COHORTS          INDIA                          Medium            0      395    1417
0-6 months    COHORTS          INDIA                          Medium            1        7    1417
0-6 months    COHORTS          PHILIPPINES                    High              0     1011    2867
0-6 months    COHORTS          PHILIPPINES                    High              1       17    2867
0-6 months    COHORTS          PHILIPPINES                    Low               0      804    2867
0-6 months    COHORTS          PHILIPPINES                    Low               1       22    2867
0-6 months    COHORTS          PHILIPPINES                    Medium            0      991    2867
0-6 months    COHORTS          PHILIPPINES                    Medium            1       22    2867
0-6 months    GMS-Nepal        NEPAL                          High              0      155     684
0-6 months    GMS-Nepal        NEPAL                          High              1       14     684
0-6 months    GMS-Nepal        NEPAL                          Low               0      279     684
0-6 months    GMS-Nepal        NEPAL                          Low               1       13     684
0-6 months    GMS-Nepal        NEPAL                          Medium            0      214     684
0-6 months    GMS-Nepal        NEPAL                          Medium            1        9     684
0-6 months    JiVitA-3         BANGLADESH                     High              0     6259   25841
0-6 months    JiVitA-3         BANGLADESH                     High              1      185   25841
0-6 months    JiVitA-3         BANGLADESH                     Low               0    10126   25841
0-6 months    JiVitA-3         BANGLADESH                     Low               1      450   25841
0-6 months    JiVitA-3         BANGLADESH                     Medium            0     8439   25841
0-6 months    JiVitA-3         BANGLADESH                     Medium            1      382   25841
0-6 months    JiVitA-4         BANGLADESH                     High              0     1152    4945
0-6 months    JiVitA-4         BANGLADESH                     High              1       23    4945
0-6 months    JiVitA-4         BANGLADESH                     Low               0     1775    4945
0-6 months    JiVitA-4         BANGLADESH                     Low               1       56    4945
0-6 months    JiVitA-4         BANGLADESH                     Medium            0     1889    4945
0-6 months    JiVitA-4         BANGLADESH                     Medium            1       50    4945
0-6 months    LCNI-5           MALAWI                         High              0       73     267
0-6 months    LCNI-5           MALAWI                         High              1        0     267
0-6 months    LCNI-5           MALAWI                         Low               0      104     267
0-6 months    LCNI-5           MALAWI                         Low               1        0     267
0-6 months    LCNI-5           MALAWI                         Medium            0       90     267
0-6 months    LCNI-5           MALAWI                         Medium            1        0     267
0-6 months    MAL-ED           BANGLADESH                     High              0       52     147
0-6 months    MAL-ED           BANGLADESH                     High              1        2     147
0-6 months    MAL-ED           BANGLADESH                     Low               0       38     147
0-6 months    MAL-ED           BANGLADESH                     Low               1        1     147
0-6 months    MAL-ED           BANGLADESH                     Medium            0       53     147
0-6 months    MAL-ED           BANGLADESH                     Medium            1        1     147
0-6 months    MAL-ED           INDIA                          High              0       42     147
0-6 months    MAL-ED           INDIA                          High              1        2     147
0-6 months    MAL-ED           INDIA                          Low               0       56     147
0-6 months    MAL-ED           INDIA                          Low               1        3     147
0-6 months    MAL-ED           INDIA                          Medium            0       42     147
0-6 months    MAL-ED           INDIA                          Medium            1        2     147
0-6 months    MAL-ED           NEPAL                          High              0       40      98
0-6 months    MAL-ED           NEPAL                          High              1        2      98
0-6 months    MAL-ED           NEPAL                          Low               0       28      98
0-6 months    MAL-ED           NEPAL                          Low               1        0      98
0-6 months    MAL-ED           NEPAL                          Medium            0       25      98
0-6 months    MAL-ED           NEPAL                          Medium            1        3      98
0-6 months    MAL-ED           PERU                           High              0      120     250
0-6 months    MAL-ED           PERU                           High              1        0     250
0-6 months    MAL-ED           PERU                           Low               0       69     250
0-6 months    MAL-ED           PERU                           Low               1        0     250
0-6 months    MAL-ED           PERU                           Medium            0       61     250
0-6 months    MAL-ED           PERU                           Medium            1        0     250
0-6 months    MAL-ED           SOUTH AFRICA                   High              0       42     110
0-6 months    MAL-ED           SOUTH AFRICA                   High              1        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   Low               0       37     110
0-6 months    MAL-ED           SOUTH AFRICA                   Low               1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   Medium            0       30     110
0-6 months    MAL-ED           SOUTH AFRICA                   Medium            1        0     110
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0      128     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1        2     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       60     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1        1     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0       20     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1        0     211
0-6 months    NIH-Crypto       BANGLADESH                     High              0      291     758
0-6 months    NIH-Crypto       BANGLADESH                     High              1        5     758
0-6 months    NIH-Crypto       BANGLADESH                     Low               0      234     758
0-6 months    NIH-Crypto       BANGLADESH                     Low               1        8     758
0-6 months    NIH-Crypto       BANGLADESH                     Medium            0      216     758
0-6 months    NIH-Crypto       BANGLADESH                     Medium            1        4     758
0-6 months    PROBIT           BELARUS                        High              0     2707   16309
0-6 months    PROBIT           BELARUS                        High              1        0   16309
0-6 months    PROBIT           BELARUS                        Low               0     6412   16309
0-6 months    PROBIT           BELARUS                        Low               1        6   16309
0-6 months    PROBIT           BELARUS                        Medium            0     7179   16309
0-6 months    PROBIT           BELARUS                        Medium            1        5   16309
0-6 months    PROVIDE          BANGLADESH                     High              0      224     700
0-6 months    PROVIDE          BANGLADESH                     High              1        8     700
0-6 months    PROVIDE          BANGLADESH                     Low               0      225     700
0-6 months    PROVIDE          BANGLADESH                     Low               1       13     700
0-6 months    PROVIDE          BANGLADESH                     Medium            0      221     700
0-6 months    PROVIDE          BANGLADESH                     Medium            1        9     700
0-6 months    SAS-CompFeed     INDIA                          High              0      370    1501
0-6 months    SAS-CompFeed     INDIA                          High              1       14    1501
0-6 months    SAS-CompFeed     INDIA                          Low               0      587    1501
0-6 months    SAS-CompFeed     INDIA                          Low               1       53    1501
0-6 months    SAS-CompFeed     INDIA                          Medium            0      438    1501
0-6 months    SAS-CompFeed     INDIA                          Medium            1       39    1501
0-6 months    SAS-FoodSuppl    INDIA                          High              0      104     416
0-6 months    SAS-FoodSuppl    INDIA                          High              1        6     416
0-6 months    SAS-FoodSuppl    INDIA                          Low               0      136     416
0-6 months    SAS-FoodSuppl    INDIA                          Low               1       10     416
0-6 months    SAS-FoodSuppl    INDIA                          Medium            0      144     416
0-6 months    SAS-FoodSuppl    INDIA                          Medium            1       16     416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      447    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        2    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0     1255    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1       15    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0      662    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        2    2383
0-6 months    ZVITAMBO         ZIMBABWE                       High              0      978   13471
0-6 months    ZVITAMBO         ZIMBABWE                       High              1        7   13471
0-6 months    ZVITAMBO         ZIMBABWE                       Low               0     2229   13471
0-6 months    ZVITAMBO         ZIMBABWE                       Low               1       36   13471
0-6 months    ZVITAMBO         ZIMBABWE                       Medium            0    10101   13471
0-6 months    ZVITAMBO         ZIMBABWE                       Medium            1      120   13471
6-24 months   COHORTS          GUATEMALA                      High              0      184    1124
6-24 months   COHORTS          GUATEMALA                      High              1       26    1124
6-24 months   COHORTS          GUATEMALA                      Low               0      454    1124
6-24 months   COHORTS          GUATEMALA                      Low               1       57    1124
6-24 months   COHORTS          GUATEMALA                      Medium            0      357    1124
6-24 months   COHORTS          GUATEMALA                      Medium            1       46    1124
6-24 months   COHORTS          INDIA                          High              0      525    1405
6-24 months   COHORTS          INDIA                          High              1       24    1405
6-24 months   COHORTS          INDIA                          Low               0      403    1405
6-24 months   COHORTS          INDIA                          Low               1       56    1405
6-24 months   COHORTS          INDIA                          Medium            0      379    1405
6-24 months   COHORTS          INDIA                          Medium            1       18    1405
6-24 months   COHORTS          PHILIPPINES                    High              0      817    2654
6-24 months   COHORTS          PHILIPPINES                    High              1      105    2654
6-24 months   COHORTS          PHILIPPINES                    Low               0      577    2654
6-24 months   COHORTS          PHILIPPINES                    Low               1      201    2654
6-24 months   COHORTS          PHILIPPINES                    Medium            0      751    2654
6-24 months   COHORTS          PHILIPPINES                    Medium            1      203    2654
6-24 months   GMS-Nepal        NEPAL                          High              0      106     589
6-24 months   GMS-Nepal        NEPAL                          High              1       39     589
6-24 months   GMS-Nepal        NEPAL                          Low               0      160     589
6-24 months   GMS-Nepal        NEPAL                          Low               1       93     589
6-24 months   GMS-Nepal        NEPAL                          Medium            0      131     589
6-24 months   GMS-Nepal        NEPAL                          Medium            1       60     589
6-24 months   JiVitA-3         BANGLADESH                     High              0     4144   16590
6-24 months   JiVitA-3         BANGLADESH                     High              1      245   16590
6-24 months   JiVitA-3         BANGLADESH                     Low               0     5792   16590
6-24 months   JiVitA-3         BANGLADESH                     Low               1      693   16590
6-24 months   JiVitA-3         BANGLADESH                     Medium            0     5219   16590
6-24 months   JiVitA-3         BANGLADESH                     Medium            1      497   16590
6-24 months   JiVitA-4         BANGLADESH                     High              0     1113    5272
6-24 months   JiVitA-4         BANGLADESH                     High              1      132    5272
6-24 months   JiVitA-4         BANGLADESH                     Low               0     1612    5272
6-24 months   JiVitA-4         BANGLADESH                     Low               1      340    5272
6-24 months   JiVitA-4         BANGLADESH                     Medium            0     1771    5272
6-24 months   JiVitA-4         BANGLADESH                     Medium            1      304    5272
6-24 months   LCNI-5           MALAWI                         High              0      235     802
6-24 months   LCNI-5           MALAWI                         High              1       12     802
6-24 months   LCNI-5           MALAWI                         Low               0      272     802
6-24 months   LCNI-5           MALAWI                         Low               1       17     802
6-24 months   LCNI-5           MALAWI                         Medium            0      254     802
6-24 months   LCNI-5           MALAWI                         Medium            1       12     802
6-24 months   MAL-ED           BANGLADESH                     High              0       45     131
6-24 months   MAL-ED           BANGLADESH                     High              1        3     131
6-24 months   MAL-ED           BANGLADESH                     Low               0       31     131
6-24 months   MAL-ED           BANGLADESH                     Low               1        6     131
6-24 months   MAL-ED           BANGLADESH                     Medium            0       37     131
6-24 months   MAL-ED           BANGLADESH                     Medium            1        9     131
6-24 months   MAL-ED           INDIA                          High              0       36     137
6-24 months   MAL-ED           INDIA                          High              1        7     137
6-24 months   MAL-ED           INDIA                          Low               0       41     137
6-24 months   MAL-ED           INDIA                          Low               1       13     137
6-24 months   MAL-ED           INDIA                          Medium            0       32     137
6-24 months   MAL-ED           INDIA                          Medium            1        8     137
6-24 months   MAL-ED           NEPAL                          High              0       38      94
6-24 months   MAL-ED           NEPAL                          High              1        1      94
6-24 months   MAL-ED           NEPAL                          Low               0       25      94
6-24 months   MAL-ED           NEPAL                          Low               1        2      94
6-24 months   MAL-ED           NEPAL                          Medium            0       23      94
6-24 months   MAL-ED           NEPAL                          Medium            1        5      94
6-24 months   MAL-ED           PERU                           High              0      102     223
6-24 months   MAL-ED           PERU                           High              1        4     223
6-24 months   MAL-ED           PERU                           Low               0       59     223
6-24 months   MAL-ED           PERU                           Low               1        1     223
6-24 months   MAL-ED           PERU                           Medium            0       54     223
6-24 months   MAL-ED           PERU                           Medium            1        3     223
6-24 months   MAL-ED           SOUTH AFRICA                   High              0       34      96
6-24 months   MAL-ED           SOUTH AFRICA                   High              1        2      96
6-24 months   MAL-ED           SOUTH AFRICA                   Low               0       33      96
6-24 months   MAL-ED           SOUTH AFRICA                   Low               1        3      96
6-24 months   MAL-ED           SOUTH AFRICA                   Medium            0       21      96
6-24 months   MAL-ED           SOUTH AFRICA                   Medium            1        3      96
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0      119     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1        9     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       49     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1        6     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0       19     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1        0     202
6-24 months   NIH-Crypto       BANGLADESH                     High              0      273     730
6-24 months   NIH-Crypto       BANGLADESH                     High              1       13     730
6-24 months   NIH-Crypto       BANGLADESH                     Low               0      202     730
6-24 months   NIH-Crypto       BANGLADESH                     Low               1       27     730
6-24 months   NIH-Crypto       BANGLADESH                     Medium            0      192     730
6-24 months   NIH-Crypto       BANGLADESH                     Medium            1       23     730
6-24 months   PROBIT           BELARUS                        High              0     2636   16027
6-24 months   PROBIT           BELARUS                        High              1        0   16027
6-24 months   PROBIT           BELARUS                        Low               0     6318   16027
6-24 months   PROBIT           BELARUS                        Low               1        3   16027
6-24 months   PROBIT           BELARUS                        Medium            0     7068   16027
6-24 months   PROBIT           BELARUS                        Medium            1        2   16027
6-24 months   PROVIDE          BANGLADESH                     High              0      198     614
6-24 months   PROVIDE          BANGLADESH                     High              1       16     614
6-24 months   PROVIDE          BANGLADESH                     Low               0      168     614
6-24 months   PROVIDE          BANGLADESH                     Low               1       39     614
6-24 months   PROVIDE          BANGLADESH                     Medium            0      173     614
6-24 months   PROVIDE          BANGLADESH                     Medium            1       20     614
6-24 months   SAS-CompFeed     INDIA                          High              0      317    1386
6-24 months   SAS-CompFeed     INDIA                          High              1       53    1386
6-24 months   SAS-CompFeed     INDIA                          Low               0      402    1386
6-24 months   SAS-CompFeed     INDIA                          Low               1      170    1386
6-24 months   SAS-CompFeed     INDIA                          Medium            0      355    1386
6-24 months   SAS-CompFeed     INDIA                          Medium            1       89    1386
6-24 months   SAS-FoodSuppl    INDIA                          High              0       75     401
6-24 months   SAS-FoodSuppl    INDIA                          High              1       32     401
6-24 months   SAS-FoodSuppl    INDIA                          Low               0       89     401
6-24 months   SAS-FoodSuppl    INDIA                          Low               1       51     401
6-24 months   SAS-FoodSuppl    INDIA                          Medium            0       92     401
6-24 months   SAS-FoodSuppl    INDIA                          Medium            1       62     401
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      361    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1       14    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0     1008    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1       63    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0      527    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1       35    2008
6-24 months   ZVITAMBO         ZIMBABWE                       High              0      696   10502
6-24 months   ZVITAMBO         ZIMBABWE                       High              1       21   10502
6-24 months   ZVITAMBO         ZIMBABWE                       Low               0     1691   10502
6-24 months   ZVITAMBO         ZIMBABWE                       Low               1      122   10502
6-24 months   ZVITAMBO         ZIMBABWE                       Medium            0     7700   10502
6-24 months   ZVITAMBO         ZIMBABWE                       Medium            1      272   10502


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/bcaa620c-6e68-442d-899f-d9b3dd7ea023/bc1cc750-b6da-44da-a50a-f4f2c5b0b667/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bcaa620c-6e68-442d-899f-d9b3dd7ea023/bc1cc750-b6da-44da-a50a-f4f2c5b0b667/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bcaa620c-6e68-442d-899f-d9b3dd7ea023/bc1cc750-b6da-44da-a50a-f4f2c5b0b667/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bcaa620c-6e68-442d-899f-d9b3dd7ea023/bc1cc750-b6da-44da-a50a-f4f2c5b0b667/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                0.1332903   0.0866091   0.1799715
0-24 months   COHORTS          GUATEMALA                      Low                  NA                0.1080921   0.0820530   0.1341312
0-24 months   COHORTS          GUATEMALA                      Medium               NA                0.1124113   0.0817052   0.1431173
0-24 months   COHORTS          INDIA                          High                 NA                0.0538379   0.0334781   0.0741976
0-24 months   COHORTS          INDIA                          Low                  NA                0.1074412   0.0730768   0.1418056
0-24 months   COHORTS          INDIA                          Medium               NA                0.0452383   0.0248911   0.0655856
0-24 months   COHORTS          PHILIPPINES                    High                 NA                0.1526303   0.1242213   0.1810393
0-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.2091473   0.1772822   0.2410123
0-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.2014696   0.1745654   0.2283739
0-24 months   GMS-Nepal        NEPAL                          High                 NA                0.3108854   0.2375212   0.3842496
0-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.2860587   0.2341394   0.3379781
0-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.2981096   0.2345446   0.3616746
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.0872019   0.0735501   0.1008536
0-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.0904270   0.0833412   0.0975129
0-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.0886668   0.0814971   0.0958364
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.1471630   0.1133842   0.1809419
0-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.1660136   0.1454165   0.1866108
0-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.1670435   0.1474815   0.1866055
0-24 months   LCNI-5           MALAWI                         High                 NA                0.0495292   0.0224252   0.0766331
0-24 months   LCNI-5           MALAWI                         Low                  NA                0.0567898   0.0305353   0.0830442
0-24 months   LCNI-5           MALAWI                         Medium               NA                0.0437818   0.0192700   0.0682937
0-24 months   MAL-ED           INDIA                          High                 NA                0.1818182   0.0674652   0.2961712
0-24 months   MAL-ED           INDIA                          Low                  NA                0.2203390   0.1142176   0.3264604
0-24 months   MAL-ED           INDIA                          Medium               NA                0.1818182   0.0674652   0.2961712
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.0743798   0.0354606   0.1132990
0-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.1241270   0.0748934   0.1733605
0-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.1041743   0.0615764   0.1467721
0-24 months   PROVIDE          BANGLADESH                     High                 NA                0.0870363   0.0513968   0.1226759
0-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.1849177   0.1349197   0.2349156
0-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.1081212   0.0674925   0.1487498
0-24 months   SAS-CompFeed     INDIA                          High                 NA                0.2054417   0.1701828   0.2407007
0-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.2404166   0.1862576   0.2945757
0-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.2245507   0.1642805   0.2848210
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                0.3085904   0.2221356   0.3950451
0-24 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.3703850   0.2921225   0.4486474
0-24 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.4115013   0.3342005   0.4888021
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0329061   0.0160943   0.0497178
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0534578   0.0410519   0.0658637
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0542565   0.0370611   0.0714519
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.0292885   0.0181684   0.0404085
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.0677016   0.0562054   0.0791978
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.0373861   0.0335898   0.0411823
0-6 months    COHORTS          INDIA                          High                 NA                0.0179533   0.0069224   0.0289843
0-6 months    COHORTS          INDIA                          Low                  NA                0.0262009   0.0115669   0.0408348
0-6 months    COHORTS          INDIA                          Medium               NA                0.0174129   0.0046218   0.0302041
0-6 months    COHORTS          PHILIPPINES                    High                 NA                0.0170352   0.0089501   0.0251203
0-6 months    COHORTS          PHILIPPINES                    Low                  NA                0.0256805   0.0148983   0.0364626
0-6 months    COHORTS          PHILIPPINES                    Medium               NA                0.0228472   0.0134035   0.0322910
0-6 months    GMS-Nepal        NEPAL                          High                 NA                0.0828402   0.0412525   0.1244280
0-6 months    GMS-Nepal        NEPAL                          Low                  NA                0.0445205   0.0208469   0.0681942
0-6 months    GMS-Nepal        NEPAL                          Medium               NA                0.0403587   0.0145102   0.0662073
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                0.0406696   0.0316913   0.0496479
0-6 months    JiVitA-3         BANGLADESH                     Low                  NA                0.0372723   0.0328158   0.0417289
0-6 months    JiVitA-3         BANGLADESH                     Medium               NA                0.0410912   0.0359705   0.0462118
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                0.0202044   0.0093971   0.0310118
0-6 months    JiVitA-4         BANGLADESH                     Low                  NA                0.0257142   0.0185690   0.0328594
0-6 months    JiVitA-4         BANGLADESH                     Medium               NA                0.0250463   0.0163320   0.0337606
0-6 months    PROVIDE          BANGLADESH                     High                 NA                0.0344828   0.0109867   0.0579788
0-6 months    PROVIDE          BANGLADESH                     Low                  NA                0.0546218   0.0257313   0.0835124
0-6 months    PROVIDE          BANGLADESH                     Medium               NA                0.0391304   0.0140529   0.0642079
0-6 months    SAS-CompFeed     INDIA                          High                 NA                0.0549757   0.0229059   0.0870456
0-6 months    SAS-CompFeed     INDIA                          Low                  NA                0.0724204   0.0423058   0.1025350
0-6 months    SAS-CompFeed     INDIA                          Medium               NA                0.0835788   0.0505109   0.1166467
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                0.0545455   0.0120567   0.0970342
0-6 months    SAS-FoodSuppl    INDIA                          Low                  NA                0.0684932   0.0274717   0.1095146
0-6 months    SAS-FoodSuppl    INDIA                          Medium               NA                0.1000000   0.0534594   0.1465406
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                0.0071066   0.0018606   0.0123526
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                0.0158940   0.0107433   0.0210448
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                0.0117405   0.0096522   0.0138289
6-24 months   COHORTS          GUATEMALA                      High                 NA                0.1342877   0.0856956   0.1828797
6-24 months   COHORTS          GUATEMALA                      Low                  NA                0.1105823   0.0831586   0.1380060
6-24 months   COHORTS          GUATEMALA                      Medium               NA                0.1125048   0.0809656   0.1440439
6-24 months   COHORTS          INDIA                          High                 NA                0.0571303   0.0316289   0.0826316
6-24 months   COHORTS          INDIA                          Low                  NA                0.1164679   0.0641292   0.1688067
6-24 months   COHORTS          INDIA                          Medium               NA                0.0476191   0.0252178   0.0700203
6-24 months   COHORTS          PHILIPPINES                    High                 NA                0.1461589   0.1178416   0.1744761
6-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.2212013   0.1888822   0.2535204
6-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.2071718   0.1793042   0.2350393
6-24 months   GMS-Nepal        NEPAL                          High                 NA                0.3282643   0.2503736   0.4061549
6-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.3316161   0.2722466   0.3909856
6-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.3295222   0.2523007   0.4067437
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.0797673   0.0629599   0.0965746
6-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.0935347   0.0847890   0.1022805
6-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.0846119   0.0757289   0.0934949
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.1485361   0.1166262   0.1804461
6-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.1532996   0.1318693   0.1747300
6-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.1510901   0.1319127   0.1702676
6-24 months   LCNI-5           MALAWI                         High                 NA                0.0503230   0.0228711   0.0777750
6-24 months   LCNI-5           MALAWI                         Low                  NA                0.0566997   0.0302083   0.0831912
6-24 months   LCNI-5           MALAWI                         Medium               NA                0.0450186   0.0199104   0.0701268
6-24 months   MAL-ED           INDIA                          High                 NA                0.1627907   0.0520425   0.2735389
6-24 months   MAL-ED           INDIA                          Low                  NA                0.2407407   0.1262918   0.3551897
6-24 months   MAL-ED           INDIA                          Medium               NA                0.2000000   0.0755861   0.3244139
6-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.0629571   0.0256522   0.1002620
6-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.1134017   0.0633099   0.1634936
6-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.1043226   0.0605505   0.1480946
6-24 months   PROVIDE          BANGLADESH                     High                 NA                0.0782679   0.0427111   0.1138248
6-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.1811889   0.1274793   0.2348984
6-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.0984538   0.0552698   0.1416377
6-24 months   SAS-CompFeed     INDIA                          High                 NA                0.1991989   0.1473030   0.2510947
6-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.2375803   0.1897807   0.2853798
6-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.2187268   0.1699779   0.2674756
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                0.2958360   0.2092570   0.3824150
6-24 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.3590872   0.2791767   0.4389977
6-24 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.4066235   0.3275192   0.4857278
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0389922   0.0198861   0.0580982
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0586614   0.0445513   0.0727715
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0635133   0.0435162   0.0835104
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.0296913   0.0164511   0.0429314
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.0708856   0.0573708   0.0844005
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.0341211   0.0300806   0.0381617


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1126418   0.0949950   0.1302886
0-24 months   COHORTS          INDIA                          NA                   NA                0.0753283   0.0617252   0.0889313
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1847978   0.1705903   0.1990052
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.2953216   0.2611095   0.3295338
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0882455   0.0842753   0.0922157
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1607278   0.1492347   0.1722209
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.0504305   0.0353790   0.0654820
0-24 months   MAL-ED           INDIA                          NA                   NA                0.1972789   0.1327292   0.2618286
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2311258   0.1911027   0.2711489
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0495174   0.0408052   0.0582296
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0412120   0.0378667   0.0445574
0-6 months    COHORTS          INDIA                          NA                   NA                0.0204658   0.0130911   0.0278404
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0212766   0.0159935   0.0265597
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.0526316   0.0358852   0.0693779
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0393561   0.0368043   0.0419078
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.0260870   0.0207411   0.0314328
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.0706196   0.0480792   0.0931600
0-6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.0769231   0.0512858   0.1025603
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0121001   0.0102537   0.0139464
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1147687   0.0961264   0.1334109
6-24 months   COHORTS          INDIA                          NA                   NA                0.0697509   0.0564268   0.0830750
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1917860   0.1768046   0.2067673
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.3259762   0.2880892   0.3638632
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0864979   0.0817318   0.0912639
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1471927   0.1364565   0.1579289
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.0511222   0.0358697   0.0663747
6-24 months   MAL-ED           INDIA                          NA                   NA                0.2043796   0.1366076   0.2721516
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2251082   0.1905625   0.2596539
6-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0557769   0.0457368   0.0658170
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0395163   0.0357901   0.0432425


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      Low                  High              0.8109525   0.5301867   1.240401
0-24 months   COHORTS          GUATEMALA                      Medium               High              0.8433568   0.5410390   1.314601
0-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA                          Low                  High              1.9956438   1.2161663   3.274712
0-24 months   COHORTS          INDIA                          Medium               High              0.8402699   0.4670016   1.511887
0-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    Low                  High              1.3702866   1.0786110   1.740836
0-24 months   COHORTS          PHILIPPINES                    Medium               High              1.3199845   1.0522239   1.655882
0-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal        NEPAL                          Low                  High              0.9201422   0.6865658   1.233183
0-24 months   GMS-Nepal        NEPAL                          Medium               High              0.9589052   0.7012467   1.311235
0-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     Low                  High              1.0369850   0.8735001   1.231068
0-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.0167991   0.8545076   1.209914
0-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.1280933   0.8729326   1.457838
0-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.1350915   0.8738600   1.474416
0-24 months   LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         Low                  High              1.1465922   0.5597320   2.348756
0-24 months   LCNI-5           MALAWI                         Medium               High              0.8839609   0.4040881   1.933704
0-24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           INDIA                          Low                  High              1.2118644   0.5488063   2.676017
0-24 months   MAL-ED           INDIA                          Medium               High              1.0000000   0.4108786   2.433809
0-24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     Low                  High              1.6688261   0.8649108   3.219963
0-24 months   NIH-Crypto       BANGLADESH                     Medium               High              1.4005723   0.7205638   2.722317
0-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     Low                  High              2.1246030   1.3017621   3.467560
0-24 months   PROVIDE          BANGLADESH                     Medium               High              1.2422531   0.7135733   2.162627
0-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          Low                  High              1.1702425   0.9359848   1.463130
0-24 months   SAS-CompFeed     INDIA                          Medium               High              1.0930142   0.8231604   1.451333
0-24 months   SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl    INDIA                          Low                  High              1.2002480   0.8452911   1.704259
0-24 months   SAS-FoodSuppl    INDIA                          Medium               High              1.3334873   0.9517588   1.868318
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.6245574   0.9269471   2.847182
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.6488306   0.9037935   3.008035
0-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              2.3115439   1.5249894   3.503785
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.2764772   0.8616761   1.890959
0-6 months    COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    COHORTS          INDIA                          Low                  High              1.4593886   0.6361470   3.347992
0-6 months    COHORTS          INDIA                          Medium               High              0.9699005   0.3722365   2.527175
0-6 months    COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    Low                  High              1.5074942   0.8000068   2.840649
0-6 months    COHORTS          PHILIPPINES                    Medium               High              1.3411784   0.7150254   2.515658
0-6 months    GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal        NEPAL                          Low                  High              0.5374266   0.2586573   1.116641
0-6 months    GMS-Nepal        NEPAL                          Medium               High              0.4871877   0.2159127   1.099295
0-6 months    JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3         BANGLADESH                     Low                  High              0.9164672   0.7232334   1.161329
0-6 months    JiVitA-3         BANGLADESH                     Medium               High              1.0103666   0.7878727   1.295692
0-6 months    JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4         BANGLADESH                     Low                  High              1.2726997   0.6959714   2.327344
0-6 months    JiVitA-4         BANGLADESH                     Medium               High              1.2396418   0.6560997   2.342193
0-6 months    PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     Low                  High              1.5840336   0.6685761   3.752995
0-6 months    PROVIDE          BANGLADESH                     Medium               High              1.1347826   0.4453148   2.891733
0-6 months    SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          Low                  High              1.3173158   0.8014323   2.165274
0-6 months    SAS-CompFeed     INDIA                          Medium               High              1.5202854   0.8139044   2.839729
0-6 months    SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    SAS-FoodSuppl    INDIA                          Low                  High              1.2557078   0.4700637   3.354443
0-6 months    SAS-FoodSuppl    INDIA                          Medium               High              1.8333333   0.7398793   4.542783
0-6 months    ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  High              2.2365184   0.9987331   5.008360
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               High              1.6520609   0.7731430   3.530143
6-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6-24 months   COHORTS          GUATEMALA                      Low                  High              0.8234733   0.5309873   1.277071
6-24 months   COHORTS          GUATEMALA                      Medium               High              0.8377892   0.5299148   1.324535
6-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   COHORTS          INDIA                          Low                  High              2.0386379   1.0822785   3.840088
6-24 months   COHORTS          INDIA                          Medium               High              0.8335170   0.4363938   1.592027
6-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES                    Low                  High              1.5134305   1.1888693   1.926597
6-24 months   COHORTS          PHILIPPINES                    Medium               High              1.4174424   1.1221920   1.790374
6-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal        NEPAL                          Low                  High              1.0102109   0.7526895   1.355839
6-24 months   GMS-Nepal        NEPAL                          Medium               High              1.0038320   0.7208767   1.397852
6-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH                     Low                  High              1.1725950   0.9311577   1.476634
6-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.0607344   0.8382839   1.342215
6-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.0320698   0.8004528   1.330707
6-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.0171944   0.7874189   1.314020
6-24 months   LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
6-24 months   LCNI-5           MALAWI                         Low                  High              1.1267150   0.5490881   2.311991
6-24 months   LCNI-5           MALAWI                         Medium               High              0.8945925   0.4098656   1.952581
6-24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           INDIA                          Low                  High              1.4788360   0.6448725   3.391300
6-24 months   MAL-ED           INDIA                          Medium               High              1.2285714   0.4887082   3.088526
6-24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH                     Low                  High              1.8012549   0.8596072   3.774421
6-24 months   NIH-Crypto       BANGLADESH                     Medium               High              1.6570433   0.8007533   3.429012
6-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   PROVIDE          BANGLADESH                     Low                  High              2.3149817   1.3467104   3.979430
6-24 months   PROVIDE          BANGLADESH                     Medium               High              1.2579065   0.6692785   2.364231
6-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA                          Low                  High              1.1926788   0.9134367   1.557287
6-24 months   SAS-CompFeed     INDIA                          Medium               High              1.0980321   0.8213882   1.467850
6-24 months   SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl    INDIA                          Low                  High              1.2138049   0.8408639   1.752153
6-24 months   SAS-FoodSuppl    INDIA                          Medium               High              1.3744897   0.9670723   1.953548
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.5044405   0.8716325   2.596669
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.6288732   0.9097053   2.916580
6-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              2.3874240   1.4699338   3.877585
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.1491978   0.7244600   1.822952


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0206485   -0.0628777   0.0215808
0-24 months   COHORTS          INDIA                          High                 NA                 0.0214904    0.0031126   0.0398682
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0321675    0.0061559   0.0581790
0-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0155637   -0.0807206   0.0495931
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0010436   -0.0118802   0.0139675
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0135648   -0.0182740   0.0454036
0-24 months   LCNI-5           MALAWI                         High                 NA                 0.0009013   -0.0219425   0.0237452
0-24 months   MAL-ED           INDIA                          High                 NA                 0.0154607   -0.0815707   0.1124922
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0192877   -0.0159870   0.0545625
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0415351    0.0092438   0.0738264
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0256841   -0.0109756   0.0623438
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0622230   -0.0132816   0.1377277
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0166113    0.0006894   0.0325333
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0119236    0.0010283   0.0228188
0-6 months    COHORTS          INDIA                          High                 NA                 0.0025125   -0.0064544   0.0114793
0-6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0042414   -0.0026990   0.0111818
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0302087   -0.0641987   0.0037814
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0013135   -0.0097885   0.0071615
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0058825   -0.0038256   0.0155907
0-6 months    PROVIDE          BANGLADESH                     High                 NA                 0.0083744   -0.0119125   0.0286613
0-6 months    SAS-CompFeed     INDIA                          High                 NA                 0.0156438   -0.0121063   0.0433940
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                 0.0223776   -0.0164533   0.0612085
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0049935   -0.0001935   0.0101805
6-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0195190   -0.0634331   0.0243951
6-24 months   COHORTS          INDIA                          High                 NA                 0.0126206   -0.0104130   0.0356542
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0456271    0.0195994   0.0716549
6-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0022880   -0.0723008   0.0677247
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0067306   -0.0096247   0.0230859
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0013434   -0.0316442   0.0289574
6-24 months   LCNI-5           MALAWI                         High                 NA                 0.0007992   -0.0223344   0.0239327
6-24 months   MAL-ED           INDIA                          High                 NA                 0.0415889   -0.0541133   0.1372910
6-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0233443   -0.0111158   0.0578044
6-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0438819    0.0113544   0.0764094
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0259093   -0.0168360   0.0686547
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0657600   -0.0099520   0.1414721
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0167847   -0.0013536   0.0349230
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0098250   -0.0031183   0.0227683


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.1833108   -0.6236758    0.1376207
0-24 months   COHORTS          INDIA                          High                 NA                 0.2852901    0.0026152    0.4878504
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.1740684    0.0213859    0.3029295
0-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0527010   -0.2983158    0.1464485
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0118265   -0.1460583    0.1479606
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0843960   -0.1368216    0.2625662
0-24 months   LCNI-5           MALAWI                         High                 NA                 0.0178729   -0.5575415    0.3807076
0-24 months   MAL-ED           INDIA                          High                 NA                 0.0783699   -0.5709251    0.4592982
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.2059171   -0.2723467    0.5044058
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.3230506    0.0297464    0.5276900
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.1111260   -0.0502382    0.2476974
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.1678015   -0.0628320    0.3483877
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.3354647   -0.0707086    0.5875562
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.2893222   -0.0295254    0.5094215
0-6 months    COHORTS          INDIA                          High                 NA                 0.1227636   -0.4419798    0.4663283
0-6 months    COHORTS          PHILIPPINES                    High                 NA                 0.1993457   -0.1980880    0.4649414
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.5739645   -1.3399725   -0.0587151
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0333755   -0.2726711    0.1609263
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.2254967   -0.2525754    0.5211024
0-6 months    PROVIDE          BANGLADESH                     High                 NA                 0.1954023   -0.4407600    0.5506695
0-6 months    SAS-CompFeed     INDIA                          High                 NA                 0.2215227   -0.2767280    0.5253281
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                 0.2909091   -0.4282555    0.6479552
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.4126810   -0.2091213    0.7147155
6-24 months   COHORTS          GUATEMALA                      High                 NA                -0.1700724   -0.6220719    0.1559749
6-24 months   COHORTS          INDIA                          High                 NA                 0.1809384   -0.2236206    0.4517403
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.2379065    0.0906920    0.3612873
6-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0070190   -0.2464742    0.1864354
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0778125   -0.1318500    0.2486373
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0091268   -0.2375060    0.1771054
6-24 months   LCNI-5           MALAWI                         High                 NA                 0.0156323   -0.5587353    0.3783551
6-24 months   MAL-ED           INDIA                          High                 NA                 0.2034884   -0.4286845    0.5559336
6-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.2704975   -0.2532764    0.5753739
6-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.3592464    0.0446317    0.5702546
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.1150973   -0.0952913    0.2850735
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.1818605   -0.0565402    0.3664678
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.3009257   -0.1049460    0.5577116
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.2486322   -0.1609148    0.5136994
