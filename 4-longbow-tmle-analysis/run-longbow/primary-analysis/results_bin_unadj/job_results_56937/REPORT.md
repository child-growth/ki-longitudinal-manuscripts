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

**Outcome Variable:** swasted

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

agecat      studyid          country                        feducyrs    swasted   n_cell       n
----------  ---------------  -----------------------------  ---------  --------  -------  ------
Birth       COHORTS          GUATEMALA                      0                 0      287     718
Birth       COHORTS          GUATEMALA                      0                 1       24     718
Birth       COHORTS          GUATEMALA                      1                 0       36     718
Birth       COHORTS          GUATEMALA                      1                 1        0     718
Birth       COHORTS          GUATEMALA                      2                 0      126     718
Birth       COHORTS          GUATEMALA                      2                 1       13     718
Birth       COHORTS          GUATEMALA                      3                 0       90     718
Birth       COHORTS          GUATEMALA                      3                 1        6     718
Birth       COHORTS          GUATEMALA                      4                 0       44     718
Birth       COHORTS          GUATEMALA                      4                 1        3     718
Birth       COHORTS          GUATEMALA                      5                 0       14     718
Birth       COHORTS          GUATEMALA                      5                 1        2     718
Birth       COHORTS          GUATEMALA                      6                 0       58     718
Birth       COHORTS          GUATEMALA                      6                 1        6     718
Birth       COHORTS          GUATEMALA                      7                 0        3     718
Birth       COHORTS          GUATEMALA                      7                 1        0     718
Birth       COHORTS          GUATEMALA                      8                 0        2     718
Birth       COHORTS          GUATEMALA                      8                 1        0     718
Birth       COHORTS          GUATEMALA                      9                 0        1     718
Birth       COHORTS          GUATEMALA                      9                 1        0     718
Birth       COHORTS          GUATEMALA                      10                0        0     718
Birth       COHORTS          GUATEMALA                      10                1        0     718
Birth       COHORTS          GUATEMALA                      11                0        0     718
Birth       COHORTS          GUATEMALA                      11                1        0     718
Birth       COHORTS          GUATEMALA                      12                0        2     718
Birth       COHORTS          GUATEMALA                      12                1        0     718
Birth       COHORTS          GUATEMALA                      13                0        0     718
Birth       COHORTS          GUATEMALA                      13                1        0     718
Birth       COHORTS          GUATEMALA                      14                0        1     718
Birth       COHORTS          GUATEMALA                      14                1        0     718
Birth       COHORTS          GUATEMALA                      15                0        0     718
Birth       COHORTS          GUATEMALA                      15                1        0     718
Birth       COHORTS          GUATEMALA                      16                0        0     718
Birth       COHORTS          GUATEMALA                      16                1        0     718
Birth       COHORTS          GUATEMALA                      17                0        0     718
Birth       COHORTS          GUATEMALA                      17                1        0     718
Birth       COHORTS          GUATEMALA                      18                0        0     718
Birth       COHORTS          GUATEMALA                      18                1        0     718
Birth       COHORTS          GUATEMALA                      19                0        0     718
Birth       COHORTS          GUATEMALA                      19                1        0     718
Birth       COHORTS          GUATEMALA                      20                0        0     718
Birth       COHORTS          GUATEMALA                      20                1        0     718
Birth       COHORTS          GUATEMALA                      24                0        0     718
Birth       COHORTS          GUATEMALA                      24                1        0     718
Birth       COHORTS          GUATEMALA                      25                0        0     718
Birth       COHORTS          GUATEMALA                      25                1        0     718
Birth       COHORTS          GUATEMALA                      27                0        0     718
Birth       COHORTS          GUATEMALA                      27                1        0     718
Birth       COHORTS          INDIA                          0                 0      108    1291
Birth       COHORTS          INDIA                          0                 1        2    1291
Birth       COHORTS          INDIA                          1                 0        0    1291
Birth       COHORTS          INDIA                          1                 1        0    1291
Birth       COHORTS          INDIA                          2                 0        0    1291
Birth       COHORTS          INDIA                          2                 1        0    1291
Birth       COHORTS          INDIA                          3                 0      119    1291
Birth       COHORTS          INDIA                          3                 1        1    1291
Birth       COHORTS          INDIA                          4                 0        0    1291
Birth       COHORTS          INDIA                          4                 1        0    1291
Birth       COHORTS          INDIA                          5                 0        0    1291
Birth       COHORTS          INDIA                          5                 1        0    1291
Birth       COHORTS          INDIA                          6                 0        0    1291
Birth       COHORTS          INDIA                          6                 1        0    1291
Birth       COHORTS          INDIA                          7                 0        0    1291
Birth       COHORTS          INDIA                          7                 1        0    1291
Birth       COHORTS          INDIA                          8                 0      180    1291
Birth       COHORTS          INDIA                          8                 1        4    1291
Birth       COHORTS          INDIA                          9                 0        0    1291
Birth       COHORTS          INDIA                          9                 1        0    1291
Birth       COHORTS          INDIA                          10                0        0    1291
Birth       COHORTS          INDIA                          10                1        0    1291
Birth       COHORTS          INDIA                          11                0        0    1291
Birth       COHORTS          INDIA                          11                1        0    1291
Birth       COHORTS          INDIA                          12                0      349    1291
Birth       COHORTS          INDIA                          12                1       21    1291
Birth       COHORTS          INDIA                          13                0        0    1291
Birth       COHORTS          INDIA                          13                1        0    1291
Birth       COHORTS          INDIA                          14                0      132    1291
Birth       COHORTS          INDIA                          14                1        8    1291
Birth       COHORTS          INDIA                          15                0      242    1291
Birth       COHORTS          INDIA                          15                1       12    1291
Birth       COHORTS          INDIA                          16                0        0    1291
Birth       COHORTS          INDIA                          16                1        0    1291
Birth       COHORTS          INDIA                          17                0      107    1291
Birth       COHORTS          INDIA                          17                1        6    1291
Birth       COHORTS          INDIA                          18                0        0    1291
Birth       COHORTS          INDIA                          18                1        0    1291
Birth       COHORTS          INDIA                          19                0        0    1291
Birth       COHORTS          INDIA                          19                1        0    1291
Birth       COHORTS          INDIA                          20                0        0    1291
Birth       COHORTS          INDIA                          20                1        0    1291
Birth       COHORTS          INDIA                          24                0        0    1291
Birth       COHORTS          INDIA                          24                1        0    1291
Birth       COHORTS          INDIA                          25                0        0    1291
Birth       COHORTS          INDIA                          25                1        0    1291
Birth       COHORTS          INDIA                          27                0        0    1291
Birth       COHORTS          INDIA                          27                1        0    1291
Birth       COHORTS          PHILIPPINES                    0                 0       53    2728
Birth       COHORTS          PHILIPPINES                    0                 1        1    2728
Birth       COHORTS          PHILIPPINES                    1                 0       32    2728
Birth       COHORTS          PHILIPPINES                    1                 1        3    2728
Birth       COHORTS          PHILIPPINES                    2                 0       91    2728
Birth       COHORTS          PHILIPPINES                    2                 1        1    2728
Birth       COHORTS          PHILIPPINES                    3                 0      152    2728
Birth       COHORTS          PHILIPPINES                    3                 1        0    2728
Birth       COHORTS          PHILIPPINES                    4                 0      241    2728
Birth       COHORTS          PHILIPPINES                    4                 1        7    2728
Birth       COHORTS          PHILIPPINES                    5                 0      184    2728
Birth       COHORTS          PHILIPPINES                    5                 1        8    2728
Birth       COHORTS          PHILIPPINES                    6                 0      574    2728
Birth       COHORTS          PHILIPPINES                    6                 1       27    2728
Birth       COHORTS          PHILIPPINES                    7                 0      133    2728
Birth       COHORTS          PHILIPPINES                    7                 1        7    2728
Birth       COHORTS          PHILIPPINES                    8                 0      212    2728
Birth       COHORTS          PHILIPPINES                    8                 1        8    2728
Birth       COHORTS          PHILIPPINES                    9                 0      172    2728
Birth       COHORTS          PHILIPPINES                    9                 1       12    2728
Birth       COHORTS          PHILIPPINES                    10                0      306    2728
Birth       COHORTS          PHILIPPINES                    10                1       12    2728
Birth       COHORTS          PHILIPPINES                    11                0       60    2728
Birth       COHORTS          PHILIPPINES                    11                1        5    2728
Birth       COHORTS          PHILIPPINES                    12                0      168    2728
Birth       COHORTS          PHILIPPINES                    12                1        8    2728
Birth       COHORTS          PHILIPPINES                    13                0       60    2728
Birth       COHORTS          PHILIPPINES                    13                1        2    2728
Birth       COHORTS          PHILIPPINES                    14                0      133    2728
Birth       COHORTS          PHILIPPINES                    14                1        9    2728
Birth       COHORTS          PHILIPPINES                    15                0       35    2728
Birth       COHORTS          PHILIPPINES                    15                1        1    2728
Birth       COHORTS          PHILIPPINES                    16                0        7    2728
Birth       COHORTS          PHILIPPINES                    16                1        0    2728
Birth       COHORTS          PHILIPPINES                    17                0        2    2728
Birth       COHORTS          PHILIPPINES                    17                1        0    2728
Birth       COHORTS          PHILIPPINES                    18                0        2    2728
Birth       COHORTS          PHILIPPINES                    18                1        0    2728
Birth       COHORTS          PHILIPPINES                    19                0        0    2728
Birth       COHORTS          PHILIPPINES                    19                1        0    2728
Birth       COHORTS          PHILIPPINES                    20                0        0    2728
Birth       COHORTS          PHILIPPINES                    20                1        0    2728
Birth       COHORTS          PHILIPPINES                    24                0        0    2728
Birth       COHORTS          PHILIPPINES                    24                1        0    2728
Birth       COHORTS          PHILIPPINES                    25                0        0    2728
Birth       COHORTS          PHILIPPINES                    25                1        0    2728
Birth       COHORTS          PHILIPPINES                    27                0        0    2728
Birth       COHORTS          PHILIPPINES                    27                1        0    2728
Birth       GMS-Nepal        NEPAL                          0                 0      259     640
Birth       GMS-Nepal        NEPAL                          0                 1        7     640
Birth       GMS-Nepal        NEPAL                          1                 0        0     640
Birth       GMS-Nepal        NEPAL                          1                 1        0     640
Birth       GMS-Nepal        NEPAL                          2                 0        0     640
Birth       GMS-Nepal        NEPAL                          2                 1        0     640
Birth       GMS-Nepal        NEPAL                          3                 0        0     640
Birth       GMS-Nepal        NEPAL                          3                 1        0     640
Birth       GMS-Nepal        NEPAL                          4                 0        0     640
Birth       GMS-Nepal        NEPAL                          4                 1        0     640
Birth       GMS-Nepal        NEPAL                          5                 0       98     640
Birth       GMS-Nepal        NEPAL                          5                 1        5     640
Birth       GMS-Nepal        NEPAL                          6                 0        0     640
Birth       GMS-Nepal        NEPAL                          6                 1        0     640
Birth       GMS-Nepal        NEPAL                          7                 0        0     640
Birth       GMS-Nepal        NEPAL                          7                 1        0     640
Birth       GMS-Nepal        NEPAL                          8                 0      105     640
Birth       GMS-Nepal        NEPAL                          8                 1        4     640
Birth       GMS-Nepal        NEPAL                          9                 0        0     640
Birth       GMS-Nepal        NEPAL                          9                 1        0     640
Birth       GMS-Nepal        NEPAL                          10                0      114     640
Birth       GMS-Nepal        NEPAL                          10                1       10     640
Birth       GMS-Nepal        NEPAL                          11                0        0     640
Birth       GMS-Nepal        NEPAL                          11                1        0     640
Birth       GMS-Nepal        NEPAL                          12                0       37     640
Birth       GMS-Nepal        NEPAL                          12                1        1     640
Birth       GMS-Nepal        NEPAL                          13                0        0     640
Birth       GMS-Nepal        NEPAL                          13                1        0     640
Birth       GMS-Nepal        NEPAL                          14                0        0     640
Birth       GMS-Nepal        NEPAL                          14                1        0     640
Birth       GMS-Nepal        NEPAL                          15                0        0     640
Birth       GMS-Nepal        NEPAL                          15                1        0     640
Birth       GMS-Nepal        NEPAL                          16                0        0     640
Birth       GMS-Nepal        NEPAL                          16                1        0     640
Birth       GMS-Nepal        NEPAL                          17                0        0     640
Birth       GMS-Nepal        NEPAL                          17                1        0     640
Birth       GMS-Nepal        NEPAL                          18                0        0     640
Birth       GMS-Nepal        NEPAL                          18                1        0     640
Birth       GMS-Nepal        NEPAL                          19                0        0     640
Birth       GMS-Nepal        NEPAL                          19                1        0     640
Birth       GMS-Nepal        NEPAL                          20                0        0     640
Birth       GMS-Nepal        NEPAL                          20                1        0     640
Birth       GMS-Nepal        NEPAL                          24                0        0     640
Birth       GMS-Nepal        NEPAL                          24                1        0     640
Birth       GMS-Nepal        NEPAL                          25                0        0     640
Birth       GMS-Nepal        NEPAL                          25                1        0     640
Birth       GMS-Nepal        NEPAL                          27                0        0     640
Birth       GMS-Nepal        NEPAL                          27                1        0     640
Birth       MAL-ED           BANGLADESH                     0                 0        0     119
Birth       MAL-ED           BANGLADESH                     0                 1        0     119
Birth       MAL-ED           BANGLADESH                     1                 0        3     119
Birth       MAL-ED           BANGLADESH                     1                 1        1     119
Birth       MAL-ED           BANGLADESH                     2                 0        9     119
Birth       MAL-ED           BANGLADESH                     2                 1        1     119
Birth       MAL-ED           BANGLADESH                     3                 0       11     119
Birth       MAL-ED           BANGLADESH                     3                 1        1     119
Birth       MAL-ED           BANGLADESH                     4                 0        7     119
Birth       MAL-ED           BANGLADESH                     4                 1        0     119
Birth       MAL-ED           BANGLADESH                     5                 0       25     119
Birth       MAL-ED           BANGLADESH                     5                 1        1     119
Birth       MAL-ED           BANGLADESH                     6                 0        7     119
Birth       MAL-ED           BANGLADESH                     6                 1        0     119
Birth       MAL-ED           BANGLADESH                     7                 0        9     119
Birth       MAL-ED           BANGLADESH                     7                 1        0     119
Birth       MAL-ED           BANGLADESH                     8                 0       16     119
Birth       MAL-ED           BANGLADESH                     8                 1        0     119
Birth       MAL-ED           BANGLADESH                     9                 0       10     119
Birth       MAL-ED           BANGLADESH                     9                 1        0     119
Birth       MAL-ED           BANGLADESH                     10                0        9     119
Birth       MAL-ED           BANGLADESH                     10                1        0     119
Birth       MAL-ED           BANGLADESH                     11                0        0     119
Birth       MAL-ED           BANGLADESH                     11                1        0     119
Birth       MAL-ED           BANGLADESH                     12                0        5     119
Birth       MAL-ED           BANGLADESH                     12                1        2     119
Birth       MAL-ED           BANGLADESH                     13                0        0     119
Birth       MAL-ED           BANGLADESH                     13                1        0     119
Birth       MAL-ED           BANGLADESH                     14                0        0     119
Birth       MAL-ED           BANGLADESH                     14                1        0     119
Birth       MAL-ED           BANGLADESH                     15                0        0     119
Birth       MAL-ED           BANGLADESH                     15                1        0     119
Birth       MAL-ED           BANGLADESH                     16                0        2     119
Birth       MAL-ED           BANGLADESH                     16                1        0     119
Birth       MAL-ED           BANGLADESH                     17                0        0     119
Birth       MAL-ED           BANGLADESH                     17                1        0     119
Birth       MAL-ED           BANGLADESH                     18                0        0     119
Birth       MAL-ED           BANGLADESH                     18                1        0     119
Birth       MAL-ED           BANGLADESH                     19                0        0     119
Birth       MAL-ED           BANGLADESH                     19                1        0     119
Birth       MAL-ED           BANGLADESH                     20                0        0     119
Birth       MAL-ED           BANGLADESH                     20                1        0     119
Birth       MAL-ED           BANGLADESH                     24                0        0     119
Birth       MAL-ED           BANGLADESH                     24                1        0     119
Birth       MAL-ED           BANGLADESH                     25                0        0     119
Birth       MAL-ED           BANGLADESH                     25                1        0     119
Birth       MAL-ED           BANGLADESH                     27                0        0     119
Birth       MAL-ED           BANGLADESH                     27                1        0     119
Birth       MAL-ED           INDIA                          0                 0        0      23
Birth       MAL-ED           INDIA                          0                 1        0      23
Birth       MAL-ED           INDIA                          1                 0        0      23
Birth       MAL-ED           INDIA                          1                 1        0      23
Birth       MAL-ED           INDIA                          2                 0        1      23
Birth       MAL-ED           INDIA                          2                 1        0      23
Birth       MAL-ED           INDIA                          3                 0        6      23
Birth       MAL-ED           INDIA                          3                 1        0      23
Birth       MAL-ED           INDIA                          4                 0        2      23
Birth       MAL-ED           INDIA                          4                 1        0      23
Birth       MAL-ED           INDIA                          5                 0        4      23
Birth       MAL-ED           INDIA                          5                 1        0      23
Birth       MAL-ED           INDIA                          6                 0        0      23
Birth       MAL-ED           INDIA                          6                 1        0      23
Birth       MAL-ED           INDIA                          7                 0        0      23
Birth       MAL-ED           INDIA                          7                 1        0      23
Birth       MAL-ED           INDIA                          8                 0        3      23
Birth       MAL-ED           INDIA                          8                 1        0      23
Birth       MAL-ED           INDIA                          9                 0        5      23
Birth       MAL-ED           INDIA                          9                 1        0      23
Birth       MAL-ED           INDIA                          10                0        0      23
Birth       MAL-ED           INDIA                          10                1        0      23
Birth       MAL-ED           INDIA                          11                0        1      23
Birth       MAL-ED           INDIA                          11                1        0      23
Birth       MAL-ED           INDIA                          12                0        1      23
Birth       MAL-ED           INDIA                          12                1        0      23
Birth       MAL-ED           INDIA                          13                0        0      23
Birth       MAL-ED           INDIA                          13                1        0      23
Birth       MAL-ED           INDIA                          14                0        0      23
Birth       MAL-ED           INDIA                          14                1        0      23
Birth       MAL-ED           INDIA                          15                0        0      23
Birth       MAL-ED           INDIA                          15                1        0      23
Birth       MAL-ED           INDIA                          16                0        0      23
Birth       MAL-ED           INDIA                          16                1        0      23
Birth       MAL-ED           INDIA                          17                0        0      23
Birth       MAL-ED           INDIA                          17                1        0      23
Birth       MAL-ED           INDIA                          18                0        0      23
Birth       MAL-ED           INDIA                          18                1        0      23
Birth       MAL-ED           INDIA                          19                0        0      23
Birth       MAL-ED           INDIA                          19                1        0      23
Birth       MAL-ED           INDIA                          20                0        0      23
Birth       MAL-ED           INDIA                          20                1        0      23
Birth       MAL-ED           INDIA                          24                0        0      23
Birth       MAL-ED           INDIA                          24                1        0      23
Birth       MAL-ED           INDIA                          25                0        0      23
Birth       MAL-ED           INDIA                          25                1        0      23
Birth       MAL-ED           INDIA                          27                0        0      23
Birth       MAL-ED           INDIA                          27                1        0      23
Birth       MAL-ED           NEPAL                          0                 0        0       9
Birth       MAL-ED           NEPAL                          0                 1        0       9
Birth       MAL-ED           NEPAL                          1                 0        0       9
Birth       MAL-ED           NEPAL                          1                 1        0       9
Birth       MAL-ED           NEPAL                          2                 0        1       9
Birth       MAL-ED           NEPAL                          2                 1        0       9
Birth       MAL-ED           NEPAL                          3                 0        0       9
Birth       MAL-ED           NEPAL                          3                 1        0       9
Birth       MAL-ED           NEPAL                          4                 0        0       9
Birth       MAL-ED           NEPAL                          4                 1        0       9
Birth       MAL-ED           NEPAL                          5                 0        2       9
Birth       MAL-ED           NEPAL                          5                 1        0       9
Birth       MAL-ED           NEPAL                          6                 0        0       9
Birth       MAL-ED           NEPAL                          6                 1        0       9
Birth       MAL-ED           NEPAL                          7                 0        3       9
Birth       MAL-ED           NEPAL                          7                 1        0       9
Birth       MAL-ED           NEPAL                          8                 0        0       9
Birth       MAL-ED           NEPAL                          8                 1        0       9
Birth       MAL-ED           NEPAL                          9                 0        0       9
Birth       MAL-ED           NEPAL                          9                 1        0       9
Birth       MAL-ED           NEPAL                          10                0        2       9
Birth       MAL-ED           NEPAL                          10                1        0       9
Birth       MAL-ED           NEPAL                          11                0        0       9
Birth       MAL-ED           NEPAL                          11                1        0       9
Birth       MAL-ED           NEPAL                          12                0        1       9
Birth       MAL-ED           NEPAL                          12                1        0       9
Birth       MAL-ED           NEPAL                          13                0        0       9
Birth       MAL-ED           NEPAL                          13                1        0       9
Birth       MAL-ED           NEPAL                          14                0        0       9
Birth       MAL-ED           NEPAL                          14                1        0       9
Birth       MAL-ED           NEPAL                          15                0        0       9
Birth       MAL-ED           NEPAL                          15                1        0       9
Birth       MAL-ED           NEPAL                          16                0        0       9
Birth       MAL-ED           NEPAL                          16                1        0       9
Birth       MAL-ED           NEPAL                          17                0        0       9
Birth       MAL-ED           NEPAL                          17                1        0       9
Birth       MAL-ED           NEPAL                          18                0        0       9
Birth       MAL-ED           NEPAL                          18                1        0       9
Birth       MAL-ED           NEPAL                          19                0        0       9
Birth       MAL-ED           NEPAL                          19                1        0       9
Birth       MAL-ED           NEPAL                          20                0        0       9
Birth       MAL-ED           NEPAL                          20                1        0       9
Birth       MAL-ED           NEPAL                          24                0        0       9
Birth       MAL-ED           NEPAL                          24                1        0       9
Birth       MAL-ED           NEPAL                          25                0        0       9
Birth       MAL-ED           NEPAL                          25                1        0       9
Birth       MAL-ED           NEPAL                          27                0        0       9
Birth       MAL-ED           NEPAL                          27                1        0       9
Birth       MAL-ED           PERU                           0                 0        1     190
Birth       MAL-ED           PERU                           0                 1        0     190
Birth       MAL-ED           PERU                           1                 0        2     190
Birth       MAL-ED           PERU                           1                 1        0     190
Birth       MAL-ED           PERU                           2                 0        0     190
Birth       MAL-ED           PERU                           2                 1        0     190
Birth       MAL-ED           PERU                           3                 0        7     190
Birth       MAL-ED           PERU                           3                 1        0     190
Birth       MAL-ED           PERU                           4                 0        3     190
Birth       MAL-ED           PERU                           4                 1        0     190
Birth       MAL-ED           PERU                           5                 0        6     190
Birth       MAL-ED           PERU                           5                 1        0     190
Birth       MAL-ED           PERU                           6                 0       21     190
Birth       MAL-ED           PERU                           6                 1        0     190
Birth       MAL-ED           PERU                           7                 0       16     190
Birth       MAL-ED           PERU                           7                 1        0     190
Birth       MAL-ED           PERU                           8                 0       20     190
Birth       MAL-ED           PERU                           8                 1        0     190
Birth       MAL-ED           PERU                           9                 0       20     190
Birth       MAL-ED           PERU                           9                 1        0     190
Birth       MAL-ED           PERU                           10                0       10     190
Birth       MAL-ED           PERU                           10                1        0     190
Birth       MAL-ED           PERU                           11                0       71     190
Birth       MAL-ED           PERU                           11                1        0     190
Birth       MAL-ED           PERU                           12                0        1     190
Birth       MAL-ED           PERU                           12                1        0     190
Birth       MAL-ED           PERU                           13                0        3     190
Birth       MAL-ED           PERU                           13                1        0     190
Birth       MAL-ED           PERU                           14                0        3     190
Birth       MAL-ED           PERU                           14                1        0     190
Birth       MAL-ED           PERU                           15                0        1     190
Birth       MAL-ED           PERU                           15                1        0     190
Birth       MAL-ED           PERU                           16                0        1     190
Birth       MAL-ED           PERU                           16                1        0     190
Birth       MAL-ED           PERU                           17                0        1     190
Birth       MAL-ED           PERU                           17                1        0     190
Birth       MAL-ED           PERU                           18                0        1     190
Birth       MAL-ED           PERU                           18                1        0     190
Birth       MAL-ED           PERU                           19                0        0     190
Birth       MAL-ED           PERU                           19                1        0     190
Birth       MAL-ED           PERU                           20                0        2     190
Birth       MAL-ED           PERU                           20                1        0     190
Birth       MAL-ED           PERU                           24                0        0     190
Birth       MAL-ED           PERU                           24                1        0     190
Birth       MAL-ED           PERU                           25                0        0     190
Birth       MAL-ED           PERU                           25                1        0     190
Birth       MAL-ED           PERU                           27                0        0     190
Birth       MAL-ED           PERU                           27                1        0     190
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
Birth       MAL-ED           SOUTH AFRICA                   11                0        8      33
Birth       MAL-ED           SOUTH AFRICA                   11                1        0      33
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
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0        9      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 0        5      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 0        6      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 0        6      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 0        4      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 0        4      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 0       55      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 0        1      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 0        2      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                0        1      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                0        2      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                0        1      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                0        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                1        0      96
Birth       NIH-Crypto       BANGLADESH                     0                 0      147     707
Birth       NIH-Crypto       BANGLADESH                     0                 1       17     707
Birth       NIH-Crypto       BANGLADESH                     1                 0       18     707
Birth       NIH-Crypto       BANGLADESH                     1                 1        1     707
Birth       NIH-Crypto       BANGLADESH                     2                 0       12     707
Birth       NIH-Crypto       BANGLADESH                     2                 1        1     707
Birth       NIH-Crypto       BANGLADESH                     3                 0       32     707
Birth       NIH-Crypto       BANGLADESH                     3                 1        1     707
Birth       NIH-Crypto       BANGLADESH                     4                 0       34     707
Birth       NIH-Crypto       BANGLADESH                     4                 1        4     707
Birth       NIH-Crypto       BANGLADESH                     5                 0       75     707
Birth       NIH-Crypto       BANGLADESH                     5                 1        5     707
Birth       NIH-Crypto       BANGLADESH                     6                 0       30     707
Birth       NIH-Crypto       BANGLADESH                     6                 1        0     707
Birth       NIH-Crypto       BANGLADESH                     7                 0       50     707
Birth       NIH-Crypto       BANGLADESH                     7                 1        3     707
Birth       NIH-Crypto       BANGLADESH                     8                 0       81     707
Birth       NIH-Crypto       BANGLADESH                     8                 1        4     707
Birth       NIH-Crypto       BANGLADESH                     9                 0       79     707
Birth       NIH-Crypto       BANGLADESH                     9                 1        1     707
Birth       NIH-Crypto       BANGLADESH                     10                0       43     707
Birth       NIH-Crypto       BANGLADESH                     10                1        5     707
Birth       NIH-Crypto       BANGLADESH                     11                0        0     707
Birth       NIH-Crypto       BANGLADESH                     11                1        0     707
Birth       NIH-Crypto       BANGLADESH                     12                0       30     707
Birth       NIH-Crypto       BANGLADESH                     12                1        3     707
Birth       NIH-Crypto       BANGLADESH                     13                0        0     707
Birth       NIH-Crypto       BANGLADESH                     13                1        0     707
Birth       NIH-Crypto       BANGLADESH                     14                0        8     707
Birth       NIH-Crypto       BANGLADESH                     14                1        0     707
Birth       NIH-Crypto       BANGLADESH                     15                0       15     707
Birth       NIH-Crypto       BANGLADESH                     15                1        1     707
Birth       NIH-Crypto       BANGLADESH                     16                0        0     707
Birth       NIH-Crypto       BANGLADESH                     16                1        0     707
Birth       NIH-Crypto       BANGLADESH                     17                0        6     707
Birth       NIH-Crypto       BANGLADESH                     17                1        1     707
Birth       NIH-Crypto       BANGLADESH                     18                0        0     707
Birth       NIH-Crypto       BANGLADESH                     18                1        0     707
Birth       NIH-Crypto       BANGLADESH                     19                0        0     707
Birth       NIH-Crypto       BANGLADESH                     19                1        0     707
Birth       NIH-Crypto       BANGLADESH                     20                0        0     707
Birth       NIH-Crypto       BANGLADESH                     20                1        0     707
Birth       NIH-Crypto       BANGLADESH                     24                0        0     707
Birth       NIH-Crypto       BANGLADESH                     24                1        0     707
Birth       NIH-Crypto       BANGLADESH                     25                0        0     707
Birth       NIH-Crypto       BANGLADESH                     25                1        0     707
Birth       NIH-Crypto       BANGLADESH                     27                0        0     707
Birth       NIH-Crypto       BANGLADESH                     27                1        0     707
Birth       PROBIT           BELARUS                        0                 0        0   13350
Birth       PROBIT           BELARUS                        0                 1        0   13350
Birth       PROBIT           BELARUS                        1                 0        0   13350
Birth       PROBIT           BELARUS                        1                 1        0   13350
Birth       PROBIT           BELARUS                        2                 0        0   13350
Birth       PROBIT           BELARUS                        2                 1        0   13350
Birth       PROBIT           BELARUS                        3                 0        0   13350
Birth       PROBIT           BELARUS                        3                 1        0   13350
Birth       PROBIT           BELARUS                        4                 0        0   13350
Birth       PROBIT           BELARUS                        4                 1        0   13350
Birth       PROBIT           BELARUS                        5                 0        0   13350
Birth       PROBIT           BELARUS                        5                 1        0   13350
Birth       PROBIT           BELARUS                        6                 0        0   13350
Birth       PROBIT           BELARUS                        6                 1        0   13350
Birth       PROBIT           BELARUS                        7                 0        0   13350
Birth       PROBIT           BELARUS                        7                 1        0   13350
Birth       PROBIT           BELARUS                        8                 0       23   13350
Birth       PROBIT           BELARUS                        8                 1        0   13350
Birth       PROBIT           BELARUS                        9                 0        0   13350
Birth       PROBIT           BELARUS                        9                 1        0   13350
Birth       PROBIT           BELARUS                        10                0      282   13350
Birth       PROBIT           BELARUS                        10                1       13   13350
Birth       PROBIT           BELARUS                        11                0        0   13350
Birth       PROBIT           BELARUS                        11                1        0   13350
Birth       PROBIT           BELARUS                        12                0     4647   13350
Birth       PROBIT           BELARUS                        12                1      327   13350
Birth       PROBIT           BELARUS                        13                0     5599   13350
Birth       PROBIT           BELARUS                        13                1      412   13350
Birth       PROBIT           BELARUS                        14                0      312   13350
Birth       PROBIT           BELARUS                        14                1       20   13350
Birth       PROBIT           BELARUS                        15                0        0   13350
Birth       PROBIT           BELARUS                        15                1        0   13350
Birth       PROBIT           BELARUS                        16                0     1609   13350
Birth       PROBIT           BELARUS                        16                1      106   13350
Birth       PROBIT           BELARUS                        17                0        0   13350
Birth       PROBIT           BELARUS                        17                1        0   13350
Birth       PROBIT           BELARUS                        18                0        0   13350
Birth       PROBIT           BELARUS                        18                1        0   13350
Birth       PROBIT           BELARUS                        19                0        0   13350
Birth       PROBIT           BELARUS                        19                1        0   13350
Birth       PROBIT           BELARUS                        20                0        0   13350
Birth       PROBIT           BELARUS                        20                1        0   13350
Birth       PROBIT           BELARUS                        24                0        0   13350
Birth       PROBIT           BELARUS                        24                1        0   13350
Birth       PROBIT           BELARUS                        25                0        0   13350
Birth       PROBIT           BELARUS                        25                1        0   13350
Birth       PROBIT           BELARUS                        27                0        0   13350
Birth       PROBIT           BELARUS                        27                1        0   13350
Birth       PROVIDE          BANGLADESH                     0                 0      160     532
Birth       PROVIDE          BANGLADESH                     0                 1        2     532
Birth       PROVIDE          BANGLADESH                     1                 0        9     532
Birth       PROVIDE          BANGLADESH                     1                 1        0     532
Birth       PROVIDE          BANGLADESH                     2                 0       14     532
Birth       PROVIDE          BANGLADESH                     2                 1        0     532
Birth       PROVIDE          BANGLADESH                     3                 0       22     532
Birth       PROVIDE          BANGLADESH                     3                 1        2     532
Birth       PROVIDE          BANGLADESH                     4                 0       40     532
Birth       PROVIDE          BANGLADESH                     4                 1        0     532
Birth       PROVIDE          BANGLADESH                     5                 0       66     532
Birth       PROVIDE          BANGLADESH                     5                 1        2     532
Birth       PROVIDE          BANGLADESH                     6                 0       22     532
Birth       PROVIDE          BANGLADESH                     6                 1        0     532
Birth       PROVIDE          BANGLADESH                     7                 0       31     532
Birth       PROVIDE          BANGLADESH                     7                 1        1     532
Birth       PROVIDE          BANGLADESH                     8                 0       38     532
Birth       PROVIDE          BANGLADESH                     8                 1        3     532
Birth       PROVIDE          BANGLADESH                     9                 0       44     532
Birth       PROVIDE          BANGLADESH                     9                 1        1     532
Birth       PROVIDE          BANGLADESH                     10                0       26     532
Birth       PROVIDE          BANGLADESH                     10                1        0     532
Birth       PROVIDE          BANGLADESH                     11                0       19     532
Birth       PROVIDE          BANGLADESH                     11                1        1     532
Birth       PROVIDE          BANGLADESH                     12                0        2     532
Birth       PROVIDE          BANGLADESH                     12                1        0     532
Birth       PROVIDE          BANGLADESH                     13                0        0     532
Birth       PROVIDE          BANGLADESH                     13                1        0     532
Birth       PROVIDE          BANGLADESH                     14                0       17     532
Birth       PROVIDE          BANGLADESH                     14                1        0     532
Birth       PROVIDE          BANGLADESH                     15                0        5     532
Birth       PROVIDE          BANGLADESH                     15                1        1     532
Birth       PROVIDE          BANGLADESH                     16                0        4     532
Birth       PROVIDE          BANGLADESH                     16                1        0     532
Birth       PROVIDE          BANGLADESH                     17                0        0     532
Birth       PROVIDE          BANGLADESH                     17                1        0     532
Birth       PROVIDE          BANGLADESH                     18                0        0     532
Birth       PROVIDE          BANGLADESH                     18                1        0     532
Birth       PROVIDE          BANGLADESH                     19                0        0     532
Birth       PROVIDE          BANGLADESH                     19                1        0     532
Birth       PROVIDE          BANGLADESH                     20                0        0     532
Birth       PROVIDE          BANGLADESH                     20                1        0     532
Birth       PROVIDE          BANGLADESH                     24                0        0     532
Birth       PROVIDE          BANGLADESH                     24                1        0     532
Birth       PROVIDE          BANGLADESH                     25                0        0     532
Birth       PROVIDE          BANGLADESH                     25                1        0     532
Birth       PROVIDE          BANGLADESH                     27                0        0     532
Birth       PROVIDE          BANGLADESH                     27                1        0     532
Birth       SAS-CompFeed     INDIA                          0                 0      139    1101
Birth       SAS-CompFeed     INDIA                          0                 1        6    1101
Birth       SAS-CompFeed     INDIA                          1                 0        0    1101
Birth       SAS-CompFeed     INDIA                          1                 1        0    1101
Birth       SAS-CompFeed     INDIA                          2                 0        5    1101
Birth       SAS-CompFeed     INDIA                          2                 1        0    1101
Birth       SAS-CompFeed     INDIA                          3                 0       11    1101
Birth       SAS-CompFeed     INDIA                          3                 1        0    1101
Birth       SAS-CompFeed     INDIA                          4                 0       19    1101
Birth       SAS-CompFeed     INDIA                          4                 1        1    1101
Birth       SAS-CompFeed     INDIA                          5                 0       63    1101
Birth       SAS-CompFeed     INDIA                          5                 1        4    1101
Birth       SAS-CompFeed     INDIA                          6                 0       18    1101
Birth       SAS-CompFeed     INDIA                          6                 1        1    1101
Birth       SAS-CompFeed     INDIA                          7                 0       82    1101
Birth       SAS-CompFeed     INDIA                          7                 1        3    1101
Birth       SAS-CompFeed     INDIA                          8                 0      124    1101
Birth       SAS-CompFeed     INDIA                          8                 1        0    1101
Birth       SAS-CompFeed     INDIA                          9                 0       69    1101
Birth       SAS-CompFeed     INDIA                          9                 1        1    1101
Birth       SAS-CompFeed     INDIA                          10                0      277    1101
Birth       SAS-CompFeed     INDIA                          10                1        8    1101
Birth       SAS-CompFeed     INDIA                          11                0       32    1101
Birth       SAS-CompFeed     INDIA                          11                1        0    1101
Birth       SAS-CompFeed     INDIA                          12                0      162    1101
Birth       SAS-CompFeed     INDIA                          12                1        4    1101
Birth       SAS-CompFeed     INDIA                          13                0        4    1101
Birth       SAS-CompFeed     INDIA                          13                1        0    1101
Birth       SAS-CompFeed     INDIA                          14                0        8    1101
Birth       SAS-CompFeed     INDIA                          14                1        0    1101
Birth       SAS-CompFeed     INDIA                          15                0       37    1101
Birth       SAS-CompFeed     INDIA                          15                1        1    1101
Birth       SAS-CompFeed     INDIA                          16                0        6    1101
Birth       SAS-CompFeed     INDIA                          16                1        0    1101
Birth       SAS-CompFeed     INDIA                          17                0       12    1101
Birth       SAS-CompFeed     INDIA                          17                1        0    1101
Birth       SAS-CompFeed     INDIA                          18                0        3    1101
Birth       SAS-CompFeed     INDIA                          18                1        0    1101
Birth       SAS-CompFeed     INDIA                          19                0        1    1101
Birth       SAS-CompFeed     INDIA                          19                1        0    1101
Birth       SAS-CompFeed     INDIA                          20                0        0    1101
Birth       SAS-CompFeed     INDIA                          20                1        0    1101
Birth       SAS-CompFeed     INDIA                          24                0        0    1101
Birth       SAS-CompFeed     INDIA                          24                1        0    1101
Birth       SAS-CompFeed     INDIA                          25                0        0    1101
Birth       SAS-CompFeed     INDIA                          25                1        0    1101
Birth       SAS-CompFeed     INDIA                          27                0        0    1101
Birth       SAS-CompFeed     INDIA                          27                1        0    1101
Birth       ZVITAMBO         ZIMBABWE                       0                 0       50   12573
Birth       ZVITAMBO         ZIMBABWE                       0                 1        5   12573
Birth       ZVITAMBO         ZIMBABWE                       1                 0        1   12573
Birth       ZVITAMBO         ZIMBABWE                       1                 1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       2                 0        3   12573
Birth       ZVITAMBO         ZIMBABWE                       2                 1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       3                 0       11   12573
Birth       ZVITAMBO         ZIMBABWE                       3                 1        3   12573
Birth       ZVITAMBO         ZIMBABWE                       4                 0       22   12573
Birth       ZVITAMBO         ZIMBABWE                       4                 1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       5                 0       26   12573
Birth       ZVITAMBO         ZIMBABWE                       5                 1        2   12573
Birth       ZVITAMBO         ZIMBABWE                       6                 0       38   12573
Birth       ZVITAMBO         ZIMBABWE                       6                 1        1   12573
Birth       ZVITAMBO         ZIMBABWE                       7                 0      676   12573
Birth       ZVITAMBO         ZIMBABWE                       7                 1       40   12573
Birth       ZVITAMBO         ZIMBABWE                       8                 0       92   12573
Birth       ZVITAMBO         ZIMBABWE                       8                 1        5   12573
Birth       ZVITAMBO         ZIMBABWE                       9                 0      776   12573
Birth       ZVITAMBO         ZIMBABWE                       9                 1       49   12573
Birth       ZVITAMBO         ZIMBABWE                       10                0      279   12573
Birth       ZVITAMBO         ZIMBABWE                       10                1       12   12573
Birth       ZVITAMBO         ZIMBABWE                       11                0     8967   12573
Birth       ZVITAMBO         ZIMBABWE                       11                1      601   12573
Birth       ZVITAMBO         ZIMBABWE                       12                0       52   12573
Birth       ZVITAMBO         ZIMBABWE                       12                1        1   12573
Birth       ZVITAMBO         ZIMBABWE                       13                0      816   12573
Birth       ZVITAMBO         ZIMBABWE                       13                1       45   12573
Birth       ZVITAMBO         ZIMBABWE                       14                0        0   12573
Birth       ZVITAMBO         ZIMBABWE                       14                1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       15                0        0   12573
Birth       ZVITAMBO         ZIMBABWE                       15                1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       16                0        0   12573
Birth       ZVITAMBO         ZIMBABWE                       16                1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       17                0        0   12573
Birth       ZVITAMBO         ZIMBABWE                       17                1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       18                0        0   12573
Birth       ZVITAMBO         ZIMBABWE                       18                1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       19                0        0   12573
Birth       ZVITAMBO         ZIMBABWE                       19                1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       20                0        0   12573
Birth       ZVITAMBO         ZIMBABWE                       20                1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       24                0        0   12573
Birth       ZVITAMBO         ZIMBABWE                       24                1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       25                0        0   12573
Birth       ZVITAMBO         ZIMBABWE                       25                1        0   12573
Birth       ZVITAMBO         ZIMBABWE                       27                0        0   12573
Birth       ZVITAMBO         ZIMBABWE                       27                1        0   12573
6 months    COHORTS          GUATEMALA                      0                 0      405     905
6 months    COHORTS          GUATEMALA                      0                 1        1     905
6 months    COHORTS          GUATEMALA                      1                 0       44     905
6 months    COHORTS          GUATEMALA                      1                 1        1     905
6 months    COHORTS          GUATEMALA                      2                 0      170     905
6 months    COHORTS          GUATEMALA                      2                 1        1     905
6 months    COHORTS          GUATEMALA                      3                 0      118     905
6 months    COHORTS          GUATEMALA                      3                 1        0     905
6 months    COHORTS          GUATEMALA                      4                 0       57     905
6 months    COHORTS          GUATEMALA                      4                 1        2     905
6 months    COHORTS          GUATEMALA                      5                 0       16     905
6 months    COHORTS          GUATEMALA                      5                 1        0     905
6 months    COHORTS          GUATEMALA                      6                 0       79     905
6 months    COHORTS          GUATEMALA                      6                 1        0     905
6 months    COHORTS          GUATEMALA                      7                 0        3     905
6 months    COHORTS          GUATEMALA                      7                 1        0     905
6 months    COHORTS          GUATEMALA                      8                 0        1     905
6 months    COHORTS          GUATEMALA                      8                 1        0     905
6 months    COHORTS          GUATEMALA                      9                 0        0     905
6 months    COHORTS          GUATEMALA                      9                 1        0     905
6 months    COHORTS          GUATEMALA                      10                0        1     905
6 months    COHORTS          GUATEMALA                      10                1        0     905
6 months    COHORTS          GUATEMALA                      11                0        0     905
6 months    COHORTS          GUATEMALA                      11                1        0     905
6 months    COHORTS          GUATEMALA                      12                0        5     905
6 months    COHORTS          GUATEMALA                      12                1        0     905
6 months    COHORTS          GUATEMALA                      13                0        0     905
6 months    COHORTS          GUATEMALA                      13                1        0     905
6 months    COHORTS          GUATEMALA                      14                0        1     905
6 months    COHORTS          GUATEMALA                      14                1        0     905
6 months    COHORTS          GUATEMALA                      15                0        0     905
6 months    COHORTS          GUATEMALA                      15                1        0     905
6 months    COHORTS          GUATEMALA                      16                0        0     905
6 months    COHORTS          GUATEMALA                      16                1        0     905
6 months    COHORTS          GUATEMALA                      17                0        0     905
6 months    COHORTS          GUATEMALA                      17                1        0     905
6 months    COHORTS          GUATEMALA                      18                0        0     905
6 months    COHORTS          GUATEMALA                      18                1        0     905
6 months    COHORTS          GUATEMALA                      19                0        0     905
6 months    COHORTS          GUATEMALA                      19                1        0     905
6 months    COHORTS          GUATEMALA                      20                0        0     905
6 months    COHORTS          GUATEMALA                      20                1        0     905
6 months    COHORTS          GUATEMALA                      24                0        0     905
6 months    COHORTS          GUATEMALA                      24                1        0     905
6 months    COHORTS          GUATEMALA                      25                0        0     905
6 months    COHORTS          GUATEMALA                      25                1        0     905
6 months    COHORTS          GUATEMALA                      27                0        0     905
6 months    COHORTS          GUATEMALA                      27                1        0     905
6 months    COHORTS          INDIA                          0                 0      113    1385
6 months    COHORTS          INDIA                          0                 1        6    1385
6 months    COHORTS          INDIA                          1                 0        0    1385
6 months    COHORTS          INDIA                          1                 1        0    1385
6 months    COHORTS          INDIA                          2                 0        0    1385
6 months    COHORTS          INDIA                          2                 1        0    1385
6 months    COHORTS          INDIA                          3                 0      124    1385
6 months    COHORTS          INDIA                          3                 1        4    1385
6 months    COHORTS          INDIA                          4                 0        0    1385
6 months    COHORTS          INDIA                          4                 1        0    1385
6 months    COHORTS          INDIA                          5                 0        0    1385
6 months    COHORTS          INDIA                          5                 1        0    1385
6 months    COHORTS          INDIA                          6                 0        0    1385
6 months    COHORTS          INDIA                          6                 1        0    1385
6 months    COHORTS          INDIA                          7                 0        0    1385
6 months    COHORTS          INDIA                          7                 1        0    1385
6 months    COHORTS          INDIA                          8                 0      198    1385
6 months    COHORTS          INDIA                          8                 1        5    1385
6 months    COHORTS          INDIA                          9                 0        0    1385
6 months    COHORTS          INDIA                          9                 1        0    1385
6 months    COHORTS          INDIA                          10                0        0    1385
6 months    COHORTS          INDIA                          10                1        0    1385
6 months    COHORTS          INDIA                          11                0        0    1385
6 months    COHORTS          INDIA                          11                1        0    1385
6 months    COHORTS          INDIA                          12                0      378    1385
6 months    COHORTS          INDIA                          12                1       13    1385
6 months    COHORTS          INDIA                          13                0        0    1385
6 months    COHORTS          INDIA                          13                1        0    1385
6 months    COHORTS          INDIA                          14                0      149    1385
6 months    COHORTS          INDIA                          14                1        3    1385
6 months    COHORTS          INDIA                          15                0      263    1385
6 months    COHORTS          INDIA                          15                1       10    1385
6 months    COHORTS          INDIA                          16                0        0    1385
6 months    COHORTS          INDIA                          16                1        0    1385
6 months    COHORTS          INDIA                          17                0      118    1385
6 months    COHORTS          INDIA                          17                1        1    1385
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
6 months    COHORTS          PHILIPPINES                    0                 0       53    2562
6 months    COHORTS          PHILIPPINES                    0                 1        2    2562
6 months    COHORTS          PHILIPPINES                    1                 0       31    2562
6 months    COHORTS          PHILIPPINES                    1                 1        1    2562
6 months    COHORTS          PHILIPPINES                    2                 0       87    2562
6 months    COHORTS          PHILIPPINES                    2                 1        0    2562
6 months    COHORTS          PHILIPPINES                    3                 0      153    2562
6 months    COHORTS          PHILIPPINES                    3                 1        2    2562
6 months    COHORTS          PHILIPPINES                    4                 0      234    2562
6 months    COHORTS          PHILIPPINES                    4                 1        2    2562
6 months    COHORTS          PHILIPPINES                    5                 0      179    2562
6 months    COHORTS          PHILIPPINES                    5                 1        0    2562
6 months    COHORTS          PHILIPPINES                    6                 0      582    2562
6 months    COHORTS          PHILIPPINES                    6                 1       13    2562
6 months    COHORTS          PHILIPPINES                    7                 0      130    2562
6 months    COHORTS          PHILIPPINES                    7                 1        2    2562
6 months    COHORTS          PHILIPPINES                    8                 0      198    2562
6 months    COHORTS          PHILIPPINES                    8                 1        1    2562
6 months    COHORTS          PHILIPPINES                    9                 0      176    2562
6 months    COHORTS          PHILIPPINES                    9                 1        0    2562
6 months    COHORTS          PHILIPPINES                    10                0      284    2562
6 months    COHORTS          PHILIPPINES                    10                1        7    2562
6 months    COHORTS          PHILIPPINES                    11                0       57    2562
6 months    COHORTS          PHILIPPINES                    11                1        0    2562
6 months    COHORTS          PHILIPPINES                    12                0      148    2562
6 months    COHORTS          PHILIPPINES                    12                1        1    2562
6 months    COHORTS          PHILIPPINES                    13                0       57    2562
6 months    COHORTS          PHILIPPINES                    13                1        1    2562
6 months    COHORTS          PHILIPPINES                    14                0      120    2562
6 months    COHORTS          PHILIPPINES                    14                1        0    2562
6 months    COHORTS          PHILIPPINES                    15                0       32    2562
6 months    COHORTS          PHILIPPINES                    15                1        1    2562
6 months    COHORTS          PHILIPPINES                    16                0        4    2562
6 months    COHORTS          PHILIPPINES                    16                1        0    2562
6 months    COHORTS          PHILIPPINES                    17                0        2    2562
6 months    COHORTS          PHILIPPINES                    17                1        0    2562
6 months    COHORTS          PHILIPPINES                    18                0        2    2562
6 months    COHORTS          PHILIPPINES                    18                1        0    2562
6 months    COHORTS          PHILIPPINES                    19                0        0    2562
6 months    COHORTS          PHILIPPINES                    19                1        0    2562
6 months    COHORTS          PHILIPPINES                    20                0        0    2562
6 months    COHORTS          PHILIPPINES                    20                1        0    2562
6 months    COHORTS          PHILIPPINES                    24                0        0    2562
6 months    COHORTS          PHILIPPINES                    24                1        0    2562
6 months    COHORTS          PHILIPPINES                    25                0        0    2562
6 months    COHORTS          PHILIPPINES                    25                1        0    2562
6 months    COHORTS          PHILIPPINES                    27                0        0    2562
6 months    COHORTS          PHILIPPINES                    27                1        0    2562
6 months    GMS-Nepal        NEPAL                          0                 0      239     563
6 months    GMS-Nepal        NEPAL                          0                 1        4     563
6 months    GMS-Nepal        NEPAL                          1                 0        0     563
6 months    GMS-Nepal        NEPAL                          1                 1        0     563
6 months    GMS-Nepal        NEPAL                          2                 0        0     563
6 months    GMS-Nepal        NEPAL                          2                 1        0     563
6 months    GMS-Nepal        NEPAL                          3                 0        0     563
6 months    GMS-Nepal        NEPAL                          3                 1        0     563
6 months    GMS-Nepal        NEPAL                          4                 0        0     563
6 months    GMS-Nepal        NEPAL                          4                 1        0     563
6 months    GMS-Nepal        NEPAL                          5                 0       90     563
6 months    GMS-Nepal        NEPAL                          5                 1        1     563
6 months    GMS-Nepal        NEPAL                          6                 0        0     563
6 months    GMS-Nepal        NEPAL                          6                 1        0     563
6 months    GMS-Nepal        NEPAL                          7                 0        0     563
6 months    GMS-Nepal        NEPAL                          7                 1        0     563
6 months    GMS-Nepal        NEPAL                          8                 0       92     563
6 months    GMS-Nepal        NEPAL                          8                 1        0     563
6 months    GMS-Nepal        NEPAL                          9                 0        0     563
6 months    GMS-Nepal        NEPAL                          9                 1        0     563
6 months    GMS-Nepal        NEPAL                          10                0      103     563
6 months    GMS-Nepal        NEPAL                          10                1        2     563
6 months    GMS-Nepal        NEPAL                          11                0        0     563
6 months    GMS-Nepal        NEPAL                          11                1        0     563
6 months    GMS-Nepal        NEPAL                          12                0       32     563
6 months    GMS-Nepal        NEPAL                          12                1        0     563
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
6 months    LCNI-5           MALAWI                         0                 0      290     812
6 months    LCNI-5           MALAWI                         0                 1        0     812
6 months    LCNI-5           MALAWI                         1                 0       11     812
6 months    LCNI-5           MALAWI                         1                 1        0     812
6 months    LCNI-5           MALAWI                         2                 0       32     812
6 months    LCNI-5           MALAWI                         2                 1        0     812
6 months    LCNI-5           MALAWI                         3                 0       39     812
6 months    LCNI-5           MALAWI                         3                 1        0     812
6 months    LCNI-5           MALAWI                         4                 0       59     812
6 months    LCNI-5           MALAWI                         4                 1        0     812
6 months    LCNI-5           MALAWI                         5                 0       61     812
6 months    LCNI-5           MALAWI                         5                 1        0     812
6 months    LCNI-5           MALAWI                         6                 0       69     812
6 months    LCNI-5           MALAWI                         6                 1        0     812
6 months    LCNI-5           MALAWI                         7                 0       68     812
6 months    LCNI-5           MALAWI                         7                 1        0     812
6 months    LCNI-5           MALAWI                         8                 0       91     812
6 months    LCNI-5           MALAWI                         8                 1        0     812
6 months    LCNI-5           MALAWI                         9                 0       12     812
6 months    LCNI-5           MALAWI                         9                 1        0     812
6 months    LCNI-5           MALAWI                         10                0       16     812
6 months    LCNI-5           MALAWI                         10                1        0     812
6 months    LCNI-5           MALAWI                         11                0        7     812
6 months    LCNI-5           MALAWI                         11                1        0     812
6 months    LCNI-5           MALAWI                         12                0       52     812
6 months    LCNI-5           MALAWI                         12                1        0     812
6 months    LCNI-5           MALAWI                         13                0        1     812
6 months    LCNI-5           MALAWI                         13                1        0     812
6 months    LCNI-5           MALAWI                         14                0        3     812
6 months    LCNI-5           MALAWI                         14                1        0     812
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
6 months    MAL-ED           BANGLADESH                     2                 0       12     132
6 months    MAL-ED           BANGLADESH                     2                 1        0     132
6 months    MAL-ED           BANGLADESH                     3                 0       11     132
6 months    MAL-ED           BANGLADESH                     3                 1        0     132
6 months    MAL-ED           BANGLADESH                     4                 0        7     132
6 months    MAL-ED           BANGLADESH                     4                 1        0     132
6 months    MAL-ED           BANGLADESH                     5                 0       29     132
6 months    MAL-ED           BANGLADESH                     5                 1        0     132
6 months    MAL-ED           BANGLADESH                     6                 0        6     132
6 months    MAL-ED           BANGLADESH                     6                 1        2     132
6 months    MAL-ED           BANGLADESH                     7                 0        9     132
6 months    MAL-ED           BANGLADESH                     7                 1        0     132
6 months    MAL-ED           BANGLADESH                     8                 0       16     132
6 months    MAL-ED           BANGLADESH                     8                 1        0     132
6 months    MAL-ED           BANGLADESH                     9                 0       13     132
6 months    MAL-ED           BANGLADESH                     9                 1        0     132
6 months    MAL-ED           BANGLADESH                     10                0        9     132
6 months    MAL-ED           BANGLADESH                     10                1        0     132
6 months    MAL-ED           BANGLADESH                     11                0        0     132
6 months    MAL-ED           BANGLADESH                     11                1        0     132
6 months    MAL-ED           BANGLADESH                     12                0       10     132
6 months    MAL-ED           BANGLADESH                     12                1        0     132
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
6 months    MAL-ED           INDIA                          2                 0        6     138
6 months    MAL-ED           INDIA                          2                 1        0     138
6 months    MAL-ED           INDIA                          3                 0        9     138
6 months    MAL-ED           INDIA                          3                 1        0     138
6 months    MAL-ED           INDIA                          4                 0        6     138
6 months    MAL-ED           INDIA                          4                 1        0     138
6 months    MAL-ED           INDIA                          5                 0       32     138
6 months    MAL-ED           INDIA                          5                 1        1     138
6 months    MAL-ED           INDIA                          6                 0       10     138
6 months    MAL-ED           INDIA                          6                 1        1     138
6 months    MAL-ED           INDIA                          7                 0       11     138
6 months    MAL-ED           INDIA                          7                 1        0     138
6 months    MAL-ED           INDIA                          8                 0       17     138
6 months    MAL-ED           INDIA                          8                 1        2     138
6 months    MAL-ED           INDIA                          9                 0       25     138
6 months    MAL-ED           INDIA                          9                 1        1     138
6 months    MAL-ED           INDIA                          10                0        6     138
6 months    MAL-ED           INDIA                          10                1        0     138
6 months    MAL-ED           INDIA                          11                0        2     138
6 months    MAL-ED           INDIA                          11                1        0     138
6 months    MAL-ED           INDIA                          12                0        3     138
6 months    MAL-ED           INDIA                          12                1        0     138
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
6 months    MAL-ED           NEPAL                          4                 0       10      95
6 months    MAL-ED           NEPAL                          4                 1        0      95
6 months    MAL-ED           NEPAL                          5                 0        6      95
6 months    MAL-ED           NEPAL                          5                 1        0      95
6 months    MAL-ED           NEPAL                          6                 0        4      95
6 months    MAL-ED           NEPAL                          6                 1        0      95
6 months    MAL-ED           NEPAL                          7                 0        9      95
6 months    MAL-ED           NEPAL                          7                 1        0      95
6 months    MAL-ED           NEPAL                          8                 0       12      95
6 months    MAL-ED           NEPAL                          8                 1        0      95
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
6 months    MAL-ED           PERU                           0                 0        1     224
6 months    MAL-ED           PERU                           0                 1        0     224
6 months    MAL-ED           PERU                           1                 0        1     224
6 months    MAL-ED           PERU                           1                 1        0     224
6 months    MAL-ED           PERU                           2                 0        0     224
6 months    MAL-ED           PERU                           2                 1        0     224
6 months    MAL-ED           PERU                           3                 0        8     224
6 months    MAL-ED           PERU                           3                 1        0     224
6 months    MAL-ED           PERU                           4                 0        4     224
6 months    MAL-ED           PERU                           4                 1        0     224
6 months    MAL-ED           PERU                           5                 0        7     224
6 months    MAL-ED           PERU                           5                 1        0     224
6 months    MAL-ED           PERU                           6                 0       23     224
6 months    MAL-ED           PERU                           6                 1        0     224
6 months    MAL-ED           PERU                           7                 0       16     224
6 months    MAL-ED           PERU                           7                 1        0     224
6 months    MAL-ED           PERU                           8                 0       20     224
6 months    MAL-ED           PERU                           8                 1        0     224
6 months    MAL-ED           PERU                           9                 0       26     224
6 months    MAL-ED           PERU                           9                 1        0     224
6 months    MAL-ED           PERU                           10                0       11     224
6 months    MAL-ED           PERU                           10                1        0     224
6 months    MAL-ED           PERU                           11                0       88     224
6 months    MAL-ED           PERU                           11                1        0     224
6 months    MAL-ED           PERU                           12                0        1     224
6 months    MAL-ED           PERU                           12                1        0     224
6 months    MAL-ED           PERU                           13                0        4     224
6 months    MAL-ED           PERU                           13                1        0     224
6 months    MAL-ED           PERU                           14                0        4     224
6 months    MAL-ED           PERU                           14                1        0     224
6 months    MAL-ED           PERU                           15                0        1     224
6 months    MAL-ED           PERU                           15                1        0     224
6 months    MAL-ED           PERU                           16                0        1     224
6 months    MAL-ED           PERU                           16                1        0     224
6 months    MAL-ED           PERU                           17                0        1     224
6 months    MAL-ED           PERU                           17                1        0     224
6 months    MAL-ED           PERU                           18                0        5     224
6 months    MAL-ED           PERU                           18                1        0     224
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
6 months    MAL-ED           SOUTH AFRICA                   5                 0        1      92
6 months    MAL-ED           SOUTH AFRICA                   5                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   6                 0        6      92
6 months    MAL-ED           SOUTH AFRICA                   6                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   7                 0        6      92
6 months    MAL-ED           SOUTH AFRICA                   7                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   8                 0       10      92
6 months    MAL-ED           SOUTH AFRICA                   8                 1        1      92
6 months    MAL-ED           SOUTH AFRICA                   9                 0        6      92
6 months    MAL-ED           SOUTH AFRICA                   9                 1        0      92
6 months    MAL-ED           SOUTH AFRICA                   10                0        8      92
6 months    MAL-ED           SOUTH AFRICA                   10                1        0      92
6 months    MAL-ED           SOUTH AFRICA                   11                0       16      92
6 months    MAL-ED           SOUTH AFRICA                   11                1        0      92
6 months    MAL-ED           SOUTH AFRICA                   12                0       28      92
6 months    MAL-ED           SOUTH AFRICA                   12                1        0      92
6 months    MAL-ED           SOUTH AFRICA                   13                0        0      92
6 months    MAL-ED           SOUTH AFRICA                   13                1        0      92
6 months    MAL-ED           SOUTH AFRICA                   14                0        2      92
6 months    MAL-ED           SOUTH AFRICA                   14                1        0      92
6 months    MAL-ED           SOUTH AFRICA                   15                0        2      92
6 months    MAL-ED           SOUTH AFRICA                   15                1        0      92
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
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       13     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 0       12     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 0       17     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 0       13     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 0       11     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 0        8     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 0      116     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 0        1     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 0        2     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                0        4     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                0        3     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                0        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                0        1     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                1        0     201
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
6 months    NIH-Crypto       BANGLADESH                     0                 0      163     715
6 months    NIH-Crypto       BANGLADESH                     0                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     1                 0       18     715
6 months    NIH-Crypto       BANGLADESH                     1                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     2                 0       12     715
6 months    NIH-Crypto       BANGLADESH                     2                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     3                 0       30     715
6 months    NIH-Crypto       BANGLADESH                     3                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     4                 0       37     715
6 months    NIH-Crypto       BANGLADESH                     4                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     5                 0       87     715
6 months    NIH-Crypto       BANGLADESH                     5                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     6                 0       35     715
6 months    NIH-Crypto       BANGLADESH                     6                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     7                 0       54     715
6 months    NIH-Crypto       BANGLADESH                     7                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     8                 0       86     715
6 months    NIH-Crypto       BANGLADESH                     8                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     9                 0       81     715
6 months    NIH-Crypto       BANGLADESH                     9                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     10                0       49     715
6 months    NIH-Crypto       BANGLADESH                     10                1        0     715
6 months    NIH-Crypto       BANGLADESH                     11                0        0     715
6 months    NIH-Crypto       BANGLADESH                     11                1        0     715
6 months    NIH-Crypto       BANGLADESH                     12                0       34     715
6 months    NIH-Crypto       BANGLADESH                     12                1        0     715
6 months    NIH-Crypto       BANGLADESH                     13                0        0     715
6 months    NIH-Crypto       BANGLADESH                     13                1        0     715
6 months    NIH-Crypto       BANGLADESH                     14                0        8     715
6 months    NIH-Crypto       BANGLADESH                     14                1        0     715
6 months    NIH-Crypto       BANGLADESH                     15                0       14     715
6 months    NIH-Crypto       BANGLADESH                     15                1        0     715
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
6 months    PROBIT           BELARUS                        0                 0        0   15207
6 months    PROBIT           BELARUS                        0                 1        0   15207
6 months    PROBIT           BELARUS                        1                 0        0   15207
6 months    PROBIT           BELARUS                        1                 1        0   15207
6 months    PROBIT           BELARUS                        2                 0        0   15207
6 months    PROBIT           BELARUS                        2                 1        0   15207
6 months    PROBIT           BELARUS                        3                 0        0   15207
6 months    PROBIT           BELARUS                        3                 1        0   15207
6 months    PROBIT           BELARUS                        4                 0        0   15207
6 months    PROBIT           BELARUS                        4                 1        0   15207
6 months    PROBIT           BELARUS                        5                 0        0   15207
6 months    PROBIT           BELARUS                        5                 1        0   15207
6 months    PROBIT           BELARUS                        6                 0        0   15207
6 months    PROBIT           BELARUS                        6                 1        0   15207
6 months    PROBIT           BELARUS                        7                 0        0   15207
6 months    PROBIT           BELARUS                        7                 1        0   15207
6 months    PROBIT           BELARUS                        8                 0       23   15207
6 months    PROBIT           BELARUS                        8                 1        0   15207
6 months    PROBIT           BELARUS                        9                 0        0   15207
6 months    PROBIT           BELARUS                        9                 1        0   15207
6 months    PROBIT           BELARUS                        10                0      340   15207
6 months    PROBIT           BELARUS                        10                1        0   15207
6 months    PROBIT           BELARUS                        11                0        0   15207
6 months    PROBIT           BELARUS                        11                1        0   15207
6 months    PROBIT           BELARUS                        12                0     5588   15207
6 months    PROBIT           BELARUS                        12                1        6   15207
6 months    PROBIT           BELARUS                        13                0     6736   15207
6 months    PROBIT           BELARUS                        13                1        2   15207
6 months    PROBIT           BELARUS                        14                0      409   15207
6 months    PROBIT           BELARUS                        14                1        0   15207
6 months    PROBIT           BELARUS                        15                0        0   15207
6 months    PROBIT           BELARUS                        15                1        0   15207
6 months    PROBIT           BELARUS                        16                0     2102   15207
6 months    PROBIT           BELARUS                        16                1        1   15207
6 months    PROBIT           BELARUS                        17                0        0   15207
6 months    PROBIT           BELARUS                        17                1        0   15207
6 months    PROBIT           BELARUS                        18                0        0   15207
6 months    PROBIT           BELARUS                        18                1        0   15207
6 months    PROBIT           BELARUS                        19                0        0   15207
6 months    PROBIT           BELARUS                        19                1        0   15207
6 months    PROBIT           BELARUS                        20                0        0   15207
6 months    PROBIT           BELARUS                        20                1        0   15207
6 months    PROBIT           BELARUS                        24                0        0   15207
6 months    PROBIT           BELARUS                        24                1        0   15207
6 months    PROBIT           BELARUS                        25                0        0   15207
6 months    PROBIT           BELARUS                        25                1        0   15207
6 months    PROBIT           BELARUS                        27                0        0   15207
6 months    PROBIT           BELARUS                        27                1        0   15207
6 months    PROVIDE          BANGLADESH                     0                 0      176     603
6 months    PROVIDE          BANGLADESH                     0                 1        2     603
6 months    PROVIDE          BANGLADESH                     1                 0       13     603
6 months    PROVIDE          BANGLADESH                     1                 1        0     603
6 months    PROVIDE          BANGLADESH                     2                 0       17     603
6 months    PROVIDE          BANGLADESH                     2                 1        0     603
6 months    PROVIDE          BANGLADESH                     3                 0       21     603
6 months    PROVIDE          BANGLADESH                     3                 1        0     603
6 months    PROVIDE          BANGLADESH                     4                 0       42     603
6 months    PROVIDE          BANGLADESH                     4                 1        0     603
6 months    PROVIDE          BANGLADESH                     5                 0       65     603
6 months    PROVIDE          BANGLADESH                     5                 1        0     603
6 months    PROVIDE          BANGLADESH                     6                 0       25     603
6 months    PROVIDE          BANGLADESH                     6                 1        0     603
6 months    PROVIDE          BANGLADESH                     7                 0       33     603
6 months    PROVIDE          BANGLADESH                     7                 1        0     603
6 months    PROVIDE          BANGLADESH                     8                 0       57     603
6 months    PROVIDE          BANGLADESH                     8                 1        1     603
6 months    PROVIDE          BANGLADESH                     9                 0       57     603
6 months    PROVIDE          BANGLADESH                     9                 1        0     603
6 months    PROVIDE          BANGLADESH                     10                0       32     603
6 months    PROVIDE          BANGLADESH                     10                1        1     603
6 months    PROVIDE          BANGLADESH                     11                0       24     603
6 months    PROVIDE          BANGLADESH                     11                1        0     603
6 months    PROVIDE          BANGLADESH                     12                0        4     603
6 months    PROVIDE          BANGLADESH                     12                1        0     603
6 months    PROVIDE          BANGLADESH                     13                0        0     603
6 months    PROVIDE          BANGLADESH                     13                1        0     603
6 months    PROVIDE          BANGLADESH                     14                0       17     603
6 months    PROVIDE          BANGLADESH                     14                1        0     603
6 months    PROVIDE          BANGLADESH                     15                0        7     603
6 months    PROVIDE          BANGLADESH                     15                1        0     603
6 months    PROVIDE          BANGLADESH                     16                0        7     603
6 months    PROVIDE          BANGLADESH                     16                1        1     603
6 months    PROVIDE          BANGLADESH                     17                0        0     603
6 months    PROVIDE          BANGLADESH                     17                1        0     603
6 months    PROVIDE          BANGLADESH                     18                0        0     603
6 months    PROVIDE          BANGLADESH                     18                1        0     603
6 months    PROVIDE          BANGLADESH                     19                0        1     603
6 months    PROVIDE          BANGLADESH                     19                1        0     603
6 months    PROVIDE          BANGLADESH                     20                0        0     603
6 months    PROVIDE          BANGLADESH                     20                1        0     603
6 months    PROVIDE          BANGLADESH                     24                0        0     603
6 months    PROVIDE          BANGLADESH                     24                1        0     603
6 months    PROVIDE          BANGLADESH                     25                0        0     603
6 months    PROVIDE          BANGLADESH                     25                1        0     603
6 months    PROVIDE          BANGLADESH                     27                0        0     603
6 months    PROVIDE          BANGLADESH                     27                1        0     603
6 months    SAS-CompFeed     INDIA                          0                 0      142    1331
6 months    SAS-CompFeed     INDIA                          0                 1        9    1331
6 months    SAS-CompFeed     INDIA                          1                 0        0    1331
6 months    SAS-CompFeed     INDIA                          1                 1        0    1331
6 months    SAS-CompFeed     INDIA                          2                 0        5    1331
6 months    SAS-CompFeed     INDIA                          2                 1        0    1331
6 months    SAS-CompFeed     INDIA                          3                 0       13    1331
6 months    SAS-CompFeed     INDIA                          3                 1        0    1331
6 months    SAS-CompFeed     INDIA                          4                 0       21    1331
6 months    SAS-CompFeed     INDIA                          4                 1        0    1331
6 months    SAS-CompFeed     INDIA                          5                 0       78    1331
6 months    SAS-CompFeed     INDIA                          5                 1        3    1331
6 months    SAS-CompFeed     INDIA                          6                 0       23    1331
6 months    SAS-CompFeed     INDIA                          6                 1        3    1331
6 months    SAS-CompFeed     INDIA                          7                 0       99    1331
6 months    SAS-CompFeed     INDIA                          7                 1        3    1331
6 months    SAS-CompFeed     INDIA                          8                 0      142    1331
6 months    SAS-CompFeed     INDIA                          8                 1        7    1331
6 months    SAS-CompFeed     INDIA                          9                 0       84    1331
6 months    SAS-CompFeed     INDIA                          9                 1        1    1331
6 months    SAS-CompFeed     INDIA                          10                0      337    1331
6 months    SAS-CompFeed     INDIA                          10                1       12    1331
6 months    SAS-CompFeed     INDIA                          11                0       36    1331
6 months    SAS-CompFeed     INDIA                          11                1        1    1331
6 months    SAS-CompFeed     INDIA                          12                0      200    1331
6 months    SAS-CompFeed     INDIA                          12                1        3    1331
6 months    SAS-CompFeed     INDIA                          13                0        7    1331
6 months    SAS-CompFeed     INDIA                          13                1        0    1331
6 months    SAS-CompFeed     INDIA                          14                0       16    1331
6 months    SAS-CompFeed     INDIA                          14                1        0    1331
6 months    SAS-CompFeed     INDIA                          15                0       56    1331
6 months    SAS-CompFeed     INDIA                          15                1        1    1331
6 months    SAS-CompFeed     INDIA                          16                0       10    1331
6 months    SAS-CompFeed     INDIA                          16                1        0    1331
6 months    SAS-CompFeed     INDIA                          17                0       14    1331
6 months    SAS-CompFeed     INDIA                          17                1        0    1331
6 months    SAS-CompFeed     INDIA                          18                0        3    1331
6 months    SAS-CompFeed     INDIA                          18                1        0    1331
6 months    SAS-CompFeed     INDIA                          19                0        1    1331
6 months    SAS-CompFeed     INDIA                          19                1        0    1331
6 months    SAS-CompFeed     INDIA                          20                0        1    1331
6 months    SAS-CompFeed     INDIA                          20                1        0    1331
6 months    SAS-CompFeed     INDIA                          24                0        0    1331
6 months    SAS-CompFeed     INDIA                          24                1        0    1331
6 months    SAS-CompFeed     INDIA                          25                0        0    1331
6 months    SAS-CompFeed     INDIA                          25                1        0    1331
6 months    SAS-CompFeed     INDIA                          27                0        0    1331
6 months    SAS-CompFeed     INDIA                          27                1        0    1331
6 months    SAS-FoodSuppl    INDIA                          0                 0      127     380
6 months    SAS-FoodSuppl    INDIA                          0                 1        5     380
6 months    SAS-FoodSuppl    INDIA                          1                 0        1     380
6 months    SAS-FoodSuppl    INDIA                          1                 1        0     380
6 months    SAS-FoodSuppl    INDIA                          2                 0        8     380
6 months    SAS-FoodSuppl    INDIA                          2                 1        2     380
6 months    SAS-FoodSuppl    INDIA                          3                 0        6     380
6 months    SAS-FoodSuppl    INDIA                          3                 1        1     380
6 months    SAS-FoodSuppl    INDIA                          4                 0       10     380
6 months    SAS-FoodSuppl    INDIA                          4                 1        0     380
6 months    SAS-FoodSuppl    INDIA                          5                 0       46     380
6 months    SAS-FoodSuppl    INDIA                          5                 1        4     380
6 months    SAS-FoodSuppl    INDIA                          6                 0       11     380
6 months    SAS-FoodSuppl    INDIA                          6                 1        1     380
6 months    SAS-FoodSuppl    INDIA                          7                 0       15     380
6 months    SAS-FoodSuppl    INDIA                          7                 1        0     380
6 months    SAS-FoodSuppl    INDIA                          8                 0       41     380
6 months    SAS-FoodSuppl    INDIA                          8                 1        1     380
6 months    SAS-FoodSuppl    INDIA                          9                 0       24     380
6 months    SAS-FoodSuppl    INDIA                          9                 1        1     380
6 months    SAS-FoodSuppl    INDIA                          10                0       51     380
6 months    SAS-FoodSuppl    INDIA                          10                1        3     380
6 months    SAS-FoodSuppl    INDIA                          11                0        2     380
6 months    SAS-FoodSuppl    INDIA                          11                1        1     380
6 months    SAS-FoodSuppl    INDIA                          12                0       10     380
6 months    SAS-FoodSuppl    INDIA                          12                1        0     380
6 months    SAS-FoodSuppl    INDIA                          13                0        1     380
6 months    SAS-FoodSuppl    INDIA                          13                1        0     380
6 months    SAS-FoodSuppl    INDIA                          14                0        5     380
6 months    SAS-FoodSuppl    INDIA                          14                1        0     380
6 months    SAS-FoodSuppl    INDIA                          15                0        3     380
6 months    SAS-FoodSuppl    INDIA                          15                1        0     380
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
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0        4    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 0        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 0        5    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 0        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 0        1    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 0     1069    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 1        3    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 0        8    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 0       46    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                0       21    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                0      484    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                1        5    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                0       15    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                0       99    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                1        1    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                0       12    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                0       18    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                0       24    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                0       20    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                0        4    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                0        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                0        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                0       13    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                1        1    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                0        1    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                1        0    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                0      161    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                1        2    2017
6 months    ZVITAMBO         ZIMBABWE                       0                 0       43    8266
6 months    ZVITAMBO         ZIMBABWE                       0                 1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       1                 0        1    8266
6 months    ZVITAMBO         ZIMBABWE                       1                 1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       2                 0        4    8266
6 months    ZVITAMBO         ZIMBABWE                       2                 1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       3                 0        9    8266
6 months    ZVITAMBO         ZIMBABWE                       3                 1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       4                 0       14    8266
6 months    ZVITAMBO         ZIMBABWE                       4                 1        1    8266
6 months    ZVITAMBO         ZIMBABWE                       5                 0       21    8266
6 months    ZVITAMBO         ZIMBABWE                       5                 1        2    8266
6 months    ZVITAMBO         ZIMBABWE                       6                 0       27    8266
6 months    ZVITAMBO         ZIMBABWE                       6                 1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       7                 0      496    8266
6 months    ZVITAMBO         ZIMBABWE                       7                 1        5    8266
6 months    ZVITAMBO         ZIMBABWE                       8                 0       66    8266
6 months    ZVITAMBO         ZIMBABWE                       8                 1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       9                 0      535    8266
6 months    ZVITAMBO         ZIMBABWE                       9                 1       10    8266
6 months    ZVITAMBO         ZIMBABWE                       10                0      193    8266
6 months    ZVITAMBO         ZIMBABWE                       10                1        6    8266
6 months    ZVITAMBO         ZIMBABWE                       11                0     6218    8266
6 months    ZVITAMBO         ZIMBABWE                       11                1       46    8266
6 months    ZVITAMBO         ZIMBABWE                       12                0       38    8266
6 months    ZVITAMBO         ZIMBABWE                       12                1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       13                0      525    8266
6 months    ZVITAMBO         ZIMBABWE                       13                1        6    8266
6 months    ZVITAMBO         ZIMBABWE                       14                0        0    8266
6 months    ZVITAMBO         ZIMBABWE                       14                1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       15                0        0    8266
6 months    ZVITAMBO         ZIMBABWE                       15                1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       16                0        0    8266
6 months    ZVITAMBO         ZIMBABWE                       16                1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       17                0        0    8266
6 months    ZVITAMBO         ZIMBABWE                       17                1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       18                0        0    8266
6 months    ZVITAMBO         ZIMBABWE                       18                1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       19                0        0    8266
6 months    ZVITAMBO         ZIMBABWE                       19                1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       20                0        0    8266
6 months    ZVITAMBO         ZIMBABWE                       20                1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       24                0        0    8266
6 months    ZVITAMBO         ZIMBABWE                       24                1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       25                0        0    8266
6 months    ZVITAMBO         ZIMBABWE                       25                1        0    8266
6 months    ZVITAMBO         ZIMBABWE                       27                0        0    8266
6 months    ZVITAMBO         ZIMBABWE                       27                1        0    8266
24 months   COHORTS          GUATEMALA                      0                 0      464    1002
24 months   COHORTS          GUATEMALA                      0                 1        1    1002
24 months   COHORTS          GUATEMALA                      1                 0       58    1002
24 months   COHORTS          GUATEMALA                      1                 1        0    1002
24 months   COHORTS          GUATEMALA                      2                 0      171    1002
24 months   COHORTS          GUATEMALA                      2                 1        2    1002
24 months   COHORTS          GUATEMALA                      3                 0      127    1002
24 months   COHORTS          GUATEMALA                      3                 1        1    1002
24 months   COHORTS          GUATEMALA                      4                 0       66    1002
24 months   COHORTS          GUATEMALA                      4                 1        0    1002
24 months   COHORTS          GUATEMALA                      5                 0       24    1002
24 months   COHORTS          GUATEMALA                      5                 1        0    1002
24 months   COHORTS          GUATEMALA                      6                 0       78    1002
24 months   COHORTS          GUATEMALA                      6                 1        0    1002
24 months   COHORTS          GUATEMALA                      7                 0        2    1002
24 months   COHORTS          GUATEMALA                      7                 1        0    1002
24 months   COHORTS          GUATEMALA                      8                 0        1    1002
24 months   COHORTS          GUATEMALA                      8                 1        0    1002
24 months   COHORTS          GUATEMALA                      9                 0        0    1002
24 months   COHORTS          GUATEMALA                      9                 1        0    1002
24 months   COHORTS          GUATEMALA                      10                0        1    1002
24 months   COHORTS          GUATEMALA                      10                1        0    1002
24 months   COHORTS          GUATEMALA                      11                0        0    1002
24 months   COHORTS          GUATEMALA                      11                1        0    1002
24 months   COHORTS          GUATEMALA                      12                0        5    1002
24 months   COHORTS          GUATEMALA                      12                1        0    1002
24 months   COHORTS          GUATEMALA                      13                0        0    1002
24 months   COHORTS          GUATEMALA                      13                1        0    1002
24 months   COHORTS          GUATEMALA                      14                0        0    1002
24 months   COHORTS          GUATEMALA                      14                1        0    1002
24 months   COHORTS          GUATEMALA                      15                0        1    1002
24 months   COHORTS          GUATEMALA                      15                1        0    1002
24 months   COHORTS          GUATEMALA                      16                0        0    1002
24 months   COHORTS          GUATEMALA                      16                1        0    1002
24 months   COHORTS          GUATEMALA                      17                0        0    1002
24 months   COHORTS          GUATEMALA                      17                1        0    1002
24 months   COHORTS          GUATEMALA                      18                0        0    1002
24 months   COHORTS          GUATEMALA                      18                1        0    1002
24 months   COHORTS          GUATEMALA                      19                0        0    1002
24 months   COHORTS          GUATEMALA                      19                1        0    1002
24 months   COHORTS          GUATEMALA                      20                0        0    1002
24 months   COHORTS          GUATEMALA                      20                1        0    1002
24 months   COHORTS          GUATEMALA                      24                0        0    1002
24 months   COHORTS          GUATEMALA                      24                1        0    1002
24 months   COHORTS          GUATEMALA                      25                0        0    1002
24 months   COHORTS          GUATEMALA                      25                1        0    1002
24 months   COHORTS          GUATEMALA                      27                0        0    1002
24 months   COHORTS          GUATEMALA                      27                1        0    1002
24 months   COHORTS          INDIA                          0                 0      114    1370
24 months   COHORTS          INDIA                          0                 1        1    1370
24 months   COHORTS          INDIA                          1                 0        0    1370
24 months   COHORTS          INDIA                          1                 1        0    1370
24 months   COHORTS          INDIA                          2                 0        0    1370
24 months   COHORTS          INDIA                          2                 1        0    1370
24 months   COHORTS          INDIA                          3                 0      125    1370
24 months   COHORTS          INDIA                          3                 1        3    1370
24 months   COHORTS          INDIA                          4                 0        0    1370
24 months   COHORTS          INDIA                          4                 1        0    1370
24 months   COHORTS          INDIA                          5                 0        0    1370
24 months   COHORTS          INDIA                          5                 1        0    1370
24 months   COHORTS          INDIA                          6                 0        0    1370
24 months   COHORTS          INDIA                          6                 1        0    1370
24 months   COHORTS          INDIA                          7                 0        0    1370
24 months   COHORTS          INDIA                          7                 1        0    1370
24 months   COHORTS          INDIA                          8                 0      203    1370
24 months   COHORTS          INDIA                          8                 1        2    1370
24 months   COHORTS          INDIA                          9                 0        0    1370
24 months   COHORTS          INDIA                          9                 1        0    1370
24 months   COHORTS          INDIA                          10                0        0    1370
24 months   COHORTS          INDIA                          10                1        0    1370
24 months   COHORTS          INDIA                          11                0        0    1370
24 months   COHORTS          INDIA                          11                1        0    1370
24 months   COHORTS          INDIA                          12                0      383    1370
24 months   COHORTS          INDIA                          12                1        3    1370
24 months   COHORTS          INDIA                          13                0        0    1370
24 months   COHORTS          INDIA                          13                1        0    1370
24 months   COHORTS          INDIA                          14                0      148    1370
24 months   COHORTS          INDIA                          14                1        2    1370
24 months   COHORTS          INDIA                          15                0      272    1370
24 months   COHORTS          INDIA                          15                1        0    1370
24 months   COHORTS          INDIA                          16                0        0    1370
24 months   COHORTS          INDIA                          16                1        0    1370
24 months   COHORTS          INDIA                          17                0      114    1370
24 months   COHORTS          INDIA                          17                1        0    1370
24 months   COHORTS          INDIA                          18                0        0    1370
24 months   COHORTS          INDIA                          18                1        0    1370
24 months   COHORTS          INDIA                          19                0        0    1370
24 months   COHORTS          INDIA                          19                1        0    1370
24 months   COHORTS          INDIA                          20                0        0    1370
24 months   COHORTS          INDIA                          20                1        0    1370
24 months   COHORTS          INDIA                          24                0        0    1370
24 months   COHORTS          INDIA                          24                1        0    1370
24 months   COHORTS          INDIA                          25                0        0    1370
24 months   COHORTS          INDIA                          25                1        0    1370
24 months   COHORTS          INDIA                          27                0        0    1370
24 months   COHORTS          INDIA                          27                1        0    1370
24 months   COHORTS          PHILIPPINES                    0                 0       49    2319
24 months   COHORTS          PHILIPPINES                    0                 1        0    2319
24 months   COHORTS          PHILIPPINES                    1                 0       28    2319
24 months   COHORTS          PHILIPPINES                    1                 1        0    2319
24 months   COHORTS          PHILIPPINES                    2                 0       84    2319
24 months   COHORTS          PHILIPPINES                    2                 1        2    2319
24 months   COHORTS          PHILIPPINES                    3                 0      136    2319
24 months   COHORTS          PHILIPPINES                    3                 1        3    2319
24 months   COHORTS          PHILIPPINES                    4                 0      217    2319
24 months   COHORTS          PHILIPPINES                    4                 1        0    2319
24 months   COHORTS          PHILIPPINES                    5                 0      172    2319
24 months   COHORTS          PHILIPPINES                    5                 1        2    2319
24 months   COHORTS          PHILIPPINES                    6                 0      507    2319
24 months   COHORTS          PHILIPPINES                    6                 1       12    2319
24 months   COHORTS          PHILIPPINES                    7                 0      119    2319
24 months   COHORTS          PHILIPPINES                    7                 1        2    2319
24 months   COHORTS          PHILIPPINES                    8                 0      186    2319
24 months   COHORTS          PHILIPPINES                    8                 1        2    2319
24 months   COHORTS          PHILIPPINES                    9                 0      158    2319
24 months   COHORTS          PHILIPPINES                    9                 1        0    2319
24 months   COHORTS          PHILIPPINES                    10                0      256    2319
24 months   COHORTS          PHILIPPINES                    10                1        0    2319
24 months   COHORTS          PHILIPPINES                    11                0       58    2319
24 months   COHORTS          PHILIPPINES                    11                1        0    2319
24 months   COHORTS          PHILIPPINES                    12                0      131    2319
24 months   COHORTS          PHILIPPINES                    12                1        2    2319
24 months   COHORTS          PHILIPPINES                    13                0       49    2319
24 months   COHORTS          PHILIPPINES                    13                1        0    2319
24 months   COHORTS          PHILIPPINES                    14                0      108    2319
24 months   COHORTS          PHILIPPINES                    14                1        0    2319
24 months   COHORTS          PHILIPPINES                    15                0       31    2319
24 months   COHORTS          PHILIPPINES                    15                1        0    2319
24 months   COHORTS          PHILIPPINES                    16                0        4    2319
24 months   COHORTS          PHILIPPINES                    16                1        0    2319
24 months   COHORTS          PHILIPPINES                    17                0        1    2319
24 months   COHORTS          PHILIPPINES                    17                1        0    2319
24 months   COHORTS          PHILIPPINES                    18                0        0    2319
24 months   COHORTS          PHILIPPINES                    18                1        0    2319
24 months   COHORTS          PHILIPPINES                    19                0        0    2319
24 months   COHORTS          PHILIPPINES                    19                1        0    2319
24 months   COHORTS          PHILIPPINES                    20                0        0    2319
24 months   COHORTS          PHILIPPINES                    20                1        0    2319
24 months   COHORTS          PHILIPPINES                    24                0        0    2319
24 months   COHORTS          PHILIPPINES                    24                1        0    2319
24 months   COHORTS          PHILIPPINES                    25                0        0    2319
24 months   COHORTS          PHILIPPINES                    25                1        0    2319
24 months   COHORTS          PHILIPPINES                    27                0        0    2319
24 months   COHORTS          PHILIPPINES                    27                1        0    2319
24 months   GMS-Nepal        NEPAL                          0                 0      212     486
24 months   GMS-Nepal        NEPAL                          0                 1        6     486
24 months   GMS-Nepal        NEPAL                          1                 0        0     486
24 months   GMS-Nepal        NEPAL                          1                 1        0     486
24 months   GMS-Nepal        NEPAL                          2                 0        0     486
24 months   GMS-Nepal        NEPAL                          2                 1        0     486
24 months   GMS-Nepal        NEPAL                          3                 0        0     486
24 months   GMS-Nepal        NEPAL                          3                 1        0     486
24 months   GMS-Nepal        NEPAL                          4                 0        0     486
24 months   GMS-Nepal        NEPAL                          4                 1        0     486
24 months   GMS-Nepal        NEPAL                          5                 0       68     486
24 months   GMS-Nepal        NEPAL                          5                 1        4     486
24 months   GMS-Nepal        NEPAL                          6                 0        0     486
24 months   GMS-Nepal        NEPAL                          6                 1        0     486
24 months   GMS-Nepal        NEPAL                          7                 0        0     486
24 months   GMS-Nepal        NEPAL                          7                 1        0     486
24 months   GMS-Nepal        NEPAL                          8                 0       81     486
24 months   GMS-Nepal        NEPAL                          8                 1        2     486
24 months   GMS-Nepal        NEPAL                          9                 0        0     486
24 months   GMS-Nepal        NEPAL                          9                 1        0     486
24 months   GMS-Nepal        NEPAL                          10                0       83     486
24 months   GMS-Nepal        NEPAL                          10                1        3     486
24 months   GMS-Nepal        NEPAL                          11                0        0     486
24 months   GMS-Nepal        NEPAL                          11                1        0     486
24 months   GMS-Nepal        NEPAL                          12                0       27     486
24 months   GMS-Nepal        NEPAL                          12                1        0     486
24 months   GMS-Nepal        NEPAL                          13                0        0     486
24 months   GMS-Nepal        NEPAL                          13                1        0     486
24 months   GMS-Nepal        NEPAL                          14                0        0     486
24 months   GMS-Nepal        NEPAL                          14                1        0     486
24 months   GMS-Nepal        NEPAL                          15                0        0     486
24 months   GMS-Nepal        NEPAL                          15                1        0     486
24 months   GMS-Nepal        NEPAL                          16                0        0     486
24 months   GMS-Nepal        NEPAL                          16                1        0     486
24 months   GMS-Nepal        NEPAL                          17                0        0     486
24 months   GMS-Nepal        NEPAL                          17                1        0     486
24 months   GMS-Nepal        NEPAL                          18                0        0     486
24 months   GMS-Nepal        NEPAL                          18                1        0     486
24 months   GMS-Nepal        NEPAL                          19                0        0     486
24 months   GMS-Nepal        NEPAL                          19                1        0     486
24 months   GMS-Nepal        NEPAL                          20                0        0     486
24 months   GMS-Nepal        NEPAL                          20                1        0     486
24 months   GMS-Nepal        NEPAL                          24                0        0     486
24 months   GMS-Nepal        NEPAL                          24                1        0     486
24 months   GMS-Nepal        NEPAL                          25                0        0     486
24 months   GMS-Nepal        NEPAL                          25                1        0     486
24 months   GMS-Nepal        NEPAL                          27                0        0     486
24 months   GMS-Nepal        NEPAL                          27                1        0     486
24 months   LCNI-5           MALAWI                         0                 0      194     555
24 months   LCNI-5           MALAWI                         0                 1        0     555
24 months   LCNI-5           MALAWI                         1                 0       10     555
24 months   LCNI-5           MALAWI                         1                 1        0     555
24 months   LCNI-5           MALAWI                         2                 0       20     555
24 months   LCNI-5           MALAWI                         2                 1        0     555
24 months   LCNI-5           MALAWI                         3                 0       35     555
24 months   LCNI-5           MALAWI                         3                 1        0     555
24 months   LCNI-5           MALAWI                         4                 0       38     555
24 months   LCNI-5           MALAWI                         4                 1        0     555
24 months   LCNI-5           MALAWI                         5                 0       42     555
24 months   LCNI-5           MALAWI                         5                 1        0     555
24 months   LCNI-5           MALAWI                         6                 0       46     555
24 months   LCNI-5           MALAWI                         6                 1        0     555
24 months   LCNI-5           MALAWI                         7                 0       45     555
24 months   LCNI-5           MALAWI                         7                 1        0     555
24 months   LCNI-5           MALAWI                         8                 0       59     555
24 months   LCNI-5           MALAWI                         8                 1        1     555
24 months   LCNI-5           MALAWI                         9                 0        9     555
24 months   LCNI-5           MALAWI                         9                 1        0     555
24 months   LCNI-5           MALAWI                         10                0       13     555
24 months   LCNI-5           MALAWI                         10                1        0     555
24 months   LCNI-5           MALAWI                         11                0        3     555
24 months   LCNI-5           MALAWI                         11                1        0     555
24 months   LCNI-5           MALAWI                         12                0       38     555
24 months   LCNI-5           MALAWI                         12                1        0     555
24 months   LCNI-5           MALAWI                         13                0        1     555
24 months   LCNI-5           MALAWI                         13                1        0     555
24 months   LCNI-5           MALAWI                         14                0        1     555
24 months   LCNI-5           MALAWI                         14                1        0     555
24 months   LCNI-5           MALAWI                         15                0        0     555
24 months   LCNI-5           MALAWI                         15                1        0     555
24 months   LCNI-5           MALAWI                         16                0        0     555
24 months   LCNI-5           MALAWI                         16                1        0     555
24 months   LCNI-5           MALAWI                         17                0        0     555
24 months   LCNI-5           MALAWI                         17                1        0     555
24 months   LCNI-5           MALAWI                         18                0        0     555
24 months   LCNI-5           MALAWI                         18                1        0     555
24 months   LCNI-5           MALAWI                         19                0        0     555
24 months   LCNI-5           MALAWI                         19                1        0     555
24 months   LCNI-5           MALAWI                         20                0        0     555
24 months   LCNI-5           MALAWI                         20                1        0     555
24 months   LCNI-5           MALAWI                         24                0        0     555
24 months   LCNI-5           MALAWI                         24                1        0     555
24 months   LCNI-5           MALAWI                         25                0        0     555
24 months   LCNI-5           MALAWI                         25                1        0     555
24 months   LCNI-5           MALAWI                         27                0        0     555
24 months   LCNI-5           MALAWI                         27                1        0     555
24 months   MAL-ED           BANGLADESH                     0                 0        0     117
24 months   MAL-ED           BANGLADESH                     0                 1        0     117
24 months   MAL-ED           BANGLADESH                     1                 0        7     117
24 months   MAL-ED           BANGLADESH                     1                 1        0     117
24 months   MAL-ED           BANGLADESH                     2                 0       11     117
24 months   MAL-ED           BANGLADESH                     2                 1        0     117
24 months   MAL-ED           BANGLADESH                     3                 0       11     117
24 months   MAL-ED           BANGLADESH                     3                 1        0     117
24 months   MAL-ED           BANGLADESH                     4                 0        6     117
24 months   MAL-ED           BANGLADESH                     4                 1        0     117
24 months   MAL-ED           BANGLADESH                     5                 0       27     117
24 months   MAL-ED           BANGLADESH                     5                 1        0     117
24 months   MAL-ED           BANGLADESH                     6                 0        7     117
24 months   MAL-ED           BANGLADESH                     6                 1        0     117
24 months   MAL-ED           BANGLADESH                     7                 0        8     117
24 months   MAL-ED           BANGLADESH                     7                 1        0     117
24 months   MAL-ED           BANGLADESH                     8                 0       13     117
24 months   MAL-ED           BANGLADESH                     8                 1        0     117
24 months   MAL-ED           BANGLADESH                     9                 0       10     117
24 months   MAL-ED           BANGLADESH                     9                 1        0     117
24 months   MAL-ED           BANGLADESH                     10                0        8     117
24 months   MAL-ED           BANGLADESH                     10                1        0     117
24 months   MAL-ED           BANGLADESH                     11                0        0     117
24 months   MAL-ED           BANGLADESH                     11                1        0     117
24 months   MAL-ED           BANGLADESH                     12                0        7     117
24 months   MAL-ED           BANGLADESH                     12                1        0     117
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
24 months   MAL-ED           INDIA                          2                 0        5     132
24 months   MAL-ED           INDIA                          2                 1        0     132
24 months   MAL-ED           INDIA                          3                 0        9     132
24 months   MAL-ED           INDIA                          3                 1        0     132
24 months   MAL-ED           INDIA                          4                 0        6     132
24 months   MAL-ED           INDIA                          4                 1        0     132
24 months   MAL-ED           INDIA                          5                 0       31     132
24 months   MAL-ED           INDIA                          5                 1        0     132
24 months   MAL-ED           INDIA                          6                 0       10     132
24 months   MAL-ED           INDIA                          6                 1        0     132
24 months   MAL-ED           INDIA                          7                 0       10     132
24 months   MAL-ED           INDIA                          7                 1        0     132
24 months   MAL-ED           INDIA                          8                 0       19     132
24 months   MAL-ED           INDIA                          8                 1        0     132
24 months   MAL-ED           INDIA                          9                 0       25     132
24 months   MAL-ED           INDIA                          9                 1        0     132
24 months   MAL-ED           INDIA                          10                0        6     132
24 months   MAL-ED           INDIA                          10                1        0     132
24 months   MAL-ED           INDIA                          11                0        2     132
24 months   MAL-ED           INDIA                          11                1        0     132
24 months   MAL-ED           INDIA                          12                0        3     132
24 months   MAL-ED           INDIA                          12                1        0     132
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
24 months   MAL-ED           INDIA                          18                0        1     132
24 months   MAL-ED           INDIA                          18                1        0     132
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
24 months   MAL-ED           NEPAL                          2                 0        4      91
24 months   MAL-ED           NEPAL                          2                 1        0      91
24 months   MAL-ED           NEPAL                          3                 0        3      91
24 months   MAL-ED           NEPAL                          3                 1        0      91
24 months   MAL-ED           NEPAL                          4                 0       10      91
24 months   MAL-ED           NEPAL                          4                 1        0      91
24 months   MAL-ED           NEPAL                          5                 0        6      91
24 months   MAL-ED           NEPAL                          5                 1        0      91
24 months   MAL-ED           NEPAL                          6                 0        4      91
24 months   MAL-ED           NEPAL                          6                 1        0      91
24 months   MAL-ED           NEPAL                          7                 0        8      91
24 months   MAL-ED           NEPAL                          7                 1        0      91
24 months   MAL-ED           NEPAL                          8                 0       11      91
24 months   MAL-ED           NEPAL                          8                 1        0      91
24 months   MAL-ED           NEPAL                          9                 0        7      91
24 months   MAL-ED           NEPAL                          9                 1        0      91
24 months   MAL-ED           NEPAL                          10                0       24      91
24 months   MAL-ED           NEPAL                          10                1        0      91
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
24 months   MAL-ED           PERU                           0                 0        1     164
24 months   MAL-ED           PERU                           0                 1        0     164
24 months   MAL-ED           PERU                           1                 0        1     164
24 months   MAL-ED           PERU                           1                 1        0     164
24 months   MAL-ED           PERU                           2                 0        0     164
24 months   MAL-ED           PERU                           2                 1        0     164
24 months   MAL-ED           PERU                           3                 0        6     164
24 months   MAL-ED           PERU                           3                 1        0     164
24 months   MAL-ED           PERU                           4                 0        3     164
24 months   MAL-ED           PERU                           4                 1        0     164
24 months   MAL-ED           PERU                           5                 0        7     164
24 months   MAL-ED           PERU                           5                 1        0     164
24 months   MAL-ED           PERU                           6                 0       14     164
24 months   MAL-ED           PERU                           6                 1        0     164
24 months   MAL-ED           PERU                           7                 0       12     164
24 months   MAL-ED           PERU                           7                 1        0     164
24 months   MAL-ED           PERU                           8                 0       15     164
24 months   MAL-ED           PERU                           8                 1        0     164
24 months   MAL-ED           PERU                           9                 0       20     164
24 months   MAL-ED           PERU                           9                 1        1     164
24 months   MAL-ED           PERU                           10                0        7     164
24 months   MAL-ED           PERU                           10                1        0     164
24 months   MAL-ED           PERU                           11                0       64     164
24 months   MAL-ED           PERU                           11                1        1     164
24 months   MAL-ED           PERU                           12                0        1     164
24 months   MAL-ED           PERU                           12                1        0     164
24 months   MAL-ED           PERU                           13                0        2     164
24 months   MAL-ED           PERU                           13                1        0     164
24 months   MAL-ED           PERU                           14                0        4     164
24 months   MAL-ED           PERU                           14                1        0     164
24 months   MAL-ED           PERU                           15                0        0     164
24 months   MAL-ED           PERU                           15                1        0     164
24 months   MAL-ED           PERU                           16                0        1     164
24 months   MAL-ED           PERU                           16                1        0     164
24 months   MAL-ED           PERU                           17                0        1     164
24 months   MAL-ED           PERU                           17                1        0     164
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
24 months   MAL-ED           SOUTH AFRICA                   4                 0        4      91
24 months   MAL-ED           SOUTH AFRICA                   4                 1        0      91
24 months   MAL-ED           SOUTH AFRICA                   5                 0        2      91
24 months   MAL-ED           SOUTH AFRICA                   5                 1        0      91
24 months   MAL-ED           SOUTH AFRICA                   6                 0        6      91
24 months   MAL-ED           SOUTH AFRICA                   6                 1        0      91
24 months   MAL-ED           SOUTH AFRICA                   7                 0        6      91
24 months   MAL-ED           SOUTH AFRICA                   7                 1        0      91
24 months   MAL-ED           SOUTH AFRICA                   8                 0       10      91
24 months   MAL-ED           SOUTH AFRICA                   8                 1        0      91
24 months   MAL-ED           SOUTH AFRICA                   9                 0        5      91
24 months   MAL-ED           SOUTH AFRICA                   9                 1        0      91
24 months   MAL-ED           SOUTH AFRICA                   10                0        8      91
24 months   MAL-ED           SOUTH AFRICA                   10                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   11                0       15      91
24 months   MAL-ED           SOUTH AFRICA                   11                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   12                0       29      91
24 months   MAL-ED           SOUTH AFRICA                   12                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   13                0        0      91
24 months   MAL-ED           SOUTH AFRICA                   13                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   14                0        2      91
24 months   MAL-ED           SOUTH AFRICA                   14                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   15                0        2      91
24 months   MAL-ED           SOUTH AFRICA                   15                1        0      91
24 months   MAL-ED           SOUTH AFRICA                   16                0        1      91
24 months   MAL-ED           SOUTH AFRICA                   16                1        0      91
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
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       13     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 0       11     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 0       13     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 0       10     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 0        8     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 0        8     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 0      105     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 0        1     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 0        2     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                0        3     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                0        2     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                0        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                0        1     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                1        0     177
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
24 months   NIH-Crypto       BANGLADESH                     0                 0      100     514
24 months   NIH-Crypto       BANGLADESH                     0                 1        2     514
24 months   NIH-Crypto       BANGLADESH                     1                 0       11     514
24 months   NIH-Crypto       BANGLADESH                     1                 1        0     514
24 months   NIH-Crypto       BANGLADESH                     2                 0       10     514
24 months   NIH-Crypto       BANGLADESH                     2                 1        0     514
24 months   NIH-Crypto       BANGLADESH                     3                 0       21     514
24 months   NIH-Crypto       BANGLADESH                     3                 1        0     514
24 months   NIH-Crypto       BANGLADESH                     4                 0       30     514
24 months   NIH-Crypto       BANGLADESH                     4                 1        0     514
24 months   NIH-Crypto       BANGLADESH                     5                 0       65     514
24 months   NIH-Crypto       BANGLADESH                     5                 1        0     514
24 months   NIH-Crypto       BANGLADESH                     6                 0       26     514
24 months   NIH-Crypto       BANGLADESH                     6                 1        0     514
24 months   NIH-Crypto       BANGLADESH                     7                 0       38     514
24 months   NIH-Crypto       BANGLADESH                     7                 1        0     514
24 months   NIH-Crypto       BANGLADESH                     8                 0       58     514
24 months   NIH-Crypto       BANGLADESH                     8                 1        0     514
24 months   NIH-Crypto       BANGLADESH                     9                 0       62     514
24 months   NIH-Crypto       BANGLADESH                     9                 1        1     514
24 months   NIH-Crypto       BANGLADESH                     10                0       40     514
24 months   NIH-Crypto       BANGLADESH                     10                1        1     514
24 months   NIH-Crypto       BANGLADESH                     11                0        0     514
24 months   NIH-Crypto       BANGLADESH                     11                1        0     514
24 months   NIH-Crypto       BANGLADESH                     12                0       27     514
24 months   NIH-Crypto       BANGLADESH                     12                1        0     514
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
24 months   PROBIT           BELARUS                        0                 0        0    3851
24 months   PROBIT           BELARUS                        0                 1        0    3851
24 months   PROBIT           BELARUS                        1                 0        0    3851
24 months   PROBIT           BELARUS                        1                 1        0    3851
24 months   PROBIT           BELARUS                        2                 0        0    3851
24 months   PROBIT           BELARUS                        2                 1        0    3851
24 months   PROBIT           BELARUS                        3                 0        0    3851
24 months   PROBIT           BELARUS                        3                 1        0    3851
24 months   PROBIT           BELARUS                        4                 0        0    3851
24 months   PROBIT           BELARUS                        4                 1        0    3851
24 months   PROBIT           BELARUS                        5                 0        0    3851
24 months   PROBIT           BELARUS                        5                 1        0    3851
24 months   PROBIT           BELARUS                        6                 0        0    3851
24 months   PROBIT           BELARUS                        6                 1        0    3851
24 months   PROBIT           BELARUS                        7                 0        0    3851
24 months   PROBIT           BELARUS                        7                 1        0    3851
24 months   PROBIT           BELARUS                        8                 0        1    3851
24 months   PROBIT           BELARUS                        8                 1        0    3851
24 months   PROBIT           BELARUS                        9                 0        0    3851
24 months   PROBIT           BELARUS                        9                 1        0    3851
24 months   PROBIT           BELARUS                        10                0       69    3851
24 months   PROBIT           BELARUS                        10                1        0    3851
24 months   PROBIT           BELARUS                        11                0        0    3851
24 months   PROBIT           BELARUS                        11                1        0    3851
24 months   PROBIT           BELARUS                        12                0     1413    3851
24 months   PROBIT           BELARUS                        12                1        5    3851
24 months   PROBIT           BELARUS                        13                0     1741    3851
24 months   PROBIT           BELARUS                        13                1        2    3851
24 months   PROBIT           BELARUS                        14                0       97    3851
24 months   PROBIT           BELARUS                        14                1        0    3851
24 months   PROBIT           BELARUS                        15                0        0    3851
24 months   PROBIT           BELARUS                        15                1        0    3851
24 months   PROBIT           BELARUS                        16                0      523    3851
24 months   PROBIT           BELARUS                        16                1        0    3851
24 months   PROBIT           BELARUS                        17                0        0    3851
24 months   PROBIT           BELARUS                        17                1        0    3851
24 months   PROBIT           BELARUS                        18                0        0    3851
24 months   PROBIT           BELARUS                        18                1        0    3851
24 months   PROBIT           BELARUS                        19                0        0    3851
24 months   PROBIT           BELARUS                        19                1        0    3851
24 months   PROBIT           BELARUS                        20                0        0    3851
24 months   PROBIT           BELARUS                        20                1        0    3851
24 months   PROBIT           BELARUS                        24                0        0    3851
24 months   PROBIT           BELARUS                        24                1        0    3851
24 months   PROBIT           BELARUS                        25                0        0    3851
24 months   PROBIT           BELARUS                        25                1        0    3851
24 months   PROBIT           BELARUS                        27                0        0    3851
24 months   PROBIT           BELARUS                        27                1        0    3851
24 months   PROVIDE          BANGLADESH                     0                 0      165     579
24 months   PROVIDE          BANGLADESH                     0                 1        6     579
24 months   PROVIDE          BANGLADESH                     1                 0       10     579
24 months   PROVIDE          BANGLADESH                     1                 1        0     579
24 months   PROVIDE          BANGLADESH                     2                 0       17     579
24 months   PROVIDE          BANGLADESH                     2                 1        0     579
24 months   PROVIDE          BANGLADESH                     3                 0       20     579
24 months   PROVIDE          BANGLADESH                     3                 1        0     579
24 months   PROVIDE          BANGLADESH                     4                 0       41     579
24 months   PROVIDE          BANGLADESH                     4                 1        0     579
24 months   PROVIDE          BANGLADESH                     5                 0       61     579
24 months   PROVIDE          BANGLADESH                     5                 1        0     579
24 months   PROVIDE          BANGLADESH                     6                 0       25     579
24 months   PROVIDE          BANGLADESH                     6                 1        0     579
24 months   PROVIDE          BANGLADESH                     7                 0       32     579
24 months   PROVIDE          BANGLADESH                     7                 1        0     579
24 months   PROVIDE          BANGLADESH                     8                 0       56     579
24 months   PROVIDE          BANGLADESH                     8                 1        1     579
24 months   PROVIDE          BANGLADESH                     9                 0       52     579
24 months   PROVIDE          BANGLADESH                     9                 1        1     579
24 months   PROVIDE          BANGLADESH                     10                0       30     579
24 months   PROVIDE          BANGLADESH                     10                1        0     579
24 months   PROVIDE          BANGLADESH                     11                0       25     579
24 months   PROVIDE          BANGLADESH                     11                1        0     579
24 months   PROVIDE          BANGLADESH                     12                0        3     579
24 months   PROVIDE          BANGLADESH                     12                1        0     579
24 months   PROVIDE          BANGLADESH                     13                0        0     579
24 months   PROVIDE          BANGLADESH                     13                1        0     579
24 months   PROVIDE          BANGLADESH                     14                0       16     579
24 months   PROVIDE          BANGLADESH                     14                1        1     579
24 months   PROVIDE          BANGLADESH                     15                0        8     579
24 months   PROVIDE          BANGLADESH                     15                1        0     579
24 months   PROVIDE          BANGLADESH                     16                0        8     579
24 months   PROVIDE          BANGLADESH                     16                1        0     579
24 months   PROVIDE          BANGLADESH                     17                0        0     579
24 months   PROVIDE          BANGLADESH                     17                1        0     579
24 months   PROVIDE          BANGLADESH                     18                0        0     579
24 months   PROVIDE          BANGLADESH                     18                1        0     579
24 months   PROVIDE          BANGLADESH                     19                0        1     579
24 months   PROVIDE          BANGLADESH                     19                1        0     579
24 months   PROVIDE          BANGLADESH                     20                0        0     579
24 months   PROVIDE          BANGLADESH                     20                1        0     579
24 months   PROVIDE          BANGLADESH                     24                0        0     579
24 months   PROVIDE          BANGLADESH                     24                1        0     579
24 months   PROVIDE          BANGLADESH                     25                0        0     579
24 months   PROVIDE          BANGLADESH                     25                1        0     579
24 months   PROVIDE          BANGLADESH                     27                0        0     579
24 months   PROVIDE          BANGLADESH                     27                1        0     579
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
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 1        0       6
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
24 months   ZVITAMBO         ZIMBABWE                       0                 0        6     410
24 months   ZVITAMBO         ZIMBABWE                       0                 1        2     410
24 months   ZVITAMBO         ZIMBABWE                       1                 0        0     410
24 months   ZVITAMBO         ZIMBABWE                       1                 1        0     410
24 months   ZVITAMBO         ZIMBABWE                       2                 0        0     410
24 months   ZVITAMBO         ZIMBABWE                       2                 1        0     410
24 months   ZVITAMBO         ZIMBABWE                       3                 0        1     410
24 months   ZVITAMBO         ZIMBABWE                       3                 1        0     410
24 months   ZVITAMBO         ZIMBABWE                       4                 0        0     410
24 months   ZVITAMBO         ZIMBABWE                       4                 1        1     410
24 months   ZVITAMBO         ZIMBABWE                       5                 0        4     410
24 months   ZVITAMBO         ZIMBABWE                       5                 1        0     410
24 months   ZVITAMBO         ZIMBABWE                       6                 0        0     410
24 months   ZVITAMBO         ZIMBABWE                       6                 1        0     410
24 months   ZVITAMBO         ZIMBABWE                       7                 0       33     410
24 months   ZVITAMBO         ZIMBABWE                       7                 1        3     410
24 months   ZVITAMBO         ZIMBABWE                       8                 0        4     410
24 months   ZVITAMBO         ZIMBABWE                       8                 1        0     410
24 months   ZVITAMBO         ZIMBABWE                       9                 0       31     410
24 months   ZVITAMBO         ZIMBABWE                       9                 1        4     410
24 months   ZVITAMBO         ZIMBABWE                       10                0       13     410
24 months   ZVITAMBO         ZIMBABWE                       10                1        1     410
24 months   ZVITAMBO         ZIMBABWE                       11                0      275     410
24 months   ZVITAMBO         ZIMBABWE                       11                1       19     410
24 months   ZVITAMBO         ZIMBABWE                       12                0        0     410
24 months   ZVITAMBO         ZIMBABWE                       12                1        0     410
24 months   ZVITAMBO         ZIMBABWE                       13                0       13     410
24 months   ZVITAMBO         ZIMBABWE                       13                1        0     410
24 months   ZVITAMBO         ZIMBABWE                       14                0        0     410
24 months   ZVITAMBO         ZIMBABWE                       14                1        0     410
24 months   ZVITAMBO         ZIMBABWE                       15                0        0     410
24 months   ZVITAMBO         ZIMBABWE                       15                1        0     410
24 months   ZVITAMBO         ZIMBABWE                       16                0        0     410
24 months   ZVITAMBO         ZIMBABWE                       16                1        0     410
24 months   ZVITAMBO         ZIMBABWE                       17                0        0     410
24 months   ZVITAMBO         ZIMBABWE                       17                1        0     410
24 months   ZVITAMBO         ZIMBABWE                       18                0        0     410
24 months   ZVITAMBO         ZIMBABWE                       18                1        0     410
24 months   ZVITAMBO         ZIMBABWE                       19                0        0     410
24 months   ZVITAMBO         ZIMBABWE                       19                1        0     410
24 months   ZVITAMBO         ZIMBABWE                       20                0        0     410
24 months   ZVITAMBO         ZIMBABWE                       20                1        0     410
24 months   ZVITAMBO         ZIMBABWE                       24                0        0     410
24 months   ZVITAMBO         ZIMBABWE                       24                1        0     410
24 months   ZVITAMBO         ZIMBABWE                       25                0        0     410
24 months   ZVITAMBO         ZIMBABWE                       25                1        0     410
24 months   ZVITAMBO         ZIMBABWE                       27                0        0     410
24 months   ZVITAMBO         ZIMBABWE                       27                1        0     410


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
















