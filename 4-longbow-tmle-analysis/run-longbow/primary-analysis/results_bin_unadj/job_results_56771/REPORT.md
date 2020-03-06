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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        feducyrs    sstunted   n_cell       n
----------  ---------------  -----------------------------  ---------  ---------  -------  ------
Birth       COHORTS          GUATEMALA                      0                  0      348     804
Birth       COHORTS          GUATEMALA                      0                  1        7     804
Birth       COHORTS          GUATEMALA                      1                  0       40     804
Birth       COHORTS          GUATEMALA                      1                  1        0     804
Birth       COHORTS          GUATEMALA                      2                  0      148     804
Birth       COHORTS          GUATEMALA                      2                  1        0     804
Birth       COHORTS          GUATEMALA                      3                  0      105     804
Birth       COHORTS          GUATEMALA                      3                  1        1     804
Birth       COHORTS          GUATEMALA                      4                  0       50     804
Birth       COHORTS          GUATEMALA                      4                  1        0     804
Birth       COHORTS          GUATEMALA                      5                  0       16     804
Birth       COHORTS          GUATEMALA                      5                  1        1     804
Birth       COHORTS          GUATEMALA                      6                  0       74     804
Birth       COHORTS          GUATEMALA                      6                  1        2     804
Birth       COHORTS          GUATEMALA                      7                  0        3     804
Birth       COHORTS          GUATEMALA                      7                  1        0     804
Birth       COHORTS          GUATEMALA                      8                  0        2     804
Birth       COHORTS          GUATEMALA                      8                  1        0     804
Birth       COHORTS          GUATEMALA                      9                  0        1     804
Birth       COHORTS          GUATEMALA                      9                  1        0     804
Birth       COHORTS          GUATEMALA                      10                 0        1     804
Birth       COHORTS          GUATEMALA                      10                 1        0     804
Birth       COHORTS          GUATEMALA                      11                 0        0     804
Birth       COHORTS          GUATEMALA                      11                 1        0     804
Birth       COHORTS          GUATEMALA                      12                 0        4     804
Birth       COHORTS          GUATEMALA                      12                 1        0     804
Birth       COHORTS          GUATEMALA                      13                 0        0     804
Birth       COHORTS          GUATEMALA                      13                 1        0     804
Birth       COHORTS          GUATEMALA                      14                 0        1     804
Birth       COHORTS          GUATEMALA                      14                 1        0     804
Birth       COHORTS          GUATEMALA                      15                 0        0     804
Birth       COHORTS          GUATEMALA                      15                 1        0     804
Birth       COHORTS          GUATEMALA                      16                 0        0     804
Birth       COHORTS          GUATEMALA                      16                 1        0     804
Birth       COHORTS          GUATEMALA                      17                 0        0     804
Birth       COHORTS          GUATEMALA                      17                 1        0     804
Birth       COHORTS          GUATEMALA                      18                 0        0     804
Birth       COHORTS          GUATEMALA                      18                 1        0     804
Birth       COHORTS          GUATEMALA                      19                 0        0     804
Birth       COHORTS          GUATEMALA                      19                 1        0     804
Birth       COHORTS          GUATEMALA                      20                 0        0     804
Birth       COHORTS          GUATEMALA                      20                 1        0     804
Birth       COHORTS          GUATEMALA                      24                 0        0     804
Birth       COHORTS          GUATEMALA                      24                 1        0     804
Birth       COHORTS          GUATEMALA                      25                 0        0     804
Birth       COHORTS          GUATEMALA                      25                 1        0     804
Birth       COHORTS          GUATEMALA                      27                 0        0     804
Birth       COHORTS          GUATEMALA                      27                 1        0     804
Birth       COHORTS          INDIA                          0                  0      112    1354
Birth       COHORTS          INDIA                          0                  1        3    1354
Birth       COHORTS          INDIA                          1                  0        0    1354
Birth       COHORTS          INDIA                          1                  1        0    1354
Birth       COHORTS          INDIA                          2                  0        0    1354
Birth       COHORTS          INDIA                          2                  1        0    1354
Birth       COHORTS          INDIA                          3                  0      125    1354
Birth       COHORTS          INDIA                          3                  1        2    1354
Birth       COHORTS          INDIA                          4                  0        0    1354
Birth       COHORTS          INDIA                          4                  1        0    1354
Birth       COHORTS          INDIA                          5                  0        0    1354
Birth       COHORTS          INDIA                          5                  1        0    1354
Birth       COHORTS          INDIA                          6                  0        0    1354
Birth       COHORTS          INDIA                          6                  1        0    1354
Birth       COHORTS          INDIA                          7                  0        0    1354
Birth       COHORTS          INDIA                          7                  1        0    1354
Birth       COHORTS          INDIA                          8                  0      194    1354
Birth       COHORTS          INDIA                          8                  1        3    1354
Birth       COHORTS          INDIA                          9                  0        0    1354
Birth       COHORTS          INDIA                          9                  1        0    1354
Birth       COHORTS          INDIA                          10                 0        0    1354
Birth       COHORTS          INDIA                          10                 1        0    1354
Birth       COHORTS          INDIA                          11                 0        0    1354
Birth       COHORTS          INDIA                          11                 1        0    1354
Birth       COHORTS          INDIA                          12                 0      379    1354
Birth       COHORTS          INDIA                          12                 1        9    1354
Birth       COHORTS          INDIA                          13                 0        0    1354
Birth       COHORTS          INDIA                          13                 1        0    1354
Birth       COHORTS          INDIA                          14                 0      145    1354
Birth       COHORTS          INDIA                          14                 1        2    1354
Birth       COHORTS          INDIA                          15                 0      258    1354
Birth       COHORTS          INDIA                          15                 1        9    1354
Birth       COHORTS          INDIA                          16                 0        0    1354
Birth       COHORTS          INDIA                          16                 1        0    1354
Birth       COHORTS          INDIA                          17                 0      113    1354
Birth       COHORTS          INDIA                          17                 1        0    1354
Birth       COHORTS          INDIA                          18                 0        0    1354
Birth       COHORTS          INDIA                          18                 1        0    1354
Birth       COHORTS          INDIA                          19                 0        0    1354
Birth       COHORTS          INDIA                          19                 1        0    1354
Birth       COHORTS          INDIA                          20                 0        0    1354
Birth       COHORTS          INDIA                          20                 1        0    1354
Birth       COHORTS          INDIA                          24                 0        0    1354
Birth       COHORTS          INDIA                          24                 1        0    1354
Birth       COHORTS          INDIA                          25                 0        0    1354
Birth       COHORTS          INDIA                          25                 1        0    1354
Birth       COHORTS          INDIA                          27                 0        0    1354
Birth       COHORTS          INDIA                          27                 1        0    1354
Birth       COHORTS          PHILIPPINES                    0                  0       59    2873
Birth       COHORTS          PHILIPPINES                    0                  1        1    2873
Birth       COHORTS          PHILIPPINES                    1                  0       36    2873
Birth       COHORTS          PHILIPPINES                    1                  1        0    2873
Birth       COHORTS          PHILIPPINES                    2                  0       93    2873
Birth       COHORTS          PHILIPPINES                    2                  1        3    2873
Birth       COHORTS          PHILIPPINES                    3                  0      164    2873
Birth       COHORTS          PHILIPPINES                    3                  1        5    2873
Birth       COHORTS          PHILIPPINES                    4                  0      256    2873
Birth       COHORTS          PHILIPPINES                    4                  1        6    2873
Birth       COHORTS          PHILIPPINES                    5                  0      202    2873
Birth       COHORTS          PHILIPPINES                    5                  1        2    2873
Birth       COHORTS          PHILIPPINES                    6                  0      629    2873
Birth       COHORTS          PHILIPPINES                    6                  1       14    2873
Birth       COHORTS          PHILIPPINES                    7                  0      148    2873
Birth       COHORTS          PHILIPPINES                    7                  1        3    2873
Birth       COHORTS          PHILIPPINES                    8                  0      223    2873
Birth       COHORTS          PHILIPPINES                    8                  1        2    2873
Birth       COHORTS          PHILIPPINES                    9                  0      195    2873
Birth       COHORTS          PHILIPPINES                    9                  1        2    2873
Birth       COHORTS          PHILIPPINES                    10                 0      328    2873
Birth       COHORTS          PHILIPPINES                    10                 1        2    2873
Birth       COHORTS          PHILIPPINES                    11                 0       65    2873
Birth       COHORTS          PHILIPPINES                    11                 1        0    2873
Birth       COHORTS          PHILIPPINES                    12                 0      178    2873
Birth       COHORTS          PHILIPPINES                    12                 1        1    2873
Birth       COHORTS          PHILIPPINES                    13                 0       62    2873
Birth       COHORTS          PHILIPPINES                    13                 1        1    2873
Birth       COHORTS          PHILIPPINES                    14                 0      145    2873
Birth       COHORTS          PHILIPPINES                    14                 1        0    2873
Birth       COHORTS          PHILIPPINES                    15                 0       36    2873
Birth       COHORTS          PHILIPPINES                    15                 1        0    2873
Birth       COHORTS          PHILIPPINES                    16                 0        7    2873
Birth       COHORTS          PHILIPPINES                    16                 1        1    2873
Birth       COHORTS          PHILIPPINES                    17                 0        2    2873
Birth       COHORTS          PHILIPPINES                    17                 1        0    2873
Birth       COHORTS          PHILIPPINES                    18                 0        2    2873
Birth       COHORTS          PHILIPPINES                    18                 1        0    2873
Birth       COHORTS          PHILIPPINES                    19                 0        0    2873
Birth       COHORTS          PHILIPPINES                    19                 1        0    2873
Birth       COHORTS          PHILIPPINES                    20                 0        0    2873
Birth       COHORTS          PHILIPPINES                    20                 1        0    2873
Birth       COHORTS          PHILIPPINES                    24                 0        0    2873
Birth       COHORTS          PHILIPPINES                    24                 1        0    2873
Birth       COHORTS          PHILIPPINES                    25                 0        0    2873
Birth       COHORTS          PHILIPPINES                    25                 1        0    2873
Birth       COHORTS          PHILIPPINES                    27                 0        0    2873
Birth       COHORTS          PHILIPPINES                    27                 1        0    2873
Birth       GMS-Nepal        NEPAL                          0                  0      278     694
Birth       GMS-Nepal        NEPAL                          0                  1       18     694
Birth       GMS-Nepal        NEPAL                          1                  0        0     694
Birth       GMS-Nepal        NEPAL                          1                  1        0     694
Birth       GMS-Nepal        NEPAL                          2                  0        0     694
Birth       GMS-Nepal        NEPAL                          2                  1        0     694
Birth       GMS-Nepal        NEPAL                          3                  0        0     694
Birth       GMS-Nepal        NEPAL                          3                  1        0     694
Birth       GMS-Nepal        NEPAL                          4                  0        0     694
Birth       GMS-Nepal        NEPAL                          4                  1        0     694
Birth       GMS-Nepal        NEPAL                          5                  0      106     694
Birth       GMS-Nepal        NEPAL                          5                  1        3     694
Birth       GMS-Nepal        NEPAL                          6                  0        0     694
Birth       GMS-Nepal        NEPAL                          6                  1        0     694
Birth       GMS-Nepal        NEPAL                          7                  0        0     694
Birth       GMS-Nepal        NEPAL                          7                  1        0     694
Birth       GMS-Nepal        NEPAL                          8                  0      114     694
Birth       GMS-Nepal        NEPAL                          8                  1        3     694
Birth       GMS-Nepal        NEPAL                          9                  0        0     694
Birth       GMS-Nepal        NEPAL                          9                  1        0     694
Birth       GMS-Nepal        NEPAL                          10                 0      127     694
Birth       GMS-Nepal        NEPAL                          10                 1        6     694
Birth       GMS-Nepal        NEPAL                          11                 0        0     694
Birth       GMS-Nepal        NEPAL                          11                 1        0     694
Birth       GMS-Nepal        NEPAL                          12                 0       38     694
Birth       GMS-Nepal        NEPAL                          12                 1        1     694
Birth       GMS-Nepal        NEPAL                          13                 0        0     694
Birth       GMS-Nepal        NEPAL                          13                 1        0     694
Birth       GMS-Nepal        NEPAL                          14                 0        0     694
Birth       GMS-Nepal        NEPAL                          14                 1        0     694
Birth       GMS-Nepal        NEPAL                          15                 0        0     694
Birth       GMS-Nepal        NEPAL                          15                 1        0     694
Birth       GMS-Nepal        NEPAL                          16                 0        0     694
Birth       GMS-Nepal        NEPAL                          16                 1        0     694
Birth       GMS-Nepal        NEPAL                          17                 0        0     694
Birth       GMS-Nepal        NEPAL                          17                 1        0     694
Birth       GMS-Nepal        NEPAL                          18                 0        0     694
Birth       GMS-Nepal        NEPAL                          18                 1        0     694
Birth       GMS-Nepal        NEPAL                          19                 0        0     694
Birth       GMS-Nepal        NEPAL                          19                 1        0     694
Birth       GMS-Nepal        NEPAL                          20                 0        0     694
Birth       GMS-Nepal        NEPAL                          20                 1        0     694
Birth       GMS-Nepal        NEPAL                          24                 0        0     694
Birth       GMS-Nepal        NEPAL                          24                 1        0     694
Birth       GMS-Nepal        NEPAL                          25                 0        0     694
Birth       GMS-Nepal        NEPAL                          25                 1        0     694
Birth       GMS-Nepal        NEPAL                          27                 0        0     694
Birth       GMS-Nepal        NEPAL                          27                 1        0     694
Birth       MAL-ED           BANGLADESH                     0                  0        0     129
Birth       MAL-ED           BANGLADESH                     0                  1        0     129
Birth       MAL-ED           BANGLADESH                     1                  0        5     129
Birth       MAL-ED           BANGLADESH                     1                  1        0     129
Birth       MAL-ED           BANGLADESH                     2                  0       10     129
Birth       MAL-ED           BANGLADESH                     2                  1        1     129
Birth       MAL-ED           BANGLADESH                     3                  0       12     129
Birth       MAL-ED           BANGLADESH                     3                  1        0     129
Birth       MAL-ED           BANGLADESH                     4                  0        8     129
Birth       MAL-ED           BANGLADESH                     4                  1        0     129
Birth       MAL-ED           BANGLADESH                     5                  0       28     129
Birth       MAL-ED           BANGLADESH                     5                  1        2     129
Birth       MAL-ED           BANGLADESH                     6                  0        7     129
Birth       MAL-ED           BANGLADESH                     6                  1        0     129
Birth       MAL-ED           BANGLADESH                     7                  0        9     129
Birth       MAL-ED           BANGLADESH                     7                  1        0     129
Birth       MAL-ED           BANGLADESH                     8                  0       16     129
Birth       MAL-ED           BANGLADESH                     8                  1        0     129
Birth       MAL-ED           BANGLADESH                     9                  0       10     129
Birth       MAL-ED           BANGLADESH                     9                  1        3     129
Birth       MAL-ED           BANGLADESH                     10                 0        9     129
Birth       MAL-ED           BANGLADESH                     10                 1        0     129
Birth       MAL-ED           BANGLADESH                     11                 0        0     129
Birth       MAL-ED           BANGLADESH                     11                 1        0     129
Birth       MAL-ED           BANGLADESH                     12                 0        7     129
Birth       MAL-ED           BANGLADESH                     12                 1        0     129
Birth       MAL-ED           BANGLADESH                     13                 0        0     129
Birth       MAL-ED           BANGLADESH                     13                 1        0     129
Birth       MAL-ED           BANGLADESH                     14                 0        0     129
Birth       MAL-ED           BANGLADESH                     14                 1        0     129
Birth       MAL-ED           BANGLADESH                     15                 0        0     129
Birth       MAL-ED           BANGLADESH                     15                 1        0     129
Birth       MAL-ED           BANGLADESH                     16                 0        2     129
Birth       MAL-ED           BANGLADESH                     16                 1        0     129
Birth       MAL-ED           BANGLADESH                     17                 0        0     129
Birth       MAL-ED           BANGLADESH                     17                 1        0     129
Birth       MAL-ED           BANGLADESH                     18                 0        0     129
Birth       MAL-ED           BANGLADESH                     18                 1        0     129
Birth       MAL-ED           BANGLADESH                     19                 0        0     129
Birth       MAL-ED           BANGLADESH                     19                 1        0     129
Birth       MAL-ED           BANGLADESH                     20                 0        0     129
Birth       MAL-ED           BANGLADESH                     20                 1        0     129
Birth       MAL-ED           BANGLADESH                     24                 0        0     129
Birth       MAL-ED           BANGLADESH                     24                 1        0     129
Birth       MAL-ED           BANGLADESH                     25                 0        0     129
Birth       MAL-ED           BANGLADESH                     25                 1        0     129
Birth       MAL-ED           BANGLADESH                     27                 0        0     129
Birth       MAL-ED           BANGLADESH                     27                 1        0     129
Birth       MAL-ED           INDIA                          0                  0        0      24
Birth       MAL-ED           INDIA                          0                  1        0      24
Birth       MAL-ED           INDIA                          1                  0        0      24
Birth       MAL-ED           INDIA                          1                  1        0      24
Birth       MAL-ED           INDIA                          2                  0        1      24
Birth       MAL-ED           INDIA                          2                  1        0      24
Birth       MAL-ED           INDIA                          3                  0        6      24
Birth       MAL-ED           INDIA                          3                  1        0      24
Birth       MAL-ED           INDIA                          4                  0        2      24
Birth       MAL-ED           INDIA                          4                  1        0      24
Birth       MAL-ED           INDIA                          5                  0        4      24
Birth       MAL-ED           INDIA                          5                  1        1      24
Birth       MAL-ED           INDIA                          6                  0        0      24
Birth       MAL-ED           INDIA                          6                  1        0      24
Birth       MAL-ED           INDIA                          7                  0        0      24
Birth       MAL-ED           INDIA                          7                  1        0      24
Birth       MAL-ED           INDIA                          8                  0        3      24
Birth       MAL-ED           INDIA                          8                  1        0      24
Birth       MAL-ED           INDIA                          9                  0        5      24
Birth       MAL-ED           INDIA                          9                  1        0      24
Birth       MAL-ED           INDIA                          10                 0        0      24
Birth       MAL-ED           INDIA                          10                 1        0      24
Birth       MAL-ED           INDIA                          11                 0        1      24
Birth       MAL-ED           INDIA                          11                 1        0      24
Birth       MAL-ED           INDIA                          12                 0        1      24
Birth       MAL-ED           INDIA                          12                 1        0      24
Birth       MAL-ED           INDIA                          13                 0        0      24
Birth       MAL-ED           INDIA                          13                 1        0      24
Birth       MAL-ED           INDIA                          14                 0        0      24
Birth       MAL-ED           INDIA                          14                 1        0      24
Birth       MAL-ED           INDIA                          15                 0        0      24
Birth       MAL-ED           INDIA                          15                 1        0      24
Birth       MAL-ED           INDIA                          16                 0        0      24
Birth       MAL-ED           INDIA                          16                 1        0      24
Birth       MAL-ED           INDIA                          17                 0        0      24
Birth       MAL-ED           INDIA                          17                 1        0      24
Birth       MAL-ED           INDIA                          18                 0        0      24
Birth       MAL-ED           INDIA                          18                 1        0      24
Birth       MAL-ED           INDIA                          19                 0        0      24
Birth       MAL-ED           INDIA                          19                 1        0      24
Birth       MAL-ED           INDIA                          20                 0        0      24
Birth       MAL-ED           INDIA                          20                 1        0      24
Birth       MAL-ED           INDIA                          24                 0        0      24
Birth       MAL-ED           INDIA                          24                 1        0      24
Birth       MAL-ED           INDIA                          25                 0        0      24
Birth       MAL-ED           INDIA                          25                 1        0      24
Birth       MAL-ED           INDIA                          27                 0        0      24
Birth       MAL-ED           INDIA                          27                 1        0      24
Birth       MAL-ED           NEPAL                          0                  0        0      10
Birth       MAL-ED           NEPAL                          0                  1        0      10
Birth       MAL-ED           NEPAL                          1                  0        0      10
Birth       MAL-ED           NEPAL                          1                  1        0      10
Birth       MAL-ED           NEPAL                          2                  0        1      10
Birth       MAL-ED           NEPAL                          2                  1        0      10
Birth       MAL-ED           NEPAL                          3                  0        0      10
Birth       MAL-ED           NEPAL                          3                  1        1      10
Birth       MAL-ED           NEPAL                          4                  0        0      10
Birth       MAL-ED           NEPAL                          4                  1        0      10
Birth       MAL-ED           NEPAL                          5                  0        2      10
Birth       MAL-ED           NEPAL                          5                  1        0      10
Birth       MAL-ED           NEPAL                          6                  0        0      10
Birth       MAL-ED           NEPAL                          6                  1        0      10
Birth       MAL-ED           NEPAL                          7                  0        3      10
Birth       MAL-ED           NEPAL                          7                  1        0      10
Birth       MAL-ED           NEPAL                          8                  0        0      10
Birth       MAL-ED           NEPAL                          8                  1        0      10
Birth       MAL-ED           NEPAL                          9                  0        0      10
Birth       MAL-ED           NEPAL                          9                  1        0      10
Birth       MAL-ED           NEPAL                          10                 0        2      10
Birth       MAL-ED           NEPAL                          10                 1        0      10
Birth       MAL-ED           NEPAL                          11                 0        0      10
Birth       MAL-ED           NEPAL                          11                 1        0      10
Birth       MAL-ED           NEPAL                          12                 0        1      10
Birth       MAL-ED           NEPAL                          12                 1        0      10
Birth       MAL-ED           NEPAL                          13                 0        0      10
Birth       MAL-ED           NEPAL                          13                 1        0      10
Birth       MAL-ED           NEPAL                          14                 0        0      10
Birth       MAL-ED           NEPAL                          14                 1        0      10
Birth       MAL-ED           NEPAL                          15                 0        0      10
Birth       MAL-ED           NEPAL                          15                 1        0      10
Birth       MAL-ED           NEPAL                          16                 0        0      10
Birth       MAL-ED           NEPAL                          16                 1        0      10
Birth       MAL-ED           NEPAL                          17                 0        0      10
Birth       MAL-ED           NEPAL                          17                 1        0      10
Birth       MAL-ED           NEPAL                          18                 0        0      10
Birth       MAL-ED           NEPAL                          18                 1        0      10
Birth       MAL-ED           NEPAL                          19                 0        0      10
Birth       MAL-ED           NEPAL                          19                 1        0      10
Birth       MAL-ED           NEPAL                          20                 0        0      10
Birth       MAL-ED           NEPAL                          20                 1        0      10
Birth       MAL-ED           NEPAL                          24                 0        0      10
Birth       MAL-ED           NEPAL                          24                 1        0      10
Birth       MAL-ED           NEPAL                          25                 0        0      10
Birth       MAL-ED           NEPAL                          25                 1        0      10
Birth       MAL-ED           NEPAL                          27                 0        0      10
Birth       MAL-ED           NEPAL                          27                 1        0      10
Birth       MAL-ED           PERU                           0                  0        1     194
Birth       MAL-ED           PERU                           0                  1        0     194
Birth       MAL-ED           PERU                           1                  0        2     194
Birth       MAL-ED           PERU                           1                  1        0     194
Birth       MAL-ED           PERU                           2                  0        0     194
Birth       MAL-ED           PERU                           2                  1        0     194
Birth       MAL-ED           PERU                           3                  0        7     194
Birth       MAL-ED           PERU                           3                  1        0     194
Birth       MAL-ED           PERU                           4                  0        3     194
Birth       MAL-ED           PERU                           4                  1        0     194
Birth       MAL-ED           PERU                           5                  0        6     194
Birth       MAL-ED           PERU                           5                  1        1     194
Birth       MAL-ED           PERU                           6                  0       21     194
Birth       MAL-ED           PERU                           6                  1        0     194
Birth       MAL-ED           PERU                           7                  0       17     194
Birth       MAL-ED           PERU                           7                  1        0     194
Birth       MAL-ED           PERU                           8                  0       20     194
Birth       MAL-ED           PERU                           8                  1        0     194
Birth       MAL-ED           PERU                           9                  0       19     194
Birth       MAL-ED           PERU                           9                  1        1     194
Birth       MAL-ED           PERU                           10                 0       10     194
Birth       MAL-ED           PERU                           10                 1        0     194
Birth       MAL-ED           PERU                           11                 0       72     194
Birth       MAL-ED           PERU                           11                 1        0     194
Birth       MAL-ED           PERU                           12                 0        1     194
Birth       MAL-ED           PERU                           12                 1        0     194
Birth       MAL-ED           PERU                           13                 0        3     194
Birth       MAL-ED           PERU                           13                 1        0     194
Birth       MAL-ED           PERU                           14                 0        3     194
Birth       MAL-ED           PERU                           14                 1        1     194
Birth       MAL-ED           PERU                           15                 0        1     194
Birth       MAL-ED           PERU                           15                 1        0     194
Birth       MAL-ED           PERU                           16                 0        1     194
Birth       MAL-ED           PERU                           16                 1        0     194
Birth       MAL-ED           PERU                           17                 0        1     194
Birth       MAL-ED           PERU                           17                 1        0     194
Birth       MAL-ED           PERU                           18                 0        1     194
Birth       MAL-ED           PERU                           18                 1        0     194
Birth       MAL-ED           PERU                           19                 0        0     194
Birth       MAL-ED           PERU                           19                 1        0     194
Birth       MAL-ED           PERU                           20                 0        2     194
Birth       MAL-ED           PERU                           20                 1        0     194
Birth       MAL-ED           PERU                           24                 0        0     194
Birth       MAL-ED           PERU                           24                 1        0     194
Birth       MAL-ED           PERU                           25                 0        0     194
Birth       MAL-ED           PERU                           25                 1        0     194
Birth       MAL-ED           PERU                           27                 0        0     194
Birth       MAL-ED           PERU                           27                 1        0     194
Birth       MAL-ED           SOUTH AFRICA                   0                  0        0      33
Birth       MAL-ED           SOUTH AFRICA                   0                  1        0      33
Birth       MAL-ED           SOUTH AFRICA                   1                  0        0      33
Birth       MAL-ED           SOUTH AFRICA                   1                  1        0      33
Birth       MAL-ED           SOUTH AFRICA                   2                  0        1      33
Birth       MAL-ED           SOUTH AFRICA                   2                  1        0      33
Birth       MAL-ED           SOUTH AFRICA                   3                  0        0      33
Birth       MAL-ED           SOUTH AFRICA                   3                  1        0      33
Birth       MAL-ED           SOUTH AFRICA                   4                  0        1      33
Birth       MAL-ED           SOUTH AFRICA                   4                  1        0      33
Birth       MAL-ED           SOUTH AFRICA                   5                  0        1      33
Birth       MAL-ED           SOUTH AFRICA                   5                  1        0      33
Birth       MAL-ED           SOUTH AFRICA                   6                  0        2      33
Birth       MAL-ED           SOUTH AFRICA                   6                  1        0      33
Birth       MAL-ED           SOUTH AFRICA                   7                  0        2      33
Birth       MAL-ED           SOUTH AFRICA                   7                  1        0      33
Birth       MAL-ED           SOUTH AFRICA                   8                  0        6      33
Birth       MAL-ED           SOUTH AFRICA                   8                  1        0      33
Birth       MAL-ED           SOUTH AFRICA                   9                  0        1      33
Birth       MAL-ED           SOUTH AFRICA                   9                  1        0      33
Birth       MAL-ED           SOUTH AFRICA                   10                 0        1      33
Birth       MAL-ED           SOUTH AFRICA                   10                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   11                 0        8      33
Birth       MAL-ED           SOUTH AFRICA                   11                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   12                 0        8      33
Birth       MAL-ED           SOUTH AFRICA                   12                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   13                 0        0      33
Birth       MAL-ED           SOUTH AFRICA                   13                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   14                 0        1      33
Birth       MAL-ED           SOUTH AFRICA                   14                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   15                 0        0      33
Birth       MAL-ED           SOUTH AFRICA                   15                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   16                 0        1      33
Birth       MAL-ED           SOUTH AFRICA                   16                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   17                 0        0      33
Birth       MAL-ED           SOUTH AFRICA                   17                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   18                 0        0      33
Birth       MAL-ED           SOUTH AFRICA                   18                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   19                 0        0      33
Birth       MAL-ED           SOUTH AFRICA                   19                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   20                 0        0      33
Birth       MAL-ED           SOUTH AFRICA                   20                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   24                 0        0      33
Birth       MAL-ED           SOUTH AFRICA                   24                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   25                 0        0      33
Birth       MAL-ED           SOUTH AFRICA                   25                 1        0      33
Birth       MAL-ED           SOUTH AFRICA                   27                 0        0      33
Birth       MAL-ED           SOUTH AFRICA                   27                 1        0      33
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        9     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  0        5     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  1        1     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  0        6     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  0        6     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  0        4     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  1        1     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  0        4     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  1        1     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  0       55     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  1        4     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  0        1     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  0        2     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 0        1     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 0        2     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                 0        1     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                 1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                 0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                 1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                 0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                 1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                 0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                 1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                 0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                 1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                 0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                 1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                 0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                 1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                 0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                 1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                 0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                 1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                 0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                 1        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                 0        0     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                 1        0     103
Birth       NIH-Crypto       BANGLADESH                     0                  0      168     732
Birth       NIH-Crypto       BANGLADESH                     0                  1        0     732
Birth       NIH-Crypto       BANGLADESH                     1                  0       20     732
Birth       NIH-Crypto       BANGLADESH                     1                  1        0     732
Birth       NIH-Crypto       BANGLADESH                     2                  0       13     732
Birth       NIH-Crypto       BANGLADESH                     2                  1        0     732
Birth       NIH-Crypto       BANGLADESH                     3                  0       34     732
Birth       NIH-Crypto       BANGLADESH                     3                  1        0     732
Birth       NIH-Crypto       BANGLADESH                     4                  0       40     732
Birth       NIH-Crypto       BANGLADESH                     4                  1        0     732
Birth       NIH-Crypto       BANGLADESH                     5                  0       83     732
Birth       NIH-Crypto       BANGLADESH                     5                  1        1     732
Birth       NIH-Crypto       BANGLADESH                     6                  0       31     732
Birth       NIH-Crypto       BANGLADESH                     6                  1        1     732
Birth       NIH-Crypto       BANGLADESH                     7                  0       54     732
Birth       NIH-Crypto       BANGLADESH                     7                  1        3     732
Birth       NIH-Crypto       BANGLADESH                     8                  0       86     732
Birth       NIH-Crypto       BANGLADESH                     8                  1        1     732
Birth       NIH-Crypto       BANGLADESH                     9                  0       80     732
Birth       NIH-Crypto       BANGLADESH                     9                  1        3     732
Birth       NIH-Crypto       BANGLADESH                     10                 0       49     732
Birth       NIH-Crypto       BANGLADESH                     10                 1        1     732
Birth       NIH-Crypto       BANGLADESH                     11                 0        0     732
Birth       NIH-Crypto       BANGLADESH                     11                 1        0     732
Birth       NIH-Crypto       BANGLADESH                     12                 0       33     732
Birth       NIH-Crypto       BANGLADESH                     12                 1        0     732
Birth       NIH-Crypto       BANGLADESH                     13                 0        0     732
Birth       NIH-Crypto       BANGLADESH                     13                 1        0     732
Birth       NIH-Crypto       BANGLADESH                     14                 0        8     732
Birth       NIH-Crypto       BANGLADESH                     14                 1        0     732
Birth       NIH-Crypto       BANGLADESH                     15                 0       16     732
Birth       NIH-Crypto       BANGLADESH                     15                 1        0     732
Birth       NIH-Crypto       BANGLADESH                     16                 0        0     732
Birth       NIH-Crypto       BANGLADESH                     16                 1        0     732
Birth       NIH-Crypto       BANGLADESH                     17                 0        7     732
Birth       NIH-Crypto       BANGLADESH                     17                 1        0     732
Birth       NIH-Crypto       BANGLADESH                     18                 0        0     732
Birth       NIH-Crypto       BANGLADESH                     18                 1        0     732
Birth       NIH-Crypto       BANGLADESH                     19                 0        0     732
Birth       NIH-Crypto       BANGLADESH                     19                 1        0     732
Birth       NIH-Crypto       BANGLADESH                     20                 0        0     732
Birth       NIH-Crypto       BANGLADESH                     20                 1        0     732
Birth       NIH-Crypto       BANGLADESH                     24                 0        0     732
Birth       NIH-Crypto       BANGLADESH                     24                 1        0     732
Birth       NIH-Crypto       BANGLADESH                     25                 0        0     732
Birth       NIH-Crypto       BANGLADESH                     25                 1        0     732
Birth       NIH-Crypto       BANGLADESH                     27                 0        0     732
Birth       NIH-Crypto       BANGLADESH                     27                 1        0     732
Birth       PROBIT           BELARUS                        0                  0        0   13424
Birth       PROBIT           BELARUS                        0                  1        0   13424
Birth       PROBIT           BELARUS                        1                  0        0   13424
Birth       PROBIT           BELARUS                        1                  1        0   13424
Birth       PROBIT           BELARUS                        2                  0        0   13424
Birth       PROBIT           BELARUS                        2                  1        0   13424
Birth       PROBIT           BELARUS                        3                  0        0   13424
Birth       PROBIT           BELARUS                        3                  1        0   13424
Birth       PROBIT           BELARUS                        4                  0        0   13424
Birth       PROBIT           BELARUS                        4                  1        0   13424
Birth       PROBIT           BELARUS                        5                  0        0   13424
Birth       PROBIT           BELARUS                        5                  1        0   13424
Birth       PROBIT           BELARUS                        6                  0        0   13424
Birth       PROBIT           BELARUS                        6                  1        0   13424
Birth       PROBIT           BELARUS                        7                  0        0   13424
Birth       PROBIT           BELARUS                        7                  1        0   13424
Birth       PROBIT           BELARUS                        8                  0       23   13424
Birth       PROBIT           BELARUS                        8                  1        0   13424
Birth       PROBIT           BELARUS                        9                  0        0   13424
Birth       PROBIT           BELARUS                        9                  1        0   13424
Birth       PROBIT           BELARUS                        10                 0      295   13424
Birth       PROBIT           BELARUS                        10                 1        0   13424
Birth       PROBIT           BELARUS                        11                 0        0   13424
Birth       PROBIT           BELARUS                        11                 1        0   13424
Birth       PROBIT           BELARUS                        12                 0     5000   13424
Birth       PROBIT           BELARUS                        12                 1        2   13424
Birth       PROBIT           BELARUS                        13                 0     6042   13424
Birth       PROBIT           BELARUS                        13                 1        3   13424
Birth       PROBIT           BELARUS                        14                 0      333   13424
Birth       PROBIT           BELARUS                        14                 1        0   13424
Birth       PROBIT           BELARUS                        15                 0        0   13424
Birth       PROBIT           BELARUS                        15                 1        0   13424
Birth       PROBIT           BELARUS                        16                 0     1726   13424
Birth       PROBIT           BELARUS                        16                 1        0   13424
Birth       PROBIT           BELARUS                        17                 0        0   13424
Birth       PROBIT           BELARUS                        17                 1        0   13424
Birth       PROBIT           BELARUS                        18                 0        0   13424
Birth       PROBIT           BELARUS                        18                 1        0   13424
Birth       PROBIT           BELARUS                        19                 0        0   13424
Birth       PROBIT           BELARUS                        19                 1        0   13424
Birth       PROBIT           BELARUS                        20                 0        0   13424
Birth       PROBIT           BELARUS                        20                 1        0   13424
Birth       PROBIT           BELARUS                        24                 0        0   13424
Birth       PROBIT           BELARUS                        24                 1        0   13424
Birth       PROBIT           BELARUS                        25                 0        0   13424
Birth       PROBIT           BELARUS                        25                 1        0   13424
Birth       PROBIT           BELARUS                        27                 0        0   13424
Birth       PROBIT           BELARUS                        27                 1        0   13424
Birth       PROVIDE          BANGLADESH                     0                  0      163     539
Birth       PROVIDE          BANGLADESH                     0                  1        1     539
Birth       PROVIDE          BANGLADESH                     1                  0        9     539
Birth       PROVIDE          BANGLADESH                     1                  1        0     539
Birth       PROVIDE          BANGLADESH                     2                  0       14     539
Birth       PROVIDE          BANGLADESH                     2                  1        0     539
Birth       PROVIDE          BANGLADESH                     3                  0       24     539
Birth       PROVIDE          BANGLADESH                     3                  1        0     539
Birth       PROVIDE          BANGLADESH                     4                  0       40     539
Birth       PROVIDE          BANGLADESH                     4                  1        0     539
Birth       PROVIDE          BANGLADESH                     5                  0       68     539
Birth       PROVIDE          BANGLADESH                     5                  1        1     539
Birth       PROVIDE          BANGLADESH                     6                  0       23     539
Birth       PROVIDE          BANGLADESH                     6                  1        1     539
Birth       PROVIDE          BANGLADESH                     7                  0       32     539
Birth       PROVIDE          BANGLADESH                     7                  1        0     539
Birth       PROVIDE          BANGLADESH                     8                  0       42     539
Birth       PROVIDE          BANGLADESH                     8                  1        0     539
Birth       PROVIDE          BANGLADESH                     9                  0       45     539
Birth       PROVIDE          BANGLADESH                     9                  1        0     539
Birth       PROVIDE          BANGLADESH                     10                 0       26     539
Birth       PROVIDE          BANGLADESH                     10                 1        0     539
Birth       PROVIDE          BANGLADESH                     11                 0       19     539
Birth       PROVIDE          BANGLADESH                     11                 1        1     539
Birth       PROVIDE          BANGLADESH                     12                 0        2     539
Birth       PROVIDE          BANGLADESH                     12                 1        0     539
Birth       PROVIDE          BANGLADESH                     13                 0        0     539
Birth       PROVIDE          BANGLADESH                     13                 1        0     539
Birth       PROVIDE          BANGLADESH                     14                 0       17     539
Birth       PROVIDE          BANGLADESH                     14                 1        0     539
Birth       PROVIDE          BANGLADESH                     15                 0        6     539
Birth       PROVIDE          BANGLADESH                     15                 1        0     539
Birth       PROVIDE          BANGLADESH                     16                 0        4     539
Birth       PROVIDE          BANGLADESH                     16                 1        0     539
Birth       PROVIDE          BANGLADESH                     17                 0        0     539
Birth       PROVIDE          BANGLADESH                     17                 1        0     539
Birth       PROVIDE          BANGLADESH                     18                 0        0     539
Birth       PROVIDE          BANGLADESH                     18                 1        0     539
Birth       PROVIDE          BANGLADESH                     19                 0        1     539
Birth       PROVIDE          BANGLADESH                     19                 1        0     539
Birth       PROVIDE          BANGLADESH                     20                 0        0     539
Birth       PROVIDE          BANGLADESH                     20                 1        0     539
Birth       PROVIDE          BANGLADESH                     24                 0        0     539
Birth       PROVIDE          BANGLADESH                     24                 1        0     539
Birth       PROVIDE          BANGLADESH                     25                 0        0     539
Birth       PROVIDE          BANGLADESH                     25                 1        0     539
Birth       PROVIDE          BANGLADESH                     27                 0        0     539
Birth       PROVIDE          BANGLADESH                     27                 1        0     539
Birth       SAS-CompFeed     INDIA                          0                  0      150    1249
Birth       SAS-CompFeed     INDIA                          0                  1       15    1249
Birth       SAS-CompFeed     INDIA                          1                  0        0    1249
Birth       SAS-CompFeed     INDIA                          1                  1        0    1249
Birth       SAS-CompFeed     INDIA                          2                  0        5    1249
Birth       SAS-CompFeed     INDIA                          2                  1        1    1249
Birth       SAS-CompFeed     INDIA                          3                  0       13    1249
Birth       SAS-CompFeed     INDIA                          3                  1        1    1249
Birth       SAS-CompFeed     INDIA                          4                  0       20    1249
Birth       SAS-CompFeed     INDIA                          4                  1        0    1249
Birth       SAS-CompFeed     INDIA                          5                  0       75    1249
Birth       SAS-CompFeed     INDIA                          5                  1        4    1249
Birth       SAS-CompFeed     INDIA                          6                  0       21    1249
Birth       SAS-CompFeed     INDIA                          6                  1        1    1249
Birth       SAS-CompFeed     INDIA                          7                  0       89    1249
Birth       SAS-CompFeed     INDIA                          7                  1        9    1249
Birth       SAS-CompFeed     INDIA                          8                  0      130    1249
Birth       SAS-CompFeed     INDIA                          8                  1        9    1249
Birth       SAS-CompFeed     INDIA                          9                  0       75    1249
Birth       SAS-CompFeed     INDIA                          9                  1        6    1249
Birth       SAS-CompFeed     INDIA                          10                 0      303    1249
Birth       SAS-CompFeed     INDIA                          10                 1       23    1249
Birth       SAS-CompFeed     INDIA                          11                 0       34    1249
Birth       SAS-CompFeed     INDIA                          11                 1        3    1249
Birth       SAS-CompFeed     INDIA                          12                 0      171    1249
Birth       SAS-CompFeed     INDIA                          12                 1        9    1249
Birth       SAS-CompFeed     INDIA                          13                 0        4    1249
Birth       SAS-CompFeed     INDIA                          13                 1        0    1249
Birth       SAS-CompFeed     INDIA                          14                 0        9    1249
Birth       SAS-CompFeed     INDIA                          14                 1        0    1249
Birth       SAS-CompFeed     INDIA                          15                 0       38    1249
Birth       SAS-CompFeed     INDIA                          15                 1        8    1249
Birth       SAS-CompFeed     INDIA                          16                 0        6    1249
Birth       SAS-CompFeed     INDIA                          16                 1        1    1249
Birth       SAS-CompFeed     INDIA                          17                 0       12    1249
Birth       SAS-CompFeed     INDIA                          17                 1        0    1249
Birth       SAS-CompFeed     INDIA                          18                 0        3    1249
Birth       SAS-CompFeed     INDIA                          18                 1        0    1249
Birth       SAS-CompFeed     INDIA                          19                 0        1    1249
Birth       SAS-CompFeed     INDIA                          19                 1        0    1249
Birth       SAS-CompFeed     INDIA                          20                 0        0    1249
Birth       SAS-CompFeed     INDIA                          20                 1        0    1249
Birth       SAS-CompFeed     INDIA                          24                 0        0    1249
Birth       SAS-CompFeed     INDIA                          24                 1        0    1249
Birth       SAS-CompFeed     INDIA                          25                 0        0    1249
Birth       SAS-CompFeed     INDIA                          25                 1        0    1249
Birth       SAS-CompFeed     INDIA                          27                 0        0    1249
Birth       SAS-CompFeed     INDIA                          27                 1        0    1249
Birth       ZVITAMBO         ZIMBABWE                       0                  0       59   13501
Birth       ZVITAMBO         ZIMBABWE                       0                  1        2   13501
Birth       ZVITAMBO         ZIMBABWE                       1                  0        1   13501
Birth       ZVITAMBO         ZIMBABWE                       1                  1        1   13501
Birth       ZVITAMBO         ZIMBABWE                       2                  0        3   13501
Birth       ZVITAMBO         ZIMBABWE                       2                  1        1   13501
Birth       ZVITAMBO         ZIMBABWE                       3                  0       14   13501
Birth       ZVITAMBO         ZIMBABWE                       3                  1        1   13501
Birth       ZVITAMBO         ZIMBABWE                       4                  0       22   13501
Birth       ZVITAMBO         ZIMBABWE                       4                  1        1   13501
Birth       ZVITAMBO         ZIMBABWE                       5                  0       30   13501
Birth       ZVITAMBO         ZIMBABWE                       5                  1        2   13501
Birth       ZVITAMBO         ZIMBABWE                       6                  0       41   13501
Birth       ZVITAMBO         ZIMBABWE                       6                  1        1   13501
Birth       ZVITAMBO         ZIMBABWE                       7                  0      748   13501
Birth       ZVITAMBO         ZIMBABWE                       7                  1       36   13501
Birth       ZVITAMBO         ZIMBABWE                       8                  0      101   13501
Birth       ZVITAMBO         ZIMBABWE                       8                  1        1   13501
Birth       ZVITAMBO         ZIMBABWE                       9                  0      862   13501
Birth       ZVITAMBO         ZIMBABWE                       9                  1       32   13501
Birth       ZVITAMBO         ZIMBABWE                       10                 0      307   13501
Birth       ZVITAMBO         ZIMBABWE                       10                 1       15   13501
Birth       ZVITAMBO         ZIMBABWE                       11                 0     9933   13501
Birth       ZVITAMBO         ZIMBABWE                       11                 1      305   13501
Birth       ZVITAMBO         ZIMBABWE                       12                 0       55   13501
Birth       ZVITAMBO         ZIMBABWE                       12                 1        2   13501
Birth       ZVITAMBO         ZIMBABWE                       13                 0      896   13501
Birth       ZVITAMBO         ZIMBABWE                       13                 1       29   13501
Birth       ZVITAMBO         ZIMBABWE                       14                 0        0   13501
Birth       ZVITAMBO         ZIMBABWE                       14                 1        0   13501
Birth       ZVITAMBO         ZIMBABWE                       15                 0        0   13501
Birth       ZVITAMBO         ZIMBABWE                       15                 1        0   13501
Birth       ZVITAMBO         ZIMBABWE                       16                 0        0   13501
Birth       ZVITAMBO         ZIMBABWE                       16                 1        0   13501
Birth       ZVITAMBO         ZIMBABWE                       17                 0        0   13501
Birth       ZVITAMBO         ZIMBABWE                       17                 1        0   13501
Birth       ZVITAMBO         ZIMBABWE                       18                 0        0   13501
Birth       ZVITAMBO         ZIMBABWE                       18                 1        0   13501
Birth       ZVITAMBO         ZIMBABWE                       19                 0        0   13501
Birth       ZVITAMBO         ZIMBABWE                       19                 1        0   13501
Birth       ZVITAMBO         ZIMBABWE                       20                 0        0   13501
Birth       ZVITAMBO         ZIMBABWE                       20                 1        0   13501
Birth       ZVITAMBO         ZIMBABWE                       24                 0        0   13501
Birth       ZVITAMBO         ZIMBABWE                       24                 1        0   13501
Birth       ZVITAMBO         ZIMBABWE                       25                 0        0   13501
Birth       ZVITAMBO         ZIMBABWE                       25                 1        0   13501
Birth       ZVITAMBO         ZIMBABWE                       27                 0        0   13501
Birth       ZVITAMBO         ZIMBABWE                       27                 1        0   13501
6 months    COHORTS          GUATEMALA                      0                  0      352     904
6 months    COHORTS          GUATEMALA                      0                  1       54     904
6 months    COHORTS          GUATEMALA                      1                  0       35     904
6 months    COHORTS          GUATEMALA                      1                  1       10     904
6 months    COHORTS          GUATEMALA                      2                  0      153     904
6 months    COHORTS          GUATEMALA                      2                  1       17     904
6 months    COHORTS          GUATEMALA                      3                  0      106     904
6 months    COHORTS          GUATEMALA                      3                  1       12     904
6 months    COHORTS          GUATEMALA                      4                  0       46     904
6 months    COHORTS          GUATEMALA                      4                  1       13     904
6 months    COHORTS          GUATEMALA                      5                  0       13     904
6 months    COHORTS          GUATEMALA                      5                  1        3     904
6 months    COHORTS          GUATEMALA                      6                  0       71     904
6 months    COHORTS          GUATEMALA                      6                  1        8     904
6 months    COHORTS          GUATEMALA                      7                  0        3     904
6 months    COHORTS          GUATEMALA                      7                  1        0     904
6 months    COHORTS          GUATEMALA                      8                  0        1     904
6 months    COHORTS          GUATEMALA                      8                  1        0     904
6 months    COHORTS          GUATEMALA                      9                  0        0     904
6 months    COHORTS          GUATEMALA                      9                  1        0     904
6 months    COHORTS          GUATEMALA                      10                 0        1     904
6 months    COHORTS          GUATEMALA                      10                 1        0     904
6 months    COHORTS          GUATEMALA                      11                 0        0     904
6 months    COHORTS          GUATEMALA                      11                 1        0     904
6 months    COHORTS          GUATEMALA                      12                 0        4     904
6 months    COHORTS          GUATEMALA                      12                 1        1     904
6 months    COHORTS          GUATEMALA                      13                 0        0     904
6 months    COHORTS          GUATEMALA                      13                 1        0     904
6 months    COHORTS          GUATEMALA                      14                 0        1     904
6 months    COHORTS          GUATEMALA                      14                 1        0     904
6 months    COHORTS          GUATEMALA                      15                 0        0     904
6 months    COHORTS          GUATEMALA                      15                 1        0     904
6 months    COHORTS          GUATEMALA                      16                 0        0     904
6 months    COHORTS          GUATEMALA                      16                 1        0     904
6 months    COHORTS          GUATEMALA                      17                 0        0     904
6 months    COHORTS          GUATEMALA                      17                 1        0     904
6 months    COHORTS          GUATEMALA                      18                 0        0     904
6 months    COHORTS          GUATEMALA                      18                 1        0     904
6 months    COHORTS          GUATEMALA                      19                 0        0     904
6 months    COHORTS          GUATEMALA                      19                 1        0     904
6 months    COHORTS          GUATEMALA                      20                 0        0     904
6 months    COHORTS          GUATEMALA                      20                 1        0     904
6 months    COHORTS          GUATEMALA                      24                 0        0     904
6 months    COHORTS          GUATEMALA                      24                 1        0     904
6 months    COHORTS          GUATEMALA                      25                 0        0     904
6 months    COHORTS          GUATEMALA                      25                 1        0     904
6 months    COHORTS          GUATEMALA                      27                 0        0     904
6 months    COHORTS          GUATEMALA                      27                 1        0     904
6 months    COHORTS          INDIA                          0                  0      111    1385
6 months    COHORTS          INDIA                          0                  1        8    1385
6 months    COHORTS          INDIA                          1                  0        0    1385
6 months    COHORTS          INDIA                          1                  1        0    1385
6 months    COHORTS          INDIA                          2                  0        0    1385
6 months    COHORTS          INDIA                          2                  1        0    1385
6 months    COHORTS          INDIA                          3                  0      120    1385
6 months    COHORTS          INDIA                          3                  1        8    1385
6 months    COHORTS          INDIA                          4                  0        0    1385
6 months    COHORTS          INDIA                          4                  1        0    1385
6 months    COHORTS          INDIA                          5                  0        0    1385
6 months    COHORTS          INDIA                          5                  1        0    1385
6 months    COHORTS          INDIA                          6                  0        0    1385
6 months    COHORTS          INDIA                          6                  1        0    1385
6 months    COHORTS          INDIA                          7                  0        0    1385
6 months    COHORTS          INDIA                          7                  1        0    1385
6 months    COHORTS          INDIA                          8                  0      197    1385
6 months    COHORTS          INDIA                          8                  1        6    1385
6 months    COHORTS          INDIA                          9                  0        0    1385
6 months    COHORTS          INDIA                          9                  1        0    1385
6 months    COHORTS          INDIA                          10                 0        0    1385
6 months    COHORTS          INDIA                          10                 1        0    1385
6 months    COHORTS          INDIA                          11                 0        0    1385
6 months    COHORTS          INDIA                          11                 1        0    1385
6 months    COHORTS          INDIA                          12                 0      380    1385
6 months    COHORTS          INDIA                          12                 1       11    1385
6 months    COHORTS          INDIA                          13                 0        0    1385
6 months    COHORTS          INDIA                          13                 1        0    1385
6 months    COHORTS          INDIA                          14                 0      146    1385
6 months    COHORTS          INDIA                          14                 1        6    1385
6 months    COHORTS          INDIA                          15                 0      271    1385
6 months    COHORTS          INDIA                          15                 1        2    1385
6 months    COHORTS          INDIA                          16                 0        0    1385
6 months    COHORTS          INDIA                          16                 1        0    1385
6 months    COHORTS          INDIA                          17                 0      116    1385
6 months    COHORTS          INDIA                          17                 1        3    1385
6 months    COHORTS          INDIA                          18                 0        0    1385
6 months    COHORTS          INDIA                          18                 1        0    1385
6 months    COHORTS          INDIA                          19                 0        0    1385
6 months    COHORTS          INDIA                          19                 1        0    1385
6 months    COHORTS          INDIA                          20                 0        0    1385
6 months    COHORTS          INDIA                          20                 1        0    1385
6 months    COHORTS          INDIA                          24                 0        0    1385
6 months    COHORTS          INDIA                          24                 1        0    1385
6 months    COHORTS          INDIA                          25                 0        0    1385
6 months    COHORTS          INDIA                          25                 1        0    1385
6 months    COHORTS          INDIA                          27                 0        0    1385
6 months    COHORTS          INDIA                          27                 1        0    1385
6 months    COHORTS          PHILIPPINES                    0                  0       53    2564
6 months    COHORTS          PHILIPPINES                    0                  1        2    2564
6 months    COHORTS          PHILIPPINES                    1                  0       28    2564
6 months    COHORTS          PHILIPPINES                    1                  1        4    2564
6 months    COHORTS          PHILIPPINES                    2                  0       84    2564
6 months    COHORTS          PHILIPPINES                    2                  1        4    2564
6 months    COHORTS          PHILIPPINES                    3                  0      140    2564
6 months    COHORTS          PHILIPPINES                    3                  1       15    2564
6 months    COHORTS          PHILIPPINES                    4                  0      223    2564
6 months    COHORTS          PHILIPPINES                    4                  1       14    2564
6 months    COHORTS          PHILIPPINES                    5                  0      171    2564
6 months    COHORTS          PHILIPPINES                    5                  1        8    2564
6 months    COHORTS          PHILIPPINES                    6                  0      560    2564
6 months    COHORTS          PHILIPPINES                    6                  1       36    2564
6 months    COHORTS          PHILIPPINES                    7                  0      129    2564
6 months    COHORTS          PHILIPPINES                    7                  1        3    2564
6 months    COHORTS          PHILIPPINES                    8                  0      190    2564
6 months    COHORTS          PHILIPPINES                    8                  1        9    2564
6 months    COHORTS          PHILIPPINES                    9                  0      172    2564
6 months    COHORTS          PHILIPPINES                    9                  1        4    2564
6 months    COHORTS          PHILIPPINES                    10                 0      278    2564
6 months    COHORTS          PHILIPPINES                    10                 1       13    2564
6 months    COHORTS          PHILIPPINES                    11                 0       54    2564
6 months    COHORTS          PHILIPPINES                    11                 1        3    2564
6 months    COHORTS          PHILIPPINES                    12                 0      145    2564
6 months    COHORTS          PHILIPPINES                    12                 1        3    2564
6 months    COHORTS          PHILIPPINES                    13                 0       57    2564
6 months    COHORTS          PHILIPPINES                    13                 1        1    2564
6 months    COHORTS          PHILIPPINES                    14                 0      115    2564
6 months    COHORTS          PHILIPPINES                    14                 1        5    2564
6 months    COHORTS          PHILIPPINES                    15                 0       33    2564
6 months    COHORTS          PHILIPPINES                    15                 1        0    2564
6 months    COHORTS          PHILIPPINES                    16                 0        4    2564
6 months    COHORTS          PHILIPPINES                    16                 1        0    2564
6 months    COHORTS          PHILIPPINES                    17                 0        2    2564
6 months    COHORTS          PHILIPPINES                    17                 1        0    2564
6 months    COHORTS          PHILIPPINES                    18                 0        2    2564
6 months    COHORTS          PHILIPPINES                    18                 1        0    2564
6 months    COHORTS          PHILIPPINES                    19                 0        0    2564
6 months    COHORTS          PHILIPPINES                    19                 1        0    2564
6 months    COHORTS          PHILIPPINES                    20                 0        0    2564
6 months    COHORTS          PHILIPPINES                    20                 1        0    2564
6 months    COHORTS          PHILIPPINES                    24                 0        0    2564
6 months    COHORTS          PHILIPPINES                    24                 1        0    2564
6 months    COHORTS          PHILIPPINES                    25                 0        0    2564
6 months    COHORTS          PHILIPPINES                    25                 1        0    2564
6 months    COHORTS          PHILIPPINES                    27                 0        0    2564
6 months    COHORTS          PHILIPPINES                    27                 1        0    2564
6 months    GMS-Nepal        NEPAL                          0                  0      226     563
6 months    GMS-Nepal        NEPAL                          0                  1       17     563
6 months    GMS-Nepal        NEPAL                          1                  0        0     563
6 months    GMS-Nepal        NEPAL                          1                  1        0     563
6 months    GMS-Nepal        NEPAL                          2                  0        0     563
6 months    GMS-Nepal        NEPAL                          2                  1        0     563
6 months    GMS-Nepal        NEPAL                          3                  0        0     563
6 months    GMS-Nepal        NEPAL                          3                  1        0     563
6 months    GMS-Nepal        NEPAL                          4                  0        0     563
6 months    GMS-Nepal        NEPAL                          4                  1        0     563
6 months    GMS-Nepal        NEPAL                          5                  0       89     563
6 months    GMS-Nepal        NEPAL                          5                  1        2     563
6 months    GMS-Nepal        NEPAL                          6                  0        0     563
6 months    GMS-Nepal        NEPAL                          6                  1        0     563
6 months    GMS-Nepal        NEPAL                          7                  0        0     563
6 months    GMS-Nepal        NEPAL                          7                  1        0     563
6 months    GMS-Nepal        NEPAL                          8                  0       92     563
6 months    GMS-Nepal        NEPAL                          8                  1        0     563
6 months    GMS-Nepal        NEPAL                          9                  0        0     563
6 months    GMS-Nepal        NEPAL                          9                  1        0     563
6 months    GMS-Nepal        NEPAL                          10                 0      103     563
6 months    GMS-Nepal        NEPAL                          10                 1        2     563
6 months    GMS-Nepal        NEPAL                          11                 0        0     563
6 months    GMS-Nepal        NEPAL                          11                 1        0     563
6 months    GMS-Nepal        NEPAL                          12                 0       32     563
6 months    GMS-Nepal        NEPAL                          12                 1        0     563
6 months    GMS-Nepal        NEPAL                          13                 0        0     563
6 months    GMS-Nepal        NEPAL                          13                 1        0     563
6 months    GMS-Nepal        NEPAL                          14                 0        0     563
6 months    GMS-Nepal        NEPAL                          14                 1        0     563
6 months    GMS-Nepal        NEPAL                          15                 0        0     563
6 months    GMS-Nepal        NEPAL                          15                 1        0     563
6 months    GMS-Nepal        NEPAL                          16                 0        0     563
6 months    GMS-Nepal        NEPAL                          16                 1        0     563
6 months    GMS-Nepal        NEPAL                          17                 0        0     563
6 months    GMS-Nepal        NEPAL                          17                 1        0     563
6 months    GMS-Nepal        NEPAL                          18                 0        0     563
6 months    GMS-Nepal        NEPAL                          18                 1        0     563
6 months    GMS-Nepal        NEPAL                          19                 0        0     563
6 months    GMS-Nepal        NEPAL                          19                 1        0     563
6 months    GMS-Nepal        NEPAL                          20                 0        0     563
6 months    GMS-Nepal        NEPAL                          20                 1        0     563
6 months    GMS-Nepal        NEPAL                          24                 0        0     563
6 months    GMS-Nepal        NEPAL                          24                 1        0     563
6 months    GMS-Nepal        NEPAL                          25                 0        0     563
6 months    GMS-Nepal        NEPAL                          25                 1        0     563
6 months    GMS-Nepal        NEPAL                          27                 0        0     563
6 months    GMS-Nepal        NEPAL                          27                 1        0     563
6 months    LCNI-5           MALAWI                         0                  0      264     812
6 months    LCNI-5           MALAWI                         0                  1       26     812
6 months    LCNI-5           MALAWI                         1                  0       10     812
6 months    LCNI-5           MALAWI                         1                  1        1     812
6 months    LCNI-5           MALAWI                         2                  0       28     812
6 months    LCNI-5           MALAWI                         2                  1        4     812
6 months    LCNI-5           MALAWI                         3                  0       36     812
6 months    LCNI-5           MALAWI                         3                  1        3     812
6 months    LCNI-5           MALAWI                         4                  0       57     812
6 months    LCNI-5           MALAWI                         4                  1        2     812
6 months    LCNI-5           MALAWI                         5                  0       59     812
6 months    LCNI-5           MALAWI                         5                  1        2     812
6 months    LCNI-5           MALAWI                         6                  0       67     812
6 months    LCNI-5           MALAWI                         6                  1        2     812
6 months    LCNI-5           MALAWI                         7                  0       57     812
6 months    LCNI-5           MALAWI                         7                  1       11     812
6 months    LCNI-5           MALAWI                         8                  0       82     812
6 months    LCNI-5           MALAWI                         8                  1        9     812
6 months    LCNI-5           MALAWI                         9                  0       11     812
6 months    LCNI-5           MALAWI                         9                  1        1     812
6 months    LCNI-5           MALAWI                         10                 0       14     812
6 months    LCNI-5           MALAWI                         10                 1        2     812
6 months    LCNI-5           MALAWI                         11                 0        6     812
6 months    LCNI-5           MALAWI                         11                 1        1     812
6 months    LCNI-5           MALAWI                         12                 0       51     812
6 months    LCNI-5           MALAWI                         12                 1        1     812
6 months    LCNI-5           MALAWI                         13                 0        1     812
6 months    LCNI-5           MALAWI                         13                 1        0     812
6 months    LCNI-5           MALAWI                         14                 0        3     812
6 months    LCNI-5           MALAWI                         14                 1        0     812
6 months    LCNI-5           MALAWI                         15                 0        0     812
6 months    LCNI-5           MALAWI                         15                 1        0     812
6 months    LCNI-5           MALAWI                         16                 0        1     812
6 months    LCNI-5           MALAWI                         16                 1        0     812
6 months    LCNI-5           MALAWI                         17                 0        0     812
6 months    LCNI-5           MALAWI                         17                 1        0     812
6 months    LCNI-5           MALAWI                         18                 0        0     812
6 months    LCNI-5           MALAWI                         18                 1        0     812
6 months    LCNI-5           MALAWI                         19                 0        0     812
6 months    LCNI-5           MALAWI                         19                 1        0     812
6 months    LCNI-5           MALAWI                         20                 0        0     812
6 months    LCNI-5           MALAWI                         20                 1        0     812
6 months    LCNI-5           MALAWI                         24                 0        0     812
6 months    LCNI-5           MALAWI                         24                 1        0     812
6 months    LCNI-5           MALAWI                         25                 0        0     812
6 months    LCNI-5           MALAWI                         25                 1        0     812
6 months    LCNI-5           MALAWI                         27                 0        0     812
6 months    LCNI-5           MALAWI                         27                 1        0     812
6 months    MAL-ED           BANGLADESH                     0                  0        0     132
6 months    MAL-ED           BANGLADESH                     0                  1        0     132
6 months    MAL-ED           BANGLADESH                     1                  0        6     132
6 months    MAL-ED           BANGLADESH                     1                  1        0     132
6 months    MAL-ED           BANGLADESH                     2                  0       10     132
6 months    MAL-ED           BANGLADESH                     2                  1        2     132
6 months    MAL-ED           BANGLADESH                     3                  0       11     132
6 months    MAL-ED           BANGLADESH                     3                  1        0     132
6 months    MAL-ED           BANGLADESH                     4                  0        7     132
6 months    MAL-ED           BANGLADESH                     4                  1        0     132
6 months    MAL-ED           BANGLADESH                     5                  0       28     132
6 months    MAL-ED           BANGLADESH                     5                  1        1     132
6 months    MAL-ED           BANGLADESH                     6                  0        8     132
6 months    MAL-ED           BANGLADESH                     6                  1        0     132
6 months    MAL-ED           BANGLADESH                     7                  0        9     132
6 months    MAL-ED           BANGLADESH                     7                  1        0     132
6 months    MAL-ED           BANGLADESH                     8                  0       16     132
6 months    MAL-ED           BANGLADESH                     8                  1        0     132
6 months    MAL-ED           BANGLADESH                     9                  0       13     132
6 months    MAL-ED           BANGLADESH                     9                  1        0     132
6 months    MAL-ED           BANGLADESH                     10                 0        9     132
6 months    MAL-ED           BANGLADESH                     10                 1        0     132
6 months    MAL-ED           BANGLADESH                     11                 0        0     132
6 months    MAL-ED           BANGLADESH                     11                 1        0     132
6 months    MAL-ED           BANGLADESH                     12                 0        9     132
6 months    MAL-ED           BANGLADESH                     12                 1        1     132
6 months    MAL-ED           BANGLADESH                     13                 0        0     132
6 months    MAL-ED           BANGLADESH                     13                 1        0     132
6 months    MAL-ED           BANGLADESH                     14                 0        0     132
6 months    MAL-ED           BANGLADESH                     14                 1        0     132
6 months    MAL-ED           BANGLADESH                     15                 0        0     132
6 months    MAL-ED           BANGLADESH                     15                 1        0     132
6 months    MAL-ED           BANGLADESH                     16                 0        2     132
6 months    MAL-ED           BANGLADESH                     16                 1        0     132
6 months    MAL-ED           BANGLADESH                     17                 0        0     132
6 months    MAL-ED           BANGLADESH                     17                 1        0     132
6 months    MAL-ED           BANGLADESH                     18                 0        0     132
6 months    MAL-ED           BANGLADESH                     18                 1        0     132
6 months    MAL-ED           BANGLADESH                     19                 0        0     132
6 months    MAL-ED           BANGLADESH                     19                 1        0     132
6 months    MAL-ED           BANGLADESH                     20                 0        0     132
6 months    MAL-ED           BANGLADESH                     20                 1        0     132
6 months    MAL-ED           BANGLADESH                     24                 0        0     132
6 months    MAL-ED           BANGLADESH                     24                 1        0     132
6 months    MAL-ED           BANGLADESH                     25                 0        0     132
6 months    MAL-ED           BANGLADESH                     25                 1        0     132
6 months    MAL-ED           BANGLADESH                     27                 0        0     132
6 months    MAL-ED           BANGLADESH                     27                 1        0     132
6 months    MAL-ED           INDIA                          0                  0        0     138
6 months    MAL-ED           INDIA                          0                  1        0     138
6 months    MAL-ED           INDIA                          1                  0        0     138
6 months    MAL-ED           INDIA                          1                  1        0     138
6 months    MAL-ED           INDIA                          2                  0        6     138
6 months    MAL-ED           INDIA                          2                  1        0     138
6 months    MAL-ED           INDIA                          3                  0        8     138
6 months    MAL-ED           INDIA                          3                  1        1     138
6 months    MAL-ED           INDIA                          4                  0        6     138
6 months    MAL-ED           INDIA                          4                  1        0     138
6 months    MAL-ED           INDIA                          5                  0       32     138
6 months    MAL-ED           INDIA                          5                  1        1     138
6 months    MAL-ED           INDIA                          6                  0       11     138
6 months    MAL-ED           INDIA                          6                  1        0     138
6 months    MAL-ED           INDIA                          7                  0       11     138
6 months    MAL-ED           INDIA                          7                  1        0     138
6 months    MAL-ED           INDIA                          8                  0       18     138
6 months    MAL-ED           INDIA                          8                  1        1     138
6 months    MAL-ED           INDIA                          9                  0       26     138
6 months    MAL-ED           INDIA                          9                  1        0     138
6 months    MAL-ED           INDIA                          10                 0        6     138
6 months    MAL-ED           INDIA                          10                 1        0     138
6 months    MAL-ED           INDIA                          11                 0        2     138
6 months    MAL-ED           INDIA                          11                 1        0     138
6 months    MAL-ED           INDIA                          12                 0        3     138
6 months    MAL-ED           INDIA                          12                 1        0     138
6 months    MAL-ED           INDIA                          13                 0        1     138
6 months    MAL-ED           INDIA                          13                 1        0     138
6 months    MAL-ED           INDIA                          14                 0        2     138
6 months    MAL-ED           INDIA                          14                 1        0     138
6 months    MAL-ED           INDIA                          15                 0        2     138
6 months    MAL-ED           INDIA                          15                 1        0     138
6 months    MAL-ED           INDIA                          16                 0        0     138
6 months    MAL-ED           INDIA                          16                 1        0     138
6 months    MAL-ED           INDIA                          17                 0        0     138
6 months    MAL-ED           INDIA                          17                 1        0     138
6 months    MAL-ED           INDIA                          18                 0        1     138
6 months    MAL-ED           INDIA                          18                 1        0     138
6 months    MAL-ED           INDIA                          19                 0        0     138
6 months    MAL-ED           INDIA                          19                 1        0     138
6 months    MAL-ED           INDIA                          20                 0        0     138
6 months    MAL-ED           INDIA                          20                 1        0     138
6 months    MAL-ED           INDIA                          24                 0        0     138
6 months    MAL-ED           INDIA                          24                 1        0     138
6 months    MAL-ED           INDIA                          25                 0        0     138
6 months    MAL-ED           INDIA                          25                 1        0     138
6 months    MAL-ED           INDIA                          27                 0        0     138
6 months    MAL-ED           INDIA                          27                 1        0     138
6 months    MAL-ED           NEPAL                          0                  0        0      95
6 months    MAL-ED           NEPAL                          0                  1        0      95
6 months    MAL-ED           NEPAL                          1                  0        0      95
6 months    MAL-ED           NEPAL                          1                  1        0      95
6 months    MAL-ED           NEPAL                          2                  0        4      95
6 months    MAL-ED           NEPAL                          2                  1        0      95
6 months    MAL-ED           NEPAL                          3                  0        3      95
6 months    MAL-ED           NEPAL                          3                  1        0      95
6 months    MAL-ED           NEPAL                          4                  0       10      95
6 months    MAL-ED           NEPAL                          4                  1        0      95
6 months    MAL-ED           NEPAL                          5                  0        6      95
6 months    MAL-ED           NEPAL                          5                  1        0      95
6 months    MAL-ED           NEPAL                          6                  0        4      95
6 months    MAL-ED           NEPAL                          6                  1        0      95
6 months    MAL-ED           NEPAL                          7                  0        9      95
6 months    MAL-ED           NEPAL                          7                  1        0      95
6 months    MAL-ED           NEPAL                          8                  0       11      95
6 months    MAL-ED           NEPAL                          8                  1        1      95
6 months    MAL-ED           NEPAL                          9                  0        7      95
6 months    MAL-ED           NEPAL                          9                  1        0      95
6 months    MAL-ED           NEPAL                          10                 0       26      95
6 months    MAL-ED           NEPAL                          10                 1        0      95
6 months    MAL-ED           NEPAL                          11                 0        1      95
6 months    MAL-ED           NEPAL                          11                 1        0      95
6 months    MAL-ED           NEPAL                          12                 0        7      95
6 months    MAL-ED           NEPAL                          12                 1        0      95
6 months    MAL-ED           NEPAL                          13                 0        0      95
6 months    MAL-ED           NEPAL                          13                 1        0      95
6 months    MAL-ED           NEPAL                          14                 0        0      95
6 months    MAL-ED           NEPAL                          14                 1        0      95
6 months    MAL-ED           NEPAL                          15                 0        1      95
6 months    MAL-ED           NEPAL                          15                 1        0      95
6 months    MAL-ED           NEPAL                          16                 0        1      95
6 months    MAL-ED           NEPAL                          16                 1        0      95
6 months    MAL-ED           NEPAL                          17                 0        3      95
6 months    MAL-ED           NEPAL                          17                 1        0      95
6 months    MAL-ED           NEPAL                          18                 0        1      95
6 months    MAL-ED           NEPAL                          18                 1        0      95
6 months    MAL-ED           NEPAL                          19                 0        0      95
6 months    MAL-ED           NEPAL                          19                 1        0      95
6 months    MAL-ED           NEPAL                          20                 0        0      95
6 months    MAL-ED           NEPAL                          20                 1        0      95
6 months    MAL-ED           NEPAL                          24                 0        0      95
6 months    MAL-ED           NEPAL                          24                 1        0      95
6 months    MAL-ED           NEPAL                          25                 0        0      95
6 months    MAL-ED           NEPAL                          25                 1        0      95
6 months    MAL-ED           NEPAL                          27                 0        0      95
6 months    MAL-ED           NEPAL                          27                 1        0      95
6 months    MAL-ED           PERU                           0                  0        1     224
6 months    MAL-ED           PERU                           0                  1        0     224
6 months    MAL-ED           PERU                           1                  0        1     224
6 months    MAL-ED           PERU                           1                  1        0     224
6 months    MAL-ED           PERU                           2                  0        0     224
6 months    MAL-ED           PERU                           2                  1        0     224
6 months    MAL-ED           PERU                           3                  0        8     224
6 months    MAL-ED           PERU                           3                  1        0     224
6 months    MAL-ED           PERU                           4                  0        4     224
6 months    MAL-ED           PERU                           4                  1        0     224
6 months    MAL-ED           PERU                           5                  0        6     224
6 months    MAL-ED           PERU                           5                  1        1     224
6 months    MAL-ED           PERU                           6                  0       22     224
6 months    MAL-ED           PERU                           6                  1        1     224
6 months    MAL-ED           PERU                           7                  0       15     224
6 months    MAL-ED           PERU                           7                  1        1     224
6 months    MAL-ED           PERU                           8                  0       20     224
6 months    MAL-ED           PERU                           8                  1        0     224
6 months    MAL-ED           PERU                           9                  0       24     224
6 months    MAL-ED           PERU                           9                  1        2     224
6 months    MAL-ED           PERU                           10                 0       11     224
6 months    MAL-ED           PERU                           10                 1        0     224
6 months    MAL-ED           PERU                           11                 0       86     224
6 months    MAL-ED           PERU                           11                 1        2     224
6 months    MAL-ED           PERU                           12                 0        0     224
6 months    MAL-ED           PERU                           12                 1        1     224
6 months    MAL-ED           PERU                           13                 0        4     224
6 months    MAL-ED           PERU                           13                 1        0     224
6 months    MAL-ED           PERU                           14                 0        4     224
6 months    MAL-ED           PERU                           14                 1        0     224
6 months    MAL-ED           PERU                           15                 0        1     224
6 months    MAL-ED           PERU                           15                 1        0     224
6 months    MAL-ED           PERU                           16                 0        1     224
6 months    MAL-ED           PERU                           16                 1        0     224
6 months    MAL-ED           PERU                           17                 0        1     224
6 months    MAL-ED           PERU                           17                 1        0     224
6 months    MAL-ED           PERU                           18                 0        5     224
6 months    MAL-ED           PERU                           18                 1        0     224
6 months    MAL-ED           PERU                           19                 0        0     224
6 months    MAL-ED           PERU                           19                 1        0     224
6 months    MAL-ED           PERU                           20                 0        2     224
6 months    MAL-ED           PERU                           20                 1        0     224
6 months    MAL-ED           PERU                           24                 0        0     224
6 months    MAL-ED           PERU                           24                 1        0     224
6 months    MAL-ED           PERU                           25                 0        0     224
6 months    MAL-ED           PERU                           25                 1        0     224
6 months    MAL-ED           PERU                           27                 0        0     224
6 months    MAL-ED           PERU                           27                 1        0     224
6 months    MAL-ED           SOUTH AFRICA                   0                  0        0      92
6 months    MAL-ED           SOUTH AFRICA                   0                  1        0      92
6 months    MAL-ED           SOUTH AFRICA                   1                  0        0      92
6 months    MAL-ED           SOUTH AFRICA                   1                  1        0      92
6 months    MAL-ED           SOUTH AFRICA                   2                  0        1      92
6 months    MAL-ED           SOUTH AFRICA                   2                  1        0      92
6 months    MAL-ED           SOUTH AFRICA                   3                  0        0      92
6 months    MAL-ED           SOUTH AFRICA                   3                  1        0      92
6 months    MAL-ED           SOUTH AFRICA                   4                  0        4      92
6 months    MAL-ED           SOUTH AFRICA                   4                  1        0      92
6 months    MAL-ED           SOUTH AFRICA                   5                  0        1      92
6 months    MAL-ED           SOUTH AFRICA                   5                  1        0      92
6 months    MAL-ED           SOUTH AFRICA                   6                  0        6      92
6 months    MAL-ED           SOUTH AFRICA                   6                  1        0      92
6 months    MAL-ED           SOUTH AFRICA                   7                  0        6      92
6 months    MAL-ED           SOUTH AFRICA                   7                  1        0      92
6 months    MAL-ED           SOUTH AFRICA                   8                  0       11      92
6 months    MAL-ED           SOUTH AFRICA                   8                  1        0      92
6 months    MAL-ED           SOUTH AFRICA                   9                  0        6      92
6 months    MAL-ED           SOUTH AFRICA                   9                  1        0      92
6 months    MAL-ED           SOUTH AFRICA                   10                 0        8      92
6 months    MAL-ED           SOUTH AFRICA                   10                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   11                 0       16      92
6 months    MAL-ED           SOUTH AFRICA                   11                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   12                 0       28      92
6 months    MAL-ED           SOUTH AFRICA                   12                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   13                 0        0      92
6 months    MAL-ED           SOUTH AFRICA                   13                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   14                 0        2      92
6 months    MAL-ED           SOUTH AFRICA                   14                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   15                 0        2      92
6 months    MAL-ED           SOUTH AFRICA                   15                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   16                 0        1      92
6 months    MAL-ED           SOUTH AFRICA                   16                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   17                 0        0      92
6 months    MAL-ED           SOUTH AFRICA                   17                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   18                 0        0      92
6 months    MAL-ED           SOUTH AFRICA                   18                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   19                 0        0      92
6 months    MAL-ED           SOUTH AFRICA                   19                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   20                 0        0      92
6 months    MAL-ED           SOUTH AFRICA                   20                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   24                 0        0      92
6 months    MAL-ED           SOUTH AFRICA                   24                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   25                 0        0      92
6 months    MAL-ED           SOUTH AFRICA                   25                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   27                 0        0      92
6 months    MAL-ED           SOUTH AFRICA                   27                 1        0      92
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       13     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  0       11     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  1        1     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  0       16     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  1        1     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  0       13     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  0        9     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  1        2     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  0        8     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  0      108     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  1        8     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  0        1     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  0        2     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 0        4     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 0        3     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                 0        1     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                 0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                 0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                 0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                 0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                 0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                 0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                 0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                 0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                 0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                 0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                 1        0     201
6 months    NIH-Crypto       BANGLADESH                     0                  0      156     715
6 months    NIH-Crypto       BANGLADESH                     0                  1        7     715
6 months    NIH-Crypto       BANGLADESH                     1                  0       18     715
6 months    NIH-Crypto       BANGLADESH                     1                  1        0     715
6 months    NIH-Crypto       BANGLADESH                     2                  0       12     715
6 months    NIH-Crypto       BANGLADESH                     2                  1        0     715
6 months    NIH-Crypto       BANGLADESH                     3                  0       30     715
6 months    NIH-Crypto       BANGLADESH                     3                  1        0     715
6 months    NIH-Crypto       BANGLADESH                     4                  0       37     715
6 months    NIH-Crypto       BANGLADESH                     4                  1        0     715
6 months    NIH-Crypto       BANGLADESH                     5                  0       85     715
6 months    NIH-Crypto       BANGLADESH                     5                  1        2     715
6 months    NIH-Crypto       BANGLADESH                     6                  0       34     715
6 months    NIH-Crypto       BANGLADESH                     6                  1        1     715
6 months    NIH-Crypto       BANGLADESH                     7                  0       48     715
6 months    NIH-Crypto       BANGLADESH                     7                  1        6     715
6 months    NIH-Crypto       BANGLADESH                     8                  0       84     715
6 months    NIH-Crypto       BANGLADESH                     8                  1        2     715
6 months    NIH-Crypto       BANGLADESH                     9                  0       79     715
6 months    NIH-Crypto       BANGLADESH                     9                  1        2     715
6 months    NIH-Crypto       BANGLADESH                     10                 0       47     715
6 months    NIH-Crypto       BANGLADESH                     10                 1        2     715
6 months    NIH-Crypto       BANGLADESH                     11                 0        0     715
6 months    NIH-Crypto       BANGLADESH                     11                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     12                 0       33     715
6 months    NIH-Crypto       BANGLADESH                     12                 1        1     715
6 months    NIH-Crypto       BANGLADESH                     13                 0        0     715
6 months    NIH-Crypto       BANGLADESH                     13                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     14                 0        8     715
6 months    NIH-Crypto       BANGLADESH                     14                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     15                 0       14     715
6 months    NIH-Crypto       BANGLADESH                     15                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     16                 0        0     715
6 months    NIH-Crypto       BANGLADESH                     16                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     17                 0        7     715
6 months    NIH-Crypto       BANGLADESH                     17                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     18                 0        0     715
6 months    NIH-Crypto       BANGLADESH                     18                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     19                 0        0     715
6 months    NIH-Crypto       BANGLADESH                     19                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     20                 0        0     715
6 months    NIH-Crypto       BANGLADESH                     20                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     24                 0        0     715
6 months    NIH-Crypto       BANGLADESH                     24                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     25                 0        0     715
6 months    NIH-Crypto       BANGLADESH                     25                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     27                 0        0     715
6 months    NIH-Crypto       BANGLADESH                     27                 1        0     715
6 months    PROBIT           BELARUS                        0                  0        0   15210
6 months    PROBIT           BELARUS                        0                  1        0   15210
6 months    PROBIT           BELARUS                        1                  0        0   15210
6 months    PROBIT           BELARUS                        1                  1        0   15210
6 months    PROBIT           BELARUS                        2                  0        0   15210
6 months    PROBIT           BELARUS                        2                  1        0   15210
6 months    PROBIT           BELARUS                        3                  0        0   15210
6 months    PROBIT           BELARUS                        3                  1        0   15210
6 months    PROBIT           BELARUS                        4                  0        0   15210
6 months    PROBIT           BELARUS                        4                  1        0   15210
6 months    PROBIT           BELARUS                        5                  0        0   15210
6 months    PROBIT           BELARUS                        5                  1        0   15210
6 months    PROBIT           BELARUS                        6                  0        0   15210
6 months    PROBIT           BELARUS                        6                  1        0   15210
6 months    PROBIT           BELARUS                        7                  0        0   15210
6 months    PROBIT           BELARUS                        7                  1        0   15210
6 months    PROBIT           BELARUS                        8                  0       22   15210
6 months    PROBIT           BELARUS                        8                  1        1   15210
6 months    PROBIT           BELARUS                        9                  0        0   15210
6 months    PROBIT           BELARUS                        9                  1        0   15210
6 months    PROBIT           BELARUS                        10                 0      335   15210
6 months    PROBIT           BELARUS                        10                 1        5   15210
6 months    PROBIT           BELARUS                        11                 0        0   15210
6 months    PROBIT           BELARUS                        11                 1        0   15210
6 months    PROBIT           BELARUS                        12                 0     5517   15210
6 months    PROBIT           BELARUS                        12                 1       81   15210
6 months    PROBIT           BELARUS                        13                 0     6667   15210
6 months    PROBIT           BELARUS                        13                 1       69   15210
6 months    PROBIT           BELARUS                        14                 0      407   15210
6 months    PROBIT           BELARUS                        14                 1        2   15210
6 months    PROBIT           BELARUS                        15                 0        0   15210
6 months    PROBIT           BELARUS                        15                 1        0   15210
6 months    PROBIT           BELARUS                        16                 0     2095   15210
6 months    PROBIT           BELARUS                        16                 1        9   15210
6 months    PROBIT           BELARUS                        17                 0        0   15210
6 months    PROBIT           BELARUS                        17                 1        0   15210
6 months    PROBIT           BELARUS                        18                 0        0   15210
6 months    PROBIT           BELARUS                        18                 1        0   15210
6 months    PROBIT           BELARUS                        19                 0        0   15210
6 months    PROBIT           BELARUS                        19                 1        0   15210
6 months    PROBIT           BELARUS                        20                 0        0   15210
6 months    PROBIT           BELARUS                        20                 1        0   15210
6 months    PROBIT           BELARUS                        24                 0        0   15210
6 months    PROBIT           BELARUS                        24                 1        0   15210
6 months    PROBIT           BELARUS                        25                 0        0   15210
6 months    PROBIT           BELARUS                        25                 1        0   15210
6 months    PROBIT           BELARUS                        27                 0        0   15210
6 months    PROBIT           BELARUS                        27                 1        0   15210
6 months    PROVIDE          BANGLADESH                     0                  0      170     604
6 months    PROVIDE          BANGLADESH                     0                  1        9     604
6 months    PROVIDE          BANGLADESH                     1                  0       13     604
6 months    PROVIDE          BANGLADESH                     1                  1        0     604
6 months    PROVIDE          BANGLADESH                     2                  0       17     604
6 months    PROVIDE          BANGLADESH                     2                  1        0     604
6 months    PROVIDE          BANGLADESH                     3                  0       21     604
6 months    PROVIDE          BANGLADESH                     3                  1        0     604
6 months    PROVIDE          BANGLADESH                     4                  0       42     604
6 months    PROVIDE          BANGLADESH                     4                  1        0     604
6 months    PROVIDE          BANGLADESH                     5                  0       64     604
6 months    PROVIDE          BANGLADESH                     5                  1        1     604
6 months    PROVIDE          BANGLADESH                     6                  0       23     604
6 months    PROVIDE          BANGLADESH                     6                  1        2     604
6 months    PROVIDE          BANGLADESH                     7                  0       33     604
6 months    PROVIDE          BANGLADESH                     7                  1        0     604
6 months    PROVIDE          BANGLADESH                     8                  0       58     604
6 months    PROVIDE          BANGLADESH                     8                  1        0     604
6 months    PROVIDE          BANGLADESH                     9                  0       56     604
6 months    PROVIDE          BANGLADESH                     9                  1        1     604
6 months    PROVIDE          BANGLADESH                     10                 0       33     604
6 months    PROVIDE          BANGLADESH                     10                 1        0     604
6 months    PROVIDE          BANGLADESH                     11                 0       24     604
6 months    PROVIDE          BANGLADESH                     11                 1        0     604
6 months    PROVIDE          BANGLADESH                     12                 0        4     604
6 months    PROVIDE          BANGLADESH                     12                 1        0     604
6 months    PROVIDE          BANGLADESH                     13                 0        0     604
6 months    PROVIDE          BANGLADESH                     13                 1        0     604
6 months    PROVIDE          BANGLADESH                     14                 0       17     604
6 months    PROVIDE          BANGLADESH                     14                 1        0     604
6 months    PROVIDE          BANGLADESH                     15                 0        7     604
6 months    PROVIDE          BANGLADESH                     15                 1        0     604
6 months    PROVIDE          BANGLADESH                     16                 0        7     604
6 months    PROVIDE          BANGLADESH                     16                 1        1     604
6 months    PROVIDE          BANGLADESH                     17                 0        0     604
6 months    PROVIDE          BANGLADESH                     17                 1        0     604
6 months    PROVIDE          BANGLADESH                     18                 0        0     604
6 months    PROVIDE          BANGLADESH                     18                 1        0     604
6 months    PROVIDE          BANGLADESH                     19                 0        1     604
6 months    PROVIDE          BANGLADESH                     19                 1        0     604
6 months    PROVIDE          BANGLADESH                     20                 0        0     604
6 months    PROVIDE          BANGLADESH                     20                 1        0     604
6 months    PROVIDE          BANGLADESH                     24                 0        0     604
6 months    PROVIDE          BANGLADESH                     24                 1        0     604
6 months    PROVIDE          BANGLADESH                     25                 0        0     604
6 months    PROVIDE          BANGLADESH                     25                 1        0     604
6 months    PROVIDE          BANGLADESH                     27                 0        0     604
6 months    PROVIDE          BANGLADESH                     27                 1        0     604
6 months    SAS-CompFeed     INDIA                          0                  0      123    1333
6 months    SAS-CompFeed     INDIA                          0                  1       29    1333
6 months    SAS-CompFeed     INDIA                          1                  0        0    1333
6 months    SAS-CompFeed     INDIA                          1                  1        0    1333
6 months    SAS-CompFeed     INDIA                          2                  0        5    1333
6 months    SAS-CompFeed     INDIA                          2                  1        0    1333
6 months    SAS-CompFeed     INDIA                          3                  0       12    1333
6 months    SAS-CompFeed     INDIA                          3                  1        1    1333
6 months    SAS-CompFeed     INDIA                          4                  0       18    1333
6 months    SAS-CompFeed     INDIA                          4                  1        3    1333
6 months    SAS-CompFeed     INDIA                          5                  0       70    1333
6 months    SAS-CompFeed     INDIA                          5                  1       11    1333
6 months    SAS-CompFeed     INDIA                          6                  0       21    1333
6 months    SAS-CompFeed     INDIA                          6                  1        5    1333
6 months    SAS-CompFeed     INDIA                          7                  0       93    1333
6 months    SAS-CompFeed     INDIA                          7                  1        9    1333
6 months    SAS-CompFeed     INDIA                          8                  0      139    1333
6 months    SAS-CompFeed     INDIA                          8                  1       11    1333
6 months    SAS-CompFeed     INDIA                          9                  0       79    1333
6 months    SAS-CompFeed     INDIA                          9                  1        6    1333
6 months    SAS-CompFeed     INDIA                          10                 0      319    1333
6 months    SAS-CompFeed     INDIA                          10                 1       31    1333
6 months    SAS-CompFeed     INDIA                          11                 0       31    1333
6 months    SAS-CompFeed     INDIA                          11                 1        5    1333
6 months    SAS-CompFeed     INDIA                          12                 0      190    1333
6 months    SAS-CompFeed     INDIA                          12                 1       13    1333
6 months    SAS-CompFeed     INDIA                          13                 0        7    1333
6 months    SAS-CompFeed     INDIA                          13                 1        0    1333
6 months    SAS-CompFeed     INDIA                          14                 0       16    1333
6 months    SAS-CompFeed     INDIA                          14                 1        0    1333
6 months    SAS-CompFeed     INDIA                          15                 0       53    1333
6 months    SAS-CompFeed     INDIA                          15                 1        4    1333
6 months    SAS-CompFeed     INDIA                          16                 0       10    1333
6 months    SAS-CompFeed     INDIA                          16                 1        0    1333
6 months    SAS-CompFeed     INDIA                          17                 0       14    1333
6 months    SAS-CompFeed     INDIA                          17                 1        0    1333
6 months    SAS-CompFeed     INDIA                          18                 0        3    1333
6 months    SAS-CompFeed     INDIA                          18                 1        0    1333
6 months    SAS-CompFeed     INDIA                          19                 0        1    1333
6 months    SAS-CompFeed     INDIA                          19                 1        0    1333
6 months    SAS-CompFeed     INDIA                          20                 0        1    1333
6 months    SAS-CompFeed     INDIA                          20                 1        0    1333
6 months    SAS-CompFeed     INDIA                          24                 0        0    1333
6 months    SAS-CompFeed     INDIA                          24                 1        0    1333
6 months    SAS-CompFeed     INDIA                          25                 0        0    1333
6 months    SAS-CompFeed     INDIA                          25                 1        0    1333
6 months    SAS-CompFeed     INDIA                          27                 0        0    1333
6 months    SAS-CompFeed     INDIA                          27                 1        0    1333
6 months    SAS-FoodSuppl    INDIA                          0                  0      113     380
6 months    SAS-FoodSuppl    INDIA                          0                  1       19     380
6 months    SAS-FoodSuppl    INDIA                          1                  0        1     380
6 months    SAS-FoodSuppl    INDIA                          1                  1        0     380
6 months    SAS-FoodSuppl    INDIA                          2                  0        8     380
6 months    SAS-FoodSuppl    INDIA                          2                  1        2     380
6 months    SAS-FoodSuppl    INDIA                          3                  0        5     380
6 months    SAS-FoodSuppl    INDIA                          3                  1        1     380
6 months    SAS-FoodSuppl    INDIA                          4                  0        7     380
6 months    SAS-FoodSuppl    INDIA                          4                  1        3     380
6 months    SAS-FoodSuppl    INDIA                          5                  0       38     380
6 months    SAS-FoodSuppl    INDIA                          5                  1       12     380
6 months    SAS-FoodSuppl    INDIA                          6                  0       11     380
6 months    SAS-FoodSuppl    INDIA                          6                  1        1     380
6 months    SAS-FoodSuppl    INDIA                          7                  0       14     380
6 months    SAS-FoodSuppl    INDIA                          7                  1        1     380
6 months    SAS-FoodSuppl    INDIA                          8                  0       36     380
6 months    SAS-FoodSuppl    INDIA                          8                  1        7     380
6 months    SAS-FoodSuppl    INDIA                          9                  0       22     380
6 months    SAS-FoodSuppl    INDIA                          9                  1        3     380
6 months    SAS-FoodSuppl    INDIA                          10                 0       50     380
6 months    SAS-FoodSuppl    INDIA                          10                 1        4     380
6 months    SAS-FoodSuppl    INDIA                          11                 0        2     380
6 months    SAS-FoodSuppl    INDIA                          11                 1        1     380
6 months    SAS-FoodSuppl    INDIA                          12                 0       10     380
6 months    SAS-FoodSuppl    INDIA                          12                 1        0     380
6 months    SAS-FoodSuppl    INDIA                          13                 0        1     380
6 months    SAS-FoodSuppl    INDIA                          13                 1        0     380
6 months    SAS-FoodSuppl    INDIA                          14                 0        5     380
6 months    SAS-FoodSuppl    INDIA                          14                 1        0     380
6 months    SAS-FoodSuppl    INDIA                          15                 0        3     380
6 months    SAS-FoodSuppl    INDIA                          15                 1        0     380
6 months    SAS-FoodSuppl    INDIA                          16                 0        0     380
6 months    SAS-FoodSuppl    INDIA                          16                 1        0     380
6 months    SAS-FoodSuppl    INDIA                          17                 0        0     380
6 months    SAS-FoodSuppl    INDIA                          17                 1        0     380
6 months    SAS-FoodSuppl    INDIA                          18                 0        0     380
6 months    SAS-FoodSuppl    INDIA                          18                 1        0     380
6 months    SAS-FoodSuppl    INDIA                          19                 0        0     380
6 months    SAS-FoodSuppl    INDIA                          19                 1        0     380
6 months    SAS-FoodSuppl    INDIA                          20                 0        0     380
6 months    SAS-FoodSuppl    INDIA                          20                 1        0     380
6 months    SAS-FoodSuppl    INDIA                          24                 0        0     380
6 months    SAS-FoodSuppl    INDIA                          24                 1        0     380
6 months    SAS-FoodSuppl    INDIA                          25                 0        0     380
6 months    SAS-FoodSuppl    INDIA                          25                 1        0     380
6 months    SAS-FoodSuppl    INDIA                          27                 0        0     380
6 months    SAS-FoodSuppl    INDIA                          27                 1        0     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0        4    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0        5    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0        1    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0     1064    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1        9    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0        8    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0       46    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0       21    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0      484    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1        5    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0       15    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                 0       99    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                 1        1    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                 0       12    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                 1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                 0       17    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                 1        1    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                 0       24    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                 1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                 0       20    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                 1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                 0        4    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                 1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                 0        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                 1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                 0        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                 1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                 0       13    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                 1        1    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                 0        1    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                 1        0    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                 0      161    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                 1        2    2018
6 months    ZVITAMBO         ZIMBABWE                       0                  0       41    8429
6 months    ZVITAMBO         ZIMBABWE                       0                  1        2    8429
6 months    ZVITAMBO         ZIMBABWE                       1                  0        1    8429
6 months    ZVITAMBO         ZIMBABWE                       1                  1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       2                  0        4    8429
6 months    ZVITAMBO         ZIMBABWE                       2                  1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       3                  0        9    8429
6 months    ZVITAMBO         ZIMBABWE                       3                  1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       4                  0       15    8429
6 months    ZVITAMBO         ZIMBABWE                       4                  1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       5                  0       22    8429
6 months    ZVITAMBO         ZIMBABWE                       5                  1        1    8429
6 months    ZVITAMBO         ZIMBABWE                       6                  0       26    8429
6 months    ZVITAMBO         ZIMBABWE                       6                  1        1    8429
6 months    ZVITAMBO         ZIMBABWE                       7                  0      490    8429
6 months    ZVITAMBO         ZIMBABWE                       7                  1       24    8429
6 months    ZVITAMBO         ZIMBABWE                       8                  0       65    8429
6 months    ZVITAMBO         ZIMBABWE                       8                  1        2    8429
6 months    ZVITAMBO         ZIMBABWE                       9                  0      528    8429
6 months    ZVITAMBO         ZIMBABWE                       9                  1       25    8429
6 months    ZVITAMBO         ZIMBABWE                       10                 0      190    8429
6 months    ZVITAMBO         ZIMBABWE                       10                 1       13    8429
6 months    ZVITAMBO         ZIMBABWE                       11                 0     6131    8429
6 months    ZVITAMBO         ZIMBABWE                       11                 1      253    8429
6 months    ZVITAMBO         ZIMBABWE                       12                 0       37    8429
6 months    ZVITAMBO         ZIMBABWE                       12                 1        2    8429
6 months    ZVITAMBO         ZIMBABWE                       13                 0      535    8429
6 months    ZVITAMBO         ZIMBABWE                       13                 1       12    8429
6 months    ZVITAMBO         ZIMBABWE                       14                 0        0    8429
6 months    ZVITAMBO         ZIMBABWE                       14                 1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       15                 0        0    8429
6 months    ZVITAMBO         ZIMBABWE                       15                 1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       16                 0        0    8429
6 months    ZVITAMBO         ZIMBABWE                       16                 1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       17                 0        0    8429
6 months    ZVITAMBO         ZIMBABWE                       17                 1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       18                 0        0    8429
6 months    ZVITAMBO         ZIMBABWE                       18                 1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       19                 0        0    8429
6 months    ZVITAMBO         ZIMBABWE                       19                 1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       20                 0        0    8429
6 months    ZVITAMBO         ZIMBABWE                       20                 1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       24                 0        0    8429
6 months    ZVITAMBO         ZIMBABWE                       24                 1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       25                 0        0    8429
6 months    ZVITAMBO         ZIMBABWE                       25                 1        0    8429
6 months    ZVITAMBO         ZIMBABWE                       27                 0        0    8429
6 months    ZVITAMBO         ZIMBABWE                       27                 1        0    8429
24 months   COHORTS          GUATEMALA                      0                  0      229     992
24 months   COHORTS          GUATEMALA                      0                  1      233     992
24 months   COHORTS          GUATEMALA                      1                  0       31     992
24 months   COHORTS          GUATEMALA                      1                  1       26     992
24 months   COHORTS          GUATEMALA                      2                  0       94     992
24 months   COHORTS          GUATEMALA                      2                  1       75     992
24 months   COHORTS          GUATEMALA                      3                  0       61     992
24 months   COHORTS          GUATEMALA                      3                  1       66     992
24 months   COHORTS          GUATEMALA                      4                  0       30     992
24 months   COHORTS          GUATEMALA                      4                  1       35     992
24 months   COHORTS          GUATEMALA                      5                  0       12     992
24 months   COHORTS          GUATEMALA                      5                  1       12     992
24 months   COHORTS          GUATEMALA                      6                  0       44     992
24 months   COHORTS          GUATEMALA                      6                  1       34     992
24 months   COHORTS          GUATEMALA                      7                  0        2     992
24 months   COHORTS          GUATEMALA                      7                  1        0     992
24 months   COHORTS          GUATEMALA                      8                  0        0     992
24 months   COHORTS          GUATEMALA                      8                  1        1     992
24 months   COHORTS          GUATEMALA                      9                  0        0     992
24 months   COHORTS          GUATEMALA                      9                  1        0     992
24 months   COHORTS          GUATEMALA                      10                 0        1     992
24 months   COHORTS          GUATEMALA                      10                 1        0     992
24 months   COHORTS          GUATEMALA                      11                 0        0     992
24 months   COHORTS          GUATEMALA                      11                 1        0     992
24 months   COHORTS          GUATEMALA                      12                 0        4     992
24 months   COHORTS          GUATEMALA                      12                 1        1     992
24 months   COHORTS          GUATEMALA                      13                 0        0     992
24 months   COHORTS          GUATEMALA                      13                 1        0     992
24 months   COHORTS          GUATEMALA                      14                 0        0     992
24 months   COHORTS          GUATEMALA                      14                 1        0     992
24 months   COHORTS          GUATEMALA                      15                 0        1     992
24 months   COHORTS          GUATEMALA                      15                 1        0     992
24 months   COHORTS          GUATEMALA                      16                 0        0     992
24 months   COHORTS          GUATEMALA                      16                 1        0     992
24 months   COHORTS          GUATEMALA                      17                 0        0     992
24 months   COHORTS          GUATEMALA                      17                 1        0     992
24 months   COHORTS          GUATEMALA                      18                 0        0     992
24 months   COHORTS          GUATEMALA                      18                 1        0     992
24 months   COHORTS          GUATEMALA                      19                 0        0     992
24 months   COHORTS          GUATEMALA                      19                 1        0     992
24 months   COHORTS          GUATEMALA                      20                 0        0     992
24 months   COHORTS          GUATEMALA                      20                 1        0     992
24 months   COHORTS          GUATEMALA                      24                 0        0     992
24 months   COHORTS          GUATEMALA                      24                 1        0     992
24 months   COHORTS          GUATEMALA                      25                 0        0     992
24 months   COHORTS          GUATEMALA                      25                 1        0     992
24 months   COHORTS          GUATEMALA                      27                 0        0     992
24 months   COHORTS          GUATEMALA                      27                 1        0     992
24 months   COHORTS          INDIA                          0                  0       61    1380
24 months   COHORTS          INDIA                          0                  1       54    1380
24 months   COHORTS          INDIA                          1                  0        0    1380
24 months   COHORTS          INDIA                          1                  1        0    1380
24 months   COHORTS          INDIA                          2                  0        0    1380
24 months   COHORTS          INDIA                          2                  1        0    1380
24 months   COHORTS          INDIA                          3                  0       77    1380
24 months   COHORTS          INDIA                          3                  1       51    1380
24 months   COHORTS          INDIA                          4                  0        0    1380
24 months   COHORTS          INDIA                          4                  1        0    1380
24 months   COHORTS          INDIA                          5                  0        0    1380
24 months   COHORTS          INDIA                          5                  1        0    1380
24 months   COHORTS          INDIA                          6                  0        0    1380
24 months   COHORTS          INDIA                          6                  1        0    1380
24 months   COHORTS          INDIA                          7                  0        0    1380
24 months   COHORTS          INDIA                          7                  1        0    1380
24 months   COHORTS          INDIA                          8                  0      153    1380
24 months   COHORTS          INDIA                          8                  1       54    1380
24 months   COHORTS          INDIA                          9                  0        0    1380
24 months   COHORTS          INDIA                          9                  1        0    1380
24 months   COHORTS          INDIA                          10                 0        0    1380
24 months   COHORTS          INDIA                          10                 1        0    1380
24 months   COHORTS          INDIA                          11                 0        0    1380
24 months   COHORTS          INDIA                          11                 1        0    1380
24 months   COHORTS          INDIA                          12                 0      308    1380
24 months   COHORTS          INDIA                          12                 1       83    1380
24 months   COHORTS          INDIA                          13                 0        0    1380
24 months   COHORTS          INDIA                          13                 1        0    1380
24 months   COHORTS          INDIA                          14                 0      120    1380
24 months   COHORTS          INDIA                          14                 1       31    1380
24 months   COHORTS          INDIA                          15                 0      247    1380
24 months   COHORTS          INDIA                          15                 1       25    1380
24 months   COHORTS          INDIA                          16                 0        0    1380
24 months   COHORTS          INDIA                          16                 1        0    1380
24 months   COHORTS          INDIA                          17                 0      106    1380
24 months   COHORTS          INDIA                          17                 1       10    1380
24 months   COHORTS          INDIA                          18                 0        0    1380
24 months   COHORTS          INDIA                          18                 1        0    1380
24 months   COHORTS          INDIA                          19                 0        0    1380
24 months   COHORTS          INDIA                          19                 1        0    1380
24 months   COHORTS          INDIA                          20                 0        0    1380
24 months   COHORTS          INDIA                          20                 1        0    1380
24 months   COHORTS          INDIA                          24                 0        0    1380
24 months   COHORTS          INDIA                          24                 1        0    1380
24 months   COHORTS          INDIA                          25                 0        0    1380
24 months   COHORTS          INDIA                          25                 1        0    1380
24 months   COHORTS          INDIA                          27                 0        0    1380
24 months   COHORTS          INDIA                          27                 1        0    1380
24 months   COHORTS          PHILIPPINES                    0                  0       25    2314
24 months   COHORTS          PHILIPPINES                    0                  1       24    2314
24 months   COHORTS          PHILIPPINES                    1                  0       16    2314
24 months   COHORTS          PHILIPPINES                    1                  1       12    2314
24 months   COHORTS          PHILIPPINES                    2                  0       43    2314
24 months   COHORTS          PHILIPPINES                    2                  1       43    2314
24 months   COHORTS          PHILIPPINES                    3                  0       85    2314
24 months   COHORTS          PHILIPPINES                    3                  1       54    2314
24 months   COHORTS          PHILIPPINES                    4                  0      130    2314
24 months   COHORTS          PHILIPPINES                    4                  1       87    2314
24 months   COHORTS          PHILIPPINES                    5                  0      109    2314
24 months   COHORTS          PHILIPPINES                    5                  1       64    2314
24 months   COHORTS          PHILIPPINES                    6                  0      335    2314
24 months   COHORTS          PHILIPPINES                    6                  1      180    2314
24 months   COHORTS          PHILIPPINES                    7                  0       87    2314
24 months   COHORTS          PHILIPPINES                    7                  1       34    2314
24 months   COHORTS          PHILIPPINES                    8                  0      138    2314
24 months   COHORTS          PHILIPPINES                    8                  1       50    2314
24 months   COHORTS          PHILIPPINES                    9                  0      122    2314
24 months   COHORTS          PHILIPPINES                    9                  1       36    2314
24 months   COHORTS          PHILIPPINES                    10                 0      206    2314
24 months   COHORTS          PHILIPPINES                    10                 1       49    2314
24 months   COHORTS          PHILIPPINES                    11                 0       48    2314
24 months   COHORTS          PHILIPPINES                    11                 1       10    2314
24 months   COHORTS          PHILIPPINES                    12                 0      116    2314
24 months   COHORTS          PHILIPPINES                    12                 1       17    2314
24 months   COHORTS          PHILIPPINES                    13                 0       45    2314
24 months   COHORTS          PHILIPPINES                    13                 1        4    2314
24 months   COHORTS          PHILIPPINES                    14                 0      100    2314
24 months   COHORTS          PHILIPPINES                    14                 1        9    2314
24 months   COHORTS          PHILIPPINES                    15                 0       29    2314
24 months   COHORTS          PHILIPPINES                    15                 1        2    2314
24 months   COHORTS          PHILIPPINES                    16                 0        3    2314
24 months   COHORTS          PHILIPPINES                    16                 1        1    2314
24 months   COHORTS          PHILIPPINES                    17                 0        1    2314
24 months   COHORTS          PHILIPPINES                    17                 1        0    2314
24 months   COHORTS          PHILIPPINES                    18                 0        0    2314
24 months   COHORTS          PHILIPPINES                    18                 1        0    2314
24 months   COHORTS          PHILIPPINES                    19                 0        0    2314
24 months   COHORTS          PHILIPPINES                    19                 1        0    2314
24 months   COHORTS          PHILIPPINES                    20                 0        0    2314
24 months   COHORTS          PHILIPPINES                    20                 1        0    2314
24 months   COHORTS          PHILIPPINES                    24                 0        0    2314
24 months   COHORTS          PHILIPPINES                    24                 1        0    2314
24 months   COHORTS          PHILIPPINES                    25                 0        0    2314
24 months   COHORTS          PHILIPPINES                    25                 1        0    2314
24 months   COHORTS          PHILIPPINES                    27                 0        0    2314
24 months   COHORTS          PHILIPPINES                    27                 1        0    2314
24 months   GMS-Nepal        NEPAL                          0                  0      193     487
24 months   GMS-Nepal        NEPAL                          0                  1       26     487
24 months   GMS-Nepal        NEPAL                          1                  0        0     487
24 months   GMS-Nepal        NEPAL                          1                  1        0     487
24 months   GMS-Nepal        NEPAL                          2                  0        0     487
24 months   GMS-Nepal        NEPAL                          2                  1        0     487
24 months   GMS-Nepal        NEPAL                          3                  0        0     487
24 months   GMS-Nepal        NEPAL                          3                  1        0     487
24 months   GMS-Nepal        NEPAL                          4                  0        0     487
24 months   GMS-Nepal        NEPAL                          4                  1        0     487
24 months   GMS-Nepal        NEPAL                          5                  0       61     487
24 months   GMS-Nepal        NEPAL                          5                  1       11     487
24 months   GMS-Nepal        NEPAL                          6                  0        0     487
24 months   GMS-Nepal        NEPAL                          6                  1        0     487
24 months   GMS-Nepal        NEPAL                          7                  0        0     487
24 months   GMS-Nepal        NEPAL                          7                  1        0     487
24 months   GMS-Nepal        NEPAL                          8                  0       74     487
24 months   GMS-Nepal        NEPAL                          8                  1        9     487
24 months   GMS-Nepal        NEPAL                          9                  0        0     487
24 months   GMS-Nepal        NEPAL                          9                  1        0     487
24 months   GMS-Nepal        NEPAL                          10                 0       80     487
24 months   GMS-Nepal        NEPAL                          10                 1        6     487
24 months   GMS-Nepal        NEPAL                          11                 0        0     487
24 months   GMS-Nepal        NEPAL                          11                 1        0     487
24 months   GMS-Nepal        NEPAL                          12                 0       26     487
24 months   GMS-Nepal        NEPAL                          12                 1        1     487
24 months   GMS-Nepal        NEPAL                          13                 0        0     487
24 months   GMS-Nepal        NEPAL                          13                 1        0     487
24 months   GMS-Nepal        NEPAL                          14                 0        0     487
24 months   GMS-Nepal        NEPAL                          14                 1        0     487
24 months   GMS-Nepal        NEPAL                          15                 0        0     487
24 months   GMS-Nepal        NEPAL                          15                 1        0     487
24 months   GMS-Nepal        NEPAL                          16                 0        0     487
24 months   GMS-Nepal        NEPAL                          16                 1        0     487
24 months   GMS-Nepal        NEPAL                          17                 0        0     487
24 months   GMS-Nepal        NEPAL                          17                 1        0     487
24 months   GMS-Nepal        NEPAL                          18                 0        0     487
24 months   GMS-Nepal        NEPAL                          18                 1        0     487
24 months   GMS-Nepal        NEPAL                          19                 0        0     487
24 months   GMS-Nepal        NEPAL                          19                 1        0     487
24 months   GMS-Nepal        NEPAL                          20                 0        0     487
24 months   GMS-Nepal        NEPAL                          20                 1        0     487
24 months   GMS-Nepal        NEPAL                          24                 0        0     487
24 months   GMS-Nepal        NEPAL                          24                 1        0     487
24 months   GMS-Nepal        NEPAL                          25                 0        0     487
24 months   GMS-Nepal        NEPAL                          25                 1        0     487
24 months   GMS-Nepal        NEPAL                          27                 0        0     487
24 months   GMS-Nepal        NEPAL                          27                 1        0     487
24 months   LCNI-5           MALAWI                         0                  0      179     571
24 months   LCNI-5           MALAWI                         0                  1       24     571
24 months   LCNI-5           MALAWI                         1                  0        8     571
24 months   LCNI-5           MALAWI                         1                  1        2     571
24 months   LCNI-5           MALAWI                         2                  0       17     571
24 months   LCNI-5           MALAWI                         2                  1        3     571
24 months   LCNI-5           MALAWI                         3                  0       28     571
24 months   LCNI-5           MALAWI                         3                  1        7     571
24 months   LCNI-5           MALAWI                         4                  0       34     571
24 months   LCNI-5           MALAWI                         4                  1        7     571
24 months   LCNI-5           MALAWI                         5                  0       38     571
24 months   LCNI-5           MALAWI                         5                  1        4     571
24 months   LCNI-5           MALAWI                         6                  0       44     571
24 months   LCNI-5           MALAWI                         6                  1        3     571
24 months   LCNI-5           MALAWI                         7                  0       39     571
24 months   LCNI-5           MALAWI                         7                  1        7     571
24 months   LCNI-5           MALAWI                         8                  0       52     571
24 months   LCNI-5           MALAWI                         8                  1        8     571
24 months   LCNI-5           MALAWI                         9                  0        9     571
24 months   LCNI-5           MALAWI                         9                  1        0     571
24 months   LCNI-5           MALAWI                         10                 0       13     571
24 months   LCNI-5           MALAWI                         10                 1        0     571
24 months   LCNI-5           MALAWI                         11                 0        3     571
24 months   LCNI-5           MALAWI                         11                 1        1     571
24 months   LCNI-5           MALAWI                         12                 0       37     571
24 months   LCNI-5           MALAWI                         12                 1        2     571
24 months   LCNI-5           MALAWI                         13                 0        1     571
24 months   LCNI-5           MALAWI                         13                 1        0     571
24 months   LCNI-5           MALAWI                         14                 0        1     571
24 months   LCNI-5           MALAWI                         14                 1        0     571
24 months   LCNI-5           MALAWI                         15                 0        0     571
24 months   LCNI-5           MALAWI                         15                 1        0     571
24 months   LCNI-5           MALAWI                         16                 0        0     571
24 months   LCNI-5           MALAWI                         16                 1        0     571
24 months   LCNI-5           MALAWI                         17                 0        0     571
24 months   LCNI-5           MALAWI                         17                 1        0     571
24 months   LCNI-5           MALAWI                         18                 0        0     571
24 months   LCNI-5           MALAWI                         18                 1        0     571
24 months   LCNI-5           MALAWI                         19                 0        0     571
24 months   LCNI-5           MALAWI                         19                 1        0     571
24 months   LCNI-5           MALAWI                         20                 0        0     571
24 months   LCNI-5           MALAWI                         20                 1        0     571
24 months   LCNI-5           MALAWI                         24                 0        0     571
24 months   LCNI-5           MALAWI                         24                 1        0     571
24 months   LCNI-5           MALAWI                         25                 0        0     571
24 months   LCNI-5           MALAWI                         25                 1        0     571
24 months   LCNI-5           MALAWI                         27                 0        0     571
24 months   LCNI-5           MALAWI                         27                 1        0     571
24 months   MAL-ED           BANGLADESH                     0                  0        0     117
24 months   MAL-ED           BANGLADESH                     0                  1        0     117
24 months   MAL-ED           BANGLADESH                     1                  0        7     117
24 months   MAL-ED           BANGLADESH                     1                  1        0     117
24 months   MAL-ED           BANGLADESH                     2                  0       10     117
24 months   MAL-ED           BANGLADESH                     2                  1        1     117
24 months   MAL-ED           BANGLADESH                     3                  0        9     117
24 months   MAL-ED           BANGLADESH                     3                  1        2     117
24 months   MAL-ED           BANGLADESH                     4                  0        6     117
24 months   MAL-ED           BANGLADESH                     4                  1        0     117
24 months   MAL-ED           BANGLADESH                     5                  0       22     117
24 months   MAL-ED           BANGLADESH                     5                  1        5     117
24 months   MAL-ED           BANGLADESH                     6                  0        5     117
24 months   MAL-ED           BANGLADESH                     6                  1        2     117
24 months   MAL-ED           BANGLADESH                     7                  0        8     117
24 months   MAL-ED           BANGLADESH                     7                  1        0     117
24 months   MAL-ED           BANGLADESH                     8                  0       13     117
24 months   MAL-ED           BANGLADESH                     8                  1        0     117
24 months   MAL-ED           BANGLADESH                     9                  0        8     117
24 months   MAL-ED           BANGLADESH                     9                  1        2     117
24 months   MAL-ED           BANGLADESH                     10                 0        8     117
24 months   MAL-ED           BANGLADESH                     10                 1        0     117
24 months   MAL-ED           BANGLADESH                     11                 0        0     117
24 months   MAL-ED           BANGLADESH                     11                 1        0     117
24 months   MAL-ED           BANGLADESH                     12                 0        7     117
24 months   MAL-ED           BANGLADESH                     12                 1        0     117
24 months   MAL-ED           BANGLADESH                     13                 0        0     117
24 months   MAL-ED           BANGLADESH                     13                 1        0     117
24 months   MAL-ED           BANGLADESH                     14                 0        0     117
24 months   MAL-ED           BANGLADESH                     14                 1        0     117
24 months   MAL-ED           BANGLADESH                     15                 0        0     117
24 months   MAL-ED           BANGLADESH                     15                 1        0     117
24 months   MAL-ED           BANGLADESH                     16                 0        2     117
24 months   MAL-ED           BANGLADESH                     16                 1        0     117
24 months   MAL-ED           BANGLADESH                     17                 0        0     117
24 months   MAL-ED           BANGLADESH                     17                 1        0     117
24 months   MAL-ED           BANGLADESH                     18                 0        0     117
24 months   MAL-ED           BANGLADESH                     18                 1        0     117
24 months   MAL-ED           BANGLADESH                     19                 0        0     117
24 months   MAL-ED           BANGLADESH                     19                 1        0     117
24 months   MAL-ED           BANGLADESH                     20                 0        0     117
24 months   MAL-ED           BANGLADESH                     20                 1        0     117
24 months   MAL-ED           BANGLADESH                     24                 0        0     117
24 months   MAL-ED           BANGLADESH                     24                 1        0     117
24 months   MAL-ED           BANGLADESH                     25                 0        0     117
24 months   MAL-ED           BANGLADESH                     25                 1        0     117
24 months   MAL-ED           BANGLADESH                     27                 0        0     117
24 months   MAL-ED           BANGLADESH                     27                 1        0     117
24 months   MAL-ED           INDIA                          0                  0        0     132
24 months   MAL-ED           INDIA                          0                  1        0     132
24 months   MAL-ED           INDIA                          1                  0        0     132
24 months   MAL-ED           INDIA                          1                  1        0     132
24 months   MAL-ED           INDIA                          2                  0        4     132
24 months   MAL-ED           INDIA                          2                  1        1     132
24 months   MAL-ED           INDIA                          3                  0        9     132
24 months   MAL-ED           INDIA                          3                  1        0     132
24 months   MAL-ED           INDIA                          4                  0        6     132
24 months   MAL-ED           INDIA                          4                  1        0     132
24 months   MAL-ED           INDIA                          5                  0       23     132
24 months   MAL-ED           INDIA                          5                  1        8     132
24 months   MAL-ED           INDIA                          6                  0       10     132
24 months   MAL-ED           INDIA                          6                  1        0     132
24 months   MAL-ED           INDIA                          7                  0       10     132
24 months   MAL-ED           INDIA                          7                  1        0     132
24 months   MAL-ED           INDIA                          8                  0       16     132
24 months   MAL-ED           INDIA                          8                  1        3     132
24 months   MAL-ED           INDIA                          9                  0       22     132
24 months   MAL-ED           INDIA                          9                  1        3     132
24 months   MAL-ED           INDIA                          10                 0        6     132
24 months   MAL-ED           INDIA                          10                 1        0     132
24 months   MAL-ED           INDIA                          11                 0        1     132
24 months   MAL-ED           INDIA                          11                 1        1     132
24 months   MAL-ED           INDIA                          12                 0        3     132
24 months   MAL-ED           INDIA                          12                 1        0     132
24 months   MAL-ED           INDIA                          13                 0        1     132
24 months   MAL-ED           INDIA                          13                 1        0     132
24 months   MAL-ED           INDIA                          14                 0        2     132
24 months   MAL-ED           INDIA                          14                 1        0     132
24 months   MAL-ED           INDIA                          15                 0        2     132
24 months   MAL-ED           INDIA                          15                 1        0     132
24 months   MAL-ED           INDIA                          16                 0        0     132
24 months   MAL-ED           INDIA                          16                 1        0     132
24 months   MAL-ED           INDIA                          17                 0        0     132
24 months   MAL-ED           INDIA                          17                 1        0     132
24 months   MAL-ED           INDIA                          18                 0        1     132
24 months   MAL-ED           INDIA                          18                 1        0     132
24 months   MAL-ED           INDIA                          19                 0        0     132
24 months   MAL-ED           INDIA                          19                 1        0     132
24 months   MAL-ED           INDIA                          20                 0        0     132
24 months   MAL-ED           INDIA                          20                 1        0     132
24 months   MAL-ED           INDIA                          24                 0        0     132
24 months   MAL-ED           INDIA                          24                 1        0     132
24 months   MAL-ED           INDIA                          25                 0        0     132
24 months   MAL-ED           INDIA                          25                 1        0     132
24 months   MAL-ED           INDIA                          27                 0        0     132
24 months   MAL-ED           INDIA                          27                 1        0     132
24 months   MAL-ED           NEPAL                          0                  0        0      91
24 months   MAL-ED           NEPAL                          0                  1        0      91
24 months   MAL-ED           NEPAL                          1                  0        0      91
24 months   MAL-ED           NEPAL                          1                  1        0      91
24 months   MAL-ED           NEPAL                          2                  0        4      91
24 months   MAL-ED           NEPAL                          2                  1        0      91
24 months   MAL-ED           NEPAL                          3                  0        3      91
24 months   MAL-ED           NEPAL                          3                  1        0      91
24 months   MAL-ED           NEPAL                          4                  0       10      91
24 months   MAL-ED           NEPAL                          4                  1        0      91
24 months   MAL-ED           NEPAL                          5                  0        6      91
24 months   MAL-ED           NEPAL                          5                  1        0      91
24 months   MAL-ED           NEPAL                          6                  0        4      91
24 months   MAL-ED           NEPAL                          6                  1        0      91
24 months   MAL-ED           NEPAL                          7                  0        7      91
24 months   MAL-ED           NEPAL                          7                  1        1      91
24 months   MAL-ED           NEPAL                          8                  0       11      91
24 months   MAL-ED           NEPAL                          8                  1        0      91
24 months   MAL-ED           NEPAL                          9                  0        7      91
24 months   MAL-ED           NEPAL                          9                  1        0      91
24 months   MAL-ED           NEPAL                          10                 0       24      91
24 months   MAL-ED           NEPAL                          10                 1        0      91
24 months   MAL-ED           NEPAL                          11                 0        1      91
24 months   MAL-ED           NEPAL                          11                 1        0      91
24 months   MAL-ED           NEPAL                          12                 0        7      91
24 months   MAL-ED           NEPAL                          12                 1        0      91
24 months   MAL-ED           NEPAL                          13                 0        0      91
24 months   MAL-ED           NEPAL                          13                 1        0      91
24 months   MAL-ED           NEPAL                          14                 0        0      91
24 months   MAL-ED           NEPAL                          14                 1        0      91
24 months   MAL-ED           NEPAL                          15                 0        1      91
24 months   MAL-ED           NEPAL                          15                 1        0      91
24 months   MAL-ED           NEPAL                          16                 0        1      91
24 months   MAL-ED           NEPAL                          16                 1        0      91
24 months   MAL-ED           NEPAL                          17                 0        3      91
24 months   MAL-ED           NEPAL                          17                 1        0      91
24 months   MAL-ED           NEPAL                          18                 0        1      91
24 months   MAL-ED           NEPAL                          18                 1        0      91
24 months   MAL-ED           NEPAL                          19                 0        0      91
24 months   MAL-ED           NEPAL                          19                 1        0      91
24 months   MAL-ED           NEPAL                          20                 0        0      91
24 months   MAL-ED           NEPAL                          20                 1        0      91
24 months   MAL-ED           NEPAL                          24                 0        0      91
24 months   MAL-ED           NEPAL                          24                 1        0      91
24 months   MAL-ED           NEPAL                          25                 0        0      91
24 months   MAL-ED           NEPAL                          25                 1        0      91
24 months   MAL-ED           NEPAL                          27                 0        0      91
24 months   MAL-ED           NEPAL                          27                 1        0      91
24 months   MAL-ED           PERU                           0                  0        0     164
24 months   MAL-ED           PERU                           0                  1        1     164
24 months   MAL-ED           PERU                           1                  0        1     164
24 months   MAL-ED           PERU                           1                  1        0     164
24 months   MAL-ED           PERU                           2                  0        0     164
24 months   MAL-ED           PERU                           2                  1        0     164
24 months   MAL-ED           PERU                           3                  0        6     164
24 months   MAL-ED           PERU                           3                  1        0     164
24 months   MAL-ED           PERU                           4                  0        3     164
24 months   MAL-ED           PERU                           4                  1        0     164
24 months   MAL-ED           PERU                           5                  0        7     164
24 months   MAL-ED           PERU                           5                  1        0     164
24 months   MAL-ED           PERU                           6                  0       13     164
24 months   MAL-ED           PERU                           6                  1        1     164
24 months   MAL-ED           PERU                           7                  0       11     164
24 months   MAL-ED           PERU                           7                  1        1     164
24 months   MAL-ED           PERU                           8                  0       14     164
24 months   MAL-ED           PERU                           8                  1        1     164
24 months   MAL-ED           PERU                           9                  0       19     164
24 months   MAL-ED           PERU                           9                  1        2     164
24 months   MAL-ED           PERU                           10                 0        7     164
24 months   MAL-ED           PERU                           10                 1        0     164
24 months   MAL-ED           PERU                           11                 0       63     164
24 months   MAL-ED           PERU                           11                 1        2     164
24 months   MAL-ED           PERU                           12                 0        0     164
24 months   MAL-ED           PERU                           12                 1        1     164
24 months   MAL-ED           PERU                           13                 0        2     164
24 months   MAL-ED           PERU                           13                 1        0     164
24 months   MAL-ED           PERU                           14                 0        3     164
24 months   MAL-ED           PERU                           14                 1        1     164
24 months   MAL-ED           PERU                           15                 0        0     164
24 months   MAL-ED           PERU                           15                 1        0     164
24 months   MAL-ED           PERU                           16                 0        1     164
24 months   MAL-ED           PERU                           16                 1        0     164
24 months   MAL-ED           PERU                           17                 0        1     164
24 months   MAL-ED           PERU                           17                 1        0     164
24 months   MAL-ED           PERU                           18                 0        2     164
24 months   MAL-ED           PERU                           18                 1        0     164
24 months   MAL-ED           PERU                           19                 0        0     164
24 months   MAL-ED           PERU                           19                 1        0     164
24 months   MAL-ED           PERU                           20                 0        1     164
24 months   MAL-ED           PERU                           20                 1        0     164
24 months   MAL-ED           PERU                           24                 0        0     164
24 months   MAL-ED           PERU                           24                 1        0     164
24 months   MAL-ED           PERU                           25                 0        0     164
24 months   MAL-ED           PERU                           25                 1        0     164
24 months   MAL-ED           PERU                           27                 0        0     164
24 months   MAL-ED           PERU                           27                 1        0     164
24 months   MAL-ED           SOUTH AFRICA                   0                  0        0      91
24 months   MAL-ED           SOUTH AFRICA                   0                  1        0      91
24 months   MAL-ED           SOUTH AFRICA                   1                  0        0      91
24 months   MAL-ED           SOUTH AFRICA                   1                  1        0      91
24 months   MAL-ED           SOUTH AFRICA                   2                  0        1      91
24 months   MAL-ED           SOUTH AFRICA                   2                  1        0      91
24 months   MAL-ED           SOUTH AFRICA                   3                  0        0      91
24 months   MAL-ED           SOUTH AFRICA                   3                  1        0      91
24 months   MAL-ED           SOUTH AFRICA                   4                  0        3      91
24 months   MAL-ED           SOUTH AFRICA                   4                  1        1      91
24 months   MAL-ED           SOUTH AFRICA                   5                  0        2      91
24 months   MAL-ED           SOUTH AFRICA                   5                  1        0      91
24 months   MAL-ED           SOUTH AFRICA                   6                  0        6      91
24 months   MAL-ED           SOUTH AFRICA                   6                  1        0      91
24 months   MAL-ED           SOUTH AFRICA                   7                  0        5      91
24 months   MAL-ED           SOUTH AFRICA                   7                  1        1      91
24 months   MAL-ED           SOUTH AFRICA                   8                  0        9      91
24 months   MAL-ED           SOUTH AFRICA                   8                  1        1      91
24 months   MAL-ED           SOUTH AFRICA                   9                  0        4      91
24 months   MAL-ED           SOUTH AFRICA                   9                  1        1      91
24 months   MAL-ED           SOUTH AFRICA                   10                 0        6      91
24 months   MAL-ED           SOUTH AFRICA                   10                 1        2      91
24 months   MAL-ED           SOUTH AFRICA                   11                 0       13      91
24 months   MAL-ED           SOUTH AFRICA                   11                 1        2      91
24 months   MAL-ED           SOUTH AFRICA                   12                 0       27      91
24 months   MAL-ED           SOUTH AFRICA                   12                 1        2      91
24 months   MAL-ED           SOUTH AFRICA                   13                 0        0      91
24 months   MAL-ED           SOUTH AFRICA                   13                 1        0      91
24 months   MAL-ED           SOUTH AFRICA                   14                 0        2      91
24 months   MAL-ED           SOUTH AFRICA                   14                 1        0      91
24 months   MAL-ED           SOUTH AFRICA                   15                 0        2      91
24 months   MAL-ED           SOUTH AFRICA                   15                 1        0      91
24 months   MAL-ED           SOUTH AFRICA                   16                 0        1      91
24 months   MAL-ED           SOUTH AFRICA                   16                 1        0      91
24 months   MAL-ED           SOUTH AFRICA                   17                 0        0      91
24 months   MAL-ED           SOUTH AFRICA                   17                 1        0      91
24 months   MAL-ED           SOUTH AFRICA                   18                 0        0      91
24 months   MAL-ED           SOUTH AFRICA                   18                 1        0      91
24 months   MAL-ED           SOUTH AFRICA                   19                 0        0      91
24 months   MAL-ED           SOUTH AFRICA                   19                 1        0      91
24 months   MAL-ED           SOUTH AFRICA                   20                 0        0      91
24 months   MAL-ED           SOUTH AFRICA                   20                 1        0      91
24 months   MAL-ED           SOUTH AFRICA                   24                 0        0      91
24 months   MAL-ED           SOUTH AFRICA                   24                 1        0      91
24 months   MAL-ED           SOUTH AFRICA                   25                 0        0      91
24 months   MAL-ED           SOUTH AFRICA                   25                 1        0      91
24 months   MAL-ED           SOUTH AFRICA                   27                 0        0      91
24 months   MAL-ED           SOUTH AFRICA                   27                 1        0      91
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       10     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        3     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  0        3     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  1        8     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  0        8     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  1        5     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  0        8     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  1        2     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  0        5     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  1        3     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  0        6     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  1        2     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  0       78     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  1       27     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  0        1     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  0        1     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  1        1     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 0        1     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 1        2     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 0        1     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 1        1     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                 0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                 1        1     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                 0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                 1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                 0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                 1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                 0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                 1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                 0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                 1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                 0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                 1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                 0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                 1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                 0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                 1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                 0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                 1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                 0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                 1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                 0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                 1        0     177
24 months   NIH-Crypto       BANGLADESH                     0                  0       93     514
24 months   NIH-Crypto       BANGLADESH                     0                  1        9     514
24 months   NIH-Crypto       BANGLADESH                     1                  0       11     514
24 months   NIH-Crypto       BANGLADESH                     1                  1        0     514
24 months   NIH-Crypto       BANGLADESH                     2                  0       10     514
24 months   NIH-Crypto       BANGLADESH                     2                  1        0     514
24 months   NIH-Crypto       BANGLADESH                     3                  0       20     514
24 months   NIH-Crypto       BANGLADESH                     3                  1        1     514
24 months   NIH-Crypto       BANGLADESH                     4                  0       27     514
24 months   NIH-Crypto       BANGLADESH                     4                  1        3     514
24 months   NIH-Crypto       BANGLADESH                     5                  0       59     514
24 months   NIH-Crypto       BANGLADESH                     5                  1        6     514
24 months   NIH-Crypto       BANGLADESH                     6                  0       25     514
24 months   NIH-Crypto       BANGLADESH                     6                  1        1     514
24 months   NIH-Crypto       BANGLADESH                     7                  0       37     514
24 months   NIH-Crypto       BANGLADESH                     7                  1        1     514
24 months   NIH-Crypto       BANGLADESH                     8                  0       55     514
24 months   NIH-Crypto       BANGLADESH                     8                  1        3     514
24 months   NIH-Crypto       BANGLADESH                     9                  0       57     514
24 months   NIH-Crypto       BANGLADESH                     9                  1        6     514
24 months   NIH-Crypto       BANGLADESH                     10                 0       37     514
24 months   NIH-Crypto       BANGLADESH                     10                 1        4     514
24 months   NIH-Crypto       BANGLADESH                     11                 0        0     514
24 months   NIH-Crypto       BANGLADESH                     11                 1        0     514
24 months   NIH-Crypto       BANGLADESH                     12                 0       25     514
24 months   NIH-Crypto       BANGLADESH                     12                 1        2     514
24 months   NIH-Crypto       BANGLADESH                     13                 0        0     514
24 months   NIH-Crypto       BANGLADESH                     13                 1        0     514
24 months   NIH-Crypto       BANGLADESH                     14                 0        5     514
24 months   NIH-Crypto       BANGLADESH                     14                 1        0     514
24 months   NIH-Crypto       BANGLADESH                     15                 0       12     514
24 months   NIH-Crypto       BANGLADESH                     15                 1        0     514
24 months   NIH-Crypto       BANGLADESH                     16                 0        0     514
24 months   NIH-Crypto       BANGLADESH                     16                 1        0     514
24 months   NIH-Crypto       BANGLADESH                     17                 0        5     514
24 months   NIH-Crypto       BANGLADESH                     17                 1        0     514
24 months   NIH-Crypto       BANGLADESH                     18                 0        0     514
24 months   NIH-Crypto       BANGLADESH                     18                 1        0     514
24 months   NIH-Crypto       BANGLADESH                     19                 0        0     514
24 months   NIH-Crypto       BANGLADESH                     19                 1        0     514
24 months   NIH-Crypto       BANGLADESH                     20                 0        0     514
24 months   NIH-Crypto       BANGLADESH                     20                 1        0     514
24 months   NIH-Crypto       BANGLADESH                     24                 0        0     514
24 months   NIH-Crypto       BANGLADESH                     24                 1        0     514
24 months   NIH-Crypto       BANGLADESH                     25                 0        0     514
24 months   NIH-Crypto       BANGLADESH                     25                 1        0     514
24 months   NIH-Crypto       BANGLADESH                     27                 0        0     514
24 months   NIH-Crypto       BANGLADESH                     27                 1        0     514
24 months   PROBIT           BELARUS                        0                  0        0    3913
24 months   PROBIT           BELARUS                        0                  1        0    3913
24 months   PROBIT           BELARUS                        1                  0        0    3913
24 months   PROBIT           BELARUS                        1                  1        0    3913
24 months   PROBIT           BELARUS                        2                  0        0    3913
24 months   PROBIT           BELARUS                        2                  1        0    3913
24 months   PROBIT           BELARUS                        3                  0        0    3913
24 months   PROBIT           BELARUS                        3                  1        0    3913
24 months   PROBIT           BELARUS                        4                  0        0    3913
24 months   PROBIT           BELARUS                        4                  1        0    3913
24 months   PROBIT           BELARUS                        5                  0        0    3913
24 months   PROBIT           BELARUS                        5                  1        0    3913
24 months   PROBIT           BELARUS                        6                  0        0    3913
24 months   PROBIT           BELARUS                        6                  1        0    3913
24 months   PROBIT           BELARUS                        7                  0        0    3913
24 months   PROBIT           BELARUS                        7                  1        0    3913
24 months   PROBIT           BELARUS                        8                  0        1    3913
24 months   PROBIT           BELARUS                        8                  1        0    3913
24 months   PROBIT           BELARUS                        9                  0        0    3913
24 months   PROBIT           BELARUS                        9                  1        0    3913
24 months   PROBIT           BELARUS                        10                 0       68    3913
24 months   PROBIT           BELARUS                        10                 1        2    3913
24 months   PROBIT           BELARUS                        11                 0        0    3913
24 months   PROBIT           BELARUS                        11                 1        0    3913
24 months   PROBIT           BELARUS                        12                 0     1414    3913
24 months   PROBIT           BELARUS                        12                 1       31    3913
24 months   PROBIT           BELARUS                        13                 0     1745    3913
24 months   PROBIT           BELARUS                        13                 1       25    3913
24 months   PROBIT           BELARUS                        14                 0       98    3913
24 months   PROBIT           BELARUS                        14                 1        0    3913
24 months   PROBIT           BELARUS                        15                 0        0    3913
24 months   PROBIT           BELARUS                        15                 1        0    3913
24 months   PROBIT           BELARUS                        16                 0      525    3913
24 months   PROBIT           BELARUS                        16                 1        4    3913
24 months   PROBIT           BELARUS                        17                 0        0    3913
24 months   PROBIT           BELARUS                        17                 1        0    3913
24 months   PROBIT           BELARUS                        18                 0        0    3913
24 months   PROBIT           BELARUS                        18                 1        0    3913
24 months   PROBIT           BELARUS                        19                 0        0    3913
24 months   PROBIT           BELARUS                        19                 1        0    3913
24 months   PROBIT           BELARUS                        20                 0        0    3913
24 months   PROBIT           BELARUS                        20                 1        0    3913
24 months   PROBIT           BELARUS                        24                 0        0    3913
24 months   PROBIT           BELARUS                        24                 1        0    3913
24 months   PROBIT           BELARUS                        25                 0        0    3913
24 months   PROBIT           BELARUS                        25                 1        0    3913
24 months   PROBIT           BELARUS                        27                 0        0    3913
24 months   PROBIT           BELARUS                        27                 1        0    3913
24 months   PROVIDE          BANGLADESH                     0                  0      146     578
24 months   PROVIDE          BANGLADESH                     0                  1       24     578
24 months   PROVIDE          BANGLADESH                     1                  0       10     578
24 months   PROVIDE          BANGLADESH                     1                  1        0     578
24 months   PROVIDE          BANGLADESH                     2                  0       14     578
24 months   PROVIDE          BANGLADESH                     2                  1        3     578
24 months   PROVIDE          BANGLADESH                     3                  0       19     578
24 months   PROVIDE          BANGLADESH                     3                  1        1     578
24 months   PROVIDE          BANGLADESH                     4                  0       33     578
24 months   PROVIDE          BANGLADESH                     4                  1        8     578
24 months   PROVIDE          BANGLADESH                     5                  0       57     578
24 months   PROVIDE          BANGLADESH                     5                  1        4     578
24 months   PROVIDE          BANGLADESH                     6                  0       21     578
24 months   PROVIDE          BANGLADESH                     6                  1        4     578
24 months   PROVIDE          BANGLADESH                     7                  0       31     578
24 months   PROVIDE          BANGLADESH                     7                  1        1     578
24 months   PROVIDE          BANGLADESH                     8                  0       55     578
24 months   PROVIDE          BANGLADESH                     8                  1        2     578
24 months   PROVIDE          BANGLADESH                     9                  0       52     578
24 months   PROVIDE          BANGLADESH                     9                  1        1     578
24 months   PROVIDE          BANGLADESH                     10                 0       28     578
24 months   PROVIDE          BANGLADESH                     10                 1        2     578
24 months   PROVIDE          BANGLADESH                     11                 0       24     578
24 months   PROVIDE          BANGLADESH                     11                 1        1     578
24 months   PROVIDE          BANGLADESH                     12                 0        2     578
24 months   PROVIDE          BANGLADESH                     12                 1        1     578
24 months   PROVIDE          BANGLADESH                     13                 0        0     578
24 months   PROVIDE          BANGLADESH                     13                 1        0     578
24 months   PROVIDE          BANGLADESH                     14                 0       17     578
24 months   PROVIDE          BANGLADESH                     14                 1        0     578
24 months   PROVIDE          BANGLADESH                     15                 0        8     578
24 months   PROVIDE          BANGLADESH                     15                 1        0     578
24 months   PROVIDE          BANGLADESH                     16                 0        8     578
24 months   PROVIDE          BANGLADESH                     16                 1        0     578
24 months   PROVIDE          BANGLADESH                     17                 0        0     578
24 months   PROVIDE          BANGLADESH                     17                 1        0     578
24 months   PROVIDE          BANGLADESH                     18                 0        0     578
24 months   PROVIDE          BANGLADESH                     18                 1        0     578
24 months   PROVIDE          BANGLADESH                     19                 0        1     578
24 months   PROVIDE          BANGLADESH                     19                 1        0     578
24 months   PROVIDE          BANGLADESH                     20                 0        0     578
24 months   PROVIDE          BANGLADESH                     20                 1        0     578
24 months   PROVIDE          BANGLADESH                     24                 0        0     578
24 months   PROVIDE          BANGLADESH                     24                 1        0     578
24 months   PROVIDE          BANGLADESH                     25                 0        0     578
24 months   PROVIDE          BANGLADESH                     25                 1        0     578
24 months   PROVIDE          BANGLADESH                     27                 0        0     578
24 months   PROVIDE          BANGLADESH                     27                 1        0     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                 1        0       6
24 months   ZVITAMBO         ZIMBABWE                       0                  0       10    1594
24 months   ZVITAMBO         ZIMBABWE                       0                  1        3    1594
24 months   ZVITAMBO         ZIMBABWE                       1                  0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       1                  1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       2                  0        2    1594
24 months   ZVITAMBO         ZIMBABWE                       2                  1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       3                  0        1    1594
24 months   ZVITAMBO         ZIMBABWE                       3                  1        1    1594
24 months   ZVITAMBO         ZIMBABWE                       4                  0        3    1594
24 months   ZVITAMBO         ZIMBABWE                       4                  1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       5                  0        4    1594
24 months   ZVITAMBO         ZIMBABWE                       5                  1        2    1594
24 months   ZVITAMBO         ZIMBABWE                       6                  0        2    1594
24 months   ZVITAMBO         ZIMBABWE                       6                  1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       7                  0       85    1594
24 months   ZVITAMBO         ZIMBABWE                       7                  1       13    1594
24 months   ZVITAMBO         ZIMBABWE                       8                  0        7    1594
24 months   ZVITAMBO         ZIMBABWE                       8                  1        2    1594
24 months   ZVITAMBO         ZIMBABWE                       9                  0      101    1594
24 months   ZVITAMBO         ZIMBABWE                       9                  1       15    1594
24 months   ZVITAMBO         ZIMBABWE                       10                 0       39    1594
24 months   ZVITAMBO         ZIMBABWE                       10                 1        8    1594
24 months   ZVITAMBO         ZIMBABWE                       11                 0     1082    1594
24 months   ZVITAMBO         ZIMBABWE                       11                 1      118    1594
24 months   ZVITAMBO         ZIMBABWE                       12                 0        9    1594
24 months   ZVITAMBO         ZIMBABWE                       12                 1        1    1594
24 months   ZVITAMBO         ZIMBABWE                       13                 0       83    1594
24 months   ZVITAMBO         ZIMBABWE                       13                 1        3    1594
24 months   ZVITAMBO         ZIMBABWE                       14                 0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       14                 1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       15                 0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       15                 1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       16                 0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       16                 1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       17                 0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       17                 1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       18                 0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       18                 1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       19                 0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       19                 1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       20                 0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       20                 1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       24                 0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       24                 1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       25                 0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       25                 1        0    1594
24 months   ZVITAMBO         ZIMBABWE                       27                 0        0    1594
24 months   ZVITAMBO         ZIMBABWE                       27                 1        0    1594


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
















