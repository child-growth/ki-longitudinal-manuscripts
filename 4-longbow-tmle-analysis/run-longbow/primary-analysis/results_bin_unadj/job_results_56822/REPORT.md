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

**Outcome Variable:** ever_sstunted

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

agecat        studyid          country                        feducyrs    ever_sstunted   n_cell       n
------------  ---------------  -----------------------------  ---------  --------------  -------  ------
0-24 months   COHORTS          GUATEMALA                      0                       0      294    1250
0-24 months   COHORTS          GUATEMALA                      0                       1      273    1250
0-24 months   COHORTS          GUATEMALA                      1                       0       34    1250
0-24 months   COHORTS          GUATEMALA                      1                       1       35    1250
0-24 months   COHORTS          GUATEMALA                      2                       0      117    1250
0-24 months   COHORTS          GUATEMALA                      2                       1      100    1250
0-24 months   COHORTS          GUATEMALA                      3                       0       86    1250
0-24 months   COHORTS          GUATEMALA                      3                       1       77    1250
0-24 months   COHORTS          GUATEMALA                      4                       0       37    1250
0-24 months   COHORTS          GUATEMALA                      4                       1       42    1250
0-24 months   COHORTS          GUATEMALA                      5                       0       16    1250
0-24 months   COHORTS          GUATEMALA                      5                       1       15    1250
0-24 months   COHORTS          GUATEMALA                      6                       0       64    1250
0-24 months   COHORTS          GUATEMALA                      6                       1       44    1250
0-24 months   COHORTS          GUATEMALA                      7                       0        4    1250
0-24 months   COHORTS          GUATEMALA                      7                       1        0    1250
0-24 months   COHORTS          GUATEMALA                      8                       0        1    1250
0-24 months   COHORTS          GUATEMALA                      8                       1        1    1250
0-24 months   COHORTS          GUATEMALA                      9                       0        0    1250
0-24 months   COHORTS          GUATEMALA                      9                       1        1    1250
0-24 months   COHORTS          GUATEMALA                      10                      0        1    1250
0-24 months   COHORTS          GUATEMALA                      10                      1        0    1250
0-24 months   COHORTS          GUATEMALA                      11                      0        0    1250
0-24 months   COHORTS          GUATEMALA                      11                      1        0    1250
0-24 months   COHORTS          GUATEMALA                      12                      0        4    1250
0-24 months   COHORTS          GUATEMALA                      12                      1        2    1250
0-24 months   COHORTS          GUATEMALA                      13                      0        0    1250
0-24 months   COHORTS          GUATEMALA                      13                      1        0    1250
0-24 months   COHORTS          GUATEMALA                      14                      0        1    1250
0-24 months   COHORTS          GUATEMALA                      14                      1        0    1250
0-24 months   COHORTS          GUATEMALA                      15                      0        0    1250
0-24 months   COHORTS          GUATEMALA                      15                      1        1    1250
0-24 months   COHORTS          GUATEMALA                      16                      0        0    1250
0-24 months   COHORTS          GUATEMALA                      16                      1        0    1250
0-24 months   COHORTS          GUATEMALA                      17                      0        0    1250
0-24 months   COHORTS          GUATEMALA                      17                      1        0    1250
0-24 months   COHORTS          GUATEMALA                      18                      0        0    1250
0-24 months   COHORTS          GUATEMALA                      18                      1        0    1250
0-24 months   COHORTS          GUATEMALA                      19                      0        0    1250
0-24 months   COHORTS          GUATEMALA                      19                      1        0    1250
0-24 months   COHORTS          GUATEMALA                      20                      0        0    1250
0-24 months   COHORTS          GUATEMALA                      20                      1        0    1250
0-24 months   COHORTS          GUATEMALA                      21                      0        0    1250
0-24 months   COHORTS          GUATEMALA                      21                      1        0    1250
0-24 months   COHORTS          GUATEMALA                      24                      0        0    1250
0-24 months   COHORTS          GUATEMALA                      24                      1        0    1250
0-24 months   COHORTS          GUATEMALA                      25                      0        0    1250
0-24 months   COHORTS          GUATEMALA                      25                      1        0    1250
0-24 months   COHORTS          GUATEMALA                      27                      0        0    1250
0-24 months   COHORTS          GUATEMALA                      27                      1        0    1250
0-24 months   COHORTS          INDIA                          0                       0       98    1447
0-24 months   COHORTS          INDIA                          0                       1       26    1447
0-24 months   COHORTS          INDIA                          1                       0        0    1447
0-24 months   COHORTS          INDIA                          1                       1        0    1447
0-24 months   COHORTS          INDIA                          2                       0        0    1447
0-24 months   COHORTS          INDIA                          2                       1        0    1447
0-24 months   COHORTS          INDIA                          3                       0      107    1447
0-24 months   COHORTS          INDIA                          3                       1       27    1447
0-24 months   COHORTS          INDIA                          4                       0        0    1447
0-24 months   COHORTS          INDIA                          4                       1        0    1447
0-24 months   COHORTS          INDIA                          5                       0        0    1447
0-24 months   COHORTS          INDIA                          5                       1        0    1447
0-24 months   COHORTS          INDIA                          6                       0        0    1447
0-24 months   COHORTS          INDIA                          6                       1        0    1447
0-24 months   COHORTS          INDIA                          7                       0        0    1447
0-24 months   COHORTS          INDIA                          7                       1        0    1447
0-24 months   COHORTS          INDIA                          8                       0      192    1447
0-24 months   COHORTS          INDIA                          8                       1       22    1447
0-24 months   COHORTS          INDIA                          9                       0        0    1447
0-24 months   COHORTS          INDIA                          9                       1        0    1447
0-24 months   COHORTS          INDIA                          10                      0        0    1447
0-24 months   COHORTS          INDIA                          10                      1        0    1447
0-24 months   COHORTS          INDIA                          11                      0        0    1447
0-24 months   COHORTS          INDIA                          11                      1        0    1447
0-24 months   COHORTS          INDIA                          12                      0      365    1447
0-24 months   COHORTS          INDIA                          12                      1       43    1447
0-24 months   COHORTS          INDIA                          13                      0        0    1447
0-24 months   COHORTS          INDIA                          13                      1        0    1447
0-24 months   COHORTS          INDIA                          14                      0      141    1447
0-24 months   COHORTS          INDIA                          14                      1       17    1447
0-24 months   COHORTS          INDIA                          15                      0      267    1447
0-24 months   COHORTS          INDIA                          15                      1       16    1447
0-24 months   COHORTS          INDIA                          16                      0        0    1447
0-24 months   COHORTS          INDIA                          16                      1        0    1447
0-24 months   COHORTS          INDIA                          17                      0      117    1447
0-24 months   COHORTS          INDIA                          17                      1        9    1447
0-24 months   COHORTS          INDIA                          18                      0        0    1447
0-24 months   COHORTS          INDIA                          18                      1        0    1447
0-24 months   COHORTS          INDIA                          19                      0        0    1447
0-24 months   COHORTS          INDIA                          19                      1        0    1447
0-24 months   COHORTS          INDIA                          20                      0        0    1447
0-24 months   COHORTS          INDIA                          20                      1        0    1447
0-24 months   COHORTS          INDIA                          21                      0        0    1447
0-24 months   COHORTS          INDIA                          21                      1        0    1447
0-24 months   COHORTS          INDIA                          24                      0        0    1447
0-24 months   COHORTS          INDIA                          24                      1        0    1447
0-24 months   COHORTS          INDIA                          25                      0        0    1447
0-24 months   COHORTS          INDIA                          25                      1        0    1447
0-24 months   COHORTS          INDIA                          27                      0        0    1447
0-24 months   COHORTS          INDIA                          27                      1        0    1447
0-24 months   COHORTS          PHILIPPINES                    0                       0       26    2880
0-24 months   COHORTS          PHILIPPINES                    0                       1       34    2880
0-24 months   COHORTS          PHILIPPINES                    1                       0       18    2880
0-24 months   COHORTS          PHILIPPINES                    1                       1       18    2880
0-24 months   COHORTS          PHILIPPINES                    2                       0       38    2880
0-24 months   COHORTS          PHILIPPINES                    2                       1       58    2880
0-24 months   COHORTS          PHILIPPINES                    3                       0       91    2880
0-24 months   COHORTS          PHILIPPINES                    3                       1       78    2880
0-24 months   COHORTS          PHILIPPINES                    4                       0      145    2880
0-24 months   COHORTS          PHILIPPINES                    4                       1      118    2880
0-24 months   COHORTS          PHILIPPINES                    5                       0      106    2880
0-24 months   COHORTS          PHILIPPINES                    5                       1       98    2880
0-24 months   COHORTS          PHILIPPINES                    6                       0      366    2880
0-24 months   COHORTS          PHILIPPINES                    6                       1      279    2880
0-24 months   COHORTS          PHILIPPINES                    7                       0      105    2880
0-24 months   COHORTS          PHILIPPINES                    7                       1       46    2880
0-24 months   COHORTS          PHILIPPINES                    8                       0      154    2880
0-24 months   COHORTS          PHILIPPINES                    8                       1       71    2880
0-24 months   COHORTS          PHILIPPINES                    9                       0      135    2880
0-24 months   COHORTS          PHILIPPINES                    9                       1       62    2880
0-24 months   COHORTS          PHILIPPINES                    10                      0      246    2880
0-24 months   COHORTS          PHILIPPINES                    10                      1       85    2880
0-24 months   COHORTS          PHILIPPINES                    11                      0       48    2880
0-24 months   COHORTS          PHILIPPINES                    11                      1       17    2880
0-24 months   COHORTS          PHILIPPINES                    12                      0      147    2880
0-24 months   COHORTS          PHILIPPINES                    12                      1       33    2880
0-24 months   COHORTS          PHILIPPINES                    13                      0       54    2880
0-24 months   COHORTS          PHILIPPINES                    13                      1        9    2880
0-24 months   COHORTS          PHILIPPINES                    14                      0      122    2880
0-24 months   COHORTS          PHILIPPINES                    14                      1       25    2880
0-24 months   COHORTS          PHILIPPINES                    15                      0       32    2880
0-24 months   COHORTS          PHILIPPINES                    15                      1        4    2880
0-24 months   COHORTS          PHILIPPINES                    16                      0        6    2880
0-24 months   COHORTS          PHILIPPINES                    16                      1        2    2880
0-24 months   COHORTS          PHILIPPINES                    17                      0        2    2880
0-24 months   COHORTS          PHILIPPINES                    17                      1        0    2880
0-24 months   COHORTS          PHILIPPINES                    18                      0        2    2880
0-24 months   COHORTS          PHILIPPINES                    18                      1        0    2880
0-24 months   COHORTS          PHILIPPINES                    19                      0        0    2880
0-24 months   COHORTS          PHILIPPINES                    19                      1        0    2880
0-24 months   COHORTS          PHILIPPINES                    20                      0        0    2880
0-24 months   COHORTS          PHILIPPINES                    20                      1        0    2880
0-24 months   COHORTS          PHILIPPINES                    21                      0        0    2880
0-24 months   COHORTS          PHILIPPINES                    21                      1        0    2880
0-24 months   COHORTS          PHILIPPINES                    24                      0        0    2880
0-24 months   COHORTS          PHILIPPINES                    24                      1        0    2880
0-24 months   COHORTS          PHILIPPINES                    25                      0        0    2880
0-24 months   COHORTS          PHILIPPINES                    25                      1        0    2880
0-24 months   COHORTS          PHILIPPINES                    27                      0        0    2880
0-24 months   COHORTS          PHILIPPINES                    27                      1        0    2880
0-24 months   GMS-Nepal        NEPAL                          0                       0      217     696
0-24 months   GMS-Nepal        NEPAL                          0                       1       79     696
0-24 months   GMS-Nepal        NEPAL                          1                       0        0     696
0-24 months   GMS-Nepal        NEPAL                          1                       1        0     696
0-24 months   GMS-Nepal        NEPAL                          2                       0        0     696
0-24 months   GMS-Nepal        NEPAL                          2                       1        0     696
0-24 months   GMS-Nepal        NEPAL                          3                       0        0     696
0-24 months   GMS-Nepal        NEPAL                          3                       1        0     696
0-24 months   GMS-Nepal        NEPAL                          4                       0        0     696
0-24 months   GMS-Nepal        NEPAL                          4                       1        0     696
0-24 months   GMS-Nepal        NEPAL                          5                       0       83     696
0-24 months   GMS-Nepal        NEPAL                          5                       1       27     696
0-24 months   GMS-Nepal        NEPAL                          6                       0        0     696
0-24 months   GMS-Nepal        NEPAL                          6                       1        0     696
0-24 months   GMS-Nepal        NEPAL                          7                       0        0     696
0-24 months   GMS-Nepal        NEPAL                          7                       1        0     696
0-24 months   GMS-Nepal        NEPAL                          8                       0       92     696
0-24 months   GMS-Nepal        NEPAL                          8                       1       25     696
0-24 months   GMS-Nepal        NEPAL                          9                       0        0     696
0-24 months   GMS-Nepal        NEPAL                          9                       1        0     696
0-24 months   GMS-Nepal        NEPAL                          10                      0      102     696
0-24 months   GMS-Nepal        NEPAL                          10                      1       32     696
0-24 months   GMS-Nepal        NEPAL                          11                      0        0     696
0-24 months   GMS-Nepal        NEPAL                          11                      1        0     696
0-24 months   GMS-Nepal        NEPAL                          12                      0       33     696
0-24 months   GMS-Nepal        NEPAL                          12                      1        6     696
0-24 months   GMS-Nepal        NEPAL                          13                      0        0     696
0-24 months   GMS-Nepal        NEPAL                          13                      1        0     696
0-24 months   GMS-Nepal        NEPAL                          14                      0        0     696
0-24 months   GMS-Nepal        NEPAL                          14                      1        0     696
0-24 months   GMS-Nepal        NEPAL                          15                      0        0     696
0-24 months   GMS-Nepal        NEPAL                          15                      1        0     696
0-24 months   GMS-Nepal        NEPAL                          16                      0        0     696
0-24 months   GMS-Nepal        NEPAL                          16                      1        0     696
0-24 months   GMS-Nepal        NEPAL                          17                      0        0     696
0-24 months   GMS-Nepal        NEPAL                          17                      1        0     696
0-24 months   GMS-Nepal        NEPAL                          18                      0        0     696
0-24 months   GMS-Nepal        NEPAL                          18                      1        0     696
0-24 months   GMS-Nepal        NEPAL                          19                      0        0     696
0-24 months   GMS-Nepal        NEPAL                          19                      1        0     696
0-24 months   GMS-Nepal        NEPAL                          20                      0        0     696
0-24 months   GMS-Nepal        NEPAL                          20                      1        0     696
0-24 months   GMS-Nepal        NEPAL                          21                      0        0     696
0-24 months   GMS-Nepal        NEPAL                          21                      1        0     696
0-24 months   GMS-Nepal        NEPAL                          24                      0        0     696
0-24 months   GMS-Nepal        NEPAL                          24                      1        0     696
0-24 months   GMS-Nepal        NEPAL                          25                      0        0     696
0-24 months   GMS-Nepal        NEPAL                          25                      1        0     696
0-24 months   GMS-Nepal        NEPAL                          27                      0        0     696
0-24 months   GMS-Nepal        NEPAL                          27                      1        0     696
0-24 months   LCNI-5           MALAWI                         0                       0      226     813
0-24 months   LCNI-5           MALAWI                         0                       1       65     813
0-24 months   LCNI-5           MALAWI                         1                       0        8     813
0-24 months   LCNI-5           MALAWI                         1                       1        3     813
0-24 months   LCNI-5           MALAWI                         2                       0       25     813
0-24 months   LCNI-5           MALAWI                         2                       1        7     813
0-24 months   LCNI-5           MALAWI                         3                       0       30     813
0-24 months   LCNI-5           MALAWI                         3                       1        9     813
0-24 months   LCNI-5           MALAWI                         4                       0       47     813
0-24 months   LCNI-5           MALAWI                         4                       1       12     813
0-24 months   LCNI-5           MALAWI                         5                       0       50     813
0-24 months   LCNI-5           MALAWI                         5                       1       11     813
0-24 months   LCNI-5           MALAWI                         6                       0       59     813
0-24 months   LCNI-5           MALAWI                         6                       1       10     813
0-24 months   LCNI-5           MALAWI                         7                       0       48     813
0-24 months   LCNI-5           MALAWI                         7                       1       20     813
0-24 months   LCNI-5           MALAWI                         8                       0       70     813
0-24 months   LCNI-5           MALAWI                         8                       1       21     813
0-24 months   LCNI-5           MALAWI                         9                       0       11     813
0-24 months   LCNI-5           MALAWI                         9                       1        1     813
0-24 months   LCNI-5           MALAWI                         10                      0       14     813
0-24 months   LCNI-5           MALAWI                         10                      1        2     813
0-24 months   LCNI-5           MALAWI                         11                      0        5     813
0-24 months   LCNI-5           MALAWI                         11                      1        2     813
0-24 months   LCNI-5           MALAWI                         12                      0       46     813
0-24 months   LCNI-5           MALAWI                         12                      1        6     813
0-24 months   LCNI-5           MALAWI                         13                      0        1     813
0-24 months   LCNI-5           MALAWI                         13                      1        0     813
0-24 months   LCNI-5           MALAWI                         14                      0        3     813
0-24 months   LCNI-5           MALAWI                         14                      1        0     813
0-24 months   LCNI-5           MALAWI                         15                      0        0     813
0-24 months   LCNI-5           MALAWI                         15                      1        0     813
0-24 months   LCNI-5           MALAWI                         16                      0        1     813
0-24 months   LCNI-5           MALAWI                         16                      1        0     813
0-24 months   LCNI-5           MALAWI                         17                      0        0     813
0-24 months   LCNI-5           MALAWI                         17                      1        0     813
0-24 months   LCNI-5           MALAWI                         18                      0        0     813
0-24 months   LCNI-5           MALAWI                         18                      1        0     813
0-24 months   LCNI-5           MALAWI                         19                      0        0     813
0-24 months   LCNI-5           MALAWI                         19                      1        0     813
0-24 months   LCNI-5           MALAWI                         20                      0        0     813
0-24 months   LCNI-5           MALAWI                         20                      1        0     813
0-24 months   LCNI-5           MALAWI                         21                      0        0     813
0-24 months   LCNI-5           MALAWI                         21                      1        0     813
0-24 months   LCNI-5           MALAWI                         24                      0        0     813
0-24 months   LCNI-5           MALAWI                         24                      1        0     813
0-24 months   LCNI-5           MALAWI                         25                      0        0     813
0-24 months   LCNI-5           MALAWI                         25                      1        0     813
0-24 months   LCNI-5           MALAWI                         27                      0        0     813
0-24 months   LCNI-5           MALAWI                         27                      1        0     813
0-24 months   MAL-ED           BANGLADESH                     0                       0        0     149
0-24 months   MAL-ED           BANGLADESH                     0                       1        0     149
0-24 months   MAL-ED           BANGLADESH                     1                       0        7     149
0-24 months   MAL-ED           BANGLADESH                     1                       1        0     149
0-24 months   MAL-ED           BANGLADESH                     2                       0        9     149
0-24 months   MAL-ED           BANGLADESH                     2                       1        3     149
0-24 months   MAL-ED           BANGLADESH                     3                       0        7     149
0-24 months   MAL-ED           BANGLADESH                     3                       1        5     149
0-24 months   MAL-ED           BANGLADESH                     4                       0        9     149
0-24 months   MAL-ED           BANGLADESH                     4                       1        0     149
0-24 months   MAL-ED           BANGLADESH                     5                       0       24     149
0-24 months   MAL-ED           BANGLADESH                     5                       1       13     149
0-24 months   MAL-ED           BANGLADESH                     6                       0        6     149
0-24 months   MAL-ED           BANGLADESH                     6                       1        2     149
0-24 months   MAL-ED           BANGLADESH                     7                       0        9     149
0-24 months   MAL-ED           BANGLADESH                     7                       1        1     149
0-24 months   MAL-ED           BANGLADESH                     8                       0       16     149
0-24 months   MAL-ED           BANGLADESH                     8                       1        2     149
0-24 months   MAL-ED           BANGLADESH                     9                       0       10     149
0-24 months   MAL-ED           BANGLADESH                     9                       1        4     149
0-24 months   MAL-ED           BANGLADESH                     10                      0       10     149
0-24 months   MAL-ED           BANGLADESH                     10                      1        0     149
0-24 months   MAL-ED           BANGLADESH                     11                      0        0     149
0-24 months   MAL-ED           BANGLADESH                     11                      1        0     149
0-24 months   MAL-ED           BANGLADESH                     12                      0        9     149
0-24 months   MAL-ED           BANGLADESH                     12                      1        1     149
0-24 months   MAL-ED           BANGLADESH                     13                      0        0     149
0-24 months   MAL-ED           BANGLADESH                     13                      1        0     149
0-24 months   MAL-ED           BANGLADESH                     14                      0        0     149
0-24 months   MAL-ED           BANGLADESH                     14                      1        0     149
0-24 months   MAL-ED           BANGLADESH                     15                      0        0     149
0-24 months   MAL-ED           BANGLADESH                     15                      1        0     149
0-24 months   MAL-ED           BANGLADESH                     16                      0        2     149
0-24 months   MAL-ED           BANGLADESH                     16                      1        0     149
0-24 months   MAL-ED           BANGLADESH                     17                      0        0     149
0-24 months   MAL-ED           BANGLADESH                     17                      1        0     149
0-24 months   MAL-ED           BANGLADESH                     18                      0        0     149
0-24 months   MAL-ED           BANGLADESH                     18                      1        0     149
0-24 months   MAL-ED           BANGLADESH                     19                      0        0     149
0-24 months   MAL-ED           BANGLADESH                     19                      1        0     149
0-24 months   MAL-ED           BANGLADESH                     20                      0        0     149
0-24 months   MAL-ED           BANGLADESH                     20                      1        0     149
0-24 months   MAL-ED           BANGLADESH                     21                      0        0     149
0-24 months   MAL-ED           BANGLADESH                     21                      1        0     149
0-24 months   MAL-ED           BANGLADESH                     24                      0        0     149
0-24 months   MAL-ED           BANGLADESH                     24                      1        0     149
0-24 months   MAL-ED           BANGLADESH                     25                      0        0     149
0-24 months   MAL-ED           BANGLADESH                     25                      1        0     149
0-24 months   MAL-ED           BANGLADESH                     27                      0        0     149
0-24 months   MAL-ED           BANGLADESH                     27                      1        0     149
0-24 months   MAL-ED           INDIA                          0                       0        0     147
0-24 months   MAL-ED           INDIA                          0                       1        0     147
0-24 months   MAL-ED           INDIA                          1                       0        0     147
0-24 months   MAL-ED           INDIA                          1                       1        0     147
0-24 months   MAL-ED           INDIA                          2                       0        5     147
0-24 months   MAL-ED           INDIA                          2                       1        1     147
0-24 months   MAL-ED           INDIA                          3                       0       11     147
0-24 months   MAL-ED           INDIA                          3                       1        1     147
0-24 months   MAL-ED           INDIA                          4                       0        6     147
0-24 months   MAL-ED           INDIA                          4                       1        1     147
0-24 months   MAL-ED           INDIA                          5                       0       22     147
0-24 months   MAL-ED           INDIA                          5                       1       12     147
0-24 months   MAL-ED           INDIA                          6                       0       10     147
0-24 months   MAL-ED           INDIA                          6                       1        1     147
0-24 months   MAL-ED           INDIA                          7                       0       12     147
0-24 months   MAL-ED           INDIA                          7                       1        0     147
0-24 months   MAL-ED           INDIA                          8                       0       14     147
0-24 months   MAL-ED           INDIA                          8                       1        7     147
0-24 months   MAL-ED           INDIA                          9                       0       22     147
0-24 months   MAL-ED           INDIA                          9                       1        5     147
0-24 months   MAL-ED           INDIA                          10                      0        6     147
0-24 months   MAL-ED           INDIA                          10                      1        0     147
0-24 months   MAL-ED           INDIA                          11                      0        0     147
0-24 months   MAL-ED           INDIA                          11                      1        2     147
0-24 months   MAL-ED           INDIA                          12                      0        3     147
0-24 months   MAL-ED           INDIA                          12                      1        0     147
0-24 months   MAL-ED           INDIA                          13                      0        1     147
0-24 months   MAL-ED           INDIA                          13                      1        0     147
0-24 months   MAL-ED           INDIA                          14                      0        2     147
0-24 months   MAL-ED           INDIA                          14                      1        0     147
0-24 months   MAL-ED           INDIA                          15                      0        2     147
0-24 months   MAL-ED           INDIA                          15                      1        0     147
0-24 months   MAL-ED           INDIA                          16                      0        0     147
0-24 months   MAL-ED           INDIA                          16                      1        0     147
0-24 months   MAL-ED           INDIA                          17                      0        0     147
0-24 months   MAL-ED           INDIA                          17                      1        0     147
0-24 months   MAL-ED           INDIA                          18                      0        1     147
0-24 months   MAL-ED           INDIA                          18                      1        0     147
0-24 months   MAL-ED           INDIA                          19                      0        0     147
0-24 months   MAL-ED           INDIA                          19                      1        0     147
0-24 months   MAL-ED           INDIA                          20                      0        0     147
0-24 months   MAL-ED           INDIA                          20                      1        0     147
0-24 months   MAL-ED           INDIA                          21                      0        0     147
0-24 months   MAL-ED           INDIA                          21                      1        0     147
0-24 months   MAL-ED           INDIA                          24                      0        0     147
0-24 months   MAL-ED           INDIA                          24                      1        0     147
0-24 months   MAL-ED           INDIA                          25                      0        0     147
0-24 months   MAL-ED           INDIA                          25                      1        0     147
0-24 months   MAL-ED           INDIA                          27                      0        0     147
0-24 months   MAL-ED           INDIA                          27                      1        0     147
0-24 months   MAL-ED           NEPAL                          0                       0        0      98
0-24 months   MAL-ED           NEPAL                          0                       1        0      98
0-24 months   MAL-ED           NEPAL                          1                       0        0      98
0-24 months   MAL-ED           NEPAL                          1                       1        0      98
0-24 months   MAL-ED           NEPAL                          2                       0        4      98
0-24 months   MAL-ED           NEPAL                          2                       1        0      98
0-24 months   MAL-ED           NEPAL                          3                       0        2      98
0-24 months   MAL-ED           NEPAL                          3                       1        1      98
0-24 months   MAL-ED           NEPAL                          4                       0       10      98
0-24 months   MAL-ED           NEPAL                          4                       1        1      98
0-24 months   MAL-ED           NEPAL                          5                       0        6      98
0-24 months   MAL-ED           NEPAL                          5                       1        0      98
0-24 months   MAL-ED           NEPAL                          6                       0        4      98
0-24 months   MAL-ED           NEPAL                          6                       1        0      98
0-24 months   MAL-ED           NEPAL                          7                       0        8      98
0-24 months   MAL-ED           NEPAL                          7                       1        1      98
0-24 months   MAL-ED           NEPAL                          8                       0        9      98
0-24 months   MAL-ED           NEPAL                          8                       1        3      98
0-24 months   MAL-ED           NEPAL                          9                       0        7      98
0-24 months   MAL-ED           NEPAL                          9                       1        0      98
0-24 months   MAL-ED           NEPAL                          10                      0       24      98
0-24 months   MAL-ED           NEPAL                          10                      1        3      98
0-24 months   MAL-ED           NEPAL                          11                      0        1      98
0-24 months   MAL-ED           NEPAL                          11                      1        0      98
0-24 months   MAL-ED           NEPAL                          12                      0        8      98
0-24 months   MAL-ED           NEPAL                          12                      1        0      98
0-24 months   MAL-ED           NEPAL                          13                      0        0      98
0-24 months   MAL-ED           NEPAL                          13                      1        0      98
0-24 months   MAL-ED           NEPAL                          14                      0        0      98
0-24 months   MAL-ED           NEPAL                          14                      1        0      98
0-24 months   MAL-ED           NEPAL                          15                      0        1      98
0-24 months   MAL-ED           NEPAL                          15                      1        0      98
0-24 months   MAL-ED           NEPAL                          16                      0        1      98
0-24 months   MAL-ED           NEPAL                          16                      1        0      98
0-24 months   MAL-ED           NEPAL                          17                      0        3      98
0-24 months   MAL-ED           NEPAL                          17                      1        0      98
0-24 months   MAL-ED           NEPAL                          18                      0        1      98
0-24 months   MAL-ED           NEPAL                          18                      1        0      98
0-24 months   MAL-ED           NEPAL                          19                      0        0      98
0-24 months   MAL-ED           NEPAL                          19                      1        0      98
0-24 months   MAL-ED           NEPAL                          20                      0        0      98
0-24 months   MAL-ED           NEPAL                          20                      1        0      98
0-24 months   MAL-ED           NEPAL                          21                      0        0      98
0-24 months   MAL-ED           NEPAL                          21                      1        0      98
0-24 months   MAL-ED           NEPAL                          24                      0        0      98
0-24 months   MAL-ED           NEPAL                          24                      1        0      98
0-24 months   MAL-ED           NEPAL                          25                      0        0      98
0-24 months   MAL-ED           NEPAL                          25                      1        0      98
0-24 months   MAL-ED           NEPAL                          27                      0        0      98
0-24 months   MAL-ED           NEPAL                          27                      1        0      98
0-24 months   MAL-ED           PERU                           0                       0        0     250
0-24 months   MAL-ED           PERU                           0                       1        1     250
0-24 months   MAL-ED           PERU                           1                       0        2     250
0-24 months   MAL-ED           PERU                           1                       1        0     250
0-24 months   MAL-ED           PERU                           2                       0        0     250
0-24 months   MAL-ED           PERU                           2                       1        1     250
0-24 months   MAL-ED           PERU                           3                       0        8     250
0-24 months   MAL-ED           PERU                           3                       1        1     250
0-24 months   MAL-ED           PERU                           4                       0        4     250
0-24 months   MAL-ED           PERU                           4                       1        0     250
0-24 months   MAL-ED           PERU                           5                       0        4     250
0-24 months   MAL-ED           PERU                           5                       1        4     250
0-24 months   MAL-ED           PERU                           6                       0       20     250
0-24 months   MAL-ED           PERU                           6                       1        6     250
0-24 months   MAL-ED           PERU                           7                       0       15     250
0-24 months   MAL-ED           PERU                           7                       1        3     250
0-24 months   MAL-ED           PERU                           8                       0       18     250
0-24 months   MAL-ED           PERU                           8                       1        4     250
0-24 months   MAL-ED           PERU                           9                       0       19     250
0-24 months   MAL-ED           PERU                           9                       1        7     250
0-24 months   MAL-ED           PERU                           10                      0       12     250
0-24 months   MAL-ED           PERU                           10                      1        1     250
0-24 months   MAL-ED           PERU                           11                      0       83     250
0-24 months   MAL-ED           PERU                           11                      1       16     250
0-24 months   MAL-ED           PERU                           12                      0        0     250
0-24 months   MAL-ED           PERU                           12                      1        1     250
0-24 months   MAL-ED           PERU                           13                      0        3     250
0-24 months   MAL-ED           PERU                           13                      1        2     250
0-24 months   MAL-ED           PERU                           14                      0        3     250
0-24 months   MAL-ED           PERU                           14                      1        2     250
0-24 months   MAL-ED           PERU                           15                      0        1     250
0-24 months   MAL-ED           PERU                           15                      1        0     250
0-24 months   MAL-ED           PERU                           16                      0        1     250
0-24 months   MAL-ED           PERU                           16                      1        0     250
0-24 months   MAL-ED           PERU                           17                      0        1     250
0-24 months   MAL-ED           PERU                           17                      1        0     250
0-24 months   MAL-ED           PERU                           18                      0        4     250
0-24 months   MAL-ED           PERU                           18                      1        1     250
0-24 months   MAL-ED           PERU                           19                      0        0     250
0-24 months   MAL-ED           PERU                           19                      1        0     250
0-24 months   MAL-ED           PERU                           20                      0        2     250
0-24 months   MAL-ED           PERU                           20                      1        0     250
0-24 months   MAL-ED           PERU                           21                      0        0     250
0-24 months   MAL-ED           PERU                           21                      1        0     250
0-24 months   MAL-ED           PERU                           24                      0        0     250
0-24 months   MAL-ED           PERU                           24                      1        0     250
0-24 months   MAL-ED           PERU                           25                      0        0     250
0-24 months   MAL-ED           PERU                           25                      1        0     250
0-24 months   MAL-ED           PERU                           27                      0        0     250
0-24 months   MAL-ED           PERU                           27                      1        0     250
0-24 months   MAL-ED           SOUTH AFRICA                   0                       0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   0                       1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   1                       0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   1                       1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   2                       0        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   2                       1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   3                       0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   3                       1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   4                       0        3     110
0-24 months   MAL-ED           SOUTH AFRICA                   4                       1        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   5                       0        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   5                       1        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   6                       0        6     110
0-24 months   MAL-ED           SOUTH AFRICA                   6                       1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   7                       0        4     110
0-24 months   MAL-ED           SOUTH AFRICA                   7                       1        2     110
0-24 months   MAL-ED           SOUTH AFRICA                   8                       0       10     110
0-24 months   MAL-ED           SOUTH AFRICA                   8                       1        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   9                       0        5     110
0-24 months   MAL-ED           SOUTH AFRICA                   9                       1        2     110
0-24 months   MAL-ED           SOUTH AFRICA                   10                      0        6     110
0-24 months   MAL-ED           SOUTH AFRICA                   10                      1        4     110
0-24 months   MAL-ED           SOUTH AFRICA                   11                      0       14     110
0-24 months   MAL-ED           SOUTH AFRICA                   11                      1        6     110
0-24 months   MAL-ED           SOUTH AFRICA                   12                      0       28     110
0-24 months   MAL-ED           SOUTH AFRICA                   12                      1        8     110
0-24 months   MAL-ED           SOUTH AFRICA                   13                      0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   13                      1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   14                      0        3     110
0-24 months   MAL-ED           SOUTH AFRICA                   14                      1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   15                      0        3     110
0-24 months   MAL-ED           SOUTH AFRICA                   15                      1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   16                      0        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   16                      1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   17                      0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   17                      1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   18                      0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   18                      1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   19                      0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   19                      1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   20                      0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   20                      1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   21                      0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   21                      1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   24                      0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   24                      1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   25                      0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   25                      1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   27                      0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   27                      1        0     110
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        9     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        5     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                       0        4     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                       1        9     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                       0        6     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                       1       12     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                       0        9     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                       1        7     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                       0        6     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                       1        7     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                       0        6     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                       1        2     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                       0       60     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                       1       58     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                       0        1     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                       1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                       0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                       1        2     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                      0        1     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                      1        3     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                      0        1     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                      1        2     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                      0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                      1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                      0        1     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                      1        1     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                      0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                      1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                      0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                      1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                      0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                      1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                      0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                      1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                      0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                      1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                      0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                      1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                      0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                      1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                      0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                      1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                      0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                      1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                      0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                      1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                      0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                      1        0     212
0-24 months   NIH-Crypto       BANGLADESH                     0                       0      147     758
0-24 months   NIH-Crypto       BANGLADESH                     0                       1       27     758
0-24 months   NIH-Crypto       BANGLADESH                     1                       0       19     758
0-24 months   NIH-Crypto       BANGLADESH                     1                       1        2     758
0-24 months   NIH-Crypto       BANGLADESH                     2                       0       12     758
0-24 months   NIH-Crypto       BANGLADESH                     2                       1        1     758
0-24 months   NIH-Crypto       BANGLADESH                     3                       0       32     758
0-24 months   NIH-Crypto       BANGLADESH                     3                       1        2     758
0-24 months   NIH-Crypto       BANGLADESH                     4                       0       34     758
0-24 months   NIH-Crypto       BANGLADESH                     4                       1        6     758
0-24 months   NIH-Crypto       BANGLADESH                     5                       0       74     758
0-24 months   NIH-Crypto       BANGLADESH                     5                       1       14     758
0-24 months   NIH-Crypto       BANGLADESH                     6                       0       28     758
0-24 months   NIH-Crypto       BANGLADESH                     6                       1        7     758
0-24 months   NIH-Crypto       BANGLADESH                     7                       0       46     758
0-24 months   NIH-Crypto       BANGLADESH                     7                       1       11     758
0-24 months   NIH-Crypto       BANGLADESH                     8                       0       80     758
0-24 months   NIH-Crypto       BANGLADESH                     8                       1       10     758
0-24 months   NIH-Crypto       BANGLADESH                     9                       0       77     758
0-24 months   NIH-Crypto       BANGLADESH                     9                       1        9     758
0-24 months   NIH-Crypto       BANGLADESH                     10                      0       48     758
0-24 months   NIH-Crypto       BANGLADESH                     10                      1        6     758
0-24 months   NIH-Crypto       BANGLADESH                     11                      0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     11                      1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     12                      0       32     758
0-24 months   NIH-Crypto       BANGLADESH                     12                      1        3     758
0-24 months   NIH-Crypto       BANGLADESH                     13                      0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     13                      1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     14                      0        8     758
0-24 months   NIH-Crypto       BANGLADESH                     14                      1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     15                      0       15     758
0-24 months   NIH-Crypto       BANGLADESH                     15                      1        1     758
0-24 months   NIH-Crypto       BANGLADESH                     16                      0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     16                      1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     17                      0        7     758
0-24 months   NIH-Crypto       BANGLADESH                     17                      1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     18                      0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     18                      1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     19                      0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     19                      1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     20                      0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     20                      1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     21                      0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     21                      1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     24                      0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     24                      1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     25                      0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     25                      1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     27                      0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     27                      1        0     758
0-24 months   PROBIT           BELARUS                        0                       0        0   16314
0-24 months   PROBIT           BELARUS                        0                       1        0   16314
0-24 months   PROBIT           BELARUS                        1                       0        0   16314
0-24 months   PROBIT           BELARUS                        1                       1        0   16314
0-24 months   PROBIT           BELARUS                        2                       0        0   16314
0-24 months   PROBIT           BELARUS                        2                       1        0   16314
0-24 months   PROBIT           BELARUS                        3                       0        0   16314
0-24 months   PROBIT           BELARUS                        3                       1        0   16314
0-24 months   PROBIT           BELARUS                        4                       0        0   16314
0-24 months   PROBIT           BELARUS                        4                       1        0   16314
0-24 months   PROBIT           BELARUS                        5                       0        0   16314
0-24 months   PROBIT           BELARUS                        5                       1        0   16314
0-24 months   PROBIT           BELARUS                        6                       0        0   16314
0-24 months   PROBIT           BELARUS                        6                       1        0   16314
0-24 months   PROBIT           BELARUS                        7                       0        0   16314
0-24 months   PROBIT           BELARUS                        7                       1        0   16314
0-24 months   PROBIT           BELARUS                        8                       0       24   16314
0-24 months   PROBIT           BELARUS                        8                       1        3   16314
0-24 months   PROBIT           BELARUS                        9                       0        0   16314
0-24 months   PROBIT           BELARUS                        9                       1        0   16314
0-24 months   PROBIT           BELARUS                        10                      0      349   16314
0-24 months   PROBIT           BELARUS                        10                      1       18   16314
0-24 months   PROBIT           BELARUS                        11                      0        0   16314
0-24 months   PROBIT           BELARUS                        11                      1        0   16314
0-24 months   PROBIT           BELARUS                        12                      0     5823   16314
0-24 months   PROBIT           BELARUS                        12                      1      201   16314
0-24 months   PROBIT           BELARUS                        13                      0     7013   16314
0-24 months   PROBIT           BELARUS                        13                      1      176   16314
0-24 months   PROBIT           BELARUS                        14                      0      437   16314
0-24 months   PROBIT           BELARUS                        14                      1        7   16314
0-24 months   PROBIT           BELARUS                        15                      0        0   16314
0-24 months   PROBIT           BELARUS                        15                      1        0   16314
0-24 months   PROBIT           BELARUS                        16                      0     2228   16314
0-24 months   PROBIT           BELARUS                        16                      1       35   16314
0-24 months   PROBIT           BELARUS                        17                      0        0   16314
0-24 months   PROBIT           BELARUS                        17                      1        0   16314
0-24 months   PROBIT           BELARUS                        18                      0        0   16314
0-24 months   PROBIT           BELARUS                        18                      1        0   16314
0-24 months   PROBIT           BELARUS                        19                      0        0   16314
0-24 months   PROBIT           BELARUS                        19                      1        0   16314
0-24 months   PROBIT           BELARUS                        20                      0        0   16314
0-24 months   PROBIT           BELARUS                        20                      1        0   16314
0-24 months   PROBIT           BELARUS                        21                      0        0   16314
0-24 months   PROBIT           BELARUS                        21                      1        0   16314
0-24 months   PROBIT           BELARUS                        24                      0        0   16314
0-24 months   PROBIT           BELARUS                        24                      1        0   16314
0-24 months   PROBIT           BELARUS                        25                      0        0   16314
0-24 months   PROBIT           BELARUS                        25                      1        0   16314
0-24 months   PROBIT           BELARUS                        27                      0        0   16314
0-24 months   PROBIT           BELARUS                        27                      1        0   16314
0-24 months   PROVIDE          BANGLADESH                     0                       0      166     700
0-24 months   PROVIDE          BANGLADESH                     0                       1       41     700
0-24 months   PROVIDE          BANGLADESH                     1                       0       12     700
0-24 months   PROVIDE          BANGLADESH                     1                       1        1     700
0-24 months   PROVIDE          BANGLADESH                     2                       0       14     700
0-24 months   PROVIDE          BANGLADESH                     2                       1        4     700
0-24 months   PROVIDE          BANGLADESH                     3                       0       26     700
0-24 months   PROVIDE          BANGLADESH                     3                       1        1     700
0-24 months   PROVIDE          BANGLADESH                     4                       0       42     700
0-24 months   PROVIDE          BANGLADESH                     4                       1       10     700
0-24 months   PROVIDE          BANGLADESH                     5                       0       74     700
0-24 months   PROVIDE          BANGLADESH                     5                       1        6     700
0-24 months   PROVIDE          BANGLADESH                     6                       0       22     700
0-24 months   PROVIDE          BANGLADESH                     6                       1        7     700
0-24 months   PROVIDE          BANGLADESH                     7                       0       39     700
0-24 months   PROVIDE          BANGLADESH                     7                       1        3     700
0-24 months   PROVIDE          BANGLADESH                     8                       0       59     700
0-24 months   PROVIDE          BANGLADESH                     8                       1        5     700
0-24 months   PROVIDE          BANGLADESH                     9                       0       56     700
0-24 months   PROVIDE          BANGLADESH                     9                       1        6     700
0-24 months   PROVIDE          BANGLADESH                     10                      0       35     700
0-24 months   PROVIDE          BANGLADESH                     10                      1        4     700
0-24 months   PROVIDE          BANGLADESH                     11                      0       22     700
0-24 months   PROVIDE          BANGLADESH                     11                      1        4     700
0-24 months   PROVIDE          BANGLADESH                     12                      0        3     700
0-24 months   PROVIDE          BANGLADESH                     12                      1        1     700
0-24 months   PROVIDE          BANGLADESH                     13                      0        0     700
0-24 months   PROVIDE          BANGLADESH                     13                      1        0     700
0-24 months   PROVIDE          BANGLADESH                     14                      0       19     700
0-24 months   PROVIDE          BANGLADESH                     14                      1        0     700
0-24 months   PROVIDE          BANGLADESH                     15                      0        8     700
0-24 months   PROVIDE          BANGLADESH                     15                      1        0     700
0-24 months   PROVIDE          BANGLADESH                     16                      0        7     700
0-24 months   PROVIDE          BANGLADESH                     16                      1        2     700
0-24 months   PROVIDE          BANGLADESH                     17                      0        0     700
0-24 months   PROVIDE          BANGLADESH                     17                      1        0     700
0-24 months   PROVIDE          BANGLADESH                     18                      0        0     700
0-24 months   PROVIDE          BANGLADESH                     18                      1        0     700
0-24 months   PROVIDE          BANGLADESH                     19                      0        1     700
0-24 months   PROVIDE          BANGLADESH                     19                      1        0     700
0-24 months   PROVIDE          BANGLADESH                     20                      0        0     700
0-24 months   PROVIDE          BANGLADESH                     20                      1        0     700
0-24 months   PROVIDE          BANGLADESH                     21                      0        0     700
0-24 months   PROVIDE          BANGLADESH                     21                      1        0     700
0-24 months   PROVIDE          BANGLADESH                     24                      0        0     700
0-24 months   PROVIDE          BANGLADESH                     24                      1        0     700
0-24 months   PROVIDE          BANGLADESH                     25                      0        0     700
0-24 months   PROVIDE          BANGLADESH                     25                      1        0     700
0-24 months   PROVIDE          BANGLADESH                     27                      0        0     700
0-24 months   PROVIDE          BANGLADESH                     27                      1        0     700
0-24 months   SAS-CompFeed     INDIA                          0                       0      114    1530
0-24 months   SAS-CompFeed     INDIA                          0                       1       82    1530
0-24 months   SAS-CompFeed     INDIA                          1                       0        0    1530
0-24 months   SAS-CompFeed     INDIA                          1                       1        0    1530
0-24 months   SAS-CompFeed     INDIA                          2                       0        4    1530
0-24 months   SAS-CompFeed     INDIA                          2                       1        3    1530
0-24 months   SAS-CompFeed     INDIA                          3                       0        8    1530
0-24 months   SAS-CompFeed     INDIA                          3                       1        7    1530
0-24 months   SAS-CompFeed     INDIA                          4                       0       14    1530
0-24 months   SAS-CompFeed     INDIA                          4                       1       11    1530
0-24 months   SAS-CompFeed     INDIA                          5                       0       58    1530
0-24 months   SAS-CompFeed     INDIA                          5                       1       36    1530
0-24 months   SAS-CompFeed     INDIA                          6                       0       15    1530
0-24 months   SAS-CompFeed     INDIA                          6                       1       14    1530
0-24 months   SAS-CompFeed     INDIA                          7                       0       69    1530
0-24 months   SAS-CompFeed     INDIA                          7                       1       48    1530
0-24 months   SAS-CompFeed     INDIA                          8                       0      106    1530
0-24 months   SAS-CompFeed     INDIA                          8                       1       65    1530
0-24 months   SAS-CompFeed     INDIA                          9                       0       73    1530
0-24 months   SAS-CompFeed     INDIA                          9                       1       25    1530
0-24 months   SAS-CompFeed     INDIA                          10                      0      280    1530
0-24 months   SAS-CompFeed     INDIA                          10                      1      109    1530
0-24 months   SAS-CompFeed     INDIA                          11                      0       28    1530
0-24 months   SAS-CompFeed     INDIA                          11                      1       14    1530
0-24 months   SAS-CompFeed     INDIA                          12                      0      169    1530
0-24 months   SAS-CompFeed     INDIA                          12                      1       59    1530
0-24 months   SAS-CompFeed     INDIA                          13                      0        6    1530
0-24 months   SAS-CompFeed     INDIA                          13                      1        1    1530
0-24 months   SAS-CompFeed     INDIA                          14                      0       11    1530
0-24 months   SAS-CompFeed     INDIA                          14                      1        6    1530
0-24 months   SAS-CompFeed     INDIA                          15                      0       46    1530
0-24 months   SAS-CompFeed     INDIA                          15                      1       19    1530
0-24 months   SAS-CompFeed     INDIA                          16                      0        6    1530
0-24 months   SAS-CompFeed     INDIA                          16                      1        4    1530
0-24 months   SAS-CompFeed     INDIA                          17                      0       13    1530
0-24 months   SAS-CompFeed     INDIA                          17                      1        2    1530
0-24 months   SAS-CompFeed     INDIA                          18                      0        3    1530
0-24 months   SAS-CompFeed     INDIA                          18                      1        0    1530
0-24 months   SAS-CompFeed     INDIA                          19                      0        1    1530
0-24 months   SAS-CompFeed     INDIA                          19                      1        0    1530
0-24 months   SAS-CompFeed     INDIA                          20                      0        1    1530
0-24 months   SAS-CompFeed     INDIA                          20                      1        0    1530
0-24 months   SAS-CompFeed     INDIA                          21                      0        0    1530
0-24 months   SAS-CompFeed     INDIA                          21                      1        0    1530
0-24 months   SAS-CompFeed     INDIA                          24                      0        0    1530
0-24 months   SAS-CompFeed     INDIA                          24                      1        0    1530
0-24 months   SAS-CompFeed     INDIA                          25                      0        0    1530
0-24 months   SAS-CompFeed     INDIA                          25                      1        0    1530
0-24 months   SAS-CompFeed     INDIA                          27                      0        0    1530
0-24 months   SAS-CompFeed     INDIA                          27                      1        0    1530
0-24 months   SAS-FoodSuppl    INDIA                          0                       0       81     418
0-24 months   SAS-FoodSuppl    INDIA                          0                       1       66     418
0-24 months   SAS-FoodSuppl    INDIA                          1                       0        1     418
0-24 months   SAS-FoodSuppl    INDIA                          1                       1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          2                       0        3     418
0-24 months   SAS-FoodSuppl    INDIA                          2                       1        7     418
0-24 months   SAS-FoodSuppl    INDIA                          3                       0        5     418
0-24 months   SAS-FoodSuppl    INDIA                          3                       1        2     418
0-24 months   SAS-FoodSuppl    INDIA                          4                       0        3     418
0-24 months   SAS-FoodSuppl    INDIA                          4                       1        8     418
0-24 months   SAS-FoodSuppl    INDIA                          5                       0       22     418
0-24 months   SAS-FoodSuppl    INDIA                          5                       1       33     418
0-24 months   SAS-FoodSuppl    INDIA                          6                       0        6     418
0-24 months   SAS-FoodSuppl    INDIA                          6                       1        6     418
0-24 months   SAS-FoodSuppl    INDIA                          7                       0       10     418
0-24 months   SAS-FoodSuppl    INDIA                          7                       1        6     418
0-24 months   SAS-FoodSuppl    INDIA                          8                       0       24     418
0-24 months   SAS-FoodSuppl    INDIA                          8                       1       25     418
0-24 months   SAS-FoodSuppl    INDIA                          9                       0        9     418
0-24 months   SAS-FoodSuppl    INDIA                          9                       1       17     418
0-24 months   SAS-FoodSuppl    INDIA                          10                      0       38     418
0-24 months   SAS-FoodSuppl    INDIA                          10                      1       22     418
0-24 months   SAS-FoodSuppl    INDIA                          11                      0        2     418
0-24 months   SAS-FoodSuppl    INDIA                          11                      1        1     418
0-24 months   SAS-FoodSuppl    INDIA                          12                      0        5     418
0-24 months   SAS-FoodSuppl    INDIA                          12                      1        5     418
0-24 months   SAS-FoodSuppl    INDIA                          13                      0        1     418
0-24 months   SAS-FoodSuppl    INDIA                          13                      1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          14                      0        5     418
0-24 months   SAS-FoodSuppl    INDIA                          14                      1        2     418
0-24 months   SAS-FoodSuppl    INDIA                          15                      0        2     418
0-24 months   SAS-FoodSuppl    INDIA                          15                      1        1     418
0-24 months   SAS-FoodSuppl    INDIA                          16                      0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          16                      1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          17                      0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          17                      1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          18                      0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          18                      1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          19                      0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          19                      1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          20                      0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          20                      1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          21                      0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          21                      1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          24                      0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          24                      1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          25                      0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          25                      1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          27                      0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          27                      1        0     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0        5    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                       0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                       1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                       0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                       1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                       0        5    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                       1        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                       0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                       1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                       0        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                       1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                       0     1119    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                       1      139    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                       0        8    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                       1        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                       0       49    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                       1        4    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                      0       20    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                      1        4    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                      0      525    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                      1       53    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                      0       16    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                      1        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                      0      111    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                      1        6    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                      0       14    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                      1        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                      0       20    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                      1        3    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                      0       27    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                      1        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                      0       21    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                      1        2    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                      0        5    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                      1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                      0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                      1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                      0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                      1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                      0        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                      1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                      0       14    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                      1        2    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                      0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                      1        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                      0      185    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                      1       18    2383
0-24 months   ZVITAMBO         ZIMBABWE                       0                       0       46   13694
0-24 months   ZVITAMBO         ZIMBABWE                       0                       1       16   13694
0-24 months   ZVITAMBO         ZIMBABWE                       1                       0        1   13694
0-24 months   ZVITAMBO         ZIMBABWE                       1                       1        1   13694
0-24 months   ZVITAMBO         ZIMBABWE                       2                       0        4   13694
0-24 months   ZVITAMBO         ZIMBABWE                       2                       1        1   13694
0-24 months   ZVITAMBO         ZIMBABWE                       3                       0        9   13694
0-24 months   ZVITAMBO         ZIMBABWE                       3                       1        6   13694
0-24 months   ZVITAMBO         ZIMBABWE                       4                       0       20   13694
0-24 months   ZVITAMBO         ZIMBABWE                       4                       1        3   13694
0-24 months   ZVITAMBO         ZIMBABWE                       5                       0       24   13694
0-24 months   ZVITAMBO         ZIMBABWE                       5                       1        8   13694
0-24 months   ZVITAMBO         ZIMBABWE                       6                       0       36   13694
0-24 months   ZVITAMBO         ZIMBABWE                       6                       1        7   13694
0-24 months   ZVITAMBO         ZIMBABWE                       7                       0      624   13694
0-24 months   ZVITAMBO         ZIMBABWE                       7                       1      170   13694
0-24 months   ZVITAMBO         ZIMBABWE                       8                       0       88   13694
0-24 months   ZVITAMBO         ZIMBABWE                       8                       1       16   13694
0-24 months   ZVITAMBO         ZIMBABWE                       9                       0      730   13694
0-24 months   ZVITAMBO         ZIMBABWE                       9                       1      171   13694
0-24 months   ZVITAMBO         ZIMBABWE                       10                      0      256   13694
0-24 months   ZVITAMBO         ZIMBABWE                       10                      1       75   13694
0-24 months   ZVITAMBO         ZIMBABWE                       11                      0     8710   13694
0-24 months   ZVITAMBO         ZIMBABWE                       11                      1     1672   13694
0-24 months   ZVITAMBO         ZIMBABWE                       12                      0       48   13694
0-24 months   ZVITAMBO         ZIMBABWE                       12                      1       11   13694
0-24 months   ZVITAMBO         ZIMBABWE                       13                      0      824   13694
0-24 months   ZVITAMBO         ZIMBABWE                       13                      1      117   13694
0-24 months   ZVITAMBO         ZIMBABWE                       14                      0        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       14                      1        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       15                      0        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       15                      1        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       16                      0        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       16                      1        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       17                      0        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       17                      1        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       18                      0        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       18                      1        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       19                      0        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       19                      1        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       20                      0        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       20                      1        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       21                      0        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       21                      1        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       24                      0        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       24                      1        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       25                      0        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       25                      1        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       27                      0        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       27                      1        0   13694
0-6 months    COHORTS          GUATEMALA                      0                       0      405    1020
0-6 months    COHORTS          GUATEMALA                      0                       1       51    1020
0-6 months    COHORTS          GUATEMALA                      1                       0       49    1020
0-6 months    COHORTS          GUATEMALA                      1                       1        4    1020
0-6 months    COHORTS          GUATEMALA                      2                       0      169    1020
0-6 months    COHORTS          GUATEMALA                      2                       1       14    1020
0-6 months    COHORTS          GUATEMALA                      3                       0      117    1020
0-6 months    COHORTS          GUATEMALA                      3                       1       17    1020
0-6 months    COHORTS          GUATEMALA                      4                       0       57    1020
0-6 months    COHORTS          GUATEMALA                      4                       1       10    1020
0-6 months    COHORTS          GUATEMALA                      5                       0       21    1020
0-6 months    COHORTS          GUATEMALA                      5                       1        2    1020
0-6 months    COHORTS          GUATEMALA                      6                       0       84    1020
0-6 months    COHORTS          GUATEMALA                      6                       1        6    1020
0-6 months    COHORTS          GUATEMALA                      7                       0        4    1020
0-6 months    COHORTS          GUATEMALA                      7                       1        0    1020
0-6 months    COHORTS          GUATEMALA                      8                       0        2    1020
0-6 months    COHORTS          GUATEMALA                      8                       1        0    1020
0-6 months    COHORTS          GUATEMALA                      9                       0        0    1020
0-6 months    COHORTS          GUATEMALA                      9                       1        1    1020
0-6 months    COHORTS          GUATEMALA                      10                      0        1    1020
0-6 months    COHORTS          GUATEMALA                      10                      1        0    1020
0-6 months    COHORTS          GUATEMALA                      11                      0        0    1020
0-6 months    COHORTS          GUATEMALA                      11                      1        0    1020
0-6 months    COHORTS          GUATEMALA                      12                      0        4    1020
0-6 months    COHORTS          GUATEMALA                      12                      1        1    1020
0-6 months    COHORTS          GUATEMALA                      13                      0        0    1020
0-6 months    COHORTS          GUATEMALA                      13                      1        0    1020
0-6 months    COHORTS          GUATEMALA                      14                      0        1    1020
0-6 months    COHORTS          GUATEMALA                      14                      1        0    1020
0-6 months    COHORTS          GUATEMALA                      15                      0        0    1020
0-6 months    COHORTS          GUATEMALA                      15                      1        0    1020
0-6 months    COHORTS          GUATEMALA                      16                      0        0    1020
0-6 months    COHORTS          GUATEMALA                      16                      1        0    1020
0-6 months    COHORTS          GUATEMALA                      17                      0        0    1020
0-6 months    COHORTS          GUATEMALA                      17                      1        0    1020
0-6 months    COHORTS          GUATEMALA                      18                      0        0    1020
0-6 months    COHORTS          GUATEMALA                      18                      1        0    1020
0-6 months    COHORTS          GUATEMALA                      19                      0        0    1020
0-6 months    COHORTS          GUATEMALA                      19                      1        0    1020
0-6 months    COHORTS          GUATEMALA                      20                      0        0    1020
0-6 months    COHORTS          GUATEMALA                      20                      1        0    1020
0-6 months    COHORTS          GUATEMALA                      21                      0        0    1020
0-6 months    COHORTS          GUATEMALA                      21                      1        0    1020
0-6 months    COHORTS          GUATEMALA                      24                      0        0    1020
0-6 months    COHORTS          GUATEMALA                      24                      1        0    1020
0-6 months    COHORTS          GUATEMALA                      25                      0        0    1020
0-6 months    COHORTS          GUATEMALA                      25                      1        0    1020
0-6 months    COHORTS          GUATEMALA                      27                      0        0    1020
0-6 months    COHORTS          GUATEMALA                      27                      1        0    1020
0-6 months    COHORTS          INDIA                          0                       0      114    1421
0-6 months    COHORTS          INDIA                          0                       1        7    1421
0-6 months    COHORTS          INDIA                          1                       0        0    1421
0-6 months    COHORTS          INDIA                          1                       1        0    1421
0-6 months    COHORTS          INDIA                          2                       0        0    1421
0-6 months    COHORTS          INDIA                          2                       1        0    1421
0-6 months    COHORTS          INDIA                          3                       0      126    1421
0-6 months    COHORTS          INDIA                          3                       1        6    1421
0-6 months    COHORTS          INDIA                          4                       0        0    1421
0-6 months    COHORTS          INDIA                          4                       1        0    1421
0-6 months    COHORTS          INDIA                          5                       0        0    1421
0-6 months    COHORTS          INDIA                          5                       1        0    1421
0-6 months    COHORTS          INDIA                          6                       0        0    1421
0-6 months    COHORTS          INDIA                          6                       1        0    1421
0-6 months    COHORTS          INDIA                          7                       0        0    1421
0-6 months    COHORTS          INDIA                          7                       1        0    1421
0-6 months    COHORTS          INDIA                          8                       0      200    1421
0-6 months    COHORTS          INDIA                          8                       1        5    1421
0-6 months    COHORTS          INDIA                          9                       0        0    1421
0-6 months    COHORTS          INDIA                          9                       1        0    1421
0-6 months    COHORTS          INDIA                          10                      0        0    1421
0-6 months    COHORTS          INDIA                          10                      1        0    1421
0-6 months    COHORTS          INDIA                          11                      0        0    1421
0-6 months    COHORTS          INDIA                          11                      1        0    1421
0-6 months    COHORTS          INDIA                          12                      0      386    1421
0-6 months    COHORTS          INDIA                          12                      1       18    1421
0-6 months    COHORTS          INDIA                          13                      0        0    1421
0-6 months    COHORTS          INDIA                          13                      1        0    1421
0-6 months    COHORTS          INDIA                          14                      0      152    1421
0-6 months    COHORTS          INDIA                          14                      1        6    1421
0-6 months    COHORTS          INDIA                          15                      0      271    1421
0-6 months    COHORTS          INDIA                          15                      1       10    1421
0-6 months    COHORTS          INDIA                          16                      0        0    1421
0-6 months    COHORTS          INDIA                          16                      1        0    1421
0-6 months    COHORTS          INDIA                          17                      0      118    1421
0-6 months    COHORTS          INDIA                          17                      1        2    1421
0-6 months    COHORTS          INDIA                          18                      0        0    1421
0-6 months    COHORTS          INDIA                          18                      1        0    1421
0-6 months    COHORTS          INDIA                          19                      0        0    1421
0-6 months    COHORTS          INDIA                          19                      1        0    1421
0-6 months    COHORTS          INDIA                          20                      0        0    1421
0-6 months    COHORTS          INDIA                          20                      1        0    1421
0-6 months    COHORTS          INDIA                          21                      0        0    1421
0-6 months    COHORTS          INDIA                          21                      1        0    1421
0-6 months    COHORTS          INDIA                          24                      0        0    1421
0-6 months    COHORTS          INDIA                          24                      1        0    1421
0-6 months    COHORTS          INDIA                          25                      0        0    1421
0-6 months    COHORTS          INDIA                          25                      1        0    1421
0-6 months    COHORTS          INDIA                          27                      0        0    1421
0-6 months    COHORTS          INDIA                          27                      1        0    1421
0-6 months    COHORTS          PHILIPPINES                    0                       0       55    2880
0-6 months    COHORTS          PHILIPPINES                    0                       1        5    2880
0-6 months    COHORTS          PHILIPPINES                    1                       0       33    2880
0-6 months    COHORTS          PHILIPPINES                    1                       1        3    2880
0-6 months    COHORTS          PHILIPPINES                    2                       0       84    2880
0-6 months    COHORTS          PHILIPPINES                    2                       1       12    2880
0-6 months    COHORTS          PHILIPPINES                    3                       0      151    2880
0-6 months    COHORTS          PHILIPPINES                    3                       1       18    2880
0-6 months    COHORTS          PHILIPPINES                    4                       0      243    2880
0-6 months    COHORTS          PHILIPPINES                    4                       1       20    2880
0-6 months    COHORTS          PHILIPPINES                    5                       0      187    2880
0-6 months    COHORTS          PHILIPPINES                    5                       1       17    2880
0-6 months    COHORTS          PHILIPPINES                    6                       0      601    2880
0-6 months    COHORTS          PHILIPPINES                    6                       1       44    2880
0-6 months    COHORTS          PHILIPPINES                    7                       0      142    2880
0-6 months    COHORTS          PHILIPPINES                    7                       1        9    2880
0-6 months    COHORTS          PHILIPPINES                    8                       0      216    2880
0-6 months    COHORTS          PHILIPPINES                    8                       1        9    2880
0-6 months    COHORTS          PHILIPPINES                    9                       0      189    2880
0-6 months    COHORTS          PHILIPPINES                    9                       1        8    2880
0-6 months    COHORTS          PHILIPPINES                    10                      0      317    2880
0-6 months    COHORTS          PHILIPPINES                    10                      1       14    2880
0-6 months    COHORTS          PHILIPPINES                    11                      0       61    2880
0-6 months    COHORTS          PHILIPPINES                    11                      1        4    2880
0-6 months    COHORTS          PHILIPPINES                    12                      0      172    2880
0-6 months    COHORTS          PHILIPPINES                    12                      1        8    2880
0-6 months    COHORTS          PHILIPPINES                    13                      0       61    2880
0-6 months    COHORTS          PHILIPPINES                    13                      1        2    2880
0-6 months    COHORTS          PHILIPPINES                    14                      0      143    2880
0-6 months    COHORTS          PHILIPPINES                    14                      1        4    2880
0-6 months    COHORTS          PHILIPPINES                    15                      0       36    2880
0-6 months    COHORTS          PHILIPPINES                    15                      1        0    2880
0-6 months    COHORTS          PHILIPPINES                    16                      0        7    2880
0-6 months    COHORTS          PHILIPPINES                    16                      1        1    2880
0-6 months    COHORTS          PHILIPPINES                    17                      0        2    2880
0-6 months    COHORTS          PHILIPPINES                    17                      1        0    2880
0-6 months    COHORTS          PHILIPPINES                    18                      0        2    2880
0-6 months    COHORTS          PHILIPPINES                    18                      1        0    2880
0-6 months    COHORTS          PHILIPPINES                    19                      0        0    2880
0-6 months    COHORTS          PHILIPPINES                    19                      1        0    2880
0-6 months    COHORTS          PHILIPPINES                    20                      0        0    2880
0-6 months    COHORTS          PHILIPPINES                    20                      1        0    2880
0-6 months    COHORTS          PHILIPPINES                    21                      0        0    2880
0-6 months    COHORTS          PHILIPPINES                    21                      1        0    2880
0-6 months    COHORTS          PHILIPPINES                    24                      0        0    2880
0-6 months    COHORTS          PHILIPPINES                    24                      1        0    2880
0-6 months    COHORTS          PHILIPPINES                    25                      0        0    2880
0-6 months    COHORTS          PHILIPPINES                    25                      1        0    2880
0-6 months    COHORTS          PHILIPPINES                    27                      0        0    2880
0-6 months    COHORTS          PHILIPPINES                    27                      1        0    2880
0-6 months    GMS-Nepal        NEPAL                          0                       0      262     696
0-6 months    GMS-Nepal        NEPAL                          0                       1       34     696
0-6 months    GMS-Nepal        NEPAL                          1                       0        0     696
0-6 months    GMS-Nepal        NEPAL                          1                       1        0     696
0-6 months    GMS-Nepal        NEPAL                          2                       0        0     696
0-6 months    GMS-Nepal        NEPAL                          2                       1        0     696
0-6 months    GMS-Nepal        NEPAL                          3                       0        0     696
0-6 months    GMS-Nepal        NEPAL                          3                       1        0     696
0-6 months    GMS-Nepal        NEPAL                          4                       0        0     696
0-6 months    GMS-Nepal        NEPAL                          4                       1        0     696
0-6 months    GMS-Nepal        NEPAL                          5                       0      103     696
0-6 months    GMS-Nepal        NEPAL                          5                       1        7     696
0-6 months    GMS-Nepal        NEPAL                          6                       0        0     696
0-6 months    GMS-Nepal        NEPAL                          6                       1        0     696
0-6 months    GMS-Nepal        NEPAL                          7                       0        0     696
0-6 months    GMS-Nepal        NEPAL                          7                       1        0     696
0-6 months    GMS-Nepal        NEPAL                          8                       0      113     696
0-6 months    GMS-Nepal        NEPAL                          8                       1        4     696
0-6 months    GMS-Nepal        NEPAL                          9                       0        0     696
0-6 months    GMS-Nepal        NEPAL                          9                       1        0     696
0-6 months    GMS-Nepal        NEPAL                          10                      0      120     696
0-6 months    GMS-Nepal        NEPAL                          10                      1       14     696
0-6 months    GMS-Nepal        NEPAL                          11                      0        0     696
0-6 months    GMS-Nepal        NEPAL                          11                      1        0     696
0-6 months    GMS-Nepal        NEPAL                          12                      0       38     696
0-6 months    GMS-Nepal        NEPAL                          12                      1        1     696
0-6 months    GMS-Nepal        NEPAL                          13                      0        0     696
0-6 months    GMS-Nepal        NEPAL                          13                      1        0     696
0-6 months    GMS-Nepal        NEPAL                          14                      0        0     696
0-6 months    GMS-Nepal        NEPAL                          14                      1        0     696
0-6 months    GMS-Nepal        NEPAL                          15                      0        0     696
0-6 months    GMS-Nepal        NEPAL                          15                      1        0     696
0-6 months    GMS-Nepal        NEPAL                          16                      0        0     696
0-6 months    GMS-Nepal        NEPAL                          16                      1        0     696
0-6 months    GMS-Nepal        NEPAL                          17                      0        0     696
0-6 months    GMS-Nepal        NEPAL                          17                      1        0     696
0-6 months    GMS-Nepal        NEPAL                          18                      0        0     696
0-6 months    GMS-Nepal        NEPAL                          18                      1        0     696
0-6 months    GMS-Nepal        NEPAL                          19                      0        0     696
0-6 months    GMS-Nepal        NEPAL                          19                      1        0     696
0-6 months    GMS-Nepal        NEPAL                          20                      0        0     696
0-6 months    GMS-Nepal        NEPAL                          20                      1        0     696
0-6 months    GMS-Nepal        NEPAL                          21                      0        0     696
0-6 months    GMS-Nepal        NEPAL                          21                      1        0     696
0-6 months    GMS-Nepal        NEPAL                          24                      0        0     696
0-6 months    GMS-Nepal        NEPAL                          24                      1        0     696
0-6 months    GMS-Nepal        NEPAL                          25                      0        0     696
0-6 months    GMS-Nepal        NEPAL                          25                      1        0     696
0-6 months    GMS-Nepal        NEPAL                          27                      0        0     696
0-6 months    GMS-Nepal        NEPAL                          27                      1        0     696
0-6 months    LCNI-5           MALAWI                         0                       0       94     267
0-6 months    LCNI-5           MALAWI                         0                       1       10     267
0-6 months    LCNI-5           MALAWI                         1                       0        2     267
0-6 months    LCNI-5           MALAWI                         1                       1        0     267
0-6 months    LCNI-5           MALAWI                         2                       0        5     267
0-6 months    LCNI-5           MALAWI                         2                       1        2     267
0-6 months    LCNI-5           MALAWI                         3                       0        9     267
0-6 months    LCNI-5           MALAWI                         3                       1        2     267
0-6 months    LCNI-5           MALAWI                         4                       0       18     267
0-6 months    LCNI-5           MALAWI                         4                       1        0     267
0-6 months    LCNI-5           MALAWI                         5                       0       27     267
0-6 months    LCNI-5           MALAWI                         5                       1        1     267
0-6 months    LCNI-5           MALAWI                         6                       0       24     267
0-6 months    LCNI-5           MALAWI                         6                       1        0     267
0-6 months    LCNI-5           MALAWI                         7                       0       16     267
0-6 months    LCNI-5           MALAWI                         7                       1        1     267
0-6 months    LCNI-5           MALAWI                         8                       0       19     267
0-6 months    LCNI-5           MALAWI                         8                       1        2     267
0-6 months    LCNI-5           MALAWI                         9                       0        4     267
0-6 months    LCNI-5           MALAWI                         9                       1        0     267
0-6 months    LCNI-5           MALAWI                         10                      0        5     267
0-6 months    LCNI-5           MALAWI                         10                      1        0     267
0-6 months    LCNI-5           MALAWI                         11                      0        4     267
0-6 months    LCNI-5           MALAWI                         11                      1        0     267
0-6 months    LCNI-5           MALAWI                         12                      0       18     267
0-6 months    LCNI-5           MALAWI                         12                      1        1     267
0-6 months    LCNI-5           MALAWI                         13                      0        1     267
0-6 months    LCNI-5           MALAWI                         13                      1        0     267
0-6 months    LCNI-5           MALAWI                         14                      0        1     267
0-6 months    LCNI-5           MALAWI                         14                      1        0     267
0-6 months    LCNI-5           MALAWI                         15                      0        0     267
0-6 months    LCNI-5           MALAWI                         15                      1        0     267
0-6 months    LCNI-5           MALAWI                         16                      0        1     267
0-6 months    LCNI-5           MALAWI                         16                      1        0     267
0-6 months    LCNI-5           MALAWI                         17                      0        0     267
0-6 months    LCNI-5           MALAWI                         17                      1        0     267
0-6 months    LCNI-5           MALAWI                         18                      0        0     267
0-6 months    LCNI-5           MALAWI                         18                      1        0     267
0-6 months    LCNI-5           MALAWI                         19                      0        0     267
0-6 months    LCNI-5           MALAWI                         19                      1        0     267
0-6 months    LCNI-5           MALAWI                         20                      0        0     267
0-6 months    LCNI-5           MALAWI                         20                      1        0     267
0-6 months    LCNI-5           MALAWI                         21                      0        0     267
0-6 months    LCNI-5           MALAWI                         21                      1        0     267
0-6 months    LCNI-5           MALAWI                         24                      0        0     267
0-6 months    LCNI-5           MALAWI                         24                      1        0     267
0-6 months    LCNI-5           MALAWI                         25                      0        0     267
0-6 months    LCNI-5           MALAWI                         25                      1        0     267
0-6 months    LCNI-5           MALAWI                         27                      0        0     267
0-6 months    LCNI-5           MALAWI                         27                      1        0     267
0-6 months    MAL-ED           BANGLADESH                     0                       0        0     149
0-6 months    MAL-ED           BANGLADESH                     0                       1        0     149
0-6 months    MAL-ED           BANGLADESH                     1                       0        7     149
0-6 months    MAL-ED           BANGLADESH                     1                       1        0     149
0-6 months    MAL-ED           BANGLADESH                     2                       0       11     149
0-6 months    MAL-ED           BANGLADESH                     2                       1        1     149
0-6 months    MAL-ED           BANGLADESH                     3                       0       11     149
0-6 months    MAL-ED           BANGLADESH                     3                       1        1     149
0-6 months    MAL-ED           BANGLADESH                     4                       0        9     149
0-6 months    MAL-ED           BANGLADESH                     4                       1        0     149
0-6 months    MAL-ED           BANGLADESH                     5                       0       31     149
0-6 months    MAL-ED           BANGLADESH                     5                       1        6     149
0-6 months    MAL-ED           BANGLADESH                     6                       0        8     149
0-6 months    MAL-ED           BANGLADESH                     6                       1        0     149
0-6 months    MAL-ED           BANGLADESH                     7                       0       10     149
0-6 months    MAL-ED           BANGLADESH                     7                       1        0     149
0-6 months    MAL-ED           BANGLADESH                     8                       0       18     149
0-6 months    MAL-ED           BANGLADESH                     8                       1        0     149
0-6 months    MAL-ED           BANGLADESH                     9                       0       11     149
0-6 months    MAL-ED           BANGLADESH                     9                       1        3     149
0-6 months    MAL-ED           BANGLADESH                     10                      0       10     149
0-6 months    MAL-ED           BANGLADESH                     10                      1        0     149
0-6 months    MAL-ED           BANGLADESH                     11                      0        0     149
0-6 months    MAL-ED           BANGLADESH                     11                      1        0     149
0-6 months    MAL-ED           BANGLADESH                     12                      0        9     149
0-6 months    MAL-ED           BANGLADESH                     12                      1        1     149
0-6 months    MAL-ED           BANGLADESH                     13                      0        0     149
0-6 months    MAL-ED           BANGLADESH                     13                      1        0     149
0-6 months    MAL-ED           BANGLADESH                     14                      0        0     149
0-6 months    MAL-ED           BANGLADESH                     14                      1        0     149
0-6 months    MAL-ED           BANGLADESH                     15                      0        0     149
0-6 months    MAL-ED           BANGLADESH                     15                      1        0     149
0-6 months    MAL-ED           BANGLADESH                     16                      0        2     149
0-6 months    MAL-ED           BANGLADESH                     16                      1        0     149
0-6 months    MAL-ED           BANGLADESH                     17                      0        0     149
0-6 months    MAL-ED           BANGLADESH                     17                      1        0     149
0-6 months    MAL-ED           BANGLADESH                     18                      0        0     149
0-6 months    MAL-ED           BANGLADESH                     18                      1        0     149
0-6 months    MAL-ED           BANGLADESH                     19                      0        0     149
0-6 months    MAL-ED           BANGLADESH                     19                      1        0     149
0-6 months    MAL-ED           BANGLADESH                     20                      0        0     149
0-6 months    MAL-ED           BANGLADESH                     20                      1        0     149
0-6 months    MAL-ED           BANGLADESH                     21                      0        0     149
0-6 months    MAL-ED           BANGLADESH                     21                      1        0     149
0-6 months    MAL-ED           BANGLADESH                     24                      0        0     149
0-6 months    MAL-ED           BANGLADESH                     24                      1        0     149
0-6 months    MAL-ED           BANGLADESH                     25                      0        0     149
0-6 months    MAL-ED           BANGLADESH                     25                      1        0     149
0-6 months    MAL-ED           BANGLADESH                     27                      0        0     149
0-6 months    MAL-ED           BANGLADESH                     27                      1        0     149
0-6 months    MAL-ED           INDIA                          0                       0        0     147
0-6 months    MAL-ED           INDIA                          0                       1        0     147
0-6 months    MAL-ED           INDIA                          1                       0        0     147
0-6 months    MAL-ED           INDIA                          1                       1        0     147
0-6 months    MAL-ED           INDIA                          2                       0        6     147
0-6 months    MAL-ED           INDIA                          2                       1        0     147
0-6 months    MAL-ED           INDIA                          3                       0       11     147
0-6 months    MAL-ED           INDIA                          3                       1        1     147
0-6 months    MAL-ED           INDIA                          4                       0        7     147
0-6 months    MAL-ED           INDIA                          4                       1        0     147
0-6 months    MAL-ED           INDIA                          5                       0       31     147
0-6 months    MAL-ED           INDIA                          5                       1        3     147
0-6 months    MAL-ED           INDIA                          6                       0       11     147
0-6 months    MAL-ED           INDIA                          6                       1        0     147
0-6 months    MAL-ED           INDIA                          7                       0       12     147
0-6 months    MAL-ED           INDIA                          7                       1        0     147
0-6 months    MAL-ED           INDIA                          8                       0       19     147
0-6 months    MAL-ED           INDIA                          8                       1        2     147
0-6 months    MAL-ED           INDIA                          9                       0       27     147
0-6 months    MAL-ED           INDIA                          9                       1        0     147
0-6 months    MAL-ED           INDIA                          10                      0        6     147
0-6 months    MAL-ED           INDIA                          10                      1        0     147
0-6 months    MAL-ED           INDIA                          11                      0        2     147
0-6 months    MAL-ED           INDIA                          11                      1        0     147
0-6 months    MAL-ED           INDIA                          12                      0        3     147
0-6 months    MAL-ED           INDIA                          12                      1        0     147
0-6 months    MAL-ED           INDIA                          13                      0        1     147
0-6 months    MAL-ED           INDIA                          13                      1        0     147
0-6 months    MAL-ED           INDIA                          14                      0        2     147
0-6 months    MAL-ED           INDIA                          14                      1        0     147
0-6 months    MAL-ED           INDIA                          15                      0        2     147
0-6 months    MAL-ED           INDIA                          15                      1        0     147
0-6 months    MAL-ED           INDIA                          16                      0        0     147
0-6 months    MAL-ED           INDIA                          16                      1        0     147
0-6 months    MAL-ED           INDIA                          17                      0        0     147
0-6 months    MAL-ED           INDIA                          17                      1        0     147
0-6 months    MAL-ED           INDIA                          18                      0        1     147
0-6 months    MAL-ED           INDIA                          18                      1        0     147
0-6 months    MAL-ED           INDIA                          19                      0        0     147
0-6 months    MAL-ED           INDIA                          19                      1        0     147
0-6 months    MAL-ED           INDIA                          20                      0        0     147
0-6 months    MAL-ED           INDIA                          20                      1        0     147
0-6 months    MAL-ED           INDIA                          21                      0        0     147
0-6 months    MAL-ED           INDIA                          21                      1        0     147
0-6 months    MAL-ED           INDIA                          24                      0        0     147
0-6 months    MAL-ED           INDIA                          24                      1        0     147
0-6 months    MAL-ED           INDIA                          25                      0        0     147
0-6 months    MAL-ED           INDIA                          25                      1        0     147
0-6 months    MAL-ED           INDIA                          27                      0        0     147
0-6 months    MAL-ED           INDIA                          27                      1        0     147
0-6 months    MAL-ED           NEPAL                          0                       0        0      98
0-6 months    MAL-ED           NEPAL                          0                       1        0      98
0-6 months    MAL-ED           NEPAL                          1                       0        0      98
0-6 months    MAL-ED           NEPAL                          1                       1        0      98
0-6 months    MAL-ED           NEPAL                          2                       0        4      98
0-6 months    MAL-ED           NEPAL                          2                       1        0      98
0-6 months    MAL-ED           NEPAL                          3                       0        2      98
0-6 months    MAL-ED           NEPAL                          3                       1        1      98
0-6 months    MAL-ED           NEPAL                          4                       0       11      98
0-6 months    MAL-ED           NEPAL                          4                       1        0      98
0-6 months    MAL-ED           NEPAL                          5                       0        6      98
0-6 months    MAL-ED           NEPAL                          5                       1        0      98
0-6 months    MAL-ED           NEPAL                          6                       0        4      98
0-6 months    MAL-ED           NEPAL                          6                       1        0      98
0-6 months    MAL-ED           NEPAL                          7                       0        8      98
0-6 months    MAL-ED           NEPAL                          7                       1        1      98
0-6 months    MAL-ED           NEPAL                          8                       0        9      98
0-6 months    MAL-ED           NEPAL                          8                       1        3      98
0-6 months    MAL-ED           NEPAL                          9                       0        7      98
0-6 months    MAL-ED           NEPAL                          9                       1        0      98
0-6 months    MAL-ED           NEPAL                          10                      0       27      98
0-6 months    MAL-ED           NEPAL                          10                      1        0      98
0-6 months    MAL-ED           NEPAL                          11                      0        1      98
0-6 months    MAL-ED           NEPAL                          11                      1        0      98
0-6 months    MAL-ED           NEPAL                          12                      0        8      98
0-6 months    MAL-ED           NEPAL                          12                      1        0      98
0-6 months    MAL-ED           NEPAL                          13                      0        0      98
0-6 months    MAL-ED           NEPAL                          13                      1        0      98
0-6 months    MAL-ED           NEPAL                          14                      0        0      98
0-6 months    MAL-ED           NEPAL                          14                      1        0      98
0-6 months    MAL-ED           NEPAL                          15                      0        1      98
0-6 months    MAL-ED           NEPAL                          15                      1        0      98
0-6 months    MAL-ED           NEPAL                          16                      0        1      98
0-6 months    MAL-ED           NEPAL                          16                      1        0      98
0-6 months    MAL-ED           NEPAL                          17                      0        3      98
0-6 months    MAL-ED           NEPAL                          17                      1        0      98
0-6 months    MAL-ED           NEPAL                          18                      0        1      98
0-6 months    MAL-ED           NEPAL                          18                      1        0      98
0-6 months    MAL-ED           NEPAL                          19                      0        0      98
0-6 months    MAL-ED           NEPAL                          19                      1        0      98
0-6 months    MAL-ED           NEPAL                          20                      0        0      98
0-6 months    MAL-ED           NEPAL                          20                      1        0      98
0-6 months    MAL-ED           NEPAL                          21                      0        0      98
0-6 months    MAL-ED           NEPAL                          21                      1        0      98
0-6 months    MAL-ED           NEPAL                          24                      0        0      98
0-6 months    MAL-ED           NEPAL                          24                      1        0      98
0-6 months    MAL-ED           NEPAL                          25                      0        0      98
0-6 months    MAL-ED           NEPAL                          25                      1        0      98
0-6 months    MAL-ED           NEPAL                          27                      0        0      98
0-6 months    MAL-ED           NEPAL                          27                      1        0      98
0-6 months    MAL-ED           PERU                           0                       0        1     250
0-6 months    MAL-ED           PERU                           0                       1        0     250
0-6 months    MAL-ED           PERU                           1                       0        2     250
0-6 months    MAL-ED           PERU                           1                       1        0     250
0-6 months    MAL-ED           PERU                           2                       0        0     250
0-6 months    MAL-ED           PERU                           2                       1        1     250
0-6 months    MAL-ED           PERU                           3                       0        9     250
0-6 months    MAL-ED           PERU                           3                       1        0     250
0-6 months    MAL-ED           PERU                           4                       0        4     250
0-6 months    MAL-ED           PERU                           4                       1        0     250
0-6 months    MAL-ED           PERU                           5                       0        6     250
0-6 months    MAL-ED           PERU                           5                       1        2     250
0-6 months    MAL-ED           PERU                           6                       0       22     250
0-6 months    MAL-ED           PERU                           6                       1        4     250
0-6 months    MAL-ED           PERU                           7                       0       18     250
0-6 months    MAL-ED           PERU                           7                       1        0     250
0-6 months    MAL-ED           PERU                           8                       0       20     250
0-6 months    MAL-ED           PERU                           8                       1        2     250
0-6 months    MAL-ED           PERU                           9                       0       20     250
0-6 months    MAL-ED           PERU                           9                       1        6     250
0-6 months    MAL-ED           PERU                           10                      0       12     250
0-6 months    MAL-ED           PERU                           10                      1        1     250
0-6 months    MAL-ED           PERU                           11                      0       90     250
0-6 months    MAL-ED           PERU                           11                      1        9     250
0-6 months    MAL-ED           PERU                           12                      0        0     250
0-6 months    MAL-ED           PERU                           12                      1        1     250
0-6 months    MAL-ED           PERU                           13                      0        5     250
0-6 months    MAL-ED           PERU                           13                      1        0     250
0-6 months    MAL-ED           PERU                           14                      0        3     250
0-6 months    MAL-ED           PERU                           14                      1        2     250
0-6 months    MAL-ED           PERU                           15                      0        1     250
0-6 months    MAL-ED           PERU                           15                      1        0     250
0-6 months    MAL-ED           PERU                           16                      0        1     250
0-6 months    MAL-ED           PERU                           16                      1        0     250
0-6 months    MAL-ED           PERU                           17                      0        1     250
0-6 months    MAL-ED           PERU                           17                      1        0     250
0-6 months    MAL-ED           PERU                           18                      0        4     250
0-6 months    MAL-ED           PERU                           18                      1        1     250
0-6 months    MAL-ED           PERU                           19                      0        0     250
0-6 months    MAL-ED           PERU                           19                      1        0     250
0-6 months    MAL-ED           PERU                           20                      0        2     250
0-6 months    MAL-ED           PERU                           20                      1        0     250
0-6 months    MAL-ED           PERU                           21                      0        0     250
0-6 months    MAL-ED           PERU                           21                      1        0     250
0-6 months    MAL-ED           PERU                           24                      0        0     250
0-6 months    MAL-ED           PERU                           24                      1        0     250
0-6 months    MAL-ED           PERU                           25                      0        0     250
0-6 months    MAL-ED           PERU                           25                      1        0     250
0-6 months    MAL-ED           PERU                           27                      0        0     250
0-6 months    MAL-ED           PERU                           27                      1        0     250
0-6 months    MAL-ED           SOUTH AFRICA                   0                       0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   0                       1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   1                       0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   1                       1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   2                       0        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   2                       1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   3                       0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   3                       1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   4                       0        4     110
0-6 months    MAL-ED           SOUTH AFRICA                   4                       1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   5                       0        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   5                       1        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   6                       0        6     110
0-6 months    MAL-ED           SOUTH AFRICA                   6                       1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   7                       0        6     110
0-6 months    MAL-ED           SOUTH AFRICA                   7                       1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   8                       0       11     110
0-6 months    MAL-ED           SOUTH AFRICA                   8                       1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   9                       0        6     110
0-6 months    MAL-ED           SOUTH AFRICA                   9                       1        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   10                      0        9     110
0-6 months    MAL-ED           SOUTH AFRICA                   10                      1        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   11                      0       18     110
0-6 months    MAL-ED           SOUTH AFRICA                   11                      1        2     110
0-6 months    MAL-ED           SOUTH AFRICA                   12                      0       31     110
0-6 months    MAL-ED           SOUTH AFRICA                   12                      1        5     110
0-6 months    MAL-ED           SOUTH AFRICA                   13                      0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   13                      1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   14                      0        3     110
0-6 months    MAL-ED           SOUTH AFRICA                   14                      1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   15                      0        3     110
0-6 months    MAL-ED           SOUTH AFRICA                   15                      1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   16                      0        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   16                      1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   17                      0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   17                      1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   18                      0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   18                      1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   19                      0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   19                      1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   20                      0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   20                      1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   21                      0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   21                      1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   24                      0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   24                      1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   25                      0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   25                      1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   27                      0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   27                      1        0     110
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0       14     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                       0        9     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                       1        4     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                       0       16     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                       1        2     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                       0       13     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                       1        3     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                       0       10     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                       1        3     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                       0        7     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                       1        1     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                       0      102     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                       1       16     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                       0        1     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                       1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                       0        2     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                       1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                      0        4     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                      1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                      0        2     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                      1        1     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                      0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                      1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                      0        2     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                      1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                      0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                      1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                      0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                      1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                      0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                      1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                      0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                      1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                      0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                      1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                      0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                      1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                      0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                      1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                      0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                      1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                      0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                      1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                      0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                      1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                      0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                      1        0     212
0-6 months    NIH-Crypto       BANGLADESH                     0                       0      161     758
0-6 months    NIH-Crypto       BANGLADESH                     0                       1       13     758
0-6 months    NIH-Crypto       BANGLADESH                     1                       0       20     758
0-6 months    NIH-Crypto       BANGLADESH                     1                       1        1     758
0-6 months    NIH-Crypto       BANGLADESH                     2                       0       13     758
0-6 months    NIH-Crypto       BANGLADESH                     2                       1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     3                       0       33     758
0-6 months    NIH-Crypto       BANGLADESH                     3                       1        1     758
0-6 months    NIH-Crypto       BANGLADESH                     4                       0       39     758
0-6 months    NIH-Crypto       BANGLADESH                     4                       1        1     758
0-6 months    NIH-Crypto       BANGLADESH                     5                       0       83     758
0-6 months    NIH-Crypto       BANGLADESH                     5                       1        5     758
0-6 months    NIH-Crypto       BANGLADESH                     6                       0       30     758
0-6 months    NIH-Crypto       BANGLADESH                     6                       1        5     758
0-6 months    NIH-Crypto       BANGLADESH                     7                       0       48     758
0-6 months    NIH-Crypto       BANGLADESH                     7                       1        9     758
0-6 months    NIH-Crypto       BANGLADESH                     8                       0       88     758
0-6 months    NIH-Crypto       BANGLADESH                     8                       1        2     758
0-6 months    NIH-Crypto       BANGLADESH                     9                       0       81     758
0-6 months    NIH-Crypto       BANGLADESH                     9                       1        5     758
0-6 months    NIH-Crypto       BANGLADESH                     10                      0       51     758
0-6 months    NIH-Crypto       BANGLADESH                     10                      1        3     758
0-6 months    NIH-Crypto       BANGLADESH                     11                      0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     11                      1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     12                      0       34     758
0-6 months    NIH-Crypto       BANGLADESH                     12                      1        1     758
0-6 months    NIH-Crypto       BANGLADESH                     13                      0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     13                      1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     14                      0        8     758
0-6 months    NIH-Crypto       BANGLADESH                     14                      1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     15                      0       15     758
0-6 months    NIH-Crypto       BANGLADESH                     15                      1        1     758
0-6 months    NIH-Crypto       BANGLADESH                     16                      0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     16                      1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     17                      0        7     758
0-6 months    NIH-Crypto       BANGLADESH                     17                      1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     18                      0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     18                      1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     19                      0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     19                      1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     20                      0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     20                      1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     21                      0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     21                      1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     24                      0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     24                      1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     25                      0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     25                      1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     27                      0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     27                      1        0     758
0-6 months    PROBIT           BELARUS                        0                       0        0   16309
0-6 months    PROBIT           BELARUS                        0                       1        0   16309
0-6 months    PROBIT           BELARUS                        1                       0        0   16309
0-6 months    PROBIT           BELARUS                        1                       1        0   16309
0-6 months    PROBIT           BELARUS                        2                       0        0   16309
0-6 months    PROBIT           BELARUS                        2                       1        0   16309
0-6 months    PROBIT           BELARUS                        3                       0        0   16309
0-6 months    PROBIT           BELARUS                        3                       1        0   16309
0-6 months    PROBIT           BELARUS                        4                       0        0   16309
0-6 months    PROBIT           BELARUS                        4                       1        0   16309
0-6 months    PROBIT           BELARUS                        5                       0        0   16309
0-6 months    PROBIT           BELARUS                        5                       1        0   16309
0-6 months    PROBIT           BELARUS                        6                       0        0   16309
0-6 months    PROBIT           BELARUS                        6                       1        0   16309
0-6 months    PROBIT           BELARUS                        7                       0        0   16309
0-6 months    PROBIT           BELARUS                        7                       1        0   16309
0-6 months    PROBIT           BELARUS                        8                       0       27   16309
0-6 months    PROBIT           BELARUS                        8                       1        0   16309
0-6 months    PROBIT           BELARUS                        9                       0        0   16309
0-6 months    PROBIT           BELARUS                        9                       1        0   16309
0-6 months    PROBIT           BELARUS                        10                      0      359   16309
0-6 months    PROBIT           BELARUS                        10                      1        8   16309
0-6 months    PROBIT           BELARUS                        11                      0        0   16309
0-6 months    PROBIT           BELARUS                        11                      1        0   16309
0-6 months    PROBIT           BELARUS                        12                      0     5944   16309
0-6 months    PROBIT           BELARUS                        12                      1       80   16309
0-6 months    PROBIT           BELARUS                        13                      0     7118   16309
0-6 months    PROBIT           BELARUS                        13                      1       66   16309
0-6 months    PROBIT           BELARUS                        14                      0      442   16309
0-6 months    PROBIT           BELARUS                        14                      1        2   16309
0-6 months    PROBIT           BELARUS                        15                      0        0   16309
0-6 months    PROBIT           BELARUS                        15                      1        0   16309
0-6 months    PROBIT           BELARUS                        16                      0     2252   16309
0-6 months    PROBIT           BELARUS                        16                      1       11   16309
0-6 months    PROBIT           BELARUS                        17                      0        0   16309
0-6 months    PROBIT           BELARUS                        17                      1        0   16309
0-6 months    PROBIT           BELARUS                        18                      0        0   16309
0-6 months    PROBIT           BELARUS                        18                      1        0   16309
0-6 months    PROBIT           BELARUS                        19                      0        0   16309
0-6 months    PROBIT           BELARUS                        19                      1        0   16309
0-6 months    PROBIT           BELARUS                        20                      0        0   16309
0-6 months    PROBIT           BELARUS                        20                      1        0   16309
0-6 months    PROBIT           BELARUS                        21                      0        0   16309
0-6 months    PROBIT           BELARUS                        21                      1        0   16309
0-6 months    PROBIT           BELARUS                        24                      0        0   16309
0-6 months    PROBIT           BELARUS                        24                      1        0   16309
0-6 months    PROBIT           BELARUS                        25                      0        0   16309
0-6 months    PROBIT           BELARUS                        25                      1        0   16309
0-6 months    PROBIT           BELARUS                        27                      0        0   16309
0-6 months    PROBIT           BELARUS                        27                      1        0   16309
0-6 months    PROVIDE          BANGLADESH                     0                       0      193     700
0-6 months    PROVIDE          BANGLADESH                     0                       1       14     700
0-6 months    PROVIDE          BANGLADESH                     1                       0       12     700
0-6 months    PROVIDE          BANGLADESH                     1                       1        1     700
0-6 months    PROVIDE          BANGLADESH                     2                       0       17     700
0-6 months    PROVIDE          BANGLADESH                     2                       1        1     700
0-6 months    PROVIDE          BANGLADESH                     3                       0       26     700
0-6 months    PROVIDE          BANGLADESH                     3                       1        1     700
0-6 months    PROVIDE          BANGLADESH                     4                       0       51     700
0-6 months    PROVIDE          BANGLADESH                     4                       1        1     700
0-6 months    PROVIDE          BANGLADESH                     5                       0       79     700
0-6 months    PROVIDE          BANGLADESH                     5                       1        1     700
0-6 months    PROVIDE          BANGLADESH                     6                       0       26     700
0-6 months    PROVIDE          BANGLADESH                     6                       1        3     700
0-6 months    PROVIDE          BANGLADESH                     7                       0       42     700
0-6 months    PROVIDE          BANGLADESH                     7                       1        0     700
0-6 months    PROVIDE          BANGLADESH                     8                       0       62     700
0-6 months    PROVIDE          BANGLADESH                     8                       1        2     700
0-6 months    PROVIDE          BANGLADESH                     9                       0       60     700
0-6 months    PROVIDE          BANGLADESH                     9                       1        2     700
0-6 months    PROVIDE          BANGLADESH                     10                      0       38     700
0-6 months    PROVIDE          BANGLADESH                     10                      1        1     700
0-6 months    PROVIDE          BANGLADESH                     11                      0       24     700
0-6 months    PROVIDE          BANGLADESH                     11                      1        2     700
0-6 months    PROVIDE          BANGLADESH                     12                      0        4     700
0-6 months    PROVIDE          BANGLADESH                     12                      1        0     700
0-6 months    PROVIDE          BANGLADESH                     13                      0        0     700
0-6 months    PROVIDE          BANGLADESH                     13                      1        0     700
0-6 months    PROVIDE          BANGLADESH                     14                      0       19     700
0-6 months    PROVIDE          BANGLADESH                     14                      1        0     700
0-6 months    PROVIDE          BANGLADESH                     15                      0        8     700
0-6 months    PROVIDE          BANGLADESH                     15                      1        0     700
0-6 months    PROVIDE          BANGLADESH                     16                      0        7     700
0-6 months    PROVIDE          BANGLADESH                     16                      1        2     700
0-6 months    PROVIDE          BANGLADESH                     17                      0        0     700
0-6 months    PROVIDE          BANGLADESH                     17                      1        0     700
0-6 months    PROVIDE          BANGLADESH                     18                      0        0     700
0-6 months    PROVIDE          BANGLADESH                     18                      1        0     700
0-6 months    PROVIDE          BANGLADESH                     19                      0        1     700
0-6 months    PROVIDE          BANGLADESH                     19                      1        0     700
0-6 months    PROVIDE          BANGLADESH                     20                      0        0     700
0-6 months    PROVIDE          BANGLADESH                     20                      1        0     700
0-6 months    PROVIDE          BANGLADESH                     21                      0        0     700
0-6 months    PROVIDE          BANGLADESH                     21                      1        0     700
0-6 months    PROVIDE          BANGLADESH                     24                      0        0     700
0-6 months    PROVIDE          BANGLADESH                     24                      1        0     700
0-6 months    PROVIDE          BANGLADESH                     25                      0        0     700
0-6 months    PROVIDE          BANGLADESH                     25                      1        0     700
0-6 months    PROVIDE          BANGLADESH                     27                      0        0     700
0-6 months    PROVIDE          BANGLADESH                     27                      1        0     700
0-6 months    SAS-CompFeed     INDIA                          0                       0      151    1527
0-6 months    SAS-CompFeed     INDIA                          0                       1       45    1527
0-6 months    SAS-CompFeed     INDIA                          1                       0        0    1527
0-6 months    SAS-CompFeed     INDIA                          1                       1        0    1527
0-6 months    SAS-CompFeed     INDIA                          2                       0        6    1527
0-6 months    SAS-CompFeed     INDIA                          2                       1        1    1527
0-6 months    SAS-CompFeed     INDIA                          3                       0       13    1527
0-6 months    SAS-CompFeed     INDIA                          3                       1        2    1527
0-6 months    SAS-CompFeed     INDIA                          4                       0       22    1527
0-6 months    SAS-CompFeed     INDIA                          4                       1        3    1527
0-6 months    SAS-CompFeed     INDIA                          5                       0       77    1527
0-6 months    SAS-CompFeed     INDIA                          5                       1       17    1527
0-6 months    SAS-CompFeed     INDIA                          6                       0       23    1527
0-6 months    SAS-CompFeed     INDIA                          6                       1        5    1527
0-6 months    SAS-CompFeed     INDIA                          7                       0      100    1527
0-6 months    SAS-CompFeed     INDIA                          7                       1       17    1527
0-6 months    SAS-CompFeed     INDIA                          8                       0      146    1527
0-6 months    SAS-CompFeed     INDIA                          8                       1       25    1527
0-6 months    SAS-CompFeed     INDIA                          9                       0       87    1527
0-6 months    SAS-CompFeed     INDIA                          9                       1       11    1527
0-6 months    SAS-CompFeed     INDIA                          10                      0      330    1527
0-6 months    SAS-CompFeed     INDIA                          10                      1       57    1527
0-6 months    SAS-CompFeed     INDIA                          11                      0       34    1527
0-6 months    SAS-CompFeed     INDIA                          11                      1        8    1527
0-6 months    SAS-CompFeed     INDIA                          12                      0      208    1527
0-6 months    SAS-CompFeed     INDIA                          12                      1       20    1527
0-6 months    SAS-CompFeed     INDIA                          13                      0        7    1527
0-6 months    SAS-CompFeed     INDIA                          13                      1        0    1527
0-6 months    SAS-CompFeed     INDIA                          14                      0       14    1527
0-6 months    SAS-CompFeed     INDIA                          14                      1        3    1527
0-6 months    SAS-CompFeed     INDIA                          15                      0       52    1527
0-6 months    SAS-CompFeed     INDIA                          15                      1       13    1527
0-6 months    SAS-CompFeed     INDIA                          16                      0        9    1527
0-6 months    SAS-CompFeed     INDIA                          16                      1        1    1527
0-6 months    SAS-CompFeed     INDIA                          17                      0       15    1527
0-6 months    SAS-CompFeed     INDIA                          17                      1        0    1527
0-6 months    SAS-CompFeed     INDIA                          18                      0        3    1527
0-6 months    SAS-CompFeed     INDIA                          18                      1        0    1527
0-6 months    SAS-CompFeed     INDIA                          19                      0        1    1527
0-6 months    SAS-CompFeed     INDIA                          19                      1        0    1527
0-6 months    SAS-CompFeed     INDIA                          20                      0        1    1527
0-6 months    SAS-CompFeed     INDIA                          20                      1        0    1527
0-6 months    SAS-CompFeed     INDIA                          21                      0        0    1527
0-6 months    SAS-CompFeed     INDIA                          21                      1        0    1527
0-6 months    SAS-CompFeed     INDIA                          24                      0        0    1527
0-6 months    SAS-CompFeed     INDIA                          24                      1        0    1527
0-6 months    SAS-CompFeed     INDIA                          25                      0        0    1527
0-6 months    SAS-CompFeed     INDIA                          25                      1        0    1527
0-6 months    SAS-CompFeed     INDIA                          27                      0        0    1527
0-6 months    SAS-CompFeed     INDIA                          27                      1        0    1527
0-6 months    SAS-FoodSuppl    INDIA                          0                       0      128     416
0-6 months    SAS-FoodSuppl    INDIA                          0                       1       18     416
0-6 months    SAS-FoodSuppl    INDIA                          1                       0        1     416
0-6 months    SAS-FoodSuppl    INDIA                          1                       1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          2                       0        8     416
0-6 months    SAS-FoodSuppl    INDIA                          2                       1        1     416
0-6 months    SAS-FoodSuppl    INDIA                          3                       0        5     416
0-6 months    SAS-FoodSuppl    INDIA                          3                       1        2     416
0-6 months    SAS-FoodSuppl    INDIA                          4                       0        8     416
0-6 months    SAS-FoodSuppl    INDIA                          4                       1        3     416
0-6 months    SAS-FoodSuppl    INDIA                          5                       0       46     416
0-6 months    SAS-FoodSuppl    INDIA                          5                       1        9     416
0-6 months    SAS-FoodSuppl    INDIA                          6                       0       11     416
0-6 months    SAS-FoodSuppl    INDIA                          6                       1        1     416
0-6 months    SAS-FoodSuppl    INDIA                          7                       0       15     416
0-6 months    SAS-FoodSuppl    INDIA                          7                       1        1     416
0-6 months    SAS-FoodSuppl    INDIA                          8                       0       42     416
0-6 months    SAS-FoodSuppl    INDIA                          8                       1        7     416
0-6 months    SAS-FoodSuppl    INDIA                          9                       0       23     416
0-6 months    SAS-FoodSuppl    INDIA                          9                       1        3     416
0-6 months    SAS-FoodSuppl    INDIA                          10                      0       57     416
0-6 months    SAS-FoodSuppl    INDIA                          10                      1        3     416
0-6 months    SAS-FoodSuppl    INDIA                          11                      0        2     416
0-6 months    SAS-FoodSuppl    INDIA                          11                      1        1     416
0-6 months    SAS-FoodSuppl    INDIA                          12                      0        9     416
0-6 months    SAS-FoodSuppl    INDIA                          12                      1        1     416
0-6 months    SAS-FoodSuppl    INDIA                          13                      0        1     416
0-6 months    SAS-FoodSuppl    INDIA                          13                      1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          14                      0        7     416
0-6 months    SAS-FoodSuppl    INDIA                          14                      1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          15                      0        3     416
0-6 months    SAS-FoodSuppl    INDIA                          15                      1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          16                      0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          16                      1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          17                      0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          17                      1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          18                      0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          18                      1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          19                      0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          19                      1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          20                      0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          20                      1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          21                      0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          21                      1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          24                      0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          24                      1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          25                      0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          25                      1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          27                      0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          27                      1        0     416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0        5    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                       0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                       1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                       0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                       1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                       0        6    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                       1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                       0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                       1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                       0        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                       1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                       0     1198    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                       1       60    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                       0        8    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                       1        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                       0       52    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                       1        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                      0       23    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                      1        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                      0      555    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                      1       23    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                      0       17    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                      1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                      0      112    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                      1        5    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                      0       14    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                      1        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                      0       23    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                      1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                      0       28    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                      1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                      0       22    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                      1        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                      0        5    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                      1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                      0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                      1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                      0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                      1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                      0        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                      1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                      0       15    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                      1        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                      0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                      1        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                      0      195    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                      1        8    2383
0-6 months    ZVITAMBO         ZIMBABWE                       0                       0       56   13679
0-6 months    ZVITAMBO         ZIMBABWE                       0                       1        6   13679
0-6 months    ZVITAMBO         ZIMBABWE                       1                       0        1   13679
0-6 months    ZVITAMBO         ZIMBABWE                       1                       1        1   13679
0-6 months    ZVITAMBO         ZIMBABWE                       2                       0        4   13679
0-6 months    ZVITAMBO         ZIMBABWE                       2                       1        1   13679
0-6 months    ZVITAMBO         ZIMBABWE                       3                       0       12   13679
0-6 months    ZVITAMBO         ZIMBABWE                       3                       1        3   13679
0-6 months    ZVITAMBO         ZIMBABWE                       4                       0       21   13679
0-6 months    ZVITAMBO         ZIMBABWE                       4                       1        2   13679
0-6 months    ZVITAMBO         ZIMBABWE                       5                       0       27   13679
0-6 months    ZVITAMBO         ZIMBABWE                       5                       1        5   13679
0-6 months    ZVITAMBO         ZIMBABWE                       6                       0       41   13679
0-6 months    ZVITAMBO         ZIMBABWE                       6                       1        2   13679
0-6 months    ZVITAMBO         ZIMBABWE                       7                       0      699   13679
0-6 months    ZVITAMBO         ZIMBABWE                       7                       1       94   13679
0-6 months    ZVITAMBO         ZIMBABWE                       8                       0       96   13679
0-6 months    ZVITAMBO         ZIMBABWE                       8                       1        7   13679
0-6 months    ZVITAMBO         ZIMBABWE                       9                       0      812   13679
0-6 months    ZVITAMBO         ZIMBABWE                       9                       1       88   13679
0-6 months    ZVITAMBO         ZIMBABWE                       10                      0      298   13679
0-6 months    ZVITAMBO         ZIMBABWE                       10                      1       33   13679
0-6 months    ZVITAMBO         ZIMBABWE                       11                      0     9460   13679
0-6 months    ZVITAMBO         ZIMBABWE                       11                      1      912   13679
0-6 months    ZVITAMBO         ZIMBABWE                       12                      0       52   13679
0-6 months    ZVITAMBO         ZIMBABWE                       12                      1        7   13679
0-6 months    ZVITAMBO         ZIMBABWE                       13                      0      867   13679
0-6 months    ZVITAMBO         ZIMBABWE                       13                      1       72   13679
0-6 months    ZVITAMBO         ZIMBABWE                       14                      0        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       14                      1        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       15                      0        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       15                      1        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       16                      0        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       16                      1        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       17                      0        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       17                      1        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       18                      0        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       18                      1        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       19                      0        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       19                      1        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       20                      0        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       20                      1        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       21                      0        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       21                      1        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       24                      0        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       24                      1        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       25                      0        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       25                      1        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       27                      0        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       27                      1        0   13679


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
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


ALL STRATA DROPPED. JOB FINISHED
















