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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        feducyrs    stunted   n_cell       n
----------  ---------------  -----------------------------  ---------  --------  -------  ------
Birth       COHORTS          GUATEMALA                      0                 0      330     804
Birth       COHORTS          GUATEMALA                      0                 1       25     804
Birth       COHORTS          GUATEMALA                      1                 0       39     804
Birth       COHORTS          GUATEMALA                      1                 1        1     804
Birth       COHORTS          GUATEMALA                      2                 0      142     804
Birth       COHORTS          GUATEMALA                      2                 1        6     804
Birth       COHORTS          GUATEMALA                      3                 0       99     804
Birth       COHORTS          GUATEMALA                      3                 1        7     804
Birth       COHORTS          GUATEMALA                      4                 0       46     804
Birth       COHORTS          GUATEMALA                      4                 1        4     804
Birth       COHORTS          GUATEMALA                      5                 0       16     804
Birth       COHORTS          GUATEMALA                      5                 1        1     804
Birth       COHORTS          GUATEMALA                      6                 0       72     804
Birth       COHORTS          GUATEMALA                      6                 1        4     804
Birth       COHORTS          GUATEMALA                      7                 0        3     804
Birth       COHORTS          GUATEMALA                      7                 1        0     804
Birth       COHORTS          GUATEMALA                      8                 0        2     804
Birth       COHORTS          GUATEMALA                      8                 1        0     804
Birth       COHORTS          GUATEMALA                      9                 0        1     804
Birth       COHORTS          GUATEMALA                      9                 1        0     804
Birth       COHORTS          GUATEMALA                      10                0        1     804
Birth       COHORTS          GUATEMALA                      10                1        0     804
Birth       COHORTS          GUATEMALA                      11                0        0     804
Birth       COHORTS          GUATEMALA                      11                1        0     804
Birth       COHORTS          GUATEMALA                      12                0        4     804
Birth       COHORTS          GUATEMALA                      12                1        0     804
Birth       COHORTS          GUATEMALA                      13                0        0     804
Birth       COHORTS          GUATEMALA                      13                1        0     804
Birth       COHORTS          GUATEMALA                      14                0        1     804
Birth       COHORTS          GUATEMALA                      14                1        0     804
Birth       COHORTS          GUATEMALA                      15                0        0     804
Birth       COHORTS          GUATEMALA                      15                1        0     804
Birth       COHORTS          GUATEMALA                      16                0        0     804
Birth       COHORTS          GUATEMALA                      16                1        0     804
Birth       COHORTS          GUATEMALA                      17                0        0     804
Birth       COHORTS          GUATEMALA                      17                1        0     804
Birth       COHORTS          GUATEMALA                      18                0        0     804
Birth       COHORTS          GUATEMALA                      18                1        0     804
Birth       COHORTS          GUATEMALA                      19                0        0     804
Birth       COHORTS          GUATEMALA                      19                1        0     804
Birth       COHORTS          GUATEMALA                      20                0        0     804
Birth       COHORTS          GUATEMALA                      20                1        0     804
Birth       COHORTS          GUATEMALA                      24                0        0     804
Birth       COHORTS          GUATEMALA                      24                1        0     804
Birth       COHORTS          GUATEMALA                      25                0        0     804
Birth       COHORTS          GUATEMALA                      25                1        0     804
Birth       COHORTS          GUATEMALA                      27                0        0     804
Birth       COHORTS          GUATEMALA                      27                1        0     804
Birth       COHORTS          INDIA                          0                 0      104    1354
Birth       COHORTS          INDIA                          0                 1       11    1354
Birth       COHORTS          INDIA                          1                 0        0    1354
Birth       COHORTS          INDIA                          1                 1        0    1354
Birth       COHORTS          INDIA                          2                 0        0    1354
Birth       COHORTS          INDIA                          2                 1        0    1354
Birth       COHORTS          INDIA                          3                 0      116    1354
Birth       COHORTS          INDIA                          3                 1       11    1354
Birth       COHORTS          INDIA                          4                 0        0    1354
Birth       COHORTS          INDIA                          4                 1        0    1354
Birth       COHORTS          INDIA                          5                 0        0    1354
Birth       COHORTS          INDIA                          5                 1        0    1354
Birth       COHORTS          INDIA                          6                 0        0    1354
Birth       COHORTS          INDIA                          6                 1        0    1354
Birth       COHORTS          INDIA                          7                 0        0    1354
Birth       COHORTS          INDIA                          7                 1        0    1354
Birth       COHORTS          INDIA                          8                 0      172    1354
Birth       COHORTS          INDIA                          8                 1       25    1354
Birth       COHORTS          INDIA                          9                 0        0    1354
Birth       COHORTS          INDIA                          9                 1        0    1354
Birth       COHORTS          INDIA                          10                0        0    1354
Birth       COHORTS          INDIA                          10                1        0    1354
Birth       COHORTS          INDIA                          11                0        0    1354
Birth       COHORTS          INDIA                          11                1        0    1354
Birth       COHORTS          INDIA                          12                0      354    1354
Birth       COHORTS          INDIA                          12                1       34    1354
Birth       COHORTS          INDIA                          13                0        0    1354
Birth       COHORTS          INDIA                          13                1        0    1354
Birth       COHORTS          INDIA                          14                0      131    1354
Birth       COHORTS          INDIA                          14                1       16    1354
Birth       COHORTS          INDIA                          15                0      240    1354
Birth       COHORTS          INDIA                          15                1       27    1354
Birth       COHORTS          INDIA                          16                0        0    1354
Birth       COHORTS          INDIA                          16                1        0    1354
Birth       COHORTS          INDIA                          17                0      108    1354
Birth       COHORTS          INDIA                          17                1        5    1354
Birth       COHORTS          INDIA                          18                0        0    1354
Birth       COHORTS          INDIA                          18                1        0    1354
Birth       COHORTS          INDIA                          19                0        0    1354
Birth       COHORTS          INDIA                          19                1        0    1354
Birth       COHORTS          INDIA                          20                0        0    1354
Birth       COHORTS          INDIA                          20                1        0    1354
Birth       COHORTS          INDIA                          24                0        0    1354
Birth       COHORTS          INDIA                          24                1        0    1354
Birth       COHORTS          INDIA                          25                0        0    1354
Birth       COHORTS          INDIA                          25                1        0    1354
Birth       COHORTS          INDIA                          27                0        0    1354
Birth       COHORTS          INDIA                          27                1        0    1354
Birth       COHORTS          PHILIPPINES                    0                 0       51    2873
Birth       COHORTS          PHILIPPINES                    0                 1        9    2873
Birth       COHORTS          PHILIPPINES                    1                 0       34    2873
Birth       COHORTS          PHILIPPINES                    1                 1        2    2873
Birth       COHORTS          PHILIPPINES                    2                 0       86    2873
Birth       COHORTS          PHILIPPINES                    2                 1       10    2873
Birth       COHORTS          PHILIPPINES                    3                 0      153    2873
Birth       COHORTS          PHILIPPINES                    3                 1       16    2873
Birth       COHORTS          PHILIPPINES                    4                 0      243    2873
Birth       COHORTS          PHILIPPINES                    4                 1       19    2873
Birth       COHORTS          PHILIPPINES                    5                 0      191    2873
Birth       COHORTS          PHILIPPINES                    5                 1       13    2873
Birth       COHORTS          PHILIPPINES                    6                 0      597    2873
Birth       COHORTS          PHILIPPINES                    6                 1       46    2873
Birth       COHORTS          PHILIPPINES                    7                 0      140    2873
Birth       COHORTS          PHILIPPINES                    7                 1       11    2873
Birth       COHORTS          PHILIPPINES                    8                 0      215    2873
Birth       COHORTS          PHILIPPINES                    8                 1       10    2873
Birth       COHORTS          PHILIPPINES                    9                 0      188    2873
Birth       COHORTS          PHILIPPINES                    9                 1        9    2873
Birth       COHORTS          PHILIPPINES                    10                0      316    2873
Birth       COHORTS          PHILIPPINES                    10                1       14    2873
Birth       COHORTS          PHILIPPINES                    11                0       64    2873
Birth       COHORTS          PHILIPPINES                    11                1        1    2873
Birth       COHORTS          PHILIPPINES                    12                0      173    2873
Birth       COHORTS          PHILIPPINES                    12                1        6    2873
Birth       COHORTS          PHILIPPINES                    13                0       61    2873
Birth       COHORTS          PHILIPPINES                    13                1        2    2873
Birth       COHORTS          PHILIPPINES                    14                0      141    2873
Birth       COHORTS          PHILIPPINES                    14                1        4    2873
Birth       COHORTS          PHILIPPINES                    15                0       36    2873
Birth       COHORTS          PHILIPPINES                    15                1        0    2873
Birth       COHORTS          PHILIPPINES                    16                0        7    2873
Birth       COHORTS          PHILIPPINES                    16                1        1    2873
Birth       COHORTS          PHILIPPINES                    17                0        2    2873
Birth       COHORTS          PHILIPPINES                    17                1        0    2873
Birth       COHORTS          PHILIPPINES                    18                0        2    2873
Birth       COHORTS          PHILIPPINES                    18                1        0    2873
Birth       COHORTS          PHILIPPINES                    19                0        0    2873
Birth       COHORTS          PHILIPPINES                    19                1        0    2873
Birth       COHORTS          PHILIPPINES                    20                0        0    2873
Birth       COHORTS          PHILIPPINES                    20                1        0    2873
Birth       COHORTS          PHILIPPINES                    24                0        0    2873
Birth       COHORTS          PHILIPPINES                    24                1        0    2873
Birth       COHORTS          PHILIPPINES                    25                0        0    2873
Birth       COHORTS          PHILIPPINES                    25                1        0    2873
Birth       COHORTS          PHILIPPINES                    27                0        0    2873
Birth       COHORTS          PHILIPPINES                    27                1        0    2873
Birth       GMS-Nepal        NEPAL                          0                 0      235     694
Birth       GMS-Nepal        NEPAL                          0                 1       61     694
Birth       GMS-Nepal        NEPAL                          1                 0        0     694
Birth       GMS-Nepal        NEPAL                          1                 1        0     694
Birth       GMS-Nepal        NEPAL                          2                 0        0     694
Birth       GMS-Nepal        NEPAL                          2                 1        0     694
Birth       GMS-Nepal        NEPAL                          3                 0        0     694
Birth       GMS-Nepal        NEPAL                          3                 1        0     694
Birth       GMS-Nepal        NEPAL                          4                 0        0     694
Birth       GMS-Nepal        NEPAL                          4                 1        0     694
Birth       GMS-Nepal        NEPAL                          5                 0       89     694
Birth       GMS-Nepal        NEPAL                          5                 1       20     694
Birth       GMS-Nepal        NEPAL                          6                 0        0     694
Birth       GMS-Nepal        NEPAL                          6                 1        0     694
Birth       GMS-Nepal        NEPAL                          7                 0        0     694
Birth       GMS-Nepal        NEPAL                          7                 1        0     694
Birth       GMS-Nepal        NEPAL                          8                 0      101     694
Birth       GMS-Nepal        NEPAL                          8                 1       16     694
Birth       GMS-Nepal        NEPAL                          9                 0        0     694
Birth       GMS-Nepal        NEPAL                          9                 1        0     694
Birth       GMS-Nepal        NEPAL                          10                0      112     694
Birth       GMS-Nepal        NEPAL                          10                1       21     694
Birth       GMS-Nepal        NEPAL                          11                0        0     694
Birth       GMS-Nepal        NEPAL                          11                1        0     694
Birth       GMS-Nepal        NEPAL                          12                0       35     694
Birth       GMS-Nepal        NEPAL                          12                1        4     694
Birth       GMS-Nepal        NEPAL                          13                0        0     694
Birth       GMS-Nepal        NEPAL                          13                1        0     694
Birth       GMS-Nepal        NEPAL                          14                0        0     694
Birth       GMS-Nepal        NEPAL                          14                1        0     694
Birth       GMS-Nepal        NEPAL                          15                0        0     694
Birth       GMS-Nepal        NEPAL                          15                1        0     694
Birth       GMS-Nepal        NEPAL                          16                0        0     694
Birth       GMS-Nepal        NEPAL                          16                1        0     694
Birth       GMS-Nepal        NEPAL                          17                0        0     694
Birth       GMS-Nepal        NEPAL                          17                1        0     694
Birth       GMS-Nepal        NEPAL                          18                0        0     694
Birth       GMS-Nepal        NEPAL                          18                1        0     694
Birth       GMS-Nepal        NEPAL                          19                0        0     694
Birth       GMS-Nepal        NEPAL                          19                1        0     694
Birth       GMS-Nepal        NEPAL                          20                0        0     694
Birth       GMS-Nepal        NEPAL                          20                1        0     694
Birth       GMS-Nepal        NEPAL                          24                0        0     694
Birth       GMS-Nepal        NEPAL                          24                1        0     694
Birth       GMS-Nepal        NEPAL                          25                0        0     694
Birth       GMS-Nepal        NEPAL                          25                1        0     694
Birth       GMS-Nepal        NEPAL                          27                0        0     694
Birth       GMS-Nepal        NEPAL                          27                1        0     694
Birth       MAL-ED           BANGLADESH                     0                 0        0     129
Birth       MAL-ED           BANGLADESH                     0                 1        0     129
Birth       MAL-ED           BANGLADESH                     1                 0        4     129
Birth       MAL-ED           BANGLADESH                     1                 1        1     129
Birth       MAL-ED           BANGLADESH                     2                 0       10     129
Birth       MAL-ED           BANGLADESH                     2                 1        1     129
Birth       MAL-ED           BANGLADESH                     3                 0        9     129
Birth       MAL-ED           BANGLADESH                     3                 1        3     129
Birth       MAL-ED           BANGLADESH                     4                 0        5     129
Birth       MAL-ED           BANGLADESH                     4                 1        3     129
Birth       MAL-ED           BANGLADESH                     5                 0       21     129
Birth       MAL-ED           BANGLADESH                     5                 1        9     129
Birth       MAL-ED           BANGLADESH                     6                 0        7     129
Birth       MAL-ED           BANGLADESH                     6                 1        0     129
Birth       MAL-ED           BANGLADESH                     7                 0        8     129
Birth       MAL-ED           BANGLADESH                     7                 1        1     129
Birth       MAL-ED           BANGLADESH                     8                 0       14     129
Birth       MAL-ED           BANGLADESH                     8                 1        2     129
Birth       MAL-ED           BANGLADESH                     9                 0       10     129
Birth       MAL-ED           BANGLADESH                     9                 1        3     129
Birth       MAL-ED           BANGLADESH                     10                0        8     129
Birth       MAL-ED           BANGLADESH                     10                1        1     129
Birth       MAL-ED           BANGLADESH                     11                0        0     129
Birth       MAL-ED           BANGLADESH                     11                1        0     129
Birth       MAL-ED           BANGLADESH                     12                0        5     129
Birth       MAL-ED           BANGLADESH                     12                1        2     129
Birth       MAL-ED           BANGLADESH                     13                0        0     129
Birth       MAL-ED           BANGLADESH                     13                1        0     129
Birth       MAL-ED           BANGLADESH                     14                0        0     129
Birth       MAL-ED           BANGLADESH                     14                1        0     129
Birth       MAL-ED           BANGLADESH                     15                0        0     129
Birth       MAL-ED           BANGLADESH                     15                1        0     129
Birth       MAL-ED           BANGLADESH                     16                0        2     129
Birth       MAL-ED           BANGLADESH                     16                1        0     129
Birth       MAL-ED           BANGLADESH                     17                0        0     129
Birth       MAL-ED           BANGLADESH                     17                1        0     129
Birth       MAL-ED           BANGLADESH                     18                0        0     129
Birth       MAL-ED           BANGLADESH                     18                1        0     129
Birth       MAL-ED           BANGLADESH                     19                0        0     129
Birth       MAL-ED           BANGLADESH                     19                1        0     129
Birth       MAL-ED           BANGLADESH                     20                0        0     129
Birth       MAL-ED           BANGLADESH                     20                1        0     129
Birth       MAL-ED           BANGLADESH                     24                0        0     129
Birth       MAL-ED           BANGLADESH                     24                1        0     129
Birth       MAL-ED           BANGLADESH                     25                0        0     129
Birth       MAL-ED           BANGLADESH                     25                1        0     129
Birth       MAL-ED           BANGLADESH                     27                0        0     129
Birth       MAL-ED           BANGLADESH                     27                1        0     129
Birth       MAL-ED           INDIA                          0                 0        0      24
Birth       MAL-ED           INDIA                          0                 1        0      24
Birth       MAL-ED           INDIA                          1                 0        0      24
Birth       MAL-ED           INDIA                          1                 1        0      24
Birth       MAL-ED           INDIA                          2                 0        1      24
Birth       MAL-ED           INDIA                          2                 1        0      24
Birth       MAL-ED           INDIA                          3                 0        6      24
Birth       MAL-ED           INDIA                          3                 1        0      24
Birth       MAL-ED           INDIA                          4                 0        2      24
Birth       MAL-ED           INDIA                          4                 1        0      24
Birth       MAL-ED           INDIA                          5                 0        4      24
Birth       MAL-ED           INDIA                          5                 1        1      24
Birth       MAL-ED           INDIA                          6                 0        0      24
Birth       MAL-ED           INDIA                          6                 1        0      24
Birth       MAL-ED           INDIA                          7                 0        0      24
Birth       MAL-ED           INDIA                          7                 1        0      24
Birth       MAL-ED           INDIA                          8                 0        3      24
Birth       MAL-ED           INDIA                          8                 1        0      24
Birth       MAL-ED           INDIA                          9                 0        4      24
Birth       MAL-ED           INDIA                          9                 1        1      24
Birth       MAL-ED           INDIA                          10                0        0      24
Birth       MAL-ED           INDIA                          10                1        0      24
Birth       MAL-ED           INDIA                          11                0        1      24
Birth       MAL-ED           INDIA                          11                1        0      24
Birth       MAL-ED           INDIA                          12                0        1      24
Birth       MAL-ED           INDIA                          12                1        0      24
Birth       MAL-ED           INDIA                          13                0        0      24
Birth       MAL-ED           INDIA                          13                1        0      24
Birth       MAL-ED           INDIA                          14                0        0      24
Birth       MAL-ED           INDIA                          14                1        0      24
Birth       MAL-ED           INDIA                          15                0        0      24
Birth       MAL-ED           INDIA                          15                1        0      24
Birth       MAL-ED           INDIA                          16                0        0      24
Birth       MAL-ED           INDIA                          16                1        0      24
Birth       MAL-ED           INDIA                          17                0        0      24
Birth       MAL-ED           INDIA                          17                1        0      24
Birth       MAL-ED           INDIA                          18                0        0      24
Birth       MAL-ED           INDIA                          18                1        0      24
Birth       MAL-ED           INDIA                          19                0        0      24
Birth       MAL-ED           INDIA                          19                1        0      24
Birth       MAL-ED           INDIA                          20                0        0      24
Birth       MAL-ED           INDIA                          20                1        0      24
Birth       MAL-ED           INDIA                          24                0        0      24
Birth       MAL-ED           INDIA                          24                1        0      24
Birth       MAL-ED           INDIA                          25                0        0      24
Birth       MAL-ED           INDIA                          25                1        0      24
Birth       MAL-ED           INDIA                          27                0        0      24
Birth       MAL-ED           INDIA                          27                1        0      24
Birth       MAL-ED           NEPAL                          0                 0        0      10
Birth       MAL-ED           NEPAL                          0                 1        0      10
Birth       MAL-ED           NEPAL                          1                 0        0      10
Birth       MAL-ED           NEPAL                          1                 1        0      10
Birth       MAL-ED           NEPAL                          2                 0        1      10
Birth       MAL-ED           NEPAL                          2                 1        0      10
Birth       MAL-ED           NEPAL                          3                 0        0      10
Birth       MAL-ED           NEPAL                          3                 1        1      10
Birth       MAL-ED           NEPAL                          4                 0        0      10
Birth       MAL-ED           NEPAL                          4                 1        0      10
Birth       MAL-ED           NEPAL                          5                 0        2      10
Birth       MAL-ED           NEPAL                          5                 1        0      10
Birth       MAL-ED           NEPAL                          6                 0        0      10
Birth       MAL-ED           NEPAL                          6                 1        0      10
Birth       MAL-ED           NEPAL                          7                 0        3      10
Birth       MAL-ED           NEPAL                          7                 1        0      10
Birth       MAL-ED           NEPAL                          8                 0        0      10
Birth       MAL-ED           NEPAL                          8                 1        0      10
Birth       MAL-ED           NEPAL                          9                 0        0      10
Birth       MAL-ED           NEPAL                          9                 1        0      10
Birth       MAL-ED           NEPAL                          10                0        1      10
Birth       MAL-ED           NEPAL                          10                1        1      10
Birth       MAL-ED           NEPAL                          11                0        0      10
Birth       MAL-ED           NEPAL                          11                1        0      10
Birth       MAL-ED           NEPAL                          12                0        1      10
Birth       MAL-ED           NEPAL                          12                1        0      10
Birth       MAL-ED           NEPAL                          13                0        0      10
Birth       MAL-ED           NEPAL                          13                1        0      10
Birth       MAL-ED           NEPAL                          14                0        0      10
Birth       MAL-ED           NEPAL                          14                1        0      10
Birth       MAL-ED           NEPAL                          15                0        0      10
Birth       MAL-ED           NEPAL                          15                1        0      10
Birth       MAL-ED           NEPAL                          16                0        0      10
Birth       MAL-ED           NEPAL                          16                1        0      10
Birth       MAL-ED           NEPAL                          17                0        0      10
Birth       MAL-ED           NEPAL                          17                1        0      10
Birth       MAL-ED           NEPAL                          18                0        0      10
Birth       MAL-ED           NEPAL                          18                1        0      10
Birth       MAL-ED           NEPAL                          19                0        0      10
Birth       MAL-ED           NEPAL                          19                1        0      10
Birth       MAL-ED           NEPAL                          20                0        0      10
Birth       MAL-ED           NEPAL                          20                1        0      10
Birth       MAL-ED           NEPAL                          24                0        0      10
Birth       MAL-ED           NEPAL                          24                1        0      10
Birth       MAL-ED           NEPAL                          25                0        0      10
Birth       MAL-ED           NEPAL                          25                1        0      10
Birth       MAL-ED           NEPAL                          27                0        0      10
Birth       MAL-ED           NEPAL                          27                1        0      10
Birth       MAL-ED           PERU                           0                 0        0     194
Birth       MAL-ED           PERU                           0                 1        1     194
Birth       MAL-ED           PERU                           1                 0        2     194
Birth       MAL-ED           PERU                           1                 1        0     194
Birth       MAL-ED           PERU                           2                 0        0     194
Birth       MAL-ED           PERU                           2                 1        0     194
Birth       MAL-ED           PERU                           3                 0        6     194
Birth       MAL-ED           PERU                           3                 1        1     194
Birth       MAL-ED           PERU                           4                 0        3     194
Birth       MAL-ED           PERU                           4                 1        0     194
Birth       MAL-ED           PERU                           5                 0        5     194
Birth       MAL-ED           PERU                           5                 1        2     194
Birth       MAL-ED           PERU                           6                 0       17     194
Birth       MAL-ED           PERU                           6                 1        4     194
Birth       MAL-ED           PERU                           7                 0       14     194
Birth       MAL-ED           PERU                           7                 1        3     194
Birth       MAL-ED           PERU                           8                 0       19     194
Birth       MAL-ED           PERU                           8                 1        1     194
Birth       MAL-ED           PERU                           9                 0       18     194
Birth       MAL-ED           PERU                           9                 1        2     194
Birth       MAL-ED           PERU                           10                0       10     194
Birth       MAL-ED           PERU                           10                1        0     194
Birth       MAL-ED           PERU                           11                0       68     194
Birth       MAL-ED           PERU                           11                1        4     194
Birth       MAL-ED           PERU                           12                0        0     194
Birth       MAL-ED           PERU                           12                1        1     194
Birth       MAL-ED           PERU                           13                0        3     194
Birth       MAL-ED           PERU                           13                1        0     194
Birth       MAL-ED           PERU                           14                0        2     194
Birth       MAL-ED           PERU                           14                1        2     194
Birth       MAL-ED           PERU                           15                0        1     194
Birth       MAL-ED           PERU                           15                1        0     194
Birth       MAL-ED           PERU                           16                0        1     194
Birth       MAL-ED           PERU                           16                1        0     194
Birth       MAL-ED           PERU                           17                0        1     194
Birth       MAL-ED           PERU                           17                1        0     194
Birth       MAL-ED           PERU                           18                0        1     194
Birth       MAL-ED           PERU                           18                1        0     194
Birth       MAL-ED           PERU                           19                0        0     194
Birth       MAL-ED           PERU                           19                1        0     194
Birth       MAL-ED           PERU                           20                0        2     194
Birth       MAL-ED           PERU                           20                1        0     194
Birth       MAL-ED           PERU                           24                0        0     194
Birth       MAL-ED           PERU                           24                1        0     194
Birth       MAL-ED           PERU                           25                0        0     194
Birth       MAL-ED           PERU                           25                1        0     194
Birth       MAL-ED           PERU                           27                0        0     194
Birth       MAL-ED           PERU                           27                1        0     194
Birth       MAL-ED           SOUTH AFRICA                   0                 0        0      33
Birth       MAL-ED           SOUTH AFRICA                   0                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   1                 0        0      33
Birth       MAL-ED           SOUTH AFRICA                   1                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   2                 0        1      33
Birth       MAL-ED           SOUTH AFRICA                   2                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   3                 0        0      33
Birth       MAL-ED           SOUTH AFRICA                   3                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   4                 0        1      33
Birth       MAL-ED           SOUTH AFRICA                   4                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   5                 0        1      33
Birth       MAL-ED           SOUTH AFRICA                   5                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   6                 0        2      33
Birth       MAL-ED           SOUTH AFRICA                   6                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   7                 0        2      33
Birth       MAL-ED           SOUTH AFRICA                   7                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   8                 0        6      33
Birth       MAL-ED           SOUTH AFRICA                   8                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   9                 0        1      33
Birth       MAL-ED           SOUTH AFRICA                   9                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   10                0        1      33
Birth       MAL-ED           SOUTH AFRICA                   10                1        0      33
Birth       MAL-ED           SOUTH AFRICA                   11                0        7      33
Birth       MAL-ED           SOUTH AFRICA                   11                1        1      33
Birth       MAL-ED           SOUTH AFRICA                   12                0        8      33
Birth       MAL-ED           SOUTH AFRICA                   12                1        0      33
Birth       MAL-ED           SOUTH AFRICA                   13                0        0      33
Birth       MAL-ED           SOUTH AFRICA                   13                1        0      33
Birth       MAL-ED           SOUTH AFRICA                   14                0        1      33
Birth       MAL-ED           SOUTH AFRICA                   14                1        0      33
Birth       MAL-ED           SOUTH AFRICA                   15                0        0      33
Birth       MAL-ED           SOUTH AFRICA                   15                1        0      33
Birth       MAL-ED           SOUTH AFRICA                   16                0        1      33
Birth       MAL-ED           SOUTH AFRICA                   16                1        0      33
Birth       MAL-ED           SOUTH AFRICA                   17                0        0      33
Birth       MAL-ED           SOUTH AFRICA                   17                1        0      33
Birth       MAL-ED           SOUTH AFRICA                   18                0        0      33
Birth       MAL-ED           SOUTH AFRICA                   18                1        0      33
Birth       MAL-ED           SOUTH AFRICA                   19                0        0      33
Birth       MAL-ED           SOUTH AFRICA                   19                1        0      33
Birth       MAL-ED           SOUTH AFRICA                   20                0        0      33
Birth       MAL-ED           SOUTH AFRICA                   20                1        0      33
Birth       MAL-ED           SOUTH AFRICA                   24                0        0      33
Birth       MAL-ED           SOUTH AFRICA                   24                1        0      33
Birth       MAL-ED           SOUTH AFRICA                   25                0        0      33
Birth       MAL-ED           SOUTH AFRICA                   25                1        0      33
Birth       MAL-ED           SOUTH AFRICA                   27                0        0      33
Birth       MAL-ED           SOUTH AFRICA                   27                1        0      33
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0        6     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        3     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 0        4     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 1        2     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 0        5     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 1        1     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 0        6     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 0        3     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 1        2     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 0        3     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 1        2     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 0       51     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 1        8     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 0        1     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 0        2     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                0        1     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                0        2     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                0        1     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                1        0     103
Birth       NIH-Crypto       BANGLADESH                     0                 0      145     732
Birth       NIH-Crypto       BANGLADESH                     0                 1       23     732
Birth       NIH-Crypto       BANGLADESH                     1                 0       19     732
Birth       NIH-Crypto       BANGLADESH                     1                 1        1     732
Birth       NIH-Crypto       BANGLADESH                     2                 0       13     732
Birth       NIH-Crypto       BANGLADESH                     2                 1        0     732
Birth       NIH-Crypto       BANGLADESH                     3                 0       30     732
Birth       NIH-Crypto       BANGLADESH                     3                 1        4     732
Birth       NIH-Crypto       BANGLADESH                     4                 0       34     732
Birth       NIH-Crypto       BANGLADESH                     4                 1        6     732
Birth       NIH-Crypto       BANGLADESH                     5                 0       68     732
Birth       NIH-Crypto       BANGLADESH                     5                 1       16     732
Birth       NIH-Crypto       BANGLADESH                     6                 0       25     732
Birth       NIH-Crypto       BANGLADESH                     6                 1        7     732
Birth       NIH-Crypto       BANGLADESH                     7                 0       45     732
Birth       NIH-Crypto       BANGLADESH                     7                 1       12     732
Birth       NIH-Crypto       BANGLADESH                     8                 0       77     732
Birth       NIH-Crypto       BANGLADESH                     8                 1       10     732
Birth       NIH-Crypto       BANGLADESH                     9                 0       69     732
Birth       NIH-Crypto       BANGLADESH                     9                 1       14     732
Birth       NIH-Crypto       BANGLADESH                     10                0       47     732
Birth       NIH-Crypto       BANGLADESH                     10                1        3     732
Birth       NIH-Crypto       BANGLADESH                     11                0        0     732
Birth       NIH-Crypto       BANGLADESH                     11                1        0     732
Birth       NIH-Crypto       BANGLADESH                     12                0       31     732
Birth       NIH-Crypto       BANGLADESH                     12                1        2     732
Birth       NIH-Crypto       BANGLADESH                     13                0        0     732
Birth       NIH-Crypto       BANGLADESH                     13                1        0     732
Birth       NIH-Crypto       BANGLADESH                     14                0        8     732
Birth       NIH-Crypto       BANGLADESH                     14                1        0     732
Birth       NIH-Crypto       BANGLADESH                     15                0       14     732
Birth       NIH-Crypto       BANGLADESH                     15                1        2     732
Birth       NIH-Crypto       BANGLADESH                     16                0        0     732
Birth       NIH-Crypto       BANGLADESH                     16                1        0     732
Birth       NIH-Crypto       BANGLADESH                     17                0        6     732
Birth       NIH-Crypto       BANGLADESH                     17                1        1     732
Birth       NIH-Crypto       BANGLADESH                     18                0        0     732
Birth       NIH-Crypto       BANGLADESH                     18                1        0     732
Birth       NIH-Crypto       BANGLADESH                     19                0        0     732
Birth       NIH-Crypto       BANGLADESH                     19                1        0     732
Birth       NIH-Crypto       BANGLADESH                     20                0        0     732
Birth       NIH-Crypto       BANGLADESH                     20                1        0     732
Birth       NIH-Crypto       BANGLADESH                     24                0        0     732
Birth       NIH-Crypto       BANGLADESH                     24                1        0     732
Birth       NIH-Crypto       BANGLADESH                     25                0        0     732
Birth       NIH-Crypto       BANGLADESH                     25                1        0     732
Birth       NIH-Crypto       BANGLADESH                     27                0        0     732
Birth       NIH-Crypto       BANGLADESH                     27                1        0     732
Birth       PROBIT           BELARUS                        0                 0        0   13424
Birth       PROBIT           BELARUS                        0                 1        0   13424
Birth       PROBIT           BELARUS                        1                 0        0   13424
Birth       PROBIT           BELARUS                        1                 1        0   13424
Birth       PROBIT           BELARUS                        2                 0        0   13424
Birth       PROBIT           BELARUS                        2                 1        0   13424
Birth       PROBIT           BELARUS                        3                 0        0   13424
Birth       PROBIT           BELARUS                        3                 1        0   13424
Birth       PROBIT           BELARUS                        4                 0        0   13424
Birth       PROBIT           BELARUS                        4                 1        0   13424
Birth       PROBIT           BELARUS                        5                 0        0   13424
Birth       PROBIT           BELARUS                        5                 1        0   13424
Birth       PROBIT           BELARUS                        6                 0        0   13424
Birth       PROBIT           BELARUS                        6                 1        0   13424
Birth       PROBIT           BELARUS                        7                 0        0   13424
Birth       PROBIT           BELARUS                        7                 1        0   13424
Birth       PROBIT           BELARUS                        8                 0       23   13424
Birth       PROBIT           BELARUS                        8                 1        0   13424
Birth       PROBIT           BELARUS                        9                 0        0   13424
Birth       PROBIT           BELARUS                        9                 1        0   13424
Birth       PROBIT           BELARUS                        10                0      294   13424
Birth       PROBIT           BELARUS                        10                1        1   13424
Birth       PROBIT           BELARUS                        11                0        0   13424
Birth       PROBIT           BELARUS                        11                1        0   13424
Birth       PROBIT           BELARUS                        12                0     4992   13424
Birth       PROBIT           BELARUS                        12                1       10   13424
Birth       PROBIT           BELARUS                        13                0     6029   13424
Birth       PROBIT           BELARUS                        13                1       16   13424
Birth       PROBIT           BELARUS                        14                0      333   13424
Birth       PROBIT           BELARUS                        14                1        0   13424
Birth       PROBIT           BELARUS                        15                0        0   13424
Birth       PROBIT           BELARUS                        15                1        0   13424
Birth       PROBIT           BELARUS                        16                0     1720   13424
Birth       PROBIT           BELARUS                        16                1        6   13424
Birth       PROBIT           BELARUS                        17                0        0   13424
Birth       PROBIT           BELARUS                        17                1        0   13424
Birth       PROBIT           BELARUS                        18                0        0   13424
Birth       PROBIT           BELARUS                        18                1        0   13424
Birth       PROBIT           BELARUS                        19                0        0   13424
Birth       PROBIT           BELARUS                        19                1        0   13424
Birth       PROBIT           BELARUS                        20                0        0   13424
Birth       PROBIT           BELARUS                        20                1        0   13424
Birth       PROBIT           BELARUS                        24                0        0   13424
Birth       PROBIT           BELARUS                        24                1        0   13424
Birth       PROBIT           BELARUS                        25                0        0   13424
Birth       PROBIT           BELARUS                        25                1        0   13424
Birth       PROBIT           BELARUS                        27                0        0   13424
Birth       PROBIT           BELARUS                        27                1        0   13424
Birth       PROVIDE          BANGLADESH                     0                 0      149     539
Birth       PROVIDE          BANGLADESH                     0                 1       15     539
Birth       PROVIDE          BANGLADESH                     1                 0        9     539
Birth       PROVIDE          BANGLADESH                     1                 1        0     539
Birth       PROVIDE          BANGLADESH                     2                 0       10     539
Birth       PROVIDE          BANGLADESH                     2                 1        4     539
Birth       PROVIDE          BANGLADESH                     3                 0       24     539
Birth       PROVIDE          BANGLADESH                     3                 1        0     539
Birth       PROVIDE          BANGLADESH                     4                 0       38     539
Birth       PROVIDE          BANGLADESH                     4                 1        2     539
Birth       PROVIDE          BANGLADESH                     5                 0       66     539
Birth       PROVIDE          BANGLADESH                     5                 1        3     539
Birth       PROVIDE          BANGLADESH                     6                 0       21     539
Birth       PROVIDE          BANGLADESH                     6                 1        3     539
Birth       PROVIDE          BANGLADESH                     7                 0       30     539
Birth       PROVIDE          BANGLADESH                     7                 1        2     539
Birth       PROVIDE          BANGLADESH                     8                 0       36     539
Birth       PROVIDE          BANGLADESH                     8                 1        6     539
Birth       PROVIDE          BANGLADESH                     9                 0       41     539
Birth       PROVIDE          BANGLADESH                     9                 1        4     539
Birth       PROVIDE          BANGLADESH                     10                0       23     539
Birth       PROVIDE          BANGLADESH                     10                1        3     539
Birth       PROVIDE          BANGLADESH                     11                0       18     539
Birth       PROVIDE          BANGLADESH                     11                1        2     539
Birth       PROVIDE          BANGLADESH                     12                0        2     539
Birth       PROVIDE          BANGLADESH                     12                1        0     539
Birth       PROVIDE          BANGLADESH                     13                0        0     539
Birth       PROVIDE          BANGLADESH                     13                1        0     539
Birth       PROVIDE          BANGLADESH                     14                0       16     539
Birth       PROVIDE          BANGLADESH                     14                1        1     539
Birth       PROVIDE          BANGLADESH                     15                0        6     539
Birth       PROVIDE          BANGLADESH                     15                1        0     539
Birth       PROVIDE          BANGLADESH                     16                0        2     539
Birth       PROVIDE          BANGLADESH                     16                1        2     539
Birth       PROVIDE          BANGLADESH                     17                0        0     539
Birth       PROVIDE          BANGLADESH                     17                1        0     539
Birth       PROVIDE          BANGLADESH                     18                0        0     539
Birth       PROVIDE          BANGLADESH                     18                1        0     539
Birth       PROVIDE          BANGLADESH                     19                0        0     539
Birth       PROVIDE          BANGLADESH                     19                1        1     539
Birth       PROVIDE          BANGLADESH                     20                0        0     539
Birth       PROVIDE          BANGLADESH                     20                1        0     539
Birth       PROVIDE          BANGLADESH                     24                0        0     539
Birth       PROVIDE          BANGLADESH                     24                1        0     539
Birth       PROVIDE          BANGLADESH                     25                0        0     539
Birth       PROVIDE          BANGLADESH                     25                1        0     539
Birth       PROVIDE          BANGLADESH                     27                0        0     539
Birth       PROVIDE          BANGLADESH                     27                1        0     539
Birth       SAS-CompFeed     INDIA                          0                 0      118    1249
Birth       SAS-CompFeed     INDIA                          0                 1       47    1249
Birth       SAS-CompFeed     INDIA                          1                 0        0    1249
Birth       SAS-CompFeed     INDIA                          1                 1        0    1249
Birth       SAS-CompFeed     INDIA                          2                 0        4    1249
Birth       SAS-CompFeed     INDIA                          2                 1        2    1249
Birth       SAS-CompFeed     INDIA                          3                 0        8    1249
Birth       SAS-CompFeed     INDIA                          3                 1        6    1249
Birth       SAS-CompFeed     INDIA                          4                 0       14    1249
Birth       SAS-CompFeed     INDIA                          4                 1        6    1249
Birth       SAS-CompFeed     INDIA                          5                 0       50    1249
Birth       SAS-CompFeed     INDIA                          5                 1       29    1249
Birth       SAS-CompFeed     INDIA                          6                 0       17    1249
Birth       SAS-CompFeed     INDIA                          6                 1        5    1249
Birth       SAS-CompFeed     INDIA                          7                 0       69    1249
Birth       SAS-CompFeed     INDIA                          7                 1       29    1249
Birth       SAS-CompFeed     INDIA                          8                 0      100    1249
Birth       SAS-CompFeed     INDIA                          8                 1       39    1249
Birth       SAS-CompFeed     INDIA                          9                 0       54    1249
Birth       SAS-CompFeed     INDIA                          9                 1       27    1249
Birth       SAS-CompFeed     INDIA                          10                0      237    1249
Birth       SAS-CompFeed     INDIA                          10                1       89    1249
Birth       SAS-CompFeed     INDIA                          11                0       27    1249
Birth       SAS-CompFeed     INDIA                          11                1       10    1249
Birth       SAS-CompFeed     INDIA                          12                0      144    1249
Birth       SAS-CompFeed     INDIA                          12                1       36    1249
Birth       SAS-CompFeed     INDIA                          13                0        3    1249
Birth       SAS-CompFeed     INDIA                          13                1        1    1249
Birth       SAS-CompFeed     INDIA                          14                0        6    1249
Birth       SAS-CompFeed     INDIA                          14                1        3    1249
Birth       SAS-CompFeed     INDIA                          15                0       32    1249
Birth       SAS-CompFeed     INDIA                          15                1       14    1249
Birth       SAS-CompFeed     INDIA                          16                0        5    1249
Birth       SAS-CompFeed     INDIA                          16                1        2    1249
Birth       SAS-CompFeed     INDIA                          17                0        9    1249
Birth       SAS-CompFeed     INDIA                          17                1        3    1249
Birth       SAS-CompFeed     INDIA                          18                0        3    1249
Birth       SAS-CompFeed     INDIA                          18                1        0    1249
Birth       SAS-CompFeed     INDIA                          19                0        1    1249
Birth       SAS-CompFeed     INDIA                          19                1        0    1249
Birth       SAS-CompFeed     INDIA                          20                0        0    1249
Birth       SAS-CompFeed     INDIA                          20                1        0    1249
Birth       SAS-CompFeed     INDIA                          24                0        0    1249
Birth       SAS-CompFeed     INDIA                          24                1        0    1249
Birth       SAS-CompFeed     INDIA                          25                0        0    1249
Birth       SAS-CompFeed     INDIA                          25                1        0    1249
Birth       SAS-CompFeed     INDIA                          27                0        0    1249
Birth       SAS-CompFeed     INDIA                          27                1        0    1249
Birth       ZVITAMBO         ZIMBABWE                       0                 0       56   13501
Birth       ZVITAMBO         ZIMBABWE                       0                 1        5   13501
Birth       ZVITAMBO         ZIMBABWE                       1                 0        1   13501
Birth       ZVITAMBO         ZIMBABWE                       1                 1        1   13501
Birth       ZVITAMBO         ZIMBABWE                       2                 0        3   13501
Birth       ZVITAMBO         ZIMBABWE                       2                 1        1   13501
Birth       ZVITAMBO         ZIMBABWE                       3                 0       14   13501
Birth       ZVITAMBO         ZIMBABWE                       3                 1        1   13501
Birth       ZVITAMBO         ZIMBABWE                       4                 0       21   13501
Birth       ZVITAMBO         ZIMBABWE                       4                 1        2   13501
Birth       ZVITAMBO         ZIMBABWE                       5                 0       25   13501
Birth       ZVITAMBO         ZIMBABWE                       5                 1        7   13501
Birth       ZVITAMBO         ZIMBABWE                       6                 0       38   13501
Birth       ZVITAMBO         ZIMBABWE                       6                 1        4   13501
Birth       ZVITAMBO         ZIMBABWE                       7                 0      693   13501
Birth       ZVITAMBO         ZIMBABWE                       7                 1       91   13501
Birth       ZVITAMBO         ZIMBABWE                       8                 0       98   13501
Birth       ZVITAMBO         ZIMBABWE                       8                 1        4   13501
Birth       ZVITAMBO         ZIMBABWE                       9                 0      789   13501
Birth       ZVITAMBO         ZIMBABWE                       9                 1      105   13501
Birth       ZVITAMBO         ZIMBABWE                       10                0      281   13501
Birth       ZVITAMBO         ZIMBABWE                       10                1       41   13501
Birth       ZVITAMBO         ZIMBABWE                       11                0     9209   13501
Birth       ZVITAMBO         ZIMBABWE                       11                1     1029   13501
Birth       ZVITAMBO         ZIMBABWE                       12                0       51   13501
Birth       ZVITAMBO         ZIMBABWE                       12                1        6   13501
Birth       ZVITAMBO         ZIMBABWE                       13                0      834   13501
Birth       ZVITAMBO         ZIMBABWE                       13                1       91   13501
Birth       ZVITAMBO         ZIMBABWE                       14                0        0   13501
Birth       ZVITAMBO         ZIMBABWE                       14                1        0   13501
Birth       ZVITAMBO         ZIMBABWE                       15                0        0   13501
Birth       ZVITAMBO         ZIMBABWE                       15                1        0   13501
Birth       ZVITAMBO         ZIMBABWE                       16                0        0   13501
Birth       ZVITAMBO         ZIMBABWE                       16                1        0   13501
Birth       ZVITAMBO         ZIMBABWE                       17                0        0   13501
Birth       ZVITAMBO         ZIMBABWE                       17                1        0   13501
Birth       ZVITAMBO         ZIMBABWE                       18                0        0   13501
Birth       ZVITAMBO         ZIMBABWE                       18                1        0   13501
Birth       ZVITAMBO         ZIMBABWE                       19                0        0   13501
Birth       ZVITAMBO         ZIMBABWE                       19                1        0   13501
Birth       ZVITAMBO         ZIMBABWE                       20                0        0   13501
Birth       ZVITAMBO         ZIMBABWE                       20                1        0   13501
Birth       ZVITAMBO         ZIMBABWE                       24                0        0   13501
Birth       ZVITAMBO         ZIMBABWE                       24                1        0   13501
Birth       ZVITAMBO         ZIMBABWE                       25                0        0   13501
Birth       ZVITAMBO         ZIMBABWE                       25                1        0   13501
Birth       ZVITAMBO         ZIMBABWE                       27                0        0   13501
Birth       ZVITAMBO         ZIMBABWE                       27                1        0   13501
6 months    COHORTS          GUATEMALA                      0                 0      239     904
6 months    COHORTS          GUATEMALA                      0                 1      167     904
6 months    COHORTS          GUATEMALA                      1                 0       27     904
6 months    COHORTS          GUATEMALA                      1                 1       18     904
6 months    COHORTS          GUATEMALA                      2                 0       99     904
6 months    COHORTS          GUATEMALA                      2                 1       71     904
6 months    COHORTS          GUATEMALA                      3                 0       73     904
6 months    COHORTS          GUATEMALA                      3                 1       45     904
6 months    COHORTS          GUATEMALA                      4                 0       26     904
6 months    COHORTS          GUATEMALA                      4                 1       33     904
6 months    COHORTS          GUATEMALA                      5                 0       10     904
6 months    COHORTS          GUATEMALA                      5                 1        6     904
6 months    COHORTS          GUATEMALA                      6                 0       53     904
6 months    COHORTS          GUATEMALA                      6                 1       26     904
6 months    COHORTS          GUATEMALA                      7                 0        3     904
6 months    COHORTS          GUATEMALA                      7                 1        0     904
6 months    COHORTS          GUATEMALA                      8                 0        1     904
6 months    COHORTS          GUATEMALA                      8                 1        0     904
6 months    COHORTS          GUATEMALA                      9                 0        0     904
6 months    COHORTS          GUATEMALA                      9                 1        0     904
6 months    COHORTS          GUATEMALA                      10                0        1     904
6 months    COHORTS          GUATEMALA                      10                1        0     904
6 months    COHORTS          GUATEMALA                      11                0        0     904
6 months    COHORTS          GUATEMALA                      11                1        0     904
6 months    COHORTS          GUATEMALA                      12                0        4     904
6 months    COHORTS          GUATEMALA                      12                1        1     904
6 months    COHORTS          GUATEMALA                      13                0        0     904
6 months    COHORTS          GUATEMALA                      13                1        0     904
6 months    COHORTS          GUATEMALA                      14                0        1     904
6 months    COHORTS          GUATEMALA                      14                1        0     904
6 months    COHORTS          GUATEMALA                      15                0        0     904
6 months    COHORTS          GUATEMALA                      15                1        0     904
6 months    COHORTS          GUATEMALA                      16                0        0     904
6 months    COHORTS          GUATEMALA                      16                1        0     904
6 months    COHORTS          GUATEMALA                      17                0        0     904
6 months    COHORTS          GUATEMALA                      17                1        0     904
6 months    COHORTS          GUATEMALA                      18                0        0     904
6 months    COHORTS          GUATEMALA                      18                1        0     904
6 months    COHORTS          GUATEMALA                      19                0        0     904
6 months    COHORTS          GUATEMALA                      19                1        0     904
6 months    COHORTS          GUATEMALA                      20                0        0     904
6 months    COHORTS          GUATEMALA                      20                1        0     904
6 months    COHORTS          GUATEMALA                      24                0        0     904
6 months    COHORTS          GUATEMALA                      24                1        0     904
6 months    COHORTS          GUATEMALA                      25                0        0     904
6 months    COHORTS          GUATEMALA                      25                1        0     904
6 months    COHORTS          GUATEMALA                      27                0        0     904
6 months    COHORTS          GUATEMALA                      27                1        0     904
6 months    COHORTS          INDIA                          0                 0       81    1385
6 months    COHORTS          INDIA                          0                 1       38    1385
6 months    COHORTS          INDIA                          1                 0        0    1385
6 months    COHORTS          INDIA                          1                 1        0    1385
6 months    COHORTS          INDIA                          2                 0        0    1385
6 months    COHORTS          INDIA                          2                 1        0    1385
6 months    COHORTS          INDIA                          3                 0       92    1385
6 months    COHORTS          INDIA                          3                 1       36    1385
6 months    COHORTS          INDIA                          4                 0        0    1385
6 months    COHORTS          INDIA                          4                 1        0    1385
6 months    COHORTS          INDIA                          5                 0        0    1385
6 months    COHORTS          INDIA                          5                 1        0    1385
6 months    COHORTS          INDIA                          6                 0        0    1385
6 months    COHORTS          INDIA                          6                 1        0    1385
6 months    COHORTS          INDIA                          7                 0        0    1385
6 months    COHORTS          INDIA                          7                 1        0    1385
6 months    COHORTS          INDIA                          8                 0      161    1385
6 months    COHORTS          INDIA                          8                 1       42    1385
6 months    COHORTS          INDIA                          9                 0        0    1385
6 months    COHORTS          INDIA                          9                 1        0    1385
6 months    COHORTS          INDIA                          10                0        0    1385
6 months    COHORTS          INDIA                          10                1        0    1385
6 months    COHORTS          INDIA                          11                0        0    1385
6 months    COHORTS          INDIA                          11                1        0    1385
6 months    COHORTS          INDIA                          12                0      327    1385
6 months    COHORTS          INDIA                          12                1       64    1385
6 months    COHORTS          INDIA                          13                0        0    1385
6 months    COHORTS          INDIA                          13                1        0    1385
6 months    COHORTS          INDIA                          14                0      128    1385
6 months    COHORTS          INDIA                          14                1       24    1385
6 months    COHORTS          INDIA                          15                0      250    1385
6 months    COHORTS          INDIA                          15                1       23    1385
6 months    COHORTS          INDIA                          16                0        0    1385
6 months    COHORTS          INDIA                          16                1        0    1385
6 months    COHORTS          INDIA                          17                0      106    1385
6 months    COHORTS          INDIA                          17                1       13    1385
6 months    COHORTS          INDIA                          18                0        0    1385
6 months    COHORTS          INDIA                          18                1        0    1385
6 months    COHORTS          INDIA                          19                0        0    1385
6 months    COHORTS          INDIA                          19                1        0    1385
6 months    COHORTS          INDIA                          20                0        0    1385
6 months    COHORTS          INDIA                          20                1        0    1385
6 months    COHORTS          INDIA                          24                0        0    1385
6 months    COHORTS          INDIA                          24                1        0    1385
6 months    COHORTS          INDIA                          25                0        0    1385
6 months    COHORTS          INDIA                          25                1        0    1385
6 months    COHORTS          INDIA                          27                0        0    1385
6 months    COHORTS          INDIA                          27                1        0    1385
6 months    COHORTS          PHILIPPINES                    0                 0       33    2564
6 months    COHORTS          PHILIPPINES                    0                 1       22    2564
6 months    COHORTS          PHILIPPINES                    1                 0       20    2564
6 months    COHORTS          PHILIPPINES                    1                 1       12    2564
6 months    COHORTS          PHILIPPINES                    2                 0       60    2564
6 months    COHORTS          PHILIPPINES                    2                 1       28    2564
6 months    COHORTS          PHILIPPINES                    3                 0      113    2564
6 months    COHORTS          PHILIPPINES                    3                 1       42    2564
6 months    COHORTS          PHILIPPINES                    4                 0      181    2564
6 months    COHORTS          PHILIPPINES                    4                 1       56    2564
6 months    COHORTS          PHILIPPINES                    5                 0      137    2564
6 months    COHORTS          PHILIPPINES                    5                 1       42    2564
6 months    COHORTS          PHILIPPINES                    6                 0      456    2564
6 months    COHORTS          PHILIPPINES                    6                 1      140    2564
6 months    COHORTS          PHILIPPINES                    7                 0      106    2564
6 months    COHORTS          PHILIPPINES                    7                 1       26    2564
6 months    COHORTS          PHILIPPINES                    8                 0      163    2564
6 months    COHORTS          PHILIPPINES                    8                 1       36    2564
6 months    COHORTS          PHILIPPINES                    9                 0      144    2564
6 months    COHORTS          PHILIPPINES                    9                 1       32    2564
6 months    COHORTS          PHILIPPINES                    10                0      231    2564
6 months    COHORTS          PHILIPPINES                    10                1       60    2564
6 months    COHORTS          PHILIPPINES                    11                0       49    2564
6 months    COHORTS          PHILIPPINES                    11                1        8    2564
6 months    COHORTS          PHILIPPINES                    12                0      132    2564
6 months    COHORTS          PHILIPPINES                    12                1       16    2564
6 months    COHORTS          PHILIPPINES                    13                0       52    2564
6 months    COHORTS          PHILIPPINES                    13                1        6    2564
6 months    COHORTS          PHILIPPINES                    14                0      105    2564
6 months    COHORTS          PHILIPPINES                    14                1       15    2564
6 months    COHORTS          PHILIPPINES                    15                0       32    2564
6 months    COHORTS          PHILIPPINES                    15                1        1    2564
6 months    COHORTS          PHILIPPINES                    16                0        4    2564
6 months    COHORTS          PHILIPPINES                    16                1        0    2564
6 months    COHORTS          PHILIPPINES                    17                0        2    2564
6 months    COHORTS          PHILIPPINES                    17                1        0    2564
6 months    COHORTS          PHILIPPINES                    18                0        2    2564
6 months    COHORTS          PHILIPPINES                    18                1        0    2564
6 months    COHORTS          PHILIPPINES                    19                0        0    2564
6 months    COHORTS          PHILIPPINES                    19                1        0    2564
6 months    COHORTS          PHILIPPINES                    20                0        0    2564
6 months    COHORTS          PHILIPPINES                    20                1        0    2564
6 months    COHORTS          PHILIPPINES                    24                0        0    2564
6 months    COHORTS          PHILIPPINES                    24                1        0    2564
6 months    COHORTS          PHILIPPINES                    25                0        0    2564
6 months    COHORTS          PHILIPPINES                    25                1        0    2564
6 months    COHORTS          PHILIPPINES                    27                0        0    2564
6 months    COHORTS          PHILIPPINES                    27                1        0    2564
6 months    GMS-Nepal        NEPAL                          0                 0      183     563
6 months    GMS-Nepal        NEPAL                          0                 1       60     563
6 months    GMS-Nepal        NEPAL                          1                 0        0     563
6 months    GMS-Nepal        NEPAL                          1                 1        0     563
6 months    GMS-Nepal        NEPAL                          2                 0        0     563
6 months    GMS-Nepal        NEPAL                          2                 1        0     563
6 months    GMS-Nepal        NEPAL                          3                 0        0     563
6 months    GMS-Nepal        NEPAL                          3                 1        0     563
6 months    GMS-Nepal        NEPAL                          4                 0        0     563
6 months    GMS-Nepal        NEPAL                          4                 1        0     563
6 months    GMS-Nepal        NEPAL                          5                 0       66     563
6 months    GMS-Nepal        NEPAL                          5                 1       25     563
6 months    GMS-Nepal        NEPAL                          6                 0        0     563
6 months    GMS-Nepal        NEPAL                          6                 1        0     563
6 months    GMS-Nepal        NEPAL                          7                 0        0     563
6 months    GMS-Nepal        NEPAL                          7                 1        0     563
6 months    GMS-Nepal        NEPAL                          8                 0       76     563
6 months    GMS-Nepal        NEPAL                          8                 1       16     563
6 months    GMS-Nepal        NEPAL                          9                 0        0     563
6 months    GMS-Nepal        NEPAL                          9                 1        0     563
6 months    GMS-Nepal        NEPAL                          10                0       88     563
6 months    GMS-Nepal        NEPAL                          10                1       17     563
6 months    GMS-Nepal        NEPAL                          11                0        0     563
6 months    GMS-Nepal        NEPAL                          11                1        0     563
6 months    GMS-Nepal        NEPAL                          12                0       28     563
6 months    GMS-Nepal        NEPAL                          12                1        4     563
6 months    GMS-Nepal        NEPAL                          13                0        0     563
6 months    GMS-Nepal        NEPAL                          13                1        0     563
6 months    GMS-Nepal        NEPAL                          14                0        0     563
6 months    GMS-Nepal        NEPAL                          14                1        0     563
6 months    GMS-Nepal        NEPAL                          15                0        0     563
6 months    GMS-Nepal        NEPAL                          15                1        0     563
6 months    GMS-Nepal        NEPAL                          16                0        0     563
6 months    GMS-Nepal        NEPAL                          16                1        0     563
6 months    GMS-Nepal        NEPAL                          17                0        0     563
6 months    GMS-Nepal        NEPAL                          17                1        0     563
6 months    GMS-Nepal        NEPAL                          18                0        0     563
6 months    GMS-Nepal        NEPAL                          18                1        0     563
6 months    GMS-Nepal        NEPAL                          19                0        0     563
6 months    GMS-Nepal        NEPAL                          19                1        0     563
6 months    GMS-Nepal        NEPAL                          20                0        0     563
6 months    GMS-Nepal        NEPAL                          20                1        0     563
6 months    GMS-Nepal        NEPAL                          24                0        0     563
6 months    GMS-Nepal        NEPAL                          24                1        0     563
6 months    GMS-Nepal        NEPAL                          25                0        0     563
6 months    GMS-Nepal        NEPAL                          25                1        0     563
6 months    GMS-Nepal        NEPAL                          27                0        0     563
6 months    GMS-Nepal        NEPAL                          27                1        0     563
6 months    LCNI-5           MALAWI                         0                 0      183     812
6 months    LCNI-5           MALAWI                         0                 1      107     812
6 months    LCNI-5           MALAWI                         1                 0        7     812
6 months    LCNI-5           MALAWI                         1                 1        4     812
6 months    LCNI-5           MALAWI                         2                 0       16     812
6 months    LCNI-5           MALAWI                         2                 1       16     812
6 months    LCNI-5           MALAWI                         3                 0       21     812
6 months    LCNI-5           MALAWI                         3                 1       18     812
6 months    LCNI-5           MALAWI                         4                 0       40     812
6 months    LCNI-5           MALAWI                         4                 1       19     812
6 months    LCNI-5           MALAWI                         5                 0       38     812
6 months    LCNI-5           MALAWI                         5                 1       23     812
6 months    LCNI-5           MALAWI                         6                 0       46     812
6 months    LCNI-5           MALAWI                         6                 1       23     812
6 months    LCNI-5           MALAWI                         7                 0       37     812
6 months    LCNI-5           MALAWI                         7                 1       31     812
6 months    LCNI-5           MALAWI                         8                 0       59     812
6 months    LCNI-5           MALAWI                         8                 1       32     812
6 months    LCNI-5           MALAWI                         9                 0       11     812
6 months    LCNI-5           MALAWI                         9                 1        1     812
6 months    LCNI-5           MALAWI                         10                0       12     812
6 months    LCNI-5           MALAWI                         10                1        4     812
6 months    LCNI-5           MALAWI                         11                0        4     812
6 months    LCNI-5           MALAWI                         11                1        3     812
6 months    LCNI-5           MALAWI                         12                0       40     812
6 months    LCNI-5           MALAWI                         12                1       12     812
6 months    LCNI-5           MALAWI                         13                0        0     812
6 months    LCNI-5           MALAWI                         13                1        1     812
6 months    LCNI-5           MALAWI                         14                0        2     812
6 months    LCNI-5           MALAWI                         14                1        1     812
6 months    LCNI-5           MALAWI                         15                0        0     812
6 months    LCNI-5           MALAWI                         15                1        0     812
6 months    LCNI-5           MALAWI                         16                0        1     812
6 months    LCNI-5           MALAWI                         16                1        0     812
6 months    LCNI-5           MALAWI                         17                0        0     812
6 months    LCNI-5           MALAWI                         17                1        0     812
6 months    LCNI-5           MALAWI                         18                0        0     812
6 months    LCNI-5           MALAWI                         18                1        0     812
6 months    LCNI-5           MALAWI                         19                0        0     812
6 months    LCNI-5           MALAWI                         19                1        0     812
6 months    LCNI-5           MALAWI                         20                0        0     812
6 months    LCNI-5           MALAWI                         20                1        0     812
6 months    LCNI-5           MALAWI                         24                0        0     812
6 months    LCNI-5           MALAWI                         24                1        0     812
6 months    LCNI-5           MALAWI                         25                0        0     812
6 months    LCNI-5           MALAWI                         25                1        0     812
6 months    LCNI-5           MALAWI                         27                0        0     812
6 months    LCNI-5           MALAWI                         27                1        0     812
6 months    MAL-ED           BANGLADESH                     0                 0        0     132
6 months    MAL-ED           BANGLADESH                     0                 1        0     132
6 months    MAL-ED           BANGLADESH                     1                 0        6     132
6 months    MAL-ED           BANGLADESH                     1                 1        0     132
6 months    MAL-ED           BANGLADESH                     2                 0       10     132
6 months    MAL-ED           BANGLADESH                     2                 1        2     132
6 months    MAL-ED           BANGLADESH                     3                 0        8     132
6 months    MAL-ED           BANGLADESH                     3                 1        3     132
6 months    MAL-ED           BANGLADESH                     4                 0        6     132
6 months    MAL-ED           BANGLADESH                     4                 1        1     132
6 months    MAL-ED           BANGLADESH                     5                 0       25     132
6 months    MAL-ED           BANGLADESH                     5                 1        4     132
6 months    MAL-ED           BANGLADESH                     6                 0        6     132
6 months    MAL-ED           BANGLADESH                     6                 1        2     132
6 months    MAL-ED           BANGLADESH                     7                 0        8     132
6 months    MAL-ED           BANGLADESH                     7                 1        1     132
6 months    MAL-ED           BANGLADESH                     8                 0       14     132
6 months    MAL-ED           BANGLADESH                     8                 1        2     132
6 months    MAL-ED           BANGLADESH                     9                 0       11     132
6 months    MAL-ED           BANGLADESH                     9                 1        2     132
6 months    MAL-ED           BANGLADESH                     10                0        9     132
6 months    MAL-ED           BANGLADESH                     10                1        0     132
6 months    MAL-ED           BANGLADESH                     11                0        0     132
6 months    MAL-ED           BANGLADESH                     11                1        0     132
6 months    MAL-ED           BANGLADESH                     12                0        8     132
6 months    MAL-ED           BANGLADESH                     12                1        2     132
6 months    MAL-ED           BANGLADESH                     13                0        0     132
6 months    MAL-ED           BANGLADESH                     13                1        0     132
6 months    MAL-ED           BANGLADESH                     14                0        0     132
6 months    MAL-ED           BANGLADESH                     14                1        0     132
6 months    MAL-ED           BANGLADESH                     15                0        0     132
6 months    MAL-ED           BANGLADESH                     15                1        0     132
6 months    MAL-ED           BANGLADESH                     16                0        2     132
6 months    MAL-ED           BANGLADESH                     16                1        0     132
6 months    MAL-ED           BANGLADESH                     17                0        0     132
6 months    MAL-ED           BANGLADESH                     17                1        0     132
6 months    MAL-ED           BANGLADESH                     18                0        0     132
6 months    MAL-ED           BANGLADESH                     18                1        0     132
6 months    MAL-ED           BANGLADESH                     19                0        0     132
6 months    MAL-ED           BANGLADESH                     19                1        0     132
6 months    MAL-ED           BANGLADESH                     20                0        0     132
6 months    MAL-ED           BANGLADESH                     20                1        0     132
6 months    MAL-ED           BANGLADESH                     24                0        0     132
6 months    MAL-ED           BANGLADESH                     24                1        0     132
6 months    MAL-ED           BANGLADESH                     25                0        0     132
6 months    MAL-ED           BANGLADESH                     25                1        0     132
6 months    MAL-ED           BANGLADESH                     27                0        0     132
6 months    MAL-ED           BANGLADESH                     27                1        0     132
6 months    MAL-ED           INDIA                          0                 0        0     138
6 months    MAL-ED           INDIA                          0                 1        0     138
6 months    MAL-ED           INDIA                          1                 0        0     138
6 months    MAL-ED           INDIA                          1                 1        0     138
6 months    MAL-ED           INDIA                          2                 0        5     138
6 months    MAL-ED           INDIA                          2                 1        1     138
6 months    MAL-ED           INDIA                          3                 0        7     138
6 months    MAL-ED           INDIA                          3                 1        2     138
6 months    MAL-ED           INDIA                          4                 0        5     138
6 months    MAL-ED           INDIA                          4                 1        1     138
6 months    MAL-ED           INDIA                          5                 0       27     138
6 months    MAL-ED           INDIA                          5                 1        6     138
6 months    MAL-ED           INDIA                          6                 0        9     138
6 months    MAL-ED           INDIA                          6                 1        2     138
6 months    MAL-ED           INDIA                          7                 0       11     138
6 months    MAL-ED           INDIA                          7                 1        0     138
6 months    MAL-ED           INDIA                          8                 0       16     138
6 months    MAL-ED           INDIA                          8                 1        3     138
6 months    MAL-ED           INDIA                          9                 0       22     138
6 months    MAL-ED           INDIA                          9                 1        4     138
6 months    MAL-ED           INDIA                          10                0        6     138
6 months    MAL-ED           INDIA                          10                1        0     138
6 months    MAL-ED           INDIA                          11                0        1     138
6 months    MAL-ED           INDIA                          11                1        1     138
6 months    MAL-ED           INDIA                          12                0        2     138
6 months    MAL-ED           INDIA                          12                1        1     138
6 months    MAL-ED           INDIA                          13                0        1     138
6 months    MAL-ED           INDIA                          13                1        0     138
6 months    MAL-ED           INDIA                          14                0        2     138
6 months    MAL-ED           INDIA                          14                1        0     138
6 months    MAL-ED           INDIA                          15                0        2     138
6 months    MAL-ED           INDIA                          15                1        0     138
6 months    MAL-ED           INDIA                          16                0        0     138
6 months    MAL-ED           INDIA                          16                1        0     138
6 months    MAL-ED           INDIA                          17                0        0     138
6 months    MAL-ED           INDIA                          17                1        0     138
6 months    MAL-ED           INDIA                          18                0        1     138
6 months    MAL-ED           INDIA                          18                1        0     138
6 months    MAL-ED           INDIA                          19                0        0     138
6 months    MAL-ED           INDIA                          19                1        0     138
6 months    MAL-ED           INDIA                          20                0        0     138
6 months    MAL-ED           INDIA                          20                1        0     138
6 months    MAL-ED           INDIA                          24                0        0     138
6 months    MAL-ED           INDIA                          24                1        0     138
6 months    MAL-ED           INDIA                          25                0        0     138
6 months    MAL-ED           INDIA                          25                1        0     138
6 months    MAL-ED           INDIA                          27                0        0     138
6 months    MAL-ED           INDIA                          27                1        0     138
6 months    MAL-ED           NEPAL                          0                 0        0      95
6 months    MAL-ED           NEPAL                          0                 1        0      95
6 months    MAL-ED           NEPAL                          1                 0        0      95
6 months    MAL-ED           NEPAL                          1                 1        0      95
6 months    MAL-ED           NEPAL                          2                 0        4      95
6 months    MAL-ED           NEPAL                          2                 1        0      95
6 months    MAL-ED           NEPAL                          3                 0        3      95
6 months    MAL-ED           NEPAL                          3                 1        0      95
6 months    MAL-ED           NEPAL                          4                 0        9      95
6 months    MAL-ED           NEPAL                          4                 1        1      95
6 months    MAL-ED           NEPAL                          5                 0        6      95
6 months    MAL-ED           NEPAL                          5                 1        0      95
6 months    MAL-ED           NEPAL                          6                 0        4      95
6 months    MAL-ED           NEPAL                          6                 1        0      95
6 months    MAL-ED           NEPAL                          7                 0        8      95
6 months    MAL-ED           NEPAL                          7                 1        1      95
6 months    MAL-ED           NEPAL                          8                 0        9      95
6 months    MAL-ED           NEPAL                          8                 1        3      95
6 months    MAL-ED           NEPAL                          9                 0        7      95
6 months    MAL-ED           NEPAL                          9                 1        0      95
6 months    MAL-ED           NEPAL                          10                0       26      95
6 months    MAL-ED           NEPAL                          10                1        0      95
6 months    MAL-ED           NEPAL                          11                0        1      95
6 months    MAL-ED           NEPAL                          11                1        0      95
6 months    MAL-ED           NEPAL                          12                0        7      95
6 months    MAL-ED           NEPAL                          12                1        0      95
6 months    MAL-ED           NEPAL                          13                0        0      95
6 months    MAL-ED           NEPAL                          13                1        0      95
6 months    MAL-ED           NEPAL                          14                0        0      95
6 months    MAL-ED           NEPAL                          14                1        0      95
6 months    MAL-ED           NEPAL                          15                0        1      95
6 months    MAL-ED           NEPAL                          15                1        0      95
6 months    MAL-ED           NEPAL                          16                0        1      95
6 months    MAL-ED           NEPAL                          16                1        0      95
6 months    MAL-ED           NEPAL                          17                0        3      95
6 months    MAL-ED           NEPAL                          17                1        0      95
6 months    MAL-ED           NEPAL                          18                0        1      95
6 months    MAL-ED           NEPAL                          18                1        0      95
6 months    MAL-ED           NEPAL                          19                0        0      95
6 months    MAL-ED           NEPAL                          19                1        0      95
6 months    MAL-ED           NEPAL                          20                0        0      95
6 months    MAL-ED           NEPAL                          20                1        0      95
6 months    MAL-ED           NEPAL                          24                0        0      95
6 months    MAL-ED           NEPAL                          24                1        0      95
6 months    MAL-ED           NEPAL                          25                0        0      95
6 months    MAL-ED           NEPAL                          25                1        0      95
6 months    MAL-ED           NEPAL                          27                0        0      95
6 months    MAL-ED           NEPAL                          27                1        0      95
6 months    MAL-ED           PERU                           0                 0        0     224
6 months    MAL-ED           PERU                           0                 1        1     224
6 months    MAL-ED           PERU                           1                 0        1     224
6 months    MAL-ED           PERU                           1                 1        0     224
6 months    MAL-ED           PERU                           2                 0        0     224
6 months    MAL-ED           PERU                           2                 1        0     224
6 months    MAL-ED           PERU                           3                 0        7     224
6 months    MAL-ED           PERU                           3                 1        1     224
6 months    MAL-ED           PERU                           4                 0        3     224
6 months    MAL-ED           PERU                           4                 1        1     224
6 months    MAL-ED           PERU                           5                 0        4     224
6 months    MAL-ED           PERU                           5                 1        3     224
6 months    MAL-ED           PERU                           6                 0       17     224
6 months    MAL-ED           PERU                           6                 1        6     224
6 months    MAL-ED           PERU                           7                 0       14     224
6 months    MAL-ED           PERU                           7                 1        2     224
6 months    MAL-ED           PERU                           8                 0       17     224
6 months    MAL-ED           PERU                           8                 1        3     224
6 months    MAL-ED           PERU                           9                 0       20     224
6 months    MAL-ED           PERU                           9                 1        6     224
6 months    MAL-ED           PERU                           10                0       10     224
6 months    MAL-ED           PERU                           10                1        1     224
6 months    MAL-ED           PERU                           11                0       72     224
6 months    MAL-ED           PERU                           11                1       16     224
6 months    MAL-ED           PERU                           12                0        0     224
6 months    MAL-ED           PERU                           12                1        1     224
6 months    MAL-ED           PERU                           13                0        2     224
6 months    MAL-ED           PERU                           13                1        2     224
6 months    MAL-ED           PERU                           14                0        3     224
6 months    MAL-ED           PERU                           14                1        1     224
6 months    MAL-ED           PERU                           15                0        1     224
6 months    MAL-ED           PERU                           15                1        0     224
6 months    MAL-ED           PERU                           16                0        1     224
6 months    MAL-ED           PERU                           16                1        0     224
6 months    MAL-ED           PERU                           17                0        1     224
6 months    MAL-ED           PERU                           17                1        0     224
6 months    MAL-ED           PERU                           18                0        3     224
6 months    MAL-ED           PERU                           18                1        2     224
6 months    MAL-ED           PERU                           19                0        0     224
6 months    MAL-ED           PERU                           19                1        0     224
6 months    MAL-ED           PERU                           20                0        2     224
6 months    MAL-ED           PERU                           20                1        0     224
6 months    MAL-ED           PERU                           24                0        0     224
6 months    MAL-ED           PERU                           24                1        0     224
6 months    MAL-ED           PERU                           25                0        0     224
6 months    MAL-ED           PERU                           25                1        0     224
6 months    MAL-ED           PERU                           27                0        0     224
6 months    MAL-ED           PERU                           27                1        0     224
6 months    MAL-ED           SOUTH AFRICA                   0                 0        0      92
6 months    MAL-ED           SOUTH AFRICA                   0                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   1                 0        0      92
6 months    MAL-ED           SOUTH AFRICA                   1                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   2                 0        1      92
6 months    MAL-ED           SOUTH AFRICA                   2                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   3                 0        0      92
6 months    MAL-ED           SOUTH AFRICA                   3                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   4                 0        4      92
6 months    MAL-ED           SOUTH AFRICA                   4                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   5                 0        0      92
6 months    MAL-ED           SOUTH AFRICA                   5                 1        1      92
6 months    MAL-ED           SOUTH AFRICA                   6                 0        6      92
6 months    MAL-ED           SOUTH AFRICA                   6                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   7                 0        6      92
6 months    MAL-ED           SOUTH AFRICA                   7                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   8                 0        9      92
6 months    MAL-ED           SOUTH AFRICA                   8                 1        2      92
6 months    MAL-ED           SOUTH AFRICA                   9                 0        4      92
6 months    MAL-ED           SOUTH AFRICA                   9                 1        2      92
6 months    MAL-ED           SOUTH AFRICA                   10                0        7      92
6 months    MAL-ED           SOUTH AFRICA                   10                1        1      92
6 months    MAL-ED           SOUTH AFRICA                   11                0       13      92
6 months    MAL-ED           SOUTH AFRICA                   11                1        3      92
6 months    MAL-ED           SOUTH AFRICA                   12                0       25      92
6 months    MAL-ED           SOUTH AFRICA                   12                1        3      92
6 months    MAL-ED           SOUTH AFRICA                   13                0        0      92
6 months    MAL-ED           SOUTH AFRICA                   13                1        0      92
6 months    MAL-ED           SOUTH AFRICA                   14                0        2      92
6 months    MAL-ED           SOUTH AFRICA                   14                1        0      92
6 months    MAL-ED           SOUTH AFRICA                   15                0        1      92
6 months    MAL-ED           SOUTH AFRICA                   15                1        1      92
6 months    MAL-ED           SOUTH AFRICA                   16                0        1      92
6 months    MAL-ED           SOUTH AFRICA                   16                1        0      92
6 months    MAL-ED           SOUTH AFRICA                   17                0        0      92
6 months    MAL-ED           SOUTH AFRICA                   17                1        0      92
6 months    MAL-ED           SOUTH AFRICA                   18                0        0      92
6 months    MAL-ED           SOUTH AFRICA                   18                1        0      92
6 months    MAL-ED           SOUTH AFRICA                   19                0        0      92
6 months    MAL-ED           SOUTH AFRICA                   19                1        0      92
6 months    MAL-ED           SOUTH AFRICA                   20                0        0      92
6 months    MAL-ED           SOUTH AFRICA                   20                1        0      92
6 months    MAL-ED           SOUTH AFRICA                   24                0        0      92
6 months    MAL-ED           SOUTH AFRICA                   24                1        0      92
6 months    MAL-ED           SOUTH AFRICA                   25                0        0      92
6 months    MAL-ED           SOUTH AFRICA                   25                1        0      92
6 months    MAL-ED           SOUTH AFRICA                   27                0        0      92
6 months    MAL-ED           SOUTH AFRICA                   27                1        0      92
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       12     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        1     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 0        8     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 1        4     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 0       13     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 1        4     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 0       11     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 1        2     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 0        5     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 1        6     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 0        6     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 1        2     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 0       92     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 1       24     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 0        1     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 0        2     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                0        3     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                1        1     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                0        2     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                1        1     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                1        1     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                1        0     201
6 months    NIH-Crypto       BANGLADESH                     0                 0      123     715
6 months    NIH-Crypto       BANGLADESH                     0                 1       40     715
6 months    NIH-Crypto       BANGLADESH                     1                 0       14     715
6 months    NIH-Crypto       BANGLADESH                     1                 1        4     715
6 months    NIH-Crypto       BANGLADESH                     2                 0       10     715
6 months    NIH-Crypto       BANGLADESH                     2                 1        2     715
6 months    NIH-Crypto       BANGLADESH                     3                 0       25     715
6 months    NIH-Crypto       BANGLADESH                     3                 1        5     715
6 months    NIH-Crypto       BANGLADESH                     4                 0       27     715
6 months    NIH-Crypto       BANGLADESH                     4                 1       10     715
6 months    NIH-Crypto       BANGLADESH                     5                 0       63     715
6 months    NIH-Crypto       BANGLADESH                     5                 1       24     715
6 months    NIH-Crypto       BANGLADESH                     6                 0       26     715
6 months    NIH-Crypto       BANGLADESH                     6                 1        9     715
6 months    NIH-Crypto       BANGLADESH                     7                 0       42     715
6 months    NIH-Crypto       BANGLADESH                     7                 1       12     715
6 months    NIH-Crypto       BANGLADESH                     8                 0       73     715
6 months    NIH-Crypto       BANGLADESH                     8                 1       13     715
6 months    NIH-Crypto       BANGLADESH                     9                 0       65     715
6 months    NIH-Crypto       BANGLADESH                     9                 1       16     715
6 months    NIH-Crypto       BANGLADESH                     10                0       42     715
6 months    NIH-Crypto       BANGLADESH                     10                1        7     715
6 months    NIH-Crypto       BANGLADESH                     11                0        0     715
6 months    NIH-Crypto       BANGLADESH                     11                1        0     715
6 months    NIH-Crypto       BANGLADESH                     12                0       28     715
6 months    NIH-Crypto       BANGLADESH                     12                1        6     715
6 months    NIH-Crypto       BANGLADESH                     13                0        0     715
6 months    NIH-Crypto       BANGLADESH                     13                1        0     715
6 months    NIH-Crypto       BANGLADESH                     14                0        8     715
6 months    NIH-Crypto       BANGLADESH                     14                1        0     715
6 months    NIH-Crypto       BANGLADESH                     15                0       12     715
6 months    NIH-Crypto       BANGLADESH                     15                1        2     715
6 months    NIH-Crypto       BANGLADESH                     16                0        0     715
6 months    NIH-Crypto       BANGLADESH                     16                1        0     715
6 months    NIH-Crypto       BANGLADESH                     17                0        7     715
6 months    NIH-Crypto       BANGLADESH                     17                1        0     715
6 months    NIH-Crypto       BANGLADESH                     18                0        0     715
6 months    NIH-Crypto       BANGLADESH                     18                1        0     715
6 months    NIH-Crypto       BANGLADESH                     19                0        0     715
6 months    NIH-Crypto       BANGLADESH                     19                1        0     715
6 months    NIH-Crypto       BANGLADESH                     20                0        0     715
6 months    NIH-Crypto       BANGLADESH                     20                1        0     715
6 months    NIH-Crypto       BANGLADESH                     24                0        0     715
6 months    NIH-Crypto       BANGLADESH                     24                1        0     715
6 months    NIH-Crypto       BANGLADESH                     25                0        0     715
6 months    NIH-Crypto       BANGLADESH                     25                1        0     715
6 months    NIH-Crypto       BANGLADESH                     27                0        0     715
6 months    NIH-Crypto       BANGLADESH                     27                1        0     715
6 months    PROBIT           BELARUS                        0                 0        0   15210
6 months    PROBIT           BELARUS                        0                 1        0   15210
6 months    PROBIT           BELARUS                        1                 0        0   15210
6 months    PROBIT           BELARUS                        1                 1        0   15210
6 months    PROBIT           BELARUS                        2                 0        0   15210
6 months    PROBIT           BELARUS                        2                 1        0   15210
6 months    PROBIT           BELARUS                        3                 0        0   15210
6 months    PROBIT           BELARUS                        3                 1        0   15210
6 months    PROBIT           BELARUS                        4                 0        0   15210
6 months    PROBIT           BELARUS                        4                 1        0   15210
6 months    PROBIT           BELARUS                        5                 0        0   15210
6 months    PROBIT           BELARUS                        5                 1        0   15210
6 months    PROBIT           BELARUS                        6                 0        0   15210
6 months    PROBIT           BELARUS                        6                 1        0   15210
6 months    PROBIT           BELARUS                        7                 0        0   15210
6 months    PROBIT           BELARUS                        7                 1        0   15210
6 months    PROBIT           BELARUS                        8                 0       21   15210
6 months    PROBIT           BELARUS                        8                 1        2   15210
6 months    PROBIT           BELARUS                        9                 0        0   15210
6 months    PROBIT           BELARUS                        9                 1        0   15210
6 months    PROBIT           BELARUS                        10                0      320   15210
6 months    PROBIT           BELARUS                        10                1       20   15210
6 months    PROBIT           BELARUS                        11                0        0   15210
6 months    PROBIT           BELARUS                        11                1        0   15210
6 months    PROBIT           BELARUS                        12                0     5327   15210
6 months    PROBIT           BELARUS                        12                1      271   15210
6 months    PROBIT           BELARUS                        13                0     6511   15210
6 months    PROBIT           BELARUS                        13                1      225   15210
6 months    PROBIT           BELARUS                        14                0      401   15210
6 months    PROBIT           BELARUS                        14                1        8   15210
6 months    PROBIT           BELARUS                        15                0        0   15210
6 months    PROBIT           BELARUS                        15                1        0   15210
6 months    PROBIT           BELARUS                        16                0     2052   15210
6 months    PROBIT           BELARUS                        16                1       52   15210
6 months    PROBIT           BELARUS                        17                0        0   15210
6 months    PROBIT           BELARUS                        17                1        0   15210
6 months    PROBIT           BELARUS                        18                0        0   15210
6 months    PROBIT           BELARUS                        18                1        0   15210
6 months    PROBIT           BELARUS                        19                0        0   15210
6 months    PROBIT           BELARUS                        19                1        0   15210
6 months    PROBIT           BELARUS                        20                0        0   15210
6 months    PROBIT           BELARUS                        20                1        0   15210
6 months    PROBIT           BELARUS                        24                0        0   15210
6 months    PROBIT           BELARUS                        24                1        0   15210
6 months    PROBIT           BELARUS                        25                0        0   15210
6 months    PROBIT           BELARUS                        25                1        0   15210
6 months    PROBIT           BELARUS                        27                0        0   15210
6 months    PROBIT           BELARUS                        27                1        0   15210
6 months    PROVIDE          BANGLADESH                     0                 0      138     604
6 months    PROVIDE          BANGLADESH                     0                 1       41     604
6 months    PROVIDE          BANGLADESH                     1                 0       13     604
6 months    PROVIDE          BANGLADESH                     1                 1        0     604
6 months    PROVIDE          BANGLADESH                     2                 0       11     604
6 months    PROVIDE          BANGLADESH                     2                 1        6     604
6 months    PROVIDE          BANGLADESH                     3                 0       19     604
6 months    PROVIDE          BANGLADESH                     3                 1        2     604
6 months    PROVIDE          BANGLADESH                     4                 0       32     604
6 months    PROVIDE          BANGLADESH                     4                 1       10     604
6 months    PROVIDE          BANGLADESH                     5                 0       59     604
6 months    PROVIDE          BANGLADESH                     5                 1        6     604
6 months    PROVIDE          BANGLADESH                     6                 0       20     604
6 months    PROVIDE          BANGLADESH                     6                 1        5     604
6 months    PROVIDE          BANGLADESH                     7                 0       28     604
6 months    PROVIDE          BANGLADESH                     7                 1        5     604
6 months    PROVIDE          BANGLADESH                     8                 0       54     604
6 months    PROVIDE          BANGLADESH                     8                 1        4     604
6 months    PROVIDE          BANGLADESH                     9                 0       51     604
6 months    PROVIDE          BANGLADESH                     9                 1        6     604
6 months    PROVIDE          BANGLADESH                     10                0       30     604
6 months    PROVIDE          BANGLADESH                     10                1        3     604
6 months    PROVIDE          BANGLADESH                     11                0       20     604
6 months    PROVIDE          BANGLADESH                     11                1        4     604
6 months    PROVIDE          BANGLADESH                     12                0        3     604
6 months    PROVIDE          BANGLADESH                     12                1        1     604
6 months    PROVIDE          BANGLADESH                     13                0        0     604
6 months    PROVIDE          BANGLADESH                     13                1        0     604
6 months    PROVIDE          BANGLADESH                     14                0       17     604
6 months    PROVIDE          BANGLADESH                     14                1        0     604
6 months    PROVIDE          BANGLADESH                     15                0        7     604
6 months    PROVIDE          BANGLADESH                     15                1        0     604
6 months    PROVIDE          BANGLADESH                     16                0        6     604
6 months    PROVIDE          BANGLADESH                     16                1        2     604
6 months    PROVIDE          BANGLADESH                     17                0        0     604
6 months    PROVIDE          BANGLADESH                     17                1        0     604
6 months    PROVIDE          BANGLADESH                     18                0        0     604
6 months    PROVIDE          BANGLADESH                     18                1        0     604
6 months    PROVIDE          BANGLADESH                     19                0        0     604
6 months    PROVIDE          BANGLADESH                     19                1        1     604
6 months    PROVIDE          BANGLADESH                     20                0        0     604
6 months    PROVIDE          BANGLADESH                     20                1        0     604
6 months    PROVIDE          BANGLADESH                     24                0        0     604
6 months    PROVIDE          BANGLADESH                     24                1        0     604
6 months    PROVIDE          BANGLADESH                     25                0        0     604
6 months    PROVIDE          BANGLADESH                     25                1        0     604
6 months    PROVIDE          BANGLADESH                     27                0        0     604
6 months    PROVIDE          BANGLADESH                     27                1        0     604
6 months    SAS-CompFeed     INDIA                          0                 0       89    1333
6 months    SAS-CompFeed     INDIA                          0                 1       63    1333
6 months    SAS-CompFeed     INDIA                          1                 0        0    1333
6 months    SAS-CompFeed     INDIA                          1                 1        0    1333
6 months    SAS-CompFeed     INDIA                          2                 0        3    1333
6 months    SAS-CompFeed     INDIA                          2                 1        2    1333
6 months    SAS-CompFeed     INDIA                          3                 0       10    1333
6 months    SAS-CompFeed     INDIA                          3                 1        3    1333
6 months    SAS-CompFeed     INDIA                          4                 0       14    1333
6 months    SAS-CompFeed     INDIA                          4                 1        7    1333
6 months    SAS-CompFeed     INDIA                          5                 0       52    1333
6 months    SAS-CompFeed     INDIA                          5                 1       29    1333
6 months    SAS-CompFeed     INDIA                          6                 0       18    1333
6 months    SAS-CompFeed     INDIA                          6                 1        8    1333
6 months    SAS-CompFeed     INDIA                          7                 0       63    1333
6 months    SAS-CompFeed     INDIA                          7                 1       39    1333
6 months    SAS-CompFeed     INDIA                          8                 0      107    1333
6 months    SAS-CompFeed     INDIA                          8                 1       43    1333
6 months    SAS-CompFeed     INDIA                          9                 0       62    1333
6 months    SAS-CompFeed     INDIA                          9                 1       23    1333
6 months    SAS-CompFeed     INDIA                          10                0      264    1333
6 months    SAS-CompFeed     INDIA                          10                1       86    1333
6 months    SAS-CompFeed     INDIA                          11                0       24    1333
6 months    SAS-CompFeed     INDIA                          11                1       12    1333
6 months    SAS-CompFeed     INDIA                          12                0      157    1333
6 months    SAS-CompFeed     INDIA                          12                1       46    1333
6 months    SAS-CompFeed     INDIA                          13                0        6    1333
6 months    SAS-CompFeed     INDIA                          13                1        1    1333
6 months    SAS-CompFeed     INDIA                          14                0       14    1333
6 months    SAS-CompFeed     INDIA                          14                1        2    1333
6 months    SAS-CompFeed     INDIA                          15                0       47    1333
6 months    SAS-CompFeed     INDIA                          15                1       10    1333
6 months    SAS-CompFeed     INDIA                          16                0        8    1333
6 months    SAS-CompFeed     INDIA                          16                1        2    1333
6 months    SAS-CompFeed     INDIA                          17                0       12    1333
6 months    SAS-CompFeed     INDIA                          17                1        2    1333
6 months    SAS-CompFeed     INDIA                          18                0        3    1333
6 months    SAS-CompFeed     INDIA                          18                1        0    1333
6 months    SAS-CompFeed     INDIA                          19                0        1    1333
6 months    SAS-CompFeed     INDIA                          19                1        0    1333
6 months    SAS-CompFeed     INDIA                          20                0        1    1333
6 months    SAS-CompFeed     INDIA                          20                1        0    1333
6 months    SAS-CompFeed     INDIA                          24                0        0    1333
6 months    SAS-CompFeed     INDIA                          24                1        0    1333
6 months    SAS-CompFeed     INDIA                          25                0        0    1333
6 months    SAS-CompFeed     INDIA                          25                1        0    1333
6 months    SAS-CompFeed     INDIA                          27                0        0    1333
6 months    SAS-CompFeed     INDIA                          27                1        0    1333
6 months    SAS-FoodSuppl    INDIA                          0                 0       72     380
6 months    SAS-FoodSuppl    INDIA                          0                 1       60     380
6 months    SAS-FoodSuppl    INDIA                          1                 0        1     380
6 months    SAS-FoodSuppl    INDIA                          1                 1        0     380
6 months    SAS-FoodSuppl    INDIA                          2                 0        5     380
6 months    SAS-FoodSuppl    INDIA                          2                 1        5     380
6 months    SAS-FoodSuppl    INDIA                          3                 0        4     380
6 months    SAS-FoodSuppl    INDIA                          3                 1        2     380
6 months    SAS-FoodSuppl    INDIA                          4                 0        2     380
6 months    SAS-FoodSuppl    INDIA                          4                 1        8     380
6 months    SAS-FoodSuppl    INDIA                          5                 0       26     380
6 months    SAS-FoodSuppl    INDIA                          5                 1       24     380
6 months    SAS-FoodSuppl    INDIA                          6                 0        7     380
6 months    SAS-FoodSuppl    INDIA                          6                 1        5     380
6 months    SAS-FoodSuppl    INDIA                          7                 0        9     380
6 months    SAS-FoodSuppl    INDIA                          7                 1        6     380
6 months    SAS-FoodSuppl    INDIA                          8                 0       24     380
6 months    SAS-FoodSuppl    INDIA                          8                 1       19     380
6 months    SAS-FoodSuppl    INDIA                          9                 0       18     380
6 months    SAS-FoodSuppl    INDIA                          9                 1        7     380
6 months    SAS-FoodSuppl    INDIA                          10                0       33     380
6 months    SAS-FoodSuppl    INDIA                          10                1       21     380
6 months    SAS-FoodSuppl    INDIA                          11                0        2     380
6 months    SAS-FoodSuppl    INDIA                          11                1        1     380
6 months    SAS-FoodSuppl    INDIA                          12                0        7     380
6 months    SAS-FoodSuppl    INDIA                          12                1        3     380
6 months    SAS-FoodSuppl    INDIA                          13                0        1     380
6 months    SAS-FoodSuppl    INDIA                          13                1        0     380
6 months    SAS-FoodSuppl    INDIA                          14                0        4     380
6 months    SAS-FoodSuppl    INDIA                          14                1        1     380
6 months    SAS-FoodSuppl    INDIA                          15                0        2     380
6 months    SAS-FoodSuppl    INDIA                          15                1        1     380
6 months    SAS-FoodSuppl    INDIA                          16                0        0     380
6 months    SAS-FoodSuppl    INDIA                          16                1        0     380
6 months    SAS-FoodSuppl    INDIA                          17                0        0     380
6 months    SAS-FoodSuppl    INDIA                          17                1        0     380
6 months    SAS-FoodSuppl    INDIA                          18                0        0     380
6 months    SAS-FoodSuppl    INDIA                          18                1        0     380
6 months    SAS-FoodSuppl    INDIA                          19                0        0     380
6 months    SAS-FoodSuppl    INDIA                          19                1        0     380
6 months    SAS-FoodSuppl    INDIA                          20                0        0     380
6 months    SAS-FoodSuppl    INDIA                          20                1        0     380
6 months    SAS-FoodSuppl    INDIA                          24                0        0     380
6 months    SAS-FoodSuppl    INDIA                          24                1        0     380
6 months    SAS-FoodSuppl    INDIA                          25                0        0     380
6 months    SAS-FoodSuppl    INDIA                          25                1        0     380
6 months    SAS-FoodSuppl    INDIA                          27                0        0     380
6 months    SAS-FoodSuppl    INDIA                          27                1        0     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0        4    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 0        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 0        5    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 0        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 0        1    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 0      953    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 1      120    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 0        7    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 1        1    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 0       43    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 1        3    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                0       18    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                1        3    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                0      446    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                1       43    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                0       15    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                0       94    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                1        6    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                0       12    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                0       16    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                1        2    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                0       22    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                1        2    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                0       19    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                1        1    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                0        4    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                0        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                0        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                0       13    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                1        1    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                0        1    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                0      150    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                1       13    2018
6 months    ZVITAMBO         ZIMBABWE                       0                 0       35    8429
6 months    ZVITAMBO         ZIMBABWE                       0                 1        8    8429
6 months    ZVITAMBO         ZIMBABWE                       1                 0        1    8429
6 months    ZVITAMBO         ZIMBABWE                       1                 1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       2                 0        4    8429
6 months    ZVITAMBO         ZIMBABWE                       2                 1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       3                 0        6    8429
6 months    ZVITAMBO         ZIMBABWE                       3                 1        3    8429
6 months    ZVITAMBO         ZIMBABWE                       4                 0       12    8429
6 months    ZVITAMBO         ZIMBABWE                       4                 1        3    8429
6 months    ZVITAMBO         ZIMBABWE                       5                 0       18    8429
6 months    ZVITAMBO         ZIMBABWE                       5                 1        5    8429
6 months    ZVITAMBO         ZIMBABWE                       6                 0       23    8429
6 months    ZVITAMBO         ZIMBABWE                       6                 1        4    8429
6 months    ZVITAMBO         ZIMBABWE                       7                 0      402    8429
6 months    ZVITAMBO         ZIMBABWE                       7                 1      112    8429
6 months    ZVITAMBO         ZIMBABWE                       8                 0       60    8429
6 months    ZVITAMBO         ZIMBABWE                       8                 1        7    8429
6 months    ZVITAMBO         ZIMBABWE                       9                 0      439    8429
6 months    ZVITAMBO         ZIMBABWE                       9                 1      114    8429
6 months    ZVITAMBO         ZIMBABWE                       10                0      157    8429
6 months    ZVITAMBO         ZIMBABWE                       10                1       46    8429
6 months    ZVITAMBO         ZIMBABWE                       11                0     5410    8429
6 months    ZVITAMBO         ZIMBABWE                       11                1      974    8429
6 months    ZVITAMBO         ZIMBABWE                       12                0       27    8429
6 months    ZVITAMBO         ZIMBABWE                       12                1       12    8429
6 months    ZVITAMBO         ZIMBABWE                       13                0      477    8429
6 months    ZVITAMBO         ZIMBABWE                       13                1       70    8429
6 months    ZVITAMBO         ZIMBABWE                       14                0        0    8429
6 months    ZVITAMBO         ZIMBABWE                       14                1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       15                0        0    8429
6 months    ZVITAMBO         ZIMBABWE                       15                1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       16                0        0    8429
6 months    ZVITAMBO         ZIMBABWE                       16                1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       17                0        0    8429
6 months    ZVITAMBO         ZIMBABWE                       17                1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       18                0        0    8429
6 months    ZVITAMBO         ZIMBABWE                       18                1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       19                0        0    8429
6 months    ZVITAMBO         ZIMBABWE                       19                1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       20                0        0    8429
6 months    ZVITAMBO         ZIMBABWE                       20                1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       24                0        0    8429
6 months    ZVITAMBO         ZIMBABWE                       24                1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       25                0        0    8429
6 months    ZVITAMBO         ZIMBABWE                       25                1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       27                0        0    8429
6 months    ZVITAMBO         ZIMBABWE                       27                1        0    8429
24 months   COHORTS          GUATEMALA                      0                 0       84     992
24 months   COHORTS          GUATEMALA                      0                 1      378     992
24 months   COHORTS          GUATEMALA                      1                 0       10     992
24 months   COHORTS          GUATEMALA                      1                 1       47     992
24 months   COHORTS          GUATEMALA                      2                 0       39     992
24 months   COHORTS          GUATEMALA                      2                 1      130     992
24 months   COHORTS          GUATEMALA                      3                 0       24     992
24 months   COHORTS          GUATEMALA                      3                 1      103     992
24 months   COHORTS          GUATEMALA                      4                 0        9     992
24 months   COHORTS          GUATEMALA                      4                 1       56     992
24 months   COHORTS          GUATEMALA                      5                 0        4     992
24 months   COHORTS          GUATEMALA                      5                 1       20     992
24 months   COHORTS          GUATEMALA                      6                 0       16     992
24 months   COHORTS          GUATEMALA                      6                 1       62     992
24 months   COHORTS          GUATEMALA                      7                 0        2     992
24 months   COHORTS          GUATEMALA                      7                 1        0     992
24 months   COHORTS          GUATEMALA                      8                 0        0     992
24 months   COHORTS          GUATEMALA                      8                 1        1     992
24 months   COHORTS          GUATEMALA                      9                 0        0     992
24 months   COHORTS          GUATEMALA                      9                 1        0     992
24 months   COHORTS          GUATEMALA                      10                0        0     992
24 months   COHORTS          GUATEMALA                      10                1        1     992
24 months   COHORTS          GUATEMALA                      11                0        0     992
24 months   COHORTS          GUATEMALA                      11                1        0     992
24 months   COHORTS          GUATEMALA                      12                0        2     992
24 months   COHORTS          GUATEMALA                      12                1        3     992
24 months   COHORTS          GUATEMALA                      13                0        0     992
24 months   COHORTS          GUATEMALA                      13                1        0     992
24 months   COHORTS          GUATEMALA                      14                0        0     992
24 months   COHORTS          GUATEMALA                      14                1        0     992
24 months   COHORTS          GUATEMALA                      15                0        0     992
24 months   COHORTS          GUATEMALA                      15                1        1     992
24 months   COHORTS          GUATEMALA                      16                0        0     992
24 months   COHORTS          GUATEMALA                      16                1        0     992
24 months   COHORTS          GUATEMALA                      17                0        0     992
24 months   COHORTS          GUATEMALA                      17                1        0     992
24 months   COHORTS          GUATEMALA                      18                0        0     992
24 months   COHORTS          GUATEMALA                      18                1        0     992
24 months   COHORTS          GUATEMALA                      19                0        0     992
24 months   COHORTS          GUATEMALA                      19                1        0     992
24 months   COHORTS          GUATEMALA                      20                0        0     992
24 months   COHORTS          GUATEMALA                      20                1        0     992
24 months   COHORTS          GUATEMALA                      24                0        0     992
24 months   COHORTS          GUATEMALA                      24                1        0     992
24 months   COHORTS          GUATEMALA                      25                0        0     992
24 months   COHORTS          GUATEMALA                      25                1        0     992
24 months   COHORTS          GUATEMALA                      27                0        0     992
24 months   COHORTS          GUATEMALA                      27                1        0     992
24 months   COHORTS          INDIA                          0                 0       27    1380
24 months   COHORTS          INDIA                          0                 1       88    1380
24 months   COHORTS          INDIA                          1                 0        0    1380
24 months   COHORTS          INDIA                          1                 1        0    1380
24 months   COHORTS          INDIA                          2                 0        0    1380
24 months   COHORTS          INDIA                          2                 1        0    1380
24 months   COHORTS          INDIA                          3                 0       34    1380
24 months   COHORTS          INDIA                          3                 1       94    1380
24 months   COHORTS          INDIA                          4                 0        0    1380
24 months   COHORTS          INDIA                          4                 1        0    1380
24 months   COHORTS          INDIA                          5                 0        0    1380
24 months   COHORTS          INDIA                          5                 1        0    1380
24 months   COHORTS          INDIA                          6                 0        0    1380
24 months   COHORTS          INDIA                          6                 1        0    1380
24 months   COHORTS          INDIA                          7                 0        0    1380
24 months   COHORTS          INDIA                          7                 1        0    1380
24 months   COHORTS          INDIA                          8                 0       63    1380
24 months   COHORTS          INDIA                          8                 1      144    1380
24 months   COHORTS          INDIA                          9                 0        0    1380
24 months   COHORTS          INDIA                          9                 1        0    1380
24 months   COHORTS          INDIA                          10                0        0    1380
24 months   COHORTS          INDIA                          10                1        0    1380
24 months   COHORTS          INDIA                          11                0        0    1380
24 months   COHORTS          INDIA                          11                1        0    1380
24 months   COHORTS          INDIA                          12                0      179    1380
24 months   COHORTS          INDIA                          12                1      212    1380
24 months   COHORTS          INDIA                          13                0        0    1380
24 months   COHORTS          INDIA                          13                1        0    1380
24 months   COHORTS          INDIA                          14                0       76    1380
24 months   COHORTS          INDIA                          14                1       75    1380
24 months   COHORTS          INDIA                          15                0      178    1380
24 months   COHORTS          INDIA                          15                1       94    1380
24 months   COHORTS          INDIA                          16                0        0    1380
24 months   COHORTS          INDIA                          16                1        0    1380
24 months   COHORTS          INDIA                          17                0       85    1380
24 months   COHORTS          INDIA                          17                1       31    1380
24 months   COHORTS          INDIA                          18                0        0    1380
24 months   COHORTS          INDIA                          18                1        0    1380
24 months   COHORTS          INDIA                          19                0        0    1380
24 months   COHORTS          INDIA                          19                1        0    1380
24 months   COHORTS          INDIA                          20                0        0    1380
24 months   COHORTS          INDIA                          20                1        0    1380
24 months   COHORTS          INDIA                          24                0        0    1380
24 months   COHORTS          INDIA                          24                1        0    1380
24 months   COHORTS          INDIA                          25                0        0    1380
24 months   COHORTS          INDIA                          25                1        0    1380
24 months   COHORTS          INDIA                          27                0        0    1380
24 months   COHORTS          INDIA                          27                1        0    1380
24 months   COHORTS          PHILIPPINES                    0                 0        8    2314
24 months   COHORTS          PHILIPPINES                    0                 1       41    2314
24 months   COHORTS          PHILIPPINES                    1                 0        6    2314
24 months   COHORTS          PHILIPPINES                    1                 1       22    2314
24 months   COHORTS          PHILIPPINES                    2                 0       16    2314
24 months   COHORTS          PHILIPPINES                    2                 1       70    2314
24 months   COHORTS          PHILIPPINES                    3                 0       38    2314
24 months   COHORTS          PHILIPPINES                    3                 1      101    2314
24 months   COHORTS          PHILIPPINES                    4                 0       45    2314
24 months   COHORTS          PHILIPPINES                    4                 1      172    2314
24 months   COHORTS          PHILIPPINES                    5                 0       46    2314
24 months   COHORTS          PHILIPPINES                    5                 1      127    2314
24 months   COHORTS          PHILIPPINES                    6                 0      165    2314
24 months   COHORTS          PHILIPPINES                    6                 1      350    2314
24 months   COHORTS          PHILIPPINES                    7                 0       53    2314
24 months   COHORTS          PHILIPPINES                    7                 1       68    2314
24 months   COHORTS          PHILIPPINES                    8                 0       63    2314
24 months   COHORTS          PHILIPPINES                    8                 1      125    2314
24 months   COHORTS          PHILIPPINES                    9                 0       64    2314
24 months   COHORTS          PHILIPPINES                    9                 1       94    2314
24 months   COHORTS          PHILIPPINES                    10                0      114    2314
24 months   COHORTS          PHILIPPINES                    10                1      141    2314
24 months   COHORTS          PHILIPPINES                    11                0       31    2314
24 months   COHORTS          PHILIPPINES                    11                1       27    2314
24 months   COHORTS          PHILIPPINES                    12                0       83    2314
24 months   COHORTS          PHILIPPINES                    12                1       50    2314
24 months   COHORTS          PHILIPPINES                    13                0       31    2314
24 months   COHORTS          PHILIPPINES                    13                1       18    2314
24 months   COHORTS          PHILIPPINES                    14                0       71    2314
24 months   COHORTS          PHILIPPINES                    14                1       38    2314
24 months   COHORTS          PHILIPPINES                    15                0       24    2314
24 months   COHORTS          PHILIPPINES                    15                1        7    2314
24 months   COHORTS          PHILIPPINES                    16                0        2    2314
24 months   COHORTS          PHILIPPINES                    16                1        2    2314
24 months   COHORTS          PHILIPPINES                    17                0        1    2314
24 months   COHORTS          PHILIPPINES                    17                1        0    2314
24 months   COHORTS          PHILIPPINES                    18                0        0    2314
24 months   COHORTS          PHILIPPINES                    18                1        0    2314
24 months   COHORTS          PHILIPPINES                    19                0        0    2314
24 months   COHORTS          PHILIPPINES                    19                1        0    2314
24 months   COHORTS          PHILIPPINES                    20                0        0    2314
24 months   COHORTS          PHILIPPINES                    20                1        0    2314
24 months   COHORTS          PHILIPPINES                    24                0        0    2314
24 months   COHORTS          PHILIPPINES                    24                1        0    2314
24 months   COHORTS          PHILIPPINES                    25                0        0    2314
24 months   COHORTS          PHILIPPINES                    25                1        0    2314
24 months   COHORTS          PHILIPPINES                    27                0        0    2314
24 months   COHORTS          PHILIPPINES                    27                1        0    2314
24 months   GMS-Nepal        NEPAL                          0                 0      117     487
24 months   GMS-Nepal        NEPAL                          0                 1      102     487
24 months   GMS-Nepal        NEPAL                          1                 0        0     487
24 months   GMS-Nepal        NEPAL                          1                 1        0     487
24 months   GMS-Nepal        NEPAL                          2                 0        0     487
24 months   GMS-Nepal        NEPAL                          2                 1        0     487
24 months   GMS-Nepal        NEPAL                          3                 0        0     487
24 months   GMS-Nepal        NEPAL                          3                 1        0     487
24 months   GMS-Nepal        NEPAL                          4                 0        0     487
24 months   GMS-Nepal        NEPAL                          4                 1        0     487
24 months   GMS-Nepal        NEPAL                          5                 0       33     487
24 months   GMS-Nepal        NEPAL                          5                 1       39     487
24 months   GMS-Nepal        NEPAL                          6                 0        0     487
24 months   GMS-Nepal        NEPAL                          6                 1        0     487
24 months   GMS-Nepal        NEPAL                          7                 0        0     487
24 months   GMS-Nepal        NEPAL                          7                 1        0     487
24 months   GMS-Nepal        NEPAL                          8                 0       43     487
24 months   GMS-Nepal        NEPAL                          8                 1       40     487
24 months   GMS-Nepal        NEPAL                          9                 0        0     487
24 months   GMS-Nepal        NEPAL                          9                 1        0     487
24 months   GMS-Nepal        NEPAL                          10                0       55     487
24 months   GMS-Nepal        NEPAL                          10                1       31     487
24 months   GMS-Nepal        NEPAL                          11                0        0     487
24 months   GMS-Nepal        NEPAL                          11                1        0     487
24 months   GMS-Nepal        NEPAL                          12                0       20     487
24 months   GMS-Nepal        NEPAL                          12                1        7     487
24 months   GMS-Nepal        NEPAL                          13                0        0     487
24 months   GMS-Nepal        NEPAL                          13                1        0     487
24 months   GMS-Nepal        NEPAL                          14                0        0     487
24 months   GMS-Nepal        NEPAL                          14                1        0     487
24 months   GMS-Nepal        NEPAL                          15                0        0     487
24 months   GMS-Nepal        NEPAL                          15                1        0     487
24 months   GMS-Nepal        NEPAL                          16                0        0     487
24 months   GMS-Nepal        NEPAL                          16                1        0     487
24 months   GMS-Nepal        NEPAL                          17                0        0     487
24 months   GMS-Nepal        NEPAL                          17                1        0     487
24 months   GMS-Nepal        NEPAL                          18                0        0     487
24 months   GMS-Nepal        NEPAL                          18                1        0     487
24 months   GMS-Nepal        NEPAL                          19                0        0     487
24 months   GMS-Nepal        NEPAL                          19                1        0     487
24 months   GMS-Nepal        NEPAL                          20                0        0     487
24 months   GMS-Nepal        NEPAL                          20                1        0     487
24 months   GMS-Nepal        NEPAL                          24                0        0     487
24 months   GMS-Nepal        NEPAL                          24                1        0     487
24 months   GMS-Nepal        NEPAL                          25                0        0     487
24 months   GMS-Nepal        NEPAL                          25                1        0     487
24 months   GMS-Nepal        NEPAL                          27                0        0     487
24 months   GMS-Nepal        NEPAL                          27                1        0     487
24 months   LCNI-5           MALAWI                         0                 0      122     571
24 months   LCNI-5           MALAWI                         0                 1       81     571
24 months   LCNI-5           MALAWI                         1                 0        3     571
24 months   LCNI-5           MALAWI                         1                 1        7     571
24 months   LCNI-5           MALAWI                         2                 0       13     571
24 months   LCNI-5           MALAWI                         2                 1        7     571
24 months   LCNI-5           MALAWI                         3                 0       19     571
24 months   LCNI-5           MALAWI                         3                 1       16     571
24 months   LCNI-5           MALAWI                         4                 0       18     571
24 months   LCNI-5           MALAWI                         4                 1       23     571
24 months   LCNI-5           MALAWI                         5                 0       22     571
24 months   LCNI-5           MALAWI                         5                 1       20     571
24 months   LCNI-5           MALAWI                         6                 0       29     571
24 months   LCNI-5           MALAWI                         6                 1       18     571
24 months   LCNI-5           MALAWI                         7                 0       22     571
24 months   LCNI-5           MALAWI                         7                 1       24     571
24 months   LCNI-5           MALAWI                         8                 0       27     571
24 months   LCNI-5           MALAWI                         8                 1       33     571
24 months   LCNI-5           MALAWI                         9                 0        6     571
24 months   LCNI-5           MALAWI                         9                 1        3     571
24 months   LCNI-5           MALAWI                         10                0       10     571
24 months   LCNI-5           MALAWI                         10                1        3     571
24 months   LCNI-5           MALAWI                         11                0        2     571
24 months   LCNI-5           MALAWI                         11                1        2     571
24 months   LCNI-5           MALAWI                         12                0       26     571
24 months   LCNI-5           MALAWI                         12                1       13     571
24 months   LCNI-5           MALAWI                         13                0        0     571
24 months   LCNI-5           MALAWI                         13                1        1     571
24 months   LCNI-5           MALAWI                         14                0        1     571
24 months   LCNI-5           MALAWI                         14                1        0     571
24 months   LCNI-5           MALAWI                         15                0        0     571
24 months   LCNI-5           MALAWI                         15                1        0     571
24 months   LCNI-5           MALAWI                         16                0        0     571
24 months   LCNI-5           MALAWI                         16                1        0     571
24 months   LCNI-5           MALAWI                         17                0        0     571
24 months   LCNI-5           MALAWI                         17                1        0     571
24 months   LCNI-5           MALAWI                         18                0        0     571
24 months   LCNI-5           MALAWI                         18                1        0     571
24 months   LCNI-5           MALAWI                         19                0        0     571
24 months   LCNI-5           MALAWI                         19                1        0     571
24 months   LCNI-5           MALAWI                         20                0        0     571
24 months   LCNI-5           MALAWI                         20                1        0     571
24 months   LCNI-5           MALAWI                         24                0        0     571
24 months   LCNI-5           MALAWI                         24                1        0     571
24 months   LCNI-5           MALAWI                         25                0        0     571
24 months   LCNI-5           MALAWI                         25                1        0     571
24 months   LCNI-5           MALAWI                         27                0        0     571
24 months   LCNI-5           MALAWI                         27                1        0     571
24 months   MAL-ED           BANGLADESH                     0                 0        0     117
24 months   MAL-ED           BANGLADESH                     0                 1        0     117
24 months   MAL-ED           BANGLADESH                     1                 0        5     117
24 months   MAL-ED           BANGLADESH                     1                 1        2     117
24 months   MAL-ED           BANGLADESH                     2                 0        5     117
24 months   MAL-ED           BANGLADESH                     2                 1        6     117
24 months   MAL-ED           BANGLADESH                     3                 0        6     117
24 months   MAL-ED           BANGLADESH                     3                 1        5     117
24 months   MAL-ED           BANGLADESH                     4                 0        4     117
24 months   MAL-ED           BANGLADESH                     4                 1        2     117
24 months   MAL-ED           BANGLADESH                     5                 0       13     117
24 months   MAL-ED           BANGLADESH                     5                 1       14     117
24 months   MAL-ED           BANGLADESH                     6                 0        3     117
24 months   MAL-ED           BANGLADESH                     6                 1        4     117
24 months   MAL-ED           BANGLADESH                     7                 0        4     117
24 months   MAL-ED           BANGLADESH                     7                 1        4     117
24 months   MAL-ED           BANGLADESH                     8                 0        8     117
24 months   MAL-ED           BANGLADESH                     8                 1        5     117
24 months   MAL-ED           BANGLADESH                     9                 0        5     117
24 months   MAL-ED           BANGLADESH                     9                 1        5     117
24 months   MAL-ED           BANGLADESH                     10                0        7     117
24 months   MAL-ED           BANGLADESH                     10                1        1     117
24 months   MAL-ED           BANGLADESH                     11                0        0     117
24 months   MAL-ED           BANGLADESH                     11                1        0     117
24 months   MAL-ED           BANGLADESH                     12                0        6     117
24 months   MAL-ED           BANGLADESH                     12                1        1     117
24 months   MAL-ED           BANGLADESH                     13                0        0     117
24 months   MAL-ED           BANGLADESH                     13                1        0     117
24 months   MAL-ED           BANGLADESH                     14                0        0     117
24 months   MAL-ED           BANGLADESH                     14                1        0     117
24 months   MAL-ED           BANGLADESH                     15                0        0     117
24 months   MAL-ED           BANGLADESH                     15                1        0     117
24 months   MAL-ED           BANGLADESH                     16                0        2     117
24 months   MAL-ED           BANGLADESH                     16                1        0     117
24 months   MAL-ED           BANGLADESH                     17                0        0     117
24 months   MAL-ED           BANGLADESH                     17                1        0     117
24 months   MAL-ED           BANGLADESH                     18                0        0     117
24 months   MAL-ED           BANGLADESH                     18                1        0     117
24 months   MAL-ED           BANGLADESH                     19                0        0     117
24 months   MAL-ED           BANGLADESH                     19                1        0     117
24 months   MAL-ED           BANGLADESH                     20                0        0     117
24 months   MAL-ED           BANGLADESH                     20                1        0     117
24 months   MAL-ED           BANGLADESH                     24                0        0     117
24 months   MAL-ED           BANGLADESH                     24                1        0     117
24 months   MAL-ED           BANGLADESH                     25                0        0     117
24 months   MAL-ED           BANGLADESH                     25                1        0     117
24 months   MAL-ED           BANGLADESH                     27                0        0     117
24 months   MAL-ED           BANGLADESH                     27                1        0     117
24 months   MAL-ED           INDIA                          0                 0        0     132
24 months   MAL-ED           INDIA                          0                 1        0     132
24 months   MAL-ED           INDIA                          1                 0        0     132
24 months   MAL-ED           INDIA                          1                 1        0     132
24 months   MAL-ED           INDIA                          2                 0        3     132
24 months   MAL-ED           INDIA                          2                 1        2     132
24 months   MAL-ED           INDIA                          3                 0        5     132
24 months   MAL-ED           INDIA                          3                 1        4     132
24 months   MAL-ED           INDIA                          4                 0        3     132
24 months   MAL-ED           INDIA                          4                 1        3     132
24 months   MAL-ED           INDIA                          5                 0       17     132
24 months   MAL-ED           INDIA                          5                 1       14     132
24 months   MAL-ED           INDIA                          6                 0        4     132
24 months   MAL-ED           INDIA                          6                 1        6     132
24 months   MAL-ED           INDIA                          7                 0        7     132
24 months   MAL-ED           INDIA                          7                 1        3     132
24 months   MAL-ED           INDIA                          8                 0        8     132
24 months   MAL-ED           INDIA                          8                 1       11     132
24 months   MAL-ED           INDIA                          9                 0       18     132
24 months   MAL-ED           INDIA                          9                 1        7     132
24 months   MAL-ED           INDIA                          10                0        4     132
24 months   MAL-ED           INDIA                          10                1        2     132
24 months   MAL-ED           INDIA                          11                0        0     132
24 months   MAL-ED           INDIA                          11                1        2     132
24 months   MAL-ED           INDIA                          12                0        2     132
24 months   MAL-ED           INDIA                          12                1        1     132
24 months   MAL-ED           INDIA                          13                0        1     132
24 months   MAL-ED           INDIA                          13                1        0     132
24 months   MAL-ED           INDIA                          14                0        2     132
24 months   MAL-ED           INDIA                          14                1        0     132
24 months   MAL-ED           INDIA                          15                0        2     132
24 months   MAL-ED           INDIA                          15                1        0     132
24 months   MAL-ED           INDIA                          16                0        0     132
24 months   MAL-ED           INDIA                          16                1        0     132
24 months   MAL-ED           INDIA                          17                0        0     132
24 months   MAL-ED           INDIA                          17                1        0     132
24 months   MAL-ED           INDIA                          18                0        0     132
24 months   MAL-ED           INDIA                          18                1        1     132
24 months   MAL-ED           INDIA                          19                0        0     132
24 months   MAL-ED           INDIA                          19                1        0     132
24 months   MAL-ED           INDIA                          20                0        0     132
24 months   MAL-ED           INDIA                          20                1        0     132
24 months   MAL-ED           INDIA                          24                0        0     132
24 months   MAL-ED           INDIA                          24                1        0     132
24 months   MAL-ED           INDIA                          25                0        0     132
24 months   MAL-ED           INDIA                          25                1        0     132
24 months   MAL-ED           INDIA                          27                0        0     132
24 months   MAL-ED           INDIA                          27                1        0     132
24 months   MAL-ED           NEPAL                          0                 0        0      91
24 months   MAL-ED           NEPAL                          0                 1        0      91
24 months   MAL-ED           NEPAL                          1                 0        0      91
24 months   MAL-ED           NEPAL                          1                 1        0      91
24 months   MAL-ED           NEPAL                          2                 0        3      91
24 months   MAL-ED           NEPAL                          2                 1        1      91
24 months   MAL-ED           NEPAL                          3                 0        1      91
24 months   MAL-ED           NEPAL                          3                 1        2      91
24 months   MAL-ED           NEPAL                          4                 0        7      91
24 months   MAL-ED           NEPAL                          4                 1        3      91
24 months   MAL-ED           NEPAL                          5                 0        6      91
24 months   MAL-ED           NEPAL                          5                 1        0      91
24 months   MAL-ED           NEPAL                          6                 0        3      91
24 months   MAL-ED           NEPAL                          6                 1        1      91
24 months   MAL-ED           NEPAL                          7                 0        6      91
24 months   MAL-ED           NEPAL                          7                 1        2      91
24 months   MAL-ED           NEPAL                          8                 0        8      91
24 months   MAL-ED           NEPAL                          8                 1        3      91
24 months   MAL-ED           NEPAL                          9                 0        5      91
24 months   MAL-ED           NEPAL                          9                 1        2      91
24 months   MAL-ED           NEPAL                          10                0       17      91
24 months   MAL-ED           NEPAL                          10                1        7      91
24 months   MAL-ED           NEPAL                          11                0        1      91
24 months   MAL-ED           NEPAL                          11                1        0      91
24 months   MAL-ED           NEPAL                          12                0        7      91
24 months   MAL-ED           NEPAL                          12                1        0      91
24 months   MAL-ED           NEPAL                          13                0        0      91
24 months   MAL-ED           NEPAL                          13                1        0      91
24 months   MAL-ED           NEPAL                          14                0        0      91
24 months   MAL-ED           NEPAL                          14                1        0      91
24 months   MAL-ED           NEPAL                          15                0        1      91
24 months   MAL-ED           NEPAL                          15                1        0      91
24 months   MAL-ED           NEPAL                          16                0        1      91
24 months   MAL-ED           NEPAL                          16                1        0      91
24 months   MAL-ED           NEPAL                          17                0        3      91
24 months   MAL-ED           NEPAL                          17                1        0      91
24 months   MAL-ED           NEPAL                          18                0        1      91
24 months   MAL-ED           NEPAL                          18                1        0      91
24 months   MAL-ED           NEPAL                          19                0        0      91
24 months   MAL-ED           NEPAL                          19                1        0      91
24 months   MAL-ED           NEPAL                          20                0        0      91
24 months   MAL-ED           NEPAL                          20                1        0      91
24 months   MAL-ED           NEPAL                          24                0        0      91
24 months   MAL-ED           NEPAL                          24                1        0      91
24 months   MAL-ED           NEPAL                          25                0        0      91
24 months   MAL-ED           NEPAL                          25                1        0      91
24 months   MAL-ED           NEPAL                          27                0        0      91
24 months   MAL-ED           NEPAL                          27                1        0      91
24 months   MAL-ED           PERU                           0                 0        0     164
24 months   MAL-ED           PERU                           0                 1        1     164
24 months   MAL-ED           PERU                           1                 0        1     164
24 months   MAL-ED           PERU                           1                 1        0     164
24 months   MAL-ED           PERU                           2                 0        0     164
24 months   MAL-ED           PERU                           2                 1        0     164
24 months   MAL-ED           PERU                           3                 0        3     164
24 months   MAL-ED           PERU                           3                 1        3     164
24 months   MAL-ED           PERU                           4                 0        3     164
24 months   MAL-ED           PERU                           4                 1        0     164
24 months   MAL-ED           PERU                           5                 0        2     164
24 months   MAL-ED           PERU                           5                 1        5     164
24 months   MAL-ED           PERU                           6                 0        9     164
24 months   MAL-ED           PERU                           6                 1        5     164
24 months   MAL-ED           PERU                           7                 0        8     164
24 months   MAL-ED           PERU                           7                 1        4     164
24 months   MAL-ED           PERU                           8                 0       10     164
24 months   MAL-ED           PERU                           8                 1        5     164
24 months   MAL-ED           PERU                           9                 0       14     164
24 months   MAL-ED           PERU                           9                 1        7     164
24 months   MAL-ED           PERU                           10                0        4     164
24 months   MAL-ED           PERU                           10                1        3     164
24 months   MAL-ED           PERU                           11                0       41     164
24 months   MAL-ED           PERU                           11                1       24     164
24 months   MAL-ED           PERU                           12                0        0     164
24 months   MAL-ED           PERU                           12                1        1     164
24 months   MAL-ED           PERU                           13                0        0     164
24 months   MAL-ED           PERU                           13                1        2     164
24 months   MAL-ED           PERU                           14                0        2     164
24 months   MAL-ED           PERU                           14                1        2     164
24 months   MAL-ED           PERU                           15                0        0     164
24 months   MAL-ED           PERU                           15                1        0     164
24 months   MAL-ED           PERU                           16                0        1     164
24 months   MAL-ED           PERU                           16                1        0     164
24 months   MAL-ED           PERU                           17                0        0     164
24 months   MAL-ED           PERU                           17                1        1     164
24 months   MAL-ED           PERU                           18                0        2     164
24 months   MAL-ED           PERU                           18                1        0     164
24 months   MAL-ED           PERU                           19                0        0     164
24 months   MAL-ED           PERU                           19                1        0     164
24 months   MAL-ED           PERU                           20                0        1     164
24 months   MAL-ED           PERU                           20                1        0     164
24 months   MAL-ED           PERU                           24                0        0     164
24 months   MAL-ED           PERU                           24                1        0     164
24 months   MAL-ED           PERU                           25                0        0     164
24 months   MAL-ED           PERU                           25                1        0     164
24 months   MAL-ED           PERU                           27                0        0     164
24 months   MAL-ED           PERU                           27                1        0     164
24 months   MAL-ED           SOUTH AFRICA                   0                 0        0      91
24 months   MAL-ED           SOUTH AFRICA                   0                 1        0      91
24 months   MAL-ED           SOUTH AFRICA                   1                 0        0      91
24 months   MAL-ED           SOUTH AFRICA                   1                 1        0      91
24 months   MAL-ED           SOUTH AFRICA                   2                 0        1      91
24 months   MAL-ED           SOUTH AFRICA                   2                 1        0      91
24 months   MAL-ED           SOUTH AFRICA                   3                 0        0      91
24 months   MAL-ED           SOUTH AFRICA                   3                 1        0      91
24 months   MAL-ED           SOUTH AFRICA                   4                 0        2      91
24 months   MAL-ED           SOUTH AFRICA                   4                 1        2      91
24 months   MAL-ED           SOUTH AFRICA                   5                 0        1      91
24 months   MAL-ED           SOUTH AFRICA                   5                 1        1      91
24 months   MAL-ED           SOUTH AFRICA                   6                 0        5      91
24 months   MAL-ED           SOUTH AFRICA                   6                 1        1      91
24 months   MAL-ED           SOUTH AFRICA                   7                 0        4      91
24 months   MAL-ED           SOUTH AFRICA                   7                 1        2      91
24 months   MAL-ED           SOUTH AFRICA                   8                 0        7      91
24 months   MAL-ED           SOUTH AFRICA                   8                 1        3      91
24 months   MAL-ED           SOUTH AFRICA                   9                 0        3      91
24 months   MAL-ED           SOUTH AFRICA                   9                 1        2      91
24 months   MAL-ED           SOUTH AFRICA                   10                0        5      91
24 months   MAL-ED           SOUTH AFRICA                   10                1        3      91
24 months   MAL-ED           SOUTH AFRICA                   11                0        6      91
24 months   MAL-ED           SOUTH AFRICA                   11                1        9      91
24 months   MAL-ED           SOUTH AFRICA                   12                0       19      91
24 months   MAL-ED           SOUTH AFRICA                   12                1       10      91
24 months   MAL-ED           SOUTH AFRICA                   13                0        0      91
24 months   MAL-ED           SOUTH AFRICA                   13                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   14                0        2      91
24 months   MAL-ED           SOUTH AFRICA                   14                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   15                0        2      91
24 months   MAL-ED           SOUTH AFRICA                   15                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   16                0        0      91
24 months   MAL-ED           SOUTH AFRICA                   16                1        1      91
24 months   MAL-ED           SOUTH AFRICA                   17                0        0      91
24 months   MAL-ED           SOUTH AFRICA                   17                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   18                0        0      91
24 months   MAL-ED           SOUTH AFRICA                   18                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   19                0        0      91
24 months   MAL-ED           SOUTH AFRICA                   19                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   20                0        0      91
24 months   MAL-ED           SOUTH AFRICA                   20                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   24                0        0      91
24 months   MAL-ED           SOUTH AFRICA                   24                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   25                0        0      91
24 months   MAL-ED           SOUTH AFRICA                   25                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   27                0        0      91
24 months   MAL-ED           SOUTH AFRICA                   27                1        0      91
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0        4     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        9     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 0        2     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 1        9     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 0        2     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 1       11     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 0        3     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 1        7     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 0        1     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 1        7     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 0        3     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 1        5     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 0       35     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 1       70     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 0        1     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 1        2     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                0        1     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                1        2     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                1        2     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                1        1     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                1        0     177
24 months   NIH-Crypto       BANGLADESH                     0                 0       63     514
24 months   NIH-Crypto       BANGLADESH                     0                 1       39     514
24 months   NIH-Crypto       BANGLADESH                     1                 0        9     514
24 months   NIH-Crypto       BANGLADESH                     1                 1        2     514
24 months   NIH-Crypto       BANGLADESH                     2                 0        6     514
24 months   NIH-Crypto       BANGLADESH                     2                 1        4     514
24 months   NIH-Crypto       BANGLADESH                     3                 0       13     514
24 months   NIH-Crypto       BANGLADESH                     3                 1        8     514
24 months   NIH-Crypto       BANGLADESH                     4                 0       21     514
24 months   NIH-Crypto       BANGLADESH                     4                 1        9     514
24 months   NIH-Crypto       BANGLADESH                     5                 0       38     514
24 months   NIH-Crypto       BANGLADESH                     5                 1       27     514
24 months   NIH-Crypto       BANGLADESH                     6                 0       23     514
24 months   NIH-Crypto       BANGLADESH                     6                 1        3     514
24 months   NIH-Crypto       BANGLADESH                     7                 0       30     514
24 months   NIH-Crypto       BANGLADESH                     7                 1        8     514
24 months   NIH-Crypto       BANGLADESH                     8                 0       48     514
24 months   NIH-Crypto       BANGLADESH                     8                 1       10     514
24 months   NIH-Crypto       BANGLADESH                     9                 0       53     514
24 months   NIH-Crypto       BANGLADESH                     9                 1       10     514
24 months   NIH-Crypto       BANGLADESH                     10                0       32     514
24 months   NIH-Crypto       BANGLADESH                     10                1        9     514
24 months   NIH-Crypto       BANGLADESH                     11                0        0     514
24 months   NIH-Crypto       BANGLADESH                     11                1        0     514
24 months   NIH-Crypto       BANGLADESH                     12                0       24     514
24 months   NIH-Crypto       BANGLADESH                     12                1        3     514
24 months   NIH-Crypto       BANGLADESH                     13                0        0     514
24 months   NIH-Crypto       BANGLADESH                     13                1        0     514
24 months   NIH-Crypto       BANGLADESH                     14                0        5     514
24 months   NIH-Crypto       BANGLADESH                     14                1        0     514
24 months   NIH-Crypto       BANGLADESH                     15                0       12     514
24 months   NIH-Crypto       BANGLADESH                     15                1        0     514
24 months   NIH-Crypto       BANGLADESH                     16                0        0     514
24 months   NIH-Crypto       BANGLADESH                     16                1        0     514
24 months   NIH-Crypto       BANGLADESH                     17                0        5     514
24 months   NIH-Crypto       BANGLADESH                     17                1        0     514
24 months   NIH-Crypto       BANGLADESH                     18                0        0     514
24 months   NIH-Crypto       BANGLADESH                     18                1        0     514
24 months   NIH-Crypto       BANGLADESH                     19                0        0     514
24 months   NIH-Crypto       BANGLADESH                     19                1        0     514
24 months   NIH-Crypto       BANGLADESH                     20                0        0     514
24 months   NIH-Crypto       BANGLADESH                     20                1        0     514
24 months   NIH-Crypto       BANGLADESH                     24                0        0     514
24 months   NIH-Crypto       BANGLADESH                     24                1        0     514
24 months   NIH-Crypto       BANGLADESH                     25                0        0     514
24 months   NIH-Crypto       BANGLADESH                     25                1        0     514
24 months   NIH-Crypto       BANGLADESH                     27                0        0     514
24 months   NIH-Crypto       BANGLADESH                     27                1        0     514
24 months   PROBIT           BELARUS                        0                 0        0    3913
24 months   PROBIT           BELARUS                        0                 1        0    3913
24 months   PROBIT           BELARUS                        1                 0        0    3913
24 months   PROBIT           BELARUS                        1                 1        0    3913
24 months   PROBIT           BELARUS                        2                 0        0    3913
24 months   PROBIT           BELARUS                        2                 1        0    3913
24 months   PROBIT           BELARUS                        3                 0        0    3913
24 months   PROBIT           BELARUS                        3                 1        0    3913
24 months   PROBIT           BELARUS                        4                 0        0    3913
24 months   PROBIT           BELARUS                        4                 1        0    3913
24 months   PROBIT           BELARUS                        5                 0        0    3913
24 months   PROBIT           BELARUS                        5                 1        0    3913
24 months   PROBIT           BELARUS                        6                 0        0    3913
24 months   PROBIT           BELARUS                        6                 1        0    3913
24 months   PROBIT           BELARUS                        7                 0        0    3913
24 months   PROBIT           BELARUS                        7                 1        0    3913
24 months   PROBIT           BELARUS                        8                 0        0    3913
24 months   PROBIT           BELARUS                        8                 1        1    3913
24 months   PROBIT           BELARUS                        9                 0        0    3913
24 months   PROBIT           BELARUS                        9                 1        0    3913
24 months   PROBIT           BELARUS                        10                0       61    3913
24 months   PROBIT           BELARUS                        10                1        9    3913
24 months   PROBIT           BELARUS                        11                0        0    3913
24 months   PROBIT           BELARUS                        11                1        0    3913
24 months   PROBIT           BELARUS                        12                0     1333    3913
24 months   PROBIT           BELARUS                        12                1      112    3913
24 months   PROBIT           BELARUS                        13                0     1658    3913
24 months   PROBIT           BELARUS                        13                1      112    3913
24 months   PROBIT           BELARUS                        14                0       91    3913
24 months   PROBIT           BELARUS                        14                1        7    3913
24 months   PROBIT           BELARUS                        15                0        0    3913
24 months   PROBIT           BELARUS                        15                1        0    3913
24 months   PROBIT           BELARUS                        16                0      508    3913
24 months   PROBIT           BELARUS                        16                1       21    3913
24 months   PROBIT           BELARUS                        17                0        0    3913
24 months   PROBIT           BELARUS                        17                1        0    3913
24 months   PROBIT           BELARUS                        18                0        0    3913
24 months   PROBIT           BELARUS                        18                1        0    3913
24 months   PROBIT           BELARUS                        19                0        0    3913
24 months   PROBIT           BELARUS                        19                1        0    3913
24 months   PROBIT           BELARUS                        20                0        0    3913
24 months   PROBIT           BELARUS                        20                1        0    3913
24 months   PROBIT           BELARUS                        24                0        0    3913
24 months   PROBIT           BELARUS                        24                1        0    3913
24 months   PROBIT           BELARUS                        25                0        0    3913
24 months   PROBIT           BELARUS                        25                1        0    3913
24 months   PROBIT           BELARUS                        27                0        0    3913
24 months   PROBIT           BELARUS                        27                1        0    3913
24 months   PROVIDE          BANGLADESH                     0                 0       89     578
24 months   PROVIDE          BANGLADESH                     0                 1       81     578
24 months   PROVIDE          BANGLADESH                     1                 0        7     578
24 months   PROVIDE          BANGLADESH                     1                 1        3     578
24 months   PROVIDE          BANGLADESH                     2                 0       11     578
24 months   PROVIDE          BANGLADESH                     2                 1        6     578
24 months   PROVIDE          BANGLADESH                     3                 0       15     578
24 months   PROVIDE          BANGLADESH                     3                 1        5     578
24 months   PROVIDE          BANGLADESH                     4                 0       23     578
24 months   PROVIDE          BANGLADESH                     4                 1       18     578
24 months   PROVIDE          BANGLADESH                     5                 0       44     578
24 months   PROVIDE          BANGLADESH                     5                 1       17     578
24 months   PROVIDE          BANGLADESH                     6                 0        9     578
24 months   PROVIDE          BANGLADESH                     6                 1       16     578
24 months   PROVIDE          BANGLADESH                     7                 0       21     578
24 months   PROVIDE          BANGLADESH                     7                 1       11     578
24 months   PROVIDE          BANGLADESH                     8                 0       46     578
24 months   PROVIDE          BANGLADESH                     8                 1       11     578
24 months   PROVIDE          BANGLADESH                     9                 0       43     578
24 months   PROVIDE          BANGLADESH                     9                 1       10     578
24 months   PROVIDE          BANGLADESH                     10                0       25     578
24 months   PROVIDE          BANGLADESH                     10                1        5     578
24 months   PROVIDE          BANGLADESH                     11                0       21     578
24 months   PROVIDE          BANGLADESH                     11                1        4     578
24 months   PROVIDE          BANGLADESH                     12                0        2     578
24 months   PROVIDE          BANGLADESH                     12                1        1     578
24 months   PROVIDE          BANGLADESH                     13                0        0     578
24 months   PROVIDE          BANGLADESH                     13                1        0     578
24 months   PROVIDE          BANGLADESH                     14                0       15     578
24 months   PROVIDE          BANGLADESH                     14                1        2     578
24 months   PROVIDE          BANGLADESH                     15                0        8     578
24 months   PROVIDE          BANGLADESH                     15                1        0     578
24 months   PROVIDE          BANGLADESH                     16                0        8     578
24 months   PROVIDE          BANGLADESH                     16                1        0     578
24 months   PROVIDE          BANGLADESH                     17                0        0     578
24 months   PROVIDE          BANGLADESH                     17                1        0     578
24 months   PROVIDE          BANGLADESH                     18                0        0     578
24 months   PROVIDE          BANGLADESH                     18                1        0     578
24 months   PROVIDE          BANGLADESH                     19                0        1     578
24 months   PROVIDE          BANGLADESH                     19                1        0     578
24 months   PROVIDE          BANGLADESH                     20                0        0     578
24 months   PROVIDE          BANGLADESH                     20                1        0     578
24 months   PROVIDE          BANGLADESH                     24                0        0     578
24 months   PROVIDE          BANGLADESH                     24                1        0     578
24 months   PROVIDE          BANGLADESH                     25                0        0     578
24 months   PROVIDE          BANGLADESH                     25                1        0     578
24 months   PROVIDE          BANGLADESH                     27                0        0     578
24 months   PROVIDE          BANGLADESH                     27                1        0     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                1        0       6
24 months   ZVITAMBO         ZIMBABWE                       0                 0        6    1594
24 months   ZVITAMBO         ZIMBABWE                       0                 1        7    1594
24 months   ZVITAMBO         ZIMBABWE                       1                 0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       1                 1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       2                 0        2    1594
24 months   ZVITAMBO         ZIMBABWE                       2                 1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       3                 0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       3                 1        2    1594
24 months   ZVITAMBO         ZIMBABWE                       4                 0        2    1594
24 months   ZVITAMBO         ZIMBABWE                       4                 1        1    1594
24 months   ZVITAMBO         ZIMBABWE                       5                 0        1    1594
24 months   ZVITAMBO         ZIMBABWE                       5                 1        5    1594
24 months   ZVITAMBO         ZIMBABWE                       6                 0        1    1594
24 months   ZVITAMBO         ZIMBABWE                       6                 1        1    1594
24 months   ZVITAMBO         ZIMBABWE                       7                 0       52    1594
24 months   ZVITAMBO         ZIMBABWE                       7                 1       46    1594
24 months   ZVITAMBO         ZIMBABWE                       8                 0        4    1594
24 months   ZVITAMBO         ZIMBABWE                       8                 1        5    1594
24 months   ZVITAMBO         ZIMBABWE                       9                 0       76    1594
24 months   ZVITAMBO         ZIMBABWE                       9                 1       40    1594
24 months   ZVITAMBO         ZIMBABWE                       10                0       26    1594
24 months   ZVITAMBO         ZIMBABWE                       10                1       21    1594
24 months   ZVITAMBO         ZIMBABWE                       11                0      812    1594
24 months   ZVITAMBO         ZIMBABWE                       11                1      388    1594
24 months   ZVITAMBO         ZIMBABWE                       12                0        8    1594
24 months   ZVITAMBO         ZIMBABWE                       12                1        2    1594
24 months   ZVITAMBO         ZIMBABWE                       13                0       61    1594
24 months   ZVITAMBO         ZIMBABWE                       13                1       25    1594
24 months   ZVITAMBO         ZIMBABWE                       14                0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       14                1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       15                0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       15                1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       16                0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       16                1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       17                0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       17                1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       18                0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       18                1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       19                0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       19                1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       20                0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       20                1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       24                0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       24                1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       25                0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       25                1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       27                0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       27                1        0    1594


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
















