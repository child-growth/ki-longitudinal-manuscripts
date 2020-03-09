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

**Outcome Variable:** wast_rec90d

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

agecat        studyid          country                        feducyrs    wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  ---------  ------------  -------  -----
0-24 months   COHORTS          GUATEMALA                      High                  0       37    358
0-24 months   COHORTS          GUATEMALA                      High                  1       38    358
0-24 months   COHORTS          GUATEMALA                      Low                   0       88    358
0-24 months   COHORTS          GUATEMALA                      Low                   1       71    358
0-24 months   COHORTS          GUATEMALA                      Medium                0       74    358
0-24 months   COHORTS          GUATEMALA                      Medium                1       50    358
0-24 months   COHORTS          INDIA                          High                  0      143    539
0-24 months   COHORTS          INDIA                          High                  1       50    539
0-24 months   COHORTS          INDIA                          Low                   0      152    539
0-24 months   COHORTS          INDIA                          Low                   1       34    539
0-24 months   COHORTS          INDIA                          Medium                0      106    539
0-24 months   COHORTS          INDIA                          Medium                1       54    539
0-24 months   COHORTS          PHILIPPINES                    High                  0      174   1574
0-24 months   COHORTS          PHILIPPINES                    High                  1      336   1574
0-24 months   COHORTS          PHILIPPINES                    Low                   0      214   1574
0-24 months   COHORTS          PHILIPPINES                    Low                   1      281   1574
0-24 months   COHORTS          PHILIPPINES                    Medium                0      227   1574
0-24 months   COHORTS          PHILIPPINES                    Medium                1      342   1574
0-24 months   GMS-Nepal        NEPAL                          High                  0       77    641
0-24 months   GMS-Nepal        NEPAL                          High                  1       79    641
0-24 months   GMS-Nepal        NEPAL                          Low                   0      127    641
0-24 months   GMS-Nepal        NEPAL                          Low                   1      141    641
0-24 months   GMS-Nepal        NEPAL                          Medium                0       91    641
0-24 months   GMS-Nepal        NEPAL                          Medium                1      126    641
0-24 months   JiVitA-3         BANGLADESH                     High                  0      905   7280
0-24 months   JiVitA-3         BANGLADESH                     High                  1      797   7280
0-24 months   JiVitA-3         BANGLADESH                     Low                   0     1846   7280
0-24 months   JiVitA-3         BANGLADESH                     Low                   1     1242   7280
0-24 months   JiVitA-3         BANGLADESH                     Medium                0     1449   7280
0-24 months   JiVitA-3         BANGLADESH                     Medium                1     1041   7280
0-24 months   JiVitA-4         BANGLADESH                     High                  0      300   2003
0-24 months   JiVitA-4         BANGLADESH                     High                  1      113   2003
0-24 months   JiVitA-4         BANGLADESH                     Low                   0      589   2003
0-24 months   JiVitA-4         BANGLADESH                     Low                   1      203   2003
0-24 months   JiVitA-4         BANGLADESH                     Medium                0      597   2003
0-24 months   JiVitA-4         BANGLADESH                     Medium                1      201   2003
0-24 months   LCNI-5           MALAWI                         High                  0       13     77
0-24 months   LCNI-5           MALAWI                         High                  1        4     77
0-24 months   LCNI-5           MALAWI                         Low                   0       25     77
0-24 months   LCNI-5           MALAWI                         Low                   1        5     77
0-24 months   LCNI-5           MALAWI                         Medium                0       26     77
0-24 months   LCNI-5           MALAWI                         Medium                1        4     77
0-24 months   MAL-ED           BANGLADESH                     High                  0        6     71
0-24 months   MAL-ED           BANGLADESH                     High                  1       12     71
0-24 months   MAL-ED           BANGLADESH                     Low                   0        9     71
0-24 months   MAL-ED           BANGLADESH                     Low                   1       19     71
0-24 months   MAL-ED           BANGLADESH                     Medium                0       10     71
0-24 months   MAL-ED           BANGLADESH                     Medium                1       15     71
0-24 months   MAL-ED           INDIA                          High                  0        7    103
0-24 months   MAL-ED           INDIA                          High                  1       22    103
0-24 months   MAL-ED           INDIA                          Low                   0       16    103
0-24 months   MAL-ED           INDIA                          Low                   1       30    103
0-24 months   MAL-ED           INDIA                          Medium                0       14    103
0-24 months   MAL-ED           INDIA                          Medium                1       14    103
0-24 months   MAL-ED           NEPAL                          High                  0        2     37
0-24 months   MAL-ED           NEPAL                          High                  1       10     37
0-24 months   MAL-ED           NEPAL                          Low                   0        2     37
0-24 months   MAL-ED           NEPAL                          Low                   1       10     37
0-24 months   MAL-ED           NEPAL                          Medium                0        4     37
0-24 months   MAL-ED           NEPAL                          Medium                1        9     37
0-24 months   MAL-ED           PERU                           High                  0        2     26
0-24 months   MAL-ED           PERU                           High                  1        9     26
0-24 months   MAL-ED           PERU                           Low                   0        1     26
0-24 months   MAL-ED           PERU                           Low                   1        3     26
0-24 months   MAL-ED           PERU                           Medium                0        1     26
0-24 months   MAL-ED           PERU                           Medium                1       10     26
0-24 months   MAL-ED           SOUTH AFRICA                   High                  0        2     29
0-24 months   MAL-ED           SOUTH AFRICA                   High                  1        7     29
0-24 months   MAL-ED           SOUTH AFRICA                   Low                   0        3     29
0-24 months   MAL-ED           SOUTH AFRICA                   Low                   1        9     29
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                0        1     29
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                1        7     29
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  0        3     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  1       17     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   0        4     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   1       11     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                0        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                1        1     36
0-24 months   NIH-Crypto       BANGLADESH                     High                  0       35    310
0-24 months   NIH-Crypto       BANGLADESH                     High                  1       70    310
0-24 months   NIH-Crypto       BANGLADESH                     Low                   0       46    310
0-24 months   NIH-Crypto       BANGLADESH                     Low                   1       72    310
0-24 months   NIH-Crypto       BANGLADESH                     Medium                0       36    310
0-24 months   NIH-Crypto       BANGLADESH                     Medium                1       51    310
0-24 months   PROBIT           BELARUS                        High                  0       77   4229
0-24 months   PROBIT           BELARUS                        High                  1      569   4229
0-24 months   PROBIT           BELARUS                        Low                   0      226   4229
0-24 months   PROBIT           BELARUS                        Low                   1     1478   4229
0-24 months   PROBIT           BELARUS                        Medium                0      207   4229
0-24 months   PROBIT           BELARUS                        Medium                1     1672   4229
0-24 months   PROVIDE          BANGLADESH                     High                  0       30    308
0-24 months   PROVIDE          BANGLADESH                     High                  1       49    308
0-24 months   PROVIDE          BANGLADESH                     Low                   0       62    308
0-24 months   PROVIDE          BANGLADESH                     Low                   1       73    308
0-24 months   PROVIDE          BANGLADESH                     Medium                0       37    308
0-24 months   PROVIDE          BANGLADESH                     Medium                1       57    308
0-24 months   SAS-CompFeed     INDIA                          High                  0      113    811
0-24 months   SAS-CompFeed     INDIA                          High                  1       87    811
0-24 months   SAS-CompFeed     INDIA                          Low                   0      242    811
0-24 months   SAS-CompFeed     INDIA                          Low                   1      131    811
0-24 months   SAS-CompFeed     INDIA                          Medium                0      146    811
0-24 months   SAS-CompFeed     INDIA                          Medium                1       92    811
0-24 months   SAS-FoodSuppl    INDIA                          High                  0       52    234
0-24 months   SAS-FoodSuppl    INDIA                          High                  1        6    234
0-24 months   SAS-FoodSuppl    INDIA                          Low                   0       80    234
0-24 months   SAS-FoodSuppl    INDIA                          Low                   1        2    234
0-24 months   SAS-FoodSuppl    INDIA                          Medium                0       89    234
0-24 months   SAS-FoodSuppl    INDIA                          Medium                1        5    234
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       46    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       67    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0      140    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      241    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0       79    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      138    711
0-24 months   ZVITAMBO         ZIMBABWE                       High                  0       84   3478
0-24 months   ZVITAMBO         ZIMBABWE                       High                  1      141   3478
0-24 months   ZVITAMBO         ZIMBABWE                       Low                   0      318   3478
0-24 months   ZVITAMBO         ZIMBABWE                       Low                   1      318   3478
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                0     1189   3478
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                1     1428   3478
0-6 months    COHORTS          GUATEMALA                      High                  0        9    201
0-6 months    COHORTS          GUATEMALA                      High                  1       35    201
0-6 months    COHORTS          GUATEMALA                      Low                   0       19    201
0-6 months    COHORTS          GUATEMALA                      Low                   1       69    201
0-6 months    COHORTS          GUATEMALA                      Medium                0       22    201
0-6 months    COHORTS          GUATEMALA                      Medium                1       47    201
0-6 months    COHORTS          INDIA                          High                  0       88    349
0-6 months    COHORTS          INDIA                          High                  1       50    349
0-6 months    COHORTS          INDIA                          Low                   0       67    349
0-6 months    COHORTS          INDIA                          Low                   1       34    349
0-6 months    COHORTS          INDIA                          Medium                0       56    349
0-6 months    COHORTS          INDIA                          Medium                1       54    349
0-6 months    COHORTS          PHILIPPINES                    High                  0       69    689
0-6 months    COHORTS          PHILIPPINES                    High                  1      202    689
0-6 months    COHORTS          PHILIPPINES                    Low                   0       47    689
0-6 months    COHORTS          PHILIPPINES                    Low                   1      135    689
0-6 months    COHORTS          PHILIPPINES                    Medium                0       63    689
0-6 months    COHORTS          PHILIPPINES                    Medium                1      173    689
0-6 months    GMS-Nepal        NEPAL                          High                  0       28    263
0-6 months    GMS-Nepal        NEPAL                          High                  1       47    263
0-6 months    GMS-Nepal        NEPAL                          Low                   0       41    263
0-6 months    GMS-Nepal        NEPAL                          Low                   1       56    263
0-6 months    GMS-Nepal        NEPAL                          Medium                0       35    263
0-6 months    GMS-Nepal        NEPAL                          Medium                1       56    263
0-6 months    JiVitA-3         BANGLADESH                     High                  0      310   4551
0-6 months    JiVitA-3         BANGLADESH                     High                  1      797   4551
0-6 months    JiVitA-3         BANGLADESH                     Low                   0      663   4551
0-6 months    JiVitA-3         BANGLADESH                     Low                   1     1242   4551
0-6 months    JiVitA-3         BANGLADESH                     Medium                0      498   4551
0-6 months    JiVitA-3         BANGLADESH                     Medium                1     1041   4551
0-6 months    JiVitA-4         BANGLADESH                     High                  0       52    534
0-6 months    JiVitA-4         BANGLADESH                     High                  1       67    534
0-6 months    JiVitA-4         BANGLADESH                     Low                   0       92    534
0-6 months    JiVitA-4         BANGLADESH                     Low                   1      114    534
0-6 months    JiVitA-4         BANGLADESH                     Medium                0       93    534
0-6 months    JiVitA-4         BANGLADESH                     Medium                1      116    534
0-6 months    LCNI-5           MALAWI                         High                  0        1      4
0-6 months    LCNI-5           MALAWI                         High                  1        0      4
0-6 months    LCNI-5           MALAWI                         Low                   0        0      4
0-6 months    LCNI-5           MALAWI                         Low                   1        0      4
0-6 months    LCNI-5           MALAWI                         Medium                0        3      4
0-6 months    LCNI-5           MALAWI                         Medium                1        0      4
0-6 months    MAL-ED           BANGLADESH                     High                  0        2     35
0-6 months    MAL-ED           BANGLADESH                     High                  1        7     35
0-6 months    MAL-ED           BANGLADESH                     Low                   0        2     35
0-6 months    MAL-ED           BANGLADESH                     Low                   1       11     35
0-6 months    MAL-ED           BANGLADESH                     Medium                0        3     35
0-6 months    MAL-ED           BANGLADESH                     Medium                1       10     35
0-6 months    MAL-ED           INDIA                          High                  0        1     46
0-6 months    MAL-ED           INDIA                          High                  1       13     46
0-6 months    MAL-ED           INDIA                          Low                   0        5     46
0-6 months    MAL-ED           INDIA                          Low                   1       14     46
0-6 months    MAL-ED           INDIA                          Medium                0        6     46
0-6 months    MAL-ED           INDIA                          Medium                1        7     46
0-6 months    MAL-ED           NEPAL                          High                  0        2     19
0-6 months    MAL-ED           NEPAL                          High                  1        7     19
0-6 months    MAL-ED           NEPAL                          Low                   0        1     19
0-6 months    MAL-ED           NEPAL                          Low                   1        6     19
0-6 months    MAL-ED           NEPAL                          Medium                0        1     19
0-6 months    MAL-ED           NEPAL                          Medium                1        2     19
0-6 months    MAL-ED           PERU                           High                  0        0      7
0-6 months    MAL-ED           PERU                           High                  1        2      7
0-6 months    MAL-ED           PERU                           Low                   0        0      7
0-6 months    MAL-ED           PERU                           Low                   1        2      7
0-6 months    MAL-ED           PERU                           Medium                0        0      7
0-6 months    MAL-ED           PERU                           Medium                1        3      7
0-6 months    MAL-ED           SOUTH AFRICA                   High                  0        1      9
0-6 months    MAL-ED           SOUTH AFRICA                   High                  1        3      9
0-6 months    MAL-ED           SOUTH AFRICA                   Low                   0        1      9
0-6 months    MAL-ED           SOUTH AFRICA                   Low                   1        3      9
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                0        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                1        1      9
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  0        1     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  1        4     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   1        4     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                1        1     10
0-6 months    NIH-Crypto       BANGLADESH                     High                  0       11    197
0-6 months    NIH-Crypto       BANGLADESH                     High                  1       68    197
0-6 months    NIH-Crypto       BANGLADESH                     Low                   0        7    197
0-6 months    NIH-Crypto       BANGLADESH                     Low                   1       63    197
0-6 months    NIH-Crypto       BANGLADESH                     Medium                0        3    197
0-6 months    NIH-Crypto       BANGLADESH                     Medium                1       45    197
0-6 months    PROBIT           BELARUS                        High                  0       64   4093
0-6 months    PROBIT           BELARUS                        High                  1      565   4093
0-6 months    PROBIT           BELARUS                        Low                   0      178   4093
0-6 months    PROBIT           BELARUS                        Low                   1     1463   4093
0-6 months    PROBIT           BELARUS                        Medium                0      168   4093
0-6 months    PROBIT           BELARUS                        Medium                1     1655   4093
0-6 months    PROVIDE          BANGLADESH                     High                  0       11    185
0-6 months    PROVIDE          BANGLADESH                     High                  1       41    185
0-6 months    PROVIDE          BANGLADESH                     Low                   0       17    185
0-6 months    PROVIDE          BANGLADESH                     Low                   1       55    185
0-6 months    PROVIDE          BANGLADESH                     Medium                0       12    185
0-6 months    PROVIDE          BANGLADESH                     Medium                1       49    185
0-6 months    SAS-CompFeed     INDIA                          High                  0       35    340
0-6 months    SAS-CompFeed     INDIA                          High                  1       44    340
0-6 months    SAS-CompFeed     INDIA                          Low                   0       83    340
0-6 months    SAS-CompFeed     INDIA                          Low                   1       72    340
0-6 months    SAS-CompFeed     INDIA                          Medium                0       47    340
0-6 months    SAS-CompFeed     INDIA                          Medium                1       59    340
0-6 months    SAS-FoodSuppl    INDIA                          High                  0       17     78
0-6 months    SAS-FoodSuppl    INDIA                          High                  1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          Low                   0       26     78
0-6 months    SAS-FoodSuppl    INDIA                          Low                   1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          Medium                0       35     78
0-6 months    SAS-FoodSuppl    INDIA                          Medium                1        0     78
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       19    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       36    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0       53    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      132    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0       29    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1       71    340
0-6 months    ZVITAMBO         ZIMBABWE                       High                  0       34   2429
0-6 months    ZVITAMBO         ZIMBABWE                       High                  1      138   2429
0-6 months    ZVITAMBO         ZIMBABWE                       Low                   0      105   2429
0-6 months    ZVITAMBO         ZIMBABWE                       Low                   1      301   2429
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                0      478   2429
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                1     1373   2429
6-24 months   COHORTS          GUATEMALA                      High                  0       28    157
6-24 months   COHORTS          GUATEMALA                      High                  1        3    157
6-24 months   COHORTS          GUATEMALA                      Low                   0       69    157
6-24 months   COHORTS          GUATEMALA                      Low                   1        2    157
6-24 months   COHORTS          GUATEMALA                      Medium                0       52    157
6-24 months   COHORTS          GUATEMALA                      Medium                1        3    157
6-24 months   COHORTS          INDIA                          High                  0       55    190
6-24 months   COHORTS          INDIA                          High                  1        0    190
6-24 months   COHORTS          INDIA                          Low                   0       85    190
6-24 months   COHORTS          INDIA                          Low                   1        0    190
6-24 months   COHORTS          INDIA                          Medium                0       50    190
6-24 months   COHORTS          INDIA                          Medium                1        0    190
6-24 months   COHORTS          PHILIPPINES                    High                  0      105    885
6-24 months   COHORTS          PHILIPPINES                    High                  1      134    885
6-24 months   COHORTS          PHILIPPINES                    Low                   0      167    885
6-24 months   COHORTS          PHILIPPINES                    Low                   1      146    885
6-24 months   COHORTS          PHILIPPINES                    Medium                0      164    885
6-24 months   COHORTS          PHILIPPINES                    Medium                1      169    885
6-24 months   GMS-Nepal        NEPAL                          High                  0       49    378
6-24 months   GMS-Nepal        NEPAL                          High                  1       32    378
6-24 months   GMS-Nepal        NEPAL                          Low                   0       86    378
6-24 months   GMS-Nepal        NEPAL                          Low                   1       85    378
6-24 months   GMS-Nepal        NEPAL                          Medium                0       56    378
6-24 months   GMS-Nepal        NEPAL                          Medium                1       70    378
6-24 months   JiVitA-3         BANGLADESH                     High                  0      595   2729
6-24 months   JiVitA-3         BANGLADESH                     High                  1        0   2729
6-24 months   JiVitA-3         BANGLADESH                     Low                   0     1183   2729
6-24 months   JiVitA-3         BANGLADESH                     Low                   1        0   2729
6-24 months   JiVitA-3         BANGLADESH                     Medium                0      951   2729
6-24 months   JiVitA-3         BANGLADESH                     Medium                1        0   2729
6-24 months   JiVitA-4         BANGLADESH                     High                  0      248   1469
6-24 months   JiVitA-4         BANGLADESH                     High                  1       46   1469
6-24 months   JiVitA-4         BANGLADESH                     Low                   0      497   1469
6-24 months   JiVitA-4         BANGLADESH                     Low                   1       89   1469
6-24 months   JiVitA-4         BANGLADESH                     Medium                0      504   1469
6-24 months   JiVitA-4         BANGLADESH                     Medium                1       85   1469
6-24 months   LCNI-5           MALAWI                         High                  0       12     73
6-24 months   LCNI-5           MALAWI                         High                  1        4     73
6-24 months   LCNI-5           MALAWI                         Low                   0       25     73
6-24 months   LCNI-5           MALAWI                         Low                   1        5     73
6-24 months   LCNI-5           MALAWI                         Medium                0       23     73
6-24 months   LCNI-5           MALAWI                         Medium                1        4     73
6-24 months   MAL-ED           BANGLADESH                     High                  0        4     36
6-24 months   MAL-ED           BANGLADESH                     High                  1        5     36
6-24 months   MAL-ED           BANGLADESH                     Low                   0        7     36
6-24 months   MAL-ED           BANGLADESH                     Low                   1        8     36
6-24 months   MAL-ED           BANGLADESH                     Medium                0        7     36
6-24 months   MAL-ED           BANGLADESH                     Medium                1        5     36
6-24 months   MAL-ED           INDIA                          High                  0        6     57
6-24 months   MAL-ED           INDIA                          High                  1        9     57
6-24 months   MAL-ED           INDIA                          Low                   0       11     57
6-24 months   MAL-ED           INDIA                          Low                   1       16     57
6-24 months   MAL-ED           INDIA                          Medium                0        8     57
6-24 months   MAL-ED           INDIA                          Medium                1        7     57
6-24 months   MAL-ED           NEPAL                          High                  0        0     18
6-24 months   MAL-ED           NEPAL                          High                  1        3     18
6-24 months   MAL-ED           NEPAL                          Low                   0        1     18
6-24 months   MAL-ED           NEPAL                          Low                   1        4     18
6-24 months   MAL-ED           NEPAL                          Medium                0        3     18
6-24 months   MAL-ED           NEPAL                          Medium                1        7     18
6-24 months   MAL-ED           PERU                           High                  0        2     19
6-24 months   MAL-ED           PERU                           High                  1        7     19
6-24 months   MAL-ED           PERU                           Low                   0        1     19
6-24 months   MAL-ED           PERU                           Low                   1        1     19
6-24 months   MAL-ED           PERU                           Medium                0        1     19
6-24 months   MAL-ED           PERU                           Medium                1        7     19
6-24 months   MAL-ED           SOUTH AFRICA                   High                  0        1     20
6-24 months   MAL-ED           SOUTH AFRICA                   High                  1        4     20
6-24 months   MAL-ED           SOUTH AFRICA                   Low                   0        2     20
6-24 months   MAL-ED           SOUTH AFRICA                   Low                   1        6     20
6-24 months   MAL-ED           SOUTH AFRICA                   Medium                0        1     20
6-24 months   MAL-ED           SOUTH AFRICA                   Medium                1        6     20
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  0        2     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  1       13     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   0        4     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   1        7     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                0        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                1        0     26
6-24 months   NIH-Crypto       BANGLADESH                     High                  0       24    113
6-24 months   NIH-Crypto       BANGLADESH                     High                  1        2    113
6-24 months   NIH-Crypto       BANGLADESH                     Low                   0       39    113
6-24 months   NIH-Crypto       BANGLADESH                     Low                   1        9    113
6-24 months   NIH-Crypto       BANGLADESH                     Medium                0       33    113
6-24 months   NIH-Crypto       BANGLADESH                     Medium                1        6    113
6-24 months   PROBIT           BELARUS                        High                  0       13    136
6-24 months   PROBIT           BELARUS                        High                  1        4    136
6-24 months   PROBIT           BELARUS                        Low                   0       48    136
6-24 months   PROBIT           BELARUS                        Low                   1       15    136
6-24 months   PROBIT           BELARUS                        Medium                0       39    136
6-24 months   PROBIT           BELARUS                        Medium                1       17    136
6-24 months   PROVIDE          BANGLADESH                     High                  0       19    123
6-24 months   PROVIDE          BANGLADESH                     High                  1        8    123
6-24 months   PROVIDE          BANGLADESH                     Low                   0       45    123
6-24 months   PROVIDE          BANGLADESH                     Low                   1       18    123
6-24 months   PROVIDE          BANGLADESH                     Medium                0       25    123
6-24 months   PROVIDE          BANGLADESH                     Medium                1        8    123
6-24 months   SAS-CompFeed     INDIA                          High                  0       78    471
6-24 months   SAS-CompFeed     INDIA                          High                  1       43    471
6-24 months   SAS-CompFeed     INDIA                          Low                   0      159    471
6-24 months   SAS-CompFeed     INDIA                          Low                   1       59    471
6-24 months   SAS-CompFeed     INDIA                          Medium                0       99    471
6-24 months   SAS-CompFeed     INDIA                          Medium                1       33    471
6-24 months   SAS-FoodSuppl    INDIA                          High                  0       35    156
6-24 months   SAS-FoodSuppl    INDIA                          High                  1        6    156
6-24 months   SAS-FoodSuppl    INDIA                          Low                   0       54    156
6-24 months   SAS-FoodSuppl    INDIA                          Low                   1        2    156
6-24 months   SAS-FoodSuppl    INDIA                          Medium                0       54    156
6-24 months   SAS-FoodSuppl    INDIA                          Medium                1        5    156
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       27    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       31    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0       87    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      109    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0       50    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1       67    371
6-24 months   ZVITAMBO         ZIMBABWE                       High                  0       50   1049
6-24 months   ZVITAMBO         ZIMBABWE                       High                  1        3   1049
6-24 months   ZVITAMBO         ZIMBABWE                       Low                   0      213   1049
6-24 months   ZVITAMBO         ZIMBABWE                       Low                   1       17   1049
6-24 months   ZVITAMBO         ZIMBABWE                       Medium                0      711   1049
6-24 months   ZVITAMBO         ZIMBABWE                       Medium                1       55   1049


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

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

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




# Results Detail

## Results Plots
![](/tmp/f66dd76e-77ed-4103-8c72-42811401c9f6/150aab76-8f6a-4bf6-b8ea-9de3d7075337/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f66dd76e-77ed-4103-8c72-42811401c9f6/150aab76-8f6a-4bf6-b8ea-9de3d7075337/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f66dd76e-77ed-4103-8c72-42811401c9f6/150aab76-8f6a-4bf6-b8ea-9de3d7075337/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f66dd76e-77ed-4103-8c72-42811401c9f6/150aab76-8f6a-4bf6-b8ea-9de3d7075337/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                0.4868291   0.3845569   0.5891014
0-24 months   COHORTS          GUATEMALA                      Low                  NA                0.4558400   0.3817258   0.5299542
0-24 months   COHORTS          GUATEMALA                      Medium               NA                0.3964361   0.3106946   0.4821776
0-24 months   COHORTS          INDIA                          High                 NA                0.2609434   0.1961837   0.3257031
0-24 months   COHORTS          INDIA                          Low                  NA                0.1780925   0.1241285   0.2320565
0-24 months   COHORTS          INDIA                          Medium               NA                0.3382649   0.2659784   0.4105515
0-24 months   COHORTS          PHILIPPINES                    High                 NA                0.6326070   0.5845310   0.6806831
0-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.5985377   0.5505981   0.6464774
0-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.6030667   0.5537425   0.6523909
0-24 months   GMS-Nepal        NEPAL                          High                 NA                0.4884728   0.4004547   0.5764910
0-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.5400631   0.4743689   0.6057572
0-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.5820356   0.5081549   0.6559163
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.4419671   0.4070959   0.4768382
0-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.4104253   0.3904968   0.4303538
0-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.4214719   0.3988381   0.4441057
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.2152380   0.1704387   0.2600374
0-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.2768504   0.2451528   0.3085480
0-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.2633821   0.2290671   0.2976971
0-24 months   MAL-ED           BANGLADESH                     High                 NA                0.6666667   0.4235357   0.9097976
0-24 months   MAL-ED           BANGLADESH                     Low                  NA                0.6785714   0.5198822   0.8372607
0-24 months   MAL-ED           BANGLADESH                     Medium               NA                0.6000000   0.3909534   0.8090466
0-24 months   MAL-ED           INDIA                          High                 NA                0.7586207   0.5584813   0.9587601
0-24 months   MAL-ED           INDIA                          Low                  NA                0.6521739   0.5001446   0.8042032
0-24 months   MAL-ED           INDIA                          Medium               NA                0.5000000   0.3092033   0.6907967
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.5978692   0.4976887   0.6980498
0-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.6321294   0.5505447   0.7137141
0-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.6150865   0.5180684   0.7121046
0-24 months   PROBIT           BELARUS                        High                 NA                0.8887993   0.8650523   0.9125463
0-24 months   PROBIT           BELARUS                        Low                  NA                0.8670405   0.8512919   0.8827891
0-24 months   PROBIT           BELARUS                        Medium               NA                0.8867042   0.8722638   0.9011446
0-24 months   PROVIDE          BANGLADESH                     High                 NA                0.6113605   0.4995590   0.7231621
0-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.5379596   0.4556057   0.6203135
0-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.6041446   0.4982976   0.7099917
0-24 months   SAS-CompFeed     INDIA                          High                 NA                0.4269172   0.3569078   0.4969266
0-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.3664562   0.3149586   0.4179538
0-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.3889565   0.3160066   0.4619063
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5857068   0.4841077   0.6873060
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6349446   0.5829548   0.6869345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.6292962   0.5637232   0.6948692
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.5752206   0.5039317   0.6465095
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.5432720   0.5045875   0.5819566
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.5421418   0.5227887   0.5614948
0-6 months    COHORTS          GUATEMALA                      High                 NA                0.7954545   0.6753723   0.9155368
0-6 months    COHORTS          GUATEMALA                      Low                  NA                0.7840909   0.6974785   0.8707033
0-6 months    COHORTS          GUATEMALA                      Medium               NA                0.6811594   0.5723603   0.7899585
0-6 months    COHORTS          INDIA                          High                 NA                0.3681036   0.2883888   0.4478185
0-6 months    COHORTS          INDIA                          Low                  NA                0.3384220   0.2472032   0.4296409
0-6 months    COHORTS          INDIA                          Medium               NA                0.4955783   0.4028421   0.5883146
0-6 months    COHORTS          PHILIPPINES                    High                 NA                0.7357313   0.6832189   0.7882437
0-6 months    COHORTS          PHILIPPINES                    Low                  NA                0.7549394   0.6897972   0.8200815
0-6 months    COHORTS          PHILIPPINES                    Medium               NA                0.7299648   0.6741457   0.7857838
0-6 months    GMS-Nepal        NEPAL                          High                 NA                0.6158836   0.5026143   0.7291529
0-6 months    GMS-Nepal        NEPAL                          Low                  NA                0.5656360   0.4654063   0.6658657
0-6 months    GMS-Nepal        NEPAL                          Medium               NA                0.6051167   0.5031544   0.7070790
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                0.7138395   0.6707844   0.7568947
0-6 months    JiVitA-3         BANGLADESH                     Low                  NA                0.6732663   0.6476601   0.6988724
0-6 months    JiVitA-3         BANGLADESH                     Medium               NA                0.6716739   0.6430565   0.7002912
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                0.4948113   0.4042804   0.5853421
0-6 months    JiVitA-4         BANGLADESH                     Low                  NA                0.5834859   0.5231607   0.6438111
0-6 months    JiVitA-4         BANGLADESH                     Medium               NA                0.5709040   0.5054124   0.6363956
0-6 months    PROBIT           BELARUS                        High                 NA                0.9034524   0.8806735   0.9262313
0-6 months    PROBIT           BELARUS                        Low                  NA                0.8920653   0.8770249   0.9071056
0-6 months    PROBIT           BELARUS                        Medium               NA                0.9075555   0.8941823   0.9209287
0-6 months    PROVIDE          BANGLADESH                     High                 NA                0.7990199   0.6814160   0.9166237
0-6 months    PROVIDE          BANGLADESH                     Low                  NA                0.7627286   0.6633400   0.8621171
0-6 months    PROVIDE          BANGLADESH                     Medium               NA                0.8260671   0.7300435   0.9220906
0-6 months    SAS-CompFeed     INDIA                          High                 NA                0.5359101   0.4235643   0.6482559
0-6 months    SAS-CompFeed     INDIA                          Low                  NA                0.4745677   0.3965371   0.5525982
0-6 months    SAS-CompFeed     INDIA                          Medium               NA                0.5665247   0.4706097   0.6624398
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.6780145   0.5466894   0.8093396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.7151053   0.6489391   0.7812716
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.7114090   0.6206056   0.8022124
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                0.7928030   0.7399500   0.8456560
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                0.7341901   0.6956972   0.7726830
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                0.7441704   0.7246990   0.7636419
6-24 months   COHORTS          PHILIPPINES                    High                 NA                0.5792891   0.5122405   0.6463378
6-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.4685361   0.4082357   0.5288365
6-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.5036970   0.4411531   0.5662409
6-24 months   GMS-Nepal        NEPAL                          High                 NA                0.3929684   0.2765477   0.5093891
6-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.4988667   0.4135020   0.5842313
6-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.5551353   0.4644892   0.6457815
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.1572532   0.1116311   0.2028753
6-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.1513882   0.1195978   0.1831785
6-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.1444133   0.1138914   0.1749353
6-24 months   MAL-ED           INDIA                          High                 NA                0.6000000   0.3097494   0.8902506
6-24 months   MAL-ED           INDIA                          Low                  NA                0.5925926   0.3610568   0.8241284
6-24 months   MAL-ED           INDIA                          Medium               NA                0.4666667   0.2318706   0.7014628
6-24 months   PROVIDE          BANGLADESH                     High                 NA                0.2962963   0.1169057   0.4756869
6-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.2857143   0.1712528   0.4001757
6-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.2424242   0.0930082   0.3918403
6-24 months   SAS-CompFeed     INDIA                          High                 NA                0.3422470   0.2565133   0.4279807
6-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.2776943   0.2156160   0.3397727
6-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.2505756   0.1728600   0.3282911
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5225089   0.3796413   0.6653765
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.5641467   0.4930477   0.6352456
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.5551442   0.4624657   0.6478227


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.4441341   0.3908676   0.4974005
0-24 months   COHORTS          INDIA                          NA                   NA                0.2560297   0.2186976   0.2933617
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6092757   0.5839352   0.6346162
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.5397816   0.4973714   0.5821918
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4230769   0.4117323   0.4344216
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.2581128   0.2384369   0.2777888
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.6478873   0.5336007   0.7621739
0-24 months   MAL-ED           INDIA                          NA                   NA                0.6407767   0.5352377   0.7463157
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   PROBIT           BELARUS                        NA                   NA                0.8794041   0.8696741   0.8891341
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3822441   0.3470990   0.4173892
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6272855   0.5895954   0.6649756
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.5425532   0.5258421   0.5592643
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.7512438   0.6914852   0.8110023
0-6 months    COHORTS          INDIA                          NA                   NA                0.3954155   0.3440450   0.4467860
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.7402032   0.7074271   0.7729793
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.6045627   0.5449300   0.6641955
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.6767743   0.6631857   0.6903630
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.5561798   0.5140008   0.5983587
0-6 months    PROBIT           BELARUS                        NA                   NA                0.8998290   0.8905816   0.9090764
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.5147059   0.4610948   0.5683169
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7029412   0.6536517   0.7522307
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.7459860   0.7286870   0.7632850
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.5073446   0.4725123   0.5421770
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4947090   0.4399319   0.5494861
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1497617   0.1318544   0.1676691
6-24 months   MAL-ED           INDIA                          NA                   NA                0.5614035   0.4130317   0.7097753
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2866242   0.2446853   0.3285631
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5579515   0.5056058   0.6102972


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      Low                  High              0.9363450   0.7271339   1.2057503
0-24 months   COHORTS          GUATEMALA                      Medium               High              0.8143229   0.6099987   1.0870874
0-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          Low                  High              0.6824946   0.4623909   1.0073704
0-24 months   COHORTS          INDIA                          Medium               High              1.2963153   0.9349678   1.7973168
0-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    Low                  High              0.9461446   0.8475030   1.0562672
0-24 months   COHORTS          PHILIPPINES                    Medium               High              0.9533038   0.8528464   1.0655942
0-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          Low                  High              1.1056154   0.8896040   1.3740780
0-24 months   GMS-Nepal        NEPAL                          Medium               High              1.1915414   0.9559081   1.4852587
0-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     Low                  High              0.9286333   0.8476926   1.0173025
0-24 months   JiVitA-3         BANGLADESH                     Medium               High              0.9536274   0.8679474   1.0477653
0-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.2862522   1.0178228   1.6254744
0-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.2236784   0.9608750   1.5583597
0-24 months   MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     Low                  High              1.0178571   0.6597795   1.5702719
0-24 months   MAL-ED           BANGLADESH                     Medium               High              0.9000000   0.5432668   1.4909800
0-24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          Low                  High              0.8596838   0.6045511   1.2224875
0-24 months   MAL-ED           INDIA                          Medium               High              0.6590909   0.4141553   1.0488839
0-24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     Low                  High              1.0573037   0.8580533   1.3028225
0-24 months   NIH-Crypto       BANGLADESH                     Medium               High              1.0287977   0.8204804   1.2900062
0-24 months   PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        Low                  High              0.9755189   0.9446992   1.0073441
0-24 months   PROBIT           BELARUS                        Medium               High              0.9976428   0.9670206   1.0292346
0-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     Low                  High              0.8799384   0.6930440   1.1172329
0-24 months   PROVIDE          BANGLADESH                     Medium               High              0.9881970   0.7671469   1.2729419
0-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          Low                  High              0.8583777   0.6925327   1.0639386
0-24 months   SAS-CompFeed     INDIA                          Medium               High              0.9110817   0.7120276   1.1657832
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0840656   0.8946916   1.3135233
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0744219   0.8774263   1.3156459
0-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              0.9444586   0.8200601   1.0877277
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              0.9424937   0.8300592   1.0701579
0-6 months    COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      Low                  High              0.9857143   0.8175465   1.1884739
0-6 months    COHORTS          GUATEMALA                      Medium               High              0.8563147   0.6873624   1.0667951
0-6 months    COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          Low                  High              0.9193662   0.6516314   1.2971048
0-6 months    COHORTS          INDIA                          Medium               High              1.3463012   1.0115954   1.7917509
0-6 months    COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    Low                  High              1.0261075   0.9178216   1.1471690
0-6 months    COHORTS          PHILIPPINES                    Medium               High              0.9921622   0.8941981   1.1008587
0-6 months    GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          Low                  High              0.9184138   0.7115900   1.1853511
0-6 months    GMS-Nepal        NEPAL                          Medium               High              0.9825179   0.7655460   1.2609842
0-6 months    JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     Low                  High              0.9431620   0.8784062   1.0126915
0-6 months    JiVitA-3         BANGLADESH                     Medium               High              0.9409312   0.8741285   1.0128390
0-6 months    JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4         BANGLADESH                     Low                  High              1.1792090   0.9641904   1.4421777
0-6 months    JiVitA-4         BANGLADESH                     Medium               High              1.1537813   0.9385878   1.4183131
0-6 months    PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        Low                  High              0.9873960   0.9579676   1.0177285
0-6 months    PROBIT           BELARUS                        Medium               High              1.0045416   0.9756994   1.0342364
0-6 months    PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     Low                  High              0.9545802   0.7833668   1.1632141
0-6 months    PROVIDE          BANGLADESH                     Medium               High              1.0338504   0.8571037   1.2470448
0-6 months    SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          Low                  High              0.8855359   0.6784920   1.1557600
0-6 months    SAS-CompFeed     INDIA                          Medium               High              1.0571264   0.8085789   1.3820745
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0547051   0.8507194   1.3076025
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0492534   0.8316705   1.3237607
0-6 months    ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  High              0.9260688   0.8519249   1.0066655
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               High              0.9386575   0.8749356   1.0070202
6-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    Low                  High              0.8088122   0.6802809   0.9616281
6-24 months   COHORTS          PHILIPPINES                    Medium               High              0.8695088   0.7336439   1.0305348
6-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          Low                  High              1.2694829   0.9015126   1.7876476
6-24 months   GMS-Nepal        NEPAL                          Medium               High              1.4126716   1.0067942   1.9821739
6-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4         BANGLADESH                     Low                  High              0.9627033   0.6728316   1.3774585
6-24 months   JiVitA-4         BANGLADESH                     Medium               High              0.9183492   0.6412957   1.3150959
6-24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           INDIA                          Low                  High              0.9876543   0.5300611   1.8402804
6-24 months   MAL-ED           INDIA                          Medium               High              0.7777778   0.3863737   1.5656816
6-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     Low                  High              0.9642857   0.4665574   1.9929956
6-24 months   PROVIDE          BANGLADESH                     Medium               High              0.8181818   0.3447972   1.9414933
6-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          Low                  High              0.8113858   0.5800955   1.1348940
6-24 months   SAS-CompFeed     INDIA                          Medium               High              0.7321483   0.4915102   1.0906003
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0796882   0.7980095   1.4607928
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0624589   0.7720871   1.4620357


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0426950   -0.1307520    0.0453619
0-24 months   COHORTS          INDIA                          High                 NA                -0.0049137   -0.0554787    0.0456513
0-24 months   COHORTS          PHILIPPINES                    High                 NA                -0.0233313   -0.0651632    0.0185006
0-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0513088   -0.0264696    0.1290871
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0188901   -0.0520057    0.0142254
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0428748    0.0017670    0.0839826
0-24 months   MAL-ED           BANGLADESH                     High                 NA                -0.0187793   -0.2243504    0.1867917
0-24 months   MAL-ED           INDIA                          High                 NA                -0.1178440   -0.2885817    0.0528938
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0247114   -0.0522196    0.1016423
0-24 months   PROBIT           BELARUS                        High                 NA                -0.0093952   -0.0312726    0.0124823
0-24 months   PROVIDE          BANGLADESH                     High                 NA                -0.0301917   -0.1258617    0.0654783
0-24 months   SAS-CompFeed     INDIA                          High                 NA                -0.0446731   -0.1073115    0.0179654
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0415787   -0.0508634    0.1340208
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0326674   -0.1018744    0.0365397
0-6 months    COHORTS          GUATEMALA                      High                 NA                -0.0442108   -0.1522742    0.0638527
0-6 months    COHORTS          INDIA                          High                 NA                 0.0273119   -0.0350073    0.0896310
0-6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0044719   -0.0363305    0.0452742
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0113209   -0.1069063    0.0842646
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0370652   -0.0784097    0.0042794
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0613685   -0.0172056    0.1399427
0-6 months    PROBIT           BELARUS                        High                 NA                -0.0036234   -0.0245584    0.0173116
0-6 months    PROVIDE          BANGLADESH                     High                 NA                -0.0152361   -0.1147033    0.0842310
0-6 months    SAS-CompFeed     INDIA                          High                 NA                -0.0212042   -0.1202455    0.0778371
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0249267   -0.0946242    0.1444775
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0468170   -0.0978024    0.0041684
6-24 months   COHORTS          PHILIPPINES                    High                 NA                -0.0719445   -0.1313454   -0.0125436
6-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.1017406   -0.0024166    0.2058978
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0074914   -0.0495713    0.0345884
6-24 months   MAL-ED           INDIA                          High                 NA                -0.0385965   -0.2887294    0.2115364
6-24 months   PROVIDE          BANGLADESH                     High                 NA                -0.0198735   -0.1770318    0.1372847
6-24 months   SAS-CompFeed     INDIA                          High                 NA                -0.0556228   -0.1291079    0.0178624
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0354426   -0.0947634    0.1656486


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0961310   -0.3140555    0.0856527
0-24 months   COHORTS          INDIA                          High                 NA                -0.0191919   -0.2369271    0.1602155
0-24 months   COHORTS          PHILIPPINES                    High                 NA                -0.0382935   -0.1093573    0.0282181
0-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0950547   -0.0612361    0.2283282
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0446494   -0.1259556    0.0307855
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.1661088   -0.0093250    0.3110499
0-24 months   MAL-ED           BANGLADESH                     High                 NA                -0.0289855   -0.4001352    0.2437793
0-24 months   MAL-ED           INDIA                          High                 NA                -0.1839080   -0.4851250    0.0562153
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0396919   -0.0927919    0.1561141
0-24 months   PROBIT           BELARUS                        High                 NA                -0.0106836   -0.0358728    0.0138931
0-24 months   PROVIDE          BANGLADESH                     High                 NA                -0.0519499   -0.2301599    0.1004432
0-24 months   SAS-CompFeed     INDIA                          High                 NA                -0.1168705   -0.2945054    0.0363890
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0662835   -0.0936524    0.2028304
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0602105   -0.1957626    0.0599753
0-6 months    COHORTS          GUATEMALA                      High                 NA                -0.0588501   -0.2133559    0.0759813
0-6 months    COHORTS          INDIA                          High                 NA                 0.0690713   -0.1026834    0.2140733
0-6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0060414   -0.0506415    0.0596663
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0187257   -0.1897483    0.1277129
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0547674   -0.1177140    0.0046342
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.1103393   -0.0434192    0.2414400
0-6 months    PROBIT           BELARUS                        High                 NA                -0.0040268   -0.0275645    0.0189718
0-6 months    PROVIDE          BANGLADESH                     High                 NA                -0.0194392   -0.1545195    0.0998366
0-6 months    SAS-CompFeed     INDIA                          High                 NA                -0.0411968   -0.2526360    0.1345525
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0354605   -0.1506810    0.1914906
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0627585   -0.1334596    0.0035325
6-24 months   COHORTS          PHILIPPINES                    High                 NA                -0.1418059   -0.2661876   -0.0296427
6-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.2056575   -0.0362605    0.3910990
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0500224   -0.3723202    0.1965817
6-24 months   MAL-ED           INDIA                          High                 NA                -0.0687500   -0.6222290    0.2958907
6-24 months   PROVIDE          BANGLADESH                     High                 NA                -0.0718954   -0.8212752    0.3691454
6-24 months   SAS-CompFeed     INDIA                          High                 NA                -0.1940617   -0.4809036    0.0372208
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0635227   -0.2019914    0.2703860
