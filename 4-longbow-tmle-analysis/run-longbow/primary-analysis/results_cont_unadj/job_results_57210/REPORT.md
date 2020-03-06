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

**Outcome Variable:** y_rate_haz

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

agecat         studyid          country                        feducyrs    n_cell       n
-------------  ---------------  -----------------------------  ---------  -------  ------
0-3 months     COHORTS          GUATEMALA                      0              300     693
0-3 months     COHORTS          GUATEMALA                      1               29     693
0-3 months     COHORTS          GUATEMALA                      2              132     693
0-3 months     COHORTS          GUATEMALA                      3               97     693
0-3 months     COHORTS          GUATEMALA                      4               45     693
0-3 months     COHORTS          GUATEMALA                      5               14     693
0-3 months     COHORTS          GUATEMALA                      6               67     693
0-3 months     COHORTS          GUATEMALA                      7                3     693
0-3 months     COHORTS          GUATEMALA                      8                1     693
0-3 months     COHORTS          GUATEMALA                      9                1     693
0-3 months     COHORTS          GUATEMALA                      10               1     693
0-3 months     COHORTS          GUATEMALA                      11               0     693
0-3 months     COHORTS          GUATEMALA                      12               2     693
0-3 months     COHORTS          GUATEMALA                      13               0     693
0-3 months     COHORTS          GUATEMALA                      14               1     693
0-3 months     COHORTS          GUATEMALA                      15               0     693
0-3 months     COHORTS          GUATEMALA                      16               0     693
0-3 months     COHORTS          GUATEMALA                      17               0     693
0-3 months     COHORTS          GUATEMALA                      18               0     693
0-3 months     COHORTS          GUATEMALA                      19               0     693
0-3 months     COHORTS          GUATEMALA                      20               0     693
0-3 months     COHORTS          GUATEMALA                      24               0     693
0-3 months     COHORTS          GUATEMALA                      25               0     693
0-3 months     COHORTS          GUATEMALA                      27               0     693
0-3 months     COHORTS          INDIA                          0              115    1330
0-3 months     COHORTS          INDIA                          1                0    1330
0-3 months     COHORTS          INDIA                          2                0    1330
0-3 months     COHORTS          INDIA                          3              123    1330
0-3 months     COHORTS          INDIA                          4                0    1330
0-3 months     COHORTS          INDIA                          5                0    1330
0-3 months     COHORTS          INDIA                          6                0    1330
0-3 months     COHORTS          INDIA                          7                0    1330
0-3 months     COHORTS          INDIA                          8              192    1330
0-3 months     COHORTS          INDIA                          9                0    1330
0-3 months     COHORTS          INDIA                          10               0    1330
0-3 months     COHORTS          INDIA                          11               0    1330
0-3 months     COHORTS          INDIA                          12             383    1330
0-3 months     COHORTS          INDIA                          13               0    1330
0-3 months     COHORTS          INDIA                          14             144    1330
0-3 months     COHORTS          INDIA                          15             261    1330
0-3 months     COHORTS          INDIA                          16               0    1330
0-3 months     COHORTS          INDIA                          17             112    1330
0-3 months     COHORTS          INDIA                          18               0    1330
0-3 months     COHORTS          INDIA                          19               0    1330
0-3 months     COHORTS          INDIA                          20               0    1330
0-3 months     COHORTS          INDIA                          24               0    1330
0-3 months     COHORTS          INDIA                          25               0    1330
0-3 months     COHORTS          INDIA                          27               0    1330
0-3 months     GMS-Nepal        NEPAL                          0              228     508
0-3 months     GMS-Nepal        NEPAL                          1                0     508
0-3 months     GMS-Nepal        NEPAL                          2                0     508
0-3 months     GMS-Nepal        NEPAL                          3                0     508
0-3 months     GMS-Nepal        NEPAL                          4                0     508
0-3 months     GMS-Nepal        NEPAL                          5               76     508
0-3 months     GMS-Nepal        NEPAL                          6                0     508
0-3 months     GMS-Nepal        NEPAL                          7                0     508
0-3 months     GMS-Nepal        NEPAL                          8               78     508
0-3 months     GMS-Nepal        NEPAL                          9                0     508
0-3 months     GMS-Nepal        NEPAL                          10              97     508
0-3 months     GMS-Nepal        NEPAL                          11               0     508
0-3 months     GMS-Nepal        NEPAL                          12              29     508
0-3 months     GMS-Nepal        NEPAL                          13               0     508
0-3 months     GMS-Nepal        NEPAL                          14               0     508
0-3 months     GMS-Nepal        NEPAL                          15               0     508
0-3 months     GMS-Nepal        NEPAL                          16               0     508
0-3 months     GMS-Nepal        NEPAL                          17               0     508
0-3 months     GMS-Nepal        NEPAL                          18               0     508
0-3 months     GMS-Nepal        NEPAL                          19               0     508
0-3 months     GMS-Nepal        NEPAL                          20               0     508
0-3 months     GMS-Nepal        NEPAL                          24               0     508
0-3 months     GMS-Nepal        NEPAL                          25               0     508
0-3 months     GMS-Nepal        NEPAL                          27               0     508
0-3 months     MAL-ED           BANGLADESH                     0                0     137
0-3 months     MAL-ED           BANGLADESH                     1                7     137
0-3 months     MAL-ED           BANGLADESH                     2               12     137
0-3 months     MAL-ED           BANGLADESH                     3               12     137
0-3 months     MAL-ED           BANGLADESH                     4                7     137
0-3 months     MAL-ED           BANGLADESH                     5               31     137
0-3 months     MAL-ED           BANGLADESH                     6                8     137
0-3 months     MAL-ED           BANGLADESH                     7               10     137
0-3 months     MAL-ED           BANGLADESH                     8               17     137
0-3 months     MAL-ED           BANGLADESH                     9               13     137
0-3 months     MAL-ED           BANGLADESH                     10               9     137
0-3 months     MAL-ED           BANGLADESH                     11               0     137
0-3 months     MAL-ED           BANGLADESH                     12               9     137
0-3 months     MAL-ED           BANGLADESH                     13               0     137
0-3 months     MAL-ED           BANGLADESH                     14               0     137
0-3 months     MAL-ED           BANGLADESH                     15               0     137
0-3 months     MAL-ED           BANGLADESH                     16               2     137
0-3 months     MAL-ED           BANGLADESH                     17               0     137
0-3 months     MAL-ED           BANGLADESH                     18               0     137
0-3 months     MAL-ED           BANGLADESH                     19               0     137
0-3 months     MAL-ED           BANGLADESH                     20               0     137
0-3 months     MAL-ED           BANGLADESH                     24               0     137
0-3 months     MAL-ED           BANGLADESH                     25               0     137
0-3 months     MAL-ED           BANGLADESH                     27               0     137
0-3 months     MAL-ED           INDIA                          0                0     108
0-3 months     MAL-ED           INDIA                          1                0     108
0-3 months     MAL-ED           INDIA                          2                5     108
0-3 months     MAL-ED           INDIA                          3                9     108
0-3 months     MAL-ED           INDIA                          4                6     108
0-3 months     MAL-ED           INDIA                          5               26     108
0-3 months     MAL-ED           INDIA                          6                6     108
0-3 months     MAL-ED           INDIA                          7               10     108
0-3 months     MAL-ED           INDIA                          8               14     108
0-3 months     MAL-ED           INDIA                          9               21     108
0-3 months     MAL-ED           INDIA                          10               6     108
0-3 months     MAL-ED           INDIA                          11               1     108
0-3 months     MAL-ED           INDIA                          12               1     108
0-3 months     MAL-ED           INDIA                          13               1     108
0-3 months     MAL-ED           INDIA                          14               1     108
0-3 months     MAL-ED           INDIA                          15               1     108
0-3 months     MAL-ED           INDIA                          16               0     108
0-3 months     MAL-ED           INDIA                          17               0     108
0-3 months     MAL-ED           INDIA                          18               0     108
0-3 months     MAL-ED           INDIA                          19               0     108
0-3 months     MAL-ED           INDIA                          20               0     108
0-3 months     MAL-ED           INDIA                          24               0     108
0-3 months     MAL-ED           INDIA                          25               0     108
0-3 months     MAL-ED           INDIA                          27               0     108
0-3 months     MAL-ED           NEPAL                          0                0      60
0-3 months     MAL-ED           NEPAL                          1                0      60
0-3 months     MAL-ED           NEPAL                          2                3      60
0-3 months     MAL-ED           NEPAL                          3                2      60
0-3 months     MAL-ED           NEPAL                          4                6      60
0-3 months     MAL-ED           NEPAL                          5                5      60
0-3 months     MAL-ED           NEPAL                          6                1      60
0-3 months     MAL-ED           NEPAL                          7                6      60
0-3 months     MAL-ED           NEPAL                          8                9      60
0-3 months     MAL-ED           NEPAL                          9                5      60
0-3 months     MAL-ED           NEPAL                          10              15      60
0-3 months     MAL-ED           NEPAL                          11               0      60
0-3 months     MAL-ED           NEPAL                          12               4      60
0-3 months     MAL-ED           NEPAL                          13               0      60
0-3 months     MAL-ED           NEPAL                          14               0      60
0-3 months     MAL-ED           NEPAL                          15               1      60
0-3 months     MAL-ED           NEPAL                          16               1      60
0-3 months     MAL-ED           NEPAL                          17               2      60
0-3 months     MAL-ED           NEPAL                          18               0      60
0-3 months     MAL-ED           NEPAL                          19               0      60
0-3 months     MAL-ED           NEPAL                          20               0      60
0-3 months     MAL-ED           NEPAL                          24               0      60
0-3 months     MAL-ED           NEPAL                          25               0      60
0-3 months     MAL-ED           NEPAL                          27               0      60
0-3 months     MAL-ED           PERU                           0                1     220
0-3 months     MAL-ED           PERU                           1                2     220
0-3 months     MAL-ED           PERU                           2                1     220
0-3 months     MAL-ED           PERU                           3                7     220
0-3 months     MAL-ED           PERU                           4                4     220
0-3 months     MAL-ED           PERU                           5                6     220
0-3 months     MAL-ED           PERU                           6               23     220
0-3 months     MAL-ED           PERU                           7               16     220
0-3 months     MAL-ED           PERU                           8               21     220
0-3 months     MAL-ED           PERU                           9               24     220
0-3 months     MAL-ED           PERU                           10              10     220
0-3 months     MAL-ED           PERU                           11              88     220
0-3 months     MAL-ED           PERU                           12               1     220
0-3 months     MAL-ED           PERU                           13               4     220
0-3 months     MAL-ED           PERU                           14               4     220
0-3 months     MAL-ED           PERU                           15               1     220
0-3 months     MAL-ED           PERU                           16               1     220
0-3 months     MAL-ED           PERU                           17               1     220
0-3 months     MAL-ED           PERU                           18               3     220
0-3 months     MAL-ED           PERU                           19               0     220
0-3 months     MAL-ED           PERU                           20               2     220
0-3 months     MAL-ED           PERU                           24               0     220
0-3 months     MAL-ED           PERU                           25               0     220
0-3 months     MAL-ED           PERU                           27               0     220
0-3 months     MAL-ED           SOUTH AFRICA                   0                0      74
0-3 months     MAL-ED           SOUTH AFRICA                   1                0      74
0-3 months     MAL-ED           SOUTH AFRICA                   2                1      74
0-3 months     MAL-ED           SOUTH AFRICA                   3                0      74
0-3 months     MAL-ED           SOUTH AFRICA                   4                3      74
0-3 months     MAL-ED           SOUTH AFRICA                   5                2      74
0-3 months     MAL-ED           SOUTH AFRICA                   6                3      74
0-3 months     MAL-ED           SOUTH AFRICA                   7                6      74
0-3 months     MAL-ED           SOUTH AFRICA                   8                9      74
0-3 months     MAL-ED           SOUTH AFRICA                   9                3      74
0-3 months     MAL-ED           SOUTH AFRICA                   10               6      74
0-3 months     MAL-ED           SOUTH AFRICA                   11              14      74
0-3 months     MAL-ED           SOUTH AFRICA                   12              23      74
0-3 months     MAL-ED           SOUTH AFRICA                   13               0      74
0-3 months     MAL-ED           SOUTH AFRICA                   14               2      74
0-3 months     MAL-ED           SOUTH AFRICA                   15               1      74
0-3 months     MAL-ED           SOUTH AFRICA                   16               1      74
0-3 months     MAL-ED           SOUTH AFRICA                   17               0      74
0-3 months     MAL-ED           SOUTH AFRICA                   18               0      74
0-3 months     MAL-ED           SOUTH AFRICA                   19               0      74
0-3 months     MAL-ED           SOUTH AFRICA                   20               0      74
0-3 months     MAL-ED           SOUTH AFRICA                   24               0      74
0-3 months     MAL-ED           SOUTH AFRICA                   25               0      74
0-3 months     MAL-ED           SOUTH AFRICA                   27               0      74
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               13     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               12     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               15     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               11     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                9     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                8     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              107     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                2     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               4     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               2     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               1     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0     185
0-3 months     NIH-Crypto       BANGLADESH                     0              169     721
0-3 months     NIH-Crypto       BANGLADESH                     1               19     721
0-3 months     NIH-Crypto       BANGLADESH                     2               13     721
0-3 months     NIH-Crypto       BANGLADESH                     3               31     721
0-3 months     NIH-Crypto       BANGLADESH                     4               38     721
0-3 months     NIH-Crypto       BANGLADESH                     5               82     721
0-3 months     NIH-Crypto       BANGLADESH                     6               34     721
0-3 months     NIH-Crypto       BANGLADESH                     7               55     721
0-3 months     NIH-Crypto       BANGLADESH                     8               87     721
0-3 months     NIH-Crypto       BANGLADESH                     9               79     721
0-3 months     NIH-Crypto       BANGLADESH                     10              52     721
0-3 months     NIH-Crypto       BANGLADESH                     11               0     721
0-3 months     NIH-Crypto       BANGLADESH                     12              33     721
0-3 months     NIH-Crypto       BANGLADESH                     13               0     721
0-3 months     NIH-Crypto       BANGLADESH                     14               8     721
0-3 months     NIH-Crypto       BANGLADESH                     15              15     721
0-3 months     NIH-Crypto       BANGLADESH                     16               0     721
0-3 months     NIH-Crypto       BANGLADESH                     17               6     721
0-3 months     NIH-Crypto       BANGLADESH                     18               0     721
0-3 months     NIH-Crypto       BANGLADESH                     19               0     721
0-3 months     NIH-Crypto       BANGLADESH                     20               0     721
0-3 months     NIH-Crypto       BANGLADESH                     24               0     721
0-3 months     NIH-Crypto       BANGLADESH                     25               0     721
0-3 months     NIH-Crypto       BANGLADESH                     27               0     721
0-3 months     PROBIT           BELARUS                        0                0   14789
0-3 months     PROBIT           BELARUS                        1                0   14789
0-3 months     PROBIT           BELARUS                        2                0   14789
0-3 months     PROBIT           BELARUS                        3                0   14789
0-3 months     PROBIT           BELARUS                        4                0   14789
0-3 months     PROBIT           BELARUS                        5                0   14789
0-3 months     PROBIT           BELARUS                        6                0   14789
0-3 months     PROBIT           BELARUS                        7                0   14789
0-3 months     PROBIT           BELARUS                        8               25   14789
0-3 months     PROBIT           BELARUS                        9                0   14789
0-3 months     PROBIT           BELARUS                        10             332   14789
0-3 months     PROBIT           BELARUS                        11               0   14789
0-3 months     PROBIT           BELARUS                        12            5434   14789
0-3 months     PROBIT           BELARUS                        13            6550   14789
0-3 months     PROBIT           BELARUS                        14             399   14789
0-3 months     PROBIT           BELARUS                        15               0   14789
0-3 months     PROBIT           BELARUS                        16            2049   14789
0-3 months     PROBIT           BELARUS                        17               0   14789
0-3 months     PROBIT           BELARUS                        18               0   14789
0-3 months     PROBIT           BELARUS                        19               0   14789
0-3 months     PROBIT           BELARUS                        20               0   14789
0-3 months     PROBIT           BELARUS                        24               0   14789
0-3 months     PROBIT           BELARUS                        25               0   14789
0-3 months     PROBIT           BELARUS                        27               0   14789
0-3 months     PROVIDE          BANGLADESH                     0              186     640
0-3 months     PROVIDE          BANGLADESH                     1               13     640
0-3 months     PROVIDE          BANGLADESH                     2               18     640
0-3 months     PROVIDE          BANGLADESH                     3               25     640
0-3 months     PROVIDE          BANGLADESH                     4               47     640
0-3 months     PROVIDE          BANGLADESH                     5               68     640
0-3 months     PROVIDE          BANGLADESH                     6               28     640
0-3 months     PROVIDE          BANGLADESH                     7               36     640
0-3 months     PROVIDE          BANGLADESH                     8               61     640
0-3 months     PROVIDE          BANGLADESH                     9               59     640
0-3 months     PROVIDE          BANGLADESH                     10              34     640
0-3 months     PROVIDE          BANGLADESH                     11              25     640
0-3 months     PROVIDE          BANGLADESH                     12               4     640
0-3 months     PROVIDE          BANGLADESH                     13               0     640
0-3 months     PROVIDE          BANGLADESH                     14              19     640
0-3 months     PROVIDE          BANGLADESH                     15               8     640
0-3 months     PROVIDE          BANGLADESH                     16               8     640
0-3 months     PROVIDE          BANGLADESH                     17               0     640
0-3 months     PROVIDE          BANGLADESH                     18               0     640
0-3 months     PROVIDE          BANGLADESH                     19               1     640
0-3 months     PROVIDE          BANGLADESH                     20               0     640
0-3 months     PROVIDE          BANGLADESH                     24               0     640
0-3 months     PROVIDE          BANGLADESH                     25               0     640
0-3 months     PROVIDE          BANGLADESH                     27               0     640
0-3 months     SAS-CompFeed     INDIA                          0              165    1258
0-3 months     SAS-CompFeed     INDIA                          1                0    1258
0-3 months     SAS-CompFeed     INDIA                          2                4    1258
0-3 months     SAS-CompFeed     INDIA                          3               12    1258
0-3 months     SAS-CompFeed     INDIA                          4               24    1258
0-3 months     SAS-CompFeed     INDIA                          5               76    1258
0-3 months     SAS-CompFeed     INDIA                          6               20    1258
0-3 months     SAS-CompFeed     INDIA                          7               96    1258
0-3 months     SAS-CompFeed     INDIA                          8              144    1258
0-3 months     SAS-CompFeed     INDIA                          9               74    1258
0-3 months     SAS-CompFeed     INDIA                          10             320    1258
0-3 months     SAS-CompFeed     INDIA                          11              36    1258
0-3 months     SAS-CompFeed     INDIA                          12             181    1258
0-3 months     SAS-CompFeed     INDIA                          13               6    1258
0-3 months     SAS-CompFeed     INDIA                          14              13    1258
0-3 months     SAS-CompFeed     INDIA                          15              60    1258
0-3 months     SAS-CompFeed     INDIA                          16               9    1258
0-3 months     SAS-CompFeed     INDIA                          17              13    1258
0-3 months     SAS-CompFeed     INDIA                          18               3    1258
0-3 months     SAS-CompFeed     INDIA                          19               1    1258
0-3 months     SAS-CompFeed     INDIA                          20               1    1258
0-3 months     SAS-CompFeed     INDIA                          24               0    1258
0-3 months     SAS-CompFeed     INDIA                          25               0    1258
0-3 months     SAS-CompFeed     INDIA                          27               0    1258
0-3 months     ZVITAMBO         ZIMBABWE                       0               36    7738
0-3 months     ZVITAMBO         ZIMBABWE                       1                1    7738
0-3 months     ZVITAMBO         ZIMBABWE                       2                3    7738
0-3 months     ZVITAMBO         ZIMBABWE                       3                7    7738
0-3 months     ZVITAMBO         ZIMBABWE                       4               14    7738
0-3 months     ZVITAMBO         ZIMBABWE                       5               22    7738
0-3 months     ZVITAMBO         ZIMBABWE                       6               26    7738
0-3 months     ZVITAMBO         ZIMBABWE                       7              474    7738
0-3 months     ZVITAMBO         ZIMBABWE                       8               60    7738
0-3 months     ZVITAMBO         ZIMBABWE                       9              548    7738
0-3 months     ZVITAMBO         ZIMBABWE                       10             193    7738
0-3 months     ZVITAMBO         ZIMBABWE                       11            5817    7738
0-3 months     ZVITAMBO         ZIMBABWE                       12              35    7738
0-3 months     ZVITAMBO         ZIMBABWE                       13             502    7738
0-3 months     ZVITAMBO         ZIMBABWE                       14               0    7738
0-3 months     ZVITAMBO         ZIMBABWE                       15               0    7738
0-3 months     ZVITAMBO         ZIMBABWE                       16               0    7738
0-3 months     ZVITAMBO         ZIMBABWE                       17               0    7738
0-3 months     ZVITAMBO         ZIMBABWE                       18               0    7738
0-3 months     ZVITAMBO         ZIMBABWE                       19               0    7738
0-3 months     ZVITAMBO         ZIMBABWE                       20               0    7738
0-3 months     ZVITAMBO         ZIMBABWE                       24               0    7738
0-3 months     ZVITAMBO         ZIMBABWE                       25               0    7738
0-3 months     ZVITAMBO         ZIMBABWE                       27               0    7738
3-6 months     COHORTS          GUATEMALA                      0              334     761
3-6 months     COHORTS          GUATEMALA                      1               34     761
3-6 months     COHORTS          GUATEMALA                      2              147     761
3-6 months     COHORTS          GUATEMALA                      3              104     761
3-6 months     COHORTS          GUATEMALA                      4               54     761
3-6 months     COHORTS          GUATEMALA                      5               11     761
3-6 months     COHORTS          GUATEMALA                      6               68     761
3-6 months     COHORTS          GUATEMALA                      7                3     761
3-6 months     COHORTS          GUATEMALA                      8                1     761
3-6 months     COHORTS          GUATEMALA                      9                0     761
3-6 months     COHORTS          GUATEMALA                      10               1     761
3-6 months     COHORTS          GUATEMALA                      11               0     761
3-6 months     COHORTS          GUATEMALA                      12               3     761
3-6 months     COHORTS          GUATEMALA                      13               0     761
3-6 months     COHORTS          GUATEMALA                      14               1     761
3-6 months     COHORTS          GUATEMALA                      15               0     761
3-6 months     COHORTS          GUATEMALA                      16               0     761
3-6 months     COHORTS          GUATEMALA                      17               0     761
3-6 months     COHORTS          GUATEMALA                      18               0     761
3-6 months     COHORTS          GUATEMALA                      19               0     761
3-6 months     COHORTS          GUATEMALA                      20               0     761
3-6 months     COHORTS          GUATEMALA                      24               0     761
3-6 months     COHORTS          GUATEMALA                      25               0     761
3-6 months     COHORTS          GUATEMALA                      27               0     761
3-6 months     COHORTS          INDIA                          0              117    1343
3-6 months     COHORTS          INDIA                          1                0    1343
3-6 months     COHORTS          INDIA                          2                0    1343
3-6 months     COHORTS          INDIA                          3              124    1343
3-6 months     COHORTS          INDIA                          4                0    1343
3-6 months     COHORTS          INDIA                          5                0    1343
3-6 months     COHORTS          INDIA                          6                0    1343
3-6 months     COHORTS          INDIA                          7                0    1343
3-6 months     COHORTS          INDIA                          8              190    1343
3-6 months     COHORTS          INDIA                          9                0    1343
3-6 months     COHORTS          INDIA                          10               0    1343
3-6 months     COHORTS          INDIA                          11               0    1343
3-6 months     COHORTS          INDIA                          12             384    1343
3-6 months     COHORTS          INDIA                          13               0    1343
3-6 months     COHORTS          INDIA                          14             149    1343
3-6 months     COHORTS          INDIA                          15             265    1343
3-6 months     COHORTS          INDIA                          16               0    1343
3-6 months     COHORTS          INDIA                          17             114    1343
3-6 months     COHORTS          INDIA                          18               0    1343
3-6 months     COHORTS          INDIA                          19               0    1343
3-6 months     COHORTS          INDIA                          20               0    1343
3-6 months     COHORTS          INDIA                          24               0    1343
3-6 months     COHORTS          INDIA                          25               0    1343
3-6 months     COHORTS          INDIA                          27               0    1343
3-6 months     GMS-Nepal        NEPAL                          0              211     468
3-6 months     GMS-Nepal        NEPAL                          1                0     468
3-6 months     GMS-Nepal        NEPAL                          2                0     468
3-6 months     GMS-Nepal        NEPAL                          3                0     468
3-6 months     GMS-Nepal        NEPAL                          4                0     468
3-6 months     GMS-Nepal        NEPAL                          5               73     468
3-6 months     GMS-Nepal        NEPAL                          6                0     468
3-6 months     GMS-Nepal        NEPAL                          7                0     468
3-6 months     GMS-Nepal        NEPAL                          8               68     468
3-6 months     GMS-Nepal        NEPAL                          9                0     468
3-6 months     GMS-Nepal        NEPAL                          10              89     468
3-6 months     GMS-Nepal        NEPAL                          11               0     468
3-6 months     GMS-Nepal        NEPAL                          12              27     468
3-6 months     GMS-Nepal        NEPAL                          13               0     468
3-6 months     GMS-Nepal        NEPAL                          14               0     468
3-6 months     GMS-Nepal        NEPAL                          15               0     468
3-6 months     GMS-Nepal        NEPAL                          16               0     468
3-6 months     GMS-Nepal        NEPAL                          17               0     468
3-6 months     GMS-Nepal        NEPAL                          18               0     468
3-6 months     GMS-Nepal        NEPAL                          19               0     468
3-6 months     GMS-Nepal        NEPAL                          20               0     468
3-6 months     GMS-Nepal        NEPAL                          24               0     468
3-6 months     GMS-Nepal        NEPAL                          25               0     468
3-6 months     GMS-Nepal        NEPAL                          27               0     468
3-6 months     MAL-ED           BANGLADESH                     0                0     129
3-6 months     MAL-ED           BANGLADESH                     1                6     129
3-6 months     MAL-ED           BANGLADESH                     2               12     129
3-6 months     MAL-ED           BANGLADESH                     3               11     129
3-6 months     MAL-ED           BANGLADESH                     4                5     129
3-6 months     MAL-ED           BANGLADESH                     5               29     129
3-6 months     MAL-ED           BANGLADESH                     6                7     129
3-6 months     MAL-ED           BANGLADESH                     7                9     129
3-6 months     MAL-ED           BANGLADESH                     8               16     129
3-6 months     MAL-ED           BANGLADESH                     9               13     129
3-6 months     MAL-ED           BANGLADESH                     10               9     129
3-6 months     MAL-ED           BANGLADESH                     11               0     129
3-6 months     MAL-ED           BANGLADESH                     12              10     129
3-6 months     MAL-ED           BANGLADESH                     13               0     129
3-6 months     MAL-ED           BANGLADESH                     14               0     129
3-6 months     MAL-ED           BANGLADESH                     15               0     129
3-6 months     MAL-ED           BANGLADESH                     16               2     129
3-6 months     MAL-ED           BANGLADESH                     17               0     129
3-6 months     MAL-ED           BANGLADESH                     18               0     129
3-6 months     MAL-ED           BANGLADESH                     19               0     129
3-6 months     MAL-ED           BANGLADESH                     20               0     129
3-6 months     MAL-ED           BANGLADESH                     24               0     129
3-6 months     MAL-ED           BANGLADESH                     25               0     129
3-6 months     MAL-ED           BANGLADESH                     27               0     129
3-6 months     MAL-ED           INDIA                          0                0     132
3-6 months     MAL-ED           INDIA                          1                0     132
3-6 months     MAL-ED           INDIA                          2                6     132
3-6 months     MAL-ED           INDIA                          3                8     132
3-6 months     MAL-ED           INDIA                          4                6     132
3-6 months     MAL-ED           INDIA                          5               33     132
3-6 months     MAL-ED           INDIA                          6                9     132
3-6 months     MAL-ED           INDIA                          7               10     132
3-6 months     MAL-ED           INDIA                          8               18     132
3-6 months     MAL-ED           INDIA                          9               26     132
3-6 months     MAL-ED           INDIA                          10               6     132
3-6 months     MAL-ED           INDIA                          11               2     132
3-6 months     MAL-ED           INDIA                          12               2     132
3-6 months     MAL-ED           INDIA                          13               1     132
3-6 months     MAL-ED           INDIA                          14               2     132
3-6 months     MAL-ED           INDIA                          15               2     132
3-6 months     MAL-ED           INDIA                          16               0     132
3-6 months     MAL-ED           INDIA                          17               0     132
3-6 months     MAL-ED           INDIA                          18               1     132
3-6 months     MAL-ED           INDIA                          19               0     132
3-6 months     MAL-ED           INDIA                          20               0     132
3-6 months     MAL-ED           INDIA                          24               0     132
3-6 months     MAL-ED           INDIA                          25               0     132
3-6 months     MAL-ED           INDIA                          27               0     132
3-6 months     MAL-ED           NEPAL                          0                0      93
3-6 months     MAL-ED           NEPAL                          1                0      93
3-6 months     MAL-ED           NEPAL                          2                4      93
3-6 months     MAL-ED           NEPAL                          3                3      93
3-6 months     MAL-ED           NEPAL                          4               10      93
3-6 months     MAL-ED           NEPAL                          5                6      93
3-6 months     MAL-ED           NEPAL                          6                4      93
3-6 months     MAL-ED           NEPAL                          7                9      93
3-6 months     MAL-ED           NEPAL                          8               12      93
3-6 months     MAL-ED           NEPAL                          9                7      93
3-6 months     MAL-ED           NEPAL                          10              25      93
3-6 months     MAL-ED           NEPAL                          11               1      93
3-6 months     MAL-ED           NEPAL                          12               7      93
3-6 months     MAL-ED           NEPAL                          13               0      93
3-6 months     MAL-ED           NEPAL                          14               0      93
3-6 months     MAL-ED           NEPAL                          15               1      93
3-6 months     MAL-ED           NEPAL                          16               1      93
3-6 months     MAL-ED           NEPAL                          17               2      93
3-6 months     MAL-ED           NEPAL                          18               1      93
3-6 months     MAL-ED           NEPAL                          19               0      93
3-6 months     MAL-ED           NEPAL                          20               0      93
3-6 months     MAL-ED           NEPAL                          24               0      93
3-6 months     MAL-ED           NEPAL                          25               0      93
3-6 months     MAL-ED           NEPAL                          27               0      93
3-6 months     MAL-ED           PERU                           0                1     220
3-6 months     MAL-ED           PERU                           1                1     220
3-6 months     MAL-ED           PERU                           2                0     220
3-6 months     MAL-ED           PERU                           3                8     220
3-6 months     MAL-ED           PERU                           4                4     220
3-6 months     MAL-ED           PERU                           5                7     220
3-6 months     MAL-ED           PERU                           6               23     220
3-6 months     MAL-ED           PERU                           7               16     220
3-6 months     MAL-ED           PERU                           8               20     220
3-6 months     MAL-ED           PERU                           9               26     220
3-6 months     MAL-ED           PERU                           10               9     220
3-6 months     MAL-ED           PERU                           11              87     220
3-6 months     MAL-ED           PERU                           12               1     220
3-6 months     MAL-ED           PERU                           13               3     220
3-6 months     MAL-ED           PERU                           14               4     220
3-6 months     MAL-ED           PERU                           15               1     220
3-6 months     MAL-ED           PERU                           16               1     220
3-6 months     MAL-ED           PERU                           17               1     220
3-6 months     MAL-ED           PERU                           18               5     220
3-6 months     MAL-ED           PERU                           19               0     220
3-6 months     MAL-ED           PERU                           20               2     220
3-6 months     MAL-ED           PERU                           24               0     220
3-6 months     MAL-ED           PERU                           25               0     220
3-6 months     MAL-ED           PERU                           27               0     220
3-6 months     MAL-ED           SOUTH AFRICA                   0                0      89
3-6 months     MAL-ED           SOUTH AFRICA                   1                0      89
3-6 months     MAL-ED           SOUTH AFRICA                   2                1      89
3-6 months     MAL-ED           SOUTH AFRICA                   3                0      89
3-6 months     MAL-ED           SOUTH AFRICA                   4                4      89
3-6 months     MAL-ED           SOUTH AFRICA                   5                1      89
3-6 months     MAL-ED           SOUTH AFRICA                   6                6      89
3-6 months     MAL-ED           SOUTH AFRICA                   7                6      89
3-6 months     MAL-ED           SOUTH AFRICA                   8               10      89
3-6 months     MAL-ED           SOUTH AFRICA                   9                6      89
3-6 months     MAL-ED           SOUTH AFRICA                   10               8      89
3-6 months     MAL-ED           SOUTH AFRICA                   11              15      89
3-6 months     MAL-ED           SOUTH AFRICA                   12              27      89
3-6 months     MAL-ED           SOUTH AFRICA                   13               0      89
3-6 months     MAL-ED           SOUTH AFRICA                   14               2      89
3-6 months     MAL-ED           SOUTH AFRICA                   15               2      89
3-6 months     MAL-ED           SOUTH AFRICA                   16               1      89
3-6 months     MAL-ED           SOUTH AFRICA                   17               0      89
3-6 months     MAL-ED           SOUTH AFRICA                   18               0      89
3-6 months     MAL-ED           SOUTH AFRICA                   19               0      89
3-6 months     MAL-ED           SOUTH AFRICA                   20               0      89
3-6 months     MAL-ED           SOUTH AFRICA                   24               0      89
3-6 months     MAL-ED           SOUTH AFRICA                   25               0      89
3-6 months     MAL-ED           SOUTH AFRICA                   27               0      89
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               13     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               12     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               17     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               12     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                9     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                8     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              112     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                2     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               4     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               3     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               1     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0     194
3-6 months     NIH-Crypto       BANGLADESH                     0              161     695
3-6 months     NIH-Crypto       BANGLADESH                     1               18     695
3-6 months     NIH-Crypto       BANGLADESH                     2               12     695
3-6 months     NIH-Crypto       BANGLADESH                     3               29     695
3-6 months     NIH-Crypto       BANGLADESH                     4               36     695
3-6 months     NIH-Crypto       BANGLADESH                     5               81     695
3-6 months     NIH-Crypto       BANGLADESH                     6               34     695
3-6 months     NIH-Crypto       BANGLADESH                     7               53     695
3-6 months     NIH-Crypto       BANGLADESH                     8               85     695
3-6 months     NIH-Crypto       BANGLADESH                     9               78     695
3-6 months     NIH-Crypto       BANGLADESH                     10              48     695
3-6 months     NIH-Crypto       BANGLADESH                     11               0     695
3-6 months     NIH-Crypto       BANGLADESH                     12              33     695
3-6 months     NIH-Crypto       BANGLADESH                     13               0     695
3-6 months     NIH-Crypto       BANGLADESH                     14               8     695
3-6 months     NIH-Crypto       BANGLADESH                     15              13     695
3-6 months     NIH-Crypto       BANGLADESH                     16               0     695
3-6 months     NIH-Crypto       BANGLADESH                     17               6     695
3-6 months     NIH-Crypto       BANGLADESH                     18               0     695
3-6 months     NIH-Crypto       BANGLADESH                     19               0     695
3-6 months     NIH-Crypto       BANGLADESH                     20               0     695
3-6 months     NIH-Crypto       BANGLADESH                     24               0     695
3-6 months     NIH-Crypto       BANGLADESH                     25               0     695
3-6 months     NIH-Crypto       BANGLADESH                     27               0     695
3-6 months     PROBIT           BELARUS                        0                0   12834
3-6 months     PROBIT           BELARUS                        1                0   12834
3-6 months     PROBIT           BELARUS                        2                0   12834
3-6 months     PROBIT           BELARUS                        3                0   12834
3-6 months     PROBIT           BELARUS                        4                0   12834
3-6 months     PROBIT           BELARUS                        5                0   12834
3-6 months     PROBIT           BELARUS                        6                0   12834
3-6 months     PROBIT           BELARUS                        7                0   12834
3-6 months     PROBIT           BELARUS                        8               21   12834
3-6 months     PROBIT           BELARUS                        9                0   12834
3-6 months     PROBIT           BELARUS                        10             288   12834
3-6 months     PROBIT           BELARUS                        11               0   12834
3-6 months     PROBIT           BELARUS                        12            4725   12834
3-6 months     PROBIT           BELARUS                        13            5692   12834
3-6 months     PROBIT           BELARUS                        14             349   12834
3-6 months     PROBIT           BELARUS                        15               0   12834
3-6 months     PROBIT           BELARUS                        16            1759   12834
3-6 months     PROBIT           BELARUS                        17               0   12834
3-6 months     PROBIT           BELARUS                        18               0   12834
3-6 months     PROBIT           BELARUS                        19               0   12834
3-6 months     PROBIT           BELARUS                        20               0   12834
3-6 months     PROBIT           BELARUS                        24               0   12834
3-6 months     PROBIT           BELARUS                        25               0   12834
3-6 months     PROBIT           BELARUS                        27               0   12834
3-6 months     PROVIDE          BANGLADESH                     0              178     598
3-6 months     PROVIDE          BANGLADESH                     1               13     598
3-6 months     PROVIDE          BANGLADESH                     2               17     598
3-6 months     PROVIDE          BANGLADESH                     3               21     598
3-6 months     PROVIDE          BANGLADESH                     4               41     598
3-6 months     PROVIDE          BANGLADESH                     5               63     598
3-6 months     PROVIDE          BANGLADESH                     6               25     598
3-6 months     PROVIDE          BANGLADESH                     7               33     598
3-6 months     PROVIDE          BANGLADESH                     8               58     598
3-6 months     PROVIDE          BANGLADESH                     9               57     598
3-6 months     PROVIDE          BANGLADESH                     10              31     598
3-6 months     PROVIDE          BANGLADESH                     11              24     598
3-6 months     PROVIDE          BANGLADESH                     12               4     598
3-6 months     PROVIDE          BANGLADESH                     13               0     598
3-6 months     PROVIDE          BANGLADESH                     14              17     598
3-6 months     PROVIDE          BANGLADESH                     15               7     598
3-6 months     PROVIDE          BANGLADESH                     16               8     598
3-6 months     PROVIDE          BANGLADESH                     17               0     598
3-6 months     PROVIDE          BANGLADESH                     18               0     598
3-6 months     PROVIDE          BANGLADESH                     19               1     598
3-6 months     PROVIDE          BANGLADESH                     20               0     598
3-6 months     PROVIDE          BANGLADESH                     24               0     598
3-6 months     PROVIDE          BANGLADESH                     25               0     598
3-6 months     PROVIDE          BANGLADESH                     27               0     598
3-6 months     SAS-CompFeed     INDIA                          0              139    1121
3-6 months     SAS-CompFeed     INDIA                          1                0    1121
3-6 months     SAS-CompFeed     INDIA                          2                4    1121
3-6 months     SAS-CompFeed     INDIA                          3               11    1121
3-6 months     SAS-CompFeed     INDIA                          4               20    1121
3-6 months     SAS-CompFeed     INDIA                          5               70    1121
3-6 months     SAS-CompFeed     INDIA                          6               19    1121
3-6 months     SAS-CompFeed     INDIA                          7               84    1121
3-6 months     SAS-CompFeed     INDIA                          8              123    1121
3-6 months     SAS-CompFeed     INDIA                          9               63    1121
3-6 months     SAS-CompFeed     INDIA                          10             301    1121
3-6 months     SAS-CompFeed     INDIA                          11              32    1121
3-6 months     SAS-CompFeed     INDIA                          12             158    1121
3-6 months     SAS-CompFeed     INDIA                          13               6    1121
3-6 months     SAS-CompFeed     INDIA                          14              13    1121
3-6 months     SAS-CompFeed     INDIA                          15              52    1121
3-6 months     SAS-CompFeed     INDIA                          16               9    1121
3-6 months     SAS-CompFeed     INDIA                          17              12    1121
3-6 months     SAS-CompFeed     INDIA                          18               3    1121
3-6 months     SAS-CompFeed     INDIA                          19               1    1121
3-6 months     SAS-CompFeed     INDIA                          20               1    1121
3-6 months     SAS-CompFeed     INDIA                          24               0    1121
3-6 months     SAS-CompFeed     INDIA                          25               0    1121
3-6 months     SAS-CompFeed     INDIA                          27               0    1121
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                3    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                2    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              877    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                6    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               36    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              16    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             406    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              13    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13              84    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14              10    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15              14    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16              21    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17              16    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18               4    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19               0    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20               0    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24              12    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25               0    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27             136    1656
3-6 months     ZVITAMBO         ZIMBABWE                       0               32    5993
3-6 months     ZVITAMBO         ZIMBABWE                       1                1    5993
3-6 months     ZVITAMBO         ZIMBABWE                       2                3    5993
3-6 months     ZVITAMBO         ZIMBABWE                       3                6    5993
3-6 months     ZVITAMBO         ZIMBABWE                       4               11    5993
3-6 months     ZVITAMBO         ZIMBABWE                       5               18    5993
3-6 months     ZVITAMBO         ZIMBABWE                       6               19    5993
3-6 months     ZVITAMBO         ZIMBABWE                       7              368    5993
3-6 months     ZVITAMBO         ZIMBABWE                       8               51    5993
3-6 months     ZVITAMBO         ZIMBABWE                       9              420    5993
3-6 months     ZVITAMBO         ZIMBABWE                       10             150    5993
3-6 months     ZVITAMBO         ZIMBABWE                       11            4501    5993
3-6 months     ZVITAMBO         ZIMBABWE                       12              23    5993
3-6 months     ZVITAMBO         ZIMBABWE                       13             390    5993
3-6 months     ZVITAMBO         ZIMBABWE                       14               0    5993
3-6 months     ZVITAMBO         ZIMBABWE                       15               0    5993
3-6 months     ZVITAMBO         ZIMBABWE                       16               0    5993
3-6 months     ZVITAMBO         ZIMBABWE                       17               0    5993
3-6 months     ZVITAMBO         ZIMBABWE                       18               0    5993
3-6 months     ZVITAMBO         ZIMBABWE                       19               0    5993
3-6 months     ZVITAMBO         ZIMBABWE                       20               0    5993
3-6 months     ZVITAMBO         ZIMBABWE                       24               0    5993
3-6 months     ZVITAMBO         ZIMBABWE                       25               0    5993
3-6 months     ZVITAMBO         ZIMBABWE                       27               0    5993
6-9 months     COHORTS          GUATEMALA                      0              348     781
6-9 months     COHORTS          GUATEMALA                      1               41     781
6-9 months     COHORTS          GUATEMALA                      2              150     781
6-9 months     COHORTS          GUATEMALA                      3              100     781
6-9 months     COHORTS          GUATEMALA                      4               52     781
6-9 months     COHORTS          GUATEMALA                      5               14     781
6-9 months     COHORTS          GUATEMALA                      6               66     781
6-9 months     COHORTS          GUATEMALA                      7                3     781
6-9 months     COHORTS          GUATEMALA                      8                1     781
6-9 months     COHORTS          GUATEMALA                      9                0     781
6-9 months     COHORTS          GUATEMALA                      10               1     781
6-9 months     COHORTS          GUATEMALA                      11               0     781
6-9 months     COHORTS          GUATEMALA                      12               4     781
6-9 months     COHORTS          GUATEMALA                      13               0     781
6-9 months     COHORTS          GUATEMALA                      14               1     781
6-9 months     COHORTS          GUATEMALA                      15               0     781
6-9 months     COHORTS          GUATEMALA                      16               0     781
6-9 months     COHORTS          GUATEMALA                      17               0     781
6-9 months     COHORTS          GUATEMALA                      18               0     781
6-9 months     COHORTS          GUATEMALA                      19               0     781
6-9 months     COHORTS          GUATEMALA                      20               0     781
6-9 months     COHORTS          GUATEMALA                      24               0     781
6-9 months     COHORTS          GUATEMALA                      25               0     781
6-9 months     COHORTS          GUATEMALA                      27               0     781
6-9 months     COHORTS          INDIA                          0              107    1255
6-9 months     COHORTS          INDIA                          1                0    1255
6-9 months     COHORTS          INDIA                          2                0    1255
6-9 months     COHORTS          INDIA                          3              117    1255
6-9 months     COHORTS          INDIA                          4                0    1255
6-9 months     COHORTS          INDIA                          5                0    1255
6-9 months     COHORTS          INDIA                          6                0    1255
6-9 months     COHORTS          INDIA                          7                0    1255
6-9 months     COHORTS          INDIA                          8              189    1255
6-9 months     COHORTS          INDIA                          9                0    1255
6-9 months     COHORTS          INDIA                          10               0    1255
6-9 months     COHORTS          INDIA                          11               0    1255
6-9 months     COHORTS          INDIA                          12             355    1255
6-9 months     COHORTS          INDIA                          13               0    1255
6-9 months     COHORTS          INDIA                          14             132    1255
6-9 months     COHORTS          INDIA                          15             244    1255
6-9 months     COHORTS          INDIA                          16               0    1255
6-9 months     COHORTS          INDIA                          17             111    1255
6-9 months     COHORTS          INDIA                          18               0    1255
6-9 months     COHORTS          INDIA                          19               0    1255
6-9 months     COHORTS          INDIA                          20               0    1255
6-9 months     COHORTS          INDIA                          24               0    1255
6-9 months     COHORTS          INDIA                          25               0    1255
6-9 months     COHORTS          INDIA                          27               0    1255
6-9 months     GMS-Nepal        NEPAL                          0              213     480
6-9 months     GMS-Nepal        NEPAL                          1                0     480
6-9 months     GMS-Nepal        NEPAL                          2                0     480
6-9 months     GMS-Nepal        NEPAL                          3                0     480
6-9 months     GMS-Nepal        NEPAL                          4                0     480
6-9 months     GMS-Nepal        NEPAL                          5               78     480
6-9 months     GMS-Nepal        NEPAL                          6                0     480
6-9 months     GMS-Nepal        NEPAL                          7                0     480
6-9 months     GMS-Nepal        NEPAL                          8               75     480
6-9 months     GMS-Nepal        NEPAL                          9                0     480
6-9 months     GMS-Nepal        NEPAL                          10              85     480
6-9 months     GMS-Nepal        NEPAL                          11               0     480
6-9 months     GMS-Nepal        NEPAL                          12              29     480
6-9 months     GMS-Nepal        NEPAL                          13               0     480
6-9 months     GMS-Nepal        NEPAL                          14               0     480
6-9 months     GMS-Nepal        NEPAL                          15               0     480
6-9 months     GMS-Nepal        NEPAL                          16               0     480
6-9 months     GMS-Nepal        NEPAL                          17               0     480
6-9 months     GMS-Nepal        NEPAL                          18               0     480
6-9 months     GMS-Nepal        NEPAL                          19               0     480
6-9 months     GMS-Nepal        NEPAL                          20               0     480
6-9 months     GMS-Nepal        NEPAL                          24               0     480
6-9 months     GMS-Nepal        NEPAL                          25               0     480
6-9 months     GMS-Nepal        NEPAL                          27               0     480
6-9 months     LCNI-5           MALAWI                         0              193     557
6-9 months     LCNI-5           MALAWI                         1                7     557
6-9 months     LCNI-5           MALAWI                         2               25     557
6-9 months     LCNI-5           MALAWI                         3               30     557
6-9 months     LCNI-5           MALAWI                         4               37     557
6-9 months     LCNI-5           MALAWI                         5               42     557
6-9 months     LCNI-5           MALAWI                         6               48     557
6-9 months     LCNI-5           MALAWI                         7               44     557
6-9 months     LCNI-5           MALAWI                         8               63     557
6-9 months     LCNI-5           MALAWI                         9               11     557
6-9 months     LCNI-5           MALAWI                         10              11     557
6-9 months     LCNI-5           MALAWI                         11               4     557
6-9 months     LCNI-5           MALAWI                         12              38     557
6-9 months     LCNI-5           MALAWI                         13               1     557
6-9 months     LCNI-5           MALAWI                         14               2     557
6-9 months     LCNI-5           MALAWI                         15               0     557
6-9 months     LCNI-5           MALAWI                         16               1     557
6-9 months     LCNI-5           MALAWI                         17               0     557
6-9 months     LCNI-5           MALAWI                         18               0     557
6-9 months     LCNI-5           MALAWI                         19               0     557
6-9 months     LCNI-5           MALAWI                         20               0     557
6-9 months     LCNI-5           MALAWI                         24               0     557
6-9 months     LCNI-5           MALAWI                         25               0     557
6-9 months     LCNI-5           MALAWI                         27               0     557
6-9 months     MAL-ED           BANGLADESH                     0                0     123
6-9 months     MAL-ED           BANGLADESH                     1                6     123
6-9 months     MAL-ED           BANGLADESH                     2               10     123
6-9 months     MAL-ED           BANGLADESH                     3               11     123
6-9 months     MAL-ED           BANGLADESH                     4                5     123
6-9 months     MAL-ED           BANGLADESH                     5               29     123
6-9 months     MAL-ED           BANGLADESH                     6                6     123
6-9 months     MAL-ED           BANGLADESH                     7                9     123
6-9 months     MAL-ED           BANGLADESH                     8               16     123
6-9 months     MAL-ED           BANGLADESH                     9               13     123
6-9 months     MAL-ED           BANGLADESH                     10               8     123
6-9 months     MAL-ED           BANGLADESH                     11               0     123
6-9 months     MAL-ED           BANGLADESH                     12               8     123
6-9 months     MAL-ED           BANGLADESH                     13               0     123
6-9 months     MAL-ED           BANGLADESH                     14               0     123
6-9 months     MAL-ED           BANGLADESH                     15               0     123
6-9 months     MAL-ED           BANGLADESH                     16               2     123
6-9 months     MAL-ED           BANGLADESH                     17               0     123
6-9 months     MAL-ED           BANGLADESH                     18               0     123
6-9 months     MAL-ED           BANGLADESH                     19               0     123
6-9 months     MAL-ED           BANGLADESH                     20               0     123
6-9 months     MAL-ED           BANGLADESH                     24               0     123
6-9 months     MAL-ED           BANGLADESH                     25               0     123
6-9 months     MAL-ED           BANGLADESH                     27               0     123
6-9 months     MAL-ED           INDIA                          0                0     133
6-9 months     MAL-ED           INDIA                          1                0     133
6-9 months     MAL-ED           INDIA                          2                6     133
6-9 months     MAL-ED           INDIA                          3                8     133
6-9 months     MAL-ED           INDIA                          4                6     133
6-9 months     MAL-ED           INDIA                          5               31     133
6-9 months     MAL-ED           INDIA                          6               10     133
6-9 months     MAL-ED           INDIA                          7               10     133
6-9 months     MAL-ED           INDIA                          8               19     133
6-9 months     MAL-ED           INDIA                          9               26     133
6-9 months     MAL-ED           INDIA                          10               6     133
6-9 months     MAL-ED           INDIA                          11               2     133
6-9 months     MAL-ED           INDIA                          12               3     133
6-9 months     MAL-ED           INDIA                          13               1     133
6-9 months     MAL-ED           INDIA                          14               2     133
6-9 months     MAL-ED           INDIA                          15               2     133
6-9 months     MAL-ED           INDIA                          16               0     133
6-9 months     MAL-ED           INDIA                          17               0     133
6-9 months     MAL-ED           INDIA                          18               1     133
6-9 months     MAL-ED           INDIA                          19               0     133
6-9 months     MAL-ED           INDIA                          20               0     133
6-9 months     MAL-ED           INDIA                          24               0     133
6-9 months     MAL-ED           INDIA                          25               0     133
6-9 months     MAL-ED           INDIA                          27               0     133
6-9 months     MAL-ED           NEPAL                          0                0      91
6-9 months     MAL-ED           NEPAL                          1                0      91
6-9 months     MAL-ED           NEPAL                          2                4      91
6-9 months     MAL-ED           NEPAL                          3                3      91
6-9 months     MAL-ED           NEPAL                          4               10      91
6-9 months     MAL-ED           NEPAL                          5                6      91
6-9 months     MAL-ED           NEPAL                          6                4      91
6-9 months     MAL-ED           NEPAL                          7                8      91
6-9 months     MAL-ED           NEPAL                          8               11      91
6-9 months     MAL-ED           NEPAL                          9                7      91
6-9 months     MAL-ED           NEPAL                          10              25      91
6-9 months     MAL-ED           NEPAL                          11               1      91
6-9 months     MAL-ED           NEPAL                          12               7      91
6-9 months     MAL-ED           NEPAL                          13               0      91
6-9 months     MAL-ED           NEPAL                          14               0      91
6-9 months     MAL-ED           NEPAL                          15               1      91
6-9 months     MAL-ED           NEPAL                          16               1      91
6-9 months     MAL-ED           NEPAL                          17               2      91
6-9 months     MAL-ED           NEPAL                          18               1      91
6-9 months     MAL-ED           NEPAL                          19               0      91
6-9 months     MAL-ED           NEPAL                          20               0      91
6-9 months     MAL-ED           NEPAL                          24               0      91
6-9 months     MAL-ED           NEPAL                          25               0      91
6-9 months     MAL-ED           NEPAL                          27               0      91
6-9 months     MAL-ED           PERU                           0                1     199
6-9 months     MAL-ED           PERU                           1                1     199
6-9 months     MAL-ED           PERU                           2                0     199
6-9 months     MAL-ED           PERU                           3                7     199
6-9 months     MAL-ED           PERU                           4                4     199
6-9 months     MAL-ED           PERU                           5                7     199
6-9 months     MAL-ED           PERU                           6               20     199
6-9 months     MAL-ED           PERU                           7               14     199
6-9 months     MAL-ED           PERU                           8               18     199
6-9 months     MAL-ED           PERU                           9               24     199
6-9 months     MAL-ED           PERU                           10               9     199
6-9 months     MAL-ED           PERU                           11              80     199
6-9 months     MAL-ED           PERU                           12               1     199
6-9 months     MAL-ED           PERU                           13               3     199
6-9 months     MAL-ED           PERU                           14               4     199
6-9 months     MAL-ED           PERU                           15               0     199
6-9 months     MAL-ED           PERU                           16               1     199
6-9 months     MAL-ED           PERU                           17               1     199
6-9 months     MAL-ED           PERU                           18               3     199
6-9 months     MAL-ED           PERU                           19               0     199
6-9 months     MAL-ED           PERU                           20               1     199
6-9 months     MAL-ED           PERU                           24               0     199
6-9 months     MAL-ED           PERU                           25               0     199
6-9 months     MAL-ED           PERU                           27               0     199
6-9 months     MAL-ED           SOUTH AFRICA                   0                0      85
6-9 months     MAL-ED           SOUTH AFRICA                   1                0      85
6-9 months     MAL-ED           SOUTH AFRICA                   2                1      85
6-9 months     MAL-ED           SOUTH AFRICA                   3                0      85
6-9 months     MAL-ED           SOUTH AFRICA                   4                4      85
6-9 months     MAL-ED           SOUTH AFRICA                   5                1      85
6-9 months     MAL-ED           SOUTH AFRICA                   6                6      85
6-9 months     MAL-ED           SOUTH AFRICA                   7                6      85
6-9 months     MAL-ED           SOUTH AFRICA                   8                9      85
6-9 months     MAL-ED           SOUTH AFRICA                   9                6      85
6-9 months     MAL-ED           SOUTH AFRICA                   10               8      85
6-9 months     MAL-ED           SOUTH AFRICA                   11              13      85
6-9 months     MAL-ED           SOUTH AFRICA                   12              26      85
6-9 months     MAL-ED           SOUTH AFRICA                   13               0      85
6-9 months     MAL-ED           SOUTH AFRICA                   14               2      85
6-9 months     MAL-ED           SOUTH AFRICA                   15               2      85
6-9 months     MAL-ED           SOUTH AFRICA                   16               1      85
6-9 months     MAL-ED           SOUTH AFRICA                   17               0      85
6-9 months     MAL-ED           SOUTH AFRICA                   18               0      85
6-9 months     MAL-ED           SOUTH AFRICA                   19               0      85
6-9 months     MAL-ED           SOUTH AFRICA                   20               0      85
6-9 months     MAL-ED           SOUTH AFRICA                   24               0      85
6-9 months     MAL-ED           SOUTH AFRICA                   25               0      85
6-9 months     MAL-ED           SOUTH AFRICA                   27               0      85
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               11     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               16     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               12     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                8     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                8     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              107     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                2     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               4     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               3     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               1     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0     185
6-9 months     NIH-Crypto       BANGLADESH                     0              158     688
6-9 months     NIH-Crypto       BANGLADESH                     1               16     688
6-9 months     NIH-Crypto       BANGLADESH                     2               12     688
6-9 months     NIH-Crypto       BANGLADESH                     3               29     688
6-9 months     NIH-Crypto       BANGLADESH                     4               36     688
6-9 months     NIH-Crypto       BANGLADESH                     5               83     688
6-9 months     NIH-Crypto       BANGLADESH                     6               33     688
6-9 months     NIH-Crypto       BANGLADESH                     7               51     688
6-9 months     NIH-Crypto       BANGLADESH                     8               81     688
6-9 months     NIH-Crypto       BANGLADESH                     9               79     688
6-9 months     NIH-Crypto       BANGLADESH                     10              48     688
6-9 months     NIH-Crypto       BANGLADESH                     11               0     688
6-9 months     NIH-Crypto       BANGLADESH                     12              33     688
6-9 months     NIH-Crypto       BANGLADESH                     13               0     688
6-9 months     NIH-Crypto       BANGLADESH                     14               8     688
6-9 months     NIH-Crypto       BANGLADESH                     15              14     688
6-9 months     NIH-Crypto       BANGLADESH                     16               0     688
6-9 months     NIH-Crypto       BANGLADESH                     17               7     688
6-9 months     NIH-Crypto       BANGLADESH                     18               0     688
6-9 months     NIH-Crypto       BANGLADESH                     19               0     688
6-9 months     NIH-Crypto       BANGLADESH                     20               0     688
6-9 months     NIH-Crypto       BANGLADESH                     24               0     688
6-9 months     NIH-Crypto       BANGLADESH                     25               0     688
6-9 months     NIH-Crypto       BANGLADESH                     27               0     688
6-9 months     PROBIT           BELARUS                        0                0   12000
6-9 months     PROBIT           BELARUS                        1                0   12000
6-9 months     PROBIT           BELARUS                        2                0   12000
6-9 months     PROBIT           BELARUS                        3                0   12000
6-9 months     PROBIT           BELARUS                        4                0   12000
6-9 months     PROBIT           BELARUS                        5                0   12000
6-9 months     PROBIT           BELARUS                        6                0   12000
6-9 months     PROBIT           BELARUS                        7                0   12000
6-9 months     PROBIT           BELARUS                        8               20   12000
6-9 months     PROBIT           BELARUS                        9                0   12000
6-9 months     PROBIT           BELARUS                        10             261   12000
6-9 months     PROBIT           BELARUS                        11               0   12000
6-9 months     PROBIT           BELARUS                        12            4450   12000
6-9 months     PROBIT           BELARUS                        13            5322   12000
6-9 months     PROBIT           BELARUS                        14             327   12000
6-9 months     PROBIT           BELARUS                        15               0   12000
6-9 months     PROBIT           BELARUS                        16            1620   12000
6-9 months     PROBIT           BELARUS                        17               0   12000
6-9 months     PROBIT           BELARUS                        18               0   12000
6-9 months     PROBIT           BELARUS                        19               0   12000
6-9 months     PROBIT           BELARUS                        20               0   12000
6-9 months     PROBIT           BELARUS                        24               0   12000
6-9 months     PROBIT           BELARUS                        25               0   12000
6-9 months     PROBIT           BELARUS                        27               0   12000
6-9 months     PROVIDE          BANGLADESH                     0              166     565
6-9 months     PROVIDE          BANGLADESH                     1               11     565
6-9 months     PROVIDE          BANGLADESH                     2               15     565
6-9 months     PROVIDE          BANGLADESH                     3               21     565
6-9 months     PROVIDE          BANGLADESH                     4               40     565
6-9 months     PROVIDE          BANGLADESH                     5               61     565
6-9 months     PROVIDE          BANGLADESH                     6               25     565
6-9 months     PROVIDE          BANGLADESH                     7               32     565
6-9 months     PROVIDE          BANGLADESH                     8               54     565
6-9 months     PROVIDE          BANGLADESH                     9               52     565
6-9 months     PROVIDE          BANGLADESH                     10              30     565
6-9 months     PROVIDE          BANGLADESH                     11              24     565
6-9 months     PROVIDE          BANGLADESH                     12               2     565
6-9 months     PROVIDE          BANGLADESH                     13               0     565
6-9 months     PROVIDE          BANGLADESH                     14              17     565
6-9 months     PROVIDE          BANGLADESH                     15               7     565
6-9 months     PROVIDE          BANGLADESH                     16               7     565
6-9 months     PROVIDE          BANGLADESH                     17               0     565
6-9 months     PROVIDE          BANGLADESH                     18               0     565
6-9 months     PROVIDE          BANGLADESH                     19               1     565
6-9 months     PROVIDE          BANGLADESH                     20               0     565
6-9 months     PROVIDE          BANGLADESH                     24               0     565
6-9 months     PROVIDE          BANGLADESH                     25               0     565
6-9 months     PROVIDE          BANGLADESH                     27               0     565
6-9 months     SAS-CompFeed     INDIA                          0              139    1141
6-9 months     SAS-CompFeed     INDIA                          1                0    1141
6-9 months     SAS-CompFeed     INDIA                          2                4    1141
6-9 months     SAS-CompFeed     INDIA                          3               11    1141
6-9 months     SAS-CompFeed     INDIA                          4               18    1141
6-9 months     SAS-CompFeed     INDIA                          5               72    1141
6-9 months     SAS-CompFeed     INDIA                          6               25    1141
6-9 months     SAS-CompFeed     INDIA                          7               93    1141
6-9 months     SAS-CompFeed     INDIA                          8              125    1141
6-9 months     SAS-CompFeed     INDIA                          9               70    1141
6-9 months     SAS-CompFeed     INDIA                          10             293    1141
6-9 months     SAS-CompFeed     INDIA                          11              29    1141
6-9 months     SAS-CompFeed     INDIA                          12             170    1141
6-9 months     SAS-CompFeed     INDIA                          13               7    1141
6-9 months     SAS-CompFeed     INDIA                          14              14    1141
6-9 months     SAS-CompFeed     INDIA                          15              47    1141
6-9 months     SAS-CompFeed     INDIA                          16              10    1141
6-9 months     SAS-CompFeed     INDIA                          17              11    1141
6-9 months     SAS-CompFeed     INDIA                          18               2    1141
6-9 months     SAS-CompFeed     INDIA                          19               0    1141
6-9 months     SAS-CompFeed     INDIA                          20               1    1141
6-9 months     SAS-CompFeed     INDIA                          24               0    1141
6-9 months     SAS-CompFeed     INDIA                          25               0    1141
6-9 months     SAS-CompFeed     INDIA                          27               0    1141
6-9 months     SAS-FoodSuppl    INDIA                          0              113     314
6-9 months     SAS-FoodSuppl    INDIA                          1                1     314
6-9 months     SAS-FoodSuppl    INDIA                          2               10     314
6-9 months     SAS-FoodSuppl    INDIA                          3                5     314
6-9 months     SAS-FoodSuppl    INDIA                          4                8     314
6-9 months     SAS-FoodSuppl    INDIA                          5               43     314
6-9 months     SAS-FoodSuppl    INDIA                          6                9     314
6-9 months     SAS-FoodSuppl    INDIA                          7               13     314
6-9 months     SAS-FoodSuppl    INDIA                          8               34     314
6-9 months     SAS-FoodSuppl    INDIA                          9               21     314
6-9 months     SAS-FoodSuppl    INDIA                          10              40     314
6-9 months     SAS-FoodSuppl    INDIA                          11               2     314
6-9 months     SAS-FoodSuppl    INDIA                          12               9     314
6-9 months     SAS-FoodSuppl    INDIA                          13               0     314
6-9 months     SAS-FoodSuppl    INDIA                          14               3     314
6-9 months     SAS-FoodSuppl    INDIA                          15               3     314
6-9 months     SAS-FoodSuppl    INDIA                          16               0     314
6-9 months     SAS-FoodSuppl    INDIA                          17               0     314
6-9 months     SAS-FoodSuppl    INDIA                          18               0     314
6-9 months     SAS-FoodSuppl    INDIA                          19               0     314
6-9 months     SAS-FoodSuppl    INDIA                          20               0     314
6-9 months     SAS-FoodSuppl    INDIA                          24               0     314
6-9 months     SAS-FoodSuppl    INDIA                          25               0     314
6-9 months     SAS-FoodSuppl    INDIA                          27               0     314
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                3    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              783    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                6    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               35    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              14    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             359    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              11    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13              78    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14               9    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15              12    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16              19    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17              17    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18               2    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19               0    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20               0    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24              12    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25               1    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27             119    1480
6-9 months     ZVITAMBO         ZIMBABWE                       0               31    5766
6-9 months     ZVITAMBO         ZIMBABWE                       1                1    5766
6-9 months     ZVITAMBO         ZIMBABWE                       2                2    5766
6-9 months     ZVITAMBO         ZIMBABWE                       3                8    5766
6-9 months     ZVITAMBO         ZIMBABWE                       4               12    5766
6-9 months     ZVITAMBO         ZIMBABWE                       5               14    5766
6-9 months     ZVITAMBO         ZIMBABWE                       6               19    5766
6-9 months     ZVITAMBO         ZIMBABWE                       7              359    5766
6-9 months     ZVITAMBO         ZIMBABWE                       8               51    5766
6-9 months     ZVITAMBO         ZIMBABWE                       9              401    5766
6-9 months     ZVITAMBO         ZIMBABWE                       10             139    5766
6-9 months     ZVITAMBO         ZIMBABWE                       11            4333    5766
6-9 months     ZVITAMBO         ZIMBABWE                       12              24    5766
6-9 months     ZVITAMBO         ZIMBABWE                       13             372    5766
6-9 months     ZVITAMBO         ZIMBABWE                       14               0    5766
6-9 months     ZVITAMBO         ZIMBABWE                       15               0    5766
6-9 months     ZVITAMBO         ZIMBABWE                       16               0    5766
6-9 months     ZVITAMBO         ZIMBABWE                       17               0    5766
6-9 months     ZVITAMBO         ZIMBABWE                       18               0    5766
6-9 months     ZVITAMBO         ZIMBABWE                       19               0    5766
6-9 months     ZVITAMBO         ZIMBABWE                       20               0    5766
6-9 months     ZVITAMBO         ZIMBABWE                       24               0    5766
6-9 months     ZVITAMBO         ZIMBABWE                       25               0    5766
6-9 months     ZVITAMBO         ZIMBABWE                       27               0    5766
9-12 months    COHORTS          GUATEMALA                      0              389     882
9-12 months    COHORTS          GUATEMALA                      1               48     882
9-12 months    COHORTS          GUATEMALA                      2              162     882
9-12 months    COHORTS          GUATEMALA                      3              120     882
9-12 months    COHORTS          GUATEMALA                      4               59     882
9-12 months    COHORTS          GUATEMALA                      5               20     882
9-12 months    COHORTS          GUATEMALA                      6               73     882
9-12 months    COHORTS          GUATEMALA                      7                4     882
9-12 months    COHORTS          GUATEMALA                      8                1     882
9-12 months    COHORTS          GUATEMALA                      9                1     882
9-12 months    COHORTS          GUATEMALA                      10               1     882
9-12 months    COHORTS          GUATEMALA                      11               0     882
9-12 months    COHORTS          GUATEMALA                      12               4     882
9-12 months    COHORTS          GUATEMALA                      13               0     882
9-12 months    COHORTS          GUATEMALA                      14               0     882
9-12 months    COHORTS          GUATEMALA                      15               0     882
9-12 months    COHORTS          GUATEMALA                      16               0     882
9-12 months    COHORTS          GUATEMALA                      17               0     882
9-12 months    COHORTS          GUATEMALA                      18               0     882
9-12 months    COHORTS          GUATEMALA                      19               0     882
9-12 months    COHORTS          GUATEMALA                      20               0     882
9-12 months    COHORTS          GUATEMALA                      24               0     882
9-12 months    COHORTS          GUATEMALA                      25               0     882
9-12 months    COHORTS          GUATEMALA                      27               0     882
9-12 months    COHORTS          INDIA                          0               87    1126
9-12 months    COHORTS          INDIA                          1                0    1126
9-12 months    COHORTS          INDIA                          2                0    1126
9-12 months    COHORTS          INDIA                          3              104    1126
9-12 months    COHORTS          INDIA                          4                0    1126
9-12 months    COHORTS          INDIA                          5                0    1126
9-12 months    COHORTS          INDIA                          6                0    1126
9-12 months    COHORTS          INDIA                          7                0    1126
9-12 months    COHORTS          INDIA                          8              172    1126
9-12 months    COHORTS          INDIA                          9                0    1126
9-12 months    COHORTS          INDIA                          10               0    1126
9-12 months    COHORTS          INDIA                          11               0    1126
9-12 months    COHORTS          INDIA                          12             321    1126
9-12 months    COHORTS          INDIA                          13               0    1126
9-12 months    COHORTS          INDIA                          14             116    1126
9-12 months    COHORTS          INDIA                          15             226    1126
9-12 months    COHORTS          INDIA                          16               0    1126
9-12 months    COHORTS          INDIA                          17             100    1126
9-12 months    COHORTS          INDIA                          18               0    1126
9-12 months    COHORTS          INDIA                          19               0    1126
9-12 months    COHORTS          INDIA                          20               0    1126
9-12 months    COHORTS          INDIA                          24               0    1126
9-12 months    COHORTS          INDIA                          25               0    1126
9-12 months    COHORTS          INDIA                          27               0    1126
9-12 months    GMS-Nepal        NEPAL                          0              206     468
9-12 months    GMS-Nepal        NEPAL                          1                0     468
9-12 months    GMS-Nepal        NEPAL                          2                0     468
9-12 months    GMS-Nepal        NEPAL                          3                0     468
9-12 months    GMS-Nepal        NEPAL                          4                0     468
9-12 months    GMS-Nepal        NEPAL                          5               74     468
9-12 months    GMS-Nepal        NEPAL                          6                0     468
9-12 months    GMS-Nepal        NEPAL                          7                0     468
9-12 months    GMS-Nepal        NEPAL                          8               76     468
9-12 months    GMS-Nepal        NEPAL                          9                0     468
9-12 months    GMS-Nepal        NEPAL                          10              84     468
9-12 months    GMS-Nepal        NEPAL                          11               0     468
9-12 months    GMS-Nepal        NEPAL                          12              28     468
9-12 months    GMS-Nepal        NEPAL                          13               0     468
9-12 months    GMS-Nepal        NEPAL                          14               0     468
9-12 months    GMS-Nepal        NEPAL                          15               0     468
9-12 months    GMS-Nepal        NEPAL                          16               0     468
9-12 months    GMS-Nepal        NEPAL                          17               0     468
9-12 months    GMS-Nepal        NEPAL                          18               0     468
9-12 months    GMS-Nepal        NEPAL                          19               0     468
9-12 months    GMS-Nepal        NEPAL                          20               0     468
9-12 months    GMS-Nepal        NEPAL                          24               0     468
9-12 months    GMS-Nepal        NEPAL                          25               0     468
9-12 months    GMS-Nepal        NEPAL                          27               0     468
9-12 months    LCNI-5           MALAWI                         0              130     382
9-12 months    LCNI-5           MALAWI                         1                5     382
9-12 months    LCNI-5           MALAWI                         2               21     382
9-12 months    LCNI-5           MALAWI                         3               23     382
9-12 months    LCNI-5           MALAWI                         4               26     382
9-12 months    LCNI-5           MALAWI                         5               29     382
9-12 months    LCNI-5           MALAWI                         6               36     382
9-12 months    LCNI-5           MALAWI                         7               30     382
9-12 months    LCNI-5           MALAWI                         8               45     382
9-12 months    LCNI-5           MALAWI                         9                6     382
9-12 months    LCNI-5           MALAWI                         10               9     382
9-12 months    LCNI-5           MALAWI                         11               1     382
9-12 months    LCNI-5           MALAWI                         12              20     382
9-12 months    LCNI-5           MALAWI                         13               0     382
9-12 months    LCNI-5           MALAWI                         14               1     382
9-12 months    LCNI-5           MALAWI                         15               0     382
9-12 months    LCNI-5           MALAWI                         16               0     382
9-12 months    LCNI-5           MALAWI                         17               0     382
9-12 months    LCNI-5           MALAWI                         18               0     382
9-12 months    LCNI-5           MALAWI                         19               0     382
9-12 months    LCNI-5           MALAWI                         20               0     382
9-12 months    LCNI-5           MALAWI                         24               0     382
9-12 months    LCNI-5           MALAWI                         25               0     382
9-12 months    LCNI-5           MALAWI                         27               0     382
9-12 months    MAL-ED           BANGLADESH                     0                0     124
9-12 months    MAL-ED           BANGLADESH                     1                7     124
9-12 months    MAL-ED           BANGLADESH                     2                9     124
9-12 months    MAL-ED           BANGLADESH                     3               12     124
9-12 months    MAL-ED           BANGLADESH                     4                6     124
9-12 months    MAL-ED           BANGLADESH                     5               28     124
9-12 months    MAL-ED           BANGLADESH                     6                7     124
9-12 months    MAL-ED           BANGLADESH                     7                9     124
9-12 months    MAL-ED           BANGLADESH                     8               16     124
9-12 months    MAL-ED           BANGLADESH                     9               13     124
9-12 months    MAL-ED           BANGLADESH                     10               7     124
9-12 months    MAL-ED           BANGLADESH                     11               0     124
9-12 months    MAL-ED           BANGLADESH                     12               8     124
9-12 months    MAL-ED           BANGLADESH                     13               0     124
9-12 months    MAL-ED           BANGLADESH                     14               0     124
9-12 months    MAL-ED           BANGLADESH                     15               0     124
9-12 months    MAL-ED           BANGLADESH                     16               2     124
9-12 months    MAL-ED           BANGLADESH                     17               0     124
9-12 months    MAL-ED           BANGLADESH                     18               0     124
9-12 months    MAL-ED           BANGLADESH                     19               0     124
9-12 months    MAL-ED           BANGLADESH                     20               0     124
9-12 months    MAL-ED           BANGLADESH                     24               0     124
9-12 months    MAL-ED           BANGLADESH                     25               0     124
9-12 months    MAL-ED           BANGLADESH                     27               0     124
9-12 months    MAL-ED           INDIA                          0                0     132
9-12 months    MAL-ED           INDIA                          1                0     132
9-12 months    MAL-ED           INDIA                          2                6     132
9-12 months    MAL-ED           INDIA                          3                9     132
9-12 months    MAL-ED           INDIA                          4                6     132
9-12 months    MAL-ED           INDIA                          5               31     132
9-12 months    MAL-ED           INDIA                          6               10     132
9-12 months    MAL-ED           INDIA                          7                9     132
9-12 months    MAL-ED           INDIA                          8               19     132
9-12 months    MAL-ED           INDIA                          9               25     132
9-12 months    MAL-ED           INDIA                          10               6     132
9-12 months    MAL-ED           INDIA                          11               2     132
9-12 months    MAL-ED           INDIA                          12               3     132
9-12 months    MAL-ED           INDIA                          13               1     132
9-12 months    MAL-ED           INDIA                          14               2     132
9-12 months    MAL-ED           INDIA                          15               2     132
9-12 months    MAL-ED           INDIA                          16               0     132
9-12 months    MAL-ED           INDIA                          17               0     132
9-12 months    MAL-ED           INDIA                          18               1     132
9-12 months    MAL-ED           INDIA                          19               0     132
9-12 months    MAL-ED           INDIA                          20               0     132
9-12 months    MAL-ED           INDIA                          24               0     132
9-12 months    MAL-ED           INDIA                          25               0     132
9-12 months    MAL-ED           INDIA                          27               0     132
9-12 months    MAL-ED           NEPAL                          0                0      90
9-12 months    MAL-ED           NEPAL                          1                0      90
9-12 months    MAL-ED           NEPAL                          2                3      90
9-12 months    MAL-ED           NEPAL                          3                3      90
9-12 months    MAL-ED           NEPAL                          4               10      90
9-12 months    MAL-ED           NEPAL                          5                6      90
9-12 months    MAL-ED           NEPAL                          6                4      90
9-12 months    MAL-ED           NEPAL                          7                8      90
9-12 months    MAL-ED           NEPAL                          8               11      90
9-12 months    MAL-ED           NEPAL                          9                7      90
9-12 months    MAL-ED           NEPAL                          10              25      90
9-12 months    MAL-ED           NEPAL                          11               1      90
9-12 months    MAL-ED           NEPAL                          12               7      90
9-12 months    MAL-ED           NEPAL                          13               0      90
9-12 months    MAL-ED           NEPAL                          14               0      90
9-12 months    MAL-ED           NEPAL                          15               1      90
9-12 months    MAL-ED           NEPAL                          16               1      90
9-12 months    MAL-ED           NEPAL                          17               2      90
9-12 months    MAL-ED           NEPAL                          18               1      90
9-12 months    MAL-ED           NEPAL                          19               0      90
9-12 months    MAL-ED           NEPAL                          20               0      90
9-12 months    MAL-ED           NEPAL                          24               0      90
9-12 months    MAL-ED           NEPAL                          25               0      90
9-12 months    MAL-ED           NEPAL                          27               0      90
9-12 months    MAL-ED           PERU                           0                1     191
9-12 months    MAL-ED           PERU                           1                1     191
9-12 months    MAL-ED           PERU                           2                0     191
9-12 months    MAL-ED           PERU                           3                7     191
9-12 months    MAL-ED           PERU                           4                4     191
9-12 months    MAL-ED           PERU                           5                7     191
9-12 months    MAL-ED           PERU                           6               19     191
9-12 months    MAL-ED           PERU                           7               14     191
9-12 months    MAL-ED           PERU                           8               18     191
9-12 months    MAL-ED           PERU                           9               21     191
9-12 months    MAL-ED           PERU                           10              10     191
9-12 months    MAL-ED           PERU                           11              77     191
9-12 months    MAL-ED           PERU                           12               1     191
9-12 months    MAL-ED           PERU                           13               2     191
9-12 months    MAL-ED           PERU                           14               4     191
9-12 months    MAL-ED           PERU                           15               0     191
9-12 months    MAL-ED           PERU                           16               1     191
9-12 months    MAL-ED           PERU                           17               1     191
9-12 months    MAL-ED           PERU                           18               2     191
9-12 months    MAL-ED           PERU                           19               0     191
9-12 months    MAL-ED           PERU                           20               1     191
9-12 months    MAL-ED           PERU                           24               0     191
9-12 months    MAL-ED           PERU                           25               0     191
9-12 months    MAL-ED           PERU                           27               0     191
9-12 months    MAL-ED           SOUTH AFRICA                   0                0      87
9-12 months    MAL-ED           SOUTH AFRICA                   1                0      87
9-12 months    MAL-ED           SOUTH AFRICA                   2                1      87
9-12 months    MAL-ED           SOUTH AFRICA                   3                0      87
9-12 months    MAL-ED           SOUTH AFRICA                   4                4      87
9-12 months    MAL-ED           SOUTH AFRICA                   5                2      87
9-12 months    MAL-ED           SOUTH AFRICA                   6                6      87
9-12 months    MAL-ED           SOUTH AFRICA                   7                6      87
9-12 months    MAL-ED           SOUTH AFRICA                   8                8      87
9-12 months    MAL-ED           SOUTH AFRICA                   9                6      87
9-12 months    MAL-ED           SOUTH AFRICA                   10               8      87
9-12 months    MAL-ED           SOUTH AFRICA                   11              14      87
9-12 months    MAL-ED           SOUTH AFRICA                   12              27      87
9-12 months    MAL-ED           SOUTH AFRICA                   13               0      87
9-12 months    MAL-ED           SOUTH AFRICA                   14               2      87
9-12 months    MAL-ED           SOUTH AFRICA                   15               2      87
9-12 months    MAL-ED           SOUTH AFRICA                   16               1      87
9-12 months    MAL-ED           SOUTH AFRICA                   17               0      87
9-12 months    MAL-ED           SOUTH AFRICA                   18               0      87
9-12 months    MAL-ED           SOUTH AFRICA                   19               0      87
9-12 months    MAL-ED           SOUTH AFRICA                   20               0      87
9-12 months    MAL-ED           SOUTH AFRICA                   24               0      87
9-12 months    MAL-ED           SOUTH AFRICA                   25               0      87
9-12 months    MAL-ED           SOUTH AFRICA                   27               0      87
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               13     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               11     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               14     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               12     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                9     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                7     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              108     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                2     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               4     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               2     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               1     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0     184
9-12 months    NIH-Crypto       BANGLADESH                     0              151     674
9-12 months    NIH-Crypto       BANGLADESH                     1               15     674
9-12 months    NIH-Crypto       BANGLADESH                     2               11     674
9-12 months    NIH-Crypto       BANGLADESH                     3               29     674
9-12 months    NIH-Crypto       BANGLADESH                     4               37     674
9-12 months    NIH-Crypto       BANGLADESH                     5               81     674
9-12 months    NIH-Crypto       BANGLADESH                     6               33     674
9-12 months    NIH-Crypto       BANGLADESH                     7               52     674
9-12 months    NIH-Crypto       BANGLADESH                     8               78     674
9-12 months    NIH-Crypto       BANGLADESH                     9               79     674
9-12 months    NIH-Crypto       BANGLADESH                     10              47     674
9-12 months    NIH-Crypto       BANGLADESH                     11               0     674
9-12 months    NIH-Crypto       BANGLADESH                     12              31     674
9-12 months    NIH-Crypto       BANGLADESH                     13               0     674
9-12 months    NIH-Crypto       BANGLADESH                     14               7     674
9-12 months    NIH-Crypto       BANGLADESH                     15              16     674
9-12 months    NIH-Crypto       BANGLADESH                     16               0     674
9-12 months    NIH-Crypto       BANGLADESH                     17               7     674
9-12 months    NIH-Crypto       BANGLADESH                     18               0     674
9-12 months    NIH-Crypto       BANGLADESH                     19               0     674
9-12 months    NIH-Crypto       BANGLADESH                     20               0     674
9-12 months    NIH-Crypto       BANGLADESH                     24               0     674
9-12 months    NIH-Crypto       BANGLADESH                     25               0     674
9-12 months    NIH-Crypto       BANGLADESH                     27               0     674
9-12 months    PROBIT           BELARUS                        0                0   12257
9-12 months    PROBIT           BELARUS                        1                0   12257
9-12 months    PROBIT           BELARUS                        2                0   12257
9-12 months    PROBIT           BELARUS                        3                0   12257
9-12 months    PROBIT           BELARUS                        4                0   12257
9-12 months    PROBIT           BELARUS                        5                0   12257
9-12 months    PROBIT           BELARUS                        6                0   12257
9-12 months    PROBIT           BELARUS                        7                0   12257
9-12 months    PROBIT           BELARUS                        8               19   12257
9-12 months    PROBIT           BELARUS                        9                0   12257
9-12 months    PROBIT           BELARUS                        10             272   12257
9-12 months    PROBIT           BELARUS                        11               0   12257
9-12 months    PROBIT           BELARUS                        12            4534   12257
9-12 months    PROBIT           BELARUS                        13            5433   12257
9-12 months    PROBIT           BELARUS                        14             330   12257
9-12 months    PROBIT           BELARUS                        15               0   12257
9-12 months    PROBIT           BELARUS                        16            1669   12257
9-12 months    PROBIT           BELARUS                        17               0   12257
9-12 months    PROBIT           BELARUS                        18               0   12257
9-12 months    PROBIT           BELARUS                        19               0   12257
9-12 months    PROBIT           BELARUS                        20               0   12257
9-12 months    PROBIT           BELARUS                        24               0   12257
9-12 months    PROBIT           BELARUS                        25               0   12257
9-12 months    PROBIT           BELARUS                        27               0   12257
9-12 months    PROVIDE          BANGLADESH                     0              166     566
9-12 months    PROVIDE          BANGLADESH                     1                9     566
9-12 months    PROVIDE          BANGLADESH                     2               15     566
9-12 months    PROVIDE          BANGLADESH                     3               22     566
9-12 months    PROVIDE          BANGLADESH                     4               40     566
9-12 months    PROVIDE          BANGLADESH                     5               61     566
9-12 months    PROVIDE          BANGLADESH                     6               27     566
9-12 months    PROVIDE          BANGLADESH                     7               32     566
9-12 months    PROVIDE          BANGLADESH                     8               54     566
9-12 months    PROVIDE          BANGLADESH                     9               52     566
9-12 months    PROVIDE          BANGLADESH                     10              29     566
9-12 months    PROVIDE          BANGLADESH                     11              25     566
9-12 months    PROVIDE          BANGLADESH                     12               2     566
9-12 months    PROVIDE          BANGLADESH                     13               0     566
9-12 months    PROVIDE          BANGLADESH                     14              18     566
9-12 months    PROVIDE          BANGLADESH                     15               6     566
9-12 months    PROVIDE          BANGLADESH                     16               7     566
9-12 months    PROVIDE          BANGLADESH                     17               0     566
9-12 months    PROVIDE          BANGLADESH                     18               0     566
9-12 months    PROVIDE          BANGLADESH                     19               1     566
9-12 months    PROVIDE          BANGLADESH                     20               0     566
9-12 months    PROVIDE          BANGLADESH                     24               0     566
9-12 months    PROVIDE          BANGLADESH                     25               0     566
9-12 months    PROVIDE          BANGLADESH                     27               0     566
9-12 months    SAS-CompFeed     INDIA                          0              140    1143
9-12 months    SAS-CompFeed     INDIA                          1                0    1143
9-12 months    SAS-CompFeed     INDIA                          2                4    1143
9-12 months    SAS-CompFeed     INDIA                          3               10    1143
9-12 months    SAS-CompFeed     INDIA                          4               19    1143
9-12 months    SAS-CompFeed     INDIA                          5               73    1143
9-12 months    SAS-CompFeed     INDIA                          6               22    1143
9-12 months    SAS-CompFeed     INDIA                          7               90    1143
9-12 months    SAS-CompFeed     INDIA                          8              128    1143
9-12 months    SAS-CompFeed     INDIA                          9               77    1143
9-12 months    SAS-CompFeed     INDIA                          10             292    1143
9-12 months    SAS-CompFeed     INDIA                          11              28    1143
9-12 months    SAS-CompFeed     INDIA                          12             167    1143
9-12 months    SAS-CompFeed     INDIA                          13               5    1143
9-12 months    SAS-CompFeed     INDIA                          14              15    1143
9-12 months    SAS-CompFeed     INDIA                          15              48    1143
9-12 months    SAS-CompFeed     INDIA                          16              10    1143
9-12 months    SAS-CompFeed     INDIA                          17              12    1143
9-12 months    SAS-CompFeed     INDIA                          18               2    1143
9-12 months    SAS-CompFeed     INDIA                          19               0    1143
9-12 months    SAS-CompFeed     INDIA                          20               1    1143
9-12 months    SAS-CompFeed     INDIA                          24               0    1143
9-12 months    SAS-CompFeed     INDIA                          25               0    1143
9-12 months    SAS-CompFeed     INDIA                          27               0    1143
9-12 months    SAS-FoodSuppl    INDIA                          0              114     311
9-12 months    SAS-FoodSuppl    INDIA                          1                1     311
9-12 months    SAS-FoodSuppl    INDIA                          2               10     311
9-12 months    SAS-FoodSuppl    INDIA                          3                5     311
9-12 months    SAS-FoodSuppl    INDIA                          4                7     311
9-12 months    SAS-FoodSuppl    INDIA                          5               43     311
9-12 months    SAS-FoodSuppl    INDIA                          6                9     311
9-12 months    SAS-FoodSuppl    INDIA                          7               11     311
9-12 months    SAS-FoodSuppl    INDIA                          8               33     311
9-12 months    SAS-FoodSuppl    INDIA                          9               23     311
9-12 months    SAS-FoodSuppl    INDIA                          10              40     311
9-12 months    SAS-FoodSuppl    INDIA                          11               1     311
9-12 months    SAS-FoodSuppl    INDIA                          12               8     311
9-12 months    SAS-FoodSuppl    INDIA                          13               0     311
9-12 months    SAS-FoodSuppl    INDIA                          14               3     311
9-12 months    SAS-FoodSuppl    INDIA                          15               3     311
9-12 months    SAS-FoodSuppl    INDIA                          16               0     311
9-12 months    SAS-FoodSuppl    INDIA                          17               0     311
9-12 months    SAS-FoodSuppl    INDIA                          18               0     311
9-12 months    SAS-FoodSuppl    INDIA                          19               0     311
9-12 months    SAS-FoodSuppl    INDIA                          20               0     311
9-12 months    SAS-FoodSuppl    INDIA                          24               0     311
9-12 months    SAS-FoodSuppl    INDIA                          25               0     311
9-12 months    SAS-FoodSuppl    INDIA                          27               0     311
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                2    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              557    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                4    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               23    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               8    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             273    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              10    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13              55    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14               7    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15              13    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16              11    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17              11    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18               1    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19               0    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20               0    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24               8    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25               1    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27              90    1076
9-12 months    ZVITAMBO         ZIMBABWE                       0               28    5777
9-12 months    ZVITAMBO         ZIMBABWE                       1                1    5777
9-12 months    ZVITAMBO         ZIMBABWE                       2                1    5777
9-12 months    ZVITAMBO         ZIMBABWE                       3                9    5777
9-12 months    ZVITAMBO         ZIMBABWE                       4               11    5777
9-12 months    ZVITAMBO         ZIMBABWE                       5               12    5777
9-12 months    ZVITAMBO         ZIMBABWE                       6               17    5777
9-12 months    ZVITAMBO         ZIMBABWE                       7              371    5777
9-12 months    ZVITAMBO         ZIMBABWE                       8               46    5777
9-12 months    ZVITAMBO         ZIMBABWE                       9              398    5777
9-12 months    ZVITAMBO         ZIMBABWE                       10             136    5777
9-12 months    ZVITAMBO         ZIMBABWE                       11            4378    5777
9-12 months    ZVITAMBO         ZIMBABWE                       12              24    5777
9-12 months    ZVITAMBO         ZIMBABWE                       13             345    5777
9-12 months    ZVITAMBO         ZIMBABWE                       14               0    5777
9-12 months    ZVITAMBO         ZIMBABWE                       15               0    5777
9-12 months    ZVITAMBO         ZIMBABWE                       16               0    5777
9-12 months    ZVITAMBO         ZIMBABWE                       17               0    5777
9-12 months    ZVITAMBO         ZIMBABWE                       18               0    5777
9-12 months    ZVITAMBO         ZIMBABWE                       19               0    5777
9-12 months    ZVITAMBO         ZIMBABWE                       20               0    5777
9-12 months    ZVITAMBO         ZIMBABWE                       24               0    5777
9-12 months    ZVITAMBO         ZIMBABWE                       25               0    5777
9-12 months    ZVITAMBO         ZIMBABWE                       27               0    5777
12-15 months   COHORTS          GUATEMALA                      0              379     832
12-15 months   COHORTS          GUATEMALA                      1               48     832
12-15 months   COHORTS          GUATEMALA                      2              141     832
12-15 months   COHORTS          GUATEMALA                      3              106     832
12-15 months   COHORTS          GUATEMALA                      4               57     832
12-15 months   COHORTS          GUATEMALA                      5               23     832
12-15 months   COHORTS          GUATEMALA                      6               69     832
12-15 months   COHORTS          GUATEMALA                      7                3     832
12-15 months   COHORTS          GUATEMALA                      8                1     832
12-15 months   COHORTS          GUATEMALA                      9                0     832
12-15 months   COHORTS          GUATEMALA                      10               1     832
12-15 months   COHORTS          GUATEMALA                      11               0     832
12-15 months   COHORTS          GUATEMALA                      12               4     832
12-15 months   COHORTS          GUATEMALA                      13               0     832
12-15 months   COHORTS          GUATEMALA                      14               0     832
12-15 months   COHORTS          GUATEMALA                      15               0     832
12-15 months   COHORTS          GUATEMALA                      16               0     832
12-15 months   COHORTS          GUATEMALA                      17               0     832
12-15 months   COHORTS          GUATEMALA                      18               0     832
12-15 months   COHORTS          GUATEMALA                      19               0     832
12-15 months   COHORTS          GUATEMALA                      20               0     832
12-15 months   COHORTS          GUATEMALA                      24               0     832
12-15 months   COHORTS          GUATEMALA                      25               0     832
12-15 months   COHORTS          GUATEMALA                      27               0     832
12-15 months   GMS-Nepal        NEPAL                          0              206     468
12-15 months   GMS-Nepal        NEPAL                          1                0     468
12-15 months   GMS-Nepal        NEPAL                          2                0     468
12-15 months   GMS-Nepal        NEPAL                          3                0     468
12-15 months   GMS-Nepal        NEPAL                          4                0     468
12-15 months   GMS-Nepal        NEPAL                          5               76     468
12-15 months   GMS-Nepal        NEPAL                          6                0     468
12-15 months   GMS-Nepal        NEPAL                          7                0     468
12-15 months   GMS-Nepal        NEPAL                          8               79     468
12-15 months   GMS-Nepal        NEPAL                          9                0     468
12-15 months   GMS-Nepal        NEPAL                          10              81     468
12-15 months   GMS-Nepal        NEPAL                          11               0     468
12-15 months   GMS-Nepal        NEPAL                          12              26     468
12-15 months   GMS-Nepal        NEPAL                          13               0     468
12-15 months   GMS-Nepal        NEPAL                          14               0     468
12-15 months   GMS-Nepal        NEPAL                          15               0     468
12-15 months   GMS-Nepal        NEPAL                          16               0     468
12-15 months   GMS-Nepal        NEPAL                          17               0     468
12-15 months   GMS-Nepal        NEPAL                          18               0     468
12-15 months   GMS-Nepal        NEPAL                          19               0     468
12-15 months   GMS-Nepal        NEPAL                          20               0     468
12-15 months   GMS-Nepal        NEPAL                          24               0     468
12-15 months   GMS-Nepal        NEPAL                          25               0     468
12-15 months   GMS-Nepal        NEPAL                          27               0     468
12-15 months   LCNI-5           MALAWI                         0               46     126
12-15 months   LCNI-5           MALAWI                         1                0     126
12-15 months   LCNI-5           MALAWI                         2                4     126
12-15 months   LCNI-5           MALAWI                         3                6     126
12-15 months   LCNI-5           MALAWI                         4                8     126
12-15 months   LCNI-5           MALAWI                         5               11     126
12-15 months   LCNI-5           MALAWI                         6               13     126
12-15 months   LCNI-5           MALAWI                         7               16     126
12-15 months   LCNI-5           MALAWI                         8               10     126
12-15 months   LCNI-5           MALAWI                         9                4     126
12-15 months   LCNI-5           MALAWI                         10               2     126
12-15 months   LCNI-5           MALAWI                         11               0     126
12-15 months   LCNI-5           MALAWI                         12               6     126
12-15 months   LCNI-5           MALAWI                         13               0     126
12-15 months   LCNI-5           MALAWI                         14               0     126
12-15 months   LCNI-5           MALAWI                         15               0     126
12-15 months   LCNI-5           MALAWI                         16               0     126
12-15 months   LCNI-5           MALAWI                         17               0     126
12-15 months   LCNI-5           MALAWI                         18               0     126
12-15 months   LCNI-5           MALAWI                         19               0     126
12-15 months   LCNI-5           MALAWI                         20               0     126
12-15 months   LCNI-5           MALAWI                         24               0     126
12-15 months   LCNI-5           MALAWI                         25               0     126
12-15 months   LCNI-5           MALAWI                         27               0     126
12-15 months   MAL-ED           BANGLADESH                     0                0     119
12-15 months   MAL-ED           BANGLADESH                     1                7     119
12-15 months   MAL-ED           BANGLADESH                     2               10     119
12-15 months   MAL-ED           BANGLADESH                     3               12     119
12-15 months   MAL-ED           BANGLADESH                     4                6     119
12-15 months   MAL-ED           BANGLADESH                     5               27     119
12-15 months   MAL-ED           BANGLADESH                     6                7     119
12-15 months   MAL-ED           BANGLADESH                     7                9     119
12-15 months   MAL-ED           BANGLADESH                     8               14     119
12-15 months   MAL-ED           BANGLADESH                     9               12     119
12-15 months   MAL-ED           BANGLADESH                     10               7     119
12-15 months   MAL-ED           BANGLADESH                     11               0     119
12-15 months   MAL-ED           BANGLADESH                     12               6     119
12-15 months   MAL-ED           BANGLADESH                     13               0     119
12-15 months   MAL-ED           BANGLADESH                     14               0     119
12-15 months   MAL-ED           BANGLADESH                     15               0     119
12-15 months   MAL-ED           BANGLADESH                     16               2     119
12-15 months   MAL-ED           BANGLADESH                     17               0     119
12-15 months   MAL-ED           BANGLADESH                     18               0     119
12-15 months   MAL-ED           BANGLADESH                     19               0     119
12-15 months   MAL-ED           BANGLADESH                     20               0     119
12-15 months   MAL-ED           BANGLADESH                     24               0     119
12-15 months   MAL-ED           BANGLADESH                     25               0     119
12-15 months   MAL-ED           BANGLADESH                     27               0     119
12-15 months   MAL-ED           INDIA                          0                0     131
12-15 months   MAL-ED           INDIA                          1                0     131
12-15 months   MAL-ED           INDIA                          2                6     131
12-15 months   MAL-ED           INDIA                          3                9     131
12-15 months   MAL-ED           INDIA                          4                6     131
12-15 months   MAL-ED           INDIA                          5               30     131
12-15 months   MAL-ED           INDIA                          6               10     131
12-15 months   MAL-ED           INDIA                          7                9     131
12-15 months   MAL-ED           INDIA                          8               19     131
12-15 months   MAL-ED           INDIA                          9               25     131
12-15 months   MAL-ED           INDIA                          10               6     131
12-15 months   MAL-ED           INDIA                          11               2     131
12-15 months   MAL-ED           INDIA                          12               3     131
12-15 months   MAL-ED           INDIA                          13               1     131
12-15 months   MAL-ED           INDIA                          14               2     131
12-15 months   MAL-ED           INDIA                          15               2     131
12-15 months   MAL-ED           INDIA                          16               0     131
12-15 months   MAL-ED           INDIA                          17               0     131
12-15 months   MAL-ED           INDIA                          18               1     131
12-15 months   MAL-ED           INDIA                          19               0     131
12-15 months   MAL-ED           INDIA                          20               0     131
12-15 months   MAL-ED           INDIA                          24               0     131
12-15 months   MAL-ED           INDIA                          25               0     131
12-15 months   MAL-ED           INDIA                          27               0     131
12-15 months   MAL-ED           NEPAL                          0                0      91
12-15 months   MAL-ED           NEPAL                          1                0      91
12-15 months   MAL-ED           NEPAL                          2                3      91
12-15 months   MAL-ED           NEPAL                          3                3      91
12-15 months   MAL-ED           NEPAL                          4               10      91
12-15 months   MAL-ED           NEPAL                          5                6      91
12-15 months   MAL-ED           NEPAL                          6                4      91
12-15 months   MAL-ED           NEPAL                          7                8      91
12-15 months   MAL-ED           NEPAL                          8               11      91
12-15 months   MAL-ED           NEPAL                          9                7      91
12-15 months   MAL-ED           NEPAL                          10              25      91
12-15 months   MAL-ED           NEPAL                          11               1      91
12-15 months   MAL-ED           NEPAL                          12               7      91
12-15 months   MAL-ED           NEPAL                          13               0      91
12-15 months   MAL-ED           NEPAL                          14               0      91
12-15 months   MAL-ED           NEPAL                          15               1      91
12-15 months   MAL-ED           NEPAL                          16               1      91
12-15 months   MAL-ED           NEPAL                          17               3      91
12-15 months   MAL-ED           NEPAL                          18               1      91
12-15 months   MAL-ED           NEPAL                          19               0      91
12-15 months   MAL-ED           NEPAL                          20               0      91
12-15 months   MAL-ED           NEPAL                          24               0      91
12-15 months   MAL-ED           NEPAL                          25               0      91
12-15 months   MAL-ED           NEPAL                          27               0      91
12-15 months   MAL-ED           PERU                           0                1     182
12-15 months   MAL-ED           PERU                           1                1     182
12-15 months   MAL-ED           PERU                           2                0     182
12-15 months   MAL-ED           PERU                           3                6     182
12-15 months   MAL-ED           PERU                           4                4     182
12-15 months   MAL-ED           PERU                           5                7     182
12-15 months   MAL-ED           PERU                           6               16     182
12-15 months   MAL-ED           PERU                           7               14     182
12-15 months   MAL-ED           PERU                           8               15     182
12-15 months   MAL-ED           PERU                           9               22     182
12-15 months   MAL-ED           PERU                           10               7     182
12-15 months   MAL-ED           PERU                           11              77     182
12-15 months   MAL-ED           PERU                           12               1     182
12-15 months   MAL-ED           PERU                           13               2     182
12-15 months   MAL-ED           PERU                           14               4     182
12-15 months   MAL-ED           PERU                           15               0     182
12-15 months   MAL-ED           PERU                           16               1     182
12-15 months   MAL-ED           PERU                           17               1     182
12-15 months   MAL-ED           PERU                           18               2     182
12-15 months   MAL-ED           PERU                           19               0     182
12-15 months   MAL-ED           PERU                           20               1     182
12-15 months   MAL-ED           PERU                           24               0     182
12-15 months   MAL-ED           PERU                           25               0     182
12-15 months   MAL-ED           PERU                           27               0     182
12-15 months   MAL-ED           SOUTH AFRICA                   0                0      86
12-15 months   MAL-ED           SOUTH AFRICA                   1                0      86
12-15 months   MAL-ED           SOUTH AFRICA                   2                1      86
12-15 months   MAL-ED           SOUTH AFRICA                   3                0      86
12-15 months   MAL-ED           SOUTH AFRICA                   4                4      86
12-15 months   MAL-ED           SOUTH AFRICA                   5                2      86
12-15 months   MAL-ED           SOUTH AFRICA                   6                6      86
12-15 months   MAL-ED           SOUTH AFRICA                   7                6      86
12-15 months   MAL-ED           SOUTH AFRICA                   8                8      86
12-15 months   MAL-ED           SOUTH AFRICA                   9                6      86
12-15 months   MAL-ED           SOUTH AFRICA                   10               6      86
12-15 months   MAL-ED           SOUTH AFRICA                   11              15      86
12-15 months   MAL-ED           SOUTH AFRICA                   12              27      86
12-15 months   MAL-ED           SOUTH AFRICA                   13               0      86
12-15 months   MAL-ED           SOUTH AFRICA                   14               2      86
12-15 months   MAL-ED           SOUTH AFRICA                   15               2      86
12-15 months   MAL-ED           SOUTH AFRICA                   16               1      86
12-15 months   MAL-ED           SOUTH AFRICA                   17               0      86
12-15 months   MAL-ED           SOUTH AFRICA                   18               0      86
12-15 months   MAL-ED           SOUTH AFRICA                   19               0      86
12-15 months   MAL-ED           SOUTH AFRICA                   20               0      86
12-15 months   MAL-ED           SOUTH AFRICA                   24               0      86
12-15 months   MAL-ED           SOUTH AFRICA                   25               0      86
12-15 months   MAL-ED           SOUTH AFRICA                   27               0      86
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               13     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               11     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               15     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               12     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                8     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                7     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              110     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                2     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               4     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               2     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0     185
12-15 months   NIH-Crypto       BANGLADESH                     0              147     660
12-15 months   NIH-Crypto       BANGLADESH                     1               15     660
12-15 months   NIH-Crypto       BANGLADESH                     2               11     660
12-15 months   NIH-Crypto       BANGLADESH                     3               28     660
12-15 months   NIH-Crypto       BANGLADESH                     4               36     660
12-15 months   NIH-Crypto       BANGLADESH                     5               80     660
12-15 months   NIH-Crypto       BANGLADESH                     6               34     660
12-15 months   NIH-Crypto       BANGLADESH                     7               50     660
12-15 months   NIH-Crypto       BANGLADESH                     8               80     660
12-15 months   NIH-Crypto       BANGLADESH                     9               76     660
12-15 months   NIH-Crypto       BANGLADESH                     10              44     660
12-15 months   NIH-Crypto       BANGLADESH                     11               0     660
12-15 months   NIH-Crypto       BANGLADESH                     12              30     660
12-15 months   NIH-Crypto       BANGLADESH                     13               0     660
12-15 months   NIH-Crypto       BANGLADESH                     14               7     660
12-15 months   NIH-Crypto       BANGLADESH                     15              15     660
12-15 months   NIH-Crypto       BANGLADESH                     16               0     660
12-15 months   NIH-Crypto       BANGLADESH                     17               7     660
12-15 months   NIH-Crypto       BANGLADESH                     18               0     660
12-15 months   NIH-Crypto       BANGLADESH                     19               0     660
12-15 months   NIH-Crypto       BANGLADESH                     20               0     660
12-15 months   NIH-Crypto       BANGLADESH                     24               0     660
12-15 months   NIH-Crypto       BANGLADESH                     25               0     660
12-15 months   NIH-Crypto       BANGLADESH                     27               0     660
12-15 months   PROBIT           BELARUS                        0                0     967
12-15 months   PROBIT           BELARUS                        1                0     967
12-15 months   PROBIT           BELARUS                        2                0     967
12-15 months   PROBIT           BELARUS                        3                0     967
12-15 months   PROBIT           BELARUS                        4                0     967
12-15 months   PROBIT           BELARUS                        5                0     967
12-15 months   PROBIT           BELARUS                        6                0     967
12-15 months   PROBIT           BELARUS                        7                0     967
12-15 months   PROBIT           BELARUS                        8                1     967
12-15 months   PROBIT           BELARUS                        9                0     967
12-15 months   PROBIT           BELARUS                        10              24     967
12-15 months   PROBIT           BELARUS                        11               0     967
12-15 months   PROBIT           BELARUS                        12             349     967
12-15 months   PROBIT           BELARUS                        13             417     967
12-15 months   PROBIT           BELARUS                        14              24     967
12-15 months   PROBIT           BELARUS                        15               0     967
12-15 months   PROBIT           BELARUS                        16             152     967
12-15 months   PROBIT           BELARUS                        17               0     967
12-15 months   PROBIT           BELARUS                        18               0     967
12-15 months   PROBIT           BELARUS                        19               0     967
12-15 months   PROBIT           BELARUS                        20               0     967
12-15 months   PROBIT           BELARUS                        24               0     967
12-15 months   PROBIT           BELARUS                        25               0     967
12-15 months   PROBIT           BELARUS                        27               0     967
12-15 months   PROVIDE          BANGLADESH                     0              153     532
12-15 months   PROVIDE          BANGLADESH                     1                8     532
12-15 months   PROVIDE          BANGLADESH                     2               15     532
12-15 months   PROVIDE          BANGLADESH                     3               19     532
12-15 months   PROVIDE          BANGLADESH                     4               37     532
12-15 months   PROVIDE          BANGLADESH                     5               55     532
12-15 months   PROVIDE          BANGLADESH                     6               26     532
12-15 months   PROVIDE          BANGLADESH                     7               27     532
12-15 months   PROVIDE          BANGLADESH                     8               52     532
12-15 months   PROVIDE          BANGLADESH                     9               54     532
12-15 months   PROVIDE          BANGLADESH                     10              28     532
12-15 months   PROVIDE          BANGLADESH                     11              24     532
12-15 months   PROVIDE          BANGLADESH                     12               3     532
12-15 months   PROVIDE          BANGLADESH                     13               0     532
12-15 months   PROVIDE          BANGLADESH                     14              18     532
12-15 months   PROVIDE          BANGLADESH                     15               6     532
12-15 months   PROVIDE          BANGLADESH                     16               6     532
12-15 months   PROVIDE          BANGLADESH                     17               0     532
12-15 months   PROVIDE          BANGLADESH                     18               0     532
12-15 months   PROVIDE          BANGLADESH                     19               1     532
12-15 months   PROVIDE          BANGLADESH                     20               0     532
12-15 months   PROVIDE          BANGLADESH                     24               0     532
12-15 months   PROVIDE          BANGLADESH                     25               0     532
12-15 months   PROVIDE          BANGLADESH                     27               0     532
12-15 months   SAS-CompFeed     INDIA                          0              137    1165
12-15 months   SAS-CompFeed     INDIA                          1                0    1165
12-15 months   SAS-CompFeed     INDIA                          2                5    1165
12-15 months   SAS-CompFeed     INDIA                          3               10    1165
12-15 months   SAS-CompFeed     INDIA                          4               21    1165
12-15 months   SAS-CompFeed     INDIA                          5               72    1165
12-15 months   SAS-CompFeed     INDIA                          6               21    1165
12-15 months   SAS-CompFeed     INDIA                          7               88    1165
12-15 months   SAS-CompFeed     INDIA                          8              130    1165
12-15 months   SAS-CompFeed     INDIA                          9               75    1165
12-15 months   SAS-CompFeed     INDIA                          10             304    1165
12-15 months   SAS-CompFeed     INDIA                          11              30    1165
12-15 months   SAS-CompFeed     INDIA                          12             172    1165
12-15 months   SAS-CompFeed     INDIA                          13               5    1165
12-15 months   SAS-CompFeed     INDIA                          14              15    1165
12-15 months   SAS-CompFeed     INDIA                          15              55    1165
12-15 months   SAS-CompFeed     INDIA                          16               9    1165
12-15 months   SAS-CompFeed     INDIA                          17              13    1165
12-15 months   SAS-CompFeed     INDIA                          18               2    1165
12-15 months   SAS-CompFeed     INDIA                          19               1    1165
12-15 months   SAS-CompFeed     INDIA                          20               0    1165
12-15 months   SAS-CompFeed     INDIA                          24               0    1165
12-15 months   SAS-CompFeed     INDIA                          25               0    1165
12-15 months   SAS-CompFeed     INDIA                          27               0    1165
12-15 months   SAS-FoodSuppl    INDIA                          0              105     303
12-15 months   SAS-FoodSuppl    INDIA                          1                1     303
12-15 months   SAS-FoodSuppl    INDIA                          2                7     303
12-15 months   SAS-FoodSuppl    INDIA                          3                5     303
12-15 months   SAS-FoodSuppl    INDIA                          4                5     303
12-15 months   SAS-FoodSuppl    INDIA                          5               43     303
12-15 months   SAS-FoodSuppl    INDIA                          6               10     303
12-15 months   SAS-FoodSuppl    INDIA                          7               10     303
12-15 months   SAS-FoodSuppl    INDIA                          8               36     303
12-15 months   SAS-FoodSuppl    INDIA                          9               23     303
12-15 months   SAS-FoodSuppl    INDIA                          10              39     303
12-15 months   SAS-FoodSuppl    INDIA                          11               1     303
12-15 months   SAS-FoodSuppl    INDIA                          12               9     303
12-15 months   SAS-FoodSuppl    INDIA                          13               1     303
12-15 months   SAS-FoodSuppl    INDIA                          14               5     303
12-15 months   SAS-FoodSuppl    INDIA                          15               3     303
12-15 months   SAS-FoodSuppl    INDIA                          16               0     303
12-15 months   SAS-FoodSuppl    INDIA                          17               0     303
12-15 months   SAS-FoodSuppl    INDIA                          18               0     303
12-15 months   SAS-FoodSuppl    INDIA                          19               0     303
12-15 months   SAS-FoodSuppl    INDIA                          20               0     303
12-15 months   SAS-FoodSuppl    INDIA                          24               0     303
12-15 months   SAS-FoodSuppl    INDIA                          25               0     303
12-15 months   SAS-FoodSuppl    INDIA                          27               0     303
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                2     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              413     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                3     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               16     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               6     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             192     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               9     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13              37     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14               6     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15               8     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16               9     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17               8     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18               1     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19               0     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20               0     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24               6     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25               1     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27              67     786
12-15 months   ZVITAMBO         ZIMBABWE                       0               15    2464
12-15 months   ZVITAMBO         ZIMBABWE                       1                0    2464
12-15 months   ZVITAMBO         ZIMBABWE                       2                1    2464
12-15 months   ZVITAMBO         ZIMBABWE                       3                5    2464
12-15 months   ZVITAMBO         ZIMBABWE                       4                6    2464
12-15 months   ZVITAMBO         ZIMBABWE                       5                8    2464
12-15 months   ZVITAMBO         ZIMBABWE                       6                4    2464
12-15 months   ZVITAMBO         ZIMBABWE                       7              171    2464
12-15 months   ZVITAMBO         ZIMBABWE                       8               16    2464
12-15 months   ZVITAMBO         ZIMBABWE                       9              186    2464
12-15 months   ZVITAMBO         ZIMBABWE                       10              73    2464
12-15 months   ZVITAMBO         ZIMBABWE                       11            1839    2464
12-15 months   ZVITAMBO         ZIMBABWE                       12              10    2464
12-15 months   ZVITAMBO         ZIMBABWE                       13             130    2464
12-15 months   ZVITAMBO         ZIMBABWE                       14               0    2464
12-15 months   ZVITAMBO         ZIMBABWE                       15               0    2464
12-15 months   ZVITAMBO         ZIMBABWE                       16               0    2464
12-15 months   ZVITAMBO         ZIMBABWE                       17               0    2464
12-15 months   ZVITAMBO         ZIMBABWE                       18               0    2464
12-15 months   ZVITAMBO         ZIMBABWE                       19               0    2464
12-15 months   ZVITAMBO         ZIMBABWE                       20               0    2464
12-15 months   ZVITAMBO         ZIMBABWE                       24               0    2464
12-15 months   ZVITAMBO         ZIMBABWE                       25               0    2464
12-15 months   ZVITAMBO         ZIMBABWE                       27               0    2464
15-18 months   COHORTS          GUATEMALA                      0              345     749
15-18 months   COHORTS          GUATEMALA                      1               40     749
15-18 months   COHORTS          GUATEMALA                      2              134     749
15-18 months   COHORTS          GUATEMALA                      3               95     749
15-18 months   COHORTS          GUATEMALA                      4               50     749
15-18 months   COHORTS          GUATEMALA                      5               18     749
15-18 months   COHORTS          GUATEMALA                      6               59     749
15-18 months   COHORTS          GUATEMALA                      7                2     749
15-18 months   COHORTS          GUATEMALA                      8                1     749
15-18 months   COHORTS          GUATEMALA                      9                0     749
15-18 months   COHORTS          GUATEMALA                      10               1     749
15-18 months   COHORTS          GUATEMALA                      11               0     749
15-18 months   COHORTS          GUATEMALA                      12               4     749
15-18 months   COHORTS          GUATEMALA                      13               0     749
15-18 months   COHORTS          GUATEMALA                      14               0     749
15-18 months   COHORTS          GUATEMALA                      15               0     749
15-18 months   COHORTS          GUATEMALA                      16               0     749
15-18 months   COHORTS          GUATEMALA                      17               0     749
15-18 months   COHORTS          GUATEMALA                      18               0     749
15-18 months   COHORTS          GUATEMALA                      19               0     749
15-18 months   COHORTS          GUATEMALA                      20               0     749
15-18 months   COHORTS          GUATEMALA                      24               0     749
15-18 months   COHORTS          GUATEMALA                      25               0     749
15-18 months   COHORTS          GUATEMALA                      27               0     749
15-18 months   GMS-Nepal        NEPAL                          0              211     479
15-18 months   GMS-Nepal        NEPAL                          1                0     479
15-18 months   GMS-Nepal        NEPAL                          2                0     479
15-18 months   GMS-Nepal        NEPAL                          3                0     479
15-18 months   GMS-Nepal        NEPAL                          4                0     479
15-18 months   GMS-Nepal        NEPAL                          5               72     479
15-18 months   GMS-Nepal        NEPAL                          6                0     479
15-18 months   GMS-Nepal        NEPAL                          7                0     479
15-18 months   GMS-Nepal        NEPAL                          8               82     479
15-18 months   GMS-Nepal        NEPAL                          9                0     479
15-18 months   GMS-Nepal        NEPAL                          10              85     479
15-18 months   GMS-Nepal        NEPAL                          11               0     479
15-18 months   GMS-Nepal        NEPAL                          12              29     479
15-18 months   GMS-Nepal        NEPAL                          13               0     479
15-18 months   GMS-Nepal        NEPAL                          14               0     479
15-18 months   GMS-Nepal        NEPAL                          15               0     479
15-18 months   GMS-Nepal        NEPAL                          16               0     479
15-18 months   GMS-Nepal        NEPAL                          17               0     479
15-18 months   GMS-Nepal        NEPAL                          18               0     479
15-18 months   GMS-Nepal        NEPAL                          19               0     479
15-18 months   GMS-Nepal        NEPAL                          20               0     479
15-18 months   GMS-Nepal        NEPAL                          24               0     479
15-18 months   GMS-Nepal        NEPAL                          25               0     479
15-18 months   GMS-Nepal        NEPAL                          27               0     479
15-18 months   LCNI-5           MALAWI                         0               44     119
15-18 months   LCNI-5           MALAWI                         1                0     119
15-18 months   LCNI-5           MALAWI                         2                4     119
15-18 months   LCNI-5           MALAWI                         3                6     119
15-18 months   LCNI-5           MALAWI                         4                6     119
15-18 months   LCNI-5           MALAWI                         5               12     119
15-18 months   LCNI-5           MALAWI                         6               12     119
15-18 months   LCNI-5           MALAWI                         7               13     119
15-18 months   LCNI-5           MALAWI                         8               11     119
15-18 months   LCNI-5           MALAWI                         9                3     119
15-18 months   LCNI-5           MALAWI                         10               1     119
15-18 months   LCNI-5           MALAWI                         11               0     119
15-18 months   LCNI-5           MALAWI                         12               7     119
15-18 months   LCNI-5           MALAWI                         13               0     119
15-18 months   LCNI-5           MALAWI                         14               0     119
15-18 months   LCNI-5           MALAWI                         15               0     119
15-18 months   LCNI-5           MALAWI                         16               0     119
15-18 months   LCNI-5           MALAWI                         17               0     119
15-18 months   LCNI-5           MALAWI                         18               0     119
15-18 months   LCNI-5           MALAWI                         19               0     119
15-18 months   LCNI-5           MALAWI                         20               0     119
15-18 months   LCNI-5           MALAWI                         24               0     119
15-18 months   LCNI-5           MALAWI                         25               0     119
15-18 months   LCNI-5           MALAWI                         27               0     119
15-18 months   MAL-ED           BANGLADESH                     0                0     117
15-18 months   MAL-ED           BANGLADESH                     1                7     117
15-18 months   MAL-ED           BANGLADESH                     2               11     117
15-18 months   MAL-ED           BANGLADESH                     3               11     117
15-18 months   MAL-ED           BANGLADESH                     4                6     117
15-18 months   MAL-ED           BANGLADESH                     5               26     117
15-18 months   MAL-ED           BANGLADESH                     6                7     117
15-18 months   MAL-ED           BANGLADESH                     7                9     117
15-18 months   MAL-ED           BANGLADESH                     8               14     117
15-18 months   MAL-ED           BANGLADESH                     9               10     117
15-18 months   MAL-ED           BANGLADESH                     10               8     117
15-18 months   MAL-ED           BANGLADESH                     11               0     117
15-18 months   MAL-ED           BANGLADESH                     12               6     117
15-18 months   MAL-ED           BANGLADESH                     13               0     117
15-18 months   MAL-ED           BANGLADESH                     14               0     117
15-18 months   MAL-ED           BANGLADESH                     15               0     117
15-18 months   MAL-ED           BANGLADESH                     16               2     117
15-18 months   MAL-ED           BANGLADESH                     17               0     117
15-18 months   MAL-ED           BANGLADESH                     18               0     117
15-18 months   MAL-ED           BANGLADESH                     19               0     117
15-18 months   MAL-ED           BANGLADESH                     20               0     117
15-18 months   MAL-ED           BANGLADESH                     24               0     117
15-18 months   MAL-ED           BANGLADESH                     25               0     117
15-18 months   MAL-ED           BANGLADESH                     27               0     117
15-18 months   MAL-ED           INDIA                          0                0     130
15-18 months   MAL-ED           INDIA                          1                0     130
15-18 months   MAL-ED           INDIA                          2                5     130
15-18 months   MAL-ED           INDIA                          3                9     130
15-18 months   MAL-ED           INDIA                          4                6     130
15-18 months   MAL-ED           INDIA                          5               30     130
15-18 months   MAL-ED           INDIA                          6               10     130
15-18 months   MAL-ED           INDIA                          7                9     130
15-18 months   MAL-ED           INDIA                          8               19     130
15-18 months   MAL-ED           INDIA                          9               25     130
15-18 months   MAL-ED           INDIA                          10               6     130
15-18 months   MAL-ED           INDIA                          11               2     130
15-18 months   MAL-ED           INDIA                          12               3     130
15-18 months   MAL-ED           INDIA                          13               1     130
15-18 months   MAL-ED           INDIA                          14               2     130
15-18 months   MAL-ED           INDIA                          15               2     130
15-18 months   MAL-ED           INDIA                          16               0     130
15-18 months   MAL-ED           INDIA                          17               0     130
15-18 months   MAL-ED           INDIA                          18               1     130
15-18 months   MAL-ED           INDIA                          19               0     130
15-18 months   MAL-ED           INDIA                          20               0     130
15-18 months   MAL-ED           INDIA                          24               0     130
15-18 months   MAL-ED           INDIA                          25               0     130
15-18 months   MAL-ED           INDIA                          27               0     130
15-18 months   MAL-ED           NEPAL                          0                0      90
15-18 months   MAL-ED           NEPAL                          1                0      90
15-18 months   MAL-ED           NEPAL                          2                4      90
15-18 months   MAL-ED           NEPAL                          3                3      90
15-18 months   MAL-ED           NEPAL                          4               10      90
15-18 months   MAL-ED           NEPAL                          5                6      90
15-18 months   MAL-ED           NEPAL                          6                4      90
15-18 months   MAL-ED           NEPAL                          7                8      90
15-18 months   MAL-ED           NEPAL                          8               11      90
15-18 months   MAL-ED           NEPAL                          9                7      90
15-18 months   MAL-ED           NEPAL                          10              23      90
15-18 months   MAL-ED           NEPAL                          11               1      90
15-18 months   MAL-ED           NEPAL                          12               7      90
15-18 months   MAL-ED           NEPAL                          13               0      90
15-18 months   MAL-ED           NEPAL                          14               0      90
15-18 months   MAL-ED           NEPAL                          15               1      90
15-18 months   MAL-ED           NEPAL                          16               1      90
15-18 months   MAL-ED           NEPAL                          17               3      90
15-18 months   MAL-ED           NEPAL                          18               1      90
15-18 months   MAL-ED           NEPAL                          19               0      90
15-18 months   MAL-ED           NEPAL                          20               0      90
15-18 months   MAL-ED           NEPAL                          24               0      90
15-18 months   MAL-ED           NEPAL                          25               0      90
15-18 months   MAL-ED           NEPAL                          27               0      90
15-18 months   MAL-ED           PERU                           0                1     173
15-18 months   MAL-ED           PERU                           1                1     173
15-18 months   MAL-ED           PERU                           2                0     173
15-18 months   MAL-ED           PERU                           3                6     173
15-18 months   MAL-ED           PERU                           4                4     173
15-18 months   MAL-ED           PERU                           5                7     173
15-18 months   MAL-ED           PERU                           6               15     173
15-18 months   MAL-ED           PERU                           7               12     173
15-18 months   MAL-ED           PERU                           8               14     173
15-18 months   MAL-ED           PERU                           9               22     173
15-18 months   MAL-ED           PERU                           10               7     173
15-18 months   MAL-ED           PERU                           11              72     173
15-18 months   MAL-ED           PERU                           12               1     173
15-18 months   MAL-ED           PERU                           13               2     173
15-18 months   MAL-ED           PERU                           14               4     173
15-18 months   MAL-ED           PERU                           15               0     173
15-18 months   MAL-ED           PERU                           16               1     173
15-18 months   MAL-ED           PERU                           17               1     173
15-18 months   MAL-ED           PERU                           18               2     173
15-18 months   MAL-ED           PERU                           19               0     173
15-18 months   MAL-ED           PERU                           20               1     173
15-18 months   MAL-ED           PERU                           24               0     173
15-18 months   MAL-ED           PERU                           25               0     173
15-18 months   MAL-ED           PERU                           27               0     173
15-18 months   MAL-ED           SOUTH AFRICA                   0                0      87
15-18 months   MAL-ED           SOUTH AFRICA                   1                0      87
15-18 months   MAL-ED           SOUTH AFRICA                   2                1      87
15-18 months   MAL-ED           SOUTH AFRICA                   3                0      87
15-18 months   MAL-ED           SOUTH AFRICA                   4                4      87
15-18 months   MAL-ED           SOUTH AFRICA                   5                2      87
15-18 months   MAL-ED           SOUTH AFRICA                   6                6      87
15-18 months   MAL-ED           SOUTH AFRICA                   7                5      87
15-18 months   MAL-ED           SOUTH AFRICA                   8                9      87
15-18 months   MAL-ED           SOUTH AFRICA                   9                6      87
15-18 months   MAL-ED           SOUTH AFRICA                   10               6      87
15-18 months   MAL-ED           SOUTH AFRICA                   11              15      87
15-18 months   MAL-ED           SOUTH AFRICA                   12              28      87
15-18 months   MAL-ED           SOUTH AFRICA                   13               0      87
15-18 months   MAL-ED           SOUTH AFRICA                   14               2      87
15-18 months   MAL-ED           SOUTH AFRICA                   15               2      87
15-18 months   MAL-ED           SOUTH AFRICA                   16               1      87
15-18 months   MAL-ED           SOUTH AFRICA                   17               0      87
15-18 months   MAL-ED           SOUTH AFRICA                   18               0      87
15-18 months   MAL-ED           SOUTH AFRICA                   19               0      87
15-18 months   MAL-ED           SOUTH AFRICA                   20               0      87
15-18 months   MAL-ED           SOUTH AFRICA                   24               0      87
15-18 months   MAL-ED           SOUTH AFRICA                   25               0      87
15-18 months   MAL-ED           SOUTH AFRICA                   27               0      87
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               13     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               10     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               14     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               11     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                7     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                8     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              107     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                2     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               3     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               1     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               0     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0     177
15-18 months   NIH-Crypto       BANGLADESH                     0              128     604
15-18 months   NIH-Crypto       BANGLADESH                     1               14     604
15-18 months   NIH-Crypto       BANGLADESH                     2               11     604
15-18 months   NIH-Crypto       BANGLADESH                     3               28     604
15-18 months   NIH-Crypto       BANGLADESH                     4               35     604
15-18 months   NIH-Crypto       BANGLADESH                     5               73     604
15-18 months   NIH-Crypto       BANGLADESH                     6               32     604
15-18 months   NIH-Crypto       BANGLADESH                     7               43     604
15-18 months   NIH-Crypto       BANGLADESH                     8               70     604
15-18 months   NIH-Crypto       BANGLADESH                     9               69     604
15-18 months   NIH-Crypto       BANGLADESH                     10              43     604
15-18 months   NIH-Crypto       BANGLADESH                     11               0     604
15-18 months   NIH-Crypto       BANGLADESH                     12              31     604
15-18 months   NIH-Crypto       BANGLADESH                     13               0     604
15-18 months   NIH-Crypto       BANGLADESH                     14               8     604
15-18 months   NIH-Crypto       BANGLADESH                     15              15     604
15-18 months   NIH-Crypto       BANGLADESH                     16               0     604
15-18 months   NIH-Crypto       BANGLADESH                     17               4     604
15-18 months   NIH-Crypto       BANGLADESH                     18               0     604
15-18 months   NIH-Crypto       BANGLADESH                     19               0     604
15-18 months   NIH-Crypto       BANGLADESH                     20               0     604
15-18 months   NIH-Crypto       BANGLADESH                     24               0     604
15-18 months   NIH-Crypto       BANGLADESH                     25               0     604
15-18 months   NIH-Crypto       BANGLADESH                     27               0     604
15-18 months   PROBIT           BELARUS                        0                0     260
15-18 months   PROBIT           BELARUS                        1                0     260
15-18 months   PROBIT           BELARUS                        2                0     260
15-18 months   PROBIT           BELARUS                        3                0     260
15-18 months   PROBIT           BELARUS                        4                0     260
15-18 months   PROBIT           BELARUS                        5                0     260
15-18 months   PROBIT           BELARUS                        6                0     260
15-18 months   PROBIT           BELARUS                        7                0     260
15-18 months   PROBIT           BELARUS                        8                0     260
15-18 months   PROBIT           BELARUS                        9                0     260
15-18 months   PROBIT           BELARUS                        10               8     260
15-18 months   PROBIT           BELARUS                        11               0     260
15-18 months   PROBIT           BELARUS                        12              87     260
15-18 months   PROBIT           BELARUS                        13             107     260
15-18 months   PROBIT           BELARUS                        14               8     260
15-18 months   PROBIT           BELARUS                        15               0     260
15-18 months   PROBIT           BELARUS                        16              50     260
15-18 months   PROBIT           BELARUS                        17               0     260
15-18 months   PROBIT           BELARUS                        18               0     260
15-18 months   PROBIT           BELARUS                        19               0     260
15-18 months   PROBIT           BELARUS                        20               0     260
15-18 months   PROBIT           BELARUS                        24               0     260
15-18 months   PROBIT           BELARUS                        25               0     260
15-18 months   PROBIT           BELARUS                        27               0     260
15-18 months   PROVIDE          BANGLADESH                     0              153     528
15-18 months   PROVIDE          BANGLADESH                     1                9     528
15-18 months   PROVIDE          BANGLADESH                     2               16     528
15-18 months   PROVIDE          BANGLADESH                     3               18     528
15-18 months   PROVIDE          BANGLADESH                     4               38     528
15-18 months   PROVIDE          BANGLADESH                     5               56     528
15-18 months   PROVIDE          BANGLADESH                     6               23     528
15-18 months   PROVIDE          BANGLADESH                     7               27     528
15-18 months   PROVIDE          BANGLADESH                     8               52     528
15-18 months   PROVIDE          BANGLADESH                     9               51     528
15-18 months   PROVIDE          BANGLADESH                     10              29     528
15-18 months   PROVIDE          BANGLADESH                     11              22     528
15-18 months   PROVIDE          BANGLADESH                     12               2     528
15-18 months   PROVIDE          BANGLADESH                     13               0     528
15-18 months   PROVIDE          BANGLADESH                     14              17     528
15-18 months   PROVIDE          BANGLADESH                     15               7     528
15-18 months   PROVIDE          BANGLADESH                     16               7     528
15-18 months   PROVIDE          BANGLADESH                     17               0     528
15-18 months   PROVIDE          BANGLADESH                     18               0     528
15-18 months   PROVIDE          BANGLADESH                     19               1     528
15-18 months   PROVIDE          BANGLADESH                     20               0     528
15-18 months   PROVIDE          BANGLADESH                     24               0     528
15-18 months   PROVIDE          BANGLADESH                     25               0     528
15-18 months   PROVIDE          BANGLADESH                     27               0     528
15-18 months   SAS-CompFeed     INDIA                          0              138    1168
15-18 months   SAS-CompFeed     INDIA                          1                0    1168
15-18 months   SAS-CompFeed     INDIA                          2                4    1168
15-18 months   SAS-CompFeed     INDIA                          3                9    1168
15-18 months   SAS-CompFeed     INDIA                          4               22    1168
15-18 months   SAS-CompFeed     INDIA                          5               70    1168
15-18 months   SAS-CompFeed     INDIA                          6               19    1168
15-18 months   SAS-CompFeed     INDIA                          7               95    1168
15-18 months   SAS-CompFeed     INDIA                          8              130    1168
15-18 months   SAS-CompFeed     INDIA                          9               72    1168
15-18 months   SAS-CompFeed     INDIA                          10             306    1168
15-18 months   SAS-CompFeed     INDIA                          11              34    1168
15-18 months   SAS-CompFeed     INDIA                          12             174    1168
15-18 months   SAS-CompFeed     INDIA                          13               5    1168
15-18 months   SAS-CompFeed     INDIA                          14              14    1168
15-18 months   SAS-CompFeed     INDIA                          15              53    1168
15-18 months   SAS-CompFeed     INDIA                          16               9    1168
15-18 months   SAS-CompFeed     INDIA                          17              11    1168
15-18 months   SAS-CompFeed     INDIA                          18               2    1168
15-18 months   SAS-CompFeed     INDIA                          19               1    1168
15-18 months   SAS-CompFeed     INDIA                          20               0    1168
15-18 months   SAS-CompFeed     INDIA                          24               0    1168
15-18 months   SAS-CompFeed     INDIA                          25               0    1168
15-18 months   SAS-CompFeed     INDIA                          27               0    1168
15-18 months   SAS-FoodSuppl    INDIA                          0              100     291
15-18 months   SAS-FoodSuppl    INDIA                          1                1     291
15-18 months   SAS-FoodSuppl    INDIA                          2                7     291
15-18 months   SAS-FoodSuppl    INDIA                          3                5     291
15-18 months   SAS-FoodSuppl    INDIA                          4                4     291
15-18 months   SAS-FoodSuppl    INDIA                          5               41     291
15-18 months   SAS-FoodSuppl    INDIA                          6                9     291
15-18 months   SAS-FoodSuppl    INDIA                          7               11     291
15-18 months   SAS-FoodSuppl    INDIA                          8               37     291
15-18 months   SAS-FoodSuppl    INDIA                          9               21     291
15-18 months   SAS-FoodSuppl    INDIA                          10              37     291
15-18 months   SAS-FoodSuppl    INDIA                          11               2     291
15-18 months   SAS-FoodSuppl    INDIA                          12               8     291
15-18 months   SAS-FoodSuppl    INDIA                          13               1     291
15-18 months   SAS-FoodSuppl    INDIA                          14               4     291
15-18 months   SAS-FoodSuppl    INDIA                          15               3     291
15-18 months   SAS-FoodSuppl    INDIA                          16               0     291
15-18 months   SAS-FoodSuppl    INDIA                          17               0     291
15-18 months   SAS-FoodSuppl    INDIA                          18               0     291
15-18 months   SAS-FoodSuppl    INDIA                          19               0     291
15-18 months   SAS-FoodSuppl    INDIA                          20               0     291
15-18 months   SAS-FoodSuppl    INDIA                          24               0     291
15-18 months   SAS-FoodSuppl    INDIA                          25               0     291
15-18 months   SAS-FoodSuppl    INDIA                          27               0     291
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                4     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              347     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                3     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               15     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               5     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             152     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               9     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13              34     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14               4     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15               6     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16               7     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17               6     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18               2     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19               0     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20               0     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24               4     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25               0     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27              62     662
15-18 months   ZVITAMBO         ZIMBABWE                       0               11    1963
15-18 months   ZVITAMBO         ZIMBABWE                       1                0    1963
15-18 months   ZVITAMBO         ZIMBABWE                       2                1    1963
15-18 months   ZVITAMBO         ZIMBABWE                       3                5    1963
15-18 months   ZVITAMBO         ZIMBABWE                       4                4    1963
15-18 months   ZVITAMBO         ZIMBABWE                       5                6    1963
15-18 months   ZVITAMBO         ZIMBABWE                       6                6    1963
15-18 months   ZVITAMBO         ZIMBABWE                       7              139    1963
15-18 months   ZVITAMBO         ZIMBABWE                       8               10    1963
15-18 months   ZVITAMBO         ZIMBABWE                       9              152    1963
15-18 months   ZVITAMBO         ZIMBABWE                       10              61    1963
15-18 months   ZVITAMBO         ZIMBABWE                       11            1461    1963
15-18 months   ZVITAMBO         ZIMBABWE                       12               8    1963
15-18 months   ZVITAMBO         ZIMBABWE                       13              99    1963
15-18 months   ZVITAMBO         ZIMBABWE                       14               0    1963
15-18 months   ZVITAMBO         ZIMBABWE                       15               0    1963
15-18 months   ZVITAMBO         ZIMBABWE                       16               0    1963
15-18 months   ZVITAMBO         ZIMBABWE                       17               0    1963
15-18 months   ZVITAMBO         ZIMBABWE                       18               0    1963
15-18 months   ZVITAMBO         ZIMBABWE                       19               0    1963
15-18 months   ZVITAMBO         ZIMBABWE                       20               0    1963
15-18 months   ZVITAMBO         ZIMBABWE                       24               0    1963
15-18 months   ZVITAMBO         ZIMBABWE                       25               0    1963
15-18 months   ZVITAMBO         ZIMBABWE                       27               0    1963
18-21 months   COHORTS          GUATEMALA                      0              338     739
18-21 months   COHORTS          GUATEMALA                      1               39     739
18-21 months   COHORTS          GUATEMALA                      2              132     739
18-21 months   COHORTS          GUATEMALA                      3               97     739
18-21 months   COHORTS          GUATEMALA                      4               50     739
18-21 months   COHORTS          GUATEMALA                      5               18     739
18-21 months   COHORTS          GUATEMALA                      6               57     739
18-21 months   COHORTS          GUATEMALA                      7                1     739
18-21 months   COHORTS          GUATEMALA                      8                1     739
18-21 months   COHORTS          GUATEMALA                      9                0     739
18-21 months   COHORTS          GUATEMALA                      10               1     739
18-21 months   COHORTS          GUATEMALA                      11               0     739
18-21 months   COHORTS          GUATEMALA                      12               4     739
18-21 months   COHORTS          GUATEMALA                      13               0     739
18-21 months   COHORTS          GUATEMALA                      14               0     739
18-21 months   COHORTS          GUATEMALA                      15               1     739
18-21 months   COHORTS          GUATEMALA                      16               0     739
18-21 months   COHORTS          GUATEMALA                      17               0     739
18-21 months   COHORTS          GUATEMALA                      18               0     739
18-21 months   COHORTS          GUATEMALA                      19               0     739
18-21 months   COHORTS          GUATEMALA                      20               0     739
18-21 months   COHORTS          GUATEMALA                      24               0     739
18-21 months   COHORTS          GUATEMALA                      25               0     739
18-21 months   COHORTS          GUATEMALA                      27               0     739
18-21 months   GMS-Nepal        NEPAL                          0              194     444
18-21 months   GMS-Nepal        NEPAL                          1                0     444
18-21 months   GMS-Nepal        NEPAL                          2                0     444
18-21 months   GMS-Nepal        NEPAL                          3                0     444
18-21 months   GMS-Nepal        NEPAL                          4                0     444
18-21 months   GMS-Nepal        NEPAL                          5               64     444
18-21 months   GMS-Nepal        NEPAL                          6                0     444
18-21 months   GMS-Nepal        NEPAL                          7                0     444
18-21 months   GMS-Nepal        NEPAL                          8               76     444
18-21 months   GMS-Nepal        NEPAL                          9                0     444
18-21 months   GMS-Nepal        NEPAL                          10              83     444
18-21 months   GMS-Nepal        NEPAL                          11               0     444
18-21 months   GMS-Nepal        NEPAL                          12              27     444
18-21 months   GMS-Nepal        NEPAL                          13               0     444
18-21 months   GMS-Nepal        NEPAL                          14               0     444
18-21 months   GMS-Nepal        NEPAL                          15               0     444
18-21 months   GMS-Nepal        NEPAL                          16               0     444
18-21 months   GMS-Nepal        NEPAL                          17               0     444
18-21 months   GMS-Nepal        NEPAL                          18               0     444
18-21 months   GMS-Nepal        NEPAL                          19               0     444
18-21 months   GMS-Nepal        NEPAL                          20               0     444
18-21 months   GMS-Nepal        NEPAL                          24               0     444
18-21 months   GMS-Nepal        NEPAL                          25               0     444
18-21 months   GMS-Nepal        NEPAL                          27               0     444
18-21 months   LCNI-5           MALAWI                         0              161     472
18-21 months   LCNI-5           MALAWI                         1                5     472
18-21 months   LCNI-5           MALAWI                         2               18     472
18-21 months   LCNI-5           MALAWI                         3               27     472
18-21 months   LCNI-5           MALAWI                         4               33     472
18-21 months   LCNI-5           MALAWI                         5               40     472
18-21 months   LCNI-5           MALAWI                         6               41     472
18-21 months   LCNI-5           MALAWI                         7               40     472
18-21 months   LCNI-5           MALAWI                         8               54     472
18-21 months   LCNI-5           MALAWI                         9                3     472
18-21 months   LCNI-5           MALAWI                         10              10     472
18-21 months   LCNI-5           MALAWI                         11               4     472
18-21 months   LCNI-5           MALAWI                         12              32     472
18-21 months   LCNI-5           MALAWI                         13               1     472
18-21 months   LCNI-5           MALAWI                         14               2     472
18-21 months   LCNI-5           MALAWI                         15               0     472
18-21 months   LCNI-5           MALAWI                         16               1     472
18-21 months   LCNI-5           MALAWI                         17               0     472
18-21 months   LCNI-5           MALAWI                         18               0     472
18-21 months   LCNI-5           MALAWI                         19               0     472
18-21 months   LCNI-5           MALAWI                         20               0     472
18-21 months   LCNI-5           MALAWI                         24               0     472
18-21 months   LCNI-5           MALAWI                         25               0     472
18-21 months   LCNI-5           MALAWI                         27               0     472
18-21 months   MAL-ED           BANGLADESH                     0                0     116
18-21 months   MAL-ED           BANGLADESH                     1                7     116
18-21 months   MAL-ED           BANGLADESH                     2               11     116
18-21 months   MAL-ED           BANGLADESH                     3               10     116
18-21 months   MAL-ED           BANGLADESH                     4                6     116
18-21 months   MAL-ED           BANGLADESH                     5               27     116
18-21 months   MAL-ED           BANGLADESH                     6                7     116
18-21 months   MAL-ED           BANGLADESH                     7                8     116
18-21 months   MAL-ED           BANGLADESH                     8               13     116
18-21 months   MAL-ED           BANGLADESH                     9               10     116
18-21 months   MAL-ED           BANGLADESH                     10               8     116
18-21 months   MAL-ED           BANGLADESH                     11               0     116
18-21 months   MAL-ED           BANGLADESH                     12               7     116
18-21 months   MAL-ED           BANGLADESH                     13               0     116
18-21 months   MAL-ED           BANGLADESH                     14               0     116
18-21 months   MAL-ED           BANGLADESH                     15               0     116
18-21 months   MAL-ED           BANGLADESH                     16               2     116
18-21 months   MAL-ED           BANGLADESH                     17               0     116
18-21 months   MAL-ED           BANGLADESH                     18               0     116
18-21 months   MAL-ED           BANGLADESH                     19               0     116
18-21 months   MAL-ED           BANGLADESH                     20               0     116
18-21 months   MAL-ED           BANGLADESH                     24               0     116
18-21 months   MAL-ED           BANGLADESH                     25               0     116
18-21 months   MAL-ED           BANGLADESH                     27               0     116
18-21 months   MAL-ED           INDIA                          0                0     130
18-21 months   MAL-ED           INDIA                          1                0     130
18-21 months   MAL-ED           INDIA                          2                5     130
18-21 months   MAL-ED           INDIA                          3                9     130
18-21 months   MAL-ED           INDIA                          4                5     130
18-21 months   MAL-ED           INDIA                          5               31     130
18-21 months   MAL-ED           INDIA                          6               10     130
18-21 months   MAL-ED           INDIA                          7                9     130
18-21 months   MAL-ED           INDIA                          8               19     130
18-21 months   MAL-ED           INDIA                          9               25     130
18-21 months   MAL-ED           INDIA                          10               6     130
18-21 months   MAL-ED           INDIA                          11               2     130
18-21 months   MAL-ED           INDIA                          12               3     130
18-21 months   MAL-ED           INDIA                          13               1     130
18-21 months   MAL-ED           INDIA                          14               2     130
18-21 months   MAL-ED           INDIA                          15               2     130
18-21 months   MAL-ED           INDIA                          16               0     130
18-21 months   MAL-ED           INDIA                          17               0     130
18-21 months   MAL-ED           INDIA                          18               1     130
18-21 months   MAL-ED           INDIA                          19               0     130
18-21 months   MAL-ED           INDIA                          20               0     130
18-21 months   MAL-ED           INDIA                          24               0     130
18-21 months   MAL-ED           INDIA                          25               0     130
18-21 months   MAL-ED           INDIA                          27               0     130
18-21 months   MAL-ED           NEPAL                          0                0      90
18-21 months   MAL-ED           NEPAL                          1                0      90
18-21 months   MAL-ED           NEPAL                          2                4      90
18-21 months   MAL-ED           NEPAL                          3                3      90
18-21 months   MAL-ED           NEPAL                          4               10      90
18-21 months   MAL-ED           NEPAL                          5                6      90
18-21 months   MAL-ED           NEPAL                          6                4      90
18-21 months   MAL-ED           NEPAL                          7                8      90
18-21 months   MAL-ED           NEPAL                          8               11      90
18-21 months   MAL-ED           NEPAL                          9                7      90
18-21 months   MAL-ED           NEPAL                          10              23      90
18-21 months   MAL-ED           NEPAL                          11               1      90
18-21 months   MAL-ED           NEPAL                          12               7      90
18-21 months   MAL-ED           NEPAL                          13               0      90
18-21 months   MAL-ED           NEPAL                          14               0      90
18-21 months   MAL-ED           NEPAL                          15               1      90
18-21 months   MAL-ED           NEPAL                          16               1      90
18-21 months   MAL-ED           NEPAL                          17               3      90
18-21 months   MAL-ED           NEPAL                          18               1      90
18-21 months   MAL-ED           NEPAL                          19               0      90
18-21 months   MAL-ED           NEPAL                          20               0      90
18-21 months   MAL-ED           NEPAL                          24               0      90
18-21 months   MAL-ED           NEPAL                          25               0      90
18-21 months   MAL-ED           NEPAL                          27               0      90
18-21 months   MAL-ED           PERU                           0                1     164
18-21 months   MAL-ED           PERU                           1                1     164
18-21 months   MAL-ED           PERU                           2                0     164
18-21 months   MAL-ED           PERU                           3                6     164
18-21 months   MAL-ED           PERU                           4                4     164
18-21 months   MAL-ED           PERU                           5                7     164
18-21 months   MAL-ED           PERU                           6               14     164
18-21 months   MAL-ED           PERU                           7               12     164
18-21 months   MAL-ED           PERU                           8               15     164
18-21 months   MAL-ED           PERU                           9               20     164
18-21 months   MAL-ED           PERU                           10               7     164
18-21 months   MAL-ED           PERU                           11              66     164
18-21 months   MAL-ED           PERU                           12               1     164
18-21 months   MAL-ED           PERU                           13               2     164
18-21 months   MAL-ED           PERU                           14               4     164
18-21 months   MAL-ED           PERU                           15               0     164
18-21 months   MAL-ED           PERU                           16               1     164
18-21 months   MAL-ED           PERU                           17               1     164
18-21 months   MAL-ED           PERU                           18               1     164
18-21 months   MAL-ED           PERU                           19               0     164
18-21 months   MAL-ED           PERU                           20               1     164
18-21 months   MAL-ED           PERU                           24               0     164
18-21 months   MAL-ED           PERU                           25               0     164
18-21 months   MAL-ED           PERU                           27               0     164
18-21 months   MAL-ED           SOUTH AFRICA                   0                0      90
18-21 months   MAL-ED           SOUTH AFRICA                   1                0      90
18-21 months   MAL-ED           SOUTH AFRICA                   2                1      90
18-21 months   MAL-ED           SOUTH AFRICA                   3                0      90
18-21 months   MAL-ED           SOUTH AFRICA                   4                4      90
18-21 months   MAL-ED           SOUTH AFRICA                   5                2      90
18-21 months   MAL-ED           SOUTH AFRICA                   6                6      90
18-21 months   MAL-ED           SOUTH AFRICA                   7                5      90
18-21 months   MAL-ED           SOUTH AFRICA                   8               10      90
18-21 months   MAL-ED           SOUTH AFRICA                   9                6      90
18-21 months   MAL-ED           SOUTH AFRICA                   10               7      90
18-21 months   MAL-ED           SOUTH AFRICA                   11              15      90
18-21 months   MAL-ED           SOUTH AFRICA                   12              29      90
18-21 months   MAL-ED           SOUTH AFRICA                   13               0      90
18-21 months   MAL-ED           SOUTH AFRICA                   14               2      90
18-21 months   MAL-ED           SOUTH AFRICA                   15               2      90
18-21 months   MAL-ED           SOUTH AFRICA                   16               1      90
18-21 months   MAL-ED           SOUTH AFRICA                   17               0      90
18-21 months   MAL-ED           SOUTH AFRICA                   18               0      90
18-21 months   MAL-ED           SOUTH AFRICA                   19               0      90
18-21 months   MAL-ED           SOUTH AFRICA                   20               0      90
18-21 months   MAL-ED           SOUTH AFRICA                   24               0      90
18-21 months   MAL-ED           SOUTH AFRICA                   25               0      90
18-21 months   MAL-ED           SOUTH AFRICA                   27               0      90
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               10     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               13     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                8     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                7     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                8     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              100     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                2     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               3     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               1     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               1     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0     166
18-21 months   NIH-Crypto       BANGLADESH                     0              107     546
18-21 months   NIH-Crypto       BANGLADESH                     1               12     546
18-21 months   NIH-Crypto       BANGLADESH                     2               11     546
18-21 months   NIH-Crypto       BANGLADESH                     3               22     546
18-21 months   NIH-Crypto       BANGLADESH                     4               34     546
18-21 months   NIH-Crypto       BANGLADESH                     5               67     546
18-21 months   NIH-Crypto       BANGLADESH                     6               26     546
18-21 months   NIH-Crypto       BANGLADESH                     7               39     546
18-21 months   NIH-Crypto       BANGLADESH                     8               68     546
18-21 months   NIH-Crypto       BANGLADESH                     9               66     546
18-21 months   NIH-Crypto       BANGLADESH                     10              42     546
18-21 months   NIH-Crypto       BANGLADESH                     11               0     546
18-21 months   NIH-Crypto       BANGLADESH                     12              29     546
18-21 months   NIH-Crypto       BANGLADESH                     13               0     546
18-21 months   NIH-Crypto       BANGLADESH                     14               8     546
18-21 months   NIH-Crypto       BANGLADESH                     15              12     546
18-21 months   NIH-Crypto       BANGLADESH                     16               0     546
18-21 months   NIH-Crypto       BANGLADESH                     17               3     546
18-21 months   NIH-Crypto       BANGLADESH                     18               0     546
18-21 months   NIH-Crypto       BANGLADESH                     19               0     546
18-21 months   NIH-Crypto       BANGLADESH                     20               0     546
18-21 months   NIH-Crypto       BANGLADESH                     24               0     546
18-21 months   NIH-Crypto       BANGLADESH                     25               0     546
18-21 months   NIH-Crypto       BANGLADESH                     27               0     546
18-21 months   PROBIT           BELARUS                        0                0     211
18-21 months   PROBIT           BELARUS                        1                0     211
18-21 months   PROBIT           BELARUS                        2                0     211
18-21 months   PROBIT           BELARUS                        3                0     211
18-21 months   PROBIT           BELARUS                        4                0     211
18-21 months   PROBIT           BELARUS                        5                0     211
18-21 months   PROBIT           BELARUS                        6                0     211
18-21 months   PROBIT           BELARUS                        7                0     211
18-21 months   PROBIT           BELARUS                        8                0     211
18-21 months   PROBIT           BELARUS                        9                0     211
18-21 months   PROBIT           BELARUS                        10               6     211
18-21 months   PROBIT           BELARUS                        11               0     211
18-21 months   PROBIT           BELARUS                        12              81     211
18-21 months   PROBIT           BELARUS                        13              92     211
18-21 months   PROBIT           BELARUS                        14               6     211
18-21 months   PROBIT           BELARUS                        15               0     211
18-21 months   PROBIT           BELARUS                        16              26     211
18-21 months   PROBIT           BELARUS                        17               0     211
18-21 months   PROBIT           BELARUS                        18               0     211
18-21 months   PROBIT           BELARUS                        19               0     211
18-21 months   PROBIT           BELARUS                        20               0     211
18-21 months   PROBIT           BELARUS                        24               0     211
18-21 months   PROBIT           BELARUS                        25               0     211
18-21 months   PROBIT           BELARUS                        27               0     211
18-21 months   PROVIDE          BANGLADESH                     0              160     541
18-21 months   PROVIDE          BANGLADESH                     1               11     541
18-21 months   PROVIDE          BANGLADESH                     2               17     541
18-21 months   PROVIDE          BANGLADESH                     3               21     541
18-21 months   PROVIDE          BANGLADESH                     4               39     541
18-21 months   PROVIDE          BANGLADESH                     5               59     541
18-21 months   PROVIDE          BANGLADESH                     6               24     541
18-21 months   PROVIDE          BANGLADESH                     7               28     541
18-21 months   PROVIDE          BANGLADESH                     8               50     541
18-21 months   PROVIDE          BANGLADESH                     9               50     541
18-21 months   PROVIDE          BANGLADESH                     10              26     541
18-21 months   PROVIDE          BANGLADESH                     11              23     541
18-21 months   PROVIDE          BANGLADESH                     12               1     541
18-21 months   PROVIDE          BANGLADESH                     13               0     541
18-21 months   PROVIDE          BANGLADESH                     14              17     541
18-21 months   PROVIDE          BANGLADESH                     15               6     541
18-21 months   PROVIDE          BANGLADESH                     16               8     541
18-21 months   PROVIDE          BANGLADESH                     17               0     541
18-21 months   PROVIDE          BANGLADESH                     18               0     541
18-21 months   PROVIDE          BANGLADESH                     19               1     541
18-21 months   PROVIDE          BANGLADESH                     20               0     541
18-21 months   PROVIDE          BANGLADESH                     24               0     541
18-21 months   PROVIDE          BANGLADESH                     25               0     541
18-21 months   PROVIDE          BANGLADESH                     27               0     541
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                3       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               5       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13               0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14               0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15               0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16               0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17               0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18               0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19               0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20               0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24               0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25               0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27               1       9
18-21 months   ZVITAMBO         ZIMBABWE                       0               11    1544
18-21 months   ZVITAMBO         ZIMBABWE                       1                0    1544
18-21 months   ZVITAMBO         ZIMBABWE                       2                1    1544
18-21 months   ZVITAMBO         ZIMBABWE                       3                3    1544
18-21 months   ZVITAMBO         ZIMBABWE                       4                4    1544
18-21 months   ZVITAMBO         ZIMBABWE                       5                4    1544
18-21 months   ZVITAMBO         ZIMBABWE                       6                3    1544
18-21 months   ZVITAMBO         ZIMBABWE                       7              106    1544
18-21 months   ZVITAMBO         ZIMBABWE                       8               11    1544
18-21 months   ZVITAMBO         ZIMBABWE                       9              121    1544
18-21 months   ZVITAMBO         ZIMBABWE                       10              47    1544
18-21 months   ZVITAMBO         ZIMBABWE                       11            1159    1544
18-21 months   ZVITAMBO         ZIMBABWE                       12               6    1544
18-21 months   ZVITAMBO         ZIMBABWE                       13              68    1544
18-21 months   ZVITAMBO         ZIMBABWE                       14               0    1544
18-21 months   ZVITAMBO         ZIMBABWE                       15               0    1544
18-21 months   ZVITAMBO         ZIMBABWE                       16               0    1544
18-21 months   ZVITAMBO         ZIMBABWE                       17               0    1544
18-21 months   ZVITAMBO         ZIMBABWE                       18               0    1544
18-21 months   ZVITAMBO         ZIMBABWE                       19               0    1544
18-21 months   ZVITAMBO         ZIMBABWE                       20               0    1544
18-21 months   ZVITAMBO         ZIMBABWE                       24               0    1544
18-21 months   ZVITAMBO         ZIMBABWE                       25               0    1544
18-21 months   ZVITAMBO         ZIMBABWE                       27               0    1544
21-24 months   COHORTS          GUATEMALA                      0              374     812
21-24 months   COHORTS          GUATEMALA                      1               45     812
21-24 months   COHORTS          GUATEMALA                      2              139     812
21-24 months   COHORTS          GUATEMALA                      3              110     812
21-24 months   COHORTS          GUATEMALA                      4               53     812
21-24 months   COHORTS          GUATEMALA                      5               21     812
21-24 months   COHORTS          GUATEMALA                      6               62     812
21-24 months   COHORTS          GUATEMALA                      7                1     812
21-24 months   COHORTS          GUATEMALA                      8                1     812
21-24 months   COHORTS          GUATEMALA                      9                0     812
21-24 months   COHORTS          GUATEMALA                      10               1     812
21-24 months   COHORTS          GUATEMALA                      11               0     812
21-24 months   COHORTS          GUATEMALA                      12               4     812
21-24 months   COHORTS          GUATEMALA                      13               0     812
21-24 months   COHORTS          GUATEMALA                      14               0     812
21-24 months   COHORTS          GUATEMALA                      15               1     812
21-24 months   COHORTS          GUATEMALA                      16               0     812
21-24 months   COHORTS          GUATEMALA                      17               0     812
21-24 months   COHORTS          GUATEMALA                      18               0     812
21-24 months   COHORTS          GUATEMALA                      19               0     812
21-24 months   COHORTS          GUATEMALA                      20               0     812
21-24 months   COHORTS          GUATEMALA                      24               0     812
21-24 months   COHORTS          GUATEMALA                      25               0     812
21-24 months   COHORTS          GUATEMALA                      27               0     812
21-24 months   GMS-Nepal        NEPAL                          0              151     342
21-24 months   GMS-Nepal        NEPAL                          1                0     342
21-24 months   GMS-Nepal        NEPAL                          2                0     342
21-24 months   GMS-Nepal        NEPAL                          3                0     342
21-24 months   GMS-Nepal        NEPAL                          4                0     342
21-24 months   GMS-Nepal        NEPAL                          5               46     342
21-24 months   GMS-Nepal        NEPAL                          6                0     342
21-24 months   GMS-Nepal        NEPAL                          7                0     342
21-24 months   GMS-Nepal        NEPAL                          8               61     342
21-24 months   GMS-Nepal        NEPAL                          9                0     342
21-24 months   GMS-Nepal        NEPAL                          10              65     342
21-24 months   GMS-Nepal        NEPAL                          11               0     342
21-24 months   GMS-Nepal        NEPAL                          12              19     342
21-24 months   GMS-Nepal        NEPAL                          13               0     342
21-24 months   GMS-Nepal        NEPAL                          14               0     342
21-24 months   GMS-Nepal        NEPAL                          15               0     342
21-24 months   GMS-Nepal        NEPAL                          16               0     342
21-24 months   GMS-Nepal        NEPAL                          17               0     342
21-24 months   GMS-Nepal        NEPAL                          18               0     342
21-24 months   GMS-Nepal        NEPAL                          19               0     342
21-24 months   GMS-Nepal        NEPAL                          20               0     342
21-24 months   GMS-Nepal        NEPAL                          24               0     342
21-24 months   GMS-Nepal        NEPAL                          25               0     342
21-24 months   GMS-Nepal        NEPAL                          27               0     342
21-24 months   LCNI-5           MALAWI                         0              145     403
21-24 months   LCNI-5           MALAWI                         1                5     403
21-24 months   LCNI-5           MALAWI                         2               14     403
21-24 months   LCNI-5           MALAWI                         3               26     403
21-24 months   LCNI-5           MALAWI                         4               25     403
21-24 months   LCNI-5           MALAWI                         5               30     403
21-24 months   LCNI-5           MALAWI                         6               36     403
21-24 months   LCNI-5           MALAWI                         7               31     403
21-24 months   LCNI-5           MALAWI                         8               45     403
21-24 months   LCNI-5           MALAWI                         9                4     403
21-24 months   LCNI-5           MALAWI                         10               9     403
21-24 months   LCNI-5           MALAWI                         11               3     403
21-24 months   LCNI-5           MALAWI                         12              28     403
21-24 months   LCNI-5           MALAWI                         13               1     403
21-24 months   LCNI-5           MALAWI                         14               1     403
21-24 months   LCNI-5           MALAWI                         15               0     403
21-24 months   LCNI-5           MALAWI                         16               0     403
21-24 months   LCNI-5           MALAWI                         17               0     403
21-24 months   LCNI-5           MALAWI                         18               0     403
21-24 months   LCNI-5           MALAWI                         19               0     403
21-24 months   LCNI-5           MALAWI                         20               0     403
21-24 months   LCNI-5           MALAWI                         24               0     403
21-24 months   LCNI-5           MALAWI                         25               0     403
21-24 months   LCNI-5           MALAWI                         27               0     403
21-24 months   MAL-ED           BANGLADESH                     0                0     115
21-24 months   MAL-ED           BANGLADESH                     1                7     115
21-24 months   MAL-ED           BANGLADESH                     2               11     115
21-24 months   MAL-ED           BANGLADESH                     3               11     115
21-24 months   MAL-ED           BANGLADESH                     4                5     115
21-24 months   MAL-ED           BANGLADESH                     5               27     115
21-24 months   MAL-ED           BANGLADESH                     6                7     115
21-24 months   MAL-ED           BANGLADESH                     7                7     115
21-24 months   MAL-ED           BANGLADESH                     8               13     115
21-24 months   MAL-ED           BANGLADESH                     9               10     115
21-24 months   MAL-ED           BANGLADESH                     10               8     115
21-24 months   MAL-ED           BANGLADESH                     11               0     115
21-24 months   MAL-ED           BANGLADESH                     12               7     115
21-24 months   MAL-ED           BANGLADESH                     13               0     115
21-24 months   MAL-ED           BANGLADESH                     14               0     115
21-24 months   MAL-ED           BANGLADESH                     15               0     115
21-24 months   MAL-ED           BANGLADESH                     16               2     115
21-24 months   MAL-ED           BANGLADESH                     17               0     115
21-24 months   MAL-ED           BANGLADESH                     18               0     115
21-24 months   MAL-ED           BANGLADESH                     19               0     115
21-24 months   MAL-ED           BANGLADESH                     20               0     115
21-24 months   MAL-ED           BANGLADESH                     24               0     115
21-24 months   MAL-ED           BANGLADESH                     25               0     115
21-24 months   MAL-ED           BANGLADESH                     27               0     115
21-24 months   MAL-ED           INDIA                          0                0     131
21-24 months   MAL-ED           INDIA                          1                0     131
21-24 months   MAL-ED           INDIA                          2                5     131
21-24 months   MAL-ED           INDIA                          3                9     131
21-24 months   MAL-ED           INDIA                          4                5     131
21-24 months   MAL-ED           INDIA                          5               31     131
21-24 months   MAL-ED           INDIA                          6               10     131
21-24 months   MAL-ED           INDIA                          7               10     131
21-24 months   MAL-ED           INDIA                          8               19     131
21-24 months   MAL-ED           INDIA                          9               25     131
21-24 months   MAL-ED           INDIA                          10               6     131
21-24 months   MAL-ED           INDIA                          11               2     131
21-24 months   MAL-ED           INDIA                          12               3     131
21-24 months   MAL-ED           INDIA                          13               1     131
21-24 months   MAL-ED           INDIA                          14               2     131
21-24 months   MAL-ED           INDIA                          15               2     131
21-24 months   MAL-ED           INDIA                          16               0     131
21-24 months   MAL-ED           INDIA                          17               0     131
21-24 months   MAL-ED           INDIA                          18               1     131
21-24 months   MAL-ED           INDIA                          19               0     131
21-24 months   MAL-ED           INDIA                          20               0     131
21-24 months   MAL-ED           INDIA                          24               0     131
21-24 months   MAL-ED           INDIA                          25               0     131
21-24 months   MAL-ED           INDIA                          27               0     131
21-24 months   MAL-ED           NEPAL                          0                0      90
21-24 months   MAL-ED           NEPAL                          1                0      90
21-24 months   MAL-ED           NEPAL                          2                4      90
21-24 months   MAL-ED           NEPAL                          3                3      90
21-24 months   MAL-ED           NEPAL                          4               10      90
21-24 months   MAL-ED           NEPAL                          5                6      90
21-24 months   MAL-ED           NEPAL                          6                4      90
21-24 months   MAL-ED           NEPAL                          7                8      90
21-24 months   MAL-ED           NEPAL                          8               11      90
21-24 months   MAL-ED           NEPAL                          9                7      90
21-24 months   MAL-ED           NEPAL                          10              23      90
21-24 months   MAL-ED           NEPAL                          11               1      90
21-24 months   MAL-ED           NEPAL                          12               7      90
21-24 months   MAL-ED           NEPAL                          13               0      90
21-24 months   MAL-ED           NEPAL                          14               0      90
21-24 months   MAL-ED           NEPAL                          15               1      90
21-24 months   MAL-ED           NEPAL                          16               1      90
21-24 months   MAL-ED           NEPAL                          17               3      90
21-24 months   MAL-ED           NEPAL                          18               1      90
21-24 months   MAL-ED           NEPAL                          19               0      90
21-24 months   MAL-ED           NEPAL                          20               0      90
21-24 months   MAL-ED           NEPAL                          24               0      90
21-24 months   MAL-ED           NEPAL                          25               0      90
21-24 months   MAL-ED           NEPAL                          27               0      90
21-24 months   MAL-ED           PERU                           0                1     154
21-24 months   MAL-ED           PERU                           1                1     154
21-24 months   MAL-ED           PERU                           2                0     154
21-24 months   MAL-ED           PERU                           3                6     154
21-24 months   MAL-ED           PERU                           4                3     154
21-24 months   MAL-ED           PERU                           5                7     154
21-24 months   MAL-ED           PERU                           6               13     154
21-24 months   MAL-ED           PERU                           7               12     154
21-24 months   MAL-ED           PERU                           8               15     154
21-24 months   MAL-ED           PERU                           9               19     154
21-24 months   MAL-ED           PERU                           10               7     154
21-24 months   MAL-ED           PERU                           11              59     154
21-24 months   MAL-ED           PERU                           12               1     154
21-24 months   MAL-ED           PERU                           13               2     154
21-24 months   MAL-ED           PERU                           14               4     154
21-24 months   MAL-ED           PERU                           15               0     154
21-24 months   MAL-ED           PERU                           16               1     154
21-24 months   MAL-ED           PERU                           17               1     154
21-24 months   MAL-ED           PERU                           18               1     154
21-24 months   MAL-ED           PERU                           19               0     154
21-24 months   MAL-ED           PERU                           20               1     154
21-24 months   MAL-ED           PERU                           24               0     154
21-24 months   MAL-ED           PERU                           25               0     154
21-24 months   MAL-ED           PERU                           27               0     154
21-24 months   MAL-ED           SOUTH AFRICA                   0                0      91
21-24 months   MAL-ED           SOUTH AFRICA                   1                0      91
21-24 months   MAL-ED           SOUTH AFRICA                   2                1      91
21-24 months   MAL-ED           SOUTH AFRICA                   3                0      91
21-24 months   MAL-ED           SOUTH AFRICA                   4                4      91
21-24 months   MAL-ED           SOUTH AFRICA                   5                2      91
21-24 months   MAL-ED           SOUTH AFRICA                   6                6      91
21-24 months   MAL-ED           SOUTH AFRICA                   7                6      91
21-24 months   MAL-ED           SOUTH AFRICA                   8               10      91
21-24 months   MAL-ED           SOUTH AFRICA                   9                5      91
21-24 months   MAL-ED           SOUTH AFRICA                   10               8      91
21-24 months   MAL-ED           SOUTH AFRICA                   11              15      91
21-24 months   MAL-ED           SOUTH AFRICA                   12              29      91
21-24 months   MAL-ED           SOUTH AFRICA                   13               0      91
21-24 months   MAL-ED           SOUTH AFRICA                   14               2      91
21-24 months   MAL-ED           SOUTH AFRICA                   15               2      91
21-24 months   MAL-ED           SOUTH AFRICA                   16               1      91
21-24 months   MAL-ED           SOUTH AFRICA                   17               0      91
21-24 months   MAL-ED           SOUTH AFRICA                   18               0      91
21-24 months   MAL-ED           SOUTH AFRICA                   19               0      91
21-24 months   MAL-ED           SOUTH AFRICA                   20               0      91
21-24 months   MAL-ED           SOUTH AFRICA                   24               0      91
21-24 months   MAL-ED           SOUTH AFRICA                   25               0      91
21-24 months   MAL-ED           SOUTH AFRICA                   27               0      91
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               11     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               13     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                9     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                7     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                8     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7               98     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                2     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               3     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               2     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               1     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0     167
21-24 months   NIH-Crypto       BANGLADESH                     0               94     490
21-24 months   NIH-Crypto       BANGLADESH                     1               11     490
21-24 months   NIH-Crypto       BANGLADESH                     2               10     490
21-24 months   NIH-Crypto       BANGLADESH                     3               20     490
21-24 months   NIH-Crypto       BANGLADESH                     4               30     490
21-24 months   NIH-Crypto       BANGLADESH                     5               62     490
21-24 months   NIH-Crypto       BANGLADESH                     6               22     490
21-24 months   NIH-Crypto       BANGLADESH                     7               37     490
21-24 months   NIH-Crypto       BANGLADESH                     8               57     490
21-24 months   NIH-Crypto       BANGLADESH                     9               62     490
21-24 months   NIH-Crypto       BANGLADESH                     10              39     490
21-24 months   NIH-Crypto       BANGLADESH                     11               0     490
21-24 months   NIH-Crypto       BANGLADESH                     12              27     490
21-24 months   NIH-Crypto       BANGLADESH                     13               0     490
21-24 months   NIH-Crypto       BANGLADESH                     14               5     490
21-24 months   NIH-Crypto       BANGLADESH                     15              10     490
21-24 months   NIH-Crypto       BANGLADESH                     16               0     490
21-24 months   NIH-Crypto       BANGLADESH                     17               4     490
21-24 months   NIH-Crypto       BANGLADESH                     18               0     490
21-24 months   NIH-Crypto       BANGLADESH                     19               0     490
21-24 months   NIH-Crypto       BANGLADESH                     20               0     490
21-24 months   NIH-Crypto       BANGLADESH                     24               0     490
21-24 months   NIH-Crypto       BANGLADESH                     25               0     490
21-24 months   NIH-Crypto       BANGLADESH                     27               0     490
21-24 months   PROBIT           BELARUS                        0                0     204
21-24 months   PROBIT           BELARUS                        1                0     204
21-24 months   PROBIT           BELARUS                        2                0     204
21-24 months   PROBIT           BELARUS                        3                0     204
21-24 months   PROBIT           BELARUS                        4                0     204
21-24 months   PROBIT           BELARUS                        5                0     204
21-24 months   PROBIT           BELARUS                        6                0     204
21-24 months   PROBIT           BELARUS                        7                0     204
21-24 months   PROBIT           BELARUS                        8                0     204
21-24 months   PROBIT           BELARUS                        9                0     204
21-24 months   PROBIT           BELARUS                        10               6     204
21-24 months   PROBIT           BELARUS                        11               0     204
21-24 months   PROBIT           BELARUS                        12              77     204
21-24 months   PROBIT           BELARUS                        13              90     204
21-24 months   PROBIT           BELARUS                        14               6     204
21-24 months   PROBIT           BELARUS                        15               0     204
21-24 months   PROBIT           BELARUS                        16              25     204
21-24 months   PROBIT           BELARUS                        17               0     204
21-24 months   PROBIT           BELARUS                        18               0     204
21-24 months   PROBIT           BELARUS                        19               0     204
21-24 months   PROBIT           BELARUS                        20               0     204
21-24 months   PROBIT           BELARUS                        24               0     204
21-24 months   PROBIT           BELARUS                        25               0     204
21-24 months   PROBIT           BELARUS                        27               0     204
21-24 months   PROVIDE          BANGLADESH                     0              145     471
21-24 months   PROVIDE          BANGLADESH                     1                9     471
21-24 months   PROVIDE          BANGLADESH                     2               15     471
21-24 months   PROVIDE          BANGLADESH                     3               19     471
21-24 months   PROVIDE          BANGLADESH                     4               34     471
21-24 months   PROVIDE          BANGLADESH                     5               48     471
21-24 months   PROVIDE          BANGLADESH                     6               19     471
21-24 months   PROVIDE          BANGLADESH                     7               28     471
21-24 months   PROVIDE          BANGLADESH                     8               43     471
21-24 months   PROVIDE          BANGLADESH                     9               42     471
21-24 months   PROVIDE          BANGLADESH                     10              20     471
21-24 months   PROVIDE          BANGLADESH                     11              20     471
21-24 months   PROVIDE          BANGLADESH                     12               2     471
21-24 months   PROVIDE          BANGLADESH                     13               0     471
21-24 months   PROVIDE          BANGLADESH                     14              14     471
21-24 months   PROVIDE          BANGLADESH                     15               5     471
21-24 months   PROVIDE          BANGLADESH                     16               7     471
21-24 months   PROVIDE          BANGLADESH                     17               0     471
21-24 months   PROVIDE          BANGLADESH                     18               0     471
21-24 months   PROVIDE          BANGLADESH                     19               1     471
21-24 months   PROVIDE          BANGLADESH                     20               0     471
21-24 months   PROVIDE          BANGLADESH                     24               0     471
21-24 months   PROVIDE          BANGLADESH                     25               0     471
21-24 months   PROVIDE          BANGLADESH                     27               0     471
21-24 months   ZVITAMBO         ZIMBABWE                       0               11    1134
21-24 months   ZVITAMBO         ZIMBABWE                       1                0    1134
21-24 months   ZVITAMBO         ZIMBABWE                       2                1    1134
21-24 months   ZVITAMBO         ZIMBABWE                       3                2    1134
21-24 months   ZVITAMBO         ZIMBABWE                       4                2    1134
21-24 months   ZVITAMBO         ZIMBABWE                       5                4    1134
21-24 months   ZVITAMBO         ZIMBABWE                       6                2    1134
21-24 months   ZVITAMBO         ZIMBABWE                       7               75    1134
21-24 months   ZVITAMBO         ZIMBABWE                       8                8    1134
21-24 months   ZVITAMBO         ZIMBABWE                       9               91    1134
21-24 months   ZVITAMBO         ZIMBABWE                       10              34    1134
21-24 months   ZVITAMBO         ZIMBABWE                       11             850    1134
21-24 months   ZVITAMBO         ZIMBABWE                       12               5    1134
21-24 months   ZVITAMBO         ZIMBABWE                       13              49    1134
21-24 months   ZVITAMBO         ZIMBABWE                       14               0    1134
21-24 months   ZVITAMBO         ZIMBABWE                       15               0    1134
21-24 months   ZVITAMBO         ZIMBABWE                       16               0    1134
21-24 months   ZVITAMBO         ZIMBABWE                       17               0    1134
21-24 months   ZVITAMBO         ZIMBABWE                       18               0    1134
21-24 months   ZVITAMBO         ZIMBABWE                       19               0    1134
21-24 months   ZVITAMBO         ZIMBABWE                       20               0    1134
21-24 months   ZVITAMBO         ZIMBABWE                       24               0    1134
21-24 months   ZVITAMBO         ZIMBABWE                       25               0    1134
21-24 months   ZVITAMBO         ZIMBABWE                       27               0    1134


The following strata were considered:

* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: COHORTS, country: INDIA
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: COHORTS, country: INDIA
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: COHORTS, country: INDIA
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: COHORTS, country: INDIA
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: COHORTS, country: INDIA
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: COHORTS, country: INDIA
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ZVITAMBO, country: ZIMBABWE


ALL STRATA DROPPED. JOB FINISHED
















