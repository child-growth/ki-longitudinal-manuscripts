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

**Outcome Variable:** ever_swasted

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

agecat        studyid          country                        feducyrs    ever_swasted   n_cell       n
------------  ---------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   COHORTS          GUATEMALA                      0                      0      521    1234
0-24 months   COHORTS          GUATEMALA                      0                      1       37    1234
0-24 months   COHORTS          GUATEMALA                      1                      0       62    1234
0-24 months   COHORTS          GUATEMALA                      1                      1        5    1234
0-24 months   COHORTS          GUATEMALA                      2                      0      196    1234
0-24 months   COHORTS          GUATEMALA                      2                      1       20    1234
0-24 months   COHORTS          GUATEMALA                      3                      0      153    1234
0-24 months   COHORTS          GUATEMALA                      3                      1        9    1234
0-24 months   COHORTS          GUATEMALA                      4                      0       72    1234
0-24 months   COHORTS          GUATEMALA                      4                      1        7    1234
0-24 months   COHORTS          GUATEMALA                      5                      0       29    1234
0-24 months   COHORTS          GUATEMALA                      5                      1        2    1234
0-24 months   COHORTS          GUATEMALA                      6                      0       98    1234
0-24 months   COHORTS          GUATEMALA                      6                      1        8    1234
0-24 months   COHORTS          GUATEMALA                      7                      0        4    1234
0-24 months   COHORTS          GUATEMALA                      7                      1        0    1234
0-24 months   COHORTS          GUATEMALA                      8                      0        2    1234
0-24 months   COHORTS          GUATEMALA                      8                      1        0    1234
0-24 months   COHORTS          GUATEMALA                      9                      0        1    1234
0-24 months   COHORTS          GUATEMALA                      9                      1        0    1234
0-24 months   COHORTS          GUATEMALA                      10                     0        1    1234
0-24 months   COHORTS          GUATEMALA                      10                     1        0    1234
0-24 months   COHORTS          GUATEMALA                      11                     0        0    1234
0-24 months   COHORTS          GUATEMALA                      11                     1        0    1234
0-24 months   COHORTS          GUATEMALA                      12                     0        5    1234
0-24 months   COHORTS          GUATEMALA                      12                     1        0    1234
0-24 months   COHORTS          GUATEMALA                      13                     0        0    1234
0-24 months   COHORTS          GUATEMALA                      13                     1        0    1234
0-24 months   COHORTS          GUATEMALA                      14                     0        1    1234
0-24 months   COHORTS          GUATEMALA                      14                     1        0    1234
0-24 months   COHORTS          GUATEMALA                      15                     0        1    1234
0-24 months   COHORTS          GUATEMALA                      15                     1        0    1234
0-24 months   COHORTS          GUATEMALA                      16                     0        0    1234
0-24 months   COHORTS          GUATEMALA                      16                     1        0    1234
0-24 months   COHORTS          GUATEMALA                      17                     0        0    1234
0-24 months   COHORTS          GUATEMALA                      17                     1        0    1234
0-24 months   COHORTS          GUATEMALA                      18                     0        0    1234
0-24 months   COHORTS          GUATEMALA                      18                     1        0    1234
0-24 months   COHORTS          GUATEMALA                      19                     0        0    1234
0-24 months   COHORTS          GUATEMALA                      19                     1        0    1234
0-24 months   COHORTS          GUATEMALA                      20                     0        0    1234
0-24 months   COHORTS          GUATEMALA                      20                     1        0    1234
0-24 months   COHORTS          GUATEMALA                      21                     0        0    1234
0-24 months   COHORTS          GUATEMALA                      21                     1        0    1234
0-24 months   COHORTS          GUATEMALA                      24                     0        0    1234
0-24 months   COHORTS          GUATEMALA                      24                     1        0    1234
0-24 months   COHORTS          GUATEMALA                      25                     0        0    1234
0-24 months   COHORTS          GUATEMALA                      25                     1        0    1234
0-24 months   COHORTS          GUATEMALA                      27                     0        0    1234
0-24 months   COHORTS          GUATEMALA                      27                     1        0    1234
0-24 months   COHORTS          INDIA                          0                      0      111    1447
0-24 months   COHORTS          INDIA                          0                      1       13    1447
0-24 months   COHORTS          INDIA                          1                      0        0    1447
0-24 months   COHORTS          INDIA                          1                      1        0    1447
0-24 months   COHORTS          INDIA                          2                      0        0    1447
0-24 months   COHORTS          INDIA                          2                      1        0    1447
0-24 months   COHORTS          INDIA                          3                      0      123    1447
0-24 months   COHORTS          INDIA                          3                      1       11    1447
0-24 months   COHORTS          INDIA                          4                      0        0    1447
0-24 months   COHORTS          INDIA                          4                      1        0    1447
0-24 months   COHORTS          INDIA                          5                      0        0    1447
0-24 months   COHORTS          INDIA                          5                      1        0    1447
0-24 months   COHORTS          INDIA                          6                      0        0    1447
0-24 months   COHORTS          INDIA                          6                      1        0    1447
0-24 months   COHORTS          INDIA                          7                      0        0    1447
0-24 months   COHORTS          INDIA                          7                      1        0    1447
0-24 months   COHORTS          INDIA                          8                      0      200    1447
0-24 months   COHORTS          INDIA                          8                      1       14    1447
0-24 months   COHORTS          INDIA                          9                      0        0    1447
0-24 months   COHORTS          INDIA                          9                      1        0    1447
0-24 months   COHORTS          INDIA                          10                     0        0    1447
0-24 months   COHORTS          INDIA                          10                     1        0    1447
0-24 months   COHORTS          INDIA                          11                     0        0    1447
0-24 months   COHORTS          INDIA                          11                     1        0    1447
0-24 months   COHORTS          INDIA                          12                     0      365    1447
0-24 months   COHORTS          INDIA                          12                     1       43    1447
0-24 months   COHORTS          INDIA                          13                     0        0    1447
0-24 months   COHORTS          INDIA                          13                     1        0    1447
0-24 months   COHORTS          INDIA                          14                     0      143    1447
0-24 months   COHORTS          INDIA                          14                     1       15    1447
0-24 months   COHORTS          INDIA                          15                     0      250    1447
0-24 months   COHORTS          INDIA                          15                     1       33    1447
0-24 months   COHORTS          INDIA                          16                     0        0    1447
0-24 months   COHORTS          INDIA                          16                     1        0    1447
0-24 months   COHORTS          INDIA                          17                     0      115    1447
0-24 months   COHORTS          INDIA                          17                     1       11    1447
0-24 months   COHORTS          INDIA                          18                     0        0    1447
0-24 months   COHORTS          INDIA                          18                     1        0    1447
0-24 months   COHORTS          INDIA                          19                     0        0    1447
0-24 months   COHORTS          INDIA                          19                     1        0    1447
0-24 months   COHORTS          INDIA                          20                     0        0    1447
0-24 months   COHORTS          INDIA                          20                     1        0    1447
0-24 months   COHORTS          INDIA                          21                     0        0    1447
0-24 months   COHORTS          INDIA                          21                     1        0    1447
0-24 months   COHORTS          INDIA                          24                     0        0    1447
0-24 months   COHORTS          INDIA                          24                     1        0    1447
0-24 months   COHORTS          INDIA                          25                     0        0    1447
0-24 months   COHORTS          INDIA                          25                     1        0    1447
0-24 months   COHORTS          INDIA                          27                     0        0    1447
0-24 months   COHORTS          INDIA                          27                     1        0    1447
0-24 months   COHORTS          PHILIPPINES                    0                      0       54    2868
0-24 months   COHORTS          PHILIPPINES                    0                      1        6    2868
0-24 months   COHORTS          PHILIPPINES                    1                      0       29    2868
0-24 months   COHORTS          PHILIPPINES                    1                      1        7    2868
0-24 months   COHORTS          PHILIPPINES                    2                      0       83    2868
0-24 months   COHORTS          PHILIPPINES                    2                      1       13    2868
0-24 months   COHORTS          PHILIPPINES                    3                      0      152    2868
0-24 months   COHORTS          PHILIPPINES                    3                      1       16    2868
0-24 months   COHORTS          PHILIPPINES                    4                      0      234    2868
0-24 months   COHORTS          PHILIPPINES                    4                      1       28    2868
0-24 months   COHORTS          PHILIPPINES                    5                      0      174    2868
0-24 months   COHORTS          PHILIPPINES                    5                      1       30    2868
0-24 months   COHORTS          PHILIPPINES                    6                      0      545    2868
0-24 months   COHORTS          PHILIPPINES                    6                      1       96    2868
0-24 months   COHORTS          PHILIPPINES                    7                      0      130    2868
0-24 months   COHORTS          PHILIPPINES                    7                      1       19    2868
0-24 months   COHORTS          PHILIPPINES                    8                      0      204    2868
0-24 months   COHORTS          PHILIPPINES                    8                      1       20    2868
0-24 months   COHORTS          PHILIPPINES                    9                      0      170    2868
0-24 months   COHORTS          PHILIPPINES                    9                      1       26    2868
0-24 months   COHORTS          PHILIPPINES                    10                     0      294    2868
0-24 months   COHORTS          PHILIPPINES                    10                     1       36    2868
0-24 months   COHORTS          PHILIPPINES                    11                     0       59    2868
0-24 months   COHORTS          PHILIPPINES                    11                     1        6    2868
0-24 months   COHORTS          PHILIPPINES                    12                     0      161    2868
0-24 months   COHORTS          PHILIPPINES                    12                     1       19    2868
0-24 months   COHORTS          PHILIPPINES                    13                     0       55    2868
0-24 months   COHORTS          PHILIPPINES                    13                     1        7    2868
0-24 months   COHORTS          PHILIPPINES                    14                     0      131    2868
0-24 months   COHORTS          PHILIPPINES                    14                     1       16    2868
0-24 months   COHORTS          PHILIPPINES                    15                     0       30    2868
0-24 months   COHORTS          PHILIPPINES                    15                     1        6    2868
0-24 months   COHORTS          PHILIPPINES                    16                     0        7    2868
0-24 months   COHORTS          PHILIPPINES                    16                     1        1    2868
0-24 months   COHORTS          PHILIPPINES                    17                     0        2    2868
0-24 months   COHORTS          PHILIPPINES                    17                     1        0    2868
0-24 months   COHORTS          PHILIPPINES                    18                     0        2    2868
0-24 months   COHORTS          PHILIPPINES                    18                     1        0    2868
0-24 months   COHORTS          PHILIPPINES                    19                     0        0    2868
0-24 months   COHORTS          PHILIPPINES                    19                     1        0    2868
0-24 months   COHORTS          PHILIPPINES                    20                     0        0    2868
0-24 months   COHORTS          PHILIPPINES                    20                     1        0    2868
0-24 months   COHORTS          PHILIPPINES                    21                     0        0    2868
0-24 months   COHORTS          PHILIPPINES                    21                     1        0    2868
0-24 months   COHORTS          PHILIPPINES                    24                     0        0    2868
0-24 months   COHORTS          PHILIPPINES                    24                     1        0    2868
0-24 months   COHORTS          PHILIPPINES                    25                     0        0    2868
0-24 months   COHORTS          PHILIPPINES                    25                     1        0    2868
0-24 months   COHORTS          PHILIPPINES                    27                     0        0    2868
0-24 months   COHORTS          PHILIPPINES                    27                     1        0    2868
0-24 months   GMS-Nepal        NEPAL                          0                      0      210     684
0-24 months   GMS-Nepal        NEPAL                          0                      1       82     684
0-24 months   GMS-Nepal        NEPAL                          1                      0        0     684
0-24 months   GMS-Nepal        NEPAL                          1                      1        0     684
0-24 months   GMS-Nepal        NEPAL                          2                      0        0     684
0-24 months   GMS-Nepal        NEPAL                          2                      1        0     684
0-24 months   GMS-Nepal        NEPAL                          3                      0        0     684
0-24 months   GMS-Nepal        NEPAL                          3                      1        0     684
0-24 months   GMS-Nepal        NEPAL                          4                      0        0     684
0-24 months   GMS-Nepal        NEPAL                          4                      1        0     684
0-24 months   GMS-Nepal        NEPAL                          5                      0       79     684
0-24 months   GMS-Nepal        NEPAL                          5                      1       31     684
0-24 months   GMS-Nepal        NEPAL                          6                      0        0     684
0-24 months   GMS-Nepal        NEPAL                          6                      1        0     684
0-24 months   GMS-Nepal        NEPAL                          7                      0        0     684
0-24 months   GMS-Nepal        NEPAL                          7                      1        0     684
0-24 months   GMS-Nepal        NEPAL                          8                      0       93     684
0-24 months   GMS-Nepal        NEPAL                          8                      1       20     684
0-24 months   GMS-Nepal        NEPAL                          9                      0        0     684
0-24 months   GMS-Nepal        NEPAL                          9                      1        0     684
0-24 months   GMS-Nepal        NEPAL                          10                     0       91     684
0-24 months   GMS-Nepal        NEPAL                          10                     1       39     684
0-24 months   GMS-Nepal        NEPAL                          11                     0        0     684
0-24 months   GMS-Nepal        NEPAL                          11                     1        0     684
0-24 months   GMS-Nepal        NEPAL                          12                     0       34     684
0-24 months   GMS-Nepal        NEPAL                          12                     1        5     684
0-24 months   GMS-Nepal        NEPAL                          13                     0        0     684
0-24 months   GMS-Nepal        NEPAL                          13                     1        0     684
0-24 months   GMS-Nepal        NEPAL                          14                     0        0     684
0-24 months   GMS-Nepal        NEPAL                          14                     1        0     684
0-24 months   GMS-Nepal        NEPAL                          15                     0        0     684
0-24 months   GMS-Nepal        NEPAL                          15                     1        0     684
0-24 months   GMS-Nepal        NEPAL                          16                     0        0     684
0-24 months   GMS-Nepal        NEPAL                          16                     1        0     684
0-24 months   GMS-Nepal        NEPAL                          17                     0        0     684
0-24 months   GMS-Nepal        NEPAL                          17                     1        0     684
0-24 months   GMS-Nepal        NEPAL                          18                     0        0     684
0-24 months   GMS-Nepal        NEPAL                          18                     1        0     684
0-24 months   GMS-Nepal        NEPAL                          19                     0        0     684
0-24 months   GMS-Nepal        NEPAL                          19                     1        0     684
0-24 months   GMS-Nepal        NEPAL                          20                     0        0     684
0-24 months   GMS-Nepal        NEPAL                          20                     1        0     684
0-24 months   GMS-Nepal        NEPAL                          21                     0        0     684
0-24 months   GMS-Nepal        NEPAL                          21                     1        0     684
0-24 months   GMS-Nepal        NEPAL                          24                     0        0     684
0-24 months   GMS-Nepal        NEPAL                          24                     1        0     684
0-24 months   GMS-Nepal        NEPAL                          25                     0        0     684
0-24 months   GMS-Nepal        NEPAL                          25                     1        0     684
0-24 months   GMS-Nepal        NEPAL                          27                     0        0     684
0-24 months   GMS-Nepal        NEPAL                          27                     1        0     684
0-24 months   LCNI-5           MALAWI                         0                      0      289     813
0-24 months   LCNI-5           MALAWI                         0                      1        2     813
0-24 months   LCNI-5           MALAWI                         1                      0       11     813
0-24 months   LCNI-5           MALAWI                         1                      1        0     813
0-24 months   LCNI-5           MALAWI                         2                      0       32     813
0-24 months   LCNI-5           MALAWI                         2                      1        0     813
0-24 months   LCNI-5           MALAWI                         3                      0       38     813
0-24 months   LCNI-5           MALAWI                         3                      1        1     813
0-24 months   LCNI-5           MALAWI                         4                      0       58     813
0-24 months   LCNI-5           MALAWI                         4                      1        1     813
0-24 months   LCNI-5           MALAWI                         5                      0       61     813
0-24 months   LCNI-5           MALAWI                         5                      1        0     813
0-24 months   LCNI-5           MALAWI                         6                      0       69     813
0-24 months   LCNI-5           MALAWI                         6                      1        0     813
0-24 months   LCNI-5           MALAWI                         7                      0       66     813
0-24 months   LCNI-5           MALAWI                         7                      1        2     813
0-24 months   LCNI-5           MALAWI                         8                      0       90     813
0-24 months   LCNI-5           MALAWI                         8                      1        1     813
0-24 months   LCNI-5           MALAWI                         9                      0       12     813
0-24 months   LCNI-5           MALAWI                         9                      1        0     813
0-24 months   LCNI-5           MALAWI                         10                     0       16     813
0-24 months   LCNI-5           MALAWI                         10                     1        0     813
0-24 months   LCNI-5           MALAWI                         11                     0        7     813
0-24 months   LCNI-5           MALAWI                         11                     1        0     813
0-24 months   LCNI-5           MALAWI                         12                     0       51     813
0-24 months   LCNI-5           MALAWI                         12                     1        1     813
0-24 months   LCNI-5           MALAWI                         13                     0        1     813
0-24 months   LCNI-5           MALAWI                         13                     1        0     813
0-24 months   LCNI-5           MALAWI                         14                     0        3     813
0-24 months   LCNI-5           MALAWI                         14                     1        0     813
0-24 months   LCNI-5           MALAWI                         15                     0        0     813
0-24 months   LCNI-5           MALAWI                         15                     1        0     813
0-24 months   LCNI-5           MALAWI                         16                     0        1     813
0-24 months   LCNI-5           MALAWI                         16                     1        0     813
0-24 months   LCNI-5           MALAWI                         17                     0        0     813
0-24 months   LCNI-5           MALAWI                         17                     1        0     813
0-24 months   LCNI-5           MALAWI                         18                     0        0     813
0-24 months   LCNI-5           MALAWI                         18                     1        0     813
0-24 months   LCNI-5           MALAWI                         19                     0        0     813
0-24 months   LCNI-5           MALAWI                         19                     1        0     813
0-24 months   LCNI-5           MALAWI                         20                     0        0     813
0-24 months   LCNI-5           MALAWI                         20                     1        0     813
0-24 months   LCNI-5           MALAWI                         21                     0        0     813
0-24 months   LCNI-5           MALAWI                         21                     1        0     813
0-24 months   LCNI-5           MALAWI                         24                     0        0     813
0-24 months   LCNI-5           MALAWI                         24                     1        0     813
0-24 months   LCNI-5           MALAWI                         25                     0        0     813
0-24 months   LCNI-5           MALAWI                         25                     1        0     813
0-24 months   LCNI-5           MALAWI                         27                     0        0     813
0-24 months   LCNI-5           MALAWI                         27                     1        0     813
0-24 months   MAL-ED           BANGLADESH                     0                      0        0     147
0-24 months   MAL-ED           BANGLADESH                     0                      1        0     147
0-24 months   MAL-ED           BANGLADESH                     1                      0        5     147
0-24 months   MAL-ED           BANGLADESH                     1                      1        2     147
0-24 months   MAL-ED           BANGLADESH                     2                      0       10     147
0-24 months   MAL-ED           BANGLADESH                     2                      1        2     147
0-24 months   MAL-ED           BANGLADESH                     3                      0       10     147
0-24 months   MAL-ED           BANGLADESH                     3                      1        2     147
0-24 months   MAL-ED           BANGLADESH                     4                      0        8     147
0-24 months   MAL-ED           BANGLADESH                     4                      1        0     147
0-24 months   MAL-ED           BANGLADESH                     5                      0       33     147
0-24 months   MAL-ED           BANGLADESH                     5                      1        3     147
0-24 months   MAL-ED           BANGLADESH                     6                      0        6     147
0-24 months   MAL-ED           BANGLADESH                     6                      1        2     147
0-24 months   MAL-ED           BANGLADESH                     7                      0       10     147
0-24 months   MAL-ED           BANGLADESH                     7                      1        0     147
0-24 months   MAL-ED           BANGLADESH                     8                      0       16     147
0-24 months   MAL-ED           BANGLADESH                     8                      1        2     147
0-24 months   MAL-ED           BANGLADESH                     9                      0       14     147
0-24 months   MAL-ED           BANGLADESH                     9                      1        0     147
0-24 months   MAL-ED           BANGLADESH                     10                     0       10     147
0-24 months   MAL-ED           BANGLADESH                     10                     1        0     147
0-24 months   MAL-ED           BANGLADESH                     11                     0        0     147
0-24 months   MAL-ED           BANGLADESH                     11                     1        0     147
0-24 months   MAL-ED           BANGLADESH                     12                     0        8     147
0-24 months   MAL-ED           BANGLADESH                     12                     1        2     147
0-24 months   MAL-ED           BANGLADESH                     13                     0        0     147
0-24 months   MAL-ED           BANGLADESH                     13                     1        0     147
0-24 months   MAL-ED           BANGLADESH                     14                     0        0     147
0-24 months   MAL-ED           BANGLADESH                     14                     1        0     147
0-24 months   MAL-ED           BANGLADESH                     15                     0        0     147
0-24 months   MAL-ED           BANGLADESH                     15                     1        0     147
0-24 months   MAL-ED           BANGLADESH                     16                     0        2     147
0-24 months   MAL-ED           BANGLADESH                     16                     1        0     147
0-24 months   MAL-ED           BANGLADESH                     17                     0        0     147
0-24 months   MAL-ED           BANGLADESH                     17                     1        0     147
0-24 months   MAL-ED           BANGLADESH                     18                     0        0     147
0-24 months   MAL-ED           BANGLADESH                     18                     1        0     147
0-24 months   MAL-ED           BANGLADESH                     19                     0        0     147
0-24 months   MAL-ED           BANGLADESH                     19                     1        0     147
0-24 months   MAL-ED           BANGLADESH                     20                     0        0     147
0-24 months   MAL-ED           BANGLADESH                     20                     1        0     147
0-24 months   MAL-ED           BANGLADESH                     21                     0        0     147
0-24 months   MAL-ED           BANGLADESH                     21                     1        0     147
0-24 months   MAL-ED           BANGLADESH                     24                     0        0     147
0-24 months   MAL-ED           BANGLADESH                     24                     1        0     147
0-24 months   MAL-ED           BANGLADESH                     25                     0        0     147
0-24 months   MAL-ED           BANGLADESH                     25                     1        0     147
0-24 months   MAL-ED           BANGLADESH                     27                     0        0     147
0-24 months   MAL-ED           BANGLADESH                     27                     1        0     147
0-24 months   MAL-ED           INDIA                          0                      0        0     147
0-24 months   MAL-ED           INDIA                          0                      1        0     147
0-24 months   MAL-ED           INDIA                          1                      0        0     147
0-24 months   MAL-ED           INDIA                          1                      1        0     147
0-24 months   MAL-ED           INDIA                          2                      0        5     147
0-24 months   MAL-ED           INDIA                          2                      1        1     147
0-24 months   MAL-ED           INDIA                          3                      0       10     147
0-24 months   MAL-ED           INDIA                          3                      1        2     147
0-24 months   MAL-ED           INDIA                          4                      0        7     147
0-24 months   MAL-ED           INDIA                          4                      1        0     147
0-24 months   MAL-ED           INDIA                          5                      0       29     147
0-24 months   MAL-ED           INDIA                          5                      1        5     147
0-24 months   MAL-ED           INDIA                          6                      0        9     147
0-24 months   MAL-ED           INDIA                          6                      1        2     147
0-24 months   MAL-ED           INDIA                          7                      0       11     147
0-24 months   MAL-ED           INDIA                          7                      1        1     147
0-24 months   MAL-ED           INDIA                          8                      0       17     147
0-24 months   MAL-ED           INDIA                          8                      1        4     147
0-24 months   MAL-ED           INDIA                          9                      0       26     147
0-24 months   MAL-ED           INDIA                          9                      1        1     147
0-24 months   MAL-ED           INDIA                          10                     0        6     147
0-24 months   MAL-ED           INDIA                          10                     1        0     147
0-24 months   MAL-ED           INDIA                          11                     0        2     147
0-24 months   MAL-ED           INDIA                          11                     1        0     147
0-24 months   MAL-ED           INDIA                          12                     0        3     147
0-24 months   MAL-ED           INDIA                          12                     1        0     147
0-24 months   MAL-ED           INDIA                          13                     0        1     147
0-24 months   MAL-ED           INDIA                          13                     1        0     147
0-24 months   MAL-ED           INDIA                          14                     0        2     147
0-24 months   MAL-ED           INDIA                          14                     1        0     147
0-24 months   MAL-ED           INDIA                          15                     0        2     147
0-24 months   MAL-ED           INDIA                          15                     1        0     147
0-24 months   MAL-ED           INDIA                          16                     0        0     147
0-24 months   MAL-ED           INDIA                          16                     1        0     147
0-24 months   MAL-ED           INDIA                          17                     0        0     147
0-24 months   MAL-ED           INDIA                          17                     1        0     147
0-24 months   MAL-ED           INDIA                          18                     0        1     147
0-24 months   MAL-ED           INDIA                          18                     1        0     147
0-24 months   MAL-ED           INDIA                          19                     0        0     147
0-24 months   MAL-ED           INDIA                          19                     1        0     147
0-24 months   MAL-ED           INDIA                          20                     0        0     147
0-24 months   MAL-ED           INDIA                          20                     1        0     147
0-24 months   MAL-ED           INDIA                          21                     0        0     147
0-24 months   MAL-ED           INDIA                          21                     1        0     147
0-24 months   MAL-ED           INDIA                          24                     0        0     147
0-24 months   MAL-ED           INDIA                          24                     1        0     147
0-24 months   MAL-ED           INDIA                          25                     0        0     147
0-24 months   MAL-ED           INDIA                          25                     1        0     147
0-24 months   MAL-ED           INDIA                          27                     0        0     147
0-24 months   MAL-ED           INDIA                          27                     1        0     147
0-24 months   MAL-ED           NEPAL                          0                      0        0      98
0-24 months   MAL-ED           NEPAL                          0                      1        0      98
0-24 months   MAL-ED           NEPAL                          1                      0        0      98
0-24 months   MAL-ED           NEPAL                          1                      1        0      98
0-24 months   MAL-ED           NEPAL                          2                      0        4      98
0-24 months   MAL-ED           NEPAL                          2                      1        0      98
0-24 months   MAL-ED           NEPAL                          3                      0        3      98
0-24 months   MAL-ED           NEPAL                          3                      1        0      98
0-24 months   MAL-ED           NEPAL                          4                      0       11      98
0-24 months   MAL-ED           NEPAL                          4                      1        0      98
0-24 months   MAL-ED           NEPAL                          5                      0        6      98
0-24 months   MAL-ED           NEPAL                          5                      1        0      98
0-24 months   MAL-ED           NEPAL                          6                      0        4      98
0-24 months   MAL-ED           NEPAL                          6                      1        0      98
0-24 months   MAL-ED           NEPAL                          7                      0        8      98
0-24 months   MAL-ED           NEPAL                          7                      1        1      98
0-24 months   MAL-ED           NEPAL                          8                      0       11      98
0-24 months   MAL-ED           NEPAL                          8                      1        1      98
0-24 months   MAL-ED           NEPAL                          9                      0        7      98
0-24 months   MAL-ED           NEPAL                          9                      1        0      98
0-24 months   MAL-ED           NEPAL                          10                     0       26      98
0-24 months   MAL-ED           NEPAL                          10                     1        1      98
0-24 months   MAL-ED           NEPAL                          11                     0        1      98
0-24 months   MAL-ED           NEPAL                          11                     1        0      98
0-24 months   MAL-ED           NEPAL                          12                     0        7      98
0-24 months   MAL-ED           NEPAL                          12                     1        1      98
0-24 months   MAL-ED           NEPAL                          13                     0        0      98
0-24 months   MAL-ED           NEPAL                          13                     1        0      98
0-24 months   MAL-ED           NEPAL                          14                     0        0      98
0-24 months   MAL-ED           NEPAL                          14                     1        0      98
0-24 months   MAL-ED           NEPAL                          15                     0        1      98
0-24 months   MAL-ED           NEPAL                          15                     1        0      98
0-24 months   MAL-ED           NEPAL                          16                     0        1      98
0-24 months   MAL-ED           NEPAL                          16                     1        0      98
0-24 months   MAL-ED           NEPAL                          17                     0        3      98
0-24 months   MAL-ED           NEPAL                          17                     1        0      98
0-24 months   MAL-ED           NEPAL                          18                     0        1      98
0-24 months   MAL-ED           NEPAL                          18                     1        0      98
0-24 months   MAL-ED           NEPAL                          19                     0        0      98
0-24 months   MAL-ED           NEPAL                          19                     1        0      98
0-24 months   MAL-ED           NEPAL                          20                     0        0      98
0-24 months   MAL-ED           NEPAL                          20                     1        0      98
0-24 months   MAL-ED           NEPAL                          21                     0        0      98
0-24 months   MAL-ED           NEPAL                          21                     1        0      98
0-24 months   MAL-ED           NEPAL                          24                     0        0      98
0-24 months   MAL-ED           NEPAL                          24                     1        0      98
0-24 months   MAL-ED           NEPAL                          25                     0        0      98
0-24 months   MAL-ED           NEPAL                          25                     1        0      98
0-24 months   MAL-ED           NEPAL                          27                     0        0      98
0-24 months   MAL-ED           NEPAL                          27                     1        0      98
0-24 months   MAL-ED           PERU                           0                      0        1     250
0-24 months   MAL-ED           PERU                           0                      1        0     250
0-24 months   MAL-ED           PERU                           1                      0        2     250
0-24 months   MAL-ED           PERU                           1                      1        0     250
0-24 months   MAL-ED           PERU                           2                      0        1     250
0-24 months   MAL-ED           PERU                           2                      1        0     250
0-24 months   MAL-ED           PERU                           3                      0        9     250
0-24 months   MAL-ED           PERU                           3                      1        0     250
0-24 months   MAL-ED           PERU                           4                      0        4     250
0-24 months   MAL-ED           PERU                           4                      1        0     250
0-24 months   MAL-ED           PERU                           5                      0        8     250
0-24 months   MAL-ED           PERU                           5                      1        0     250
0-24 months   MAL-ED           PERU                           6                      0       26     250
0-24 months   MAL-ED           PERU                           6                      1        0     250
0-24 months   MAL-ED           PERU                           7                      0       18     250
0-24 months   MAL-ED           PERU                           7                      1        0     250
0-24 months   MAL-ED           PERU                           8                      0       22     250
0-24 months   MAL-ED           PERU                           8                      1        0     250
0-24 months   MAL-ED           PERU                           9                      0       26     250
0-24 months   MAL-ED           PERU                           9                      1        0     250
0-24 months   MAL-ED           PERU                           10                     0       13     250
0-24 months   MAL-ED           PERU                           10                     1        0     250
0-24 months   MAL-ED           PERU                           11                     0       95     250
0-24 months   MAL-ED           PERU                           11                     1        4     250
0-24 months   MAL-ED           PERU                           12                     0        1     250
0-24 months   MAL-ED           PERU                           12                     1        0     250
0-24 months   MAL-ED           PERU                           13                     0        5     250
0-24 months   MAL-ED           PERU                           13                     1        0     250
0-24 months   MAL-ED           PERU                           14                     0        5     250
0-24 months   MAL-ED           PERU                           14                     1        0     250
0-24 months   MAL-ED           PERU                           15                     0        1     250
0-24 months   MAL-ED           PERU                           15                     1        0     250
0-24 months   MAL-ED           PERU                           16                     0        1     250
0-24 months   MAL-ED           PERU                           16                     1        0     250
0-24 months   MAL-ED           PERU                           17                     0        1     250
0-24 months   MAL-ED           PERU                           17                     1        0     250
0-24 months   MAL-ED           PERU                           18                     0        5     250
0-24 months   MAL-ED           PERU                           18                     1        0     250
0-24 months   MAL-ED           PERU                           19                     0        0     250
0-24 months   MAL-ED           PERU                           19                     1        0     250
0-24 months   MAL-ED           PERU                           20                     0        2     250
0-24 months   MAL-ED           PERU                           20                     1        0     250
0-24 months   MAL-ED           PERU                           21                     0        0     250
0-24 months   MAL-ED           PERU                           21                     1        0     250
0-24 months   MAL-ED           PERU                           24                     0        0     250
0-24 months   MAL-ED           PERU                           24                     1        0     250
0-24 months   MAL-ED           PERU                           25                     0        0     250
0-24 months   MAL-ED           PERU                           25                     1        0     250
0-24 months   MAL-ED           PERU                           27                     0        0     250
0-24 months   MAL-ED           PERU                           27                     1        0     250
0-24 months   MAL-ED           SOUTH AFRICA                   0                      0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   0                      1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   1                      0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   1                      1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   2                      0        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   2                      1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   3                      0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   3                      1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   4                      0        3     110
0-24 months   MAL-ED           SOUTH AFRICA                   4                      1        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   5                      0        2     110
0-24 months   MAL-ED           SOUTH AFRICA                   5                      1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   6                      0        6     110
0-24 months   MAL-ED           SOUTH AFRICA                   6                      1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   7                      0        5     110
0-24 months   MAL-ED           SOUTH AFRICA                   7                      1        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   8                      0       10     110
0-24 months   MAL-ED           SOUTH AFRICA                   8                      1        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   9                      0        5     110
0-24 months   MAL-ED           SOUTH AFRICA                   9                      1        2     110
0-24 months   MAL-ED           SOUTH AFRICA                   10                     0       10     110
0-24 months   MAL-ED           SOUTH AFRICA                   10                     1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   11                     0       20     110
0-24 months   MAL-ED           SOUTH AFRICA                   11                     1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   12                     0       36     110
0-24 months   MAL-ED           SOUTH AFRICA                   12                     1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   13                     0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   13                     1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   14                     0        3     110
0-24 months   MAL-ED           SOUTH AFRICA                   14                     1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   15                     0        3     110
0-24 months   MAL-ED           SOUTH AFRICA                   15                     1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   16                     0        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   16                     1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   17                     0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   17                     1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   18                     0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   18                     1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   19                     0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   19                     1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   20                     0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   20                     1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   21                     0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   21                     1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   24                     0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   24                     1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   25                     0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   25                     1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   27                     0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   27                     1        0     110
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0       13     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        1     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                      0       13     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                      1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                      0       16     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                      1        2     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                      0       16     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                      1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                      0       12     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                      1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                      0        8     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                      1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                      0      114     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                      1        4     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                      0        1     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                      1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                      0        2     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                      1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                     0        4     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                     1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                     0        2     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                     1        1     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                     0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                     1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                     0        2     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                     1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                     0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                     1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                     0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                     1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                     0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                     1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                     0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                     1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                     0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                     1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                     0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                     1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                     0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                     1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                     0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                     1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                     0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                     1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                     0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                     1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                     0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                     1        0     211
0-24 months   NIH-Crypto       BANGLADESH                     0                      0      150     758
0-24 months   NIH-Crypto       BANGLADESH                     0                      1       24     758
0-24 months   NIH-Crypto       BANGLADESH                     1                      0       20     758
0-24 months   NIH-Crypto       BANGLADESH                     1                      1        1     758
0-24 months   NIH-Crypto       BANGLADESH                     2                      0       12     758
0-24 months   NIH-Crypto       BANGLADESH                     2                      1        1     758
0-24 months   NIH-Crypto       BANGLADESH                     3                      0       31     758
0-24 months   NIH-Crypto       BANGLADESH                     3                      1        3     758
0-24 months   NIH-Crypto       BANGLADESH                     4                      0       35     758
0-24 months   NIH-Crypto       BANGLADESH                     4                      1        5     758
0-24 months   NIH-Crypto       BANGLADESH                     5                      0       82     758
0-24 months   NIH-Crypto       BANGLADESH                     5                      1        6     758
0-24 months   NIH-Crypto       BANGLADESH                     6                      0       35     758
0-24 months   NIH-Crypto       BANGLADESH                     6                      1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     7                      0       53     758
0-24 months   NIH-Crypto       BANGLADESH                     7                      1        4     758
0-24 months   NIH-Crypto       BANGLADESH                     8                      0       84     758
0-24 months   NIH-Crypto       BANGLADESH                     8                      1        6     758
0-24 months   NIH-Crypto       BANGLADESH                     9                      0       82     758
0-24 months   NIH-Crypto       BANGLADESH                     9                      1        4     758
0-24 months   NIH-Crypto       BANGLADESH                     10                     0       47     758
0-24 months   NIH-Crypto       BANGLADESH                     10                     1        7     758
0-24 months   NIH-Crypto       BANGLADESH                     11                     0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     11                     1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     12                     0       32     758
0-24 months   NIH-Crypto       BANGLADESH                     12                     1        3     758
0-24 months   NIH-Crypto       BANGLADESH                     13                     0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     13                     1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     14                     0        8     758
0-24 months   NIH-Crypto       BANGLADESH                     14                     1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     15                     0       15     758
0-24 months   NIH-Crypto       BANGLADESH                     15                     1        1     758
0-24 months   NIH-Crypto       BANGLADESH                     16                     0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     16                     1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     17                     0        6     758
0-24 months   NIH-Crypto       BANGLADESH                     17                     1        1     758
0-24 months   NIH-Crypto       BANGLADESH                     18                     0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     18                     1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     19                     0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     19                     1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     20                     0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     20                     1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     21                     0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     21                     1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     24                     0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     24                     1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     25                     0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     25                     1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     27                     0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     27                     1        0     758
0-24 months   PROBIT           BELARUS                        0                      0        0   16315
0-24 months   PROBIT           BELARUS                        0                      1        0   16315
0-24 months   PROBIT           BELARUS                        1                      0        0   16315
0-24 months   PROBIT           BELARUS                        1                      1        0   16315
0-24 months   PROBIT           BELARUS                        2                      0        0   16315
0-24 months   PROBIT           BELARUS                        2                      1        0   16315
0-24 months   PROBIT           BELARUS                        3                      0        0   16315
0-24 months   PROBIT           BELARUS                        3                      1        0   16315
0-24 months   PROBIT           BELARUS                        4                      0        0   16315
0-24 months   PROBIT           BELARUS                        4                      1        0   16315
0-24 months   PROBIT           BELARUS                        5                      0        0   16315
0-24 months   PROBIT           BELARUS                        5                      1        0   16315
0-24 months   PROBIT           BELARUS                        6                      0        0   16315
0-24 months   PROBIT           BELARUS                        6                      1        0   16315
0-24 months   PROBIT           BELARUS                        7                      0        0   16315
0-24 months   PROBIT           BELARUS                        7                      1        0   16315
0-24 months   PROBIT           BELARUS                        8                      0       26   16315
0-24 months   PROBIT           BELARUS                        8                      1        1   16315
0-24 months   PROBIT           BELARUS                        9                      0        0   16315
0-24 months   PROBIT           BELARUS                        9                      1        0   16315
0-24 months   PROBIT           BELARUS                        10                     0      342   16315
0-24 months   PROBIT           BELARUS                        10                     1       25   16315
0-24 months   PROBIT           BELARUS                        11                     0        0   16315
0-24 months   PROBIT           BELARUS                        11                     1        0   16315
0-24 months   PROBIT           BELARUS                        12                     0     5545   16315
0-24 months   PROBIT           BELARUS                        12                     1      479   16315
0-24 months   PROBIT           BELARUS                        13                     0     6607   16315
0-24 months   PROBIT           BELARUS                        13                     1      582   16315
0-24 months   PROBIT           BELARUS                        14                     0      413   16315
0-24 months   PROBIT           BELARUS                        14                     1       31   16315
0-24 months   PROBIT           BELARUS                        15                     0        0   16315
0-24 months   PROBIT           BELARUS                        15                     1        0   16315
0-24 months   PROBIT           BELARUS                        16                     0     2108   16315
0-24 months   PROBIT           BELARUS                        16                     1      156   16315
0-24 months   PROBIT           BELARUS                        17                     0        0   16315
0-24 months   PROBIT           BELARUS                        17                     1        0   16315
0-24 months   PROBIT           BELARUS                        18                     0        0   16315
0-24 months   PROBIT           BELARUS                        18                     1        0   16315
0-24 months   PROBIT           BELARUS                        19                     0        0   16315
0-24 months   PROBIT           BELARUS                        19                     1        0   16315
0-24 months   PROBIT           BELARUS                        20                     0        0   16315
0-24 months   PROBIT           BELARUS                        20                     1        0   16315
0-24 months   PROBIT           BELARUS                        21                     0        0   16315
0-24 months   PROBIT           BELARUS                        21                     1        0   16315
0-24 months   PROBIT           BELARUS                        24                     0        0   16315
0-24 months   PROBIT           BELARUS                        24                     1        0   16315
0-24 months   PROBIT           BELARUS                        25                     0        0   16315
0-24 months   PROBIT           BELARUS                        25                     1        0   16315
0-24 months   PROBIT           BELARUS                        27                     0        0   16315
0-24 months   PROBIT           BELARUS                        27                     1        0   16315
0-24 months   PROVIDE          BANGLADESH                     0                      0      189     700
0-24 months   PROVIDE          BANGLADESH                     0                      1       18     700
0-24 months   PROVIDE          BANGLADESH                     1                      0       13     700
0-24 months   PROVIDE          BANGLADESH                     1                      1        0     700
0-24 months   PROVIDE          BANGLADESH                     2                      0       16     700
0-24 months   PROVIDE          BANGLADESH                     2                      1        2     700
0-24 months   PROVIDE          BANGLADESH                     3                      0       25     700
0-24 months   PROVIDE          BANGLADESH                     3                      1        2     700
0-24 months   PROVIDE          BANGLADESH                     4                      0       51     700
0-24 months   PROVIDE          BANGLADESH                     4                      1        1     700
0-24 months   PROVIDE          BANGLADESH                     5                      0       75     700
0-24 months   PROVIDE          BANGLADESH                     5                      1        5     700
0-24 months   PROVIDE          BANGLADESH                     6                      0       29     700
0-24 months   PROVIDE          BANGLADESH                     6                      1        0     700
0-24 months   PROVIDE          BANGLADESH                     7                      0       41     700
0-24 months   PROVIDE          BANGLADESH                     7                      1        1     700
0-24 months   PROVIDE          BANGLADESH                     8                      0       59     700
0-24 months   PROVIDE          BANGLADESH                     8                      1        5     700
0-24 months   PROVIDE          BANGLADESH                     9                      0       59     700
0-24 months   PROVIDE          BANGLADESH                     9                      1        3     700
0-24 months   PROVIDE          BANGLADESH                     10                     0       38     700
0-24 months   PROVIDE          BANGLADESH                     10                     1        1     700
0-24 months   PROVIDE          BANGLADESH                     11                     0       25     700
0-24 months   PROVIDE          BANGLADESH                     11                     1        1     700
0-24 months   PROVIDE          BANGLADESH                     12                     0        4     700
0-24 months   PROVIDE          BANGLADESH                     12                     1        0     700
0-24 months   PROVIDE          BANGLADESH                     13                     0        0     700
0-24 months   PROVIDE          BANGLADESH                     13                     1        0     700
0-24 months   PROVIDE          BANGLADESH                     14                     0       18     700
0-24 months   PROVIDE          BANGLADESH                     14                     1        1     700
0-24 months   PROVIDE          BANGLADESH                     15                     0        7     700
0-24 months   PROVIDE          BANGLADESH                     15                     1        1     700
0-24 months   PROVIDE          BANGLADESH                     16                     0        8     700
0-24 months   PROVIDE          BANGLADESH                     16                     1        1     700
0-24 months   PROVIDE          BANGLADESH                     17                     0        0     700
0-24 months   PROVIDE          BANGLADESH                     17                     1        0     700
0-24 months   PROVIDE          BANGLADESH                     18                     0        0     700
0-24 months   PROVIDE          BANGLADESH                     18                     1        0     700
0-24 months   PROVIDE          BANGLADESH                     19                     0        1     700
0-24 months   PROVIDE          BANGLADESH                     19                     1        0     700
0-24 months   PROVIDE          BANGLADESH                     20                     0        0     700
0-24 months   PROVIDE          BANGLADESH                     20                     1        0     700
0-24 months   PROVIDE          BANGLADESH                     21                     0        0     700
0-24 months   PROVIDE          BANGLADESH                     21                     1        0     700
0-24 months   PROVIDE          BANGLADESH                     24                     0        0     700
0-24 months   PROVIDE          BANGLADESH                     24                     1        0     700
0-24 months   PROVIDE          BANGLADESH                     25                     0        0     700
0-24 months   PROVIDE          BANGLADESH                     25                     1        0     700
0-24 months   PROVIDE          BANGLADESH                     27                     0        0     700
0-24 months   PROVIDE          BANGLADESH                     27                     1        0     700
0-24 months   SAS-CompFeed     INDIA                          0                      0      153    1510
0-24 months   SAS-CompFeed     INDIA                          0                      1       38    1510
0-24 months   SAS-CompFeed     INDIA                          1                      0        0    1510
0-24 months   SAS-CompFeed     INDIA                          1                      1        0    1510
0-24 months   SAS-CompFeed     INDIA                          2                      0        4    1510
0-24 months   SAS-CompFeed     INDIA                          2                      1        2    1510
0-24 months   SAS-CompFeed     INDIA                          3                      0       10    1510
0-24 months   SAS-CompFeed     INDIA                          3                      1        4    1510
0-24 months   SAS-CompFeed     INDIA                          4                      0       20    1510
0-24 months   SAS-CompFeed     INDIA                          4                      1        5    1510
0-24 months   SAS-CompFeed     INDIA                          5                      0       76    1510
0-24 months   SAS-CompFeed     INDIA                          5                      1       16    1510
0-24 months   SAS-CompFeed     INDIA                          6                      0       19    1510
0-24 months   SAS-CompFeed     INDIA                          6                      1        9    1510
0-24 months   SAS-CompFeed     INDIA                          7                      0       99    1510
0-24 months   SAS-CompFeed     INDIA                          7                      1       18    1510
0-24 months   SAS-CompFeed     INDIA                          8                      0      139    1510
0-24 months   SAS-CompFeed     INDIA                          8                      1       31    1510
0-24 months   SAS-CompFeed     INDIA                          9                      0       86    1510
0-24 months   SAS-CompFeed     INDIA                          9                      1       12    1510
0-24 months   SAS-CompFeed     INDIA                          10                     0      329    1510
0-24 months   SAS-CompFeed     INDIA                          10                     1       54    1510
0-24 months   SAS-CompFeed     INDIA                          11                     0       37    1510
0-24 months   SAS-CompFeed     INDIA                          11                     1        4    1510
0-24 months   SAS-CompFeed     INDIA                          12                     0      203    1510
0-24 months   SAS-CompFeed     INDIA                          12                     1       24    1510
0-24 months   SAS-CompFeed     INDIA                          13                     0        6    1510
0-24 months   SAS-CompFeed     INDIA                          13                     1        1    1510
0-24 months   SAS-CompFeed     INDIA                          14                     0       16    1510
0-24 months   SAS-CompFeed     INDIA                          14                     1        1    1510
0-24 months   SAS-CompFeed     INDIA                          15                     0       60    1510
0-24 months   SAS-CompFeed     INDIA                          15                     1        4    1510
0-24 months   SAS-CompFeed     INDIA                          16                     0       10    1510
0-24 months   SAS-CompFeed     INDIA                          16                     1        0    1510
0-24 months   SAS-CompFeed     INDIA                          17                     0       15    1510
0-24 months   SAS-CompFeed     INDIA                          17                     1        0    1510
0-24 months   SAS-CompFeed     INDIA                          18                     0        3    1510
0-24 months   SAS-CompFeed     INDIA                          18                     1        0    1510
0-24 months   SAS-CompFeed     INDIA                          19                     0        1    1510
0-24 months   SAS-CompFeed     INDIA                          19                     1        0    1510
0-24 months   SAS-CompFeed     INDIA                          20                     0        1    1510
0-24 months   SAS-CompFeed     INDIA                          20                     1        0    1510
0-24 months   SAS-CompFeed     INDIA                          21                     0        0    1510
0-24 months   SAS-CompFeed     INDIA                          21                     1        0    1510
0-24 months   SAS-CompFeed     INDIA                          24                     0        0    1510
0-24 months   SAS-CompFeed     INDIA                          24                     1        0    1510
0-24 months   SAS-CompFeed     INDIA                          25                     0        0    1510
0-24 months   SAS-CompFeed     INDIA                          25                     1        0    1510
0-24 months   SAS-CompFeed     INDIA                          27                     0        0    1510
0-24 months   SAS-CompFeed     INDIA                          27                     1        0    1510
0-24 months   SAS-FoodSuppl    INDIA                          0                      0      123     418
0-24 months   SAS-FoodSuppl    INDIA                          0                      1       24     418
0-24 months   SAS-FoodSuppl    INDIA                          1                      0        1     418
0-24 months   SAS-FoodSuppl    INDIA                          1                      1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          2                      0        6     418
0-24 months   SAS-FoodSuppl    INDIA                          2                      1        4     418
0-24 months   SAS-FoodSuppl    INDIA                          3                      0        4     418
0-24 months   SAS-FoodSuppl    INDIA                          3                      1        3     418
0-24 months   SAS-FoodSuppl    INDIA                          4                      0        9     418
0-24 months   SAS-FoodSuppl    INDIA                          4                      1        2     418
0-24 months   SAS-FoodSuppl    INDIA                          5                      0       43     418
0-24 months   SAS-FoodSuppl    INDIA                          5                      1       12     418
0-24 months   SAS-FoodSuppl    INDIA                          6                      0        9     418
0-24 months   SAS-FoodSuppl    INDIA                          6                      1        3     418
0-24 months   SAS-FoodSuppl    INDIA                          7                      0       14     418
0-24 months   SAS-FoodSuppl    INDIA                          7                      1        2     418
0-24 months   SAS-FoodSuppl    INDIA                          8                      0       45     418
0-24 months   SAS-FoodSuppl    INDIA                          8                      1        4     418
0-24 months   SAS-FoodSuppl    INDIA                          9                      0       21     418
0-24 months   SAS-FoodSuppl    INDIA                          9                      1        5     418
0-24 months   SAS-FoodSuppl    INDIA                          10                     0       51     418
0-24 months   SAS-FoodSuppl    INDIA                          10                     1        9     418
0-24 months   SAS-FoodSuppl    INDIA                          11                     0        2     418
0-24 months   SAS-FoodSuppl    INDIA                          11                     1        1     418
0-24 months   SAS-FoodSuppl    INDIA                          12                     0       10     418
0-24 months   SAS-FoodSuppl    INDIA                          12                     1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          13                     0        1     418
0-24 months   SAS-FoodSuppl    INDIA                          13                     1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          14                     0        5     418
0-24 months   SAS-FoodSuppl    INDIA                          14                     1        2     418
0-24 months   SAS-FoodSuppl    INDIA                          15                     0        3     418
0-24 months   SAS-FoodSuppl    INDIA                          15                     1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          16                     0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          16                     1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          17                     0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          17                     1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          18                     0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          18                     1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          19                     0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          19                     1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          20                     0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          20                     1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          21                     0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          21                     1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          24                     0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          24                     1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          25                     0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          25                     1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          27                     0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          27                     1        0     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      0        5    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      0        6    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      0        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      0     1170    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      1       88    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      0        9    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      0       48    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      1        5    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     0       21    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     1        3    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     0      537    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     1       41    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     0       17    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                     0      113    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                     1        4    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                     0       14    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                     1        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                     0       23    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                     1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                     0       28    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                     1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                     0       23    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                     1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                     0        5    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                     1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                     0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                     1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                     0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                     1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                     0        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                     1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                     0       12    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                     1        4    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                     0        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                     1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                     0      192    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                     1       11    2383
0-24 months   ZVITAMBO         ZIMBABWE                       0                      0       52   13568
0-24 months   ZVITAMBO         ZIMBABWE                       0                      1        8   13568
0-24 months   ZVITAMBO         ZIMBABWE                       1                      0        2   13568
0-24 months   ZVITAMBO         ZIMBABWE                       1                      1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       2                      0        5   13568
0-24 months   ZVITAMBO         ZIMBABWE                       2                      1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       3                      0       11   13568
0-24 months   ZVITAMBO         ZIMBABWE                       3                      1        4   13568
0-24 months   ZVITAMBO         ZIMBABWE                       4                      0       21   13568
0-24 months   ZVITAMBO         ZIMBABWE                       4                      1        2   13568
0-24 months   ZVITAMBO         ZIMBABWE                       5                      0       26   13568
0-24 months   ZVITAMBO         ZIMBABWE                       5                      1        6   13568
0-24 months   ZVITAMBO         ZIMBABWE                       6                      0       39   13568
0-24 months   ZVITAMBO         ZIMBABWE                       6                      1        4   13568
0-24 months   ZVITAMBO         ZIMBABWE                       7                      0      709   13568
0-24 months   ZVITAMBO         ZIMBABWE                       7                      1       74   13568
0-24 months   ZVITAMBO         ZIMBABWE                       8                      0       95   13568
0-24 months   ZVITAMBO         ZIMBABWE                       8                      1        7   13568
0-24 months   ZVITAMBO         ZIMBABWE                       9                      0      810   13568
0-24 months   ZVITAMBO         ZIMBABWE                       9                      1       84   13568
0-24 months   ZVITAMBO         ZIMBABWE                       10                     0      290   13568
0-24 months   ZVITAMBO         ZIMBABWE                       10                     1       35   13568
0-24 months   ZVITAMBO         ZIMBABWE                       11                     0     9350   13568
0-24 months   ZVITAMBO         ZIMBABWE                       11                     1      942   13568
0-24 months   ZVITAMBO         ZIMBABWE                       12                     0       55   13568
0-24 months   ZVITAMBO         ZIMBABWE                       12                     1        3   13568
0-24 months   ZVITAMBO         ZIMBABWE                       13                     0      865   13568
0-24 months   ZVITAMBO         ZIMBABWE                       13                     1       69   13568
0-24 months   ZVITAMBO         ZIMBABWE                       14                     0        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       14                     1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       15                     0        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       15                     1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       16                     0        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       16                     1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       17                     0        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       17                     1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       18                     0        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       18                     1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       19                     0        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       19                     1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       20                     0        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       20                     1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       21                     0        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       21                     1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       24                     0        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       24                     1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       25                     0        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       25                     1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       27                     0        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       27                     1        0   13568
0-6 months    COHORTS          GUATEMALA                      0                      0      418     997
0-6 months    COHORTS          GUATEMALA                      0                      1       25     997
0-6 months    COHORTS          GUATEMALA                      1                      0       50     997
0-6 months    COHORTS          GUATEMALA                      1                      1        0     997
0-6 months    COHORTS          GUATEMALA                      2                      0      165     997
0-6 months    COHORTS          GUATEMALA                      2                      1       17     997
0-6 months    COHORTS          GUATEMALA                      3                      0      126     997
0-6 months    COHORTS          GUATEMALA                      3                      1        6     997
0-6 months    COHORTS          GUATEMALA                      4                      0       64     997
0-6 months    COHORTS          GUATEMALA                      4                      1        3     997
0-6 months    COHORTS          GUATEMALA                      5                      0       21     997
0-6 months    COHORTS          GUATEMALA                      5                      1        2     997
0-6 months    COHORTS          GUATEMALA                      6                      0       80     997
0-6 months    COHORTS          GUATEMALA                      6                      1        7     997
0-6 months    COHORTS          GUATEMALA                      7                      0        4     997
0-6 months    COHORTS          GUATEMALA                      7                      1        0     997
0-6 months    COHORTS          GUATEMALA                      8                      0        2     997
0-6 months    COHORTS          GUATEMALA                      8                      1        0     997
0-6 months    COHORTS          GUATEMALA                      9                      0        1     997
0-6 months    COHORTS          GUATEMALA                      9                      1        0     997
0-6 months    COHORTS          GUATEMALA                      10                     0        1     997
0-6 months    COHORTS          GUATEMALA                      10                     1        0     997
0-6 months    COHORTS          GUATEMALA                      11                     0        0     997
0-6 months    COHORTS          GUATEMALA                      11                     1        0     997
0-6 months    COHORTS          GUATEMALA                      12                     0        4     997
0-6 months    COHORTS          GUATEMALA                      12                     1        0     997
0-6 months    COHORTS          GUATEMALA                      13                     0        0     997
0-6 months    COHORTS          GUATEMALA                      13                     1        0     997
0-6 months    COHORTS          GUATEMALA                      14                     0        1     997
0-6 months    COHORTS          GUATEMALA                      14                     1        0     997
0-6 months    COHORTS          GUATEMALA                      15                     0        0     997
0-6 months    COHORTS          GUATEMALA                      15                     1        0     997
0-6 months    COHORTS          GUATEMALA                      16                     0        0     997
0-6 months    COHORTS          GUATEMALA                      16                     1        0     997
0-6 months    COHORTS          GUATEMALA                      17                     0        0     997
0-6 months    COHORTS          GUATEMALA                      17                     1        0     997
0-6 months    COHORTS          GUATEMALA                      18                     0        0     997
0-6 months    COHORTS          GUATEMALA                      18                     1        0     997
0-6 months    COHORTS          GUATEMALA                      19                     0        0     997
0-6 months    COHORTS          GUATEMALA                      19                     1        0     997
0-6 months    COHORTS          GUATEMALA                      20                     0        0     997
0-6 months    COHORTS          GUATEMALA                      20                     1        0     997
0-6 months    COHORTS          GUATEMALA                      21                     0        0     997
0-6 months    COHORTS          GUATEMALA                      21                     1        0     997
0-6 months    COHORTS          GUATEMALA                      24                     0        0     997
0-6 months    COHORTS          GUATEMALA                      24                     1        0     997
0-6 months    COHORTS          GUATEMALA                      25                     0        0     997
0-6 months    COHORTS          GUATEMALA                      25                     1        0     997
0-6 months    COHORTS          GUATEMALA                      27                     0        0     997
0-6 months    COHORTS          GUATEMALA                      27                     1        0     997
0-6 months    COHORTS          INDIA                          0                      0      117    1417
0-6 months    COHORTS          INDIA                          0                      1        4    1417
0-6 months    COHORTS          INDIA                          1                      0        0    1417
0-6 months    COHORTS          INDIA                          1                      1        0    1417
0-6 months    COHORTS          INDIA                          2                      0        0    1417
0-6 months    COHORTS          INDIA                          2                      1        0    1417
0-6 months    COHORTS          INDIA                          3                      0      126    1417
0-6 months    COHORTS          INDIA                          3                      1        6    1417
0-6 months    COHORTS          INDIA                          4                      0        0    1417
0-6 months    COHORTS          INDIA                          4                      1        0    1417
0-6 months    COHORTS          INDIA                          5                      0        0    1417
0-6 months    COHORTS          INDIA                          5                      1        0    1417
0-6 months    COHORTS          INDIA                          6                      0        0    1417
0-6 months    COHORTS          INDIA                          6                      1        0    1417
0-6 months    COHORTS          INDIA                          7                      0        0    1417
0-6 months    COHORTS          INDIA                          7                      1        0    1417
0-6 months    COHORTS          INDIA                          8                      0      198    1417
0-6 months    COHORTS          INDIA                          8                      1        7    1417
0-6 months    COHORTS          INDIA                          9                      0        0    1417
0-6 months    COHORTS          INDIA                          9                      1        0    1417
0-6 months    COHORTS          INDIA                          10                     0        0    1417
0-6 months    COHORTS          INDIA                          10                     1        0    1417
0-6 months    COHORTS          INDIA                          11                     0        0    1417
0-6 months    COHORTS          INDIA                          11                     1        0    1417
0-6 months    COHORTS          INDIA                          12                     0      372    1417
0-6 months    COHORTS          INDIA                          12                     1       30    1417
0-6 months    COHORTS          INDIA                          13                     0        0    1417
0-6 months    COHORTS          INDIA                          13                     1        0    1417
0-6 months    COHORTS          INDIA                          14                     0      147    1417
0-6 months    COHORTS          INDIA                          14                     1       11    1417
0-6 months    COHORTS          INDIA                          15                     0      254    1417
0-6 months    COHORTS          INDIA                          15                     1       25    1417
0-6 months    COHORTS          INDIA                          16                     0        0    1417
0-6 months    COHORTS          INDIA                          16                     1        0    1417
0-6 months    COHORTS          INDIA                          17                     0      112    1417
0-6 months    COHORTS          INDIA                          17                     1        8    1417
0-6 months    COHORTS          INDIA                          18                     0        0    1417
0-6 months    COHORTS          INDIA                          18                     1        0    1417
0-6 months    COHORTS          INDIA                          19                     0        0    1417
0-6 months    COHORTS          INDIA                          19                     1        0    1417
0-6 months    COHORTS          INDIA                          20                     0        0    1417
0-6 months    COHORTS          INDIA                          20                     1        0    1417
0-6 months    COHORTS          INDIA                          21                     0        0    1417
0-6 months    COHORTS          INDIA                          21                     1        0    1417
0-6 months    COHORTS          INDIA                          24                     0        0    1417
0-6 months    COHORTS          INDIA                          24                     1        0    1417
0-6 months    COHORTS          INDIA                          25                     0        0    1417
0-6 months    COHORTS          INDIA                          25                     1        0    1417
0-6 months    COHORTS          INDIA                          27                     0        0    1417
0-6 months    COHORTS          INDIA                          27                     1        0    1417
0-6 months    COHORTS          PHILIPPINES                    0                      0       58    2867
0-6 months    COHORTS          PHILIPPINES                    0                      1        2    2867
0-6 months    COHORTS          PHILIPPINES                    1                      0       33    2867
0-6 months    COHORTS          PHILIPPINES                    1                      1        3    2867
0-6 months    COHORTS          PHILIPPINES                    2                      0       94    2867
0-6 months    COHORTS          PHILIPPINES                    2                      1        2    2867
0-6 months    COHORTS          PHILIPPINES                    3                      0      163    2867
0-6 months    COHORTS          PHILIPPINES                    3                      1        5    2867
0-6 months    COHORTS          PHILIPPINES                    4                      0      246    2867
0-6 months    COHORTS          PHILIPPINES                    4                      1       16    2867
0-6 months    COHORTS          PHILIPPINES                    5                      0      194    2867
0-6 months    COHORTS          PHILIPPINES                    5                      1       10    2867
0-6 months    COHORTS          PHILIPPINES                    6                      0      588    2867
0-6 months    COHORTS          PHILIPPINES                    6                      1       52    2867
0-6 months    COHORTS          PHILIPPINES                    7                      0      140    2867
0-6 months    COHORTS          PHILIPPINES                    7                      1        9    2867
0-6 months    COHORTS          PHILIPPINES                    8                      0      213    2867
0-6 months    COHORTS          PHILIPPINES                    8                      1       11    2867
0-6 months    COHORTS          PHILIPPINES                    9                      0      177    2867
0-6 months    COHORTS          PHILIPPINES                    9                      1       19    2867
0-6 months    COHORTS          PHILIPPINES                    10                     0      308    2867
0-6 months    COHORTS          PHILIPPINES                    10                     1       22    2867
0-6 months    COHORTS          PHILIPPINES                    11                     0       60    2867
0-6 months    COHORTS          PHILIPPINES                    11                     1        5    2867
0-6 months    COHORTS          PHILIPPINES                    12                     0      166    2867
0-6 months    COHORTS          PHILIPPINES                    12                     1       14    2867
0-6 months    COHORTS          PHILIPPINES                    13                     0       58    2867
0-6 months    COHORTS          PHILIPPINES                    13                     1        4    2867
0-6 months    COHORTS          PHILIPPINES                    14                     0      134    2867
0-6 months    COHORTS          PHILIPPINES                    14                     1       13    2867
0-6 months    COHORTS          PHILIPPINES                    15                     0       32    2867
0-6 months    COHORTS          PHILIPPINES                    15                     1        4    2867
0-6 months    COHORTS          PHILIPPINES                    16                     0        7    2867
0-6 months    COHORTS          PHILIPPINES                    16                     1        1    2867
0-6 months    COHORTS          PHILIPPINES                    17                     0        2    2867
0-6 months    COHORTS          PHILIPPINES                    17                     1        0    2867
0-6 months    COHORTS          PHILIPPINES                    18                     0        2    2867
0-6 months    COHORTS          PHILIPPINES                    18                     1        0    2867
0-6 months    COHORTS          PHILIPPINES                    19                     0        0    2867
0-6 months    COHORTS          PHILIPPINES                    19                     1        0    2867
0-6 months    COHORTS          PHILIPPINES                    20                     0        0    2867
0-6 months    COHORTS          PHILIPPINES                    20                     1        0    2867
0-6 months    COHORTS          PHILIPPINES                    21                     0        0    2867
0-6 months    COHORTS          PHILIPPINES                    21                     1        0    2867
0-6 months    COHORTS          PHILIPPINES                    24                     0        0    2867
0-6 months    COHORTS          PHILIPPINES                    24                     1        0    2867
0-6 months    COHORTS          PHILIPPINES                    25                     0        0    2867
0-6 months    COHORTS          PHILIPPINES                    25                     1        0    2867
0-6 months    COHORTS          PHILIPPINES                    27                     0        0    2867
0-6 months    COHORTS          PHILIPPINES                    27                     1        0    2867
0-6 months    GMS-Nepal        NEPAL                          0                      0      263     684
0-6 months    GMS-Nepal        NEPAL                          0                      1       29     684
0-6 months    GMS-Nepal        NEPAL                          1                      0        0     684
0-6 months    GMS-Nepal        NEPAL                          1                      1        0     684
0-6 months    GMS-Nepal        NEPAL                          2                      0        0     684
0-6 months    GMS-Nepal        NEPAL                          2                      1        0     684
0-6 months    GMS-Nepal        NEPAL                          3                      0        0     684
0-6 months    GMS-Nepal        NEPAL                          3                      1        0     684
0-6 months    GMS-Nepal        NEPAL                          4                      0        0     684
0-6 months    GMS-Nepal        NEPAL                          4                      1        0     684
0-6 months    GMS-Nepal        NEPAL                          5                      0       90     684
0-6 months    GMS-Nepal        NEPAL                          5                      1       20     684
0-6 months    GMS-Nepal        NEPAL                          6                      0        0     684
0-6 months    GMS-Nepal        NEPAL                          6                      1        0     684
0-6 months    GMS-Nepal        NEPAL                          7                      0        0     684
0-6 months    GMS-Nepal        NEPAL                          7                      1        0     684
0-6 months    GMS-Nepal        NEPAL                          8                      0      104     684
0-6 months    GMS-Nepal        NEPAL                          8                      1        9     684
0-6 months    GMS-Nepal        NEPAL                          9                      0        0     684
0-6 months    GMS-Nepal        NEPAL                          9                      1        0     684
0-6 months    GMS-Nepal        NEPAL                          10                     0      113     684
0-6 months    GMS-Nepal        NEPAL                          10                     1       17     684
0-6 months    GMS-Nepal        NEPAL                          11                     0        0     684
0-6 months    GMS-Nepal        NEPAL                          11                     1        0     684
0-6 months    GMS-Nepal        NEPAL                          12                     0       35     684
0-6 months    GMS-Nepal        NEPAL                          12                     1        4     684
0-6 months    GMS-Nepal        NEPAL                          13                     0        0     684
0-6 months    GMS-Nepal        NEPAL                          13                     1        0     684
0-6 months    GMS-Nepal        NEPAL                          14                     0        0     684
0-6 months    GMS-Nepal        NEPAL                          14                     1        0     684
0-6 months    GMS-Nepal        NEPAL                          15                     0        0     684
0-6 months    GMS-Nepal        NEPAL                          15                     1        0     684
0-6 months    GMS-Nepal        NEPAL                          16                     0        0     684
0-6 months    GMS-Nepal        NEPAL                          16                     1        0     684
0-6 months    GMS-Nepal        NEPAL                          17                     0        0     684
0-6 months    GMS-Nepal        NEPAL                          17                     1        0     684
0-6 months    GMS-Nepal        NEPAL                          18                     0        0     684
0-6 months    GMS-Nepal        NEPAL                          18                     1        0     684
0-6 months    GMS-Nepal        NEPAL                          19                     0        0     684
0-6 months    GMS-Nepal        NEPAL                          19                     1        0     684
0-6 months    GMS-Nepal        NEPAL                          20                     0        0     684
0-6 months    GMS-Nepal        NEPAL                          20                     1        0     684
0-6 months    GMS-Nepal        NEPAL                          21                     0        0     684
0-6 months    GMS-Nepal        NEPAL                          21                     1        0     684
0-6 months    GMS-Nepal        NEPAL                          24                     0        0     684
0-6 months    GMS-Nepal        NEPAL                          24                     1        0     684
0-6 months    GMS-Nepal        NEPAL                          25                     0        0     684
0-6 months    GMS-Nepal        NEPAL                          25                     1        0     684
0-6 months    GMS-Nepal        NEPAL                          27                     0        0     684
0-6 months    GMS-Nepal        NEPAL                          27                     1        0     684
0-6 months    LCNI-5           MALAWI                         0                      0      104     267
0-6 months    LCNI-5           MALAWI                         0                      1        0     267
0-6 months    LCNI-5           MALAWI                         1                      0        2     267
0-6 months    LCNI-5           MALAWI                         1                      1        0     267
0-6 months    LCNI-5           MALAWI                         2                      0        7     267
0-6 months    LCNI-5           MALAWI                         2                      1        0     267
0-6 months    LCNI-5           MALAWI                         3                      0       11     267
0-6 months    LCNI-5           MALAWI                         3                      1        0     267
0-6 months    LCNI-5           MALAWI                         4                      0       18     267
0-6 months    LCNI-5           MALAWI                         4                      1        0     267
0-6 months    LCNI-5           MALAWI                         5                      0       28     267
0-6 months    LCNI-5           MALAWI                         5                      1        0     267
0-6 months    LCNI-5           MALAWI                         6                      0       24     267
0-6 months    LCNI-5           MALAWI                         6                      1        0     267
0-6 months    LCNI-5           MALAWI                         7                      0       17     267
0-6 months    LCNI-5           MALAWI                         7                      1        0     267
0-6 months    LCNI-5           MALAWI                         8                      0       21     267
0-6 months    LCNI-5           MALAWI                         8                      1        0     267
0-6 months    LCNI-5           MALAWI                         9                      0        4     267
0-6 months    LCNI-5           MALAWI                         9                      1        0     267
0-6 months    LCNI-5           MALAWI                         10                     0        5     267
0-6 months    LCNI-5           MALAWI                         10                     1        0     267
0-6 months    LCNI-5           MALAWI                         11                     0        4     267
0-6 months    LCNI-5           MALAWI                         11                     1        0     267
0-6 months    LCNI-5           MALAWI                         12                     0       19     267
0-6 months    LCNI-5           MALAWI                         12                     1        0     267
0-6 months    LCNI-5           MALAWI                         13                     0        1     267
0-6 months    LCNI-5           MALAWI                         13                     1        0     267
0-6 months    LCNI-5           MALAWI                         14                     0        1     267
0-6 months    LCNI-5           MALAWI                         14                     1        0     267
0-6 months    LCNI-5           MALAWI                         15                     0        0     267
0-6 months    LCNI-5           MALAWI                         15                     1        0     267
0-6 months    LCNI-5           MALAWI                         16                     0        1     267
0-6 months    LCNI-5           MALAWI                         16                     1        0     267
0-6 months    LCNI-5           MALAWI                         17                     0        0     267
0-6 months    LCNI-5           MALAWI                         17                     1        0     267
0-6 months    LCNI-5           MALAWI                         18                     0        0     267
0-6 months    LCNI-5           MALAWI                         18                     1        0     267
0-6 months    LCNI-5           MALAWI                         19                     0        0     267
0-6 months    LCNI-5           MALAWI                         19                     1        0     267
0-6 months    LCNI-5           MALAWI                         20                     0        0     267
0-6 months    LCNI-5           MALAWI                         20                     1        0     267
0-6 months    LCNI-5           MALAWI                         21                     0        0     267
0-6 months    LCNI-5           MALAWI                         21                     1        0     267
0-6 months    LCNI-5           MALAWI                         24                     0        0     267
0-6 months    LCNI-5           MALAWI                         24                     1        0     267
0-6 months    LCNI-5           MALAWI                         25                     0        0     267
0-6 months    LCNI-5           MALAWI                         25                     1        0     267
0-6 months    LCNI-5           MALAWI                         27                     0        0     267
0-6 months    LCNI-5           MALAWI                         27                     1        0     267
0-6 months    MAL-ED           BANGLADESH                     0                      0        0     147
0-6 months    MAL-ED           BANGLADESH                     0                      1        0     147
0-6 months    MAL-ED           BANGLADESH                     1                      0        6     147
0-6 months    MAL-ED           BANGLADESH                     1                      1        1     147
0-6 months    MAL-ED           BANGLADESH                     2                      0       10     147
0-6 months    MAL-ED           BANGLADESH                     2                      1        2     147
0-6 months    MAL-ED           BANGLADESH                     3                      0       10     147
0-6 months    MAL-ED           BANGLADESH                     3                      1        2     147
0-6 months    MAL-ED           BANGLADESH                     4                      0        8     147
0-6 months    MAL-ED           BANGLADESH                     4                      1        0     147
0-6 months    MAL-ED           BANGLADESH                     5                      0       34     147
0-6 months    MAL-ED           BANGLADESH                     5                      1        2     147
0-6 months    MAL-ED           BANGLADESH                     6                      0        6     147
0-6 months    MAL-ED           BANGLADESH                     6                      1        2     147
0-6 months    MAL-ED           BANGLADESH                     7                      0       10     147
0-6 months    MAL-ED           BANGLADESH                     7                      1        0     147
0-6 months    MAL-ED           BANGLADESH                     8                      0       17     147
0-6 months    MAL-ED           BANGLADESH                     8                      1        1     147
0-6 months    MAL-ED           BANGLADESH                     9                      0       14     147
0-6 months    MAL-ED           BANGLADESH                     9                      1        0     147
0-6 months    MAL-ED           BANGLADESH                     10                     0       10     147
0-6 months    MAL-ED           BANGLADESH                     10                     1        0     147
0-6 months    MAL-ED           BANGLADESH                     11                     0        0     147
0-6 months    MAL-ED           BANGLADESH                     11                     1        0     147
0-6 months    MAL-ED           BANGLADESH                     12                     0        8     147
0-6 months    MAL-ED           BANGLADESH                     12                     1        2     147
0-6 months    MAL-ED           BANGLADESH                     13                     0        0     147
0-6 months    MAL-ED           BANGLADESH                     13                     1        0     147
0-6 months    MAL-ED           BANGLADESH                     14                     0        0     147
0-6 months    MAL-ED           BANGLADESH                     14                     1        0     147
0-6 months    MAL-ED           BANGLADESH                     15                     0        0     147
0-6 months    MAL-ED           BANGLADESH                     15                     1        0     147
0-6 months    MAL-ED           BANGLADESH                     16                     0        2     147
0-6 months    MAL-ED           BANGLADESH                     16                     1        0     147
0-6 months    MAL-ED           BANGLADESH                     17                     0        0     147
0-6 months    MAL-ED           BANGLADESH                     17                     1        0     147
0-6 months    MAL-ED           BANGLADESH                     18                     0        0     147
0-6 months    MAL-ED           BANGLADESH                     18                     1        0     147
0-6 months    MAL-ED           BANGLADESH                     19                     0        0     147
0-6 months    MAL-ED           BANGLADESH                     19                     1        0     147
0-6 months    MAL-ED           BANGLADESH                     20                     0        0     147
0-6 months    MAL-ED           BANGLADESH                     20                     1        0     147
0-6 months    MAL-ED           BANGLADESH                     21                     0        0     147
0-6 months    MAL-ED           BANGLADESH                     21                     1        0     147
0-6 months    MAL-ED           BANGLADESH                     24                     0        0     147
0-6 months    MAL-ED           BANGLADESH                     24                     1        0     147
0-6 months    MAL-ED           BANGLADESH                     25                     0        0     147
0-6 months    MAL-ED           BANGLADESH                     25                     1        0     147
0-6 months    MAL-ED           BANGLADESH                     27                     0        0     147
0-6 months    MAL-ED           BANGLADESH                     27                     1        0     147
0-6 months    MAL-ED           INDIA                          0                      0        0     147
0-6 months    MAL-ED           INDIA                          0                      1        0     147
0-6 months    MAL-ED           INDIA                          1                      0        0     147
0-6 months    MAL-ED           INDIA                          1                      1        0     147
0-6 months    MAL-ED           INDIA                          2                      0        5     147
0-6 months    MAL-ED           INDIA                          2                      1        1     147
0-6 months    MAL-ED           INDIA                          3                      0       10     147
0-6 months    MAL-ED           INDIA                          3                      1        2     147
0-6 months    MAL-ED           INDIA                          4                      0        7     147
0-6 months    MAL-ED           INDIA                          4                      1        0     147
0-6 months    MAL-ED           INDIA                          5                      0       30     147
0-6 months    MAL-ED           INDIA                          5                      1        4     147
0-6 months    MAL-ED           INDIA                          6                      0       10     147
0-6 months    MAL-ED           INDIA                          6                      1        1     147
0-6 months    MAL-ED           INDIA                          7                      0       11     147
0-6 months    MAL-ED           INDIA                          7                      1        1     147
0-6 months    MAL-ED           INDIA                          8                      0       18     147
0-6 months    MAL-ED           INDIA                          8                      1        3     147
0-6 months    MAL-ED           INDIA                          9                      0       26     147
0-6 months    MAL-ED           INDIA                          9                      1        1     147
0-6 months    MAL-ED           INDIA                          10                     0        6     147
0-6 months    MAL-ED           INDIA                          10                     1        0     147
0-6 months    MAL-ED           INDIA                          11                     0        2     147
0-6 months    MAL-ED           INDIA                          11                     1        0     147
0-6 months    MAL-ED           INDIA                          12                     0        3     147
0-6 months    MAL-ED           INDIA                          12                     1        0     147
0-6 months    MAL-ED           INDIA                          13                     0        1     147
0-6 months    MAL-ED           INDIA                          13                     1        0     147
0-6 months    MAL-ED           INDIA                          14                     0        2     147
0-6 months    MAL-ED           INDIA                          14                     1        0     147
0-6 months    MAL-ED           INDIA                          15                     0        2     147
0-6 months    MAL-ED           INDIA                          15                     1        0     147
0-6 months    MAL-ED           INDIA                          16                     0        0     147
0-6 months    MAL-ED           INDIA                          16                     1        0     147
0-6 months    MAL-ED           INDIA                          17                     0        0     147
0-6 months    MAL-ED           INDIA                          17                     1        0     147
0-6 months    MAL-ED           INDIA                          18                     0        1     147
0-6 months    MAL-ED           INDIA                          18                     1        0     147
0-6 months    MAL-ED           INDIA                          19                     0        0     147
0-6 months    MAL-ED           INDIA                          19                     1        0     147
0-6 months    MAL-ED           INDIA                          20                     0        0     147
0-6 months    MAL-ED           INDIA                          20                     1        0     147
0-6 months    MAL-ED           INDIA                          21                     0        0     147
0-6 months    MAL-ED           INDIA                          21                     1        0     147
0-6 months    MAL-ED           INDIA                          24                     0        0     147
0-6 months    MAL-ED           INDIA                          24                     1        0     147
0-6 months    MAL-ED           INDIA                          25                     0        0     147
0-6 months    MAL-ED           INDIA                          25                     1        0     147
0-6 months    MAL-ED           INDIA                          27                     0        0     147
0-6 months    MAL-ED           INDIA                          27                     1        0     147
0-6 months    MAL-ED           NEPAL                          0                      0        0      98
0-6 months    MAL-ED           NEPAL                          0                      1        0      98
0-6 months    MAL-ED           NEPAL                          1                      0        0      98
0-6 months    MAL-ED           NEPAL                          1                      1        0      98
0-6 months    MAL-ED           NEPAL                          2                      0        4      98
0-6 months    MAL-ED           NEPAL                          2                      1        0      98
0-6 months    MAL-ED           NEPAL                          3                      0        3      98
0-6 months    MAL-ED           NEPAL                          3                      1        0      98
0-6 months    MAL-ED           NEPAL                          4                      0       11      98
0-6 months    MAL-ED           NEPAL                          4                      1        0      98
0-6 months    MAL-ED           NEPAL                          5                      0        6      98
0-6 months    MAL-ED           NEPAL                          5                      1        0      98
0-6 months    MAL-ED           NEPAL                          6                      0        4      98
0-6 months    MAL-ED           NEPAL                          6                      1        0      98
0-6 months    MAL-ED           NEPAL                          7                      0        9      98
0-6 months    MAL-ED           NEPAL                          7                      1        0      98
0-6 months    MAL-ED           NEPAL                          8                      0       12      98
0-6 months    MAL-ED           NEPAL                          8                      1        0      98
0-6 months    MAL-ED           NEPAL                          9                      0        7      98
0-6 months    MAL-ED           NEPAL                          9                      1        0      98
0-6 months    MAL-ED           NEPAL                          10                     0       26      98
0-6 months    MAL-ED           NEPAL                          10                     1        1      98
0-6 months    MAL-ED           NEPAL                          11                     0        1      98
0-6 months    MAL-ED           NEPAL                          11                     1        0      98
0-6 months    MAL-ED           NEPAL                          12                     0        7      98
0-6 months    MAL-ED           NEPAL                          12                     1        1      98
0-6 months    MAL-ED           NEPAL                          13                     0        0      98
0-6 months    MAL-ED           NEPAL                          13                     1        0      98
0-6 months    MAL-ED           NEPAL                          14                     0        0      98
0-6 months    MAL-ED           NEPAL                          14                     1        0      98
0-6 months    MAL-ED           NEPAL                          15                     0        1      98
0-6 months    MAL-ED           NEPAL                          15                     1        0      98
0-6 months    MAL-ED           NEPAL                          16                     0        1      98
0-6 months    MAL-ED           NEPAL                          16                     1        0      98
0-6 months    MAL-ED           NEPAL                          17                     0        3      98
0-6 months    MAL-ED           NEPAL                          17                     1        0      98
0-6 months    MAL-ED           NEPAL                          18                     0        1      98
0-6 months    MAL-ED           NEPAL                          18                     1        0      98
0-6 months    MAL-ED           NEPAL                          19                     0        0      98
0-6 months    MAL-ED           NEPAL                          19                     1        0      98
0-6 months    MAL-ED           NEPAL                          20                     0        0      98
0-6 months    MAL-ED           NEPAL                          20                     1        0      98
0-6 months    MAL-ED           NEPAL                          21                     0        0      98
0-6 months    MAL-ED           NEPAL                          21                     1        0      98
0-6 months    MAL-ED           NEPAL                          24                     0        0      98
0-6 months    MAL-ED           NEPAL                          24                     1        0      98
0-6 months    MAL-ED           NEPAL                          25                     0        0      98
0-6 months    MAL-ED           NEPAL                          25                     1        0      98
0-6 months    MAL-ED           NEPAL                          27                     0        0      98
0-6 months    MAL-ED           NEPAL                          27                     1        0      98
0-6 months    MAL-ED           PERU                           0                      0        1     250
0-6 months    MAL-ED           PERU                           0                      1        0     250
0-6 months    MAL-ED           PERU                           1                      0        2     250
0-6 months    MAL-ED           PERU                           1                      1        0     250
0-6 months    MAL-ED           PERU                           2                      0        1     250
0-6 months    MAL-ED           PERU                           2                      1        0     250
0-6 months    MAL-ED           PERU                           3                      0        9     250
0-6 months    MAL-ED           PERU                           3                      1        0     250
0-6 months    MAL-ED           PERU                           4                      0        4     250
0-6 months    MAL-ED           PERU                           4                      1        0     250
0-6 months    MAL-ED           PERU                           5                      0        8     250
0-6 months    MAL-ED           PERU                           5                      1        0     250
0-6 months    MAL-ED           PERU                           6                      0       26     250
0-6 months    MAL-ED           PERU                           6                      1        0     250
0-6 months    MAL-ED           PERU                           7                      0       18     250
0-6 months    MAL-ED           PERU                           7                      1        0     250
0-6 months    MAL-ED           PERU                           8                      0       22     250
0-6 months    MAL-ED           PERU                           8                      1        0     250
0-6 months    MAL-ED           PERU                           9                      0       26     250
0-6 months    MAL-ED           PERU                           9                      1        0     250
0-6 months    MAL-ED           PERU                           10                     0       13     250
0-6 months    MAL-ED           PERU                           10                     1        0     250
0-6 months    MAL-ED           PERU                           11                     0       98     250
0-6 months    MAL-ED           PERU                           11                     1        1     250
0-6 months    MAL-ED           PERU                           12                     0        1     250
0-6 months    MAL-ED           PERU                           12                     1        0     250
0-6 months    MAL-ED           PERU                           13                     0        5     250
0-6 months    MAL-ED           PERU                           13                     1        0     250
0-6 months    MAL-ED           PERU                           14                     0        5     250
0-6 months    MAL-ED           PERU                           14                     1        0     250
0-6 months    MAL-ED           PERU                           15                     0        1     250
0-6 months    MAL-ED           PERU                           15                     1        0     250
0-6 months    MAL-ED           PERU                           16                     0        1     250
0-6 months    MAL-ED           PERU                           16                     1        0     250
0-6 months    MAL-ED           PERU                           17                     0        1     250
0-6 months    MAL-ED           PERU                           17                     1        0     250
0-6 months    MAL-ED           PERU                           18                     0        5     250
0-6 months    MAL-ED           PERU                           18                     1        0     250
0-6 months    MAL-ED           PERU                           19                     0        0     250
0-6 months    MAL-ED           PERU                           19                     1        0     250
0-6 months    MAL-ED           PERU                           20                     0        2     250
0-6 months    MAL-ED           PERU                           20                     1        0     250
0-6 months    MAL-ED           PERU                           21                     0        0     250
0-6 months    MAL-ED           PERU                           21                     1        0     250
0-6 months    MAL-ED           PERU                           24                     0        0     250
0-6 months    MAL-ED           PERU                           24                     1        0     250
0-6 months    MAL-ED           PERU                           25                     0        0     250
0-6 months    MAL-ED           PERU                           25                     1        0     250
0-6 months    MAL-ED           PERU                           27                     0        0     250
0-6 months    MAL-ED           PERU                           27                     1        0     250
0-6 months    MAL-ED           SOUTH AFRICA                   0                      0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   0                      1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   1                      0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   1                      1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   2                      0        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   2                      1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   3                      0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   3                      1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   4                      0        3     110
0-6 months    MAL-ED           SOUTH AFRICA                   4                      1        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   5                      0        2     110
0-6 months    MAL-ED           SOUTH AFRICA                   5                      1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   6                      0        6     110
0-6 months    MAL-ED           SOUTH AFRICA                   6                      1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   7                      0        6     110
0-6 months    MAL-ED           SOUTH AFRICA                   7                      1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   8                      0       11     110
0-6 months    MAL-ED           SOUTH AFRICA                   8                      1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   9                      0        6     110
0-6 months    MAL-ED           SOUTH AFRICA                   9                      1        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   10                     0       10     110
0-6 months    MAL-ED           SOUTH AFRICA                   10                     1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   11                     0       20     110
0-6 months    MAL-ED           SOUTH AFRICA                   11                     1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   12                     0       36     110
0-6 months    MAL-ED           SOUTH AFRICA                   12                     1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   13                     0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   13                     1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   14                     0        3     110
0-6 months    MAL-ED           SOUTH AFRICA                   14                     1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   15                     0        3     110
0-6 months    MAL-ED           SOUTH AFRICA                   15                     1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   16                     0        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   16                     1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   17                     0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   17                     1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   18                     0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   18                     1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   19                     0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   19                     1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   20                     0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   20                     1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   21                     0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   21                     1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   24                     0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   24                     1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   25                     0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   25                     1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   27                     0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   27                     1        0     110
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0       14     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                      0       13     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                      1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                      0       17     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                      1        1     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                      0       16     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                      1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                      0       12     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                      1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                      0        8     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                      1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                      0      116     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                      1        2     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                      0        1     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                      1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                      0        2     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                      1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                     0        4     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                     1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                     0        3     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                     1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                     0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                     1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                     0        2     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                     1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                     0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                     1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                     0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                     1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                     0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                     1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                     0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                     1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                     0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                     1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                     0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                     1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                     0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                     1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                     0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                     1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                     0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                     1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                     0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                     1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                     0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                     1        0     211
0-6 months    NIH-Crypto       BANGLADESH                     0                      0      157     758
0-6 months    NIH-Crypto       BANGLADESH                     0                      1       17     758
0-6 months    NIH-Crypto       BANGLADESH                     1                      0       20     758
0-6 months    NIH-Crypto       BANGLADESH                     1                      1        1     758
0-6 months    NIH-Crypto       BANGLADESH                     2                      0       12     758
0-6 months    NIH-Crypto       BANGLADESH                     2                      1        1     758
0-6 months    NIH-Crypto       BANGLADESH                     3                      0       33     758
0-6 months    NIH-Crypto       BANGLADESH                     3                      1        1     758
0-6 months    NIH-Crypto       BANGLADESH                     4                      0       36     758
0-6 months    NIH-Crypto       BANGLADESH                     4                      1        4     758
0-6 months    NIH-Crypto       BANGLADESH                     5                      0       83     758
0-6 months    NIH-Crypto       BANGLADESH                     5                      1        5     758
0-6 months    NIH-Crypto       BANGLADESH                     6                      0       35     758
0-6 months    NIH-Crypto       BANGLADESH                     6                      1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     7                      0       54     758
0-6 months    NIH-Crypto       BANGLADESH                     7                      1        3     758
0-6 months    NIH-Crypto       BANGLADESH                     8                      0       86     758
0-6 months    NIH-Crypto       BANGLADESH                     8                      1        4     758
0-6 months    NIH-Crypto       BANGLADESH                     9                      0       83     758
0-6 months    NIH-Crypto       BANGLADESH                     9                      1        3     758
0-6 months    NIH-Crypto       BANGLADESH                     10                     0       48     758
0-6 months    NIH-Crypto       BANGLADESH                     10                     1        6     758
0-6 months    NIH-Crypto       BANGLADESH                     11                     0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     11                     1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     12                     0       32     758
0-6 months    NIH-Crypto       BANGLADESH                     12                     1        3     758
0-6 months    NIH-Crypto       BANGLADESH                     13                     0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     13                     1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     14                     0        8     758
0-6 months    NIH-Crypto       BANGLADESH                     14                     1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     15                     0       15     758
0-6 months    NIH-Crypto       BANGLADESH                     15                     1        1     758
0-6 months    NIH-Crypto       BANGLADESH                     16                     0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     16                     1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     17                     0        6     758
0-6 months    NIH-Crypto       BANGLADESH                     17                     1        1     758
0-6 months    NIH-Crypto       BANGLADESH                     18                     0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     18                     1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     19                     0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     19                     1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     20                     0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     20                     1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     21                     0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     21                     1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     24                     0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     24                     1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     25                     0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     25                     1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     27                     0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     27                     1        0     758
0-6 months    PROBIT           BELARUS                        0                      0        0   16312
0-6 months    PROBIT           BELARUS                        0                      1        0   16312
0-6 months    PROBIT           BELARUS                        1                      0        0   16312
0-6 months    PROBIT           BELARUS                        1                      1        0   16312
0-6 months    PROBIT           BELARUS                        2                      0        0   16312
0-6 months    PROBIT           BELARUS                        2                      1        0   16312
0-6 months    PROBIT           BELARUS                        3                      0        0   16312
0-6 months    PROBIT           BELARUS                        3                      1        0   16312
0-6 months    PROBIT           BELARUS                        4                      0        0   16312
0-6 months    PROBIT           BELARUS                        4                      1        0   16312
0-6 months    PROBIT           BELARUS                        5                      0        0   16312
0-6 months    PROBIT           BELARUS                        5                      1        0   16312
0-6 months    PROBIT           BELARUS                        6                      0        0   16312
0-6 months    PROBIT           BELARUS                        6                      1        0   16312
0-6 months    PROBIT           BELARUS                        7                      0        0   16312
0-6 months    PROBIT           BELARUS                        7                      1        0   16312
0-6 months    PROBIT           BELARUS                        8                      0       26   16312
0-6 months    PROBIT           BELARUS                        8                      1        1   16312
0-6 months    PROBIT           BELARUS                        9                      0        0   16312
0-6 months    PROBIT           BELARUS                        9                      1        0   16312
0-6 months    PROBIT           BELARUS                        10                     0      343   16312
0-6 months    PROBIT           BELARUS                        10                     1       24   16312
0-6 months    PROBIT           BELARUS                        11                     0        0   16312
0-6 months    PROBIT           BELARUS                        11                     1        0   16312
0-6 months    PROBIT           BELARUS                        12                     0     5552   16312
0-6 months    PROBIT           BELARUS                        12                     1      472   16312
0-6 months    PROBIT           BELARUS                        13                     0     6608   16312
0-6 months    PROBIT           BELARUS                        13                     1      578   16312
0-6 months    PROBIT           BELARUS                        14                     0      413   16312
0-6 months    PROBIT           BELARUS                        14                     1       31   16312
0-6 months    PROBIT           BELARUS                        15                     0        0   16312
0-6 months    PROBIT           BELARUS                        15                     1        0   16312
0-6 months    PROBIT           BELARUS                        16                     0     2108   16312
0-6 months    PROBIT           BELARUS                        16                     1      156   16312
0-6 months    PROBIT           BELARUS                        17                     0        0   16312
0-6 months    PROBIT           BELARUS                        17                     1        0   16312
0-6 months    PROBIT           BELARUS                        18                     0        0   16312
0-6 months    PROBIT           BELARUS                        18                     1        0   16312
0-6 months    PROBIT           BELARUS                        19                     0        0   16312
0-6 months    PROBIT           BELARUS                        19                     1        0   16312
0-6 months    PROBIT           BELARUS                        20                     0        0   16312
0-6 months    PROBIT           BELARUS                        20                     1        0   16312
0-6 months    PROBIT           BELARUS                        21                     0        0   16312
0-6 months    PROBIT           BELARUS                        21                     1        0   16312
0-6 months    PROBIT           BELARUS                        24                     0        0   16312
0-6 months    PROBIT           BELARUS                        24                     1        0   16312
0-6 months    PROBIT           BELARUS                        25                     0        0   16312
0-6 months    PROBIT           BELARUS                        25                     1        0   16312
0-6 months    PROBIT           BELARUS                        27                     0        0   16312
0-6 months    PROBIT           BELARUS                        27                     1        0   16312
0-6 months    PROVIDE          BANGLADESH                     0                      0      198     700
0-6 months    PROVIDE          BANGLADESH                     0                      1        9     700
0-6 months    PROVIDE          BANGLADESH                     1                      0       13     700
0-6 months    PROVIDE          BANGLADESH                     1                      1        0     700
0-6 months    PROVIDE          BANGLADESH                     2                      0       17     700
0-6 months    PROVIDE          BANGLADESH                     2                      1        1     700
0-6 months    PROVIDE          BANGLADESH                     3                      0       25     700
0-6 months    PROVIDE          BANGLADESH                     3                      1        2     700
0-6 months    PROVIDE          BANGLADESH                     4                      0       52     700
0-6 months    PROVIDE          BANGLADESH                     4                      1        0     700
0-6 months    PROVIDE          BANGLADESH                     5                      0       76     700
0-6 months    PROVIDE          BANGLADESH                     5                      1        4     700
0-6 months    PROVIDE          BANGLADESH                     6                      0       29     700
0-6 months    PROVIDE          BANGLADESH                     6                      1        0     700
0-6 months    PROVIDE          BANGLADESH                     7                      0       41     700
0-6 months    PROVIDE          BANGLADESH                     7                      1        1     700
0-6 months    PROVIDE          BANGLADESH                     8                      0       59     700
0-6 months    PROVIDE          BANGLADESH                     8                      1        5     700
0-6 months    PROVIDE          BANGLADESH                     9                      0       60     700
0-6 months    PROVIDE          BANGLADESH                     9                      1        2     700
0-6 months    PROVIDE          BANGLADESH                     10                     0       38     700
0-6 months    PROVIDE          BANGLADESH                     10                     1        1     700
0-6 months    PROVIDE          BANGLADESH                     11                     0       25     700
0-6 months    PROVIDE          BANGLADESH                     11                     1        1     700
0-6 months    PROVIDE          BANGLADESH                     12                     0        4     700
0-6 months    PROVIDE          BANGLADESH                     12                     1        0     700
0-6 months    PROVIDE          BANGLADESH                     13                     0        0     700
0-6 months    PROVIDE          BANGLADESH                     13                     1        0     700
0-6 months    PROVIDE          BANGLADESH                     14                     0       18     700
0-6 months    PROVIDE          BANGLADESH                     14                     1        1     700
0-6 months    PROVIDE          BANGLADESH                     15                     0        7     700
0-6 months    PROVIDE          BANGLADESH                     15                     1        1     700
0-6 months    PROVIDE          BANGLADESH                     16                     0        8     700
0-6 months    PROVIDE          BANGLADESH                     16                     1        1     700
0-6 months    PROVIDE          BANGLADESH                     17                     0        0     700
0-6 months    PROVIDE          BANGLADESH                     17                     1        0     700
0-6 months    PROVIDE          BANGLADESH                     18                     0        0     700
0-6 months    PROVIDE          BANGLADESH                     18                     1        0     700
0-6 months    PROVIDE          BANGLADESH                     19                     0        1     700
0-6 months    PROVIDE          BANGLADESH                     19                     1        0     700
0-6 months    PROVIDE          BANGLADESH                     20                     0        0     700
0-6 months    PROVIDE          BANGLADESH                     20                     1        0     700
0-6 months    PROVIDE          BANGLADESH                     21                     0        0     700
0-6 months    PROVIDE          BANGLADESH                     21                     1        0     700
0-6 months    PROVIDE          BANGLADESH                     24                     0        0     700
0-6 months    PROVIDE          BANGLADESH                     24                     1        0     700
0-6 months    PROVIDE          BANGLADESH                     25                     0        0     700
0-6 months    PROVIDE          BANGLADESH                     25                     1        0     700
0-6 months    PROVIDE          BANGLADESH                     27                     0        0     700
0-6 months    PROVIDE          BANGLADESH                     27                     1        0     700
0-6 months    SAS-CompFeed     INDIA                          0                      0      172    1502
0-6 months    SAS-CompFeed     INDIA                          0                      1       18    1502
0-6 months    SAS-CompFeed     INDIA                          1                      0        0    1502
0-6 months    SAS-CompFeed     INDIA                          1                      1        0    1502
0-6 months    SAS-CompFeed     INDIA                          2                      0        6    1502
0-6 months    SAS-CompFeed     INDIA                          2                      1        0    1502
0-6 months    SAS-CompFeed     INDIA                          3                      0       13    1502
0-6 months    SAS-CompFeed     INDIA                          3                      1        1    1502
0-6 months    SAS-CompFeed     INDIA                          4                      0       23    1502
0-6 months    SAS-CompFeed     INDIA                          4                      1        2    1502
0-6 months    SAS-CompFeed     INDIA                          5                      0       84    1502
0-6 months    SAS-CompFeed     INDIA                          5                      1        8    1502
0-6 months    SAS-CompFeed     INDIA                          6                      0       21    1502
0-6 months    SAS-CompFeed     INDIA                          6                      1        6    1502
0-6 months    SAS-CompFeed     INDIA                          7                      0      107    1502
0-6 months    SAS-CompFeed     INDIA                          7                      1       10    1502
0-6 months    SAS-CompFeed     INDIA                          8                      0      159    1502
0-6 months    SAS-CompFeed     INDIA                          8                      1       10    1502
0-6 months    SAS-CompFeed     INDIA                          9                      0       95    1502
0-6 months    SAS-CompFeed     INDIA                          9                      1        3    1502
0-6 months    SAS-CompFeed     INDIA                          10                     0      355    1502
0-6 months    SAS-CompFeed     INDIA                          10                     1       24    1502
0-6 months    SAS-CompFeed     INDIA                          11                     0       39    1502
0-6 months    SAS-CompFeed     INDIA                          11                     1        2    1502
0-6 months    SAS-CompFeed     INDIA                          12                     0      215    1502
0-6 months    SAS-CompFeed     INDIA                          12                     1       12    1502
0-6 months    SAS-CompFeed     INDIA                          13                     0        6    1502
0-6 months    SAS-CompFeed     INDIA                          13                     1        1    1502
0-6 months    SAS-CompFeed     INDIA                          14                     0       16    1502
0-6 months    SAS-CompFeed     INDIA                          14                     1        1    1502
0-6 months    SAS-CompFeed     INDIA                          15                     0       61    1502
0-6 months    SAS-CompFeed     INDIA                          15                     1        2    1502
0-6 months    SAS-CompFeed     INDIA                          16                     0       10    1502
0-6 months    SAS-CompFeed     INDIA                          16                     1        0    1502
0-6 months    SAS-CompFeed     INDIA                          17                     0       15    1502
0-6 months    SAS-CompFeed     INDIA                          17                     1        0    1502
0-6 months    SAS-CompFeed     INDIA                          18                     0        3    1502
0-6 months    SAS-CompFeed     INDIA                          18                     1        0    1502
0-6 months    SAS-CompFeed     INDIA                          19                     0        1    1502
0-6 months    SAS-CompFeed     INDIA                          19                     1        0    1502
0-6 months    SAS-CompFeed     INDIA                          20                     0        1    1502
0-6 months    SAS-CompFeed     INDIA                          20                     1        0    1502
0-6 months    SAS-CompFeed     INDIA                          21                     0        0    1502
0-6 months    SAS-CompFeed     INDIA                          21                     1        0    1502
0-6 months    SAS-CompFeed     INDIA                          24                     0        0    1502
0-6 months    SAS-CompFeed     INDIA                          24                     1        0    1502
0-6 months    SAS-CompFeed     INDIA                          25                     0        0    1502
0-6 months    SAS-CompFeed     INDIA                          25                     1        0    1502
0-6 months    SAS-CompFeed     INDIA                          27                     0        0    1502
0-6 months    SAS-CompFeed     INDIA                          27                     1        0    1502
0-6 months    SAS-FoodSuppl    INDIA                          0                      0      140     418
0-6 months    SAS-FoodSuppl    INDIA                          0                      1        7     418
0-6 months    SAS-FoodSuppl    INDIA                          1                      0        1     418
0-6 months    SAS-FoodSuppl    INDIA                          1                      1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          2                      0        9     418
0-6 months    SAS-FoodSuppl    INDIA                          2                      1        1     418
0-6 months    SAS-FoodSuppl    INDIA                          3                      0        6     418
0-6 months    SAS-FoodSuppl    INDIA                          3                      1        1     418
0-6 months    SAS-FoodSuppl    INDIA                          4                      0       11     418
0-6 months    SAS-FoodSuppl    INDIA                          4                      1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          5                      0       51     418
0-6 months    SAS-FoodSuppl    INDIA                          5                      1        4     418
0-6 months    SAS-FoodSuppl    INDIA                          6                      0       12     418
0-6 months    SAS-FoodSuppl    INDIA                          6                      1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          7                      0       15     418
0-6 months    SAS-FoodSuppl    INDIA                          7                      1        1     418
0-6 months    SAS-FoodSuppl    INDIA                          8                      0       49     418
0-6 months    SAS-FoodSuppl    INDIA                          8                      1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          9                      0       24     418
0-6 months    SAS-FoodSuppl    INDIA                          9                      1        2     418
0-6 months    SAS-FoodSuppl    INDIA                          10                     0       57     418
0-6 months    SAS-FoodSuppl    INDIA                          10                     1        3     418
0-6 months    SAS-FoodSuppl    INDIA                          11                     0        3     418
0-6 months    SAS-FoodSuppl    INDIA                          11                     1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          12                     0       10     418
0-6 months    SAS-FoodSuppl    INDIA                          12                     1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          13                     0        1     418
0-6 months    SAS-FoodSuppl    INDIA                          13                     1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          14                     0        6     418
0-6 months    SAS-FoodSuppl    INDIA                          14                     1        1     418
0-6 months    SAS-FoodSuppl    INDIA                          15                     0        3     418
0-6 months    SAS-FoodSuppl    INDIA                          15                     1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          16                     0        0     418
0-6 months    SAS-FoodSuppl    INDIA                          16                     1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          17                     0        0     418
0-6 months    SAS-FoodSuppl    INDIA                          17                     1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          18                     0        0     418
0-6 months    SAS-FoodSuppl    INDIA                          18                     1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          19                     0        0     418
0-6 months    SAS-FoodSuppl    INDIA                          19                     1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          20                     0        0     418
0-6 months    SAS-FoodSuppl    INDIA                          20                     1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          21                     0        0     418
0-6 months    SAS-FoodSuppl    INDIA                          21                     1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          24                     0        0     418
0-6 months    SAS-FoodSuppl    INDIA                          24                     1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          25                     0        0     418
0-6 months    SAS-FoodSuppl    INDIA                          25                     1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          27                     0        0     418
0-6 months    SAS-FoodSuppl    INDIA                          27                     1        0     418
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      0        5    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      0        6    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      0        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      0     1215    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      1       43    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      0        9    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      0       52    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      1        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     0       22    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     1        2    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     0      556    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     1       22    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     0       17    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                     0      116    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                     1        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                     0       14    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                     1        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                     0       23    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                     1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                     0       28    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                     1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                     0       23    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                     1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                     0        5    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                     1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                     0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                     1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                     0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                     1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                     0        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                     1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                     0       14    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                     1        2    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                     0        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                     1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                     0      196    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                     1        7    2383
0-6 months    ZVITAMBO         ZIMBABWE                       0                      0       55   13478
0-6 months    ZVITAMBO         ZIMBABWE                       0                      1        5   13478
0-6 months    ZVITAMBO         ZIMBABWE                       1                      0        1   13478
0-6 months    ZVITAMBO         ZIMBABWE                       1                      1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       2                      0        5   13478
0-6 months    ZVITAMBO         ZIMBABWE                       2                      1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       3                      0       12   13478
0-6 months    ZVITAMBO         ZIMBABWE                       3                      1        3   13478
0-6 months    ZVITAMBO         ZIMBABWE                       4                      0       22   13478
0-6 months    ZVITAMBO         ZIMBABWE                       4                      1        1   13478
0-6 months    ZVITAMBO         ZIMBABWE                       5                      0       27   13478
0-6 months    ZVITAMBO         ZIMBABWE                       5                      1        3   13478
0-6 months    ZVITAMBO         ZIMBABWE                       6                      0       39   13478
0-6 months    ZVITAMBO         ZIMBABWE                       6                      1        4   13478
0-6 months    ZVITAMBO         ZIMBABWE                       7                      0      729   13478
0-6 months    ZVITAMBO         ZIMBABWE                       7                      1       50   13478
0-6 months    ZVITAMBO         ZIMBABWE                       8                      0       96   13478
0-6 months    ZVITAMBO         ZIMBABWE                       8                      1        5   13478
0-6 months    ZVITAMBO         ZIMBABWE                       9                      0      831   13478
0-6 months    ZVITAMBO         ZIMBABWE                       9                      1       58   13478
0-6 months    ZVITAMBO         ZIMBABWE                       10                     0      307   13478
0-6 months    ZVITAMBO         ZIMBABWE                       10                     1       16   13478
0-6 months    ZVITAMBO         ZIMBABWE                       11                     0     9507   13478
0-6 months    ZVITAMBO         ZIMBABWE                       11                     1      717   13478
0-6 months    ZVITAMBO         ZIMBABWE                       12                     0       57   13478
0-6 months    ZVITAMBO         ZIMBABWE                       12                     1        1   13478
0-6 months    ZVITAMBO         ZIMBABWE                       13                     0      872   13478
0-6 months    ZVITAMBO         ZIMBABWE                       13                     1       55   13478
0-6 months    ZVITAMBO         ZIMBABWE                       14                     0        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       14                     1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       15                     0        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       15                     1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       16                     0        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       16                     1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       17                     0        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       17                     1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       18                     0        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       18                     1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       19                     0        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       19                     1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       20                     0        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       20                     1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       21                     0        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       21                     1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       24                     0        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       24                     1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       25                     0        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       25                     1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       27                     0        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       27                     1        0   13478
6-24 months   COHORTS          GUATEMALA                      0                      0      499    1125
6-24 months   COHORTS          GUATEMALA                      0                      1       12    1125
6-24 months   COHORTS          GUATEMALA                      1                      0       55    1125
6-24 months   COHORTS          GUATEMALA                      1                      1        5    1125
6-24 months   COHORTS          GUATEMALA                      2                      0      193    1125
6-24 months   COHORTS          GUATEMALA                      2                      1        3    1125
6-24 months   COHORTS          GUATEMALA                      3                      0      145    1125
6-24 months   COHORTS          GUATEMALA                      3                      1        3    1125
6-24 months   COHORTS          GUATEMALA                      4                      0       68    1125
6-24 months   COHORTS          GUATEMALA                      4                      1        4    1125
6-24 months   COHORTS          GUATEMALA                      5                      0       26    1125
6-24 months   COHORTS          GUATEMALA                      5                      1        0    1125
6-24 months   COHORTS          GUATEMALA                      6                      0       97    1125
6-24 months   COHORTS          GUATEMALA                      6                      1        1    1125
6-24 months   COHORTS          GUATEMALA                      7                      0        4    1125
6-24 months   COHORTS          GUATEMALA                      7                      1        0    1125
6-24 months   COHORTS          GUATEMALA                      8                      0        1    1125
6-24 months   COHORTS          GUATEMALA                      8                      1        0    1125
6-24 months   COHORTS          GUATEMALA                      9                      0        1    1125
6-24 months   COHORTS          GUATEMALA                      9                      1        0    1125
6-24 months   COHORTS          GUATEMALA                      10                     0        1    1125
6-24 months   COHORTS          GUATEMALA                      10                     1        0    1125
6-24 months   COHORTS          GUATEMALA                      11                     0        0    1125
6-24 months   COHORTS          GUATEMALA                      11                     1        0    1125
6-24 months   COHORTS          GUATEMALA                      12                     0        5    1125
6-24 months   COHORTS          GUATEMALA                      12                     1        0    1125
6-24 months   COHORTS          GUATEMALA                      13                     0        0    1125
6-24 months   COHORTS          GUATEMALA                      13                     1        0    1125
6-24 months   COHORTS          GUATEMALA                      14                     0        1    1125
6-24 months   COHORTS          GUATEMALA                      14                     1        0    1125
6-24 months   COHORTS          GUATEMALA                      15                     0        1    1125
6-24 months   COHORTS          GUATEMALA                      15                     1        0    1125
6-24 months   COHORTS          GUATEMALA                      16                     0        0    1125
6-24 months   COHORTS          GUATEMALA                      16                     1        0    1125
6-24 months   COHORTS          GUATEMALA                      17                     0        0    1125
6-24 months   COHORTS          GUATEMALA                      17                     1        0    1125
6-24 months   COHORTS          GUATEMALA                      18                     0        0    1125
6-24 months   COHORTS          GUATEMALA                      18                     1        0    1125
6-24 months   COHORTS          GUATEMALA                      19                     0        0    1125
6-24 months   COHORTS          GUATEMALA                      19                     1        0    1125
6-24 months   COHORTS          GUATEMALA                      20                     0        0    1125
6-24 months   COHORTS          GUATEMALA                      20                     1        0    1125
6-24 months   COHORTS          GUATEMALA                      21                     0        0    1125
6-24 months   COHORTS          GUATEMALA                      21                     1        0    1125
6-24 months   COHORTS          GUATEMALA                      24                     0        0    1125
6-24 months   COHORTS          GUATEMALA                      24                     1        0    1125
6-24 months   COHORTS          GUATEMALA                      25                     0        0    1125
6-24 months   COHORTS          GUATEMALA                      25                     1        0    1125
6-24 months   COHORTS          GUATEMALA                      27                     0        0    1125
6-24 months   COHORTS          GUATEMALA                      27                     1        0    1125
6-24 months   COHORTS          INDIA                          0                      0      112    1405
6-24 months   COHORTS          INDIA                          0                      1       10    1405
6-24 months   COHORTS          INDIA                          1                      0        0    1405
6-24 months   COHORTS          INDIA                          1                      1        0    1405
6-24 months   COHORTS          INDIA                          2                      0        0    1405
6-24 months   COHORTS          INDIA                          2                      1        0    1405
6-24 months   COHORTS          INDIA                          3                      0      124    1405
6-24 months   COHORTS          INDIA                          3                      1        6    1405
6-24 months   COHORTS          INDIA                          4                      0        0    1405
6-24 months   COHORTS          INDIA                          4                      1        0    1405
6-24 months   COHORTS          INDIA                          5                      0        0    1405
6-24 months   COHORTS          INDIA                          5                      1        0    1405
6-24 months   COHORTS          INDIA                          6                      0        0    1405
6-24 months   COHORTS          INDIA                          6                      1        0    1405
6-24 months   COHORTS          INDIA                          7                      0        0    1405
6-24 months   COHORTS          INDIA                          7                      1        0    1405
6-24 months   COHORTS          INDIA                          8                      0      200    1405
6-24 months   COHORTS          INDIA                          8                      1        7    1405
6-24 months   COHORTS          INDIA                          9                      0        0    1405
6-24 months   COHORTS          INDIA                          9                      1        0    1405
6-24 months   COHORTS          INDIA                          10                     0        0    1405
6-24 months   COHORTS          INDIA                          10                     1        0    1405
6-24 months   COHORTS          INDIA                          11                     0        0    1405
6-24 months   COHORTS          INDIA                          11                     1        0    1405
6-24 months   COHORTS          INDIA                          12                     0      384    1405
6-24 months   COHORTS          INDIA                          12                     1       13    1405
6-24 months   COHORTS          INDIA                          13                     0        0    1405
6-24 months   COHORTS          INDIA                          13                     1        0    1405
6-24 months   COHORTS          INDIA                          14                     0      149    1405
6-24 months   COHORTS          INDIA                          14                     1        4    1405
6-24 months   COHORTS          INDIA                          15                     0      267    1405
6-24 months   COHORTS          INDIA                          15                     1        8    1405
6-24 months   COHORTS          INDIA                          16                     0        0    1405
6-24 months   COHORTS          INDIA                          16                     1        0    1405
6-24 months   COHORTS          INDIA                          17                     0      118    1405
6-24 months   COHORTS          INDIA                          17                     1        3    1405
6-24 months   COHORTS          INDIA                          18                     0        0    1405
6-24 months   COHORTS          INDIA                          18                     1        0    1405
6-24 months   COHORTS          INDIA                          19                     0        0    1405
6-24 months   COHORTS          INDIA                          19                     1        0    1405
6-24 months   COHORTS          INDIA                          20                     0        0    1405
6-24 months   COHORTS          INDIA                          20                     1        0    1405
6-24 months   COHORTS          INDIA                          21                     0        0    1405
6-24 months   COHORTS          INDIA                          21                     1        0    1405
6-24 months   COHORTS          INDIA                          24                     0        0    1405
6-24 months   COHORTS          INDIA                          24                     1        0    1405
6-24 months   COHORTS          INDIA                          25                     0        0    1405
6-24 months   COHORTS          INDIA                          25                     1        0    1405
6-24 months   COHORTS          INDIA                          27                     0        0    1405
6-24 months   COHORTS          INDIA                          27                     1        0    1405
6-24 months   COHORTS          PHILIPPINES                    0                      0       50    2655
6-24 months   COHORTS          PHILIPPINES                    0                      1        6    2655
6-24 months   COHORTS          PHILIPPINES                    1                      0       30    2655
6-24 months   COHORTS          PHILIPPINES                    1                      1        4    2655
6-24 months   COHORTS          PHILIPPINES                    2                      0       81    2655
6-24 months   COHORTS          PHILIPPINES                    2                      1       11    2655
6-24 months   COHORTS          PHILIPPINES                    3                      0      146    2655
6-24 months   COHORTS          PHILIPPINES                    3                      1       13    2655
6-24 months   COHORTS          PHILIPPINES                    4                      0      231    2655
6-24 months   COHORTS          PHILIPPINES                    4                      1       14    2655
6-24 months   COHORTS          PHILIPPINES                    5                      0      172    2655
6-24 months   COHORTS          PHILIPPINES                    5                      1       20    2655
6-24 months   COHORTS          PHILIPPINES                    6                      0      561    2655
6-24 months   COHORTS          PHILIPPINES                    6                      1       49    2655
6-24 months   COHORTS          PHILIPPINES                    7                      0      127    2655
6-24 months   COHORTS          PHILIPPINES                    7                      1       10    2655
6-24 months   COHORTS          PHILIPPINES                    8                      0      197    2655
6-24 months   COHORTS          PHILIPPINES                    8                      1       10    2655
6-24 months   COHORTS          PHILIPPINES                    9                      0      169    2655
6-24 months   COHORTS          PHILIPPINES                    9                      1        9    2655
6-24 months   COHORTS          PHILIPPINES                    10                     0      288    2655
6-24 months   COHORTS          PHILIPPINES                    10                     1       16    2655
6-24 months   COHORTS          PHILIPPINES                    11                     0       60    2655
6-24 months   COHORTS          PHILIPPINES                    11                     1        1    2655
6-24 months   COHORTS          PHILIPPINES                    12                     0      148    2655
6-24 months   COHORTS          PHILIPPINES                    12                     1        6    2655
6-24 months   COHORTS          PHILIPPINES                    13                     0       55    2655
6-24 months   COHORTS          PHILIPPINES                    13                     1        3    2655
6-24 months   COHORTS          PHILIPPINES                    14                     0      123    2655
6-24 months   COHORTS          PHILIPPINES                    14                     1        3    2655
6-24 months   COHORTS          PHILIPPINES                    15                     0       31    2655
6-24 months   COHORTS          PHILIPPINES                    15                     1        2    2655
6-24 months   COHORTS          PHILIPPINES                    16                     0        5    2655
6-24 months   COHORTS          PHILIPPINES                    16                     1        0    2655
6-24 months   COHORTS          PHILIPPINES                    17                     0        2    2655
6-24 months   COHORTS          PHILIPPINES                    17                     1        0    2655
6-24 months   COHORTS          PHILIPPINES                    18                     0        2    2655
6-24 months   COHORTS          PHILIPPINES                    18                     1        0    2655
6-24 months   COHORTS          PHILIPPINES                    19                     0        0    2655
6-24 months   COHORTS          PHILIPPINES                    19                     1        0    2655
6-24 months   COHORTS          PHILIPPINES                    20                     0        0    2655
6-24 months   COHORTS          PHILIPPINES                    20                     1        0    2655
6-24 months   COHORTS          PHILIPPINES                    21                     0        0    2655
6-24 months   COHORTS          PHILIPPINES                    21                     1        0    2655
6-24 months   COHORTS          PHILIPPINES                    24                     0        0    2655
6-24 months   COHORTS          PHILIPPINES                    24                     1        0    2655
6-24 months   COHORTS          PHILIPPINES                    25                     0        0    2655
6-24 months   COHORTS          PHILIPPINES                    25                     1        0    2655
6-24 months   COHORTS          PHILIPPINES                    27                     0        0    2655
6-24 months   COHORTS          PHILIPPINES                    27                     1        0    2655
6-24 months   GMS-Nepal        NEPAL                          0                      0      194     589
6-24 months   GMS-Nepal        NEPAL                          0                      1       59     589
6-24 months   GMS-Nepal        NEPAL                          1                      0        0     589
6-24 months   GMS-Nepal        NEPAL                          1                      1        0     589
6-24 months   GMS-Nepal        NEPAL                          2                      0        0     589
6-24 months   GMS-Nepal        NEPAL                          2                      1        0     589
6-24 months   GMS-Nepal        NEPAL                          3                      0        0     589
6-24 months   GMS-Nepal        NEPAL                          3                      1        0     589
6-24 months   GMS-Nepal        NEPAL                          4                      0        0     589
6-24 months   GMS-Nepal        NEPAL                          4                      1        0     589
6-24 months   GMS-Nepal        NEPAL                          5                      0       78     589
6-24 months   GMS-Nepal        NEPAL                          5                      1       15     589
6-24 months   GMS-Nepal        NEPAL                          6                      0        0     589
6-24 months   GMS-Nepal        NEPAL                          6                      1        0     589
6-24 months   GMS-Nepal        NEPAL                          7                      0        0     589
6-24 months   GMS-Nepal        NEPAL                          7                      1        0     589
6-24 months   GMS-Nepal        NEPAL                          8                      0       86     589
6-24 months   GMS-Nepal        NEPAL                          8                      1       12     589
6-24 months   GMS-Nepal        NEPAL                          9                      0        0     589
6-24 months   GMS-Nepal        NEPAL                          9                      1        0     589
6-24 months   GMS-Nepal        NEPAL                          10                     0       84     589
6-24 months   GMS-Nepal        NEPAL                          10                     1       25     589
6-24 months   GMS-Nepal        NEPAL                          11                     0        0     589
6-24 months   GMS-Nepal        NEPAL                          11                     1        0     589
6-24 months   GMS-Nepal        NEPAL                          12                     0       35     589
6-24 months   GMS-Nepal        NEPAL                          12                     1        1     589
6-24 months   GMS-Nepal        NEPAL                          13                     0        0     589
6-24 months   GMS-Nepal        NEPAL                          13                     1        0     589
6-24 months   GMS-Nepal        NEPAL                          14                     0        0     589
6-24 months   GMS-Nepal        NEPAL                          14                     1        0     589
6-24 months   GMS-Nepal        NEPAL                          15                     0        0     589
6-24 months   GMS-Nepal        NEPAL                          15                     1        0     589
6-24 months   GMS-Nepal        NEPAL                          16                     0        0     589
6-24 months   GMS-Nepal        NEPAL                          16                     1        0     589
6-24 months   GMS-Nepal        NEPAL                          17                     0        0     589
6-24 months   GMS-Nepal        NEPAL                          17                     1        0     589
6-24 months   GMS-Nepal        NEPAL                          18                     0        0     589
6-24 months   GMS-Nepal        NEPAL                          18                     1        0     589
6-24 months   GMS-Nepal        NEPAL                          19                     0        0     589
6-24 months   GMS-Nepal        NEPAL                          19                     1        0     589
6-24 months   GMS-Nepal        NEPAL                          20                     0        0     589
6-24 months   GMS-Nepal        NEPAL                          20                     1        0     589
6-24 months   GMS-Nepal        NEPAL                          21                     0        0     589
6-24 months   GMS-Nepal        NEPAL                          21                     1        0     589
6-24 months   GMS-Nepal        NEPAL                          24                     0        0     589
6-24 months   GMS-Nepal        NEPAL                          24                     1        0     589
6-24 months   GMS-Nepal        NEPAL                          25                     0        0     589
6-24 months   GMS-Nepal        NEPAL                          25                     1        0     589
6-24 months   GMS-Nepal        NEPAL                          27                     0        0     589
6-24 months   GMS-Nepal        NEPAL                          27                     1        0     589
6-24 months   LCNI-5           MALAWI                         0                      0      287     802
6-24 months   LCNI-5           MALAWI                         0                      1        2     802
6-24 months   LCNI-5           MALAWI                         1                      0       11     802
6-24 months   LCNI-5           MALAWI                         1                      1        0     802
6-24 months   LCNI-5           MALAWI                         2                      0       32     802
6-24 months   LCNI-5           MALAWI                         2                      1        0     802
6-24 months   LCNI-5           MALAWI                         3                      0       37     802
6-24 months   LCNI-5           MALAWI                         3                      1        1     802
6-24 months   LCNI-5           MALAWI                         4                      0       58     802
6-24 months   LCNI-5           MALAWI                         4                      1        1     802
6-24 months   LCNI-5           MALAWI                         5                      0       58     802
6-24 months   LCNI-5           MALAWI                         5                      1        0     802
6-24 months   LCNI-5           MALAWI                         6                      0       68     802
6-24 months   LCNI-5           MALAWI                         6                      1        0     802
6-24 months   LCNI-5           MALAWI                         7                      0       64     802
6-24 months   LCNI-5           MALAWI                         7                      1        2     802
6-24 months   LCNI-5           MALAWI                         8                      0       88     802
6-24 months   LCNI-5           MALAWI                         8                      1        1     802
6-24 months   LCNI-5           MALAWI                         9                      0       12     802
6-24 months   LCNI-5           MALAWI                         9                      1        0     802
6-24 months   LCNI-5           MALAWI                         10                     0       16     802
6-24 months   LCNI-5           MALAWI                         10                     1        0     802
6-24 months   LCNI-5           MALAWI                         11                     0        7     802
6-24 months   LCNI-5           MALAWI                         11                     1        0     802
6-24 months   LCNI-5           MALAWI                         12                     0       51     802
6-24 months   LCNI-5           MALAWI                         12                     1        1     802
6-24 months   LCNI-5           MALAWI                         13                     0        1     802
6-24 months   LCNI-5           MALAWI                         13                     1        0     802
6-24 months   LCNI-5           MALAWI                         14                     0        3     802
6-24 months   LCNI-5           MALAWI                         14                     1        0     802
6-24 months   LCNI-5           MALAWI                         15                     0        0     802
6-24 months   LCNI-5           MALAWI                         15                     1        0     802
6-24 months   LCNI-5           MALAWI                         16                     0        1     802
6-24 months   LCNI-5           MALAWI                         16                     1        0     802
6-24 months   LCNI-5           MALAWI                         17                     0        0     802
6-24 months   LCNI-5           MALAWI                         17                     1        0     802
6-24 months   LCNI-5           MALAWI                         18                     0        0     802
6-24 months   LCNI-5           MALAWI                         18                     1        0     802
6-24 months   LCNI-5           MALAWI                         19                     0        0     802
6-24 months   LCNI-5           MALAWI                         19                     1        0     802
6-24 months   LCNI-5           MALAWI                         20                     0        0     802
6-24 months   LCNI-5           MALAWI                         20                     1        0     802
6-24 months   LCNI-5           MALAWI                         21                     0        0     802
6-24 months   LCNI-5           MALAWI                         21                     1        0     802
6-24 months   LCNI-5           MALAWI                         24                     0        0     802
6-24 months   LCNI-5           MALAWI                         24                     1        0     802
6-24 months   LCNI-5           MALAWI                         25                     0        0     802
6-24 months   LCNI-5           MALAWI                         25                     1        0     802
6-24 months   LCNI-5           MALAWI                         27                     0        0     802
6-24 months   LCNI-5           MALAWI                         27                     1        0     802
6-24 months   MAL-ED           BANGLADESH                     0                      0        0     131
6-24 months   MAL-ED           BANGLADESH                     0                      1        0     131
6-24 months   MAL-ED           BANGLADESH                     1                      0        6     131
6-24 months   MAL-ED           BANGLADESH                     1                      1        1     131
6-24 months   MAL-ED           BANGLADESH                     2                      0       12     131
6-24 months   MAL-ED           BANGLADESH                     2                      1        0     131
6-24 months   MAL-ED           BANGLADESH                     3                      0       12     131
6-24 months   MAL-ED           BANGLADESH                     3                      1        0     131
6-24 months   MAL-ED           BANGLADESH                     4                      0        6     131
6-24 months   MAL-ED           BANGLADESH                     4                      1        0     131
6-24 months   MAL-ED           BANGLADESH                     5                      0       28     131
6-24 months   MAL-ED           BANGLADESH                     5                      1        1     131
6-24 months   MAL-ED           BANGLADESH                     6                      0        8     131
6-24 months   MAL-ED           BANGLADESH                     6                      1        0     131
6-24 months   MAL-ED           BANGLADESH                     7                      0        9     131
6-24 months   MAL-ED           BANGLADESH                     7                      1        0     131
6-24 months   MAL-ED           BANGLADESH                     8                      0       15     131
6-24 months   MAL-ED           BANGLADESH                     8                      1        1     131
6-24 months   MAL-ED           BANGLADESH                     9                      0       13     131
6-24 months   MAL-ED           BANGLADESH                     9                      1        0     131
6-24 months   MAL-ED           BANGLADESH                     10                     0        8     131
6-24 months   MAL-ED           BANGLADESH                     10                     1        0     131
6-24 months   MAL-ED           BANGLADESH                     11                     0        0     131
6-24 months   MAL-ED           BANGLADESH                     11                     1        0     131
6-24 months   MAL-ED           BANGLADESH                     12                     0        9     131
6-24 months   MAL-ED           BANGLADESH                     12                     1        0     131
6-24 months   MAL-ED           BANGLADESH                     13                     0        0     131
6-24 months   MAL-ED           BANGLADESH                     13                     1        0     131
6-24 months   MAL-ED           BANGLADESH                     14                     0        0     131
6-24 months   MAL-ED           BANGLADESH                     14                     1        0     131
6-24 months   MAL-ED           BANGLADESH                     15                     0        0     131
6-24 months   MAL-ED           BANGLADESH                     15                     1        0     131
6-24 months   MAL-ED           BANGLADESH                     16                     0        2     131
6-24 months   MAL-ED           BANGLADESH                     16                     1        0     131
6-24 months   MAL-ED           BANGLADESH                     17                     0        0     131
6-24 months   MAL-ED           BANGLADESH                     17                     1        0     131
6-24 months   MAL-ED           BANGLADESH                     18                     0        0     131
6-24 months   MAL-ED           BANGLADESH                     18                     1        0     131
6-24 months   MAL-ED           BANGLADESH                     19                     0        0     131
6-24 months   MAL-ED           BANGLADESH                     19                     1        0     131
6-24 months   MAL-ED           BANGLADESH                     20                     0        0     131
6-24 months   MAL-ED           BANGLADESH                     20                     1        0     131
6-24 months   MAL-ED           BANGLADESH                     21                     0        0     131
6-24 months   MAL-ED           BANGLADESH                     21                     1        0     131
6-24 months   MAL-ED           BANGLADESH                     24                     0        0     131
6-24 months   MAL-ED           BANGLADESH                     24                     1        0     131
6-24 months   MAL-ED           BANGLADESH                     25                     0        0     131
6-24 months   MAL-ED           BANGLADESH                     25                     1        0     131
6-24 months   MAL-ED           BANGLADESH                     27                     0        0     131
6-24 months   MAL-ED           BANGLADESH                     27                     1        0     131
6-24 months   MAL-ED           INDIA                          0                      0        0     137
6-24 months   MAL-ED           INDIA                          0                      1        0     137
6-24 months   MAL-ED           INDIA                          1                      0        0     137
6-24 months   MAL-ED           INDIA                          1                      1        0     137
6-24 months   MAL-ED           INDIA                          2                      0        6     137
6-24 months   MAL-ED           INDIA                          2                      1        0     137
6-24 months   MAL-ED           INDIA                          3                      0        9     137
6-24 months   MAL-ED           INDIA                          3                      1        0     137
6-24 months   MAL-ED           INDIA                          4                      0        6     137
6-24 months   MAL-ED           INDIA                          4                      1        0     137
6-24 months   MAL-ED           INDIA                          5                      0       31     137
6-24 months   MAL-ED           INDIA                          5                      1        2     137
6-24 months   MAL-ED           INDIA                          6                      0        9     137
6-24 months   MAL-ED           INDIA                          6                      1        1     137
6-24 months   MAL-ED           INDIA                          7                      0       11     137
6-24 months   MAL-ED           INDIA                          7                      1        0     137
6-24 months   MAL-ED           INDIA                          8                      0       18     137
6-24 months   MAL-ED           INDIA                          8                      1        1     137
6-24 months   MAL-ED           INDIA                          9                      0       26     137
6-24 months   MAL-ED           INDIA                          9                      1        0     137
6-24 months   MAL-ED           INDIA                          10                     0        6     137
6-24 months   MAL-ED           INDIA                          10                     1        0     137
6-24 months   MAL-ED           INDIA                          11                     0        2     137
6-24 months   MAL-ED           INDIA                          11                     1        0     137
6-24 months   MAL-ED           INDIA                          12                     0        3     137
6-24 months   MAL-ED           INDIA                          12                     1        0     137
6-24 months   MAL-ED           INDIA                          13                     0        1     137
6-24 months   MAL-ED           INDIA                          13                     1        0     137
6-24 months   MAL-ED           INDIA                          14                     0        2     137
6-24 months   MAL-ED           INDIA                          14                     1        0     137
6-24 months   MAL-ED           INDIA                          15                     0        2     137
6-24 months   MAL-ED           INDIA                          15                     1        0     137
6-24 months   MAL-ED           INDIA                          16                     0        0     137
6-24 months   MAL-ED           INDIA                          16                     1        0     137
6-24 months   MAL-ED           INDIA                          17                     0        0     137
6-24 months   MAL-ED           INDIA                          17                     1        0     137
6-24 months   MAL-ED           INDIA                          18                     0        1     137
6-24 months   MAL-ED           INDIA                          18                     1        0     137
6-24 months   MAL-ED           INDIA                          19                     0        0     137
6-24 months   MAL-ED           INDIA                          19                     1        0     137
6-24 months   MAL-ED           INDIA                          20                     0        0     137
6-24 months   MAL-ED           INDIA                          20                     1        0     137
6-24 months   MAL-ED           INDIA                          21                     0        0     137
6-24 months   MAL-ED           INDIA                          21                     1        0     137
6-24 months   MAL-ED           INDIA                          24                     0        0     137
6-24 months   MAL-ED           INDIA                          24                     1        0     137
6-24 months   MAL-ED           INDIA                          25                     0        0     137
6-24 months   MAL-ED           INDIA                          25                     1        0     137
6-24 months   MAL-ED           INDIA                          27                     0        0     137
6-24 months   MAL-ED           INDIA                          27                     1        0     137
6-24 months   MAL-ED           NEPAL                          0                      0        0      94
6-24 months   MAL-ED           NEPAL                          0                      1        0      94
6-24 months   MAL-ED           NEPAL                          1                      0        0      94
6-24 months   MAL-ED           NEPAL                          1                      1        0      94
6-24 months   MAL-ED           NEPAL                          2                      0        4      94
6-24 months   MAL-ED           NEPAL                          2                      1        0      94
6-24 months   MAL-ED           NEPAL                          3                      0        3      94
6-24 months   MAL-ED           NEPAL                          3                      1        0      94
6-24 months   MAL-ED           NEPAL                          4                      0       10      94
6-24 months   MAL-ED           NEPAL                          4                      1        0      94
6-24 months   MAL-ED           NEPAL                          5                      0        6      94
6-24 months   MAL-ED           NEPAL                          5                      1        0      94
6-24 months   MAL-ED           NEPAL                          6                      0        4      94
6-24 months   MAL-ED           NEPAL                          6                      1        0      94
6-24 months   MAL-ED           NEPAL                          7                      0        8      94
6-24 months   MAL-ED           NEPAL                          7                      1        1      94
6-24 months   MAL-ED           NEPAL                          8                      0       11      94
6-24 months   MAL-ED           NEPAL                          8                      1        1      94
6-24 months   MAL-ED           NEPAL                          9                      0        7      94
6-24 months   MAL-ED           NEPAL                          9                      1        0      94
6-24 months   MAL-ED           NEPAL                          10                     0       25      94
6-24 months   MAL-ED           NEPAL                          10                     1        0      94
6-24 months   MAL-ED           NEPAL                          11                     0        1      94
6-24 months   MAL-ED           NEPAL                          11                     1        0      94
6-24 months   MAL-ED           NEPAL                          12                     0        7      94
6-24 months   MAL-ED           NEPAL                          12                     1        0      94
6-24 months   MAL-ED           NEPAL                          13                     0        0      94
6-24 months   MAL-ED           NEPAL                          13                     1        0      94
6-24 months   MAL-ED           NEPAL                          14                     0        0      94
6-24 months   MAL-ED           NEPAL                          14                     1        0      94
6-24 months   MAL-ED           NEPAL                          15                     0        1      94
6-24 months   MAL-ED           NEPAL                          15                     1        0      94
6-24 months   MAL-ED           NEPAL                          16                     0        1      94
6-24 months   MAL-ED           NEPAL                          16                     1        0      94
6-24 months   MAL-ED           NEPAL                          17                     0        3      94
6-24 months   MAL-ED           NEPAL                          17                     1        0      94
6-24 months   MAL-ED           NEPAL                          18                     0        1      94
6-24 months   MAL-ED           NEPAL                          18                     1        0      94
6-24 months   MAL-ED           NEPAL                          19                     0        0      94
6-24 months   MAL-ED           NEPAL                          19                     1        0      94
6-24 months   MAL-ED           NEPAL                          20                     0        0      94
6-24 months   MAL-ED           NEPAL                          20                     1        0      94
6-24 months   MAL-ED           NEPAL                          21                     0        0      94
6-24 months   MAL-ED           NEPAL                          21                     1        0      94
6-24 months   MAL-ED           NEPAL                          24                     0        0      94
6-24 months   MAL-ED           NEPAL                          24                     1        0      94
6-24 months   MAL-ED           NEPAL                          25                     0        0      94
6-24 months   MAL-ED           NEPAL                          25                     1        0      94
6-24 months   MAL-ED           NEPAL                          27                     0        0      94
6-24 months   MAL-ED           NEPAL                          27                     1        0      94
6-24 months   MAL-ED           PERU                           0                      0        1     223
6-24 months   MAL-ED           PERU                           0                      1        0     223
6-24 months   MAL-ED           PERU                           1                      0        1     223
6-24 months   MAL-ED           PERU                           1                      1        0     223
6-24 months   MAL-ED           PERU                           2                      0        0     223
6-24 months   MAL-ED           PERU                           2                      1        0     223
6-24 months   MAL-ED           PERU                           3                      0        8     223
6-24 months   MAL-ED           PERU                           3                      1        0     223
6-24 months   MAL-ED           PERU                           4                      0        4     223
6-24 months   MAL-ED           PERU                           4                      1        0     223
6-24 months   MAL-ED           PERU                           5                      0        7     223
6-24 months   MAL-ED           PERU                           5                      1        0     223
6-24 months   MAL-ED           PERU                           6                      0       23     223
6-24 months   MAL-ED           PERU                           6                      1        0     223
6-24 months   MAL-ED           PERU                           7                      0       16     223
6-24 months   MAL-ED           PERU                           7                      1        0     223
6-24 months   MAL-ED           PERU                           8                      0       20     223
6-24 months   MAL-ED           PERU                           8                      1        0     223
6-24 months   MAL-ED           PERU                           9                      0       26     223
6-24 months   MAL-ED           PERU                           9                      1        0     223
6-24 months   MAL-ED           PERU                           10                     0       11     223
6-24 months   MAL-ED           PERU                           10                     1        0     223
6-24 months   MAL-ED           PERU                           11                     0       84     223
6-24 months   MAL-ED           PERU                           11                     1        3     223
6-24 months   MAL-ED           PERU                           12                     0        1     223
6-24 months   MAL-ED           PERU                           12                     1        0     223
6-24 months   MAL-ED           PERU                           13                     0        4     223
6-24 months   MAL-ED           PERU                           13                     1        0     223
6-24 months   MAL-ED           PERU                           14                     0        4     223
6-24 months   MAL-ED           PERU                           14                     1        0     223
6-24 months   MAL-ED           PERU                           15                     0        1     223
6-24 months   MAL-ED           PERU                           15                     1        0     223
6-24 months   MAL-ED           PERU                           16                     0        1     223
6-24 months   MAL-ED           PERU                           16                     1        0     223
6-24 months   MAL-ED           PERU                           17                     0        1     223
6-24 months   MAL-ED           PERU                           17                     1        0     223
6-24 months   MAL-ED           PERU                           18                     0        5     223
6-24 months   MAL-ED           PERU                           18                     1        0     223
6-24 months   MAL-ED           PERU                           19                     0        0     223
6-24 months   MAL-ED           PERU                           19                     1        0     223
6-24 months   MAL-ED           PERU                           20                     0        2     223
6-24 months   MAL-ED           PERU                           20                     1        0     223
6-24 months   MAL-ED           PERU                           21                     0        0     223
6-24 months   MAL-ED           PERU                           21                     1        0     223
6-24 months   MAL-ED           PERU                           24                     0        0     223
6-24 months   MAL-ED           PERU                           24                     1        0     223
6-24 months   MAL-ED           PERU                           25                     0        0     223
6-24 months   MAL-ED           PERU                           25                     1        0     223
6-24 months   MAL-ED           PERU                           27                     0        0     223
6-24 months   MAL-ED           PERU                           27                     1        0     223
6-24 months   MAL-ED           SOUTH AFRICA                   0                      0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   0                      1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   1                      0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   1                      1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   2                      0        1      96
6-24 months   MAL-ED           SOUTH AFRICA                   2                      1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   3                      0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   3                      1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   4                      0        4      96
6-24 months   MAL-ED           SOUTH AFRICA                   4                      1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   5                      0        2      96
6-24 months   MAL-ED           SOUTH AFRICA                   5                      1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   6                      0        6      96
6-24 months   MAL-ED           SOUTH AFRICA                   6                      1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   7                      0        5      96
6-24 months   MAL-ED           SOUTH AFRICA                   7                      1        1      96
6-24 months   MAL-ED           SOUTH AFRICA                   8                      0       10      96
6-24 months   MAL-ED           SOUTH AFRICA                   8                      1        1      96
6-24 months   MAL-ED           SOUTH AFRICA                   9                      0        5      96
6-24 months   MAL-ED           SOUTH AFRICA                   9                      1        1      96
6-24 months   MAL-ED           SOUTH AFRICA                   10                     0        8      96
6-24 months   MAL-ED           SOUTH AFRICA                   10                     1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   11                     0       16      96
6-24 months   MAL-ED           SOUTH AFRICA                   11                     1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   12                     0       31      96
6-24 months   MAL-ED           SOUTH AFRICA                   12                     1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   13                     0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   13                     1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   14                     0        2      96
6-24 months   MAL-ED           SOUTH AFRICA                   14                     1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   15                     0        2      96
6-24 months   MAL-ED           SOUTH AFRICA                   15                     1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   16                     0        1      96
6-24 months   MAL-ED           SOUTH AFRICA                   16                     1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   17                     0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   17                     1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   18                     0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   18                     1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   19                     0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   19                     1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   20                     0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   20                     1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   21                     0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   21                     1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   24                     0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   24                     1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   25                     0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   25                     1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   27                     0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   27                     1        0      96
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0       13     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        1     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                      0       12     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                      1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                      0       16     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                      1        1     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                      0       12     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                      1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                      0       11     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                      1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                      0        8     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                      1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                      0      115     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                      1        2     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                      0        1     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                      1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                      0        2     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                      1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                     0        4     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                     1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                     0        2     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                     1        1     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                     0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                     1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                     0        1     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                     1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                     0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                     1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                     0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                     1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                     0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                     1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                     0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                     1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                     0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                     1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                     0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                     1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                     0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                     1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                     0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                     1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                     0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                     1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                     0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                     1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                     0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                     1        0     202
6-24 months   NIH-Crypto       BANGLADESH                     0                      0      156     730
6-24 months   NIH-Crypto       BANGLADESH                     0                      1       10     730
6-24 months   NIH-Crypto       BANGLADESH                     1                      0       19     730
6-24 months   NIH-Crypto       BANGLADESH                     1                      1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     2                      0       11     730
6-24 months   NIH-Crypto       BANGLADESH                     2                      1        1     730
6-24 months   NIH-Crypto       BANGLADESH                     3                      0       30     730
6-24 months   NIH-Crypto       BANGLADESH                     3                      1        2     730
6-24 months   NIH-Crypto       BANGLADESH                     4                      0       38     730
6-24 months   NIH-Crypto       BANGLADESH                     4                      1        1     730
6-24 months   NIH-Crypto       BANGLADESH                     5                      0       86     730
6-24 months   NIH-Crypto       BANGLADESH                     5                      1        1     730
6-24 months   NIH-Crypto       BANGLADESH                     6                      0       35     730
6-24 months   NIH-Crypto       BANGLADESH                     6                      1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     7                      0       53     730
6-24 months   NIH-Crypto       BANGLADESH                     7                      1        1     730
6-24 months   NIH-Crypto       BANGLADESH                     8                      0       85     730
6-24 months   NIH-Crypto       BANGLADESH                     8                      1        2     730
6-24 months   NIH-Crypto       BANGLADESH                     9                      0       82     730
6-24 months   NIH-Crypto       BANGLADESH                     9                      1        1     730
6-24 months   NIH-Crypto       BANGLADESH                     10                     0       50     730
6-24 months   NIH-Crypto       BANGLADESH                     10                     1        1     730
6-24 months   NIH-Crypto       BANGLADESH                     11                     0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     11                     1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     12                     0       34     730
6-24 months   NIH-Crypto       BANGLADESH                     12                     1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     13                     0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     13                     1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     14                     0        8     730
6-24 months   NIH-Crypto       BANGLADESH                     14                     1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     15                     0       16     730
6-24 months   NIH-Crypto       BANGLADESH                     15                     1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     16                     0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     16                     1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     17                     0        7     730
6-24 months   NIH-Crypto       BANGLADESH                     17                     1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     18                     0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     18                     1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     19                     0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     19                     1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     20                     0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     20                     1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     21                     0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     21                     1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     24                     0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     24                     1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     25                     0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     25                     1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     27                     0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     27                     1        0     730
6-24 months   PROBIT           BELARUS                        0                      0        0   16027
6-24 months   PROBIT           BELARUS                        0                      1        0   16027
6-24 months   PROBIT           BELARUS                        1                      0        0   16027
6-24 months   PROBIT           BELARUS                        1                      1        0   16027
6-24 months   PROBIT           BELARUS                        2                      0        0   16027
6-24 months   PROBIT           BELARUS                        2                      1        0   16027
6-24 months   PROBIT           BELARUS                        3                      0        0   16027
6-24 months   PROBIT           BELARUS                        3                      1        0   16027
6-24 months   PROBIT           BELARUS                        4                      0        0   16027
6-24 months   PROBIT           BELARUS                        4                      1        0   16027
6-24 months   PROBIT           BELARUS                        5                      0        0   16027
6-24 months   PROBIT           BELARUS                        5                      1        0   16027
6-24 months   PROBIT           BELARUS                        6                      0        0   16027
6-24 months   PROBIT           BELARUS                        6                      1        0   16027
6-24 months   PROBIT           BELARUS                        7                      0        0   16027
6-24 months   PROBIT           BELARUS                        7                      1        0   16027
6-24 months   PROBIT           BELARUS                        8                      0       25   16027
6-24 months   PROBIT           BELARUS                        8                      1        0   16027
6-24 months   PROBIT           BELARUS                        9                      0        0   16027
6-24 months   PROBIT           BELARUS                        9                      1        0   16027
6-24 months   PROBIT           BELARUS                        10                     0      360   16027
6-24 months   PROBIT           BELARUS                        10                     1        1   16027
6-24 months   PROBIT           BELARUS                        11                     0        0   16027
6-24 months   PROBIT           BELARUS                        11                     1        0   16027
6-24 months   PROBIT           BELARUS                        12                     0     5928   16027
6-24 months   PROBIT           BELARUS                        12                     1        7   16027
6-24 months   PROBIT           BELARUS                        13                     0     7066   16027
6-24 months   PROBIT           BELARUS                        13                     1        4   16027
6-24 months   PROBIT           BELARUS                        14                     0      430   16027
6-24 months   PROBIT           BELARUS                        14                     1        0   16027
6-24 months   PROBIT           BELARUS                        15                     0        0   16027
6-24 months   PROBIT           BELARUS                        15                     1        0   16027
6-24 months   PROBIT           BELARUS                        16                     0     2206   16027
6-24 months   PROBIT           BELARUS                        16                     1        0   16027
6-24 months   PROBIT           BELARUS                        17                     0        0   16027
6-24 months   PROBIT           BELARUS                        17                     1        0   16027
6-24 months   PROBIT           BELARUS                        18                     0        0   16027
6-24 months   PROBIT           BELARUS                        18                     1        0   16027
6-24 months   PROBIT           BELARUS                        19                     0        0   16027
6-24 months   PROBIT           BELARUS                        19                     1        0   16027
6-24 months   PROBIT           BELARUS                        20                     0        0   16027
6-24 months   PROBIT           BELARUS                        20                     1        0   16027
6-24 months   PROBIT           BELARUS                        21                     0        0   16027
6-24 months   PROBIT           BELARUS                        21                     1        0   16027
6-24 months   PROBIT           BELARUS                        24                     0        0   16027
6-24 months   PROBIT           BELARUS                        24                     1        0   16027
6-24 months   PROBIT           BELARUS                        25                     0        0   16027
6-24 months   PROBIT           BELARUS                        25                     1        0   16027
6-24 months   PROBIT           BELARUS                        27                     0        0   16027
6-24 months   PROBIT           BELARUS                        27                     1        0   16027
6-24 months   PROVIDE          BANGLADESH                     0                      0      169     615
6-24 months   PROVIDE          BANGLADESH                     0                      1        9     615
6-24 months   PROVIDE          BANGLADESH                     1                      0       13     615
6-24 months   PROVIDE          BANGLADESH                     1                      1        0     615
6-24 months   PROVIDE          BANGLADESH                     2                      0       16     615
6-24 months   PROVIDE          BANGLADESH                     2                      1        1     615
6-24 months   PROVIDE          BANGLADESH                     3                      0       23     615
6-24 months   PROVIDE          BANGLADESH                     3                      1        0     615
6-24 months   PROVIDE          BANGLADESH                     4                      0       42     615
6-24 months   PROVIDE          BANGLADESH                     4                      1        1     615
6-24 months   PROVIDE          BANGLADESH                     5                      0       64     615
6-24 months   PROVIDE          BANGLADESH                     5                      1        1     615
6-24 months   PROVIDE          BANGLADESH                     6                      0       27     615
6-24 months   PROVIDE          BANGLADESH                     6                      1        0     615
6-24 months   PROVIDE          BANGLADESH                     7                      0       35     615
6-24 months   PROVIDE          BANGLADESH                     7                      1        0     615
6-24 months   PROVIDE          BANGLADESH                     8                      0       59     615
6-24 months   PROVIDE          BANGLADESH                     8                      1        0     615
6-24 months   PROVIDE          BANGLADESH                     9                      0       57     615
6-24 months   PROVIDE          BANGLADESH                     9                      1        1     615
6-24 months   PROVIDE          BANGLADESH                     10                     0       34     615
6-24 months   PROVIDE          BANGLADESH                     10                     1        0     615
6-24 months   PROVIDE          BANGLADESH                     11                     0       25     615
6-24 months   PROVIDE          BANGLADESH                     11                     1        0     615
6-24 months   PROVIDE          BANGLADESH                     12                     0        3     615
6-24 months   PROVIDE          BANGLADESH                     12                     1        0     615
6-24 months   PROVIDE          BANGLADESH                     13                     0        0     615
6-24 months   PROVIDE          BANGLADESH                     13                     1        0     615
6-24 months   PROVIDE          BANGLADESH                     14                     0       18     615
6-24 months   PROVIDE          BANGLADESH                     14                     1        0     615
6-24 months   PROVIDE          BANGLADESH                     15                     0        8     615
6-24 months   PROVIDE          BANGLADESH                     15                     1        0     615
6-24 months   PROVIDE          BANGLADESH                     16                     0        8     615
6-24 months   PROVIDE          BANGLADESH                     16                     1        0     615
6-24 months   PROVIDE          BANGLADESH                     17                     0        0     615
6-24 months   PROVIDE          BANGLADESH                     17                     1        0     615
6-24 months   PROVIDE          BANGLADESH                     18                     0        0     615
6-24 months   PROVIDE          BANGLADESH                     18                     1        0     615
6-24 months   PROVIDE          BANGLADESH                     19                     0        1     615
6-24 months   PROVIDE          BANGLADESH                     19                     1        0     615
6-24 months   PROVIDE          BANGLADESH                     20                     0        0     615
6-24 months   PROVIDE          BANGLADESH                     20                     1        0     615
6-24 months   PROVIDE          BANGLADESH                     21                     0        0     615
6-24 months   PROVIDE          BANGLADESH                     21                     1        0     615
6-24 months   PROVIDE          BANGLADESH                     24                     0        0     615
6-24 months   PROVIDE          BANGLADESH                     24                     1        0     615
6-24 months   PROVIDE          BANGLADESH                     25                     0        0     615
6-24 months   PROVIDE          BANGLADESH                     25                     1        0     615
6-24 months   PROVIDE          BANGLADESH                     27                     0        0     615
6-24 months   PROVIDE          BANGLADESH                     27                     1        0     615
6-24 months   SAS-CompFeed     INDIA                          0                      0      139    1386
6-24 months   SAS-CompFeed     INDIA                          0                      1       22    1386
6-24 months   SAS-CompFeed     INDIA                          1                      0        0    1386
6-24 months   SAS-CompFeed     INDIA                          1                      1        0    1386
6-24 months   SAS-CompFeed     INDIA                          2                      0        3    1386
6-24 months   SAS-CompFeed     INDIA                          2                      1        2    1386
6-24 months   SAS-CompFeed     INDIA                          3                      0        9    1386
6-24 months   SAS-CompFeed     INDIA                          3                      1        3    1386
6-24 months   SAS-CompFeed     INDIA                          4                      0       20    1386
6-24 months   SAS-CompFeed     INDIA                          4                      1        3    1386
6-24 months   SAS-CompFeed     INDIA                          5                      0       75    1386
6-24 months   SAS-CompFeed     INDIA                          5                      1        8    1386
6-24 months   SAS-CompFeed     INDIA                          6                      0       22    1386
6-24 months   SAS-CompFeed     INDIA                          6                      1        5    1386
6-24 months   SAS-CompFeed     INDIA                          7                      0       97    1386
6-24 months   SAS-CompFeed     INDIA                          7                      1        8    1386
6-24 months   SAS-CompFeed     INDIA                          8                      0      134    1386
6-24 months   SAS-CompFeed     INDIA                          8                      1       22    1386
6-24 months   SAS-CompFeed     INDIA                          9                      0       80    1386
6-24 months   SAS-CompFeed     INDIA                          9                      1       10    1386
6-24 months   SAS-CompFeed     INDIA                          10                     0      322    1386
6-24 months   SAS-CompFeed     INDIA                          10                     1       32    1386
6-24 months   SAS-CompFeed     INDIA                          11                     0       37    1386
6-24 months   SAS-CompFeed     INDIA                          11                     1        2    1386
6-24 months   SAS-CompFeed     INDIA                          12                     0      201    1386
6-24 months   SAS-CompFeed     INDIA                          12                     1       14    1386
6-24 months   SAS-CompFeed     INDIA                          13                     0        6    1386
6-24 months   SAS-CompFeed     INDIA                          13                     1        1    1386
6-24 months   SAS-CompFeed     INDIA                          14                     0       17    1386
6-24 months   SAS-CompFeed     INDIA                          14                     1        0    1386
6-24 months   SAS-CompFeed     INDIA                          15                     0       60    1386
6-24 months   SAS-CompFeed     INDIA                          15                     1        2    1386
6-24 months   SAS-CompFeed     INDIA                          16                     0       10    1386
6-24 months   SAS-CompFeed     INDIA                          16                     1        0    1386
6-24 months   SAS-CompFeed     INDIA                          17                     0       15    1386
6-24 months   SAS-CompFeed     INDIA                          17                     1        0    1386
6-24 months   SAS-CompFeed     INDIA                          18                     0        3    1386
6-24 months   SAS-CompFeed     INDIA                          18                     1        0    1386
6-24 months   SAS-CompFeed     INDIA                          19                     0        1    1386
6-24 months   SAS-CompFeed     INDIA                          19                     1        0    1386
6-24 months   SAS-CompFeed     INDIA                          20                     0        1    1386
6-24 months   SAS-CompFeed     INDIA                          20                     1        0    1386
6-24 months   SAS-CompFeed     INDIA                          21                     0        0    1386
6-24 months   SAS-CompFeed     INDIA                          21                     1        0    1386
6-24 months   SAS-CompFeed     INDIA                          24                     0        0    1386
6-24 months   SAS-CompFeed     INDIA                          24                     1        0    1386
6-24 months   SAS-CompFeed     INDIA                          25                     0        0    1386
6-24 months   SAS-CompFeed     INDIA                          25                     1        0    1386
6-24 months   SAS-CompFeed     INDIA                          27                     0        0    1386
6-24 months   SAS-CompFeed     INDIA                          27                     1        0    1386
6-24 months   SAS-FoodSuppl    INDIA                          0                      0      123     402
6-24 months   SAS-FoodSuppl    INDIA                          0                      1       17     402
6-24 months   SAS-FoodSuppl    INDIA                          1                      0        1     402
6-24 months   SAS-FoodSuppl    INDIA                          1                      1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          2                      0        7     402
6-24 months   SAS-FoodSuppl    INDIA                          2                      1        3     402
6-24 months   SAS-FoodSuppl    INDIA                          3                      0        5     402
6-24 months   SAS-FoodSuppl    INDIA                          3                      1        2     402
6-24 months   SAS-FoodSuppl    INDIA                          4                      0        8     402
6-24 months   SAS-FoodSuppl    INDIA                          4                      1        2     402
6-24 months   SAS-FoodSuppl    INDIA                          5                      0       45     402
6-24 months   SAS-FoodSuppl    INDIA                          5                      1        8     402
6-24 months   SAS-FoodSuppl    INDIA                          6                      0        9     402
6-24 months   SAS-FoodSuppl    INDIA                          6                      1        3     402
6-24 months   SAS-FoodSuppl    INDIA                          7                      0       14     402
6-24 months   SAS-FoodSuppl    INDIA                          7                      1        1     402
6-24 months   SAS-FoodSuppl    INDIA                          8                      0       43     402
6-24 months   SAS-FoodSuppl    INDIA                          8                      1        4     402
6-24 months   SAS-FoodSuppl    INDIA                          9                      0       23     402
6-24 months   SAS-FoodSuppl    INDIA                          9                      1        3     402
6-24 months   SAS-FoodSuppl    INDIA                          10                     0       52     402
6-24 months   SAS-FoodSuppl    INDIA                          10                     1        6     402
6-24 months   SAS-FoodSuppl    INDIA                          11                     0        2     402
6-24 months   SAS-FoodSuppl    INDIA                          11                     1        1     402
6-24 months   SAS-FoodSuppl    INDIA                          12                     0       10     402
6-24 months   SAS-FoodSuppl    INDIA                          12                     1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          13                     0        1     402
6-24 months   SAS-FoodSuppl    INDIA                          13                     1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          14                     0        5     402
6-24 months   SAS-FoodSuppl    INDIA                          14                     1        1     402
6-24 months   SAS-FoodSuppl    INDIA                          15                     0        3     402
6-24 months   SAS-FoodSuppl    INDIA                          15                     1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          16                     0        0     402
6-24 months   SAS-FoodSuppl    INDIA                          16                     1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          17                     0        0     402
6-24 months   SAS-FoodSuppl    INDIA                          17                     1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          18                     0        0     402
6-24 months   SAS-FoodSuppl    INDIA                          18                     1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          19                     0        0     402
6-24 months   SAS-FoodSuppl    INDIA                          19                     1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          20                     0        0     402
6-24 months   SAS-FoodSuppl    INDIA                          20                     1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          21                     0        0     402
6-24 months   SAS-FoodSuppl    INDIA                          21                     1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          24                     0        0     402
6-24 months   SAS-FoodSuppl    INDIA                          24                     1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          25                     0        0     402
6-24 months   SAS-FoodSuppl    INDIA                          25                     1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          27                     0        0     402
6-24 months   SAS-FoodSuppl    INDIA                          27                     1        0     402
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      0        4    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      0        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      0        5    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      0        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      0        1    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      0     1015    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      1       47    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      0        8    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      0       43    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      1        4    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     0       22    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     1        1    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     0      464    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     1       20    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     0       15    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                     0       97    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                     1        3    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                     0       12    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                     1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                     0       20    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                     1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                     0       24    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                     1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                     0       19    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                     1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                     0        3    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                     1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                     0        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                     1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                     0        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                     1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                     0        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                     1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                     0       12    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                     1        2    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                     0        1    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                     1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                     0      162    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                     1        5    2009
6-24 months   ZVITAMBO         ZIMBABWE                       0                      0       44   10504
6-24 months   ZVITAMBO         ZIMBABWE                       0                      1        3   10504
6-24 months   ZVITAMBO         ZIMBABWE                       1                      0        2   10504
6-24 months   ZVITAMBO         ZIMBABWE                       1                      1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       2                      0        5   10504
6-24 months   ZVITAMBO         ZIMBABWE                       2                      1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       3                      0       11   10504
6-24 months   ZVITAMBO         ZIMBABWE                       3                      1        1   10504
6-24 months   ZVITAMBO         ZIMBABWE                       4                      0       15   10504
6-24 months   ZVITAMBO         ZIMBABWE                       4                      1        1   10504
6-24 months   ZVITAMBO         ZIMBABWE                       5                      0       25   10504
6-24 months   ZVITAMBO         ZIMBABWE                       5                      1        3   10504
6-24 months   ZVITAMBO         ZIMBABWE                       6                      0       32   10504
6-24 months   ZVITAMBO         ZIMBABWE                       6                      1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       7                      0      602   10504
6-24 months   ZVITAMBO         ZIMBABWE                       7                      1       26   10504
6-24 months   ZVITAMBO         ZIMBABWE                       8                      0       87   10504
6-24 months   ZVITAMBO         ZIMBABWE                       8                      1        2   10504
6-24 months   ZVITAMBO         ZIMBABWE                       9                      0      667   10504
6-24 months   ZVITAMBO         ZIMBABWE                       9                      1       29   10504
6-24 months   ZVITAMBO         ZIMBABWE                       10                     0      239   10504
6-24 months   ZVITAMBO         ZIMBABWE                       10                     1       19   10504
6-24 months   ZVITAMBO         ZIMBABWE                       11                     0     7734   10504
6-24 months   ZVITAMBO         ZIMBABWE                       11                     1      240   10504
6-24 months   ZVITAMBO         ZIMBABWE                       12                     0       45   10504
6-24 months   ZVITAMBO         ZIMBABWE                       12                     1        2   10504
6-24 months   ZVITAMBO         ZIMBABWE                       13                     0      655   10504
6-24 months   ZVITAMBO         ZIMBABWE                       13                     1       15   10504
6-24 months   ZVITAMBO         ZIMBABWE                       14                     0        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       14                     1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       15                     0        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       15                     1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       16                     0        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       16                     1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       17                     0        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       17                     1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       18                     0        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       18                     1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       19                     0        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       19                     1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       20                     0        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       20                     1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       21                     0        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       21                     1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       24                     0        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       24                     1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       25                     0        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       25                     1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       27                     0        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       27                     1        0   10504


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
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
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


ALL STRATA DROPPED. JOB FINISHED
















