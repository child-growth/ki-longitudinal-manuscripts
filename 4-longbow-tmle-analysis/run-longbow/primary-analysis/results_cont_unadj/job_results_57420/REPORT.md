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

**Outcome Variable:** whz

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
Birth       COHORTS          GUATEMALA                      0              311     718
Birth       COHORTS          GUATEMALA                      1               36     718
Birth       COHORTS          GUATEMALA                      2              139     718
Birth       COHORTS          GUATEMALA                      3               96     718
Birth       COHORTS          GUATEMALA                      4               47     718
Birth       COHORTS          GUATEMALA                      5               16     718
Birth       COHORTS          GUATEMALA                      6               64     718
Birth       COHORTS          GUATEMALA                      7                3     718
Birth       COHORTS          GUATEMALA                      8                2     718
Birth       COHORTS          GUATEMALA                      9                1     718
Birth       COHORTS          GUATEMALA                      10               0     718
Birth       COHORTS          GUATEMALA                      11               0     718
Birth       COHORTS          GUATEMALA                      12               2     718
Birth       COHORTS          GUATEMALA                      13               0     718
Birth       COHORTS          GUATEMALA                      14               1     718
Birth       COHORTS          GUATEMALA                      15               0     718
Birth       COHORTS          GUATEMALA                      16               0     718
Birth       COHORTS          GUATEMALA                      17               0     718
Birth       COHORTS          GUATEMALA                      18               0     718
Birth       COHORTS          GUATEMALA                      19               0     718
Birth       COHORTS          GUATEMALA                      20               0     718
Birth       COHORTS          GUATEMALA                      24               0     718
Birth       COHORTS          GUATEMALA                      25               0     718
Birth       COHORTS          GUATEMALA                      27               0     718
Birth       COHORTS          INDIA                          0              110    1291
Birth       COHORTS          INDIA                          1                0    1291
Birth       COHORTS          INDIA                          2                0    1291
Birth       COHORTS          INDIA                          3              120    1291
Birth       COHORTS          INDIA                          4                0    1291
Birth       COHORTS          INDIA                          5                0    1291
Birth       COHORTS          INDIA                          6                0    1291
Birth       COHORTS          INDIA                          7                0    1291
Birth       COHORTS          INDIA                          8              184    1291
Birth       COHORTS          INDIA                          9                0    1291
Birth       COHORTS          INDIA                          10               0    1291
Birth       COHORTS          INDIA                          11               0    1291
Birth       COHORTS          INDIA                          12             370    1291
Birth       COHORTS          INDIA                          13               0    1291
Birth       COHORTS          INDIA                          14             140    1291
Birth       COHORTS          INDIA                          15             254    1291
Birth       COHORTS          INDIA                          16               0    1291
Birth       COHORTS          INDIA                          17             113    1291
Birth       COHORTS          INDIA                          18               0    1291
Birth       COHORTS          INDIA                          19               0    1291
Birth       COHORTS          INDIA                          20               0    1291
Birth       COHORTS          INDIA                          24               0    1291
Birth       COHORTS          INDIA                          25               0    1291
Birth       COHORTS          INDIA                          27               0    1291
Birth       COHORTS          PHILIPPINES                    0               54    2728
Birth       COHORTS          PHILIPPINES                    1               35    2728
Birth       COHORTS          PHILIPPINES                    2               92    2728
Birth       COHORTS          PHILIPPINES                    3              152    2728
Birth       COHORTS          PHILIPPINES                    4              248    2728
Birth       COHORTS          PHILIPPINES                    5              192    2728
Birth       COHORTS          PHILIPPINES                    6              601    2728
Birth       COHORTS          PHILIPPINES                    7              140    2728
Birth       COHORTS          PHILIPPINES                    8              220    2728
Birth       COHORTS          PHILIPPINES                    9              184    2728
Birth       COHORTS          PHILIPPINES                    10             318    2728
Birth       COHORTS          PHILIPPINES                    11              65    2728
Birth       COHORTS          PHILIPPINES                    12             176    2728
Birth       COHORTS          PHILIPPINES                    13              62    2728
Birth       COHORTS          PHILIPPINES                    14             142    2728
Birth       COHORTS          PHILIPPINES                    15              36    2728
Birth       COHORTS          PHILIPPINES                    16               7    2728
Birth       COHORTS          PHILIPPINES                    17               2    2728
Birth       COHORTS          PHILIPPINES                    18               2    2728
Birth       COHORTS          PHILIPPINES                    19               0    2728
Birth       COHORTS          PHILIPPINES                    20               0    2728
Birth       COHORTS          PHILIPPINES                    24               0    2728
Birth       COHORTS          PHILIPPINES                    25               0    2728
Birth       COHORTS          PHILIPPINES                    27               0    2728
Birth       GMS-Nepal        NEPAL                          0              266     640
Birth       GMS-Nepal        NEPAL                          1                0     640
Birth       GMS-Nepal        NEPAL                          2                0     640
Birth       GMS-Nepal        NEPAL                          3                0     640
Birth       GMS-Nepal        NEPAL                          4                0     640
Birth       GMS-Nepal        NEPAL                          5              103     640
Birth       GMS-Nepal        NEPAL                          6                0     640
Birth       GMS-Nepal        NEPAL                          7                0     640
Birth       GMS-Nepal        NEPAL                          8              109     640
Birth       GMS-Nepal        NEPAL                          9                0     640
Birth       GMS-Nepal        NEPAL                          10             124     640
Birth       GMS-Nepal        NEPAL                          11               0     640
Birth       GMS-Nepal        NEPAL                          12              38     640
Birth       GMS-Nepal        NEPAL                          13               0     640
Birth       GMS-Nepal        NEPAL                          14               0     640
Birth       GMS-Nepal        NEPAL                          15               0     640
Birth       GMS-Nepal        NEPAL                          16               0     640
Birth       GMS-Nepal        NEPAL                          17               0     640
Birth       GMS-Nepal        NEPAL                          18               0     640
Birth       GMS-Nepal        NEPAL                          19               0     640
Birth       GMS-Nepal        NEPAL                          20               0     640
Birth       GMS-Nepal        NEPAL                          24               0     640
Birth       GMS-Nepal        NEPAL                          25               0     640
Birth       GMS-Nepal        NEPAL                          27               0     640
Birth       MAL-ED           BANGLADESH                     0                0     119
Birth       MAL-ED           BANGLADESH                     1                4     119
Birth       MAL-ED           BANGLADESH                     2               10     119
Birth       MAL-ED           BANGLADESH                     3               12     119
Birth       MAL-ED           BANGLADESH                     4                7     119
Birth       MAL-ED           BANGLADESH                     5               26     119
Birth       MAL-ED           BANGLADESH                     6                7     119
Birth       MAL-ED           BANGLADESH                     7                9     119
Birth       MAL-ED           BANGLADESH                     8               16     119
Birth       MAL-ED           BANGLADESH                     9               10     119
Birth       MAL-ED           BANGLADESH                     10               9     119
Birth       MAL-ED           BANGLADESH                     11               0     119
Birth       MAL-ED           BANGLADESH                     12               7     119
Birth       MAL-ED           BANGLADESH                     13               0     119
Birth       MAL-ED           BANGLADESH                     14               0     119
Birth       MAL-ED           BANGLADESH                     15               0     119
Birth       MAL-ED           BANGLADESH                     16               2     119
Birth       MAL-ED           BANGLADESH                     17               0     119
Birth       MAL-ED           BANGLADESH                     18               0     119
Birth       MAL-ED           BANGLADESH                     19               0     119
Birth       MAL-ED           BANGLADESH                     20               0     119
Birth       MAL-ED           BANGLADESH                     24               0     119
Birth       MAL-ED           BANGLADESH                     25               0     119
Birth       MAL-ED           BANGLADESH                     27               0     119
Birth       MAL-ED           INDIA                          0                0      23
Birth       MAL-ED           INDIA                          1                0      23
Birth       MAL-ED           INDIA                          2                1      23
Birth       MAL-ED           INDIA                          3                6      23
Birth       MAL-ED           INDIA                          4                2      23
Birth       MAL-ED           INDIA                          5                4      23
Birth       MAL-ED           INDIA                          6                0      23
Birth       MAL-ED           INDIA                          7                0      23
Birth       MAL-ED           INDIA                          8                3      23
Birth       MAL-ED           INDIA                          9                5      23
Birth       MAL-ED           INDIA                          10               0      23
Birth       MAL-ED           INDIA                          11               1      23
Birth       MAL-ED           INDIA                          12               1      23
Birth       MAL-ED           INDIA                          13               0      23
Birth       MAL-ED           INDIA                          14               0      23
Birth       MAL-ED           INDIA                          15               0      23
Birth       MAL-ED           INDIA                          16               0      23
Birth       MAL-ED           INDIA                          17               0      23
Birth       MAL-ED           INDIA                          18               0      23
Birth       MAL-ED           INDIA                          19               0      23
Birth       MAL-ED           INDIA                          20               0      23
Birth       MAL-ED           INDIA                          24               0      23
Birth       MAL-ED           INDIA                          25               0      23
Birth       MAL-ED           INDIA                          27               0      23
Birth       MAL-ED           NEPAL                          0                0       9
Birth       MAL-ED           NEPAL                          1                0       9
Birth       MAL-ED           NEPAL                          2                1       9
Birth       MAL-ED           NEPAL                          3                0       9
Birth       MAL-ED           NEPAL                          4                0       9
Birth       MAL-ED           NEPAL                          5                2       9
Birth       MAL-ED           NEPAL                          6                0       9
Birth       MAL-ED           NEPAL                          7                3       9
Birth       MAL-ED           NEPAL                          8                0       9
Birth       MAL-ED           NEPAL                          9                0       9
Birth       MAL-ED           NEPAL                          10               2       9
Birth       MAL-ED           NEPAL                          11               0       9
Birth       MAL-ED           NEPAL                          12               1       9
Birth       MAL-ED           NEPAL                          13               0       9
Birth       MAL-ED           NEPAL                          14               0       9
Birth       MAL-ED           NEPAL                          15               0       9
Birth       MAL-ED           NEPAL                          16               0       9
Birth       MAL-ED           NEPAL                          17               0       9
Birth       MAL-ED           NEPAL                          18               0       9
Birth       MAL-ED           NEPAL                          19               0       9
Birth       MAL-ED           NEPAL                          20               0       9
Birth       MAL-ED           NEPAL                          24               0       9
Birth       MAL-ED           NEPAL                          25               0       9
Birth       MAL-ED           NEPAL                          27               0       9
Birth       MAL-ED           PERU                           0                1     190
Birth       MAL-ED           PERU                           1                2     190
Birth       MAL-ED           PERU                           2                0     190
Birth       MAL-ED           PERU                           3                7     190
Birth       MAL-ED           PERU                           4                3     190
Birth       MAL-ED           PERU                           5                6     190
Birth       MAL-ED           PERU                           6               21     190
Birth       MAL-ED           PERU                           7               16     190
Birth       MAL-ED           PERU                           8               20     190
Birth       MAL-ED           PERU                           9               20     190
Birth       MAL-ED           PERU                           10              10     190
Birth       MAL-ED           PERU                           11              71     190
Birth       MAL-ED           PERU                           12               1     190
Birth       MAL-ED           PERU                           13               3     190
Birth       MAL-ED           PERU                           14               3     190
Birth       MAL-ED           PERU                           15               1     190
Birth       MAL-ED           PERU                           16               1     190
Birth       MAL-ED           PERU                           17               1     190
Birth       MAL-ED           PERU                           18               1     190
Birth       MAL-ED           PERU                           19               0     190
Birth       MAL-ED           PERU                           20               2     190
Birth       MAL-ED           PERU                           24               0     190
Birth       MAL-ED           PERU                           25               0     190
Birth       MAL-ED           PERU                           27               0     190
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
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                9      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                5      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                6      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                6      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                4      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                4      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7               55      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                2      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               1      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               2      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               1      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0      96
Birth       NIH-Crypto       BANGLADESH                     0              164     707
Birth       NIH-Crypto       BANGLADESH                     1               19     707
Birth       NIH-Crypto       BANGLADESH                     2               13     707
Birth       NIH-Crypto       BANGLADESH                     3               33     707
Birth       NIH-Crypto       BANGLADESH                     4               38     707
Birth       NIH-Crypto       BANGLADESH                     5               80     707
Birth       NIH-Crypto       BANGLADESH                     6               30     707
Birth       NIH-Crypto       BANGLADESH                     7               53     707
Birth       NIH-Crypto       BANGLADESH                     8               85     707
Birth       NIH-Crypto       BANGLADESH                     9               80     707
Birth       NIH-Crypto       BANGLADESH                     10              48     707
Birth       NIH-Crypto       BANGLADESH                     11               0     707
Birth       NIH-Crypto       BANGLADESH                     12              33     707
Birth       NIH-Crypto       BANGLADESH                     13               0     707
Birth       NIH-Crypto       BANGLADESH                     14               8     707
Birth       NIH-Crypto       BANGLADESH                     15              16     707
Birth       NIH-Crypto       BANGLADESH                     16               0     707
Birth       NIH-Crypto       BANGLADESH                     17               7     707
Birth       NIH-Crypto       BANGLADESH                     18               0     707
Birth       NIH-Crypto       BANGLADESH                     19               0     707
Birth       NIH-Crypto       BANGLADESH                     20               0     707
Birth       NIH-Crypto       BANGLADESH                     24               0     707
Birth       NIH-Crypto       BANGLADESH                     25               0     707
Birth       NIH-Crypto       BANGLADESH                     27               0     707
Birth       PROBIT           BELARUS                        0                0   13350
Birth       PROBIT           BELARUS                        1                0   13350
Birth       PROBIT           BELARUS                        2                0   13350
Birth       PROBIT           BELARUS                        3                0   13350
Birth       PROBIT           BELARUS                        4                0   13350
Birth       PROBIT           BELARUS                        5                0   13350
Birth       PROBIT           BELARUS                        6                0   13350
Birth       PROBIT           BELARUS                        7                0   13350
Birth       PROBIT           BELARUS                        8               23   13350
Birth       PROBIT           BELARUS                        9                0   13350
Birth       PROBIT           BELARUS                        10             295   13350
Birth       PROBIT           BELARUS                        11               0   13350
Birth       PROBIT           BELARUS                        12            4974   13350
Birth       PROBIT           BELARUS                        13            6011   13350
Birth       PROBIT           BELARUS                        14             332   13350
Birth       PROBIT           BELARUS                        15               0   13350
Birth       PROBIT           BELARUS                        16            1715   13350
Birth       PROBIT           BELARUS                        17               0   13350
Birth       PROBIT           BELARUS                        18               0   13350
Birth       PROBIT           BELARUS                        19               0   13350
Birth       PROBIT           BELARUS                        20               0   13350
Birth       PROBIT           BELARUS                        24               0   13350
Birth       PROBIT           BELARUS                        25               0   13350
Birth       PROBIT           BELARUS                        27               0   13350
Birth       PROVIDE          BANGLADESH                     0              162     532
Birth       PROVIDE          BANGLADESH                     1                9     532
Birth       PROVIDE          BANGLADESH                     2               14     532
Birth       PROVIDE          BANGLADESH                     3               24     532
Birth       PROVIDE          BANGLADESH                     4               40     532
Birth       PROVIDE          BANGLADESH                     5               68     532
Birth       PROVIDE          BANGLADESH                     6               22     532
Birth       PROVIDE          BANGLADESH                     7               32     532
Birth       PROVIDE          BANGLADESH                     8               41     532
Birth       PROVIDE          BANGLADESH                     9               45     532
Birth       PROVIDE          BANGLADESH                     10              26     532
Birth       PROVIDE          BANGLADESH                     11              20     532
Birth       PROVIDE          BANGLADESH                     12               2     532
Birth       PROVIDE          BANGLADESH                     13               0     532
Birth       PROVIDE          BANGLADESH                     14              17     532
Birth       PROVIDE          BANGLADESH                     15               6     532
Birth       PROVIDE          BANGLADESH                     16               4     532
Birth       PROVIDE          BANGLADESH                     17               0     532
Birth       PROVIDE          BANGLADESH                     18               0     532
Birth       PROVIDE          BANGLADESH                     19               0     532
Birth       PROVIDE          BANGLADESH                     20               0     532
Birth       PROVIDE          BANGLADESH                     24               0     532
Birth       PROVIDE          BANGLADESH                     25               0     532
Birth       PROVIDE          BANGLADESH                     27               0     532
Birth       SAS-CompFeed     INDIA                          0              145    1101
Birth       SAS-CompFeed     INDIA                          1                0    1101
Birth       SAS-CompFeed     INDIA                          2                5    1101
Birth       SAS-CompFeed     INDIA                          3               11    1101
Birth       SAS-CompFeed     INDIA                          4               20    1101
Birth       SAS-CompFeed     INDIA                          5               67    1101
Birth       SAS-CompFeed     INDIA                          6               19    1101
Birth       SAS-CompFeed     INDIA                          7               85    1101
Birth       SAS-CompFeed     INDIA                          8              124    1101
Birth       SAS-CompFeed     INDIA                          9               70    1101
Birth       SAS-CompFeed     INDIA                          10             285    1101
Birth       SAS-CompFeed     INDIA                          11              32    1101
Birth       SAS-CompFeed     INDIA                          12             166    1101
Birth       SAS-CompFeed     INDIA                          13               4    1101
Birth       SAS-CompFeed     INDIA                          14               8    1101
Birth       SAS-CompFeed     INDIA                          15              38    1101
Birth       SAS-CompFeed     INDIA                          16               6    1101
Birth       SAS-CompFeed     INDIA                          17              12    1101
Birth       SAS-CompFeed     INDIA                          18               3    1101
Birth       SAS-CompFeed     INDIA                          19               1    1101
Birth       SAS-CompFeed     INDIA                          20               0    1101
Birth       SAS-CompFeed     INDIA                          24               0    1101
Birth       SAS-CompFeed     INDIA                          25               0    1101
Birth       SAS-CompFeed     INDIA                          27               0    1101
Birth       ZVITAMBO         ZIMBABWE                       0               55   12573
Birth       ZVITAMBO         ZIMBABWE                       1                1   12573
Birth       ZVITAMBO         ZIMBABWE                       2                3   12573
Birth       ZVITAMBO         ZIMBABWE                       3               14   12573
Birth       ZVITAMBO         ZIMBABWE                       4               22   12573
Birth       ZVITAMBO         ZIMBABWE                       5               28   12573
Birth       ZVITAMBO         ZIMBABWE                       6               39   12573
Birth       ZVITAMBO         ZIMBABWE                       7              716   12573
Birth       ZVITAMBO         ZIMBABWE                       8               97   12573
Birth       ZVITAMBO         ZIMBABWE                       9              825   12573
Birth       ZVITAMBO         ZIMBABWE                       10             291   12573
Birth       ZVITAMBO         ZIMBABWE                       11            9568   12573
Birth       ZVITAMBO         ZIMBABWE                       12              53   12573
Birth       ZVITAMBO         ZIMBABWE                       13             861   12573
Birth       ZVITAMBO         ZIMBABWE                       14               0   12573
Birth       ZVITAMBO         ZIMBABWE                       15               0   12573
Birth       ZVITAMBO         ZIMBABWE                       16               0   12573
Birth       ZVITAMBO         ZIMBABWE                       17               0   12573
Birth       ZVITAMBO         ZIMBABWE                       18               0   12573
Birth       ZVITAMBO         ZIMBABWE                       19               0   12573
Birth       ZVITAMBO         ZIMBABWE                       20               0   12573
Birth       ZVITAMBO         ZIMBABWE                       24               0   12573
Birth       ZVITAMBO         ZIMBABWE                       25               0   12573
Birth       ZVITAMBO         ZIMBABWE                       27               0   12573
6 months    COHORTS          GUATEMALA                      0              406     905
6 months    COHORTS          GUATEMALA                      1               45     905
6 months    COHORTS          GUATEMALA                      2              171     905
6 months    COHORTS          GUATEMALA                      3              118     905
6 months    COHORTS          GUATEMALA                      4               59     905
6 months    COHORTS          GUATEMALA                      5               16     905
6 months    COHORTS          GUATEMALA                      6               79     905
6 months    COHORTS          GUATEMALA                      7                3     905
6 months    COHORTS          GUATEMALA                      8                1     905
6 months    COHORTS          GUATEMALA                      9                0     905
6 months    COHORTS          GUATEMALA                      10               1     905
6 months    COHORTS          GUATEMALA                      11               0     905
6 months    COHORTS          GUATEMALA                      12               5     905
6 months    COHORTS          GUATEMALA                      13               0     905
6 months    COHORTS          GUATEMALA                      14               1     905
6 months    COHORTS          GUATEMALA                      15               0     905
6 months    COHORTS          GUATEMALA                      16               0     905
6 months    COHORTS          GUATEMALA                      17               0     905
6 months    COHORTS          GUATEMALA                      18               0     905
6 months    COHORTS          GUATEMALA                      19               0     905
6 months    COHORTS          GUATEMALA                      20               0     905
6 months    COHORTS          GUATEMALA                      24               0     905
6 months    COHORTS          GUATEMALA                      25               0     905
6 months    COHORTS          GUATEMALA                      27               0     905
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
6 months    COHORTS          PHILIPPINES                    0               55    2562
6 months    COHORTS          PHILIPPINES                    1               32    2562
6 months    COHORTS          PHILIPPINES                    2               87    2562
6 months    COHORTS          PHILIPPINES                    3              155    2562
6 months    COHORTS          PHILIPPINES                    4              236    2562
6 months    COHORTS          PHILIPPINES                    5              179    2562
6 months    COHORTS          PHILIPPINES                    6              595    2562
6 months    COHORTS          PHILIPPINES                    7              132    2562
6 months    COHORTS          PHILIPPINES                    8              199    2562
6 months    COHORTS          PHILIPPINES                    9              176    2562
6 months    COHORTS          PHILIPPINES                    10             291    2562
6 months    COHORTS          PHILIPPINES                    11              57    2562
6 months    COHORTS          PHILIPPINES                    12             149    2562
6 months    COHORTS          PHILIPPINES                    13              58    2562
6 months    COHORTS          PHILIPPINES                    14             120    2562
6 months    COHORTS          PHILIPPINES                    15              33    2562
6 months    COHORTS          PHILIPPINES                    16               4    2562
6 months    COHORTS          PHILIPPINES                    17               2    2562
6 months    COHORTS          PHILIPPINES                    18               2    2562
6 months    COHORTS          PHILIPPINES                    19               0    2562
6 months    COHORTS          PHILIPPINES                    20               0    2562
6 months    COHORTS          PHILIPPINES                    24               0    2562
6 months    COHORTS          PHILIPPINES                    25               0    2562
6 months    COHORTS          PHILIPPINES                    27               0    2562
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
6 months    PROBIT           BELARUS                        0                0   15207
6 months    PROBIT           BELARUS                        1                0   15207
6 months    PROBIT           BELARUS                        2                0   15207
6 months    PROBIT           BELARUS                        3                0   15207
6 months    PROBIT           BELARUS                        4                0   15207
6 months    PROBIT           BELARUS                        5                0   15207
6 months    PROBIT           BELARUS                        6                0   15207
6 months    PROBIT           BELARUS                        7                0   15207
6 months    PROBIT           BELARUS                        8               23   15207
6 months    PROBIT           BELARUS                        9                0   15207
6 months    PROBIT           BELARUS                        10             340   15207
6 months    PROBIT           BELARUS                        11               0   15207
6 months    PROBIT           BELARUS                        12            5594   15207
6 months    PROBIT           BELARUS                        13            6738   15207
6 months    PROBIT           BELARUS                        14             409   15207
6 months    PROBIT           BELARUS                        15               0   15207
6 months    PROBIT           BELARUS                        16            2103   15207
6 months    PROBIT           BELARUS                        17               0   15207
6 months    PROBIT           BELARUS                        18               0   15207
6 months    PROBIT           BELARUS                        19               0   15207
6 months    PROBIT           BELARUS                        20               0   15207
6 months    PROBIT           BELARUS                        24               0   15207
6 months    PROBIT           BELARUS                        25               0   15207
6 months    PROBIT           BELARUS                        27               0   15207
6 months    PROVIDE          BANGLADESH                     0              178     603
6 months    PROVIDE          BANGLADESH                     1               13     603
6 months    PROVIDE          BANGLADESH                     2               17     603
6 months    PROVIDE          BANGLADESH                     3               21     603
6 months    PROVIDE          BANGLADESH                     4               42     603
6 months    PROVIDE          BANGLADESH                     5               65     603
6 months    PROVIDE          BANGLADESH                     6               25     603
6 months    PROVIDE          BANGLADESH                     7               33     603
6 months    PROVIDE          BANGLADESH                     8               58     603
6 months    PROVIDE          BANGLADESH                     9               57     603
6 months    PROVIDE          BANGLADESH                     10              33     603
6 months    PROVIDE          BANGLADESH                     11              24     603
6 months    PROVIDE          BANGLADESH                     12               4     603
6 months    PROVIDE          BANGLADESH                     13               0     603
6 months    PROVIDE          BANGLADESH                     14              17     603
6 months    PROVIDE          BANGLADESH                     15               7     603
6 months    PROVIDE          BANGLADESH                     16               8     603
6 months    PROVIDE          BANGLADESH                     17               0     603
6 months    PROVIDE          BANGLADESH                     18               0     603
6 months    PROVIDE          BANGLADESH                     19               1     603
6 months    PROVIDE          BANGLADESH                     20               0     603
6 months    PROVIDE          BANGLADESH                     24               0     603
6 months    PROVIDE          BANGLADESH                     25               0     603
6 months    PROVIDE          BANGLADESH                     27               0     603
6 months    SAS-CompFeed     INDIA                          0              151    1331
6 months    SAS-CompFeed     INDIA                          1                0    1331
6 months    SAS-CompFeed     INDIA                          2                5    1331
6 months    SAS-CompFeed     INDIA                          3               13    1331
6 months    SAS-CompFeed     INDIA                          4               21    1331
6 months    SAS-CompFeed     INDIA                          5               81    1331
6 months    SAS-CompFeed     INDIA                          6               26    1331
6 months    SAS-CompFeed     INDIA                          7              102    1331
6 months    SAS-CompFeed     INDIA                          8              149    1331
6 months    SAS-CompFeed     INDIA                          9               85    1331
6 months    SAS-CompFeed     INDIA                          10             349    1331
6 months    SAS-CompFeed     INDIA                          11              37    1331
6 months    SAS-CompFeed     INDIA                          12             203    1331
6 months    SAS-CompFeed     INDIA                          13               7    1331
6 months    SAS-CompFeed     INDIA                          14              16    1331
6 months    SAS-CompFeed     INDIA                          15              57    1331
6 months    SAS-CompFeed     INDIA                          16              10    1331
6 months    SAS-CompFeed     INDIA                          17              14    1331
6 months    SAS-CompFeed     INDIA                          18               3    1331
6 months    SAS-CompFeed     INDIA                          19               1    1331
6 months    SAS-CompFeed     INDIA                          20               1    1331
6 months    SAS-CompFeed     INDIA                          24               0    1331
6 months    SAS-CompFeed     INDIA                          25               0    1331
6 months    SAS-CompFeed     INDIA                          27               0    1331
6 months    SAS-FoodSuppl    INDIA                          0              132     380
6 months    SAS-FoodSuppl    INDIA                          1                1     380
6 months    SAS-FoodSuppl    INDIA                          2               10     380
6 months    SAS-FoodSuppl    INDIA                          3                7     380
6 months    SAS-FoodSuppl    INDIA                          4               10     380
6 months    SAS-FoodSuppl    INDIA                          5               50     380
6 months    SAS-FoodSuppl    INDIA                          6               12     380
6 months    SAS-FoodSuppl    INDIA                          7               15     380
6 months    SAS-FoodSuppl    INDIA                          8               42     380
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
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                4    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                5    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             1072    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                8    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               46    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              21    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             489    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              15    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13             100    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14              12    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15              18    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16              24    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17              20    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18               4    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19               0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20               0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24              14    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25               1    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27             163    2017
6 months    ZVITAMBO         ZIMBABWE                       0               43    8266
6 months    ZVITAMBO         ZIMBABWE                       1                1    8266
6 months    ZVITAMBO         ZIMBABWE                       2                4    8266
6 months    ZVITAMBO         ZIMBABWE                       3                9    8266
6 months    ZVITAMBO         ZIMBABWE                       4               15    8266
6 months    ZVITAMBO         ZIMBABWE                       5               23    8266
6 months    ZVITAMBO         ZIMBABWE                       6               27    8266
6 months    ZVITAMBO         ZIMBABWE                       7              501    8266
6 months    ZVITAMBO         ZIMBABWE                       8               66    8266
6 months    ZVITAMBO         ZIMBABWE                       9              545    8266
6 months    ZVITAMBO         ZIMBABWE                       10             199    8266
6 months    ZVITAMBO         ZIMBABWE                       11            6264    8266
6 months    ZVITAMBO         ZIMBABWE                       12              38    8266
6 months    ZVITAMBO         ZIMBABWE                       13             531    8266
6 months    ZVITAMBO         ZIMBABWE                       14               0    8266
6 months    ZVITAMBO         ZIMBABWE                       15               0    8266
6 months    ZVITAMBO         ZIMBABWE                       16               0    8266
6 months    ZVITAMBO         ZIMBABWE                       17               0    8266
6 months    ZVITAMBO         ZIMBABWE                       18               0    8266
6 months    ZVITAMBO         ZIMBABWE                       19               0    8266
6 months    ZVITAMBO         ZIMBABWE                       20               0    8266
6 months    ZVITAMBO         ZIMBABWE                       24               0    8266
6 months    ZVITAMBO         ZIMBABWE                       25               0    8266
6 months    ZVITAMBO         ZIMBABWE                       27               0    8266
24 months   COHORTS          GUATEMALA                      0              465    1002
24 months   COHORTS          GUATEMALA                      1               58    1002
24 months   COHORTS          GUATEMALA                      2              173    1002
24 months   COHORTS          GUATEMALA                      3              128    1002
24 months   COHORTS          GUATEMALA                      4               66    1002
24 months   COHORTS          GUATEMALA                      5               24    1002
24 months   COHORTS          GUATEMALA                      6               78    1002
24 months   COHORTS          GUATEMALA                      7                2    1002
24 months   COHORTS          GUATEMALA                      8                1    1002
24 months   COHORTS          GUATEMALA                      9                0    1002
24 months   COHORTS          GUATEMALA                      10               1    1002
24 months   COHORTS          GUATEMALA                      11               0    1002
24 months   COHORTS          GUATEMALA                      12               5    1002
24 months   COHORTS          GUATEMALA                      13               0    1002
24 months   COHORTS          GUATEMALA                      14               0    1002
24 months   COHORTS          GUATEMALA                      15               1    1002
24 months   COHORTS          GUATEMALA                      16               0    1002
24 months   COHORTS          GUATEMALA                      17               0    1002
24 months   COHORTS          GUATEMALA                      18               0    1002
24 months   COHORTS          GUATEMALA                      19               0    1002
24 months   COHORTS          GUATEMALA                      20               0    1002
24 months   COHORTS          GUATEMALA                      24               0    1002
24 months   COHORTS          GUATEMALA                      25               0    1002
24 months   COHORTS          GUATEMALA                      27               0    1002
24 months   COHORTS          INDIA                          0              115    1370
24 months   COHORTS          INDIA                          1                0    1370
24 months   COHORTS          INDIA                          2                0    1370
24 months   COHORTS          INDIA                          3              128    1370
24 months   COHORTS          INDIA                          4                0    1370
24 months   COHORTS          INDIA                          5                0    1370
24 months   COHORTS          INDIA                          6                0    1370
24 months   COHORTS          INDIA                          7                0    1370
24 months   COHORTS          INDIA                          8              205    1370
24 months   COHORTS          INDIA                          9                0    1370
24 months   COHORTS          INDIA                          10               0    1370
24 months   COHORTS          INDIA                          11               0    1370
24 months   COHORTS          INDIA                          12             386    1370
24 months   COHORTS          INDIA                          13               0    1370
24 months   COHORTS          INDIA                          14             150    1370
24 months   COHORTS          INDIA                          15             272    1370
24 months   COHORTS          INDIA                          16               0    1370
24 months   COHORTS          INDIA                          17             114    1370
24 months   COHORTS          INDIA                          18               0    1370
24 months   COHORTS          INDIA                          19               0    1370
24 months   COHORTS          INDIA                          20               0    1370
24 months   COHORTS          INDIA                          24               0    1370
24 months   COHORTS          INDIA                          25               0    1370
24 months   COHORTS          INDIA                          27               0    1370
24 months   COHORTS          PHILIPPINES                    0               49    2319
24 months   COHORTS          PHILIPPINES                    1               28    2319
24 months   COHORTS          PHILIPPINES                    2               86    2319
24 months   COHORTS          PHILIPPINES                    3              139    2319
24 months   COHORTS          PHILIPPINES                    4              217    2319
24 months   COHORTS          PHILIPPINES                    5              174    2319
24 months   COHORTS          PHILIPPINES                    6              519    2319
24 months   COHORTS          PHILIPPINES                    7              121    2319
24 months   COHORTS          PHILIPPINES                    8              188    2319
24 months   COHORTS          PHILIPPINES                    9              158    2319
24 months   COHORTS          PHILIPPINES                    10             256    2319
24 months   COHORTS          PHILIPPINES                    11              58    2319
24 months   COHORTS          PHILIPPINES                    12             133    2319
24 months   COHORTS          PHILIPPINES                    13              49    2319
24 months   COHORTS          PHILIPPINES                    14             108    2319
24 months   COHORTS          PHILIPPINES                    15              31    2319
24 months   COHORTS          PHILIPPINES                    16               4    2319
24 months   COHORTS          PHILIPPINES                    17               1    2319
24 months   COHORTS          PHILIPPINES                    18               0    2319
24 months   COHORTS          PHILIPPINES                    19               0    2319
24 months   COHORTS          PHILIPPINES                    20               0    2319
24 months   COHORTS          PHILIPPINES                    24               0    2319
24 months   COHORTS          PHILIPPINES                    25               0    2319
24 months   COHORTS          PHILIPPINES                    27               0    2319
24 months   GMS-Nepal        NEPAL                          0              218     486
24 months   GMS-Nepal        NEPAL                          1                0     486
24 months   GMS-Nepal        NEPAL                          2                0     486
24 months   GMS-Nepal        NEPAL                          3                0     486
24 months   GMS-Nepal        NEPAL                          4                0     486
24 months   GMS-Nepal        NEPAL                          5               72     486
24 months   GMS-Nepal        NEPAL                          6                0     486
24 months   GMS-Nepal        NEPAL                          7                0     486
24 months   GMS-Nepal        NEPAL                          8               83     486
24 months   GMS-Nepal        NEPAL                          9                0     486
24 months   GMS-Nepal        NEPAL                          10              86     486
24 months   GMS-Nepal        NEPAL                          11               0     486
24 months   GMS-Nepal        NEPAL                          12              27     486
24 months   GMS-Nepal        NEPAL                          13               0     486
24 months   GMS-Nepal        NEPAL                          14               0     486
24 months   GMS-Nepal        NEPAL                          15               0     486
24 months   GMS-Nepal        NEPAL                          16               0     486
24 months   GMS-Nepal        NEPAL                          17               0     486
24 months   GMS-Nepal        NEPAL                          18               0     486
24 months   GMS-Nepal        NEPAL                          19               0     486
24 months   GMS-Nepal        NEPAL                          20               0     486
24 months   GMS-Nepal        NEPAL                          24               0     486
24 months   GMS-Nepal        NEPAL                          25               0     486
24 months   GMS-Nepal        NEPAL                          27               0     486
24 months   LCNI-5           MALAWI                         0              194     555
24 months   LCNI-5           MALAWI                         1               10     555
24 months   LCNI-5           MALAWI                         2               20     555
24 months   LCNI-5           MALAWI                         3               35     555
24 months   LCNI-5           MALAWI                         4               38     555
24 months   LCNI-5           MALAWI                         5               42     555
24 months   LCNI-5           MALAWI                         6               46     555
24 months   LCNI-5           MALAWI                         7               45     555
24 months   LCNI-5           MALAWI                         8               60     555
24 months   LCNI-5           MALAWI                         9                9     555
24 months   LCNI-5           MALAWI                         10              13     555
24 months   LCNI-5           MALAWI                         11               3     555
24 months   LCNI-5           MALAWI                         12              38     555
24 months   LCNI-5           MALAWI                         13               1     555
24 months   LCNI-5           MALAWI                         14               1     555
24 months   LCNI-5           MALAWI                         15               0     555
24 months   LCNI-5           MALAWI                         16               0     555
24 months   LCNI-5           MALAWI                         17               0     555
24 months   LCNI-5           MALAWI                         18               0     555
24 months   LCNI-5           MALAWI                         19               0     555
24 months   LCNI-5           MALAWI                         20               0     555
24 months   LCNI-5           MALAWI                         24               0     555
24 months   LCNI-5           MALAWI                         25               0     555
24 months   LCNI-5           MALAWI                         27               0     555
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
24 months   PROBIT           BELARUS                        0                0    3851
24 months   PROBIT           BELARUS                        1                0    3851
24 months   PROBIT           BELARUS                        2                0    3851
24 months   PROBIT           BELARUS                        3                0    3851
24 months   PROBIT           BELARUS                        4                0    3851
24 months   PROBIT           BELARUS                        5                0    3851
24 months   PROBIT           BELARUS                        6                0    3851
24 months   PROBIT           BELARUS                        7                0    3851
24 months   PROBIT           BELARUS                        8                1    3851
24 months   PROBIT           BELARUS                        9                0    3851
24 months   PROBIT           BELARUS                        10              69    3851
24 months   PROBIT           BELARUS                        11               0    3851
24 months   PROBIT           BELARUS                        12            1418    3851
24 months   PROBIT           BELARUS                        13            1743    3851
24 months   PROBIT           BELARUS                        14              97    3851
24 months   PROBIT           BELARUS                        15               0    3851
24 months   PROBIT           BELARUS                        16             523    3851
24 months   PROBIT           BELARUS                        17               0    3851
24 months   PROBIT           BELARUS                        18               0    3851
24 months   PROBIT           BELARUS                        19               0    3851
24 months   PROBIT           BELARUS                        20               0    3851
24 months   PROBIT           BELARUS                        24               0    3851
24 months   PROBIT           BELARUS                        25               0    3851
24 months   PROBIT           BELARUS                        27               0    3851
24 months   PROVIDE          BANGLADESH                     0              171     579
24 months   PROVIDE          BANGLADESH                     1               10     579
24 months   PROVIDE          BANGLADESH                     2               17     579
24 months   PROVIDE          BANGLADESH                     3               20     579
24 months   PROVIDE          BANGLADESH                     4               41     579
24 months   PROVIDE          BANGLADESH                     5               61     579
24 months   PROVIDE          BANGLADESH                     6               25     579
24 months   PROVIDE          BANGLADESH                     7               32     579
24 months   PROVIDE          BANGLADESH                     8               57     579
24 months   PROVIDE          BANGLADESH                     9               53     579
24 months   PROVIDE          BANGLADESH                     10              30     579
24 months   PROVIDE          BANGLADESH                     11              25     579
24 months   PROVIDE          BANGLADESH                     12               3     579
24 months   PROVIDE          BANGLADESH                     13               0     579
24 months   PROVIDE          BANGLADESH                     14              17     579
24 months   PROVIDE          BANGLADESH                     15               8     579
24 months   PROVIDE          BANGLADESH                     16               8     579
24 months   PROVIDE          BANGLADESH                     17               0     579
24 months   PROVIDE          BANGLADESH                     18               0     579
24 months   PROVIDE          BANGLADESH                     19               1     579
24 months   PROVIDE          BANGLADESH                     20               0     579
24 months   PROVIDE          BANGLADESH                     24               0     579
24 months   PROVIDE          BANGLADESH                     25               0     579
24 months   PROVIDE          BANGLADESH                     27               0     579
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
24 months   ZVITAMBO         ZIMBABWE                       0                8     410
24 months   ZVITAMBO         ZIMBABWE                       1                0     410
24 months   ZVITAMBO         ZIMBABWE                       2                0     410
24 months   ZVITAMBO         ZIMBABWE                       3                1     410
24 months   ZVITAMBO         ZIMBABWE                       4                1     410
24 months   ZVITAMBO         ZIMBABWE                       5                4     410
24 months   ZVITAMBO         ZIMBABWE                       6                0     410
24 months   ZVITAMBO         ZIMBABWE                       7               36     410
24 months   ZVITAMBO         ZIMBABWE                       8                4     410
24 months   ZVITAMBO         ZIMBABWE                       9               35     410
24 months   ZVITAMBO         ZIMBABWE                       10              14     410
24 months   ZVITAMBO         ZIMBABWE                       11             294     410
24 months   ZVITAMBO         ZIMBABWE                       12               0     410
24 months   ZVITAMBO         ZIMBABWE                       13              13     410
24 months   ZVITAMBO         ZIMBABWE                       14               0     410
24 months   ZVITAMBO         ZIMBABWE                       15               0     410
24 months   ZVITAMBO         ZIMBABWE                       16               0     410
24 months   ZVITAMBO         ZIMBABWE                       17               0     410
24 months   ZVITAMBO         ZIMBABWE                       18               0     410
24 months   ZVITAMBO         ZIMBABWE                       19               0     410
24 months   ZVITAMBO         ZIMBABWE                       20               0     410
24 months   ZVITAMBO         ZIMBABWE                       24               0     410
24 months   ZVITAMBO         ZIMBABWE                       25               0     410
24 months   ZVITAMBO         ZIMBABWE                       27               0     410


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
















