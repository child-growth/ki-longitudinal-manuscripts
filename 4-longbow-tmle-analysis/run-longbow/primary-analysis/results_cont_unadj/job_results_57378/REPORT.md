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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        feducyrs    n_cell       n
----------  ---------------  -----------------------------  ---------  -------  ------
Birth       COHORTS          GUATEMALA                      0              355     804
Birth       COHORTS          GUATEMALA                      1               40     804
Birth       COHORTS          GUATEMALA                      2              148     804
Birth       COHORTS          GUATEMALA                      3              106     804
Birth       COHORTS          GUATEMALA                      4               50     804
Birth       COHORTS          GUATEMALA                      5               17     804
Birth       COHORTS          GUATEMALA                      6               76     804
Birth       COHORTS          GUATEMALA                      7                3     804
Birth       COHORTS          GUATEMALA                      8                2     804
Birth       COHORTS          GUATEMALA                      9                1     804
Birth       COHORTS          GUATEMALA                      10               1     804
Birth       COHORTS          GUATEMALA                      11               0     804
Birth       COHORTS          GUATEMALA                      12               4     804
Birth       COHORTS          GUATEMALA                      13               0     804
Birth       COHORTS          GUATEMALA                      14               1     804
Birth       COHORTS          GUATEMALA                      15               0     804
Birth       COHORTS          GUATEMALA                      16               0     804
Birth       COHORTS          GUATEMALA                      17               0     804
Birth       COHORTS          GUATEMALA                      18               0     804
Birth       COHORTS          GUATEMALA                      19               0     804
Birth       COHORTS          GUATEMALA                      20               0     804
Birth       COHORTS          GUATEMALA                      24               0     804
Birth       COHORTS          GUATEMALA                      25               0     804
Birth       COHORTS          GUATEMALA                      27               0     804
Birth       COHORTS          INDIA                          0              115    1354
Birth       COHORTS          INDIA                          1                0    1354
Birth       COHORTS          INDIA                          2                0    1354
Birth       COHORTS          INDIA                          3              127    1354
Birth       COHORTS          INDIA                          4                0    1354
Birth       COHORTS          INDIA                          5                0    1354
Birth       COHORTS          INDIA                          6                0    1354
Birth       COHORTS          INDIA                          7                0    1354
Birth       COHORTS          INDIA                          8              197    1354
Birth       COHORTS          INDIA                          9                0    1354
Birth       COHORTS          INDIA                          10               0    1354
Birth       COHORTS          INDIA                          11               0    1354
Birth       COHORTS          INDIA                          12             388    1354
Birth       COHORTS          INDIA                          13               0    1354
Birth       COHORTS          INDIA                          14             147    1354
Birth       COHORTS          INDIA                          15             267    1354
Birth       COHORTS          INDIA                          16               0    1354
Birth       COHORTS          INDIA                          17             113    1354
Birth       COHORTS          INDIA                          18               0    1354
Birth       COHORTS          INDIA                          19               0    1354
Birth       COHORTS          INDIA                          20               0    1354
Birth       COHORTS          INDIA                          24               0    1354
Birth       COHORTS          INDIA                          25               0    1354
Birth       COHORTS          INDIA                          27               0    1354
Birth       COHORTS          PHILIPPINES                    0               60    2873
Birth       COHORTS          PHILIPPINES                    1               36    2873
Birth       COHORTS          PHILIPPINES                    2               96    2873
Birth       COHORTS          PHILIPPINES                    3              169    2873
Birth       COHORTS          PHILIPPINES                    4              262    2873
Birth       COHORTS          PHILIPPINES                    5              204    2873
Birth       COHORTS          PHILIPPINES                    6              643    2873
Birth       COHORTS          PHILIPPINES                    7              151    2873
Birth       COHORTS          PHILIPPINES                    8              225    2873
Birth       COHORTS          PHILIPPINES                    9              197    2873
Birth       COHORTS          PHILIPPINES                    10             330    2873
Birth       COHORTS          PHILIPPINES                    11              65    2873
Birth       COHORTS          PHILIPPINES                    12             179    2873
Birth       COHORTS          PHILIPPINES                    13              63    2873
Birth       COHORTS          PHILIPPINES                    14             145    2873
Birth       COHORTS          PHILIPPINES                    15              36    2873
Birth       COHORTS          PHILIPPINES                    16               8    2873
Birth       COHORTS          PHILIPPINES                    17               2    2873
Birth       COHORTS          PHILIPPINES                    18               2    2873
Birth       COHORTS          PHILIPPINES                    19               0    2873
Birth       COHORTS          PHILIPPINES                    20               0    2873
Birth       COHORTS          PHILIPPINES                    24               0    2873
Birth       COHORTS          PHILIPPINES                    25               0    2873
Birth       COHORTS          PHILIPPINES                    27               0    2873
Birth       GMS-Nepal        NEPAL                          0              296     694
Birth       GMS-Nepal        NEPAL                          1                0     694
Birth       GMS-Nepal        NEPAL                          2                0     694
Birth       GMS-Nepal        NEPAL                          3                0     694
Birth       GMS-Nepal        NEPAL                          4                0     694
Birth       GMS-Nepal        NEPAL                          5              109     694
Birth       GMS-Nepal        NEPAL                          6                0     694
Birth       GMS-Nepal        NEPAL                          7                0     694
Birth       GMS-Nepal        NEPAL                          8              117     694
Birth       GMS-Nepal        NEPAL                          9                0     694
Birth       GMS-Nepal        NEPAL                          10             133     694
Birth       GMS-Nepal        NEPAL                          11               0     694
Birth       GMS-Nepal        NEPAL                          12              39     694
Birth       GMS-Nepal        NEPAL                          13               0     694
Birth       GMS-Nepal        NEPAL                          14               0     694
Birth       GMS-Nepal        NEPAL                          15               0     694
Birth       GMS-Nepal        NEPAL                          16               0     694
Birth       GMS-Nepal        NEPAL                          17               0     694
Birth       GMS-Nepal        NEPAL                          18               0     694
Birth       GMS-Nepal        NEPAL                          19               0     694
Birth       GMS-Nepal        NEPAL                          20               0     694
Birth       GMS-Nepal        NEPAL                          24               0     694
Birth       GMS-Nepal        NEPAL                          25               0     694
Birth       GMS-Nepal        NEPAL                          27               0     694
Birth       MAL-ED           BANGLADESH                     0                0     129
Birth       MAL-ED           BANGLADESH                     1                5     129
Birth       MAL-ED           BANGLADESH                     2               11     129
Birth       MAL-ED           BANGLADESH                     3               12     129
Birth       MAL-ED           BANGLADESH                     4                8     129
Birth       MAL-ED           BANGLADESH                     5               30     129
Birth       MAL-ED           BANGLADESH                     6                7     129
Birth       MAL-ED           BANGLADESH                     7                9     129
Birth       MAL-ED           BANGLADESH                     8               16     129
Birth       MAL-ED           BANGLADESH                     9               13     129
Birth       MAL-ED           BANGLADESH                     10               9     129
Birth       MAL-ED           BANGLADESH                     11               0     129
Birth       MAL-ED           BANGLADESH                     12               7     129
Birth       MAL-ED           BANGLADESH                     13               0     129
Birth       MAL-ED           BANGLADESH                     14               0     129
Birth       MAL-ED           BANGLADESH                     15               0     129
Birth       MAL-ED           BANGLADESH                     16               2     129
Birth       MAL-ED           BANGLADESH                     17               0     129
Birth       MAL-ED           BANGLADESH                     18               0     129
Birth       MAL-ED           BANGLADESH                     19               0     129
Birth       MAL-ED           BANGLADESH                     20               0     129
Birth       MAL-ED           BANGLADESH                     24               0     129
Birth       MAL-ED           BANGLADESH                     25               0     129
Birth       MAL-ED           BANGLADESH                     27               0     129
Birth       MAL-ED           INDIA                          0                0      24
Birth       MAL-ED           INDIA                          1                0      24
Birth       MAL-ED           INDIA                          2                1      24
Birth       MAL-ED           INDIA                          3                6      24
Birth       MAL-ED           INDIA                          4                2      24
Birth       MAL-ED           INDIA                          5                5      24
Birth       MAL-ED           INDIA                          6                0      24
Birth       MAL-ED           INDIA                          7                0      24
Birth       MAL-ED           INDIA                          8                3      24
Birth       MAL-ED           INDIA                          9                5      24
Birth       MAL-ED           INDIA                          10               0      24
Birth       MAL-ED           INDIA                          11               1      24
Birth       MAL-ED           INDIA                          12               1      24
Birth       MAL-ED           INDIA                          13               0      24
Birth       MAL-ED           INDIA                          14               0      24
Birth       MAL-ED           INDIA                          15               0      24
Birth       MAL-ED           INDIA                          16               0      24
Birth       MAL-ED           INDIA                          17               0      24
Birth       MAL-ED           INDIA                          18               0      24
Birth       MAL-ED           INDIA                          19               0      24
Birth       MAL-ED           INDIA                          20               0      24
Birth       MAL-ED           INDIA                          24               0      24
Birth       MAL-ED           INDIA                          25               0      24
Birth       MAL-ED           INDIA                          27               0      24
Birth       MAL-ED           NEPAL                          0                0      10
Birth       MAL-ED           NEPAL                          1                0      10
Birth       MAL-ED           NEPAL                          2                1      10
Birth       MAL-ED           NEPAL                          3                1      10
Birth       MAL-ED           NEPAL                          4                0      10
Birth       MAL-ED           NEPAL                          5                2      10
Birth       MAL-ED           NEPAL                          6                0      10
Birth       MAL-ED           NEPAL                          7                3      10
Birth       MAL-ED           NEPAL                          8                0      10
Birth       MAL-ED           NEPAL                          9                0      10
Birth       MAL-ED           NEPAL                          10               2      10
Birth       MAL-ED           NEPAL                          11               0      10
Birth       MAL-ED           NEPAL                          12               1      10
Birth       MAL-ED           NEPAL                          13               0      10
Birth       MAL-ED           NEPAL                          14               0      10
Birth       MAL-ED           NEPAL                          15               0      10
Birth       MAL-ED           NEPAL                          16               0      10
Birth       MAL-ED           NEPAL                          17               0      10
Birth       MAL-ED           NEPAL                          18               0      10
Birth       MAL-ED           NEPAL                          19               0      10
Birth       MAL-ED           NEPAL                          20               0      10
Birth       MAL-ED           NEPAL                          24               0      10
Birth       MAL-ED           NEPAL                          25               0      10
Birth       MAL-ED           NEPAL                          27               0      10
Birth       MAL-ED           PERU                           0                1     194
Birth       MAL-ED           PERU                           1                2     194
Birth       MAL-ED           PERU                           2                0     194
Birth       MAL-ED           PERU                           3                7     194
Birth       MAL-ED           PERU                           4                3     194
Birth       MAL-ED           PERU                           5                7     194
Birth       MAL-ED           PERU                           6               21     194
Birth       MAL-ED           PERU                           7               17     194
Birth       MAL-ED           PERU                           8               20     194
Birth       MAL-ED           PERU                           9               20     194
Birth       MAL-ED           PERU                           10              10     194
Birth       MAL-ED           PERU                           11              72     194
Birth       MAL-ED           PERU                           12               1     194
Birth       MAL-ED           PERU                           13               3     194
Birth       MAL-ED           PERU                           14               4     194
Birth       MAL-ED           PERU                           15               1     194
Birth       MAL-ED           PERU                           16               1     194
Birth       MAL-ED           PERU                           17               1     194
Birth       MAL-ED           PERU                           18               1     194
Birth       MAL-ED           PERU                           19               0     194
Birth       MAL-ED           PERU                           20               2     194
Birth       MAL-ED           PERU                           24               0     194
Birth       MAL-ED           PERU                           25               0     194
Birth       MAL-ED           PERU                           27               0     194
Birth       MAL-ED           SOUTH AFRICA                   0                0      33
Birth       MAL-ED           SOUTH AFRICA                   1                0      33
Birth       MAL-ED           SOUTH AFRICA                   2                1      33
Birth       MAL-ED           SOUTH AFRICA                   3                0      33
Birth       MAL-ED           SOUTH AFRICA                   4                1      33
Birth       MAL-ED           SOUTH AFRICA                   5                1      33
Birth       MAL-ED           SOUTH AFRICA                   6                2      33
Birth       MAL-ED           SOUTH AFRICA                   7                2      33
Birth       MAL-ED           SOUTH AFRICA                   8                6      33
Birth       MAL-ED           SOUTH AFRICA                   9                1      33
Birth       MAL-ED           SOUTH AFRICA                   10               1      33
Birth       MAL-ED           SOUTH AFRICA                   11               8      33
Birth       MAL-ED           SOUTH AFRICA                   12               8      33
Birth       MAL-ED           SOUTH AFRICA                   13               0      33
Birth       MAL-ED           SOUTH AFRICA                   14               1      33
Birth       MAL-ED           SOUTH AFRICA                   15               0      33
Birth       MAL-ED           SOUTH AFRICA                   16               1      33
Birth       MAL-ED           SOUTH AFRICA                   17               0      33
Birth       MAL-ED           SOUTH AFRICA                   18               0      33
Birth       MAL-ED           SOUTH AFRICA                   19               0      33
Birth       MAL-ED           SOUTH AFRICA                   20               0      33
Birth       MAL-ED           SOUTH AFRICA                   24               0      33
Birth       MAL-ED           SOUTH AFRICA                   25               0      33
Birth       MAL-ED           SOUTH AFRICA                   27               0      33
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                9     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                6     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                6     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                6     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                5     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                5     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7               59     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                2     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               1     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               2     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               1     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0     103
Birth       NIH-Crypto       BANGLADESH                     0              168     732
Birth       NIH-Crypto       BANGLADESH                     1               20     732
Birth       NIH-Crypto       BANGLADESH                     2               13     732
Birth       NIH-Crypto       BANGLADESH                     3               34     732
Birth       NIH-Crypto       BANGLADESH                     4               40     732
Birth       NIH-Crypto       BANGLADESH                     5               84     732
Birth       NIH-Crypto       BANGLADESH                     6               32     732
Birth       NIH-Crypto       BANGLADESH                     7               57     732
Birth       NIH-Crypto       BANGLADESH                     8               87     732
Birth       NIH-Crypto       BANGLADESH                     9               83     732
Birth       NIH-Crypto       BANGLADESH                     10              50     732
Birth       NIH-Crypto       BANGLADESH                     11               0     732
Birth       NIH-Crypto       BANGLADESH                     12              33     732
Birth       NIH-Crypto       BANGLADESH                     13               0     732
Birth       NIH-Crypto       BANGLADESH                     14               8     732
Birth       NIH-Crypto       BANGLADESH                     15              16     732
Birth       NIH-Crypto       BANGLADESH                     16               0     732
Birth       NIH-Crypto       BANGLADESH                     17               7     732
Birth       NIH-Crypto       BANGLADESH                     18               0     732
Birth       NIH-Crypto       BANGLADESH                     19               0     732
Birth       NIH-Crypto       BANGLADESH                     20               0     732
Birth       NIH-Crypto       BANGLADESH                     24               0     732
Birth       NIH-Crypto       BANGLADESH                     25               0     732
Birth       NIH-Crypto       BANGLADESH                     27               0     732
Birth       PROBIT           BELARUS                        0                0   13424
Birth       PROBIT           BELARUS                        1                0   13424
Birth       PROBIT           BELARUS                        2                0   13424
Birth       PROBIT           BELARUS                        3                0   13424
Birth       PROBIT           BELARUS                        4                0   13424
Birth       PROBIT           BELARUS                        5                0   13424
Birth       PROBIT           BELARUS                        6                0   13424
Birth       PROBIT           BELARUS                        7                0   13424
Birth       PROBIT           BELARUS                        8               23   13424
Birth       PROBIT           BELARUS                        9                0   13424
Birth       PROBIT           BELARUS                        10             295   13424
Birth       PROBIT           BELARUS                        11               0   13424
Birth       PROBIT           BELARUS                        12            5002   13424
Birth       PROBIT           BELARUS                        13            6045   13424
Birth       PROBIT           BELARUS                        14             333   13424
Birth       PROBIT           BELARUS                        15               0   13424
Birth       PROBIT           BELARUS                        16            1726   13424
Birth       PROBIT           BELARUS                        17               0   13424
Birth       PROBIT           BELARUS                        18               0   13424
Birth       PROBIT           BELARUS                        19               0   13424
Birth       PROBIT           BELARUS                        20               0   13424
Birth       PROBIT           BELARUS                        24               0   13424
Birth       PROBIT           BELARUS                        25               0   13424
Birth       PROBIT           BELARUS                        27               0   13424
Birth       PROVIDE          BANGLADESH                     0              164     539
Birth       PROVIDE          BANGLADESH                     1                9     539
Birth       PROVIDE          BANGLADESH                     2               14     539
Birth       PROVIDE          BANGLADESH                     3               24     539
Birth       PROVIDE          BANGLADESH                     4               40     539
Birth       PROVIDE          BANGLADESH                     5               69     539
Birth       PROVIDE          BANGLADESH                     6               24     539
Birth       PROVIDE          BANGLADESH                     7               32     539
Birth       PROVIDE          BANGLADESH                     8               42     539
Birth       PROVIDE          BANGLADESH                     9               45     539
Birth       PROVIDE          BANGLADESH                     10              26     539
Birth       PROVIDE          BANGLADESH                     11              20     539
Birth       PROVIDE          BANGLADESH                     12               2     539
Birth       PROVIDE          BANGLADESH                     13               0     539
Birth       PROVIDE          BANGLADESH                     14              17     539
Birth       PROVIDE          BANGLADESH                     15               6     539
Birth       PROVIDE          BANGLADESH                     16               4     539
Birth       PROVIDE          BANGLADESH                     17               0     539
Birth       PROVIDE          BANGLADESH                     18               0     539
Birth       PROVIDE          BANGLADESH                     19               1     539
Birth       PROVIDE          BANGLADESH                     20               0     539
Birth       PROVIDE          BANGLADESH                     24               0     539
Birth       PROVIDE          BANGLADESH                     25               0     539
Birth       PROVIDE          BANGLADESH                     27               0     539
Birth       SAS-CompFeed     INDIA                          0              165    1249
Birth       SAS-CompFeed     INDIA                          1                0    1249
Birth       SAS-CompFeed     INDIA                          2                6    1249
Birth       SAS-CompFeed     INDIA                          3               14    1249
Birth       SAS-CompFeed     INDIA                          4               20    1249
Birth       SAS-CompFeed     INDIA                          5               79    1249
Birth       SAS-CompFeed     INDIA                          6               22    1249
Birth       SAS-CompFeed     INDIA                          7               98    1249
Birth       SAS-CompFeed     INDIA                          8              139    1249
Birth       SAS-CompFeed     INDIA                          9               81    1249
Birth       SAS-CompFeed     INDIA                          10             326    1249
Birth       SAS-CompFeed     INDIA                          11              37    1249
Birth       SAS-CompFeed     INDIA                          12             180    1249
Birth       SAS-CompFeed     INDIA                          13               4    1249
Birth       SAS-CompFeed     INDIA                          14               9    1249
Birth       SAS-CompFeed     INDIA                          15              46    1249
Birth       SAS-CompFeed     INDIA                          16               7    1249
Birth       SAS-CompFeed     INDIA                          17              12    1249
Birth       SAS-CompFeed     INDIA                          18               3    1249
Birth       SAS-CompFeed     INDIA                          19               1    1249
Birth       SAS-CompFeed     INDIA                          20               0    1249
Birth       SAS-CompFeed     INDIA                          24               0    1249
Birth       SAS-CompFeed     INDIA                          25               0    1249
Birth       SAS-CompFeed     INDIA                          27               0    1249
Birth       ZVITAMBO         ZIMBABWE                       0               61   13501
Birth       ZVITAMBO         ZIMBABWE                       1                2   13501
Birth       ZVITAMBO         ZIMBABWE                       2                4   13501
Birth       ZVITAMBO         ZIMBABWE                       3               15   13501
Birth       ZVITAMBO         ZIMBABWE                       4               23   13501
Birth       ZVITAMBO         ZIMBABWE                       5               32   13501
Birth       ZVITAMBO         ZIMBABWE                       6               42   13501
Birth       ZVITAMBO         ZIMBABWE                       7              784   13501
Birth       ZVITAMBO         ZIMBABWE                       8              102   13501
Birth       ZVITAMBO         ZIMBABWE                       9              894   13501
Birth       ZVITAMBO         ZIMBABWE                       10             322   13501
Birth       ZVITAMBO         ZIMBABWE                       11           10238   13501
Birth       ZVITAMBO         ZIMBABWE                       12              57   13501
Birth       ZVITAMBO         ZIMBABWE                       13             925   13501
Birth       ZVITAMBO         ZIMBABWE                       14               0   13501
Birth       ZVITAMBO         ZIMBABWE                       15               0   13501
Birth       ZVITAMBO         ZIMBABWE                       16               0   13501
Birth       ZVITAMBO         ZIMBABWE                       17               0   13501
Birth       ZVITAMBO         ZIMBABWE                       18               0   13501
Birth       ZVITAMBO         ZIMBABWE                       19               0   13501
Birth       ZVITAMBO         ZIMBABWE                       20               0   13501
Birth       ZVITAMBO         ZIMBABWE                       24               0   13501
Birth       ZVITAMBO         ZIMBABWE                       25               0   13501
Birth       ZVITAMBO         ZIMBABWE                       27               0   13501
6 months    COHORTS          GUATEMALA                      0              406     904
6 months    COHORTS          GUATEMALA                      1               45     904
6 months    COHORTS          GUATEMALA                      2              170     904
6 months    COHORTS          GUATEMALA                      3              118     904
6 months    COHORTS          GUATEMALA                      4               59     904
6 months    COHORTS          GUATEMALA                      5               16     904
6 months    COHORTS          GUATEMALA                      6               79     904
6 months    COHORTS          GUATEMALA                      7                3     904
6 months    COHORTS          GUATEMALA                      8                1     904
6 months    COHORTS          GUATEMALA                      9                0     904
6 months    COHORTS          GUATEMALA                      10               1     904
6 months    COHORTS          GUATEMALA                      11               0     904
6 months    COHORTS          GUATEMALA                      12               5     904
6 months    COHORTS          GUATEMALA                      13               0     904
6 months    COHORTS          GUATEMALA                      14               1     904
6 months    COHORTS          GUATEMALA                      15               0     904
6 months    COHORTS          GUATEMALA                      16               0     904
6 months    COHORTS          GUATEMALA                      17               0     904
6 months    COHORTS          GUATEMALA                      18               0     904
6 months    COHORTS          GUATEMALA                      19               0     904
6 months    COHORTS          GUATEMALA                      20               0     904
6 months    COHORTS          GUATEMALA                      24               0     904
6 months    COHORTS          GUATEMALA                      25               0     904
6 months    COHORTS          GUATEMALA                      27               0     904
6 months    COHORTS          INDIA                          0              119    1385
6 months    COHORTS          INDIA                          1                0    1385
6 months    COHORTS          INDIA                          2                0    1385
6 months    COHORTS          INDIA                          3              128    1385
6 months    COHORTS          INDIA                          4                0    1385
6 months    COHORTS          INDIA                          5                0    1385
6 months    COHORTS          INDIA                          6                0    1385
6 months    COHORTS          INDIA                          7                0    1385
6 months    COHORTS          INDIA                          8              203    1385
6 months    COHORTS          INDIA                          9                0    1385
6 months    COHORTS          INDIA                          10               0    1385
6 months    COHORTS          INDIA                          11               0    1385
6 months    COHORTS          INDIA                          12             391    1385
6 months    COHORTS          INDIA                          13               0    1385
6 months    COHORTS          INDIA                          14             152    1385
6 months    COHORTS          INDIA                          15             273    1385
6 months    COHORTS          INDIA                          16               0    1385
6 months    COHORTS          INDIA                          17             119    1385
6 months    COHORTS          INDIA                          18               0    1385
6 months    COHORTS          INDIA                          19               0    1385
6 months    COHORTS          INDIA                          20               0    1385
6 months    COHORTS          INDIA                          24               0    1385
6 months    COHORTS          INDIA                          25               0    1385
6 months    COHORTS          INDIA                          27               0    1385
6 months    COHORTS          PHILIPPINES                    0               55    2564
6 months    COHORTS          PHILIPPINES                    1               32    2564
6 months    COHORTS          PHILIPPINES                    2               88    2564
6 months    COHORTS          PHILIPPINES                    3              155    2564
6 months    COHORTS          PHILIPPINES                    4              237    2564
6 months    COHORTS          PHILIPPINES                    5              179    2564
6 months    COHORTS          PHILIPPINES                    6              596    2564
6 months    COHORTS          PHILIPPINES                    7              132    2564
6 months    COHORTS          PHILIPPINES                    8              199    2564
6 months    COHORTS          PHILIPPINES                    9              176    2564
6 months    COHORTS          PHILIPPINES                    10             291    2564
6 months    COHORTS          PHILIPPINES                    11              57    2564
6 months    COHORTS          PHILIPPINES                    12             148    2564
6 months    COHORTS          PHILIPPINES                    13              58    2564
6 months    COHORTS          PHILIPPINES                    14             120    2564
6 months    COHORTS          PHILIPPINES                    15              33    2564
6 months    COHORTS          PHILIPPINES                    16               4    2564
6 months    COHORTS          PHILIPPINES                    17               2    2564
6 months    COHORTS          PHILIPPINES                    18               2    2564
6 months    COHORTS          PHILIPPINES                    19               0    2564
6 months    COHORTS          PHILIPPINES                    20               0    2564
6 months    COHORTS          PHILIPPINES                    24               0    2564
6 months    COHORTS          PHILIPPINES                    25               0    2564
6 months    COHORTS          PHILIPPINES                    27               0    2564
6 months    GMS-Nepal        NEPAL                          0              243     563
6 months    GMS-Nepal        NEPAL                          1                0     563
6 months    GMS-Nepal        NEPAL                          2                0     563
6 months    GMS-Nepal        NEPAL                          3                0     563
6 months    GMS-Nepal        NEPAL                          4                0     563
6 months    GMS-Nepal        NEPAL                          5               91     563
6 months    GMS-Nepal        NEPAL                          6                0     563
6 months    GMS-Nepal        NEPAL                          7                0     563
6 months    GMS-Nepal        NEPAL                          8               92     563
6 months    GMS-Nepal        NEPAL                          9                0     563
6 months    GMS-Nepal        NEPAL                          10             105     563
6 months    GMS-Nepal        NEPAL                          11               0     563
6 months    GMS-Nepal        NEPAL                          12              32     563
6 months    GMS-Nepal        NEPAL                          13               0     563
6 months    GMS-Nepal        NEPAL                          14               0     563
6 months    GMS-Nepal        NEPAL                          15               0     563
6 months    GMS-Nepal        NEPAL                          16               0     563
6 months    GMS-Nepal        NEPAL                          17               0     563
6 months    GMS-Nepal        NEPAL                          18               0     563
6 months    GMS-Nepal        NEPAL                          19               0     563
6 months    GMS-Nepal        NEPAL                          20               0     563
6 months    GMS-Nepal        NEPAL                          24               0     563
6 months    GMS-Nepal        NEPAL                          25               0     563
6 months    GMS-Nepal        NEPAL                          27               0     563
6 months    LCNI-5           MALAWI                         0              290     812
6 months    LCNI-5           MALAWI                         1               11     812
6 months    LCNI-5           MALAWI                         2               32     812
6 months    LCNI-5           MALAWI                         3               39     812
6 months    LCNI-5           MALAWI                         4               59     812
6 months    LCNI-5           MALAWI                         5               61     812
6 months    LCNI-5           MALAWI                         6               69     812
6 months    LCNI-5           MALAWI                         7               68     812
6 months    LCNI-5           MALAWI                         8               91     812
6 months    LCNI-5           MALAWI                         9               12     812
6 months    LCNI-5           MALAWI                         10              16     812
6 months    LCNI-5           MALAWI                         11               7     812
6 months    LCNI-5           MALAWI                         12              52     812
6 months    LCNI-5           MALAWI                         13               1     812
6 months    LCNI-5           MALAWI                         14               3     812
6 months    LCNI-5           MALAWI                         15               0     812
6 months    LCNI-5           MALAWI                         16               1     812
6 months    LCNI-5           MALAWI                         17               0     812
6 months    LCNI-5           MALAWI                         18               0     812
6 months    LCNI-5           MALAWI                         19               0     812
6 months    LCNI-5           MALAWI                         20               0     812
6 months    LCNI-5           MALAWI                         24               0     812
6 months    LCNI-5           MALAWI                         25               0     812
6 months    LCNI-5           MALAWI                         27               0     812
6 months    MAL-ED           BANGLADESH                     0                0     132
6 months    MAL-ED           BANGLADESH                     1                6     132
6 months    MAL-ED           BANGLADESH                     2               12     132
6 months    MAL-ED           BANGLADESH                     3               11     132
6 months    MAL-ED           BANGLADESH                     4                7     132
6 months    MAL-ED           BANGLADESH                     5               29     132
6 months    MAL-ED           BANGLADESH                     6                8     132
6 months    MAL-ED           BANGLADESH                     7                9     132
6 months    MAL-ED           BANGLADESH                     8               16     132
6 months    MAL-ED           BANGLADESH                     9               13     132
6 months    MAL-ED           BANGLADESH                     10               9     132
6 months    MAL-ED           BANGLADESH                     11               0     132
6 months    MAL-ED           BANGLADESH                     12              10     132
6 months    MAL-ED           BANGLADESH                     13               0     132
6 months    MAL-ED           BANGLADESH                     14               0     132
6 months    MAL-ED           BANGLADESH                     15               0     132
6 months    MAL-ED           BANGLADESH                     16               2     132
6 months    MAL-ED           BANGLADESH                     17               0     132
6 months    MAL-ED           BANGLADESH                     18               0     132
6 months    MAL-ED           BANGLADESH                     19               0     132
6 months    MAL-ED           BANGLADESH                     20               0     132
6 months    MAL-ED           BANGLADESH                     24               0     132
6 months    MAL-ED           BANGLADESH                     25               0     132
6 months    MAL-ED           BANGLADESH                     27               0     132
6 months    MAL-ED           INDIA                          0                0     138
6 months    MAL-ED           INDIA                          1                0     138
6 months    MAL-ED           INDIA                          2                6     138
6 months    MAL-ED           INDIA                          3                9     138
6 months    MAL-ED           INDIA                          4                6     138
6 months    MAL-ED           INDIA                          5               33     138
6 months    MAL-ED           INDIA                          6               11     138
6 months    MAL-ED           INDIA                          7               11     138
6 months    MAL-ED           INDIA                          8               19     138
6 months    MAL-ED           INDIA                          9               26     138
6 months    MAL-ED           INDIA                          10               6     138
6 months    MAL-ED           INDIA                          11               2     138
6 months    MAL-ED           INDIA                          12               3     138
6 months    MAL-ED           INDIA                          13               1     138
6 months    MAL-ED           INDIA                          14               2     138
6 months    MAL-ED           INDIA                          15               2     138
6 months    MAL-ED           INDIA                          16               0     138
6 months    MAL-ED           INDIA                          17               0     138
6 months    MAL-ED           INDIA                          18               1     138
6 months    MAL-ED           INDIA                          19               0     138
6 months    MAL-ED           INDIA                          20               0     138
6 months    MAL-ED           INDIA                          24               0     138
6 months    MAL-ED           INDIA                          25               0     138
6 months    MAL-ED           INDIA                          27               0     138
6 months    MAL-ED           NEPAL                          0                0      95
6 months    MAL-ED           NEPAL                          1                0      95
6 months    MAL-ED           NEPAL                          2                4      95
6 months    MAL-ED           NEPAL                          3                3      95
6 months    MAL-ED           NEPAL                          4               10      95
6 months    MAL-ED           NEPAL                          5                6      95
6 months    MAL-ED           NEPAL                          6                4      95
6 months    MAL-ED           NEPAL                          7                9      95
6 months    MAL-ED           NEPAL                          8               12      95
6 months    MAL-ED           NEPAL                          9                7      95
6 months    MAL-ED           NEPAL                          10              26      95
6 months    MAL-ED           NEPAL                          11               1      95
6 months    MAL-ED           NEPAL                          12               7      95
6 months    MAL-ED           NEPAL                          13               0      95
6 months    MAL-ED           NEPAL                          14               0      95
6 months    MAL-ED           NEPAL                          15               1      95
6 months    MAL-ED           NEPAL                          16               1      95
6 months    MAL-ED           NEPAL                          17               3      95
6 months    MAL-ED           NEPAL                          18               1      95
6 months    MAL-ED           NEPAL                          19               0      95
6 months    MAL-ED           NEPAL                          20               0      95
6 months    MAL-ED           NEPAL                          24               0      95
6 months    MAL-ED           NEPAL                          25               0      95
6 months    MAL-ED           NEPAL                          27               0      95
6 months    MAL-ED           PERU                           0                1     224
6 months    MAL-ED           PERU                           1                1     224
6 months    MAL-ED           PERU                           2                0     224
6 months    MAL-ED           PERU                           3                8     224
6 months    MAL-ED           PERU                           4                4     224
6 months    MAL-ED           PERU                           5                7     224
6 months    MAL-ED           PERU                           6               23     224
6 months    MAL-ED           PERU                           7               16     224
6 months    MAL-ED           PERU                           8               20     224
6 months    MAL-ED           PERU                           9               26     224
6 months    MAL-ED           PERU                           10              11     224
6 months    MAL-ED           PERU                           11              88     224
6 months    MAL-ED           PERU                           12               1     224
6 months    MAL-ED           PERU                           13               4     224
6 months    MAL-ED           PERU                           14               4     224
6 months    MAL-ED           PERU                           15               1     224
6 months    MAL-ED           PERU                           16               1     224
6 months    MAL-ED           PERU                           17               1     224
6 months    MAL-ED           PERU                           18               5     224
6 months    MAL-ED           PERU                           19               0     224
6 months    MAL-ED           PERU                           20               2     224
6 months    MAL-ED           PERU                           24               0     224
6 months    MAL-ED           PERU                           25               0     224
6 months    MAL-ED           PERU                           27               0     224
6 months    MAL-ED           SOUTH AFRICA                   0                0      92
6 months    MAL-ED           SOUTH AFRICA                   1                0      92
6 months    MAL-ED           SOUTH AFRICA                   2                1      92
6 months    MAL-ED           SOUTH AFRICA                   3                0      92
6 months    MAL-ED           SOUTH AFRICA                   4                4      92
6 months    MAL-ED           SOUTH AFRICA                   5                1      92
6 months    MAL-ED           SOUTH AFRICA                   6                6      92
6 months    MAL-ED           SOUTH AFRICA                   7                6      92
6 months    MAL-ED           SOUTH AFRICA                   8               11      92
6 months    MAL-ED           SOUTH AFRICA                   9                6      92
6 months    MAL-ED           SOUTH AFRICA                   10               8      92
6 months    MAL-ED           SOUTH AFRICA                   11              16      92
6 months    MAL-ED           SOUTH AFRICA                   12              28      92
6 months    MAL-ED           SOUTH AFRICA                   13               0      92
6 months    MAL-ED           SOUTH AFRICA                   14               2      92
6 months    MAL-ED           SOUTH AFRICA                   15               2      92
6 months    MAL-ED           SOUTH AFRICA                   16               1      92
6 months    MAL-ED           SOUTH AFRICA                   17               0      92
6 months    MAL-ED           SOUTH AFRICA                   18               0      92
6 months    MAL-ED           SOUTH AFRICA                   19               0      92
6 months    MAL-ED           SOUTH AFRICA                   20               0      92
6 months    MAL-ED           SOUTH AFRICA                   24               0      92
6 months    MAL-ED           SOUTH AFRICA                   25               0      92
6 months    MAL-ED           SOUTH AFRICA                   27               0      92
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               13     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               12     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               17     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               13     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5               11     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                8     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              116     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                2     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               4     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               3     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               1     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0     201
6 months    NIH-Crypto       BANGLADESH                     0              163     715
6 months    NIH-Crypto       BANGLADESH                     1               18     715
6 months    NIH-Crypto       BANGLADESH                     2               12     715
6 months    NIH-Crypto       BANGLADESH                     3               30     715
6 months    NIH-Crypto       BANGLADESH                     4               37     715
6 months    NIH-Crypto       BANGLADESH                     5               87     715
6 months    NIH-Crypto       BANGLADESH                     6               35     715
6 months    NIH-Crypto       BANGLADESH                     7               54     715
6 months    NIH-Crypto       BANGLADESH                     8               86     715
6 months    NIH-Crypto       BANGLADESH                     9               81     715
6 months    NIH-Crypto       BANGLADESH                     10              49     715
6 months    NIH-Crypto       BANGLADESH                     11               0     715
6 months    NIH-Crypto       BANGLADESH                     12              34     715
6 months    NIH-Crypto       BANGLADESH                     13               0     715
6 months    NIH-Crypto       BANGLADESH                     14               8     715
6 months    NIH-Crypto       BANGLADESH                     15              14     715
6 months    NIH-Crypto       BANGLADESH                     16               0     715
6 months    NIH-Crypto       BANGLADESH                     17               7     715
6 months    NIH-Crypto       BANGLADESH                     18               0     715
6 months    NIH-Crypto       BANGLADESH                     19               0     715
6 months    NIH-Crypto       BANGLADESH                     20               0     715
6 months    NIH-Crypto       BANGLADESH                     24               0     715
6 months    NIH-Crypto       BANGLADESH                     25               0     715
6 months    NIH-Crypto       BANGLADESH                     27               0     715
6 months    PROBIT           BELARUS                        0                0   15210
6 months    PROBIT           BELARUS                        1                0   15210
6 months    PROBIT           BELARUS                        2                0   15210
6 months    PROBIT           BELARUS                        3                0   15210
6 months    PROBIT           BELARUS                        4                0   15210
6 months    PROBIT           BELARUS                        5                0   15210
6 months    PROBIT           BELARUS                        6                0   15210
6 months    PROBIT           BELARUS                        7                0   15210
6 months    PROBIT           BELARUS                        8               23   15210
6 months    PROBIT           BELARUS                        9                0   15210
6 months    PROBIT           BELARUS                        10             340   15210
6 months    PROBIT           BELARUS                        11               0   15210
6 months    PROBIT           BELARUS                        12            5598   15210
6 months    PROBIT           BELARUS                        13            6736   15210
6 months    PROBIT           BELARUS                        14             409   15210
6 months    PROBIT           BELARUS                        15               0   15210
6 months    PROBIT           BELARUS                        16            2104   15210
6 months    PROBIT           BELARUS                        17               0   15210
6 months    PROBIT           BELARUS                        18               0   15210
6 months    PROBIT           BELARUS                        19               0   15210
6 months    PROBIT           BELARUS                        20               0   15210
6 months    PROBIT           BELARUS                        24               0   15210
6 months    PROBIT           BELARUS                        25               0   15210
6 months    PROBIT           BELARUS                        27               0   15210
6 months    PROVIDE          BANGLADESH                     0              179     604
6 months    PROVIDE          BANGLADESH                     1               13     604
6 months    PROVIDE          BANGLADESH                     2               17     604
6 months    PROVIDE          BANGLADESH                     3               21     604
6 months    PROVIDE          BANGLADESH                     4               42     604
6 months    PROVIDE          BANGLADESH                     5               65     604
6 months    PROVIDE          BANGLADESH                     6               25     604
6 months    PROVIDE          BANGLADESH                     7               33     604
6 months    PROVIDE          BANGLADESH                     8               58     604
6 months    PROVIDE          BANGLADESH                     9               57     604
6 months    PROVIDE          BANGLADESH                     10              33     604
6 months    PROVIDE          BANGLADESH                     11              24     604
6 months    PROVIDE          BANGLADESH                     12               4     604
6 months    PROVIDE          BANGLADESH                     13               0     604
6 months    PROVIDE          BANGLADESH                     14              17     604
6 months    PROVIDE          BANGLADESH                     15               7     604
6 months    PROVIDE          BANGLADESH                     16               8     604
6 months    PROVIDE          BANGLADESH                     17               0     604
6 months    PROVIDE          BANGLADESH                     18               0     604
6 months    PROVIDE          BANGLADESH                     19               1     604
6 months    PROVIDE          BANGLADESH                     20               0     604
6 months    PROVIDE          BANGLADESH                     24               0     604
6 months    PROVIDE          BANGLADESH                     25               0     604
6 months    PROVIDE          BANGLADESH                     27               0     604
6 months    SAS-CompFeed     INDIA                          0              152    1333
6 months    SAS-CompFeed     INDIA                          1                0    1333
6 months    SAS-CompFeed     INDIA                          2                5    1333
6 months    SAS-CompFeed     INDIA                          3               13    1333
6 months    SAS-CompFeed     INDIA                          4               21    1333
6 months    SAS-CompFeed     INDIA                          5               81    1333
6 months    SAS-CompFeed     INDIA                          6               26    1333
6 months    SAS-CompFeed     INDIA                          7              102    1333
6 months    SAS-CompFeed     INDIA                          8              150    1333
6 months    SAS-CompFeed     INDIA                          9               85    1333
6 months    SAS-CompFeed     INDIA                          10             350    1333
6 months    SAS-CompFeed     INDIA                          11              36    1333
6 months    SAS-CompFeed     INDIA                          12             203    1333
6 months    SAS-CompFeed     INDIA                          13               7    1333
6 months    SAS-CompFeed     INDIA                          14              16    1333
6 months    SAS-CompFeed     INDIA                          15              57    1333
6 months    SAS-CompFeed     INDIA                          16              10    1333
6 months    SAS-CompFeed     INDIA                          17              14    1333
6 months    SAS-CompFeed     INDIA                          18               3    1333
6 months    SAS-CompFeed     INDIA                          19               1    1333
6 months    SAS-CompFeed     INDIA                          20               1    1333
6 months    SAS-CompFeed     INDIA                          24               0    1333
6 months    SAS-CompFeed     INDIA                          25               0    1333
6 months    SAS-CompFeed     INDIA                          27               0    1333
6 months    SAS-FoodSuppl    INDIA                          0              132     380
6 months    SAS-FoodSuppl    INDIA                          1                1     380
6 months    SAS-FoodSuppl    INDIA                          2               10     380
6 months    SAS-FoodSuppl    INDIA                          3                6     380
6 months    SAS-FoodSuppl    INDIA                          4               10     380
6 months    SAS-FoodSuppl    INDIA                          5               50     380
6 months    SAS-FoodSuppl    INDIA                          6               12     380
6 months    SAS-FoodSuppl    INDIA                          7               15     380
6 months    SAS-FoodSuppl    INDIA                          8               43     380
6 months    SAS-FoodSuppl    INDIA                          9               25     380
6 months    SAS-FoodSuppl    INDIA                          10              54     380
6 months    SAS-FoodSuppl    INDIA                          11               3     380
6 months    SAS-FoodSuppl    INDIA                          12              10     380
6 months    SAS-FoodSuppl    INDIA                          13               1     380
6 months    SAS-FoodSuppl    INDIA                          14               5     380
6 months    SAS-FoodSuppl    INDIA                          15               3     380
6 months    SAS-FoodSuppl    INDIA                          16               0     380
6 months    SAS-FoodSuppl    INDIA                          17               0     380
6 months    SAS-FoodSuppl    INDIA                          18               0     380
6 months    SAS-FoodSuppl    INDIA                          19               0     380
6 months    SAS-FoodSuppl    INDIA                          20               0     380
6 months    SAS-FoodSuppl    INDIA                          24               0     380
6 months    SAS-FoodSuppl    INDIA                          25               0     380
6 months    SAS-FoodSuppl    INDIA                          27               0     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                4    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                5    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             1073    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                8    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               46    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              21    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             489    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              15    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13             100    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14              12    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15              18    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16              24    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17              20    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18               4    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19               0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20               0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24              14    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25               1    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27             163    2018
6 months    ZVITAMBO         ZIMBABWE                       0               43    8429
6 months    ZVITAMBO         ZIMBABWE                       1                1    8429
6 months    ZVITAMBO         ZIMBABWE                       2                4    8429
6 months    ZVITAMBO         ZIMBABWE                       3                9    8429
6 months    ZVITAMBO         ZIMBABWE                       4               15    8429
6 months    ZVITAMBO         ZIMBABWE                       5               23    8429
6 months    ZVITAMBO         ZIMBABWE                       6               27    8429
6 months    ZVITAMBO         ZIMBABWE                       7              514    8429
6 months    ZVITAMBO         ZIMBABWE                       8               67    8429
6 months    ZVITAMBO         ZIMBABWE                       9              553    8429
6 months    ZVITAMBO         ZIMBABWE                       10             203    8429
6 months    ZVITAMBO         ZIMBABWE                       11            6384    8429
6 months    ZVITAMBO         ZIMBABWE                       12              39    8429
6 months    ZVITAMBO         ZIMBABWE                       13             547    8429
6 months    ZVITAMBO         ZIMBABWE                       14               0    8429
6 months    ZVITAMBO         ZIMBABWE                       15               0    8429
6 months    ZVITAMBO         ZIMBABWE                       16               0    8429
6 months    ZVITAMBO         ZIMBABWE                       17               0    8429
6 months    ZVITAMBO         ZIMBABWE                       18               0    8429
6 months    ZVITAMBO         ZIMBABWE                       19               0    8429
6 months    ZVITAMBO         ZIMBABWE                       20               0    8429
6 months    ZVITAMBO         ZIMBABWE                       24               0    8429
6 months    ZVITAMBO         ZIMBABWE                       25               0    8429
6 months    ZVITAMBO         ZIMBABWE                       27               0    8429
24 months   COHORTS          GUATEMALA                      0              462     992
24 months   COHORTS          GUATEMALA                      1               57     992
24 months   COHORTS          GUATEMALA                      2              169     992
24 months   COHORTS          GUATEMALA                      3              127     992
24 months   COHORTS          GUATEMALA                      4               65     992
24 months   COHORTS          GUATEMALA                      5               24     992
24 months   COHORTS          GUATEMALA                      6               78     992
24 months   COHORTS          GUATEMALA                      7                2     992
24 months   COHORTS          GUATEMALA                      8                1     992
24 months   COHORTS          GUATEMALA                      9                0     992
24 months   COHORTS          GUATEMALA                      10               1     992
24 months   COHORTS          GUATEMALA                      11               0     992
24 months   COHORTS          GUATEMALA                      12               5     992
24 months   COHORTS          GUATEMALA                      13               0     992
24 months   COHORTS          GUATEMALA                      14               0     992
24 months   COHORTS          GUATEMALA                      15               1     992
24 months   COHORTS          GUATEMALA                      16               0     992
24 months   COHORTS          GUATEMALA                      17               0     992
24 months   COHORTS          GUATEMALA                      18               0     992
24 months   COHORTS          GUATEMALA                      19               0     992
24 months   COHORTS          GUATEMALA                      20               0     992
24 months   COHORTS          GUATEMALA                      24               0     992
24 months   COHORTS          GUATEMALA                      25               0     992
24 months   COHORTS          GUATEMALA                      27               0     992
24 months   COHORTS          INDIA                          0              115    1380
24 months   COHORTS          INDIA                          1                0    1380
24 months   COHORTS          INDIA                          2                0    1380
24 months   COHORTS          INDIA                          3              128    1380
24 months   COHORTS          INDIA                          4                0    1380
24 months   COHORTS          INDIA                          5                0    1380
24 months   COHORTS          INDIA                          6                0    1380
24 months   COHORTS          INDIA                          7                0    1380
24 months   COHORTS          INDIA                          8              207    1380
24 months   COHORTS          INDIA                          9                0    1380
24 months   COHORTS          INDIA                          10               0    1380
24 months   COHORTS          INDIA                          11               0    1380
24 months   COHORTS          INDIA                          12             391    1380
24 months   COHORTS          INDIA                          13               0    1380
24 months   COHORTS          INDIA                          14             151    1380
24 months   COHORTS          INDIA                          15             272    1380
24 months   COHORTS          INDIA                          16               0    1380
24 months   COHORTS          INDIA                          17             116    1380
24 months   COHORTS          INDIA                          18               0    1380
24 months   COHORTS          INDIA                          19               0    1380
24 months   COHORTS          INDIA                          20               0    1380
24 months   COHORTS          INDIA                          24               0    1380
24 months   COHORTS          INDIA                          25               0    1380
24 months   COHORTS          INDIA                          27               0    1380
24 months   COHORTS          PHILIPPINES                    0               49    2314
24 months   COHORTS          PHILIPPINES                    1               28    2314
24 months   COHORTS          PHILIPPINES                    2               86    2314
24 months   COHORTS          PHILIPPINES                    3              139    2314
24 months   COHORTS          PHILIPPINES                    4              217    2314
24 months   COHORTS          PHILIPPINES                    5              173    2314
24 months   COHORTS          PHILIPPINES                    6              515    2314
24 months   COHORTS          PHILIPPINES                    7              121    2314
24 months   COHORTS          PHILIPPINES                    8              188    2314
24 months   COHORTS          PHILIPPINES                    9              158    2314
24 months   COHORTS          PHILIPPINES                    10             255    2314
24 months   COHORTS          PHILIPPINES                    11              58    2314
24 months   COHORTS          PHILIPPINES                    12             133    2314
24 months   COHORTS          PHILIPPINES                    13              49    2314
24 months   COHORTS          PHILIPPINES                    14             109    2314
24 months   COHORTS          PHILIPPINES                    15              31    2314
24 months   COHORTS          PHILIPPINES                    16               4    2314
24 months   COHORTS          PHILIPPINES                    17               1    2314
24 months   COHORTS          PHILIPPINES                    18               0    2314
24 months   COHORTS          PHILIPPINES                    19               0    2314
24 months   COHORTS          PHILIPPINES                    20               0    2314
24 months   COHORTS          PHILIPPINES                    24               0    2314
24 months   COHORTS          PHILIPPINES                    25               0    2314
24 months   COHORTS          PHILIPPINES                    27               0    2314
24 months   GMS-Nepal        NEPAL                          0              219     487
24 months   GMS-Nepal        NEPAL                          1                0     487
24 months   GMS-Nepal        NEPAL                          2                0     487
24 months   GMS-Nepal        NEPAL                          3                0     487
24 months   GMS-Nepal        NEPAL                          4                0     487
24 months   GMS-Nepal        NEPAL                          5               72     487
24 months   GMS-Nepal        NEPAL                          6                0     487
24 months   GMS-Nepal        NEPAL                          7                0     487
24 months   GMS-Nepal        NEPAL                          8               83     487
24 months   GMS-Nepal        NEPAL                          9                0     487
24 months   GMS-Nepal        NEPAL                          10              86     487
24 months   GMS-Nepal        NEPAL                          11               0     487
24 months   GMS-Nepal        NEPAL                          12              27     487
24 months   GMS-Nepal        NEPAL                          13               0     487
24 months   GMS-Nepal        NEPAL                          14               0     487
24 months   GMS-Nepal        NEPAL                          15               0     487
24 months   GMS-Nepal        NEPAL                          16               0     487
24 months   GMS-Nepal        NEPAL                          17               0     487
24 months   GMS-Nepal        NEPAL                          18               0     487
24 months   GMS-Nepal        NEPAL                          19               0     487
24 months   GMS-Nepal        NEPAL                          20               0     487
24 months   GMS-Nepal        NEPAL                          24               0     487
24 months   GMS-Nepal        NEPAL                          25               0     487
24 months   GMS-Nepal        NEPAL                          27               0     487
24 months   LCNI-5           MALAWI                         0              203     571
24 months   LCNI-5           MALAWI                         1               10     571
24 months   LCNI-5           MALAWI                         2               20     571
24 months   LCNI-5           MALAWI                         3               35     571
24 months   LCNI-5           MALAWI                         4               41     571
24 months   LCNI-5           MALAWI                         5               42     571
24 months   LCNI-5           MALAWI                         6               47     571
24 months   LCNI-5           MALAWI                         7               46     571
24 months   LCNI-5           MALAWI                         8               60     571
24 months   LCNI-5           MALAWI                         9                9     571
24 months   LCNI-5           MALAWI                         10              13     571
24 months   LCNI-5           MALAWI                         11               4     571
24 months   LCNI-5           MALAWI                         12              39     571
24 months   LCNI-5           MALAWI                         13               1     571
24 months   LCNI-5           MALAWI                         14               1     571
24 months   LCNI-5           MALAWI                         15               0     571
24 months   LCNI-5           MALAWI                         16               0     571
24 months   LCNI-5           MALAWI                         17               0     571
24 months   LCNI-5           MALAWI                         18               0     571
24 months   LCNI-5           MALAWI                         19               0     571
24 months   LCNI-5           MALAWI                         20               0     571
24 months   LCNI-5           MALAWI                         24               0     571
24 months   LCNI-5           MALAWI                         25               0     571
24 months   LCNI-5           MALAWI                         27               0     571
24 months   MAL-ED           BANGLADESH                     0                0     117
24 months   MAL-ED           BANGLADESH                     1                7     117
24 months   MAL-ED           BANGLADESH                     2               11     117
24 months   MAL-ED           BANGLADESH                     3               11     117
24 months   MAL-ED           BANGLADESH                     4                6     117
24 months   MAL-ED           BANGLADESH                     5               27     117
24 months   MAL-ED           BANGLADESH                     6                7     117
24 months   MAL-ED           BANGLADESH                     7                8     117
24 months   MAL-ED           BANGLADESH                     8               13     117
24 months   MAL-ED           BANGLADESH                     9               10     117
24 months   MAL-ED           BANGLADESH                     10               8     117
24 months   MAL-ED           BANGLADESH                     11               0     117
24 months   MAL-ED           BANGLADESH                     12               7     117
24 months   MAL-ED           BANGLADESH                     13               0     117
24 months   MAL-ED           BANGLADESH                     14               0     117
24 months   MAL-ED           BANGLADESH                     15               0     117
24 months   MAL-ED           BANGLADESH                     16               2     117
24 months   MAL-ED           BANGLADESH                     17               0     117
24 months   MAL-ED           BANGLADESH                     18               0     117
24 months   MAL-ED           BANGLADESH                     19               0     117
24 months   MAL-ED           BANGLADESH                     20               0     117
24 months   MAL-ED           BANGLADESH                     24               0     117
24 months   MAL-ED           BANGLADESH                     25               0     117
24 months   MAL-ED           BANGLADESH                     27               0     117
24 months   MAL-ED           INDIA                          0                0     132
24 months   MAL-ED           INDIA                          1                0     132
24 months   MAL-ED           INDIA                          2                5     132
24 months   MAL-ED           INDIA                          3                9     132
24 months   MAL-ED           INDIA                          4                6     132
24 months   MAL-ED           INDIA                          5               31     132
24 months   MAL-ED           INDIA                          6               10     132
24 months   MAL-ED           INDIA                          7               10     132
24 months   MAL-ED           INDIA                          8               19     132
24 months   MAL-ED           INDIA                          9               25     132
24 months   MAL-ED           INDIA                          10               6     132
24 months   MAL-ED           INDIA                          11               2     132
24 months   MAL-ED           INDIA                          12               3     132
24 months   MAL-ED           INDIA                          13               1     132
24 months   MAL-ED           INDIA                          14               2     132
24 months   MAL-ED           INDIA                          15               2     132
24 months   MAL-ED           INDIA                          16               0     132
24 months   MAL-ED           INDIA                          17               0     132
24 months   MAL-ED           INDIA                          18               1     132
24 months   MAL-ED           INDIA                          19               0     132
24 months   MAL-ED           INDIA                          20               0     132
24 months   MAL-ED           INDIA                          24               0     132
24 months   MAL-ED           INDIA                          25               0     132
24 months   MAL-ED           INDIA                          27               0     132
24 months   MAL-ED           NEPAL                          0                0      91
24 months   MAL-ED           NEPAL                          1                0      91
24 months   MAL-ED           NEPAL                          2                4      91
24 months   MAL-ED           NEPAL                          3                3      91
24 months   MAL-ED           NEPAL                          4               10      91
24 months   MAL-ED           NEPAL                          5                6      91
24 months   MAL-ED           NEPAL                          6                4      91
24 months   MAL-ED           NEPAL                          7                8      91
24 months   MAL-ED           NEPAL                          8               11      91
24 months   MAL-ED           NEPAL                          9                7      91
24 months   MAL-ED           NEPAL                          10              24      91
24 months   MAL-ED           NEPAL                          11               1      91
24 months   MAL-ED           NEPAL                          12               7      91
24 months   MAL-ED           NEPAL                          13               0      91
24 months   MAL-ED           NEPAL                          14               0      91
24 months   MAL-ED           NEPAL                          15               1      91
24 months   MAL-ED           NEPAL                          16               1      91
24 months   MAL-ED           NEPAL                          17               3      91
24 months   MAL-ED           NEPAL                          18               1      91
24 months   MAL-ED           NEPAL                          19               0      91
24 months   MAL-ED           NEPAL                          20               0      91
24 months   MAL-ED           NEPAL                          24               0      91
24 months   MAL-ED           NEPAL                          25               0      91
24 months   MAL-ED           NEPAL                          27               0      91
24 months   MAL-ED           PERU                           0                1     164
24 months   MAL-ED           PERU                           1                1     164
24 months   MAL-ED           PERU                           2                0     164
24 months   MAL-ED           PERU                           3                6     164
24 months   MAL-ED           PERU                           4                3     164
24 months   MAL-ED           PERU                           5                7     164
24 months   MAL-ED           PERU                           6               14     164
24 months   MAL-ED           PERU                           7               12     164
24 months   MAL-ED           PERU                           8               15     164
24 months   MAL-ED           PERU                           9               21     164
24 months   MAL-ED           PERU                           10               7     164
24 months   MAL-ED           PERU                           11              65     164
24 months   MAL-ED           PERU                           12               1     164
24 months   MAL-ED           PERU                           13               2     164
24 months   MAL-ED           PERU                           14               4     164
24 months   MAL-ED           PERU                           15               0     164
24 months   MAL-ED           PERU                           16               1     164
24 months   MAL-ED           PERU                           17               1     164
24 months   MAL-ED           PERU                           18               2     164
24 months   MAL-ED           PERU                           19               0     164
24 months   MAL-ED           PERU                           20               1     164
24 months   MAL-ED           PERU                           24               0     164
24 months   MAL-ED           PERU                           25               0     164
24 months   MAL-ED           PERU                           27               0     164
24 months   MAL-ED           SOUTH AFRICA                   0                0      91
24 months   MAL-ED           SOUTH AFRICA                   1                0      91
24 months   MAL-ED           SOUTH AFRICA                   2                1      91
24 months   MAL-ED           SOUTH AFRICA                   3                0      91
24 months   MAL-ED           SOUTH AFRICA                   4                4      91
24 months   MAL-ED           SOUTH AFRICA                   5                2      91
24 months   MAL-ED           SOUTH AFRICA                   6                6      91
24 months   MAL-ED           SOUTH AFRICA                   7                6      91
24 months   MAL-ED           SOUTH AFRICA                   8               10      91
24 months   MAL-ED           SOUTH AFRICA                   9                5      91
24 months   MAL-ED           SOUTH AFRICA                   10               8      91
24 months   MAL-ED           SOUTH AFRICA                   11              15      91
24 months   MAL-ED           SOUTH AFRICA                   12              29      91
24 months   MAL-ED           SOUTH AFRICA                   13               0      91
24 months   MAL-ED           SOUTH AFRICA                   14               2      91
24 months   MAL-ED           SOUTH AFRICA                   15               2      91
24 months   MAL-ED           SOUTH AFRICA                   16               1      91
24 months   MAL-ED           SOUTH AFRICA                   17               0      91
24 months   MAL-ED           SOUTH AFRICA                   18               0      91
24 months   MAL-ED           SOUTH AFRICA                   19               0      91
24 months   MAL-ED           SOUTH AFRICA                   20               0      91
24 months   MAL-ED           SOUTH AFRICA                   24               0      91
24 months   MAL-ED           SOUTH AFRICA                   25               0      91
24 months   MAL-ED           SOUTH AFRICA                   27               0      91
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               13     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               11     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               13     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               10     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                8     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                8     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              105     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                2     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               3     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               2     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               1     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0     177
24 months   NIH-Crypto       BANGLADESH                     0              102     514
24 months   NIH-Crypto       BANGLADESH                     1               11     514
24 months   NIH-Crypto       BANGLADESH                     2               10     514
24 months   NIH-Crypto       BANGLADESH                     3               21     514
24 months   NIH-Crypto       BANGLADESH                     4               30     514
24 months   NIH-Crypto       BANGLADESH                     5               65     514
24 months   NIH-Crypto       BANGLADESH                     6               26     514
24 months   NIH-Crypto       BANGLADESH                     7               38     514
24 months   NIH-Crypto       BANGLADESH                     8               58     514
24 months   NIH-Crypto       BANGLADESH                     9               63     514
24 months   NIH-Crypto       BANGLADESH                     10              41     514
24 months   NIH-Crypto       BANGLADESH                     11               0     514
24 months   NIH-Crypto       BANGLADESH                     12              27     514
24 months   NIH-Crypto       BANGLADESH                     13               0     514
24 months   NIH-Crypto       BANGLADESH                     14               5     514
24 months   NIH-Crypto       BANGLADESH                     15              12     514
24 months   NIH-Crypto       BANGLADESH                     16               0     514
24 months   NIH-Crypto       BANGLADESH                     17               5     514
24 months   NIH-Crypto       BANGLADESH                     18               0     514
24 months   NIH-Crypto       BANGLADESH                     19               0     514
24 months   NIH-Crypto       BANGLADESH                     20               0     514
24 months   NIH-Crypto       BANGLADESH                     24               0     514
24 months   NIH-Crypto       BANGLADESH                     25               0     514
24 months   NIH-Crypto       BANGLADESH                     27               0     514
24 months   PROBIT           BELARUS                        0                0    3913
24 months   PROBIT           BELARUS                        1                0    3913
24 months   PROBIT           BELARUS                        2                0    3913
24 months   PROBIT           BELARUS                        3                0    3913
24 months   PROBIT           BELARUS                        4                0    3913
24 months   PROBIT           BELARUS                        5                0    3913
24 months   PROBIT           BELARUS                        6                0    3913
24 months   PROBIT           BELARUS                        7                0    3913
24 months   PROBIT           BELARUS                        8                1    3913
24 months   PROBIT           BELARUS                        9                0    3913
24 months   PROBIT           BELARUS                        10              70    3913
24 months   PROBIT           BELARUS                        11               0    3913
24 months   PROBIT           BELARUS                        12            1445    3913
24 months   PROBIT           BELARUS                        13            1770    3913
24 months   PROBIT           BELARUS                        14              98    3913
24 months   PROBIT           BELARUS                        15               0    3913
24 months   PROBIT           BELARUS                        16             529    3913
24 months   PROBIT           BELARUS                        17               0    3913
24 months   PROBIT           BELARUS                        18               0    3913
24 months   PROBIT           BELARUS                        19               0    3913
24 months   PROBIT           BELARUS                        20               0    3913
24 months   PROBIT           BELARUS                        24               0    3913
24 months   PROBIT           BELARUS                        25               0    3913
24 months   PROBIT           BELARUS                        27               0    3913
24 months   PROVIDE          BANGLADESH                     0              170     578
24 months   PROVIDE          BANGLADESH                     1               10     578
24 months   PROVIDE          BANGLADESH                     2               17     578
24 months   PROVIDE          BANGLADESH                     3               20     578
24 months   PROVIDE          BANGLADESH                     4               41     578
24 months   PROVIDE          BANGLADESH                     5               61     578
24 months   PROVIDE          BANGLADESH                     6               25     578
24 months   PROVIDE          BANGLADESH                     7               32     578
24 months   PROVIDE          BANGLADESH                     8               57     578
24 months   PROVIDE          BANGLADESH                     9               53     578
24 months   PROVIDE          BANGLADESH                     10              30     578
24 months   PROVIDE          BANGLADESH                     11              25     578
24 months   PROVIDE          BANGLADESH                     12               3     578
24 months   PROVIDE          BANGLADESH                     13               0     578
24 months   PROVIDE          BANGLADESH                     14              17     578
24 months   PROVIDE          BANGLADESH                     15               8     578
24 months   PROVIDE          BANGLADESH                     16               8     578
24 months   PROVIDE          BANGLADESH                     17               0     578
24 months   PROVIDE          BANGLADESH                     18               0     578
24 months   PROVIDE          BANGLADESH                     19               1     578
24 months   PROVIDE          BANGLADESH                     20               0     578
24 months   PROVIDE          BANGLADESH                     24               0     578
24 months   PROVIDE          BANGLADESH                     25               0     578
24 months   PROVIDE          BANGLADESH                     27               0     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13               0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14               0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15               0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16               0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17               0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18               0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19               0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20               0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24               0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25               0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27               0       6
24 months   ZVITAMBO         ZIMBABWE                       0               13    1594
24 months   ZVITAMBO         ZIMBABWE                       1                0    1594
24 months   ZVITAMBO         ZIMBABWE                       2                2    1594
24 months   ZVITAMBO         ZIMBABWE                       3                2    1594
24 months   ZVITAMBO         ZIMBABWE                       4                3    1594
24 months   ZVITAMBO         ZIMBABWE                       5                6    1594
24 months   ZVITAMBO         ZIMBABWE                       6                2    1594
24 months   ZVITAMBO         ZIMBABWE                       7               98    1594
24 months   ZVITAMBO         ZIMBABWE                       8                9    1594
24 months   ZVITAMBO         ZIMBABWE                       9              116    1594
24 months   ZVITAMBO         ZIMBABWE                       10              47    1594
24 months   ZVITAMBO         ZIMBABWE                       11            1200    1594
24 months   ZVITAMBO         ZIMBABWE                       12              10    1594
24 months   ZVITAMBO         ZIMBABWE                       13              86    1594
24 months   ZVITAMBO         ZIMBABWE                       14               0    1594
24 months   ZVITAMBO         ZIMBABWE                       15               0    1594
24 months   ZVITAMBO         ZIMBABWE                       16               0    1594
24 months   ZVITAMBO         ZIMBABWE                       17               0    1594
24 months   ZVITAMBO         ZIMBABWE                       18               0    1594
24 months   ZVITAMBO         ZIMBABWE                       19               0    1594
24 months   ZVITAMBO         ZIMBABWE                       20               0    1594
24 months   ZVITAMBO         ZIMBABWE                       24               0    1594
24 months   ZVITAMBO         ZIMBABWE                       25               0    1594
24 months   ZVITAMBO         ZIMBABWE                       27               0    1594


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
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


ALL STRATA DROPPED. JOB FINISHED
















