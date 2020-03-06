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

**Outcome Variable:** wasted

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

agecat      studyid          country                        feducyrs    wasted   n_cell       n
----------  ---------------  -----------------------------  ---------  -------  -------  ------
Birth       COHORTS          GUATEMALA                      0                0      232     718
Birth       COHORTS          GUATEMALA                      0                1       79     718
Birth       COHORTS          GUATEMALA                      1                0       28     718
Birth       COHORTS          GUATEMALA                      1                1        8     718
Birth       COHORTS          GUATEMALA                      2                0      104     718
Birth       COHORTS          GUATEMALA                      2                1       35     718
Birth       COHORTS          GUATEMALA                      3                0       78     718
Birth       COHORTS          GUATEMALA                      3                1       18     718
Birth       COHORTS          GUATEMALA                      4                0       36     718
Birth       COHORTS          GUATEMALA                      4                1       11     718
Birth       COHORTS          GUATEMALA                      5                0       11     718
Birth       COHORTS          GUATEMALA                      5                1        5     718
Birth       COHORTS          GUATEMALA                      6                0       41     718
Birth       COHORTS          GUATEMALA                      6                1       23     718
Birth       COHORTS          GUATEMALA                      7                0        2     718
Birth       COHORTS          GUATEMALA                      7                1        1     718
Birth       COHORTS          GUATEMALA                      8                0        1     718
Birth       COHORTS          GUATEMALA                      8                1        1     718
Birth       COHORTS          GUATEMALA                      9                0        1     718
Birth       COHORTS          GUATEMALA                      9                1        0     718
Birth       COHORTS          GUATEMALA                      10               0        0     718
Birth       COHORTS          GUATEMALA                      10               1        0     718
Birth       COHORTS          GUATEMALA                      11               0        0     718
Birth       COHORTS          GUATEMALA                      11               1        0     718
Birth       COHORTS          GUATEMALA                      12               0        2     718
Birth       COHORTS          GUATEMALA                      12               1        0     718
Birth       COHORTS          GUATEMALA                      13               0        0     718
Birth       COHORTS          GUATEMALA                      13               1        0     718
Birth       COHORTS          GUATEMALA                      14               0        1     718
Birth       COHORTS          GUATEMALA                      14               1        0     718
Birth       COHORTS          GUATEMALA                      15               0        0     718
Birth       COHORTS          GUATEMALA                      15               1        0     718
Birth       COHORTS          GUATEMALA                      16               0        0     718
Birth       COHORTS          GUATEMALA                      16               1        0     718
Birth       COHORTS          GUATEMALA                      17               0        0     718
Birth       COHORTS          GUATEMALA                      17               1        0     718
Birth       COHORTS          GUATEMALA                      18               0        0     718
Birth       COHORTS          GUATEMALA                      18               1        0     718
Birth       COHORTS          GUATEMALA                      19               0        0     718
Birth       COHORTS          GUATEMALA                      19               1        0     718
Birth       COHORTS          GUATEMALA                      20               0        0     718
Birth       COHORTS          GUATEMALA                      20               1        0     718
Birth       COHORTS          GUATEMALA                      24               0        0     718
Birth       COHORTS          GUATEMALA                      24               1        0     718
Birth       COHORTS          GUATEMALA                      25               0        0     718
Birth       COHORTS          GUATEMALA                      25               1        0     718
Birth       COHORTS          GUATEMALA                      27               0        0     718
Birth       COHORTS          GUATEMALA                      27               1        0     718
Birth       COHORTS          INDIA                          0                0       95    1291
Birth       COHORTS          INDIA                          0                1       15    1291
Birth       COHORTS          INDIA                          1                0        0    1291
Birth       COHORTS          INDIA                          1                1        0    1291
Birth       COHORTS          INDIA                          2                0        0    1291
Birth       COHORTS          INDIA                          2                1        0    1291
Birth       COHORTS          INDIA                          3                0      106    1291
Birth       COHORTS          INDIA                          3                1       14    1291
Birth       COHORTS          INDIA                          4                0        0    1291
Birth       COHORTS          INDIA                          4                1        0    1291
Birth       COHORTS          INDIA                          5                0        0    1291
Birth       COHORTS          INDIA                          5                1        0    1291
Birth       COHORTS          INDIA                          6                0        0    1291
Birth       COHORTS          INDIA                          6                1        0    1291
Birth       COHORTS          INDIA                          7                0        0    1291
Birth       COHORTS          INDIA                          7                1        0    1291
Birth       COHORTS          INDIA                          8                0      158    1291
Birth       COHORTS          INDIA                          8                1       26    1291
Birth       COHORTS          INDIA                          9                0        0    1291
Birth       COHORTS          INDIA                          9                1        0    1291
Birth       COHORTS          INDIA                          10               0        0    1291
Birth       COHORTS          INDIA                          10               1        0    1291
Birth       COHORTS          INDIA                          11               0        0    1291
Birth       COHORTS          INDIA                          11               1        0    1291
Birth       COHORTS          INDIA                          12               0      293    1291
Birth       COHORTS          INDIA                          12               1       77    1291
Birth       COHORTS          INDIA                          13               0        0    1291
Birth       COHORTS          INDIA                          13               1        0    1291
Birth       COHORTS          INDIA                          14               0      118    1291
Birth       COHORTS          INDIA                          14               1       22    1291
Birth       COHORTS          INDIA                          15               0      207    1291
Birth       COHORTS          INDIA                          15               1       47    1291
Birth       COHORTS          INDIA                          16               0        0    1291
Birth       COHORTS          INDIA                          16               1        0    1291
Birth       COHORTS          INDIA                          17               0       93    1291
Birth       COHORTS          INDIA                          17               1       20    1291
Birth       COHORTS          INDIA                          18               0        0    1291
Birth       COHORTS          INDIA                          18               1        0    1291
Birth       COHORTS          INDIA                          19               0        0    1291
Birth       COHORTS          INDIA                          19               1        0    1291
Birth       COHORTS          INDIA                          20               0        0    1291
Birth       COHORTS          INDIA                          20               1        0    1291
Birth       COHORTS          INDIA                          24               0        0    1291
Birth       COHORTS          INDIA                          24               1        0    1291
Birth       COHORTS          INDIA                          25               0        0    1291
Birth       COHORTS          INDIA                          25               1        0    1291
Birth       COHORTS          INDIA                          27               0        0    1291
Birth       COHORTS          INDIA                          27               1        0    1291
Birth       COHORTS          PHILIPPINES                    0                0       47    2728
Birth       COHORTS          PHILIPPINES                    0                1        7    2728
Birth       COHORTS          PHILIPPINES                    1                0       30    2728
Birth       COHORTS          PHILIPPINES                    1                1        5    2728
Birth       COHORTS          PHILIPPINES                    2                0       78    2728
Birth       COHORTS          PHILIPPINES                    2                1       14    2728
Birth       COHORTS          PHILIPPINES                    3                0      142    2728
Birth       COHORTS          PHILIPPINES                    3                1       10    2728
Birth       COHORTS          PHILIPPINES                    4                0      212    2728
Birth       COHORTS          PHILIPPINES                    4                1       36    2728
Birth       COHORTS          PHILIPPINES                    5                0      164    2728
Birth       COHORTS          PHILIPPINES                    5                1       28    2728
Birth       COHORTS          PHILIPPINES                    6                0      520    2728
Birth       COHORTS          PHILIPPINES                    6                1       81    2728
Birth       COHORTS          PHILIPPINES                    7                0      122    2728
Birth       COHORTS          PHILIPPINES                    7                1       18    2728
Birth       COHORTS          PHILIPPINES                    8                0      184    2728
Birth       COHORTS          PHILIPPINES                    8                1       36    2728
Birth       COHORTS          PHILIPPINES                    9                0      156    2728
Birth       COHORTS          PHILIPPINES                    9                1       28    2728
Birth       COHORTS          PHILIPPINES                    10               0      264    2728
Birth       COHORTS          PHILIPPINES                    10               1       54    2728
Birth       COHORTS          PHILIPPINES                    11               0       53    2728
Birth       COHORTS          PHILIPPINES                    11               1       12    2728
Birth       COHORTS          PHILIPPINES                    12               0      147    2728
Birth       COHORTS          PHILIPPINES                    12               1       29    2728
Birth       COHORTS          PHILIPPINES                    13               0       52    2728
Birth       COHORTS          PHILIPPINES                    13               1       10    2728
Birth       COHORTS          PHILIPPINES                    14               0      117    2728
Birth       COHORTS          PHILIPPINES                    14               1       25    2728
Birth       COHORTS          PHILIPPINES                    15               0       23    2728
Birth       COHORTS          PHILIPPINES                    15               1       13    2728
Birth       COHORTS          PHILIPPINES                    16               0        3    2728
Birth       COHORTS          PHILIPPINES                    16               1        4    2728
Birth       COHORTS          PHILIPPINES                    17               0        1    2728
Birth       COHORTS          PHILIPPINES                    17               1        1    2728
Birth       COHORTS          PHILIPPINES                    18               0        2    2728
Birth       COHORTS          PHILIPPINES                    18               1        0    2728
Birth       COHORTS          PHILIPPINES                    19               0        0    2728
Birth       COHORTS          PHILIPPINES                    19               1        0    2728
Birth       COHORTS          PHILIPPINES                    20               0        0    2728
Birth       COHORTS          PHILIPPINES                    20               1        0    2728
Birth       COHORTS          PHILIPPINES                    24               0        0    2728
Birth       COHORTS          PHILIPPINES                    24               1        0    2728
Birth       COHORTS          PHILIPPINES                    25               0        0    2728
Birth       COHORTS          PHILIPPINES                    25               1        0    2728
Birth       COHORTS          PHILIPPINES                    27               0        0    2728
Birth       COHORTS          PHILIPPINES                    27               1        0    2728
Birth       GMS-Nepal        NEPAL                          0                0      223     640
Birth       GMS-Nepal        NEPAL                          0                1       43     640
Birth       GMS-Nepal        NEPAL                          1                0        0     640
Birth       GMS-Nepal        NEPAL                          1                1        0     640
Birth       GMS-Nepal        NEPAL                          2                0        0     640
Birth       GMS-Nepal        NEPAL                          2                1        0     640
Birth       GMS-Nepal        NEPAL                          3                0        0     640
Birth       GMS-Nepal        NEPAL                          3                1        0     640
Birth       GMS-Nepal        NEPAL                          4                0        0     640
Birth       GMS-Nepal        NEPAL                          4                1        0     640
Birth       GMS-Nepal        NEPAL                          5                0       82     640
Birth       GMS-Nepal        NEPAL                          5                1       21     640
Birth       GMS-Nepal        NEPAL                          6                0        0     640
Birth       GMS-Nepal        NEPAL                          6                1        0     640
Birth       GMS-Nepal        NEPAL                          7                0        0     640
Birth       GMS-Nepal        NEPAL                          7                1        0     640
Birth       GMS-Nepal        NEPAL                          8                0       85     640
Birth       GMS-Nepal        NEPAL                          8                1       24     640
Birth       GMS-Nepal        NEPAL                          9                0        0     640
Birth       GMS-Nepal        NEPAL                          9                1        0     640
Birth       GMS-Nepal        NEPAL                          10               0       87     640
Birth       GMS-Nepal        NEPAL                          10               1       37     640
Birth       GMS-Nepal        NEPAL                          11               0        0     640
Birth       GMS-Nepal        NEPAL                          11               1        0     640
Birth       GMS-Nepal        NEPAL                          12               0       31     640
Birth       GMS-Nepal        NEPAL                          12               1        7     640
Birth       GMS-Nepal        NEPAL                          13               0        0     640
Birth       GMS-Nepal        NEPAL                          13               1        0     640
Birth       GMS-Nepal        NEPAL                          14               0        0     640
Birth       GMS-Nepal        NEPAL                          14               1        0     640
Birth       GMS-Nepal        NEPAL                          15               0        0     640
Birth       GMS-Nepal        NEPAL                          15               1        0     640
Birth       GMS-Nepal        NEPAL                          16               0        0     640
Birth       GMS-Nepal        NEPAL                          16               1        0     640
Birth       GMS-Nepal        NEPAL                          17               0        0     640
Birth       GMS-Nepal        NEPAL                          17               1        0     640
Birth       GMS-Nepal        NEPAL                          18               0        0     640
Birth       GMS-Nepal        NEPAL                          18               1        0     640
Birth       GMS-Nepal        NEPAL                          19               0        0     640
Birth       GMS-Nepal        NEPAL                          19               1        0     640
Birth       GMS-Nepal        NEPAL                          20               0        0     640
Birth       GMS-Nepal        NEPAL                          20               1        0     640
Birth       GMS-Nepal        NEPAL                          24               0        0     640
Birth       GMS-Nepal        NEPAL                          24               1        0     640
Birth       GMS-Nepal        NEPAL                          25               0        0     640
Birth       GMS-Nepal        NEPAL                          25               1        0     640
Birth       GMS-Nepal        NEPAL                          27               0        0     640
Birth       GMS-Nepal        NEPAL                          27               1        0     640
Birth       MAL-ED           BANGLADESH                     0                0        0     119
Birth       MAL-ED           BANGLADESH                     0                1        0     119
Birth       MAL-ED           BANGLADESH                     1                0        3     119
Birth       MAL-ED           BANGLADESH                     1                1        1     119
Birth       MAL-ED           BANGLADESH                     2                0        7     119
Birth       MAL-ED           BANGLADESH                     2                1        3     119
Birth       MAL-ED           BANGLADESH                     3                0        8     119
Birth       MAL-ED           BANGLADESH                     3                1        4     119
Birth       MAL-ED           BANGLADESH                     4                0        7     119
Birth       MAL-ED           BANGLADESH                     4                1        0     119
Birth       MAL-ED           BANGLADESH                     5                0       22     119
Birth       MAL-ED           BANGLADESH                     5                1        4     119
Birth       MAL-ED           BANGLADESH                     6                0        6     119
Birth       MAL-ED           BANGLADESH                     6                1        1     119
Birth       MAL-ED           BANGLADESH                     7                0        7     119
Birth       MAL-ED           BANGLADESH                     7                1        2     119
Birth       MAL-ED           BANGLADESH                     8                0       16     119
Birth       MAL-ED           BANGLADESH                     8                1        0     119
Birth       MAL-ED           BANGLADESH                     9                0       10     119
Birth       MAL-ED           BANGLADESH                     9                1        0     119
Birth       MAL-ED           BANGLADESH                     10               0        7     119
Birth       MAL-ED           BANGLADESH                     10               1        2     119
Birth       MAL-ED           BANGLADESH                     11               0        0     119
Birth       MAL-ED           BANGLADESH                     11               1        0     119
Birth       MAL-ED           BANGLADESH                     12               0        5     119
Birth       MAL-ED           BANGLADESH                     12               1        2     119
Birth       MAL-ED           BANGLADESH                     13               0        0     119
Birth       MAL-ED           BANGLADESH                     13               1        0     119
Birth       MAL-ED           BANGLADESH                     14               0        0     119
Birth       MAL-ED           BANGLADESH                     14               1        0     119
Birth       MAL-ED           BANGLADESH                     15               0        0     119
Birth       MAL-ED           BANGLADESH                     15               1        0     119
Birth       MAL-ED           BANGLADESH                     16               0        2     119
Birth       MAL-ED           BANGLADESH                     16               1        0     119
Birth       MAL-ED           BANGLADESH                     17               0        0     119
Birth       MAL-ED           BANGLADESH                     17               1        0     119
Birth       MAL-ED           BANGLADESH                     18               0        0     119
Birth       MAL-ED           BANGLADESH                     18               1        0     119
Birth       MAL-ED           BANGLADESH                     19               0        0     119
Birth       MAL-ED           BANGLADESH                     19               1        0     119
Birth       MAL-ED           BANGLADESH                     20               0        0     119
Birth       MAL-ED           BANGLADESH                     20               1        0     119
Birth       MAL-ED           BANGLADESH                     24               0        0     119
Birth       MAL-ED           BANGLADESH                     24               1        0     119
Birth       MAL-ED           BANGLADESH                     25               0        0     119
Birth       MAL-ED           BANGLADESH                     25               1        0     119
Birth       MAL-ED           BANGLADESH                     27               0        0     119
Birth       MAL-ED           BANGLADESH                     27               1        0     119
Birth       MAL-ED           INDIA                          0                0        0      23
Birth       MAL-ED           INDIA                          0                1        0      23
Birth       MAL-ED           INDIA                          1                0        0      23
Birth       MAL-ED           INDIA                          1                1        0      23
Birth       MAL-ED           INDIA                          2                0        1      23
Birth       MAL-ED           INDIA                          2                1        0      23
Birth       MAL-ED           INDIA                          3                0        5      23
Birth       MAL-ED           INDIA                          3                1        1      23
Birth       MAL-ED           INDIA                          4                0        1      23
Birth       MAL-ED           INDIA                          4                1        1      23
Birth       MAL-ED           INDIA                          5                0        4      23
Birth       MAL-ED           INDIA                          5                1        0      23
Birth       MAL-ED           INDIA                          6                0        0      23
Birth       MAL-ED           INDIA                          6                1        0      23
Birth       MAL-ED           INDIA                          7                0        0      23
Birth       MAL-ED           INDIA                          7                1        0      23
Birth       MAL-ED           INDIA                          8                0        3      23
Birth       MAL-ED           INDIA                          8                1        0      23
Birth       MAL-ED           INDIA                          9                0        4      23
Birth       MAL-ED           INDIA                          9                1        1      23
Birth       MAL-ED           INDIA                          10               0        0      23
Birth       MAL-ED           INDIA                          10               1        0      23
Birth       MAL-ED           INDIA                          11               0        1      23
Birth       MAL-ED           INDIA                          11               1        0      23
Birth       MAL-ED           INDIA                          12               0        1      23
Birth       MAL-ED           INDIA                          12               1        0      23
Birth       MAL-ED           INDIA                          13               0        0      23
Birth       MAL-ED           INDIA                          13               1        0      23
Birth       MAL-ED           INDIA                          14               0        0      23
Birth       MAL-ED           INDIA                          14               1        0      23
Birth       MAL-ED           INDIA                          15               0        0      23
Birth       MAL-ED           INDIA                          15               1        0      23
Birth       MAL-ED           INDIA                          16               0        0      23
Birth       MAL-ED           INDIA                          16               1        0      23
Birth       MAL-ED           INDIA                          17               0        0      23
Birth       MAL-ED           INDIA                          17               1        0      23
Birth       MAL-ED           INDIA                          18               0        0      23
Birth       MAL-ED           INDIA                          18               1        0      23
Birth       MAL-ED           INDIA                          19               0        0      23
Birth       MAL-ED           INDIA                          19               1        0      23
Birth       MAL-ED           INDIA                          20               0        0      23
Birth       MAL-ED           INDIA                          20               1        0      23
Birth       MAL-ED           INDIA                          24               0        0      23
Birth       MAL-ED           INDIA                          24               1        0      23
Birth       MAL-ED           INDIA                          25               0        0      23
Birth       MAL-ED           INDIA                          25               1        0      23
Birth       MAL-ED           INDIA                          27               0        0      23
Birth       MAL-ED           INDIA                          27               1        0      23
Birth       MAL-ED           NEPAL                          0                0        0       9
Birth       MAL-ED           NEPAL                          0                1        0       9
Birth       MAL-ED           NEPAL                          1                0        0       9
Birth       MAL-ED           NEPAL                          1                1        0       9
Birth       MAL-ED           NEPAL                          2                0        1       9
Birth       MAL-ED           NEPAL                          2                1        0       9
Birth       MAL-ED           NEPAL                          3                0        0       9
Birth       MAL-ED           NEPAL                          3                1        0       9
Birth       MAL-ED           NEPAL                          4                0        0       9
Birth       MAL-ED           NEPAL                          4                1        0       9
Birth       MAL-ED           NEPAL                          5                0        2       9
Birth       MAL-ED           NEPAL                          5                1        0       9
Birth       MAL-ED           NEPAL                          6                0        0       9
Birth       MAL-ED           NEPAL                          6                1        0       9
Birth       MAL-ED           NEPAL                          7                0        3       9
Birth       MAL-ED           NEPAL                          7                1        0       9
Birth       MAL-ED           NEPAL                          8                0        0       9
Birth       MAL-ED           NEPAL                          8                1        0       9
Birth       MAL-ED           NEPAL                          9                0        0       9
Birth       MAL-ED           NEPAL                          9                1        0       9
Birth       MAL-ED           NEPAL                          10               0        1       9
Birth       MAL-ED           NEPAL                          10               1        1       9
Birth       MAL-ED           NEPAL                          11               0        0       9
Birth       MAL-ED           NEPAL                          11               1        0       9
Birth       MAL-ED           NEPAL                          12               0        1       9
Birth       MAL-ED           NEPAL                          12               1        0       9
Birth       MAL-ED           NEPAL                          13               0        0       9
Birth       MAL-ED           NEPAL                          13               1        0       9
Birth       MAL-ED           NEPAL                          14               0        0       9
Birth       MAL-ED           NEPAL                          14               1        0       9
Birth       MAL-ED           NEPAL                          15               0        0       9
Birth       MAL-ED           NEPAL                          15               1        0       9
Birth       MAL-ED           NEPAL                          16               0        0       9
Birth       MAL-ED           NEPAL                          16               1        0       9
Birth       MAL-ED           NEPAL                          17               0        0       9
Birth       MAL-ED           NEPAL                          17               1        0       9
Birth       MAL-ED           NEPAL                          18               0        0       9
Birth       MAL-ED           NEPAL                          18               1        0       9
Birth       MAL-ED           NEPAL                          19               0        0       9
Birth       MAL-ED           NEPAL                          19               1        0       9
Birth       MAL-ED           NEPAL                          20               0        0       9
Birth       MAL-ED           NEPAL                          20               1        0       9
Birth       MAL-ED           NEPAL                          24               0        0       9
Birth       MAL-ED           NEPAL                          24               1        0       9
Birth       MAL-ED           NEPAL                          25               0        0       9
Birth       MAL-ED           NEPAL                          25               1        0       9
Birth       MAL-ED           NEPAL                          27               0        0       9
Birth       MAL-ED           NEPAL                          27               1        0       9
Birth       MAL-ED           PERU                           0                0        1     190
Birth       MAL-ED           PERU                           0                1        0     190
Birth       MAL-ED           PERU                           1                0        2     190
Birth       MAL-ED           PERU                           1                1        0     190
Birth       MAL-ED           PERU                           2                0        0     190
Birth       MAL-ED           PERU                           2                1        0     190
Birth       MAL-ED           PERU                           3                0        7     190
Birth       MAL-ED           PERU                           3                1        0     190
Birth       MAL-ED           PERU                           4                0        3     190
Birth       MAL-ED           PERU                           4                1        0     190
Birth       MAL-ED           PERU                           5                0        6     190
Birth       MAL-ED           PERU                           5                1        0     190
Birth       MAL-ED           PERU                           6                0       20     190
Birth       MAL-ED           PERU                           6                1        1     190
Birth       MAL-ED           PERU                           7                0       16     190
Birth       MAL-ED           PERU                           7                1        0     190
Birth       MAL-ED           PERU                           8                0       18     190
Birth       MAL-ED           PERU                           8                1        2     190
Birth       MAL-ED           PERU                           9                0       20     190
Birth       MAL-ED           PERU                           9                1        0     190
Birth       MAL-ED           PERU                           10               0       10     190
Birth       MAL-ED           PERU                           10               1        0     190
Birth       MAL-ED           PERU                           11               0       70     190
Birth       MAL-ED           PERU                           11               1        1     190
Birth       MAL-ED           PERU                           12               0        1     190
Birth       MAL-ED           PERU                           12               1        0     190
Birth       MAL-ED           PERU                           13               0        3     190
Birth       MAL-ED           PERU                           13               1        0     190
Birth       MAL-ED           PERU                           14               0        3     190
Birth       MAL-ED           PERU                           14               1        0     190
Birth       MAL-ED           PERU                           15               0        1     190
Birth       MAL-ED           PERU                           15               1        0     190
Birth       MAL-ED           PERU                           16               0        1     190
Birth       MAL-ED           PERU                           16               1        0     190
Birth       MAL-ED           PERU                           17               0        1     190
Birth       MAL-ED           PERU                           17               1        0     190
Birth       MAL-ED           PERU                           18               0        1     190
Birth       MAL-ED           PERU                           18               1        0     190
Birth       MAL-ED           PERU                           19               0        0     190
Birth       MAL-ED           PERU                           19               1        0     190
Birth       MAL-ED           PERU                           20               0        2     190
Birth       MAL-ED           PERU                           20               1        0     190
Birth       MAL-ED           PERU                           24               0        0     190
Birth       MAL-ED           PERU                           24               1        0     190
Birth       MAL-ED           PERU                           25               0        0     190
Birth       MAL-ED           PERU                           25               1        0     190
Birth       MAL-ED           PERU                           27               0        0     190
Birth       MAL-ED           PERU                           27               1        0     190
Birth       MAL-ED           SOUTH AFRICA                   0                0        0      33
Birth       MAL-ED           SOUTH AFRICA                   0                1        0      33
Birth       MAL-ED           SOUTH AFRICA                   1                0        0      33
Birth       MAL-ED           SOUTH AFRICA                   1                1        0      33
Birth       MAL-ED           SOUTH AFRICA                   2                0        1      33
Birth       MAL-ED           SOUTH AFRICA                   2                1        0      33
Birth       MAL-ED           SOUTH AFRICA                   3                0        0      33
Birth       MAL-ED           SOUTH AFRICA                   3                1        0      33
Birth       MAL-ED           SOUTH AFRICA                   4                0        1      33
Birth       MAL-ED           SOUTH AFRICA                   4                1        0      33
Birth       MAL-ED           SOUTH AFRICA                   5                0        1      33
Birth       MAL-ED           SOUTH AFRICA                   5                1        0      33
Birth       MAL-ED           SOUTH AFRICA                   6                0        2      33
Birth       MAL-ED           SOUTH AFRICA                   6                1        0      33
Birth       MAL-ED           SOUTH AFRICA                   7                0        1      33
Birth       MAL-ED           SOUTH AFRICA                   7                1        1      33
Birth       MAL-ED           SOUTH AFRICA                   8                0        6      33
Birth       MAL-ED           SOUTH AFRICA                   8                1        0      33
Birth       MAL-ED           SOUTH AFRICA                   9                0        1      33
Birth       MAL-ED           SOUTH AFRICA                   9                1        0      33
Birth       MAL-ED           SOUTH AFRICA                   10               0        1      33
Birth       MAL-ED           SOUTH AFRICA                   10               1        0      33
Birth       MAL-ED           SOUTH AFRICA                   11               0        8      33
Birth       MAL-ED           SOUTH AFRICA                   11               1        0      33
Birth       MAL-ED           SOUTH AFRICA                   12               0        8      33
Birth       MAL-ED           SOUTH AFRICA                   12               1        0      33
Birth       MAL-ED           SOUTH AFRICA                   13               0        0      33
Birth       MAL-ED           SOUTH AFRICA                   13               1        0      33
Birth       MAL-ED           SOUTH AFRICA                   14               0        1      33
Birth       MAL-ED           SOUTH AFRICA                   14               1        0      33
Birth       MAL-ED           SOUTH AFRICA                   15               0        0      33
Birth       MAL-ED           SOUTH AFRICA                   15               1        0      33
Birth       MAL-ED           SOUTH AFRICA                   16               0        1      33
Birth       MAL-ED           SOUTH AFRICA                   16               1        0      33
Birth       MAL-ED           SOUTH AFRICA                   17               0        0      33
Birth       MAL-ED           SOUTH AFRICA                   17               1        0      33
Birth       MAL-ED           SOUTH AFRICA                   18               0        0      33
Birth       MAL-ED           SOUTH AFRICA                   18               1        0      33
Birth       MAL-ED           SOUTH AFRICA                   19               0        0      33
Birth       MAL-ED           SOUTH AFRICA                   19               1        0      33
Birth       MAL-ED           SOUTH AFRICA                   20               0        0      33
Birth       MAL-ED           SOUTH AFRICA                   20               1        0      33
Birth       MAL-ED           SOUTH AFRICA                   24               0        0      33
Birth       MAL-ED           SOUTH AFRICA                   24               1        0      33
Birth       MAL-ED           SOUTH AFRICA                   25               0        0      33
Birth       MAL-ED           SOUTH AFRICA                   25               1        0      33
Birth       MAL-ED           SOUTH AFRICA                   27               0        0      33
Birth       MAL-ED           SOUTH AFRICA                   27               1        0      33
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        8      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        1      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                0        5      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                0        6      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                0        6      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                0        4      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                0        4      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                0       55      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                0        1      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                0        2      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               0        1      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               0        2      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               0        1      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               1        0      96
Birth       NIH-Crypto       BANGLADESH                     0                0      120     707
Birth       NIH-Crypto       BANGLADESH                     0                1       44     707
Birth       NIH-Crypto       BANGLADESH                     1                0       13     707
Birth       NIH-Crypto       BANGLADESH                     1                1        6     707
Birth       NIH-Crypto       BANGLADESH                     2                0        9     707
Birth       NIH-Crypto       BANGLADESH                     2                1        4     707
Birth       NIH-Crypto       BANGLADESH                     3                0       26     707
Birth       NIH-Crypto       BANGLADESH                     3                1        7     707
Birth       NIH-Crypto       BANGLADESH                     4                0       28     707
Birth       NIH-Crypto       BANGLADESH                     4                1       10     707
Birth       NIH-Crypto       BANGLADESH                     5                0       64     707
Birth       NIH-Crypto       BANGLADESH                     5                1       16     707
Birth       NIH-Crypto       BANGLADESH                     6                0       23     707
Birth       NIH-Crypto       BANGLADESH                     6                1        7     707
Birth       NIH-Crypto       BANGLADESH                     7                0       41     707
Birth       NIH-Crypto       BANGLADESH                     7                1       12     707
Birth       NIH-Crypto       BANGLADESH                     8                0       66     707
Birth       NIH-Crypto       BANGLADESH                     8                1       19     707
Birth       NIH-Crypto       BANGLADESH                     9                0       65     707
Birth       NIH-Crypto       BANGLADESH                     9                1       15     707
Birth       NIH-Crypto       BANGLADESH                     10               0       36     707
Birth       NIH-Crypto       BANGLADESH                     10               1       12     707
Birth       NIH-Crypto       BANGLADESH                     11               0        0     707
Birth       NIH-Crypto       BANGLADESH                     11               1        0     707
Birth       NIH-Crypto       BANGLADESH                     12               0       21     707
Birth       NIH-Crypto       BANGLADESH                     12               1       12     707
Birth       NIH-Crypto       BANGLADESH                     13               0        0     707
Birth       NIH-Crypto       BANGLADESH                     13               1        0     707
Birth       NIH-Crypto       BANGLADESH                     14               0        5     707
Birth       NIH-Crypto       BANGLADESH                     14               1        3     707
Birth       NIH-Crypto       BANGLADESH                     15               0       13     707
Birth       NIH-Crypto       BANGLADESH                     15               1        3     707
Birth       NIH-Crypto       BANGLADESH                     16               0        0     707
Birth       NIH-Crypto       BANGLADESH                     16               1        0     707
Birth       NIH-Crypto       BANGLADESH                     17               0        5     707
Birth       NIH-Crypto       BANGLADESH                     17               1        2     707
Birth       NIH-Crypto       BANGLADESH                     18               0        0     707
Birth       NIH-Crypto       BANGLADESH                     18               1        0     707
Birth       NIH-Crypto       BANGLADESH                     19               0        0     707
Birth       NIH-Crypto       BANGLADESH                     19               1        0     707
Birth       NIH-Crypto       BANGLADESH                     20               0        0     707
Birth       NIH-Crypto       BANGLADESH                     20               1        0     707
Birth       NIH-Crypto       BANGLADESH                     24               0        0     707
Birth       NIH-Crypto       BANGLADESH                     24               1        0     707
Birth       NIH-Crypto       BANGLADESH                     25               0        0     707
Birth       NIH-Crypto       BANGLADESH                     25               1        0     707
Birth       NIH-Crypto       BANGLADESH                     27               0        0     707
Birth       NIH-Crypto       BANGLADESH                     27               1        0     707
Birth       PROBIT           BELARUS                        0                0        0   13350
Birth       PROBIT           BELARUS                        0                1        0   13350
Birth       PROBIT           BELARUS                        1                0        0   13350
Birth       PROBIT           BELARUS                        1                1        0   13350
Birth       PROBIT           BELARUS                        2                0        0   13350
Birth       PROBIT           BELARUS                        2                1        0   13350
Birth       PROBIT           BELARUS                        3                0        0   13350
Birth       PROBIT           BELARUS                        3                1        0   13350
Birth       PROBIT           BELARUS                        4                0        0   13350
Birth       PROBIT           BELARUS                        4                1        0   13350
Birth       PROBIT           BELARUS                        5                0        0   13350
Birth       PROBIT           BELARUS                        5                1        0   13350
Birth       PROBIT           BELARUS                        6                0        0   13350
Birth       PROBIT           BELARUS                        6                1        0   13350
Birth       PROBIT           BELARUS                        7                0        0   13350
Birth       PROBIT           BELARUS                        7                1        0   13350
Birth       PROBIT           BELARUS                        8                0       18   13350
Birth       PROBIT           BELARUS                        8                1        5   13350
Birth       PROBIT           BELARUS                        9                0        0   13350
Birth       PROBIT           BELARUS                        9                1        0   13350
Birth       PROBIT           BELARUS                        10               0      246   13350
Birth       PROBIT           BELARUS                        10               1       49   13350
Birth       PROBIT           BELARUS                        11               0        0   13350
Birth       PROBIT           BELARUS                        11               1        0   13350
Birth       PROBIT           BELARUS                        12               0     3902   13350
Birth       PROBIT           BELARUS                        12               1     1072   13350
Birth       PROBIT           BELARUS                        13               0     4743   13350
Birth       PROBIT           BELARUS                        13               1     1268   13350
Birth       PROBIT           BELARUS                        14               0      270   13350
Birth       PROBIT           BELARUS                        14               1       62   13350
Birth       PROBIT           BELARUS                        15               0        0   13350
Birth       PROBIT           BELARUS                        15               1        0   13350
Birth       PROBIT           BELARUS                        16               0     1379   13350
Birth       PROBIT           BELARUS                        16               1      336   13350
Birth       PROBIT           BELARUS                        17               0        0   13350
Birth       PROBIT           BELARUS                        17               1        0   13350
Birth       PROBIT           BELARUS                        18               0        0   13350
Birth       PROBIT           BELARUS                        18               1        0   13350
Birth       PROBIT           BELARUS                        19               0        0   13350
Birth       PROBIT           BELARUS                        19               1        0   13350
Birth       PROBIT           BELARUS                        20               0        0   13350
Birth       PROBIT           BELARUS                        20               1        0   13350
Birth       PROBIT           BELARUS                        24               0        0   13350
Birth       PROBIT           BELARUS                        24               1        0   13350
Birth       PROBIT           BELARUS                        25               0        0   13350
Birth       PROBIT           BELARUS                        25               1        0   13350
Birth       PROBIT           BELARUS                        27               0        0   13350
Birth       PROBIT           BELARUS                        27               1        0   13350
Birth       PROVIDE          BANGLADESH                     0                0      122     532
Birth       PROVIDE          BANGLADESH                     0                1       40     532
Birth       PROVIDE          BANGLADESH                     1                0        7     532
Birth       PROVIDE          BANGLADESH                     1                1        2     532
Birth       PROVIDE          BANGLADESH                     2                0       13     532
Birth       PROVIDE          BANGLADESH                     2                1        1     532
Birth       PROVIDE          BANGLADESH                     3                0       16     532
Birth       PROVIDE          BANGLADESH                     3                1        8     532
Birth       PROVIDE          BANGLADESH                     4                0       33     532
Birth       PROVIDE          BANGLADESH                     4                1        7     532
Birth       PROVIDE          BANGLADESH                     5                0       49     532
Birth       PROVIDE          BANGLADESH                     5                1       19     532
Birth       PROVIDE          BANGLADESH                     6                0       17     532
Birth       PROVIDE          BANGLADESH                     6                1        5     532
Birth       PROVIDE          BANGLADESH                     7                0       27     532
Birth       PROVIDE          BANGLADESH                     7                1        5     532
Birth       PROVIDE          BANGLADESH                     8                0       31     532
Birth       PROVIDE          BANGLADESH                     8                1       10     532
Birth       PROVIDE          BANGLADESH                     9                0       39     532
Birth       PROVIDE          BANGLADESH                     9                1        6     532
Birth       PROVIDE          BANGLADESH                     10               0       22     532
Birth       PROVIDE          BANGLADESH                     10               1        4     532
Birth       PROVIDE          BANGLADESH                     11               0       17     532
Birth       PROVIDE          BANGLADESH                     11               1        3     532
Birth       PROVIDE          BANGLADESH                     12               0        1     532
Birth       PROVIDE          BANGLADESH                     12               1        1     532
Birth       PROVIDE          BANGLADESH                     13               0        0     532
Birth       PROVIDE          BANGLADESH                     13               1        0     532
Birth       PROVIDE          BANGLADESH                     14               0       13     532
Birth       PROVIDE          BANGLADESH                     14               1        4     532
Birth       PROVIDE          BANGLADESH                     15               0        5     532
Birth       PROVIDE          BANGLADESH                     15               1        1     532
Birth       PROVIDE          BANGLADESH                     16               0        3     532
Birth       PROVIDE          BANGLADESH                     16               1        1     532
Birth       PROVIDE          BANGLADESH                     17               0        0     532
Birth       PROVIDE          BANGLADESH                     17               1        0     532
Birth       PROVIDE          BANGLADESH                     18               0        0     532
Birth       PROVIDE          BANGLADESH                     18               1        0     532
Birth       PROVIDE          BANGLADESH                     19               0        0     532
Birth       PROVIDE          BANGLADESH                     19               1        0     532
Birth       PROVIDE          BANGLADESH                     20               0        0     532
Birth       PROVIDE          BANGLADESH                     20               1        0     532
Birth       PROVIDE          BANGLADESH                     24               0        0     532
Birth       PROVIDE          BANGLADESH                     24               1        0     532
Birth       PROVIDE          BANGLADESH                     25               0        0     532
Birth       PROVIDE          BANGLADESH                     25               1        0     532
Birth       PROVIDE          BANGLADESH                     27               0        0     532
Birth       PROVIDE          BANGLADESH                     27               1        0     532
Birth       SAS-CompFeed     INDIA                          0                0      125    1101
Birth       SAS-CompFeed     INDIA                          0                1       20    1101
Birth       SAS-CompFeed     INDIA                          1                0        0    1101
Birth       SAS-CompFeed     INDIA                          1                1        0    1101
Birth       SAS-CompFeed     INDIA                          2                0        5    1101
Birth       SAS-CompFeed     INDIA                          2                1        0    1101
Birth       SAS-CompFeed     INDIA                          3                0       10    1101
Birth       SAS-CompFeed     INDIA                          3                1        1    1101
Birth       SAS-CompFeed     INDIA                          4                0       17    1101
Birth       SAS-CompFeed     INDIA                          4                1        3    1101
Birth       SAS-CompFeed     INDIA                          5                0       55    1101
Birth       SAS-CompFeed     INDIA                          5                1       12    1101
Birth       SAS-CompFeed     INDIA                          6                0       17    1101
Birth       SAS-CompFeed     INDIA                          6                1        2    1101
Birth       SAS-CompFeed     INDIA                          7                0       77    1101
Birth       SAS-CompFeed     INDIA                          7                1        8    1101
Birth       SAS-CompFeed     INDIA                          8                0      115    1101
Birth       SAS-CompFeed     INDIA                          8                1        9    1101
Birth       SAS-CompFeed     INDIA                          9                0       65    1101
Birth       SAS-CompFeed     INDIA                          9                1        5    1101
Birth       SAS-CompFeed     INDIA                          10               0      253    1101
Birth       SAS-CompFeed     INDIA                          10               1       32    1101
Birth       SAS-CompFeed     INDIA                          11               0       30    1101
Birth       SAS-CompFeed     INDIA                          11               1        2    1101
Birth       SAS-CompFeed     INDIA                          12               0      149    1101
Birth       SAS-CompFeed     INDIA                          12               1       17    1101
Birth       SAS-CompFeed     INDIA                          13               0        4    1101
Birth       SAS-CompFeed     INDIA                          13               1        0    1101
Birth       SAS-CompFeed     INDIA                          14               0        7    1101
Birth       SAS-CompFeed     INDIA                          14               1        1    1101
Birth       SAS-CompFeed     INDIA                          15               0       33    1101
Birth       SAS-CompFeed     INDIA                          15               1        5    1101
Birth       SAS-CompFeed     INDIA                          16               0        6    1101
Birth       SAS-CompFeed     INDIA                          16               1        0    1101
Birth       SAS-CompFeed     INDIA                          17               0       11    1101
Birth       SAS-CompFeed     INDIA                          17               1        1    1101
Birth       SAS-CompFeed     INDIA                          18               0        3    1101
Birth       SAS-CompFeed     INDIA                          18               1        0    1101
Birth       SAS-CompFeed     INDIA                          19               0        1    1101
Birth       SAS-CompFeed     INDIA                          19               1        0    1101
Birth       SAS-CompFeed     INDIA                          20               0        0    1101
Birth       SAS-CompFeed     INDIA                          20               1        0    1101
Birth       SAS-CompFeed     INDIA                          24               0        0    1101
Birth       SAS-CompFeed     INDIA                          24               1        0    1101
Birth       SAS-CompFeed     INDIA                          25               0        0    1101
Birth       SAS-CompFeed     INDIA                          25               1        0    1101
Birth       SAS-CompFeed     INDIA                          27               0        0    1101
Birth       SAS-CompFeed     INDIA                          27               1        0    1101
Birth       ZVITAMBO         ZIMBABWE                       0                0       46   12573
Birth       ZVITAMBO         ZIMBABWE                       0                1        9   12573
Birth       ZVITAMBO         ZIMBABWE                       1                0        1   12573
Birth       ZVITAMBO         ZIMBABWE                       1                1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       2                0        3   12573
Birth       ZVITAMBO         ZIMBABWE                       2                1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       3                0        8   12573
Birth       ZVITAMBO         ZIMBABWE                       3                1        6   12573
Birth       ZVITAMBO         ZIMBABWE                       4                0       21   12573
Birth       ZVITAMBO         ZIMBABWE                       4                1        1   12573
Birth       ZVITAMBO         ZIMBABWE                       5                0       22   12573
Birth       ZVITAMBO         ZIMBABWE                       5                1        6   12573
Birth       ZVITAMBO         ZIMBABWE                       6                0       35   12573
Birth       ZVITAMBO         ZIMBABWE                       6                1        4   12573
Birth       ZVITAMBO         ZIMBABWE                       7                0      615   12573
Birth       ZVITAMBO         ZIMBABWE                       7                1      101   12573
Birth       ZVITAMBO         ZIMBABWE                       8                0       85   12573
Birth       ZVITAMBO         ZIMBABWE                       8                1       12   12573
Birth       ZVITAMBO         ZIMBABWE                       9                0      696   12573
Birth       ZVITAMBO         ZIMBABWE                       9                1      129   12573
Birth       ZVITAMBO         ZIMBABWE                       10               0      247   12573
Birth       ZVITAMBO         ZIMBABWE                       10               1       44   12573
Birth       ZVITAMBO         ZIMBABWE                       11               0     8051   12573
Birth       ZVITAMBO         ZIMBABWE                       11               1     1517   12573
Birth       ZVITAMBO         ZIMBABWE                       12               0       45   12573
Birth       ZVITAMBO         ZIMBABWE                       12               1        8   12573
Birth       ZVITAMBO         ZIMBABWE                       13               0      714   12573
Birth       ZVITAMBO         ZIMBABWE                       13               1      147   12573
Birth       ZVITAMBO         ZIMBABWE                       14               0        0   12573
Birth       ZVITAMBO         ZIMBABWE                       14               1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       15               0        0   12573
Birth       ZVITAMBO         ZIMBABWE                       15               1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       16               0        0   12573
Birth       ZVITAMBO         ZIMBABWE                       16               1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       17               0        0   12573
Birth       ZVITAMBO         ZIMBABWE                       17               1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       18               0        0   12573
Birth       ZVITAMBO         ZIMBABWE                       18               1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       19               0        0   12573
Birth       ZVITAMBO         ZIMBABWE                       19               1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       20               0        0   12573
Birth       ZVITAMBO         ZIMBABWE                       20               1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       24               0        0   12573
Birth       ZVITAMBO         ZIMBABWE                       24               1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       25               0        0   12573
Birth       ZVITAMBO         ZIMBABWE                       25               1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       27               0        0   12573
Birth       ZVITAMBO         ZIMBABWE                       27               1        0   12573
6 months    COHORTS          GUATEMALA                      0                0      394     905
6 months    COHORTS          GUATEMALA                      0                1       12     905
6 months    COHORTS          GUATEMALA                      1                0       40     905
6 months    COHORTS          GUATEMALA                      1                1        5     905
6 months    COHORTS          GUATEMALA                      2                0      169     905
6 months    COHORTS          GUATEMALA                      2                1        2     905
6 months    COHORTS          GUATEMALA                      3                0      113     905
6 months    COHORTS          GUATEMALA                      3                1        5     905
6 months    COHORTS          GUATEMALA                      4                0       55     905
6 months    COHORTS          GUATEMALA                      4                1        4     905
6 months    COHORTS          GUATEMALA                      5                0       16     905
6 months    COHORTS          GUATEMALA                      5                1        0     905
6 months    COHORTS          GUATEMALA                      6                0       78     905
6 months    COHORTS          GUATEMALA                      6                1        1     905
6 months    COHORTS          GUATEMALA                      7                0        3     905
6 months    COHORTS          GUATEMALA                      7                1        0     905
6 months    COHORTS          GUATEMALA                      8                0        1     905
6 months    COHORTS          GUATEMALA                      8                1        0     905
6 months    COHORTS          GUATEMALA                      9                0        0     905
6 months    COHORTS          GUATEMALA                      9                1        0     905
6 months    COHORTS          GUATEMALA                      10               0        1     905
6 months    COHORTS          GUATEMALA                      10               1        0     905
6 months    COHORTS          GUATEMALA                      11               0        0     905
6 months    COHORTS          GUATEMALA                      11               1        0     905
6 months    COHORTS          GUATEMALA                      12               0        5     905
6 months    COHORTS          GUATEMALA                      12               1        0     905
6 months    COHORTS          GUATEMALA                      13               0        0     905
6 months    COHORTS          GUATEMALA                      13               1        0     905
6 months    COHORTS          GUATEMALA                      14               0        1     905
6 months    COHORTS          GUATEMALA                      14               1        0     905
6 months    COHORTS          GUATEMALA                      15               0        0     905
6 months    COHORTS          GUATEMALA                      15               1        0     905
6 months    COHORTS          GUATEMALA                      16               0        0     905
6 months    COHORTS          GUATEMALA                      16               1        0     905
6 months    COHORTS          GUATEMALA                      17               0        0     905
6 months    COHORTS          GUATEMALA                      17               1        0     905
6 months    COHORTS          GUATEMALA                      18               0        0     905
6 months    COHORTS          GUATEMALA                      18               1        0     905
6 months    COHORTS          GUATEMALA                      19               0        0     905
6 months    COHORTS          GUATEMALA                      19               1        0     905
6 months    COHORTS          GUATEMALA                      20               0        0     905
6 months    COHORTS          GUATEMALA                      20               1        0     905
6 months    COHORTS          GUATEMALA                      24               0        0     905
6 months    COHORTS          GUATEMALA                      24               1        0     905
6 months    COHORTS          GUATEMALA                      25               0        0     905
6 months    COHORTS          GUATEMALA                      25               1        0     905
6 months    COHORTS          GUATEMALA                      27               0        0     905
6 months    COHORTS          GUATEMALA                      27               1        0     905
6 months    COHORTS          INDIA                          0                0      103    1385
6 months    COHORTS          INDIA                          0                1       16    1385
6 months    COHORTS          INDIA                          1                0        0    1385
6 months    COHORTS          INDIA                          1                1        0    1385
6 months    COHORTS          INDIA                          2                0        0    1385
6 months    COHORTS          INDIA                          2                1        0    1385
6 months    COHORTS          INDIA                          3                0      114    1385
6 months    COHORTS          INDIA                          3                1       14    1385
6 months    COHORTS          INDIA                          4                0        0    1385
6 months    COHORTS          INDIA                          4                1        0    1385
6 months    COHORTS          INDIA                          5                0        0    1385
6 months    COHORTS          INDIA                          5                1        0    1385
6 months    COHORTS          INDIA                          6                0        0    1385
6 months    COHORTS          INDIA                          6                1        0    1385
6 months    COHORTS          INDIA                          7                0        0    1385
6 months    COHORTS          INDIA                          7                1        0    1385
6 months    COHORTS          INDIA                          8                0      182    1385
6 months    COHORTS          INDIA                          8                1       21    1385
6 months    COHORTS          INDIA                          9                0        0    1385
6 months    COHORTS          INDIA                          9                1        0    1385
6 months    COHORTS          INDIA                          10               0        0    1385
6 months    COHORTS          INDIA                          10               1        0    1385
6 months    COHORTS          INDIA                          11               0        0    1385
6 months    COHORTS          INDIA                          11               1        0    1385
6 months    COHORTS          INDIA                          12               0      344    1385
6 months    COHORTS          INDIA                          12               1       47    1385
6 months    COHORTS          INDIA                          13               0        0    1385
6 months    COHORTS          INDIA                          13               1        0    1385
6 months    COHORTS          INDIA                          14               0      139    1385
6 months    COHORTS          INDIA                          14               1       13    1385
6 months    COHORTS          INDIA                          15               0      238    1385
6 months    COHORTS          INDIA                          15               1       35    1385
6 months    COHORTS          INDIA                          16               0        0    1385
6 months    COHORTS          INDIA                          16               1        0    1385
6 months    COHORTS          INDIA                          17               0      106    1385
6 months    COHORTS          INDIA                          17               1       13    1385
6 months    COHORTS          INDIA                          18               0        0    1385
6 months    COHORTS          INDIA                          18               1        0    1385
6 months    COHORTS          INDIA                          19               0        0    1385
6 months    COHORTS          INDIA                          19               1        0    1385
6 months    COHORTS          INDIA                          20               0        0    1385
6 months    COHORTS          INDIA                          20               1        0    1385
6 months    COHORTS          INDIA                          24               0        0    1385
6 months    COHORTS          INDIA                          24               1        0    1385
6 months    COHORTS          INDIA                          25               0        0    1385
6 months    COHORTS          INDIA                          25               1        0    1385
6 months    COHORTS          INDIA                          27               0        0    1385
6 months    COHORTS          INDIA                          27               1        0    1385
6 months    COHORTS          PHILIPPINES                    0                0       47    2562
6 months    COHORTS          PHILIPPINES                    0                1        8    2562
6 months    COHORTS          PHILIPPINES                    1                0       31    2562
6 months    COHORTS          PHILIPPINES                    1                1        1    2562
6 months    COHORTS          PHILIPPINES                    2                0       81    2562
6 months    COHORTS          PHILIPPINES                    2                1        6    2562
6 months    COHORTS          PHILIPPINES                    3                0      150    2562
6 months    COHORTS          PHILIPPINES                    3                1        5    2562
6 months    COHORTS          PHILIPPINES                    4                0      221    2562
6 months    COHORTS          PHILIPPINES                    4                1       15    2562
6 months    COHORTS          PHILIPPINES                    5                0      169    2562
6 months    COHORTS          PHILIPPINES                    5                1       10    2562
6 months    COHORTS          PHILIPPINES                    6                0      554    2562
6 months    COHORTS          PHILIPPINES                    6                1       41    2562
6 months    COHORTS          PHILIPPINES                    7                0      126    2562
6 months    COHORTS          PHILIPPINES                    7                1        6    2562
6 months    COHORTS          PHILIPPINES                    8                0      191    2562
6 months    COHORTS          PHILIPPINES                    8                1        8    2562
6 months    COHORTS          PHILIPPINES                    9                0      169    2562
6 months    COHORTS          PHILIPPINES                    9                1        7    2562
6 months    COHORTS          PHILIPPINES                    10               0      276    2562
6 months    COHORTS          PHILIPPINES                    10               1       15    2562
6 months    COHORTS          PHILIPPINES                    11               0       54    2562
6 months    COHORTS          PHILIPPINES                    11               1        3    2562
6 months    COHORTS          PHILIPPINES                    12               0      140    2562
6 months    COHORTS          PHILIPPINES                    12               1        9    2562
6 months    COHORTS          PHILIPPINES                    13               0       52    2562
6 months    COHORTS          PHILIPPINES                    13               1        6    2562
6 months    COHORTS          PHILIPPINES                    14               0      115    2562
6 months    COHORTS          PHILIPPINES                    14               1        5    2562
6 months    COHORTS          PHILIPPINES                    15               0       30    2562
6 months    COHORTS          PHILIPPINES                    15               1        3    2562
6 months    COHORTS          PHILIPPINES                    16               0        3    2562
6 months    COHORTS          PHILIPPINES                    16               1        1    2562
6 months    COHORTS          PHILIPPINES                    17               0        2    2562
6 months    COHORTS          PHILIPPINES                    17               1        0    2562
6 months    COHORTS          PHILIPPINES                    18               0        2    2562
6 months    COHORTS          PHILIPPINES                    18               1        0    2562
6 months    COHORTS          PHILIPPINES                    19               0        0    2562
6 months    COHORTS          PHILIPPINES                    19               1        0    2562
6 months    COHORTS          PHILIPPINES                    20               0        0    2562
6 months    COHORTS          PHILIPPINES                    20               1        0    2562
6 months    COHORTS          PHILIPPINES                    24               0        0    2562
6 months    COHORTS          PHILIPPINES                    24               1        0    2562
6 months    COHORTS          PHILIPPINES                    25               0        0    2562
6 months    COHORTS          PHILIPPINES                    25               1        0    2562
6 months    COHORTS          PHILIPPINES                    27               0        0    2562
6 months    COHORTS          PHILIPPINES                    27               1        0    2562
6 months    GMS-Nepal        NEPAL                          0                0      216     563
6 months    GMS-Nepal        NEPAL                          0                1       27     563
6 months    GMS-Nepal        NEPAL                          1                0        0     563
6 months    GMS-Nepal        NEPAL                          1                1        0     563
6 months    GMS-Nepal        NEPAL                          2                0        0     563
6 months    GMS-Nepal        NEPAL                          2                1        0     563
6 months    GMS-Nepal        NEPAL                          3                0        0     563
6 months    GMS-Nepal        NEPAL                          3                1        0     563
6 months    GMS-Nepal        NEPAL                          4                0        0     563
6 months    GMS-Nepal        NEPAL                          4                1        0     563
6 months    GMS-Nepal        NEPAL                          5                0       84     563
6 months    GMS-Nepal        NEPAL                          5                1        7     563
6 months    GMS-Nepal        NEPAL                          6                0        0     563
6 months    GMS-Nepal        NEPAL                          6                1        0     563
6 months    GMS-Nepal        NEPAL                          7                0        0     563
6 months    GMS-Nepal        NEPAL                          7                1        0     563
6 months    GMS-Nepal        NEPAL                          8                0       87     563
6 months    GMS-Nepal        NEPAL                          8                1        5     563
6 months    GMS-Nepal        NEPAL                          9                0        0     563
6 months    GMS-Nepal        NEPAL                          9                1        0     563
6 months    GMS-Nepal        NEPAL                          10               0       95     563
6 months    GMS-Nepal        NEPAL                          10               1       10     563
6 months    GMS-Nepal        NEPAL                          11               0        0     563
6 months    GMS-Nepal        NEPAL                          11               1        0     563
6 months    GMS-Nepal        NEPAL                          12               0       30     563
6 months    GMS-Nepal        NEPAL                          12               1        2     563
6 months    GMS-Nepal        NEPAL                          13               0        0     563
6 months    GMS-Nepal        NEPAL                          13               1        0     563
6 months    GMS-Nepal        NEPAL                          14               0        0     563
6 months    GMS-Nepal        NEPAL                          14               1        0     563
6 months    GMS-Nepal        NEPAL                          15               0        0     563
6 months    GMS-Nepal        NEPAL                          15               1        0     563
6 months    GMS-Nepal        NEPAL                          16               0        0     563
6 months    GMS-Nepal        NEPAL                          16               1        0     563
6 months    GMS-Nepal        NEPAL                          17               0        0     563
6 months    GMS-Nepal        NEPAL                          17               1        0     563
6 months    GMS-Nepal        NEPAL                          18               0        0     563
6 months    GMS-Nepal        NEPAL                          18               1        0     563
6 months    GMS-Nepal        NEPAL                          19               0        0     563
6 months    GMS-Nepal        NEPAL                          19               1        0     563
6 months    GMS-Nepal        NEPAL                          20               0        0     563
6 months    GMS-Nepal        NEPAL                          20               1        0     563
6 months    GMS-Nepal        NEPAL                          24               0        0     563
6 months    GMS-Nepal        NEPAL                          24               1        0     563
6 months    GMS-Nepal        NEPAL                          25               0        0     563
6 months    GMS-Nepal        NEPAL                          25               1        0     563
6 months    GMS-Nepal        NEPAL                          27               0        0     563
6 months    GMS-Nepal        NEPAL                          27               1        0     563
6 months    LCNI-5           MALAWI                         0                0      285     812
6 months    LCNI-5           MALAWI                         0                1        5     812
6 months    LCNI-5           MALAWI                         1                0       11     812
6 months    LCNI-5           MALAWI                         1                1        0     812
6 months    LCNI-5           MALAWI                         2                0       32     812
6 months    LCNI-5           MALAWI                         2                1        0     812
6 months    LCNI-5           MALAWI                         3                0       37     812
6 months    LCNI-5           MALAWI                         3                1        2     812
6 months    LCNI-5           MALAWI                         4                0       56     812
6 months    LCNI-5           MALAWI                         4                1        3     812
6 months    LCNI-5           MALAWI                         5                0       61     812
6 months    LCNI-5           MALAWI                         5                1        0     812
6 months    LCNI-5           MALAWI                         6                0       68     812
6 months    LCNI-5           MALAWI                         6                1        1     812
6 months    LCNI-5           MALAWI                         7                0       68     812
6 months    LCNI-5           MALAWI                         7                1        0     812
6 months    LCNI-5           MALAWI                         8                0       89     812
6 months    LCNI-5           MALAWI                         8                1        2     812
6 months    LCNI-5           MALAWI                         9                0       12     812
6 months    LCNI-5           MALAWI                         9                1        0     812
6 months    LCNI-5           MALAWI                         10               0       16     812
6 months    LCNI-5           MALAWI                         10               1        0     812
6 months    LCNI-5           MALAWI                         11               0        7     812
6 months    LCNI-5           MALAWI                         11               1        0     812
6 months    LCNI-5           MALAWI                         12               0       51     812
6 months    LCNI-5           MALAWI                         12               1        1     812
6 months    LCNI-5           MALAWI                         13               0        1     812
6 months    LCNI-5           MALAWI                         13               1        0     812
6 months    LCNI-5           MALAWI                         14               0        3     812
6 months    LCNI-5           MALAWI                         14               1        0     812
6 months    LCNI-5           MALAWI                         15               0        0     812
6 months    LCNI-5           MALAWI                         15               1        0     812
6 months    LCNI-5           MALAWI                         16               0        1     812
6 months    LCNI-5           MALAWI                         16               1        0     812
6 months    LCNI-5           MALAWI                         17               0        0     812
6 months    LCNI-5           MALAWI                         17               1        0     812
6 months    LCNI-5           MALAWI                         18               0        0     812
6 months    LCNI-5           MALAWI                         18               1        0     812
6 months    LCNI-5           MALAWI                         19               0        0     812
6 months    LCNI-5           MALAWI                         19               1        0     812
6 months    LCNI-5           MALAWI                         20               0        0     812
6 months    LCNI-5           MALAWI                         20               1        0     812
6 months    LCNI-5           MALAWI                         24               0        0     812
6 months    LCNI-5           MALAWI                         24               1        0     812
6 months    LCNI-5           MALAWI                         25               0        0     812
6 months    LCNI-5           MALAWI                         25               1        0     812
6 months    LCNI-5           MALAWI                         27               0        0     812
6 months    LCNI-5           MALAWI                         27               1        0     812
6 months    MAL-ED           BANGLADESH                     0                0        0     132
6 months    MAL-ED           BANGLADESH                     0                1        0     132
6 months    MAL-ED           BANGLADESH                     1                0        6     132
6 months    MAL-ED           BANGLADESH                     1                1        0     132
6 months    MAL-ED           BANGLADESH                     2                0       12     132
6 months    MAL-ED           BANGLADESH                     2                1        0     132
6 months    MAL-ED           BANGLADESH                     3                0       10     132
6 months    MAL-ED           BANGLADESH                     3                1        1     132
6 months    MAL-ED           BANGLADESH                     4                0        7     132
6 months    MAL-ED           BANGLADESH                     4                1        0     132
6 months    MAL-ED           BANGLADESH                     5                0       28     132
6 months    MAL-ED           BANGLADESH                     5                1        1     132
6 months    MAL-ED           BANGLADESH                     6                0        6     132
6 months    MAL-ED           BANGLADESH                     6                1        2     132
6 months    MAL-ED           BANGLADESH                     7                0        9     132
6 months    MAL-ED           BANGLADESH                     7                1        0     132
6 months    MAL-ED           BANGLADESH                     8                0       15     132
6 months    MAL-ED           BANGLADESH                     8                1        1     132
6 months    MAL-ED           BANGLADESH                     9                0       13     132
6 months    MAL-ED           BANGLADESH                     9                1        0     132
6 months    MAL-ED           BANGLADESH                     10               0        9     132
6 months    MAL-ED           BANGLADESH                     10               1        0     132
6 months    MAL-ED           BANGLADESH                     11               0        0     132
6 months    MAL-ED           BANGLADESH                     11               1        0     132
6 months    MAL-ED           BANGLADESH                     12               0       10     132
6 months    MAL-ED           BANGLADESH                     12               1        0     132
6 months    MAL-ED           BANGLADESH                     13               0        0     132
6 months    MAL-ED           BANGLADESH                     13               1        0     132
6 months    MAL-ED           BANGLADESH                     14               0        0     132
6 months    MAL-ED           BANGLADESH                     14               1        0     132
6 months    MAL-ED           BANGLADESH                     15               0        0     132
6 months    MAL-ED           BANGLADESH                     15               1        0     132
6 months    MAL-ED           BANGLADESH                     16               0        2     132
6 months    MAL-ED           BANGLADESH                     16               1        0     132
6 months    MAL-ED           BANGLADESH                     17               0        0     132
6 months    MAL-ED           BANGLADESH                     17               1        0     132
6 months    MAL-ED           BANGLADESH                     18               0        0     132
6 months    MAL-ED           BANGLADESH                     18               1        0     132
6 months    MAL-ED           BANGLADESH                     19               0        0     132
6 months    MAL-ED           BANGLADESH                     19               1        0     132
6 months    MAL-ED           BANGLADESH                     20               0        0     132
6 months    MAL-ED           BANGLADESH                     20               1        0     132
6 months    MAL-ED           BANGLADESH                     24               0        0     132
6 months    MAL-ED           BANGLADESH                     24               1        0     132
6 months    MAL-ED           BANGLADESH                     25               0        0     132
6 months    MAL-ED           BANGLADESH                     25               1        0     132
6 months    MAL-ED           BANGLADESH                     27               0        0     132
6 months    MAL-ED           BANGLADESH                     27               1        0     132
6 months    MAL-ED           INDIA                          0                0        0     138
6 months    MAL-ED           INDIA                          0                1        0     138
6 months    MAL-ED           INDIA                          1                0        0     138
6 months    MAL-ED           INDIA                          1                1        0     138
6 months    MAL-ED           INDIA                          2                0        6     138
6 months    MAL-ED           INDIA                          2                1        0     138
6 months    MAL-ED           INDIA                          3                0        9     138
6 months    MAL-ED           INDIA                          3                1        0     138
6 months    MAL-ED           INDIA                          4                0        6     138
6 months    MAL-ED           INDIA                          4                1        0     138
6 months    MAL-ED           INDIA                          5                0       30     138
6 months    MAL-ED           INDIA                          5                1        3     138
6 months    MAL-ED           INDIA                          6                0        9     138
6 months    MAL-ED           INDIA                          6                1        2     138
6 months    MAL-ED           INDIA                          7                0        9     138
6 months    MAL-ED           INDIA                          7                1        2     138
6 months    MAL-ED           INDIA                          8                0       16     138
6 months    MAL-ED           INDIA                          8                1        3     138
6 months    MAL-ED           INDIA                          9                0       25     138
6 months    MAL-ED           INDIA                          9                1        1     138
6 months    MAL-ED           INDIA                          10               0        6     138
6 months    MAL-ED           INDIA                          10               1        0     138
6 months    MAL-ED           INDIA                          11               0        2     138
6 months    MAL-ED           INDIA                          11               1        0     138
6 months    MAL-ED           INDIA                          12               0        3     138
6 months    MAL-ED           INDIA                          12               1        0     138
6 months    MAL-ED           INDIA                          13               0        1     138
6 months    MAL-ED           INDIA                          13               1        0     138
6 months    MAL-ED           INDIA                          14               0        2     138
6 months    MAL-ED           INDIA                          14               1        0     138
6 months    MAL-ED           INDIA                          15               0        2     138
6 months    MAL-ED           INDIA                          15               1        0     138
6 months    MAL-ED           INDIA                          16               0        0     138
6 months    MAL-ED           INDIA                          16               1        0     138
6 months    MAL-ED           INDIA                          17               0        0     138
6 months    MAL-ED           INDIA                          17               1        0     138
6 months    MAL-ED           INDIA                          18               0        1     138
6 months    MAL-ED           INDIA                          18               1        0     138
6 months    MAL-ED           INDIA                          19               0        0     138
6 months    MAL-ED           INDIA                          19               1        0     138
6 months    MAL-ED           INDIA                          20               0        0     138
6 months    MAL-ED           INDIA                          20               1        0     138
6 months    MAL-ED           INDIA                          24               0        0     138
6 months    MAL-ED           INDIA                          24               1        0     138
6 months    MAL-ED           INDIA                          25               0        0     138
6 months    MAL-ED           INDIA                          25               1        0     138
6 months    MAL-ED           INDIA                          27               0        0     138
6 months    MAL-ED           INDIA                          27               1        0     138
6 months    MAL-ED           NEPAL                          0                0        0      95
6 months    MAL-ED           NEPAL                          0                1        0      95
6 months    MAL-ED           NEPAL                          1                0        0      95
6 months    MAL-ED           NEPAL                          1                1        0      95
6 months    MAL-ED           NEPAL                          2                0        4      95
6 months    MAL-ED           NEPAL                          2                1        0      95
6 months    MAL-ED           NEPAL                          3                0        3      95
6 months    MAL-ED           NEPAL                          3                1        0      95
6 months    MAL-ED           NEPAL                          4                0       10      95
6 months    MAL-ED           NEPAL                          4                1        0      95
6 months    MAL-ED           NEPAL                          5                0        6      95
6 months    MAL-ED           NEPAL                          5                1        0      95
6 months    MAL-ED           NEPAL                          6                0        4      95
6 months    MAL-ED           NEPAL                          6                1        0      95
6 months    MAL-ED           NEPAL                          7                0        8      95
6 months    MAL-ED           NEPAL                          7                1        1      95
6 months    MAL-ED           NEPAL                          8                0       12      95
6 months    MAL-ED           NEPAL                          8                1        0      95
6 months    MAL-ED           NEPAL                          9                0        7      95
6 months    MAL-ED           NEPAL                          9                1        0      95
6 months    MAL-ED           NEPAL                          10               0       26      95
6 months    MAL-ED           NEPAL                          10               1        0      95
6 months    MAL-ED           NEPAL                          11               0        1      95
6 months    MAL-ED           NEPAL                          11               1        0      95
6 months    MAL-ED           NEPAL                          12               0        7      95
6 months    MAL-ED           NEPAL                          12               1        0      95
6 months    MAL-ED           NEPAL                          13               0        0      95
6 months    MAL-ED           NEPAL                          13               1        0      95
6 months    MAL-ED           NEPAL                          14               0        0      95
6 months    MAL-ED           NEPAL                          14               1        0      95
6 months    MAL-ED           NEPAL                          15               0        1      95
6 months    MAL-ED           NEPAL                          15               1        0      95
6 months    MAL-ED           NEPAL                          16               0        1      95
6 months    MAL-ED           NEPAL                          16               1        0      95
6 months    MAL-ED           NEPAL                          17               0        3      95
6 months    MAL-ED           NEPAL                          17               1        0      95
6 months    MAL-ED           NEPAL                          18               0        1      95
6 months    MAL-ED           NEPAL                          18               1        0      95
6 months    MAL-ED           NEPAL                          19               0        0      95
6 months    MAL-ED           NEPAL                          19               1        0      95
6 months    MAL-ED           NEPAL                          20               0        0      95
6 months    MAL-ED           NEPAL                          20               1        0      95
6 months    MAL-ED           NEPAL                          24               0        0      95
6 months    MAL-ED           NEPAL                          24               1        0      95
6 months    MAL-ED           NEPAL                          25               0        0      95
6 months    MAL-ED           NEPAL                          25               1        0      95
6 months    MAL-ED           NEPAL                          27               0        0      95
6 months    MAL-ED           NEPAL                          27               1        0      95
6 months    MAL-ED           PERU                           0                0        1     224
6 months    MAL-ED           PERU                           0                1        0     224
6 months    MAL-ED           PERU                           1                0        1     224
6 months    MAL-ED           PERU                           1                1        0     224
6 months    MAL-ED           PERU                           2                0        0     224
6 months    MAL-ED           PERU                           2                1        0     224
6 months    MAL-ED           PERU                           3                0        8     224
6 months    MAL-ED           PERU                           3                1        0     224
6 months    MAL-ED           PERU                           4                0        4     224
6 months    MAL-ED           PERU                           4                1        0     224
6 months    MAL-ED           PERU                           5                0        7     224
6 months    MAL-ED           PERU                           5                1        0     224
6 months    MAL-ED           PERU                           6                0       23     224
6 months    MAL-ED           PERU                           6                1        0     224
6 months    MAL-ED           PERU                           7                0       16     224
6 months    MAL-ED           PERU                           7                1        0     224
6 months    MAL-ED           PERU                           8                0       20     224
6 months    MAL-ED           PERU                           8                1        0     224
6 months    MAL-ED           PERU                           9                0       26     224
6 months    MAL-ED           PERU                           9                1        0     224
6 months    MAL-ED           PERU                           10               0       11     224
6 months    MAL-ED           PERU                           10               1        0     224
6 months    MAL-ED           PERU                           11               0       88     224
6 months    MAL-ED           PERU                           11               1        0     224
6 months    MAL-ED           PERU                           12               0        1     224
6 months    MAL-ED           PERU                           12               1        0     224
6 months    MAL-ED           PERU                           13               0        4     224
6 months    MAL-ED           PERU                           13               1        0     224
6 months    MAL-ED           PERU                           14               0        4     224
6 months    MAL-ED           PERU                           14               1        0     224
6 months    MAL-ED           PERU                           15               0        1     224
6 months    MAL-ED           PERU                           15               1        0     224
6 months    MAL-ED           PERU                           16               0        1     224
6 months    MAL-ED           PERU                           16               1        0     224
6 months    MAL-ED           PERU                           17               0        1     224
6 months    MAL-ED           PERU                           17               1        0     224
6 months    MAL-ED           PERU                           18               0        5     224
6 months    MAL-ED           PERU                           18               1        0     224
6 months    MAL-ED           PERU                           19               0        0     224
6 months    MAL-ED           PERU                           19               1        0     224
6 months    MAL-ED           PERU                           20               0        2     224
6 months    MAL-ED           PERU                           20               1        0     224
6 months    MAL-ED           PERU                           24               0        0     224
6 months    MAL-ED           PERU                           24               1        0     224
6 months    MAL-ED           PERU                           25               0        0     224
6 months    MAL-ED           PERU                           25               1        0     224
6 months    MAL-ED           PERU                           27               0        0     224
6 months    MAL-ED           PERU                           27               1        0     224
6 months    MAL-ED           SOUTH AFRICA                   0                0        0      92
6 months    MAL-ED           SOUTH AFRICA                   0                1        0      92
6 months    MAL-ED           SOUTH AFRICA                   1                0        0      92
6 months    MAL-ED           SOUTH AFRICA                   1                1        0      92
6 months    MAL-ED           SOUTH AFRICA                   2                0        1      92
6 months    MAL-ED           SOUTH AFRICA                   2                1        0      92
6 months    MAL-ED           SOUTH AFRICA                   3                0        0      92
6 months    MAL-ED           SOUTH AFRICA                   3                1        0      92
6 months    MAL-ED           SOUTH AFRICA                   4                0        3      92
6 months    MAL-ED           SOUTH AFRICA                   4                1        1      92
6 months    MAL-ED           SOUTH AFRICA                   5                0        1      92
6 months    MAL-ED           SOUTH AFRICA                   5                1        0      92
6 months    MAL-ED           SOUTH AFRICA                   6                0        6      92
6 months    MAL-ED           SOUTH AFRICA                   6                1        0      92
6 months    MAL-ED           SOUTH AFRICA                   7                0        5      92
6 months    MAL-ED           SOUTH AFRICA                   7                1        1      92
6 months    MAL-ED           SOUTH AFRICA                   8                0       10      92
6 months    MAL-ED           SOUTH AFRICA                   8                1        1      92
6 months    MAL-ED           SOUTH AFRICA                   9                0        6      92
6 months    MAL-ED           SOUTH AFRICA                   9                1        0      92
6 months    MAL-ED           SOUTH AFRICA                   10               0        8      92
6 months    MAL-ED           SOUTH AFRICA                   10               1        0      92
6 months    MAL-ED           SOUTH AFRICA                   11               0       16      92
6 months    MAL-ED           SOUTH AFRICA                   11               1        0      92
6 months    MAL-ED           SOUTH AFRICA                   12               0       28      92
6 months    MAL-ED           SOUTH AFRICA                   12               1        0      92
6 months    MAL-ED           SOUTH AFRICA                   13               0        0      92
6 months    MAL-ED           SOUTH AFRICA                   13               1        0      92
6 months    MAL-ED           SOUTH AFRICA                   14               0        2      92
6 months    MAL-ED           SOUTH AFRICA                   14               1        0      92
6 months    MAL-ED           SOUTH AFRICA                   15               0        2      92
6 months    MAL-ED           SOUTH AFRICA                   15               1        0      92
6 months    MAL-ED           SOUTH AFRICA                   16               0        1      92
6 months    MAL-ED           SOUTH AFRICA                   16               1        0      92
6 months    MAL-ED           SOUTH AFRICA                   17               0        0      92
6 months    MAL-ED           SOUTH AFRICA                   17               1        0      92
6 months    MAL-ED           SOUTH AFRICA                   18               0        0      92
6 months    MAL-ED           SOUTH AFRICA                   18               1        0      92
6 months    MAL-ED           SOUTH AFRICA                   19               0        0      92
6 months    MAL-ED           SOUTH AFRICA                   19               1        0      92
6 months    MAL-ED           SOUTH AFRICA                   20               0        0      92
6 months    MAL-ED           SOUTH AFRICA                   20               1        0      92
6 months    MAL-ED           SOUTH AFRICA                   24               0        0      92
6 months    MAL-ED           SOUTH AFRICA                   24               1        0      92
6 months    MAL-ED           SOUTH AFRICA                   25               0        0      92
6 months    MAL-ED           SOUTH AFRICA                   25               1        0      92
6 months    MAL-ED           SOUTH AFRICA                   27               0        0      92
6 months    MAL-ED           SOUTH AFRICA                   27               1        0      92
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0       13     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                0       12     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                0       17     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                0       13     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                0       11     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                0        8     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                0      115     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                1        1     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                0        1     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                0        2     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               0        4     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               0        3     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               0        1     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               1        0     201
6 months    NIH-Crypto       BANGLADESH                     0                0      155     715
6 months    NIH-Crypto       BANGLADESH                     0                1        8     715
6 months    NIH-Crypto       BANGLADESH                     1                0       17     715
6 months    NIH-Crypto       BANGLADESH                     1                1        1     715
6 months    NIH-Crypto       BANGLADESH                     2                0       12     715
6 months    NIH-Crypto       BANGLADESH                     2                1        0     715
6 months    NIH-Crypto       BANGLADESH                     3                0       29     715
6 months    NIH-Crypto       BANGLADESH                     3                1        1     715
6 months    NIH-Crypto       BANGLADESH                     4                0       35     715
6 months    NIH-Crypto       BANGLADESH                     4                1        2     715
6 months    NIH-Crypto       BANGLADESH                     5                0       84     715
6 months    NIH-Crypto       BANGLADESH                     5                1        3     715
6 months    NIH-Crypto       BANGLADESH                     6                0       34     715
6 months    NIH-Crypto       BANGLADESH                     6                1        1     715
6 months    NIH-Crypto       BANGLADESH                     7                0       54     715
6 months    NIH-Crypto       BANGLADESH                     7                1        0     715
6 months    NIH-Crypto       BANGLADESH                     8                0       83     715
6 months    NIH-Crypto       BANGLADESH                     8                1        3     715
6 months    NIH-Crypto       BANGLADESH                     9                0       80     715
6 months    NIH-Crypto       BANGLADESH                     9                1        1     715
6 months    NIH-Crypto       BANGLADESH                     10               0       48     715
6 months    NIH-Crypto       BANGLADESH                     10               1        1     715
6 months    NIH-Crypto       BANGLADESH                     11               0        0     715
6 months    NIH-Crypto       BANGLADESH                     11               1        0     715
6 months    NIH-Crypto       BANGLADESH                     12               0       34     715
6 months    NIH-Crypto       BANGLADESH                     12               1        0     715
6 months    NIH-Crypto       BANGLADESH                     13               0        0     715
6 months    NIH-Crypto       BANGLADESH                     13               1        0     715
6 months    NIH-Crypto       BANGLADESH                     14               0        8     715
6 months    NIH-Crypto       BANGLADESH                     14               1        0     715
6 months    NIH-Crypto       BANGLADESH                     15               0       14     715
6 months    NIH-Crypto       BANGLADESH                     15               1        0     715
6 months    NIH-Crypto       BANGLADESH                     16               0        0     715
6 months    NIH-Crypto       BANGLADESH                     16               1        0     715
6 months    NIH-Crypto       BANGLADESH                     17               0        7     715
6 months    NIH-Crypto       BANGLADESH                     17               1        0     715
6 months    NIH-Crypto       BANGLADESH                     18               0        0     715
6 months    NIH-Crypto       BANGLADESH                     18               1        0     715
6 months    NIH-Crypto       BANGLADESH                     19               0        0     715
6 months    NIH-Crypto       BANGLADESH                     19               1        0     715
6 months    NIH-Crypto       BANGLADESH                     20               0        0     715
6 months    NIH-Crypto       BANGLADESH                     20               1        0     715
6 months    NIH-Crypto       BANGLADESH                     24               0        0     715
6 months    NIH-Crypto       BANGLADESH                     24               1        0     715
6 months    NIH-Crypto       BANGLADESH                     25               0        0     715
6 months    NIH-Crypto       BANGLADESH                     25               1        0     715
6 months    NIH-Crypto       BANGLADESH                     27               0        0     715
6 months    NIH-Crypto       BANGLADESH                     27               1        0     715
6 months    PROBIT           BELARUS                        0                0        0   15207
6 months    PROBIT           BELARUS                        0                1        0   15207
6 months    PROBIT           BELARUS                        1                0        0   15207
6 months    PROBIT           BELARUS                        1                1        0   15207
6 months    PROBIT           BELARUS                        2                0        0   15207
6 months    PROBIT           BELARUS                        2                1        0   15207
6 months    PROBIT           BELARUS                        3                0        0   15207
6 months    PROBIT           BELARUS                        3                1        0   15207
6 months    PROBIT           BELARUS                        4                0        0   15207
6 months    PROBIT           BELARUS                        4                1        0   15207
6 months    PROBIT           BELARUS                        5                0        0   15207
6 months    PROBIT           BELARUS                        5                1        0   15207
6 months    PROBIT           BELARUS                        6                0        0   15207
6 months    PROBIT           BELARUS                        6                1        0   15207
6 months    PROBIT           BELARUS                        7                0        0   15207
6 months    PROBIT           BELARUS                        7                1        0   15207
6 months    PROBIT           BELARUS                        8                0       23   15207
6 months    PROBIT           BELARUS                        8                1        0   15207
6 months    PROBIT           BELARUS                        9                0        0   15207
6 months    PROBIT           BELARUS                        9                1        0   15207
6 months    PROBIT           BELARUS                        10               0      338   15207
6 months    PROBIT           BELARUS                        10               1        2   15207
6 months    PROBIT           BELARUS                        11               0        0   15207
6 months    PROBIT           BELARUS                        11               1        0   15207
6 months    PROBIT           BELARUS                        12               0     5549   15207
6 months    PROBIT           BELARUS                        12               1       45   15207
6 months    PROBIT           BELARUS                        13               0     6697   15207
6 months    PROBIT           BELARUS                        13               1       41   15207
6 months    PROBIT           BELARUS                        14               0      404   15207
6 months    PROBIT           BELARUS                        14               1        5   15207
6 months    PROBIT           BELARUS                        15               0        0   15207
6 months    PROBIT           BELARUS                        15               1        0   15207
6 months    PROBIT           BELARUS                        16               0     2091   15207
6 months    PROBIT           BELARUS                        16               1       12   15207
6 months    PROBIT           BELARUS                        17               0        0   15207
6 months    PROBIT           BELARUS                        17               1        0   15207
6 months    PROBIT           BELARUS                        18               0        0   15207
6 months    PROBIT           BELARUS                        18               1        0   15207
6 months    PROBIT           BELARUS                        19               0        0   15207
6 months    PROBIT           BELARUS                        19               1        0   15207
6 months    PROBIT           BELARUS                        20               0        0   15207
6 months    PROBIT           BELARUS                        20               1        0   15207
6 months    PROBIT           BELARUS                        24               0        0   15207
6 months    PROBIT           BELARUS                        24               1        0   15207
6 months    PROBIT           BELARUS                        25               0        0   15207
6 months    PROBIT           BELARUS                        25               1        0   15207
6 months    PROBIT           BELARUS                        27               0        0   15207
6 months    PROBIT           BELARUS                        27               1        0   15207
6 months    PROVIDE          BANGLADESH                     0                0      169     603
6 months    PROVIDE          BANGLADESH                     0                1        9     603
6 months    PROVIDE          BANGLADESH                     1                0       13     603
6 months    PROVIDE          BANGLADESH                     1                1        0     603
6 months    PROVIDE          BANGLADESH                     2                0       15     603
6 months    PROVIDE          BANGLADESH                     2                1        2     603
6 months    PROVIDE          BANGLADESH                     3                0       21     603
6 months    PROVIDE          BANGLADESH                     3                1        0     603
6 months    PROVIDE          BANGLADESH                     4                0       40     603
6 months    PROVIDE          BANGLADESH                     4                1        2     603
6 months    PROVIDE          BANGLADESH                     5                0       62     603
6 months    PROVIDE          BANGLADESH                     5                1        3     603
6 months    PROVIDE          BANGLADESH                     6                0       24     603
6 months    PROVIDE          BANGLADESH                     6                1        1     603
6 months    PROVIDE          BANGLADESH                     7                0       33     603
6 months    PROVIDE          BANGLADESH                     7                1        0     603
6 months    PROVIDE          BANGLADESH                     8                0       57     603
6 months    PROVIDE          BANGLADESH                     8                1        1     603
6 months    PROVIDE          BANGLADESH                     9                0       55     603
6 months    PROVIDE          BANGLADESH                     9                1        2     603
6 months    PROVIDE          BANGLADESH                     10               0       31     603
6 months    PROVIDE          BANGLADESH                     10               1        2     603
6 months    PROVIDE          BANGLADESH                     11               0       24     603
6 months    PROVIDE          BANGLADESH                     11               1        0     603
6 months    PROVIDE          BANGLADESH                     12               0        4     603
6 months    PROVIDE          BANGLADESH                     12               1        0     603
6 months    PROVIDE          BANGLADESH                     13               0        0     603
6 months    PROVIDE          BANGLADESH                     13               1        0     603
6 months    PROVIDE          BANGLADESH                     14               0       15     603
6 months    PROVIDE          BANGLADESH                     14               1        2     603
6 months    PROVIDE          BANGLADESH                     15               0        7     603
6 months    PROVIDE          BANGLADESH                     15               1        0     603
6 months    PROVIDE          BANGLADESH                     16               0        7     603
6 months    PROVIDE          BANGLADESH                     16               1        1     603
6 months    PROVIDE          BANGLADESH                     17               0        0     603
6 months    PROVIDE          BANGLADESH                     17               1        0     603
6 months    PROVIDE          BANGLADESH                     18               0        0     603
6 months    PROVIDE          BANGLADESH                     18               1        0     603
6 months    PROVIDE          BANGLADESH                     19               0        1     603
6 months    PROVIDE          BANGLADESH                     19               1        0     603
6 months    PROVIDE          BANGLADESH                     20               0        0     603
6 months    PROVIDE          BANGLADESH                     20               1        0     603
6 months    PROVIDE          BANGLADESH                     24               0        0     603
6 months    PROVIDE          BANGLADESH                     24               1        0     603
6 months    PROVIDE          BANGLADESH                     25               0        0     603
6 months    PROVIDE          BANGLADESH                     25               1        0     603
6 months    PROVIDE          BANGLADESH                     27               0        0     603
6 months    PROVIDE          BANGLADESH                     27               1        0     603
6 months    SAS-CompFeed     INDIA                          0                0      127    1331
6 months    SAS-CompFeed     INDIA                          0                1       24    1331
6 months    SAS-CompFeed     INDIA                          1                0        0    1331
6 months    SAS-CompFeed     INDIA                          1                1        0    1331
6 months    SAS-CompFeed     INDIA                          2                0        4    1331
6 months    SAS-CompFeed     INDIA                          2                1        1    1331
6 months    SAS-CompFeed     INDIA                          3                0       11    1331
6 months    SAS-CompFeed     INDIA                          3                1        2    1331
6 months    SAS-CompFeed     INDIA                          4                0       17    1331
6 months    SAS-CompFeed     INDIA                          4                1        4    1331
6 months    SAS-CompFeed     INDIA                          5                0       70    1331
6 months    SAS-CompFeed     INDIA                          5                1       11    1331
6 months    SAS-CompFeed     INDIA                          6                0       19    1331
6 months    SAS-CompFeed     INDIA                          6                1        7    1331
6 months    SAS-CompFeed     INDIA                          7                0       94    1331
6 months    SAS-CompFeed     INDIA                          7                1        8    1331
6 months    SAS-CompFeed     INDIA                          8                0      134    1331
6 months    SAS-CompFeed     INDIA                          8                1       15    1331
6 months    SAS-CompFeed     INDIA                          9                0       77    1331
6 months    SAS-CompFeed     INDIA                          9                1        8    1331
6 months    SAS-CompFeed     INDIA                          10               0      302    1331
6 months    SAS-CompFeed     INDIA                          10               1       47    1331
6 months    SAS-CompFeed     INDIA                          11               0       33    1331
6 months    SAS-CompFeed     INDIA                          11               1        4    1331
6 months    SAS-CompFeed     INDIA                          12               0      183    1331
6 months    SAS-CompFeed     INDIA                          12               1       20    1331
6 months    SAS-CompFeed     INDIA                          13               0        5    1331
6 months    SAS-CompFeed     INDIA                          13               1        2    1331
6 months    SAS-CompFeed     INDIA                          14               0       15    1331
6 months    SAS-CompFeed     INDIA                          14               1        1    1331
6 months    SAS-CompFeed     INDIA                          15               0       49    1331
6 months    SAS-CompFeed     INDIA                          15               1        8    1331
6 months    SAS-CompFeed     INDIA                          16               0        9    1331
6 months    SAS-CompFeed     INDIA                          16               1        1    1331
6 months    SAS-CompFeed     INDIA                          17               0       13    1331
6 months    SAS-CompFeed     INDIA                          17               1        1    1331
6 months    SAS-CompFeed     INDIA                          18               0        3    1331
6 months    SAS-CompFeed     INDIA                          18               1        0    1331
6 months    SAS-CompFeed     INDIA                          19               0        0    1331
6 months    SAS-CompFeed     INDIA                          19               1        1    1331
6 months    SAS-CompFeed     INDIA                          20               0        1    1331
6 months    SAS-CompFeed     INDIA                          20               1        0    1331
6 months    SAS-CompFeed     INDIA                          24               0        0    1331
6 months    SAS-CompFeed     INDIA                          24               1        0    1331
6 months    SAS-CompFeed     INDIA                          25               0        0    1331
6 months    SAS-CompFeed     INDIA                          25               1        0    1331
6 months    SAS-CompFeed     INDIA                          27               0        0    1331
6 months    SAS-CompFeed     INDIA                          27               1        0    1331
6 months    SAS-FoodSuppl    INDIA                          0                0      115     380
6 months    SAS-FoodSuppl    INDIA                          0                1       17     380
6 months    SAS-FoodSuppl    INDIA                          1                0        1     380
6 months    SAS-FoodSuppl    INDIA                          1                1        0     380
6 months    SAS-FoodSuppl    INDIA                          2                0        6     380
6 months    SAS-FoodSuppl    INDIA                          2                1        4     380
6 months    SAS-FoodSuppl    INDIA                          3                0        5     380
6 months    SAS-FoodSuppl    INDIA                          3                1        2     380
6 months    SAS-FoodSuppl    INDIA                          4                0        9     380
6 months    SAS-FoodSuppl    INDIA                          4                1        1     380
6 months    SAS-FoodSuppl    INDIA                          5                0       36     380
6 months    SAS-FoodSuppl    INDIA                          5                1       14     380
6 months    SAS-FoodSuppl    INDIA                          6                0        9     380
6 months    SAS-FoodSuppl    INDIA                          6                1        3     380
6 months    SAS-FoodSuppl    INDIA                          7                0       13     380
6 months    SAS-FoodSuppl    INDIA                          7                1        2     380
6 months    SAS-FoodSuppl    INDIA                          8                0       35     380
6 months    SAS-FoodSuppl    INDIA                          8                1        7     380
6 months    SAS-FoodSuppl    INDIA                          9                0       19     380
6 months    SAS-FoodSuppl    INDIA                          9                1        6     380
6 months    SAS-FoodSuppl    INDIA                          10               0       47     380
6 months    SAS-FoodSuppl    INDIA                          10               1        7     380
6 months    SAS-FoodSuppl    INDIA                          11               0        0     380
6 months    SAS-FoodSuppl    INDIA                          11               1        3     380
6 months    SAS-FoodSuppl    INDIA                          12               0       10     380
6 months    SAS-FoodSuppl    INDIA                          12               1        0     380
6 months    SAS-FoodSuppl    INDIA                          13               0        1     380
6 months    SAS-FoodSuppl    INDIA                          13               1        0     380
6 months    SAS-FoodSuppl    INDIA                          14               0        3     380
6 months    SAS-FoodSuppl    INDIA                          14               1        2     380
6 months    SAS-FoodSuppl    INDIA                          15               0        2     380
6 months    SAS-FoodSuppl    INDIA                          15               1        1     380
6 months    SAS-FoodSuppl    INDIA                          16               0        0     380
6 months    SAS-FoodSuppl    INDIA                          16               1        0     380
6 months    SAS-FoodSuppl    INDIA                          17               0        0     380
6 months    SAS-FoodSuppl    INDIA                          17               1        0     380
6 months    SAS-FoodSuppl    INDIA                          18               0        0     380
6 months    SAS-FoodSuppl    INDIA                          18               1        0     380
6 months    SAS-FoodSuppl    INDIA                          19               0        0     380
6 months    SAS-FoodSuppl    INDIA                          19               1        0     380
6 months    SAS-FoodSuppl    INDIA                          20               0        0     380
6 months    SAS-FoodSuppl    INDIA                          20               1        0     380
6 months    SAS-FoodSuppl    INDIA                          24               0        0     380
6 months    SAS-FoodSuppl    INDIA                          24               1        0     380
6 months    SAS-FoodSuppl    INDIA                          25               0        0     380
6 months    SAS-FoodSuppl    INDIA                          25               1        0     380
6 months    SAS-FoodSuppl    INDIA                          27               0        0     380
6 months    SAS-FoodSuppl    INDIA                          27               1        0     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        4    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0        5    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0        1    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0     1028    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1       44    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0        8    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0       44    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        2    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0       18    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        3    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      464    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1       25    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0       15    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13               0       97    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13               1        3    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14               0       12    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14               1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15               0       18    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15               1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16               0       23    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16               1        1    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17               0       20    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17               1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18               0        4    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18               1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19               0        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19               1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20               0        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20               1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24               0       12    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24               1        2    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25               0        1    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25               1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27               0      156    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27               1        7    2017
6 months    ZVITAMBO         ZIMBABWE                       0                0       43    8266
6 months    ZVITAMBO         ZIMBABWE                       0                1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       1                0        1    8266
6 months    ZVITAMBO         ZIMBABWE                       1                1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       2                0        4    8266
6 months    ZVITAMBO         ZIMBABWE                       2                1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       3                0        9    8266
6 months    ZVITAMBO         ZIMBABWE                       3                1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       4                0       14    8266
6 months    ZVITAMBO         ZIMBABWE                       4                1        1    8266
6 months    ZVITAMBO         ZIMBABWE                       5                0       20    8266
6 months    ZVITAMBO         ZIMBABWE                       5                1        3    8266
6 months    ZVITAMBO         ZIMBABWE                       6                0       26    8266
6 months    ZVITAMBO         ZIMBABWE                       6                1        1    8266
6 months    ZVITAMBO         ZIMBABWE                       7                0      474    8266
6 months    ZVITAMBO         ZIMBABWE                       7                1       27    8266
6 months    ZVITAMBO         ZIMBABWE                       8                0       65    8266
6 months    ZVITAMBO         ZIMBABWE                       8                1        1    8266
6 months    ZVITAMBO         ZIMBABWE                       9                0      522    8266
6 months    ZVITAMBO         ZIMBABWE                       9                1       23    8266
6 months    ZVITAMBO         ZIMBABWE                       10               0      186    8266
6 months    ZVITAMBO         ZIMBABWE                       10               1       13    8266
6 months    ZVITAMBO         ZIMBABWE                       11               0     6096    8266
6 months    ZVITAMBO         ZIMBABWE                       11               1      168    8266
6 months    ZVITAMBO         ZIMBABWE                       12               0       38    8266
6 months    ZVITAMBO         ZIMBABWE                       12               1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       13               0      514    8266
6 months    ZVITAMBO         ZIMBABWE                       13               1       17    8266
6 months    ZVITAMBO         ZIMBABWE                       14               0        0    8266
6 months    ZVITAMBO         ZIMBABWE                       14               1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       15               0        0    8266
6 months    ZVITAMBO         ZIMBABWE                       15               1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       16               0        0    8266
6 months    ZVITAMBO         ZIMBABWE                       16               1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       17               0        0    8266
6 months    ZVITAMBO         ZIMBABWE                       17               1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       18               0        0    8266
6 months    ZVITAMBO         ZIMBABWE                       18               1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       19               0        0    8266
6 months    ZVITAMBO         ZIMBABWE                       19               1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       20               0        0    8266
6 months    ZVITAMBO         ZIMBABWE                       20               1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       24               0        0    8266
6 months    ZVITAMBO         ZIMBABWE                       24               1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       25               0        0    8266
6 months    ZVITAMBO         ZIMBABWE                       25               1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       27               0        0    8266
6 months    ZVITAMBO         ZIMBABWE                       27               1        0    8266
24 months   COHORTS          GUATEMALA                      0                0      446    1002
24 months   COHORTS          GUATEMALA                      0                1       19    1002
24 months   COHORTS          GUATEMALA                      1                0       55    1002
24 months   COHORTS          GUATEMALA                      1                1        3    1002
24 months   COHORTS          GUATEMALA                      2                0      167    1002
24 months   COHORTS          GUATEMALA                      2                1        6    1002
24 months   COHORTS          GUATEMALA                      3                0      119    1002
24 months   COHORTS          GUATEMALA                      3                1        9    1002
24 months   COHORTS          GUATEMALA                      4                0       61    1002
24 months   COHORTS          GUATEMALA                      4                1        5    1002
24 months   COHORTS          GUATEMALA                      5                0       22    1002
24 months   COHORTS          GUATEMALA                      5                1        2    1002
24 months   COHORTS          GUATEMALA                      6                0       77    1002
24 months   COHORTS          GUATEMALA                      6                1        1    1002
24 months   COHORTS          GUATEMALA                      7                0        2    1002
24 months   COHORTS          GUATEMALA                      7                1        0    1002
24 months   COHORTS          GUATEMALA                      8                0        1    1002
24 months   COHORTS          GUATEMALA                      8                1        0    1002
24 months   COHORTS          GUATEMALA                      9                0        0    1002
24 months   COHORTS          GUATEMALA                      9                1        0    1002
24 months   COHORTS          GUATEMALA                      10               0        1    1002
24 months   COHORTS          GUATEMALA                      10               1        0    1002
24 months   COHORTS          GUATEMALA                      11               0        0    1002
24 months   COHORTS          GUATEMALA                      11               1        0    1002
24 months   COHORTS          GUATEMALA                      12               0        5    1002
24 months   COHORTS          GUATEMALA                      12               1        0    1002
24 months   COHORTS          GUATEMALA                      13               0        0    1002
24 months   COHORTS          GUATEMALA                      13               1        0    1002
24 months   COHORTS          GUATEMALA                      14               0        0    1002
24 months   COHORTS          GUATEMALA                      14               1        0    1002
24 months   COHORTS          GUATEMALA                      15               0        1    1002
24 months   COHORTS          GUATEMALA                      15               1        0    1002
24 months   COHORTS          GUATEMALA                      16               0        0    1002
24 months   COHORTS          GUATEMALA                      16               1        0    1002
24 months   COHORTS          GUATEMALA                      17               0        0    1002
24 months   COHORTS          GUATEMALA                      17               1        0    1002
24 months   COHORTS          GUATEMALA                      18               0        0    1002
24 months   COHORTS          GUATEMALA                      18               1        0    1002
24 months   COHORTS          GUATEMALA                      19               0        0    1002
24 months   COHORTS          GUATEMALA                      19               1        0    1002
24 months   COHORTS          GUATEMALA                      20               0        0    1002
24 months   COHORTS          GUATEMALA                      20               1        0    1002
24 months   COHORTS          GUATEMALA                      24               0        0    1002
24 months   COHORTS          GUATEMALA                      24               1        0    1002
24 months   COHORTS          GUATEMALA                      25               0        0    1002
24 months   COHORTS          GUATEMALA                      25               1        0    1002
24 months   COHORTS          GUATEMALA                      27               0        0    1002
24 months   COHORTS          GUATEMALA                      27               1        0    1002
24 months   COHORTS          INDIA                          0                0      100    1370
24 months   COHORTS          INDIA                          0                1       15    1370
24 months   COHORTS          INDIA                          1                0        0    1370
24 months   COHORTS          INDIA                          1                1        0    1370
24 months   COHORTS          INDIA                          2                0        0    1370
24 months   COHORTS          INDIA                          2                1        0    1370
24 months   COHORTS          INDIA                          3                0      111    1370
24 months   COHORTS          INDIA                          3                1       17    1370
24 months   COHORTS          INDIA                          4                0        0    1370
24 months   COHORTS          INDIA                          4                1        0    1370
24 months   COHORTS          INDIA                          5                0        0    1370
24 months   COHORTS          INDIA                          5                1        0    1370
24 months   COHORTS          INDIA                          6                0        0    1370
24 months   COHORTS          INDIA                          6                1        0    1370
24 months   COHORTS          INDIA                          7                0        0    1370
24 months   COHORTS          INDIA                          7                1        0    1370
24 months   COHORTS          INDIA                          8                0      182    1370
24 months   COHORTS          INDIA                          8                1       23    1370
24 months   COHORTS          INDIA                          9                0        0    1370
24 months   COHORTS          INDIA                          9                1        0    1370
24 months   COHORTS          INDIA                          10               0        0    1370
24 months   COHORTS          INDIA                          10               1        0    1370
24 months   COHORTS          INDIA                          11               0        0    1370
24 months   COHORTS          INDIA                          11               1        0    1370
24 months   COHORTS          INDIA                          12               0      353    1370
24 months   COHORTS          INDIA                          12               1       33    1370
24 months   COHORTS          INDIA                          13               0        0    1370
24 months   COHORTS          INDIA                          13               1        0    1370
24 months   COHORTS          INDIA                          14               0      137    1370
24 months   COHORTS          INDIA                          14               1       13    1370
24 months   COHORTS          INDIA                          15               0      258    1370
24 months   COHORTS          INDIA                          15               1       14    1370
24 months   COHORTS          INDIA                          16               0        0    1370
24 months   COHORTS          INDIA                          16               1        0    1370
24 months   COHORTS          INDIA                          17               0      109    1370
24 months   COHORTS          INDIA                          17               1        5    1370
24 months   COHORTS          INDIA                          18               0        0    1370
24 months   COHORTS          INDIA                          18               1        0    1370
24 months   COHORTS          INDIA                          19               0        0    1370
24 months   COHORTS          INDIA                          19               1        0    1370
24 months   COHORTS          INDIA                          20               0        0    1370
24 months   COHORTS          INDIA                          20               1        0    1370
24 months   COHORTS          INDIA                          24               0        0    1370
24 months   COHORTS          INDIA                          24               1        0    1370
24 months   COHORTS          INDIA                          25               0        0    1370
24 months   COHORTS          INDIA                          25               1        0    1370
24 months   COHORTS          INDIA                          27               0        0    1370
24 months   COHORTS          INDIA                          27               1        0    1370
24 months   COHORTS          PHILIPPINES                    0                0       45    2319
24 months   COHORTS          PHILIPPINES                    0                1        4    2319
24 months   COHORTS          PHILIPPINES                    1                0       23    2319
24 months   COHORTS          PHILIPPINES                    1                1        5    2319
24 months   COHORTS          PHILIPPINES                    2                0       79    2319
24 months   COHORTS          PHILIPPINES                    2                1        7    2319
24 months   COHORTS          PHILIPPINES                    3                0      128    2319
24 months   COHORTS          PHILIPPINES                    3                1       11    2319
24 months   COHORTS          PHILIPPINES                    4                0      203    2319
24 months   COHORTS          PHILIPPINES                    4                1       14    2319
24 months   COHORTS          PHILIPPINES                    5                0      164    2319
24 months   COHORTS          PHILIPPINES                    5                1       10    2319
24 months   COHORTS          PHILIPPINES                    6                0      471    2319
24 months   COHORTS          PHILIPPINES                    6                1       48    2319
24 months   COHORTS          PHILIPPINES                    7                0      109    2319
24 months   COHORTS          PHILIPPINES                    7                1       12    2319
24 months   COHORTS          PHILIPPINES                    8                0      173    2319
24 months   COHORTS          PHILIPPINES                    8                1       15    2319
24 months   COHORTS          PHILIPPINES                    9                0      154    2319
24 months   COHORTS          PHILIPPINES                    9                1        4    2319
24 months   COHORTS          PHILIPPINES                    10               0      241    2319
24 months   COHORTS          PHILIPPINES                    10               1       15    2319
24 months   COHORTS          PHILIPPINES                    11               0       57    2319
24 months   COHORTS          PHILIPPINES                    11               1        1    2319
24 months   COHORTS          PHILIPPINES                    12               0      128    2319
24 months   COHORTS          PHILIPPINES                    12               1        5    2319
24 months   COHORTS          PHILIPPINES                    13               0       48    2319
24 months   COHORTS          PHILIPPINES                    13               1        1    2319
24 months   COHORTS          PHILIPPINES                    14               0      106    2319
24 months   COHORTS          PHILIPPINES                    14               1        2    2319
24 months   COHORTS          PHILIPPINES                    15               0       30    2319
24 months   COHORTS          PHILIPPINES                    15               1        1    2319
24 months   COHORTS          PHILIPPINES                    16               0        4    2319
24 months   COHORTS          PHILIPPINES                    16               1        0    2319
24 months   COHORTS          PHILIPPINES                    17               0        1    2319
24 months   COHORTS          PHILIPPINES                    17               1        0    2319
24 months   COHORTS          PHILIPPINES                    18               0        0    2319
24 months   COHORTS          PHILIPPINES                    18               1        0    2319
24 months   COHORTS          PHILIPPINES                    19               0        0    2319
24 months   COHORTS          PHILIPPINES                    19               1        0    2319
24 months   COHORTS          PHILIPPINES                    20               0        0    2319
24 months   COHORTS          PHILIPPINES                    20               1        0    2319
24 months   COHORTS          PHILIPPINES                    24               0        0    2319
24 months   COHORTS          PHILIPPINES                    24               1        0    2319
24 months   COHORTS          PHILIPPINES                    25               0        0    2319
24 months   COHORTS          PHILIPPINES                    25               1        0    2319
24 months   COHORTS          PHILIPPINES                    27               0        0    2319
24 months   COHORTS          PHILIPPINES                    27               1        0    2319
24 months   GMS-Nepal        NEPAL                          0                0      182     486
24 months   GMS-Nepal        NEPAL                          0                1       36     486
24 months   GMS-Nepal        NEPAL                          1                0        0     486
24 months   GMS-Nepal        NEPAL                          1                1        0     486
24 months   GMS-Nepal        NEPAL                          2                0        0     486
24 months   GMS-Nepal        NEPAL                          2                1        0     486
24 months   GMS-Nepal        NEPAL                          3                0        0     486
24 months   GMS-Nepal        NEPAL                          3                1        0     486
24 months   GMS-Nepal        NEPAL                          4                0        0     486
24 months   GMS-Nepal        NEPAL                          4                1        0     486
24 months   GMS-Nepal        NEPAL                          5                0       59     486
24 months   GMS-Nepal        NEPAL                          5                1       13     486
24 months   GMS-Nepal        NEPAL                          6                0        0     486
24 months   GMS-Nepal        NEPAL                          6                1        0     486
24 months   GMS-Nepal        NEPAL                          7                0        0     486
24 months   GMS-Nepal        NEPAL                          7                1        0     486
24 months   GMS-Nepal        NEPAL                          8                0       69     486
24 months   GMS-Nepal        NEPAL                          8                1       14     486
24 months   GMS-Nepal        NEPAL                          9                0        0     486
24 months   GMS-Nepal        NEPAL                          9                1        0     486
24 months   GMS-Nepal        NEPAL                          10               0       65     486
24 months   GMS-Nepal        NEPAL                          10               1       21     486
24 months   GMS-Nepal        NEPAL                          11               0        0     486
24 months   GMS-Nepal        NEPAL                          11               1        0     486
24 months   GMS-Nepal        NEPAL                          12               0       21     486
24 months   GMS-Nepal        NEPAL                          12               1        6     486
24 months   GMS-Nepal        NEPAL                          13               0        0     486
24 months   GMS-Nepal        NEPAL                          13               1        0     486
24 months   GMS-Nepal        NEPAL                          14               0        0     486
24 months   GMS-Nepal        NEPAL                          14               1        0     486
24 months   GMS-Nepal        NEPAL                          15               0        0     486
24 months   GMS-Nepal        NEPAL                          15               1        0     486
24 months   GMS-Nepal        NEPAL                          16               0        0     486
24 months   GMS-Nepal        NEPAL                          16               1        0     486
24 months   GMS-Nepal        NEPAL                          17               0        0     486
24 months   GMS-Nepal        NEPAL                          17               1        0     486
24 months   GMS-Nepal        NEPAL                          18               0        0     486
24 months   GMS-Nepal        NEPAL                          18               1        0     486
24 months   GMS-Nepal        NEPAL                          19               0        0     486
24 months   GMS-Nepal        NEPAL                          19               1        0     486
24 months   GMS-Nepal        NEPAL                          20               0        0     486
24 months   GMS-Nepal        NEPAL                          20               1        0     486
24 months   GMS-Nepal        NEPAL                          24               0        0     486
24 months   GMS-Nepal        NEPAL                          24               1        0     486
24 months   GMS-Nepal        NEPAL                          25               0        0     486
24 months   GMS-Nepal        NEPAL                          25               1        0     486
24 months   GMS-Nepal        NEPAL                          27               0        0     486
24 months   GMS-Nepal        NEPAL                          27               1        0     486
24 months   LCNI-5           MALAWI                         0                0      189     555
24 months   LCNI-5           MALAWI                         0                1        5     555
24 months   LCNI-5           MALAWI                         1                0       10     555
24 months   LCNI-5           MALAWI                         1                1        0     555
24 months   LCNI-5           MALAWI                         2                0       20     555
24 months   LCNI-5           MALAWI                         2                1        0     555
24 months   LCNI-5           MALAWI                         3                0       35     555
24 months   LCNI-5           MALAWI                         3                1        0     555
24 months   LCNI-5           MALAWI                         4                0       37     555
24 months   LCNI-5           MALAWI                         4                1        1     555
24 months   LCNI-5           MALAWI                         5                0       40     555
24 months   LCNI-5           MALAWI                         5                1        2     555
24 months   LCNI-5           MALAWI                         6                0       46     555
24 months   LCNI-5           MALAWI                         6                1        0     555
24 months   LCNI-5           MALAWI                         7                0       45     555
24 months   LCNI-5           MALAWI                         7                1        0     555
24 months   LCNI-5           MALAWI                         8                0       58     555
24 months   LCNI-5           MALAWI                         8                1        2     555
24 months   LCNI-5           MALAWI                         9                0        9     555
24 months   LCNI-5           MALAWI                         9                1        0     555
24 months   LCNI-5           MALAWI                         10               0       13     555
24 months   LCNI-5           MALAWI                         10               1        0     555
24 months   LCNI-5           MALAWI                         11               0        3     555
24 months   LCNI-5           MALAWI                         11               1        0     555
24 months   LCNI-5           MALAWI                         12               0       38     555
24 months   LCNI-5           MALAWI                         12               1        0     555
24 months   LCNI-5           MALAWI                         13               0        1     555
24 months   LCNI-5           MALAWI                         13               1        0     555
24 months   LCNI-5           MALAWI                         14               0        1     555
24 months   LCNI-5           MALAWI                         14               1        0     555
24 months   LCNI-5           MALAWI                         15               0        0     555
24 months   LCNI-5           MALAWI                         15               1        0     555
24 months   LCNI-5           MALAWI                         16               0        0     555
24 months   LCNI-5           MALAWI                         16               1        0     555
24 months   LCNI-5           MALAWI                         17               0        0     555
24 months   LCNI-5           MALAWI                         17               1        0     555
24 months   LCNI-5           MALAWI                         18               0        0     555
24 months   LCNI-5           MALAWI                         18               1        0     555
24 months   LCNI-5           MALAWI                         19               0        0     555
24 months   LCNI-5           MALAWI                         19               1        0     555
24 months   LCNI-5           MALAWI                         20               0        0     555
24 months   LCNI-5           MALAWI                         20               1        0     555
24 months   LCNI-5           MALAWI                         24               0        0     555
24 months   LCNI-5           MALAWI                         24               1        0     555
24 months   LCNI-5           MALAWI                         25               0        0     555
24 months   LCNI-5           MALAWI                         25               1        0     555
24 months   LCNI-5           MALAWI                         27               0        0     555
24 months   LCNI-5           MALAWI                         27               1        0     555
24 months   MAL-ED           BANGLADESH                     0                0        0     117
24 months   MAL-ED           BANGLADESH                     0                1        0     117
24 months   MAL-ED           BANGLADESH                     1                0        7     117
24 months   MAL-ED           BANGLADESH                     1                1        0     117
24 months   MAL-ED           BANGLADESH                     2                0       11     117
24 months   MAL-ED           BANGLADESH                     2                1        0     117
24 months   MAL-ED           BANGLADESH                     3                0        7     117
24 months   MAL-ED           BANGLADESH                     3                1        4     117
24 months   MAL-ED           BANGLADESH                     4                0        5     117
24 months   MAL-ED           BANGLADESH                     4                1        1     117
24 months   MAL-ED           BANGLADESH                     5                0       24     117
24 months   MAL-ED           BANGLADESH                     5                1        3     117
24 months   MAL-ED           BANGLADESH                     6                0        5     117
24 months   MAL-ED           BANGLADESH                     6                1        2     117
24 months   MAL-ED           BANGLADESH                     7                0        6     117
24 months   MAL-ED           BANGLADESH                     7                1        2     117
24 months   MAL-ED           BANGLADESH                     8                0       11     117
24 months   MAL-ED           BANGLADESH                     8                1        2     117
24 months   MAL-ED           BANGLADESH                     9                0       10     117
24 months   MAL-ED           BANGLADESH                     9                1        0     117
24 months   MAL-ED           BANGLADESH                     10               0        7     117
24 months   MAL-ED           BANGLADESH                     10               1        1     117
24 months   MAL-ED           BANGLADESH                     11               0        0     117
24 months   MAL-ED           BANGLADESH                     11               1        0     117
24 months   MAL-ED           BANGLADESH                     12               0        7     117
24 months   MAL-ED           BANGLADESH                     12               1        0     117
24 months   MAL-ED           BANGLADESH                     13               0        0     117
24 months   MAL-ED           BANGLADESH                     13               1        0     117
24 months   MAL-ED           BANGLADESH                     14               0        0     117
24 months   MAL-ED           BANGLADESH                     14               1        0     117
24 months   MAL-ED           BANGLADESH                     15               0        0     117
24 months   MAL-ED           BANGLADESH                     15               1        0     117
24 months   MAL-ED           BANGLADESH                     16               0        2     117
24 months   MAL-ED           BANGLADESH                     16               1        0     117
24 months   MAL-ED           BANGLADESH                     17               0        0     117
24 months   MAL-ED           BANGLADESH                     17               1        0     117
24 months   MAL-ED           BANGLADESH                     18               0        0     117
24 months   MAL-ED           BANGLADESH                     18               1        0     117
24 months   MAL-ED           BANGLADESH                     19               0        0     117
24 months   MAL-ED           BANGLADESH                     19               1        0     117
24 months   MAL-ED           BANGLADESH                     20               0        0     117
24 months   MAL-ED           BANGLADESH                     20               1        0     117
24 months   MAL-ED           BANGLADESH                     24               0        0     117
24 months   MAL-ED           BANGLADESH                     24               1        0     117
24 months   MAL-ED           BANGLADESH                     25               0        0     117
24 months   MAL-ED           BANGLADESH                     25               1        0     117
24 months   MAL-ED           BANGLADESH                     27               0        0     117
24 months   MAL-ED           BANGLADESH                     27               1        0     117
24 months   MAL-ED           INDIA                          0                0        0     132
24 months   MAL-ED           INDIA                          0                1        0     132
24 months   MAL-ED           INDIA                          1                0        0     132
24 months   MAL-ED           INDIA                          1                1        0     132
24 months   MAL-ED           INDIA                          2                0        5     132
24 months   MAL-ED           INDIA                          2                1        0     132
24 months   MAL-ED           INDIA                          3                0        9     132
24 months   MAL-ED           INDIA                          3                1        0     132
24 months   MAL-ED           INDIA                          4                0        6     132
24 months   MAL-ED           INDIA                          4                1        0     132
24 months   MAL-ED           INDIA                          5                0       27     132
24 months   MAL-ED           INDIA                          5                1        4     132
24 months   MAL-ED           INDIA                          6                0        8     132
24 months   MAL-ED           INDIA                          6                1        2     132
24 months   MAL-ED           INDIA                          7                0       10     132
24 months   MAL-ED           INDIA                          7                1        0     132
24 months   MAL-ED           INDIA                          8                0       14     132
24 months   MAL-ED           INDIA                          8                1        5     132
24 months   MAL-ED           INDIA                          9                0       25     132
24 months   MAL-ED           INDIA                          9                1        0     132
24 months   MAL-ED           INDIA                          10               0        6     132
24 months   MAL-ED           INDIA                          10               1        0     132
24 months   MAL-ED           INDIA                          11               0        2     132
24 months   MAL-ED           INDIA                          11               1        0     132
24 months   MAL-ED           INDIA                          12               0        2     132
24 months   MAL-ED           INDIA                          12               1        1     132
24 months   MAL-ED           INDIA                          13               0        1     132
24 months   MAL-ED           INDIA                          13               1        0     132
24 months   MAL-ED           INDIA                          14               0        2     132
24 months   MAL-ED           INDIA                          14               1        0     132
24 months   MAL-ED           INDIA                          15               0        2     132
24 months   MAL-ED           INDIA                          15               1        0     132
24 months   MAL-ED           INDIA                          16               0        0     132
24 months   MAL-ED           INDIA                          16               1        0     132
24 months   MAL-ED           INDIA                          17               0        0     132
24 months   MAL-ED           INDIA                          17               1        0     132
24 months   MAL-ED           INDIA                          18               0        1     132
24 months   MAL-ED           INDIA                          18               1        0     132
24 months   MAL-ED           INDIA                          19               0        0     132
24 months   MAL-ED           INDIA                          19               1        0     132
24 months   MAL-ED           INDIA                          20               0        0     132
24 months   MAL-ED           INDIA                          20               1        0     132
24 months   MAL-ED           INDIA                          24               0        0     132
24 months   MAL-ED           INDIA                          24               1        0     132
24 months   MAL-ED           INDIA                          25               0        0     132
24 months   MAL-ED           INDIA                          25               1        0     132
24 months   MAL-ED           INDIA                          27               0        0     132
24 months   MAL-ED           INDIA                          27               1        0     132
24 months   MAL-ED           NEPAL                          0                0        0      91
24 months   MAL-ED           NEPAL                          0                1        0      91
24 months   MAL-ED           NEPAL                          1                0        0      91
24 months   MAL-ED           NEPAL                          1                1        0      91
24 months   MAL-ED           NEPAL                          2                0        4      91
24 months   MAL-ED           NEPAL                          2                1        0      91
24 months   MAL-ED           NEPAL                          3                0        3      91
24 months   MAL-ED           NEPAL                          3                1        0      91
24 months   MAL-ED           NEPAL                          4                0        9      91
24 months   MAL-ED           NEPAL                          4                1        1      91
24 months   MAL-ED           NEPAL                          5                0        6      91
24 months   MAL-ED           NEPAL                          5                1        0      91
24 months   MAL-ED           NEPAL                          6                0        4      91
24 months   MAL-ED           NEPAL                          6                1        0      91
24 months   MAL-ED           NEPAL                          7                0        7      91
24 months   MAL-ED           NEPAL                          7                1        1      91
24 months   MAL-ED           NEPAL                          8                0       10      91
24 months   MAL-ED           NEPAL                          8                1        1      91
24 months   MAL-ED           NEPAL                          9                0        7      91
24 months   MAL-ED           NEPAL                          9                1        0      91
24 months   MAL-ED           NEPAL                          10               0       24      91
24 months   MAL-ED           NEPAL                          10               1        0      91
24 months   MAL-ED           NEPAL                          11               0        1      91
24 months   MAL-ED           NEPAL                          11               1        0      91
24 months   MAL-ED           NEPAL                          12               0        6      91
24 months   MAL-ED           NEPAL                          12               1        1      91
24 months   MAL-ED           NEPAL                          13               0        0      91
24 months   MAL-ED           NEPAL                          13               1        0      91
24 months   MAL-ED           NEPAL                          14               0        0      91
24 months   MAL-ED           NEPAL                          14               1        0      91
24 months   MAL-ED           NEPAL                          15               0        1      91
24 months   MAL-ED           NEPAL                          15               1        0      91
24 months   MAL-ED           NEPAL                          16               0        1      91
24 months   MAL-ED           NEPAL                          16               1        0      91
24 months   MAL-ED           NEPAL                          17               0        3      91
24 months   MAL-ED           NEPAL                          17               1        0      91
24 months   MAL-ED           NEPAL                          18               0        1      91
24 months   MAL-ED           NEPAL                          18               1        0      91
24 months   MAL-ED           NEPAL                          19               0        0      91
24 months   MAL-ED           NEPAL                          19               1        0      91
24 months   MAL-ED           NEPAL                          20               0        0      91
24 months   MAL-ED           NEPAL                          20               1        0      91
24 months   MAL-ED           NEPAL                          24               0        0      91
24 months   MAL-ED           NEPAL                          24               1        0      91
24 months   MAL-ED           NEPAL                          25               0        0      91
24 months   MAL-ED           NEPAL                          25               1        0      91
24 months   MAL-ED           NEPAL                          27               0        0      91
24 months   MAL-ED           NEPAL                          27               1        0      91
24 months   MAL-ED           PERU                           0                0        1     164
24 months   MAL-ED           PERU                           0                1        0     164
24 months   MAL-ED           PERU                           1                0        1     164
24 months   MAL-ED           PERU                           1                1        0     164
24 months   MAL-ED           PERU                           2                0        0     164
24 months   MAL-ED           PERU                           2                1        0     164
24 months   MAL-ED           PERU                           3                0        6     164
24 months   MAL-ED           PERU                           3                1        0     164
24 months   MAL-ED           PERU                           4                0        3     164
24 months   MAL-ED           PERU                           4                1        0     164
24 months   MAL-ED           PERU                           5                0        7     164
24 months   MAL-ED           PERU                           5                1        0     164
24 months   MAL-ED           PERU                           6                0       14     164
24 months   MAL-ED           PERU                           6                1        0     164
24 months   MAL-ED           PERU                           7                0       12     164
24 months   MAL-ED           PERU                           7                1        0     164
24 months   MAL-ED           PERU                           8                0       15     164
24 months   MAL-ED           PERU                           8                1        0     164
24 months   MAL-ED           PERU                           9                0       20     164
24 months   MAL-ED           PERU                           9                1        1     164
24 months   MAL-ED           PERU                           10               0        7     164
24 months   MAL-ED           PERU                           10               1        0     164
24 months   MAL-ED           PERU                           11               0       64     164
24 months   MAL-ED           PERU                           11               1        1     164
24 months   MAL-ED           PERU                           12               0        0     164
24 months   MAL-ED           PERU                           12               1        1     164
24 months   MAL-ED           PERU                           13               0        2     164
24 months   MAL-ED           PERU                           13               1        0     164
24 months   MAL-ED           PERU                           14               0        4     164
24 months   MAL-ED           PERU                           14               1        0     164
24 months   MAL-ED           PERU                           15               0        0     164
24 months   MAL-ED           PERU                           15               1        0     164
24 months   MAL-ED           PERU                           16               0        1     164
24 months   MAL-ED           PERU                           16               1        0     164
24 months   MAL-ED           PERU                           17               0        1     164
24 months   MAL-ED           PERU                           17               1        0     164
24 months   MAL-ED           PERU                           18               0        2     164
24 months   MAL-ED           PERU                           18               1        0     164
24 months   MAL-ED           PERU                           19               0        0     164
24 months   MAL-ED           PERU                           19               1        0     164
24 months   MAL-ED           PERU                           20               0        1     164
24 months   MAL-ED           PERU                           20               1        0     164
24 months   MAL-ED           PERU                           24               0        0     164
24 months   MAL-ED           PERU                           24               1        0     164
24 months   MAL-ED           PERU                           25               0        0     164
24 months   MAL-ED           PERU                           25               1        0     164
24 months   MAL-ED           PERU                           27               0        0     164
24 months   MAL-ED           PERU                           27               1        0     164
24 months   MAL-ED           SOUTH AFRICA                   0                0        0      91
24 months   MAL-ED           SOUTH AFRICA                   0                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   1                0        0      91
24 months   MAL-ED           SOUTH AFRICA                   1                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   2                0        1      91
24 months   MAL-ED           SOUTH AFRICA                   2                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   3                0        0      91
24 months   MAL-ED           SOUTH AFRICA                   3                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   4                0        4      91
24 months   MAL-ED           SOUTH AFRICA                   4                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   5                0        2      91
24 months   MAL-ED           SOUTH AFRICA                   5                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   6                0        6      91
24 months   MAL-ED           SOUTH AFRICA                   6                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   7                0        5      91
24 months   MAL-ED           SOUTH AFRICA                   7                1        1      91
24 months   MAL-ED           SOUTH AFRICA                   8                0       10      91
24 months   MAL-ED           SOUTH AFRICA                   8                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   9                0        5      91
24 months   MAL-ED           SOUTH AFRICA                   9                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   10               0        8      91
24 months   MAL-ED           SOUTH AFRICA                   10               1        0      91
24 months   MAL-ED           SOUTH AFRICA                   11               0       15      91
24 months   MAL-ED           SOUTH AFRICA                   11               1        0      91
24 months   MAL-ED           SOUTH AFRICA                   12               0       29      91
24 months   MAL-ED           SOUTH AFRICA                   12               1        0      91
24 months   MAL-ED           SOUTH AFRICA                   13               0        0      91
24 months   MAL-ED           SOUTH AFRICA                   13               1        0      91
24 months   MAL-ED           SOUTH AFRICA                   14               0        2      91
24 months   MAL-ED           SOUTH AFRICA                   14               1        0      91
24 months   MAL-ED           SOUTH AFRICA                   15               0        2      91
24 months   MAL-ED           SOUTH AFRICA                   15               1        0      91
24 months   MAL-ED           SOUTH AFRICA                   16               0        1      91
24 months   MAL-ED           SOUTH AFRICA                   16               1        0      91
24 months   MAL-ED           SOUTH AFRICA                   17               0        0      91
24 months   MAL-ED           SOUTH AFRICA                   17               1        0      91
24 months   MAL-ED           SOUTH AFRICA                   18               0        0      91
24 months   MAL-ED           SOUTH AFRICA                   18               1        0      91
24 months   MAL-ED           SOUTH AFRICA                   19               0        0      91
24 months   MAL-ED           SOUTH AFRICA                   19               1        0      91
24 months   MAL-ED           SOUTH AFRICA                   20               0        0      91
24 months   MAL-ED           SOUTH AFRICA                   20               1        0      91
24 months   MAL-ED           SOUTH AFRICA                   24               0        0      91
24 months   MAL-ED           SOUTH AFRICA                   24               1        0      91
24 months   MAL-ED           SOUTH AFRICA                   25               0        0      91
24 months   MAL-ED           SOUTH AFRICA                   25               1        0      91
24 months   MAL-ED           SOUTH AFRICA                   27               0        0      91
24 months   MAL-ED           SOUTH AFRICA                   27               1        0      91
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0       12     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        1     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                0       11     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                0       12     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                1        1     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                0       10     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                0        8     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                0        8     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                0      104     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                1        1     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                0        1     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                0        2     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               0        3     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               0        2     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               0        1     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               1        0     177
24 months   NIH-Crypto       BANGLADESH                     0                0       91     514
24 months   NIH-Crypto       BANGLADESH                     0                1       11     514
24 months   NIH-Crypto       BANGLADESH                     1                0       11     514
24 months   NIH-Crypto       BANGLADESH                     1                1        0     514
24 months   NIH-Crypto       BANGLADESH                     2                0        8     514
24 months   NIH-Crypto       BANGLADESH                     2                1        2     514
24 months   NIH-Crypto       BANGLADESH                     3                0       17     514
24 months   NIH-Crypto       BANGLADESH                     3                1        4     514
24 months   NIH-Crypto       BANGLADESH                     4                0       28     514
24 months   NIH-Crypto       BANGLADESH                     4                1        2     514
24 months   NIH-Crypto       BANGLADESH                     5                0       58     514
24 months   NIH-Crypto       BANGLADESH                     5                1        7     514
24 months   NIH-Crypto       BANGLADESH                     6                0       24     514
24 months   NIH-Crypto       BANGLADESH                     6                1        2     514
24 months   NIH-Crypto       BANGLADESH                     7                0       37     514
24 months   NIH-Crypto       BANGLADESH                     7                1        1     514
24 months   NIH-Crypto       BANGLADESH                     8                0       54     514
24 months   NIH-Crypto       BANGLADESH                     8                1        4     514
24 months   NIH-Crypto       BANGLADESH                     9                0       57     514
24 months   NIH-Crypto       BANGLADESH                     9                1        6     514
24 months   NIH-Crypto       BANGLADESH                     10               0       38     514
24 months   NIH-Crypto       BANGLADESH                     10               1        3     514
24 months   NIH-Crypto       BANGLADESH                     11               0        0     514
24 months   NIH-Crypto       BANGLADESH                     11               1        0     514
24 months   NIH-Crypto       BANGLADESH                     12               0       25     514
24 months   NIH-Crypto       BANGLADESH                     12               1        2     514
24 months   NIH-Crypto       BANGLADESH                     13               0        0     514
24 months   NIH-Crypto       BANGLADESH                     13               1        0     514
24 months   NIH-Crypto       BANGLADESH                     14               0        5     514
24 months   NIH-Crypto       BANGLADESH                     14               1        0     514
24 months   NIH-Crypto       BANGLADESH                     15               0       11     514
24 months   NIH-Crypto       BANGLADESH                     15               1        1     514
24 months   NIH-Crypto       BANGLADESH                     16               0        0     514
24 months   NIH-Crypto       BANGLADESH                     16               1        0     514
24 months   NIH-Crypto       BANGLADESH                     17               0        5     514
24 months   NIH-Crypto       BANGLADESH                     17               1        0     514
24 months   NIH-Crypto       BANGLADESH                     18               0        0     514
24 months   NIH-Crypto       BANGLADESH                     18               1        0     514
24 months   NIH-Crypto       BANGLADESH                     19               0        0     514
24 months   NIH-Crypto       BANGLADESH                     19               1        0     514
24 months   NIH-Crypto       BANGLADESH                     20               0        0     514
24 months   NIH-Crypto       BANGLADESH                     20               1        0     514
24 months   NIH-Crypto       BANGLADESH                     24               0        0     514
24 months   NIH-Crypto       BANGLADESH                     24               1        0     514
24 months   NIH-Crypto       BANGLADESH                     25               0        0     514
24 months   NIH-Crypto       BANGLADESH                     25               1        0     514
24 months   NIH-Crypto       BANGLADESH                     27               0        0     514
24 months   NIH-Crypto       BANGLADESH                     27               1        0     514
24 months   PROBIT           BELARUS                        0                0        0    3851
24 months   PROBIT           BELARUS                        0                1        0    3851
24 months   PROBIT           BELARUS                        1                0        0    3851
24 months   PROBIT           BELARUS                        1                1        0    3851
24 months   PROBIT           BELARUS                        2                0        0    3851
24 months   PROBIT           BELARUS                        2                1        0    3851
24 months   PROBIT           BELARUS                        3                0        0    3851
24 months   PROBIT           BELARUS                        3                1        0    3851
24 months   PROBIT           BELARUS                        4                0        0    3851
24 months   PROBIT           BELARUS                        4                1        0    3851
24 months   PROBIT           BELARUS                        5                0        0    3851
24 months   PROBIT           BELARUS                        5                1        0    3851
24 months   PROBIT           BELARUS                        6                0        0    3851
24 months   PROBIT           BELARUS                        6                1        0    3851
24 months   PROBIT           BELARUS                        7                0        0    3851
24 months   PROBIT           BELARUS                        7                1        0    3851
24 months   PROBIT           BELARUS                        8                0        1    3851
24 months   PROBIT           BELARUS                        8                1        0    3851
24 months   PROBIT           BELARUS                        9                0        0    3851
24 months   PROBIT           BELARUS                        9                1        0    3851
24 months   PROBIT           BELARUS                        10               0       69    3851
24 months   PROBIT           BELARUS                        10               1        0    3851
24 months   PROBIT           BELARUS                        11               0        0    3851
24 months   PROBIT           BELARUS                        11               1        0    3851
24 months   PROBIT           BELARUS                        12               0     1403    3851
24 months   PROBIT           BELARUS                        12               1       15    3851
24 months   PROBIT           BELARUS                        13               0     1728    3851
24 months   PROBIT           BELARUS                        13               1       15    3851
24 months   PROBIT           BELARUS                        14               0       97    3851
24 months   PROBIT           BELARUS                        14               1        0    3851
24 months   PROBIT           BELARUS                        15               0        0    3851
24 months   PROBIT           BELARUS                        15               1        0    3851
24 months   PROBIT           BELARUS                        16               0      522    3851
24 months   PROBIT           BELARUS                        16               1        1    3851
24 months   PROBIT           BELARUS                        17               0        0    3851
24 months   PROBIT           BELARUS                        17               1        0    3851
24 months   PROBIT           BELARUS                        18               0        0    3851
24 months   PROBIT           BELARUS                        18               1        0    3851
24 months   PROBIT           BELARUS                        19               0        0    3851
24 months   PROBIT           BELARUS                        19               1        0    3851
24 months   PROBIT           BELARUS                        20               0        0    3851
24 months   PROBIT           BELARUS                        20               1        0    3851
24 months   PROBIT           BELARUS                        24               0        0    3851
24 months   PROBIT           BELARUS                        24               1        0    3851
24 months   PROBIT           BELARUS                        25               0        0    3851
24 months   PROBIT           BELARUS                        25               1        0    3851
24 months   PROBIT           BELARUS                        27               0        0    3851
24 months   PROBIT           BELARUS                        27               1        0    3851
24 months   PROVIDE          BANGLADESH                     0                0      147     579
24 months   PROVIDE          BANGLADESH                     0                1       24     579
24 months   PROVIDE          BANGLADESH                     1                0        9     579
24 months   PROVIDE          BANGLADESH                     1                1        1     579
24 months   PROVIDE          BANGLADESH                     2                0       15     579
24 months   PROVIDE          BANGLADESH                     2                1        2     579
24 months   PROVIDE          BANGLADESH                     3                0       18     579
24 months   PROVIDE          BANGLADESH                     3                1        2     579
24 months   PROVIDE          BANGLADESH                     4                0       35     579
24 months   PROVIDE          BANGLADESH                     4                1        6     579
24 months   PROVIDE          BANGLADESH                     5                0       53     579
24 months   PROVIDE          BANGLADESH                     5                1        8     579
24 months   PROVIDE          BANGLADESH                     6                0       24     579
24 months   PROVIDE          BANGLADESH                     6                1        1     579
24 months   PROVIDE          BANGLADESH                     7                0       29     579
24 months   PROVIDE          BANGLADESH                     7                1        3     579
24 months   PROVIDE          BANGLADESH                     8                0       51     579
24 months   PROVIDE          BANGLADESH                     8                1        6     579
24 months   PROVIDE          BANGLADESH                     9                0       48     579
24 months   PROVIDE          BANGLADESH                     9                1        5     579
24 months   PROVIDE          BANGLADESH                     10               0       28     579
24 months   PROVIDE          BANGLADESH                     10               1        2     579
24 months   PROVIDE          BANGLADESH                     11               0       25     579
24 months   PROVIDE          BANGLADESH                     11               1        0     579
24 months   PROVIDE          BANGLADESH                     12               0        3     579
24 months   PROVIDE          BANGLADESH                     12               1        0     579
24 months   PROVIDE          BANGLADESH                     13               0        0     579
24 months   PROVIDE          BANGLADESH                     13               1        0     579
24 months   PROVIDE          BANGLADESH                     14               0       16     579
24 months   PROVIDE          BANGLADESH                     14               1        1     579
24 months   PROVIDE          BANGLADESH                     15               0        8     579
24 months   PROVIDE          BANGLADESH                     15               1        0     579
24 months   PROVIDE          BANGLADESH                     16               0        7     579
24 months   PROVIDE          BANGLADESH                     16               1        1     579
24 months   PROVIDE          BANGLADESH                     17               0        0     579
24 months   PROVIDE          BANGLADESH                     17               1        0     579
24 months   PROVIDE          BANGLADESH                     18               0        0     579
24 months   PROVIDE          BANGLADESH                     18               1        0     579
24 months   PROVIDE          BANGLADESH                     19               0        1     579
24 months   PROVIDE          BANGLADESH                     19               1        0     579
24 months   PROVIDE          BANGLADESH                     20               0        0     579
24 months   PROVIDE          BANGLADESH                     20               1        0     579
24 months   PROVIDE          BANGLADESH                     24               0        0     579
24 months   PROVIDE          BANGLADESH                     24               1        0     579
24 months   PROVIDE          BANGLADESH                     25               0        0     579
24 months   PROVIDE          BANGLADESH                     25               1        0     579
24 months   PROVIDE          BANGLADESH                     27               0        0     579
24 months   PROVIDE          BANGLADESH                     27               1        0     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27               1        0       6
24 months   ZVITAMBO         ZIMBABWE                       0                0        3     410
24 months   ZVITAMBO         ZIMBABWE                       0                1        5     410
24 months   ZVITAMBO         ZIMBABWE                       1                0        0     410
24 months   ZVITAMBO         ZIMBABWE                       1                1        0     410
24 months   ZVITAMBO         ZIMBABWE                       2                0        0     410
24 months   ZVITAMBO         ZIMBABWE                       2                1        0     410
24 months   ZVITAMBO         ZIMBABWE                       3                0        0     410
24 months   ZVITAMBO         ZIMBABWE                       3                1        1     410
24 months   ZVITAMBO         ZIMBABWE                       4                0        0     410
24 months   ZVITAMBO         ZIMBABWE                       4                1        1     410
24 months   ZVITAMBO         ZIMBABWE                       5                0        3     410
24 months   ZVITAMBO         ZIMBABWE                       5                1        1     410
24 months   ZVITAMBO         ZIMBABWE                       6                0        0     410
24 months   ZVITAMBO         ZIMBABWE                       6                1        0     410
24 months   ZVITAMBO         ZIMBABWE                       7                0       30     410
24 months   ZVITAMBO         ZIMBABWE                       7                1        6     410
24 months   ZVITAMBO         ZIMBABWE                       8                0        4     410
24 months   ZVITAMBO         ZIMBABWE                       8                1        0     410
24 months   ZVITAMBO         ZIMBABWE                       9                0       23     410
24 months   ZVITAMBO         ZIMBABWE                       9                1       12     410
24 months   ZVITAMBO         ZIMBABWE                       10               0       13     410
24 months   ZVITAMBO         ZIMBABWE                       10               1        1     410
24 months   ZVITAMBO         ZIMBABWE                       11               0      246     410
24 months   ZVITAMBO         ZIMBABWE                       11               1       48     410
24 months   ZVITAMBO         ZIMBABWE                       12               0        0     410
24 months   ZVITAMBO         ZIMBABWE                       12               1        0     410
24 months   ZVITAMBO         ZIMBABWE                       13               0       11     410
24 months   ZVITAMBO         ZIMBABWE                       13               1        2     410
24 months   ZVITAMBO         ZIMBABWE                       14               0        0     410
24 months   ZVITAMBO         ZIMBABWE                       14               1        0     410
24 months   ZVITAMBO         ZIMBABWE                       15               0        0     410
24 months   ZVITAMBO         ZIMBABWE                       15               1        0     410
24 months   ZVITAMBO         ZIMBABWE                       16               0        0     410
24 months   ZVITAMBO         ZIMBABWE                       16               1        0     410
24 months   ZVITAMBO         ZIMBABWE                       17               0        0     410
24 months   ZVITAMBO         ZIMBABWE                       17               1        0     410
24 months   ZVITAMBO         ZIMBABWE                       18               0        0     410
24 months   ZVITAMBO         ZIMBABWE                       18               1        0     410
24 months   ZVITAMBO         ZIMBABWE                       19               0        0     410
24 months   ZVITAMBO         ZIMBABWE                       19               1        0     410
24 months   ZVITAMBO         ZIMBABWE                       20               0        0     410
24 months   ZVITAMBO         ZIMBABWE                       20               1        0     410
24 months   ZVITAMBO         ZIMBABWE                       24               0        0     410
24 months   ZVITAMBO         ZIMBABWE                       24               1        0     410
24 months   ZVITAMBO         ZIMBABWE                       25               0        0     410
24 months   ZVITAMBO         ZIMBABWE                       25               1        0     410
24 months   ZVITAMBO         ZIMBABWE                       27               0        0     410
24 months   ZVITAMBO         ZIMBABWE                       27               1        0     410


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
















