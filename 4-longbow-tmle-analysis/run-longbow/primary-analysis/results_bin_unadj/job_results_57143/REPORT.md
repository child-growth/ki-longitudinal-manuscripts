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

**Outcome Variable:** ever_co

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

agecat        studyid          country                        feducyrs    ever_co   n_cell       n
------------  ---------------  -----------------------------  ---------  --------  -------  ------
0-24 months   COHORTS          GUATEMALA                      0                 0      497    1234
0-24 months   COHORTS          GUATEMALA                      0                 1       61    1234
0-24 months   COHORTS          GUATEMALA                      1                 0       57    1234
0-24 months   COHORTS          GUATEMALA                      1                 1       10    1234
0-24 months   COHORTS          GUATEMALA                      2                 0      194    1234
0-24 months   COHORTS          GUATEMALA                      2                 1       22    1234
0-24 months   COHORTS          GUATEMALA                      3                 0      144    1234
0-24 months   COHORTS          GUATEMALA                      3                 1       18    1234
0-24 months   COHORTS          GUATEMALA                      4                 0       66    1234
0-24 months   COHORTS          GUATEMALA                      4                 1       13    1234
0-24 months   COHORTS          GUATEMALA                      5                 0       27    1234
0-24 months   COHORTS          GUATEMALA                      5                 1        4    1234
0-24 months   COHORTS          GUATEMALA                      6                 0       95    1234
0-24 months   COHORTS          GUATEMALA                      6                 1       11    1234
0-24 months   COHORTS          GUATEMALA                      7                 0        4    1234
0-24 months   COHORTS          GUATEMALA                      7                 1        0    1234
0-24 months   COHORTS          GUATEMALA                      8                 0        2    1234
0-24 months   COHORTS          GUATEMALA                      8                 1        0    1234
0-24 months   COHORTS          GUATEMALA                      9                 0        1    1234
0-24 months   COHORTS          GUATEMALA                      9                 1        0    1234
0-24 months   COHORTS          GUATEMALA                      10                0        1    1234
0-24 months   COHORTS          GUATEMALA                      10                1        0    1234
0-24 months   COHORTS          GUATEMALA                      11                0        0    1234
0-24 months   COHORTS          GUATEMALA                      11                1        0    1234
0-24 months   COHORTS          GUATEMALA                      12                0        5    1234
0-24 months   COHORTS          GUATEMALA                      12                1        0    1234
0-24 months   COHORTS          GUATEMALA                      13                0        0    1234
0-24 months   COHORTS          GUATEMALA                      13                1        0    1234
0-24 months   COHORTS          GUATEMALA                      14                0        1    1234
0-24 months   COHORTS          GUATEMALA                      14                1        0    1234
0-24 months   COHORTS          GUATEMALA                      15                0        1    1234
0-24 months   COHORTS          GUATEMALA                      15                1        0    1234
0-24 months   COHORTS          GUATEMALA                      16                0        0    1234
0-24 months   COHORTS          GUATEMALA                      16                1        0    1234
0-24 months   COHORTS          GUATEMALA                      17                0        0    1234
0-24 months   COHORTS          GUATEMALA                      17                1        0    1234
0-24 months   COHORTS          GUATEMALA                      18                0        0    1234
0-24 months   COHORTS          GUATEMALA                      18                1        0    1234
0-24 months   COHORTS          GUATEMALA                      19                0        0    1234
0-24 months   COHORTS          GUATEMALA                      19                1        0    1234
0-24 months   COHORTS          GUATEMALA                      20                0        0    1234
0-24 months   COHORTS          GUATEMALA                      20                1        0    1234
0-24 months   COHORTS          GUATEMALA                      21                0        0    1234
0-24 months   COHORTS          GUATEMALA                      21                1        0    1234
0-24 months   COHORTS          GUATEMALA                      24                0        0    1234
0-24 months   COHORTS          GUATEMALA                      24                1        0    1234
0-24 months   COHORTS          GUATEMALA                      25                0        0    1234
0-24 months   COHORTS          GUATEMALA                      25                1        0    1234
0-24 months   COHORTS          GUATEMALA                      27                0        0    1234
0-24 months   COHORTS          GUATEMALA                      27                1        0    1234
0-24 months   COHORTS          INDIA                          0                 0      100    1447
0-24 months   COHORTS          INDIA                          0                 1       24    1447
0-24 months   COHORTS          INDIA                          1                 0        0    1447
0-24 months   COHORTS          INDIA                          1                 1        0    1447
0-24 months   COHORTS          INDIA                          2                 0        0    1447
0-24 months   COHORTS          INDIA                          2                 1        0    1447
0-24 months   COHORTS          INDIA                          3                 0      122    1447
0-24 months   COHORTS          INDIA                          3                 1       12    1447
0-24 months   COHORTS          INDIA                          4                 0        0    1447
0-24 months   COHORTS          INDIA                          4                 1        0    1447
0-24 months   COHORTS          INDIA                          5                 0        0    1447
0-24 months   COHORTS          INDIA                          5                 1        0    1447
0-24 months   COHORTS          INDIA                          6                 0        0    1447
0-24 months   COHORTS          INDIA                          6                 1        0    1447
0-24 months   COHORTS          INDIA                          7                 0        0    1447
0-24 months   COHORTS          INDIA                          7                 1        0    1447
0-24 months   COHORTS          INDIA                          8                 0      190    1447
0-24 months   COHORTS          INDIA                          8                 1       24    1447
0-24 months   COHORTS          INDIA                          9                 0        0    1447
0-24 months   COHORTS          INDIA                          9                 1        0    1447
0-24 months   COHORTS          INDIA                          10                0        0    1447
0-24 months   COHORTS          INDIA                          10                1        0    1447
0-24 months   COHORTS          INDIA                          11                0        0    1447
0-24 months   COHORTS          INDIA                          11                1        0    1447
0-24 months   COHORTS          INDIA                          12                0      388    1447
0-24 months   COHORTS          INDIA                          12                1       20    1447
0-24 months   COHORTS          INDIA                          13                0        0    1447
0-24 months   COHORTS          INDIA                          13                1        0    1447
0-24 months   COHORTS          INDIA                          14                0      148    1447
0-24 months   COHORTS          INDIA                          14                1       10    1447
0-24 months   COHORTS          INDIA                          15                0      269    1447
0-24 months   COHORTS          INDIA                          15                1       14    1447
0-24 months   COHORTS          INDIA                          16                0        0    1447
0-24 months   COHORTS          INDIA                          16                1        0    1447
0-24 months   COHORTS          INDIA                          17                0      121    1447
0-24 months   COHORTS          INDIA                          17                1        5    1447
0-24 months   COHORTS          INDIA                          18                0        0    1447
0-24 months   COHORTS          INDIA                          18                1        0    1447
0-24 months   COHORTS          INDIA                          19                0        0    1447
0-24 months   COHORTS          INDIA                          19                1        0    1447
0-24 months   COHORTS          INDIA                          20                0        0    1447
0-24 months   COHORTS          INDIA                          20                1        0    1447
0-24 months   COHORTS          INDIA                          21                0        0    1447
0-24 months   COHORTS          INDIA                          21                1        0    1447
0-24 months   COHORTS          INDIA                          24                0        0    1447
0-24 months   COHORTS          INDIA                          24                1        0    1447
0-24 months   COHORTS          INDIA                          25                0        0    1447
0-24 months   COHORTS          INDIA                          25                1        0    1447
0-24 months   COHORTS          INDIA                          27                0        0    1447
0-24 months   COHORTS          INDIA                          27                1        0    1447
0-24 months   COHORTS          PHILIPPINES                    0                 0       40    2868
0-24 months   COHORTS          PHILIPPINES                    0                 1       20    2868
0-24 months   COHORTS          PHILIPPINES                    1                 0       25    2868
0-24 months   COHORTS          PHILIPPINES                    1                 1       11    2868
0-24 months   COHORTS          PHILIPPINES                    2                 0       70    2868
0-24 months   COHORTS          PHILIPPINES                    2                 1       26    2868
0-24 months   COHORTS          PHILIPPINES                    3                 0      128    2868
0-24 months   COHORTS          PHILIPPINES                    3                 1       40    2868
0-24 months   COHORTS          PHILIPPINES                    4                 0      201    2868
0-24 months   COHORTS          PHILIPPINES                    4                 1       61    2868
0-24 months   COHORTS          PHILIPPINES                    5                 0      155    2868
0-24 months   COHORTS          PHILIPPINES                    5                 1       49    2868
0-24 months   COHORTS          PHILIPPINES                    6                 0      501    2868
0-24 months   COHORTS          PHILIPPINES                    6                 1      140    2868
0-24 months   COHORTS          PHILIPPINES                    7                 0      118    2868
0-24 months   COHORTS          PHILIPPINES                    7                 1       31    2868
0-24 months   COHORTS          PHILIPPINES                    8                 0      184    2868
0-24 months   COHORTS          PHILIPPINES                    8                 1       40    2868
0-24 months   COHORTS          PHILIPPINES                    9                 0      169    2868
0-24 months   COHORTS          PHILIPPINES                    9                 1       27    2868
0-24 months   COHORTS          PHILIPPINES                    10                0      286    2868
0-24 months   COHORTS          PHILIPPINES                    10                1       44    2868
0-24 months   COHORTS          PHILIPPINES                    11                0       54    2868
0-24 months   COHORTS          PHILIPPINES                    11                1       11    2868
0-24 months   COHORTS          PHILIPPINES                    12                0      166    2868
0-24 months   COHORTS          PHILIPPINES                    12                1       14    2868
0-24 months   COHORTS          PHILIPPINES                    13                0       57    2868
0-24 months   COHORTS          PHILIPPINES                    13                1        5    2868
0-24 months   COHORTS          PHILIPPINES                    14                0      138    2868
0-24 months   COHORTS          PHILIPPINES                    14                1        9    2868
0-24 months   COHORTS          PHILIPPINES                    15                0       34    2868
0-24 months   COHORTS          PHILIPPINES                    15                1        2    2868
0-24 months   COHORTS          PHILIPPINES                    16                0        8    2868
0-24 months   COHORTS          PHILIPPINES                    16                1        0    2868
0-24 months   COHORTS          PHILIPPINES                    17                0        2    2868
0-24 months   COHORTS          PHILIPPINES                    17                1        0    2868
0-24 months   COHORTS          PHILIPPINES                    18                0        2    2868
0-24 months   COHORTS          PHILIPPINES                    18                1        0    2868
0-24 months   COHORTS          PHILIPPINES                    19                0        0    2868
0-24 months   COHORTS          PHILIPPINES                    19                1        0    2868
0-24 months   COHORTS          PHILIPPINES                    20                0        0    2868
0-24 months   COHORTS          PHILIPPINES                    20                1        0    2868
0-24 months   COHORTS          PHILIPPINES                    21                0        0    2868
0-24 months   COHORTS          PHILIPPINES                    21                1        0    2868
0-24 months   COHORTS          PHILIPPINES                    24                0        0    2868
0-24 months   COHORTS          PHILIPPINES                    24                1        0    2868
0-24 months   COHORTS          PHILIPPINES                    25                0        0    2868
0-24 months   COHORTS          PHILIPPINES                    25                1        0    2868
0-24 months   COHORTS          PHILIPPINES                    27                0        0    2868
0-24 months   COHORTS          PHILIPPINES                    27                1        0    2868
0-24 months   GMS-Nepal        NEPAL                          0                 0      197     684
0-24 months   GMS-Nepal        NEPAL                          0                 1       95     684
0-24 months   GMS-Nepal        NEPAL                          1                 0        0     684
0-24 months   GMS-Nepal        NEPAL                          1                 1        0     684
0-24 months   GMS-Nepal        NEPAL                          2                 0        0     684
0-24 months   GMS-Nepal        NEPAL                          2                 1        0     684
0-24 months   GMS-Nepal        NEPAL                          3                 0        0     684
0-24 months   GMS-Nepal        NEPAL                          3                 1        0     684
0-24 months   GMS-Nepal        NEPAL                          4                 0        0     684
0-24 months   GMS-Nepal        NEPAL                          4                 1        0     684
0-24 months   GMS-Nepal        NEPAL                          5                 0       79     684
0-24 months   GMS-Nepal        NEPAL                          5                 1       31     684
0-24 months   GMS-Nepal        NEPAL                          6                 0        0     684
0-24 months   GMS-Nepal        NEPAL                          6                 1        0     684
0-24 months   GMS-Nepal        NEPAL                          7                 0        0     684
0-24 months   GMS-Nepal        NEPAL                          7                 1        0     684
0-24 months   GMS-Nepal        NEPAL                          8                 0       81     684
0-24 months   GMS-Nepal        NEPAL                          8                 1       32     684
0-24 months   GMS-Nepal        NEPAL                          9                 0        0     684
0-24 months   GMS-Nepal        NEPAL                          9                 1        0     684
0-24 months   GMS-Nepal        NEPAL                          10                0       94     684
0-24 months   GMS-Nepal        NEPAL                          10                1       36     684
0-24 months   GMS-Nepal        NEPAL                          11                0        0     684
0-24 months   GMS-Nepal        NEPAL                          11                1        0     684
0-24 months   GMS-Nepal        NEPAL                          12                0       31     684
0-24 months   GMS-Nepal        NEPAL                          12                1        8     684
0-24 months   GMS-Nepal        NEPAL                          13                0        0     684
0-24 months   GMS-Nepal        NEPAL                          13                1        0     684
0-24 months   GMS-Nepal        NEPAL                          14                0        0     684
0-24 months   GMS-Nepal        NEPAL                          14                1        0     684
0-24 months   GMS-Nepal        NEPAL                          15                0        0     684
0-24 months   GMS-Nepal        NEPAL                          15                1        0     684
0-24 months   GMS-Nepal        NEPAL                          16                0        0     684
0-24 months   GMS-Nepal        NEPAL                          16                1        0     684
0-24 months   GMS-Nepal        NEPAL                          17                0        0     684
0-24 months   GMS-Nepal        NEPAL                          17                1        0     684
0-24 months   GMS-Nepal        NEPAL                          18                0        0     684
0-24 months   GMS-Nepal        NEPAL                          18                1        0     684
0-24 months   GMS-Nepal        NEPAL                          19                0        0     684
0-24 months   GMS-Nepal        NEPAL                          19                1        0     684
0-24 months   GMS-Nepal        NEPAL                          20                0        0     684
0-24 months   GMS-Nepal        NEPAL                          20                1        0     684
0-24 months   GMS-Nepal        NEPAL                          21                0        0     684
0-24 months   GMS-Nepal        NEPAL                          21                1        0     684
0-24 months   GMS-Nepal        NEPAL                          24                0        0     684
0-24 months   GMS-Nepal        NEPAL                          24                1        0     684
0-24 months   GMS-Nepal        NEPAL                          25                0        0     684
0-24 months   GMS-Nepal        NEPAL                          25                1        0     684
0-24 months   GMS-Nepal        NEPAL                          27                0        0     684
0-24 months   GMS-Nepal        NEPAL                          27                1        0     684
0-24 months   LCNI-5           MALAWI                         0                 0      274     813
0-24 months   LCNI-5           MALAWI                         0                 1       17     813
0-24 months   LCNI-5           MALAWI                         1                 0       11     813
0-24 months   LCNI-5           MALAWI                         1                 1        0     813
0-24 months   LCNI-5           MALAWI                         2                 0       30     813
0-24 months   LCNI-5           MALAWI                         2                 1        2     813
0-24 months   LCNI-5           MALAWI                         3                 0       37     813
0-24 months   LCNI-5           MALAWI                         3                 1        2     813
0-24 months   LCNI-5           MALAWI                         4                 0       56     813
0-24 months   LCNI-5           MALAWI                         4                 1        3     813
0-24 months   LCNI-5           MALAWI                         5                 0       59     813
0-24 months   LCNI-5           MALAWI                         5                 1        2     813
0-24 months   LCNI-5           MALAWI                         6                 0       66     813
0-24 months   LCNI-5           MALAWI                         6                 1        3     813
0-24 months   LCNI-5           MALAWI                         7                 0       64     813
0-24 months   LCNI-5           MALAWI                         7                 1        4     813
0-24 months   LCNI-5           MALAWI                         8                 0       85     813
0-24 months   LCNI-5           MALAWI                         8                 1        6     813
0-24 months   LCNI-5           MALAWI                         9                 0       12     813
0-24 months   LCNI-5           MALAWI                         9                 1        0     813
0-24 months   LCNI-5           MALAWI                         10                0       16     813
0-24 months   LCNI-5           MALAWI                         10                1        0     813
0-24 months   LCNI-5           MALAWI                         11                0        7     813
0-24 months   LCNI-5           MALAWI                         11                1        0     813
0-24 months   LCNI-5           MALAWI                         12                0       50     813
0-24 months   LCNI-5           MALAWI                         12                1        2     813
0-24 months   LCNI-5           MALAWI                         13                0        1     813
0-24 months   LCNI-5           MALAWI                         13                1        0     813
0-24 months   LCNI-5           MALAWI                         14                0        3     813
0-24 months   LCNI-5           MALAWI                         14                1        0     813
0-24 months   LCNI-5           MALAWI                         15                0        0     813
0-24 months   LCNI-5           MALAWI                         15                1        0     813
0-24 months   LCNI-5           MALAWI                         16                0        1     813
0-24 months   LCNI-5           MALAWI                         16                1        0     813
0-24 months   LCNI-5           MALAWI                         17                0        0     813
0-24 months   LCNI-5           MALAWI                         17                1        0     813
0-24 months   LCNI-5           MALAWI                         18                0        0     813
0-24 months   LCNI-5           MALAWI                         18                1        0     813
0-24 months   LCNI-5           MALAWI                         19                0        0     813
0-24 months   LCNI-5           MALAWI                         19                1        0     813
0-24 months   LCNI-5           MALAWI                         20                0        0     813
0-24 months   LCNI-5           MALAWI                         20                1        0     813
0-24 months   LCNI-5           MALAWI                         21                0        0     813
0-24 months   LCNI-5           MALAWI                         21                1        0     813
0-24 months   LCNI-5           MALAWI                         24                0        0     813
0-24 months   LCNI-5           MALAWI                         24                1        0     813
0-24 months   LCNI-5           MALAWI                         25                0        0     813
0-24 months   LCNI-5           MALAWI                         25                1        0     813
0-24 months   LCNI-5           MALAWI                         27                0        0     813
0-24 months   LCNI-5           MALAWI                         27                1        0     813
0-24 months   MAL-ED           BANGLADESH                     0                 0        0     147
0-24 months   MAL-ED           BANGLADESH                     0                 1        0     147
0-24 months   MAL-ED           BANGLADESH                     1                 0        6     147
0-24 months   MAL-ED           BANGLADESH                     1                 1        1     147
0-24 months   MAL-ED           BANGLADESH                     2                 0       12     147
0-24 months   MAL-ED           BANGLADESH                     2                 1        0     147
0-24 months   MAL-ED           BANGLADESH                     3                 0        8     147
0-24 months   MAL-ED           BANGLADESH                     3                 1        4     147
0-24 months   MAL-ED           BANGLADESH                     4                 0        7     147
0-24 months   MAL-ED           BANGLADESH                     4                 1        1     147
0-24 months   MAL-ED           BANGLADESH                     5                 0       29     147
0-24 months   MAL-ED           BANGLADESH                     5                 1        7     147
0-24 months   MAL-ED           BANGLADESH                     6                 0        7     147
0-24 months   MAL-ED           BANGLADESH                     6                 1        1     147
0-24 months   MAL-ED           BANGLADESH                     7                 0        9     147
0-24 months   MAL-ED           BANGLADESH                     7                 1        1     147
0-24 months   MAL-ED           BANGLADESH                     8                 0       17     147
0-24 months   MAL-ED           BANGLADESH                     8                 1        1     147
0-24 months   MAL-ED           BANGLADESH                     9                 0       12     147
0-24 months   MAL-ED           BANGLADESH                     9                 1        2     147
0-24 months   MAL-ED           BANGLADESH                     10                0       10     147
0-24 months   MAL-ED           BANGLADESH                     10                1        0     147
0-24 months   MAL-ED           BANGLADESH                     11                0        0     147
0-24 months   MAL-ED           BANGLADESH                     11                1        0     147
0-24 months   MAL-ED           BANGLADESH                     12                0        9     147
0-24 months   MAL-ED           BANGLADESH                     12                1        1     147
0-24 months   MAL-ED           BANGLADESH                     13                0        0     147
0-24 months   MAL-ED           BANGLADESH                     13                1        0     147
0-24 months   MAL-ED           BANGLADESH                     14                0        0     147
0-24 months   MAL-ED           BANGLADESH                     14                1        0     147
0-24 months   MAL-ED           BANGLADESH                     15                0        0     147
0-24 months   MAL-ED           BANGLADESH                     15                1        0     147
0-24 months   MAL-ED           BANGLADESH                     16                0        2     147
0-24 months   MAL-ED           BANGLADESH                     16                1        0     147
0-24 months   MAL-ED           BANGLADESH                     17                0        0     147
0-24 months   MAL-ED           BANGLADESH                     17                1        0     147
0-24 months   MAL-ED           BANGLADESH                     18                0        0     147
0-24 months   MAL-ED           BANGLADESH                     18                1        0     147
0-24 months   MAL-ED           BANGLADESH                     19                0        0     147
0-24 months   MAL-ED           BANGLADESH                     19                1        0     147
0-24 months   MAL-ED           BANGLADESH                     20                0        0     147
0-24 months   MAL-ED           BANGLADESH                     20                1        0     147
0-24 months   MAL-ED           BANGLADESH                     21                0        0     147
0-24 months   MAL-ED           BANGLADESH                     21                1        0     147
0-24 months   MAL-ED           BANGLADESH                     24                0        0     147
0-24 months   MAL-ED           BANGLADESH                     24                1        0     147
0-24 months   MAL-ED           BANGLADESH                     25                0        0     147
0-24 months   MAL-ED           BANGLADESH                     25                1        0     147
0-24 months   MAL-ED           BANGLADESH                     27                0        0     147
0-24 months   MAL-ED           BANGLADESH                     27                1        0     147
0-24 months   MAL-ED           INDIA                          0                 0        0     147
0-24 months   MAL-ED           INDIA                          0                 1        0     147
0-24 months   MAL-ED           INDIA                          1                 0        0     147
0-24 months   MAL-ED           INDIA                          1                 1        0     147
0-24 months   MAL-ED           INDIA                          2                 0        6     147
0-24 months   MAL-ED           INDIA                          2                 1        0     147
0-24 months   MAL-ED           INDIA                          3                 0       11     147
0-24 months   MAL-ED           INDIA                          3                 1        1     147
0-24 months   MAL-ED           INDIA                          4                 0        5     147
0-24 months   MAL-ED           INDIA                          4                 1        2     147
0-24 months   MAL-ED           INDIA                          5                 0       24     147
0-24 months   MAL-ED           INDIA                          5                 1       10     147
0-24 months   MAL-ED           INDIA                          6                 0        9     147
0-24 months   MAL-ED           INDIA                          6                 1        2     147
0-24 months   MAL-ED           INDIA                          7                 0       11     147
0-24 months   MAL-ED           INDIA                          7                 1        1     147
0-24 months   MAL-ED           INDIA                          8                 0       16     147
0-24 months   MAL-ED           INDIA                          8                 1        5     147
0-24 months   MAL-ED           INDIA                          9                 0       21     147
0-24 months   MAL-ED           INDIA                          9                 1        6     147
0-24 months   MAL-ED           INDIA                          10                0        5     147
0-24 months   MAL-ED           INDIA                          10                1        1     147
0-24 months   MAL-ED           INDIA                          11                0        1     147
0-24 months   MAL-ED           INDIA                          11                1        1     147
0-24 months   MAL-ED           INDIA                          12                0        3     147
0-24 months   MAL-ED           INDIA                          12                1        0     147
0-24 months   MAL-ED           INDIA                          13                0        1     147
0-24 months   MAL-ED           INDIA                          13                1        0     147
0-24 months   MAL-ED           INDIA                          14                0        2     147
0-24 months   MAL-ED           INDIA                          14                1        0     147
0-24 months   MAL-ED           INDIA                          15                0        2     147
0-24 months   MAL-ED           INDIA                          15                1        0     147
0-24 months   MAL-ED           INDIA                          16                0        0     147
0-24 months   MAL-ED           INDIA                          16                1        0     147
0-24 months   MAL-ED           INDIA                          17                0        0     147
0-24 months   MAL-ED           INDIA                          17                1        0     147
0-24 months   MAL-ED           INDIA                          18                0        1     147
0-24 months   MAL-ED           INDIA                          18                1        0     147
0-24 months   MAL-ED           INDIA                          19                0        0     147
0-24 months   MAL-ED           INDIA                          19                1        0     147
0-24 months   MAL-ED           INDIA                          20                0        0     147
0-24 months   MAL-ED           INDIA                          20                1        0     147
0-24 months   MAL-ED           INDIA                          21                0        0     147
0-24 months   MAL-ED           INDIA                          21                1        0     147
0-24 months   MAL-ED           INDIA                          24                0        0     147
0-24 months   MAL-ED           INDIA                          24                1        0     147
0-24 months   MAL-ED           INDIA                          25                0        0     147
0-24 months   MAL-ED           INDIA                          25                1        0     147
0-24 months   MAL-ED           INDIA                          27                0        0     147
0-24 months   MAL-ED           INDIA                          27                1        0     147
0-24 months   MAL-ED           NEPAL                          0                 0        0      98
0-24 months   MAL-ED           NEPAL                          0                 1        0      98
0-24 months   MAL-ED           NEPAL                          1                 0        0      98
0-24 months   MAL-ED           NEPAL                          1                 1        0      98
0-24 months   MAL-ED           NEPAL                          2                 0        3      98
0-24 months   MAL-ED           NEPAL                          2                 1        1      98
0-24 months   MAL-ED           NEPAL                          3                 0        3      98
0-24 months   MAL-ED           NEPAL                          3                 1        0      98
0-24 months   MAL-ED           NEPAL                          4                 0       10      98
0-24 months   MAL-ED           NEPAL                          4                 1        1      98
0-24 months   MAL-ED           NEPAL                          5                 0        6      98
0-24 months   MAL-ED           NEPAL                          5                 1        0      98
0-24 months   MAL-ED           NEPAL                          6                 0        4      98
0-24 months   MAL-ED           NEPAL                          6                 1        0      98
0-24 months   MAL-ED           NEPAL                          7                 0        7      98
0-24 months   MAL-ED           NEPAL                          7                 1        2      98
0-24 months   MAL-ED           NEPAL                          8                 0        7      98
0-24 months   MAL-ED           NEPAL                          8                 1        5      98
0-24 months   MAL-ED           NEPAL                          9                 0        7      98
0-24 months   MAL-ED           NEPAL                          9                 1        0      98
0-24 months   MAL-ED           NEPAL                          10                0       25      98
0-24 months   MAL-ED           NEPAL                          10                1        2      98
0-24 months   MAL-ED           NEPAL                          11                0        1      98
0-24 months   MAL-ED           NEPAL                          11                1        0      98
0-24 months   MAL-ED           NEPAL                          12                0        7      98
0-24 months   MAL-ED           NEPAL                          12                1        1      98
0-24 months   MAL-ED           NEPAL                          13                0        0      98
0-24 months   MAL-ED           NEPAL                          13                1        0      98
0-24 months   MAL-ED           NEPAL                          14                0        0      98
0-24 months   MAL-ED           NEPAL                          14                1        0      98
0-24 months   MAL-ED           NEPAL                          15                0        1      98
0-24 months   MAL-ED           NEPAL                          15                1        0      98
0-24 months   MAL-ED           NEPAL                          16                0        1      98
0-24 months   MAL-ED           NEPAL                          16                1        0      98
0-24 months   MAL-ED           NEPAL                          17                0        3      98
0-24 months   MAL-ED           NEPAL                          17                1        0      98
0-24 months   MAL-ED           NEPAL                          18                0        1      98
0-24 months   MAL-ED           NEPAL                          18                1        0      98
0-24 months   MAL-ED           NEPAL                          19                0        0      98
0-24 months   MAL-ED           NEPAL                          19                1        0      98
0-24 months   MAL-ED           NEPAL                          20                0        0      98
0-24 months   MAL-ED           NEPAL                          20                1        0      98
0-24 months   MAL-ED           NEPAL                          21                0        0      98
0-24 months   MAL-ED           NEPAL                          21                1        0      98
0-24 months   MAL-ED           NEPAL                          24                0        0      98
0-24 months   MAL-ED           NEPAL                          24                1        0      98
0-24 months   MAL-ED           NEPAL                          25                0        0      98
0-24 months   MAL-ED           NEPAL                          25                1        0      98
0-24 months   MAL-ED           NEPAL                          27                0        0      98
0-24 months   MAL-ED           NEPAL                          27                1        0      98
0-24 months   MAL-ED           PERU                           0                 0        1     250
0-24 months   MAL-ED           PERU                           0                 1        0     250
0-24 months   MAL-ED           PERU                           1                 0        2     250
0-24 months   MAL-ED           PERU                           1                 1        0     250
0-24 months   MAL-ED           PERU                           2                 0        1     250
0-24 months   MAL-ED           PERU                           2                 1        0     250
0-24 months   MAL-ED           PERU                           3                 0        9     250
0-24 months   MAL-ED           PERU                           3                 1        0     250
0-24 months   MAL-ED           PERU                           4                 0        4     250
0-24 months   MAL-ED           PERU                           4                 1        0     250
0-24 months   MAL-ED           PERU                           5                 0        8     250
0-24 months   MAL-ED           PERU                           5                 1        0     250
0-24 months   MAL-ED           PERU                           6                 0       26     250
0-24 months   MAL-ED           PERU                           6                 1        0     250
0-24 months   MAL-ED           PERU                           7                 0       17     250
0-24 months   MAL-ED           PERU                           7                 1        1     250
0-24 months   MAL-ED           PERU                           8                 0       20     250
0-24 months   MAL-ED           PERU                           8                 1        2     250
0-24 months   MAL-ED           PERU                           9                 0       25     250
0-24 months   MAL-ED           PERU                           9                 1        1     250
0-24 months   MAL-ED           PERU                           10                0       13     250
0-24 months   MAL-ED           PERU                           10                1        0     250
0-24 months   MAL-ED           PERU                           11                0       96     250
0-24 months   MAL-ED           PERU                           11                1        3     250
0-24 months   MAL-ED           PERU                           12                0        0     250
0-24 months   MAL-ED           PERU                           12                1        1     250
0-24 months   MAL-ED           PERU                           13                0        5     250
0-24 months   MAL-ED           PERU                           13                1        0     250
0-24 months   MAL-ED           PERU                           14                0        5     250
0-24 months   MAL-ED           PERU                           14                1        0     250
0-24 months   MAL-ED           PERU                           15                0        1     250
0-24 months   MAL-ED           PERU                           15                1        0     250
0-24 months   MAL-ED           PERU                           16                0        1     250
0-24 months   MAL-ED           PERU                           16                1        0     250
0-24 months   MAL-ED           PERU                           17                0        1     250
0-24 months   MAL-ED           PERU                           17                1        0     250
0-24 months   MAL-ED           PERU                           18                0        5     250
0-24 months   MAL-ED           PERU                           18                1        0     250
0-24 months   MAL-ED           PERU                           19                0        0     250
0-24 months   MAL-ED           PERU                           19                1        0     250
0-24 months   MAL-ED           PERU                           20                0        2     250
0-24 months   MAL-ED           PERU                           20                1        0     250
0-24 months   MAL-ED           PERU                           21                0        0     250
0-24 months   MAL-ED           PERU                           21                1        0     250
0-24 months   MAL-ED           PERU                           24                0        0     250
0-24 months   MAL-ED           PERU                           24                1        0     250
0-24 months   MAL-ED           PERU                           25                0        0     250
0-24 months   MAL-ED           PERU                           25                1        0     250
0-24 months   MAL-ED           PERU                           27                0        0     250
0-24 months   MAL-ED           PERU                           27                1        0     250
0-24 months   MAL-ED           SOUTH AFRICA                   0                 0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   0                 1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   1                 0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   1                 1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   2                 0        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   2                 1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   3                 0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   3                 1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   4                 0        4     110
0-24 months   MAL-ED           SOUTH AFRICA                   4                 1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   5                 0        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   5                 1        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   6                 0        6     110
0-24 months   MAL-ED           SOUTH AFRICA                   6                 1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   7                 0        6     110
0-24 months   MAL-ED           SOUTH AFRICA                   7                 1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   8                 0        9     110
0-24 months   MAL-ED           SOUTH AFRICA                   8                 1        2     110
0-24 months   MAL-ED           SOUTH AFRICA                   9                 0        7     110
0-24 months   MAL-ED           SOUTH AFRICA                   9                 1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   10                0        7     110
0-24 months   MAL-ED           SOUTH AFRICA                   10                1        3     110
0-24 months   MAL-ED           SOUTH AFRICA                   11                0       20     110
0-24 months   MAL-ED           SOUTH AFRICA                   11                1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   12                0       33     110
0-24 months   MAL-ED           SOUTH AFRICA                   12                1        3     110
0-24 months   MAL-ED           SOUTH AFRICA                   13                0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   13                1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   14                0        3     110
0-24 months   MAL-ED           SOUTH AFRICA                   14                1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   15                0        3     110
0-24 months   MAL-ED           SOUTH AFRICA                   15                1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   16                0        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   16                1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   17                0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   17                1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   18                0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   18                1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   19                0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   19                1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   20                0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   20                1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   21                0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   21                1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   24                0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   24                1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   25                0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   25                1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   27                0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   27                1        0     110
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       10     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        4     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 0       13     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 0       15     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 1        3     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 0       16     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 0       12     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 0        8     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 0      108     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 1       10     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 0        1     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 0        2     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                0        4     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                0        3     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                0        2     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                1        0     211
0-24 months   NIH-Crypto       BANGLADESH                     0                 0      150     758
0-24 months   NIH-Crypto       BANGLADESH                     0                 1       24     758
0-24 months   NIH-Crypto       BANGLADESH                     1                 0       21     758
0-24 months   NIH-Crypto       BANGLADESH                     1                 1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     2                 0       12     758
0-24 months   NIH-Crypto       BANGLADESH                     2                 1        1     758
0-24 months   NIH-Crypto       BANGLADESH                     3                 0       29     758
0-24 months   NIH-Crypto       BANGLADESH                     3                 1        5     758
0-24 months   NIH-Crypto       BANGLADESH                     4                 0       34     758
0-24 months   NIH-Crypto       BANGLADESH                     4                 1        6     758
0-24 months   NIH-Crypto       BANGLADESH                     5                 0       74     758
0-24 months   NIH-Crypto       BANGLADESH                     5                 1       14     758
0-24 months   NIH-Crypto       BANGLADESH                     6                 0       34     758
0-24 months   NIH-Crypto       BANGLADESH                     6                 1        1     758
0-24 months   NIH-Crypto       BANGLADESH                     7                 0       54     758
0-24 months   NIH-Crypto       BANGLADESH                     7                 1        3     758
0-24 months   NIH-Crypto       BANGLADESH                     8                 0       84     758
0-24 months   NIH-Crypto       BANGLADESH                     8                 1        6     758
0-24 months   NIH-Crypto       BANGLADESH                     9                 0       84     758
0-24 months   NIH-Crypto       BANGLADESH                     9                 1        2     758
0-24 months   NIH-Crypto       BANGLADESH                     10                0       51     758
0-24 months   NIH-Crypto       BANGLADESH                     10                1        3     758
0-24 months   NIH-Crypto       BANGLADESH                     11                0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     11                1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     12                0       32     758
0-24 months   NIH-Crypto       BANGLADESH                     12                1        3     758
0-24 months   NIH-Crypto       BANGLADESH                     13                0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     13                1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     14                0        8     758
0-24 months   NIH-Crypto       BANGLADESH                     14                1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     15                0       13     758
0-24 months   NIH-Crypto       BANGLADESH                     15                1        3     758
0-24 months   NIH-Crypto       BANGLADESH                     16                0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     16                1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     17                0        7     758
0-24 months   NIH-Crypto       BANGLADESH                     17                1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     18                0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     18                1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     19                0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     19                1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     20                0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     20                1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     21                0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     21                1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     24                0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     24                1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     25                0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     25                1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     27                0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     27                1        0     758
0-24 months   PROBIT           BELARUS                        0                 0        0   16314
0-24 months   PROBIT           BELARUS                        0                 1        0   16314
0-24 months   PROBIT           BELARUS                        1                 0        0   16314
0-24 months   PROBIT           BELARUS                        1                 1        0   16314
0-24 months   PROBIT           BELARUS                        2                 0        0   16314
0-24 months   PROBIT           BELARUS                        2                 1        0   16314
0-24 months   PROBIT           BELARUS                        3                 0        0   16314
0-24 months   PROBIT           BELARUS                        3                 1        0   16314
0-24 months   PROBIT           BELARUS                        4                 0        0   16314
0-24 months   PROBIT           BELARUS                        4                 1        0   16314
0-24 months   PROBIT           BELARUS                        5                 0        0   16314
0-24 months   PROBIT           BELARUS                        5                 1        0   16314
0-24 months   PROBIT           BELARUS                        6                 0        0   16314
0-24 months   PROBIT           BELARUS                        6                 1        0   16314
0-24 months   PROBIT           BELARUS                        7                 0        0   16314
0-24 months   PROBIT           BELARUS                        7                 1        0   16314
0-24 months   PROBIT           BELARUS                        8                 0       27   16314
0-24 months   PROBIT           BELARUS                        8                 1        0   16314
0-24 months   PROBIT           BELARUS                        9                 0        0   16314
0-24 months   PROBIT           BELARUS                        9                 1        0   16314
0-24 months   PROBIT           BELARUS                        10                0      367   16314
0-24 months   PROBIT           BELARUS                        10                1        0   16314
0-24 months   PROBIT           BELARUS                        11                0        0   16314
0-24 months   PROBIT           BELARUS                        11                1        0   16314
0-24 months   PROBIT           BELARUS                        12                0     6015   16314
0-24 months   PROBIT           BELARUS                        12                1        9   16314
0-24 months   PROBIT           BELARUS                        13                0     7182   16314
0-24 months   PROBIT           BELARUS                        13                1        7   16314
0-24 months   PROBIT           BELARUS                        14                0      444   16314
0-24 months   PROBIT           BELARUS                        14                1        0   16314
0-24 months   PROBIT           BELARUS                        15                0        0   16314
0-24 months   PROBIT           BELARUS                        15                1        0   16314
0-24 months   PROBIT           BELARUS                        16                0     2263   16314
0-24 months   PROBIT           BELARUS                        16                1        0   16314
0-24 months   PROBIT           BELARUS                        17                0        0   16314
0-24 months   PROBIT           BELARUS                        17                1        0   16314
0-24 months   PROBIT           BELARUS                        18                0        0   16314
0-24 months   PROBIT           BELARUS                        18                1        0   16314
0-24 months   PROBIT           BELARUS                        19                0        0   16314
0-24 months   PROBIT           BELARUS                        19                1        0   16314
0-24 months   PROBIT           BELARUS                        20                0        0   16314
0-24 months   PROBIT           BELARUS                        20                1        0   16314
0-24 months   PROBIT           BELARUS                        21                0        0   16314
0-24 months   PROBIT           BELARUS                        21                1        0   16314
0-24 months   PROBIT           BELARUS                        24                0        0   16314
0-24 months   PROBIT           BELARUS                        24                1        0   16314
0-24 months   PROBIT           BELARUS                        25                0        0   16314
0-24 months   PROBIT           BELARUS                        25                1        0   16314
0-24 months   PROBIT           BELARUS                        27                0        0   16314
0-24 months   PROBIT           BELARUS                        27                1        0   16314
0-24 months   PROVIDE          BANGLADESH                     0                 0      168     700
0-24 months   PROVIDE          BANGLADESH                     0                 1       39     700
0-24 months   PROVIDE          BANGLADESH                     1                 0       12     700
0-24 months   PROVIDE          BANGLADESH                     1                 1        1     700
0-24 months   PROVIDE          BANGLADESH                     2                 0       13     700
0-24 months   PROVIDE          BANGLADESH                     2                 1        5     700
0-24 months   PROVIDE          BANGLADESH                     3                 0       24     700
0-24 months   PROVIDE          BANGLADESH                     3                 1        3     700
0-24 months   PROVIDE          BANGLADESH                     4                 0       43     700
0-24 months   PROVIDE          BANGLADESH                     4                 1        9     700
0-24 months   PROVIDE          BANGLADESH                     5                 0       73     700
0-24 months   PROVIDE          BANGLADESH                     5                 1        7     700
0-24 months   PROVIDE          BANGLADESH                     6                 0       24     700
0-24 months   PROVIDE          BANGLADESH                     6                 1        5     700
0-24 months   PROVIDE          BANGLADESH                     7                 0       40     700
0-24 months   PROVIDE          BANGLADESH                     7                 1        2     700
0-24 months   PROVIDE          BANGLADESH                     8                 0       58     700
0-24 months   PROVIDE          BANGLADESH                     8                 1        6     700
0-24 months   PROVIDE          BANGLADESH                     9                 0       56     700
0-24 months   PROVIDE          BANGLADESH                     9                 1        6     700
0-24 months   PROVIDE          BANGLADESH                     10                0       35     700
0-24 months   PROVIDE          BANGLADESH                     10                1        4     700
0-24 months   PROVIDE          BANGLADESH                     11                0       26     700
0-24 months   PROVIDE          BANGLADESH                     11                1        0     700
0-24 months   PROVIDE          BANGLADESH                     12                0        4     700
0-24 months   PROVIDE          BANGLADESH                     12                1        0     700
0-24 months   PROVIDE          BANGLADESH                     13                0        0     700
0-24 months   PROVIDE          BANGLADESH                     13                1        0     700
0-24 months   PROVIDE          BANGLADESH                     14                0       17     700
0-24 months   PROVIDE          BANGLADESH                     14                1        2     700
0-24 months   PROVIDE          BANGLADESH                     15                0        8     700
0-24 months   PROVIDE          BANGLADESH                     15                1        0     700
0-24 months   PROVIDE          BANGLADESH                     16                0        8     700
0-24 months   PROVIDE          BANGLADESH                     16                1        1     700
0-24 months   PROVIDE          BANGLADESH                     17                0        0     700
0-24 months   PROVIDE          BANGLADESH                     17                1        0     700
0-24 months   PROVIDE          BANGLADESH                     18                0        0     700
0-24 months   PROVIDE          BANGLADESH                     18                1        0     700
0-24 months   PROVIDE          BANGLADESH                     19                0        1     700
0-24 months   PROVIDE          BANGLADESH                     19                1        0     700
0-24 months   PROVIDE          BANGLADESH                     20                0        0     700
0-24 months   PROVIDE          BANGLADESH                     20                1        0     700
0-24 months   PROVIDE          BANGLADESH                     21                0        0     700
0-24 months   PROVIDE          BANGLADESH                     21                1        0     700
0-24 months   PROVIDE          BANGLADESH                     24                0        0     700
0-24 months   PROVIDE          BANGLADESH                     24                1        0     700
0-24 months   PROVIDE          BANGLADESH                     25                0        0     700
0-24 months   PROVIDE          BANGLADESH                     25                1        0     700
0-24 months   PROVIDE          BANGLADESH                     27                0        0     700
0-24 months   PROVIDE          BANGLADESH                     27                1        0     700
0-24 months   SAS-CompFeed     INDIA                          0                 0      125    1510
0-24 months   SAS-CompFeed     INDIA                          0                 1       66    1510
0-24 months   SAS-CompFeed     INDIA                          1                 0        0    1510
0-24 months   SAS-CompFeed     INDIA                          1                 1        0    1510
0-24 months   SAS-CompFeed     INDIA                          2                 0        1    1510
0-24 months   SAS-CompFeed     INDIA                          2                 1        5    1510
0-24 months   SAS-CompFeed     INDIA                          3                 0       10    1510
0-24 months   SAS-CompFeed     INDIA                          3                 1        4    1510
0-24 months   SAS-CompFeed     INDIA                          4                 0       17    1510
0-24 months   SAS-CompFeed     INDIA                          4                 1        8    1510
0-24 months   SAS-CompFeed     INDIA                          5                 0       70    1510
0-24 months   SAS-CompFeed     INDIA                          5                 1       22    1510
0-24 months   SAS-CompFeed     INDIA                          6                 0       16    1510
0-24 months   SAS-CompFeed     INDIA                          6                 1       12    1510
0-24 months   SAS-CompFeed     INDIA                          7                 0       86    1510
0-24 months   SAS-CompFeed     INDIA                          7                 1       31    1510
0-24 months   SAS-CompFeed     INDIA                          8                 0      132    1510
0-24 months   SAS-CompFeed     INDIA                          8                 1       38    1510
0-24 months   SAS-CompFeed     INDIA                          9                 0       75    1510
0-24 months   SAS-CompFeed     INDIA                          9                 1       23    1510
0-24 months   SAS-CompFeed     INDIA                          10                0      302    1510
0-24 months   SAS-CompFeed     INDIA                          10                1       81    1510
0-24 months   SAS-CompFeed     INDIA                          11                0       37    1510
0-24 months   SAS-CompFeed     INDIA                          11                1        4    1510
0-24 months   SAS-CompFeed     INDIA                          12                0      192    1510
0-24 months   SAS-CompFeed     INDIA                          12                1       35    1510
0-24 months   SAS-CompFeed     INDIA                          13                0        6    1510
0-24 months   SAS-CompFeed     INDIA                          13                1        1    1510
0-24 months   SAS-CompFeed     INDIA                          14                0       13    1510
0-24 months   SAS-CompFeed     INDIA                          14                1        4    1510
0-24 months   SAS-CompFeed     INDIA                          15                0       53    1510
0-24 months   SAS-CompFeed     INDIA                          15                1       11    1510
0-24 months   SAS-CompFeed     INDIA                          16                0        9    1510
0-24 months   SAS-CompFeed     INDIA                          16                1        1    1510
0-24 months   SAS-CompFeed     INDIA                          17                0       12    1510
0-24 months   SAS-CompFeed     INDIA                          17                1        3    1510
0-24 months   SAS-CompFeed     INDIA                          18                0        3    1510
0-24 months   SAS-CompFeed     INDIA                          18                1        0    1510
0-24 months   SAS-CompFeed     INDIA                          19                0        1    1510
0-24 months   SAS-CompFeed     INDIA                          19                1        0    1510
0-24 months   SAS-CompFeed     INDIA                          20                0        1    1510
0-24 months   SAS-CompFeed     INDIA                          20                1        0    1510
0-24 months   SAS-CompFeed     INDIA                          21                0        0    1510
0-24 months   SAS-CompFeed     INDIA                          21                1        0    1510
0-24 months   SAS-CompFeed     INDIA                          24                0        0    1510
0-24 months   SAS-CompFeed     INDIA                          24                1        0    1510
0-24 months   SAS-CompFeed     INDIA                          25                0        0    1510
0-24 months   SAS-CompFeed     INDIA                          25                1        0    1510
0-24 months   SAS-CompFeed     INDIA                          27                0        0    1510
0-24 months   SAS-CompFeed     INDIA                          27                1        0    1510
0-24 months   SAS-FoodSuppl    INDIA                          0                 0       92     418
0-24 months   SAS-FoodSuppl    INDIA                          0                 1       55     418
0-24 months   SAS-FoodSuppl    INDIA                          1                 0        1     418
0-24 months   SAS-FoodSuppl    INDIA                          1                 1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          2                 0        3     418
0-24 months   SAS-FoodSuppl    INDIA                          2                 1        7     418
0-24 months   SAS-FoodSuppl    INDIA                          3                 0        4     418
0-24 months   SAS-FoodSuppl    INDIA                          3                 1        3     418
0-24 months   SAS-FoodSuppl    INDIA                          4                 0        6     418
0-24 months   SAS-FoodSuppl    INDIA                          4                 1        5     418
0-24 months   SAS-FoodSuppl    INDIA                          5                 0       30     418
0-24 months   SAS-FoodSuppl    INDIA                          5                 1       25     418
0-24 months   SAS-FoodSuppl    INDIA                          6                 0        7     418
0-24 months   SAS-FoodSuppl    INDIA                          6                 1        5     418
0-24 months   SAS-FoodSuppl    INDIA                          7                 0        9     418
0-24 months   SAS-FoodSuppl    INDIA                          7                 1        7     418
0-24 months   SAS-FoodSuppl    INDIA                          8                 0       35     418
0-24 months   SAS-FoodSuppl    INDIA                          8                 1       14     418
0-24 months   SAS-FoodSuppl    INDIA                          9                 0       15     418
0-24 months   SAS-FoodSuppl    INDIA                          9                 1       11     418
0-24 months   SAS-FoodSuppl    INDIA                          10                0       45     418
0-24 months   SAS-FoodSuppl    INDIA                          10                1       15     418
0-24 months   SAS-FoodSuppl    INDIA                          11                0        1     418
0-24 months   SAS-FoodSuppl    INDIA                          11                1        2     418
0-24 months   SAS-FoodSuppl    INDIA                          12                0        9     418
0-24 months   SAS-FoodSuppl    INDIA                          12                1        1     418
0-24 months   SAS-FoodSuppl    INDIA                          13                0        1     418
0-24 months   SAS-FoodSuppl    INDIA                          13                1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          14                0        3     418
0-24 months   SAS-FoodSuppl    INDIA                          14                1        4     418
0-24 months   SAS-FoodSuppl    INDIA                          15                0        2     418
0-24 months   SAS-FoodSuppl    INDIA                          15                1        1     418
0-24 months   SAS-FoodSuppl    INDIA                          16                0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          16                1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          17                0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          17                1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          18                0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          18                1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          19                0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          19                1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          20                0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          20                1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          21                0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          21                1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          24                0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          24                1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          25                0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          25                1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          27                0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          27                1        0     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0        5    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 0        6    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 0        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 0     1190    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 1       68    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 0        9    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 0       49    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 1        4    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                0       23    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                1        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                0      548    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                1       30    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                0       17    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                0      114    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                1        3    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                0       15    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                0       22    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                1        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                0       28    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                0       21    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                1        2    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                0        5    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                0        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                0       14    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                1        2    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                0        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                0      196    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                1        7    2383
0-24 months   ZVITAMBO         ZIMBABWE                       0                 0       53   13564
0-24 months   ZVITAMBO         ZIMBABWE                       0                 1        7   13564
0-24 months   ZVITAMBO         ZIMBABWE                       1                 0        2   13564
0-24 months   ZVITAMBO         ZIMBABWE                       1                 1        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       2                 0        5   13564
0-24 months   ZVITAMBO         ZIMBABWE                       2                 1        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       3                 0       13   13564
0-24 months   ZVITAMBO         ZIMBABWE                       3                 1        2   13564
0-24 months   ZVITAMBO         ZIMBABWE                       4                 0       22   13564
0-24 months   ZVITAMBO         ZIMBABWE                       4                 1        1   13564
0-24 months   ZVITAMBO         ZIMBABWE                       5                 0       29   13564
0-24 months   ZVITAMBO         ZIMBABWE                       5                 1        3   13564
0-24 months   ZVITAMBO         ZIMBABWE                       6                 0       40   13564
0-24 months   ZVITAMBO         ZIMBABWE                       6                 1        3   13564
0-24 months   ZVITAMBO         ZIMBABWE                       7                 0      727   13564
0-24 months   ZVITAMBO         ZIMBABWE                       7                 1       56   13564
0-24 months   ZVITAMBO         ZIMBABWE                       8                 0       99   13564
0-24 months   ZVITAMBO         ZIMBABWE                       8                 1        3   13564
0-24 months   ZVITAMBO         ZIMBABWE                       9                 0      843   13564
0-24 months   ZVITAMBO         ZIMBABWE                       9                 1       50   13564
0-24 months   ZVITAMBO         ZIMBABWE                       10                0      298   13564
0-24 months   ZVITAMBO         ZIMBABWE                       10                1       27   13564
0-24 months   ZVITAMBO         ZIMBABWE                       11                0     9909   13564
0-24 months   ZVITAMBO         ZIMBABWE                       11                1      380   13564
0-24 months   ZVITAMBO         ZIMBABWE                       12                0       54   13564
0-24 months   ZVITAMBO         ZIMBABWE                       12                1        4   13564
0-24 months   ZVITAMBO         ZIMBABWE                       13                0      911   13564
0-24 months   ZVITAMBO         ZIMBABWE                       13                1       23   13564
0-24 months   ZVITAMBO         ZIMBABWE                       14                0        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       14                1        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       15                0        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       15                1        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       16                0        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       16                1        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       17                0        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       17                1        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       18                0        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       18                1        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       19                0        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       19                1        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       20                0        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       20                1        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       21                0        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       21                1        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       24                0        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       24                1        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       25                0        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       25                1        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       27                0        0   13564
0-24 months   ZVITAMBO         ZIMBABWE                       27                1        0   13564
0-6 months    COHORTS          GUATEMALA                      0                 0      433     996
0-6 months    COHORTS          GUATEMALA                      0                 1        9     996
0-6 months    COHORTS          GUATEMALA                      1                 0       50     996
0-6 months    COHORTS          GUATEMALA                      1                 1        0     996
0-6 months    COHORTS          GUATEMALA                      2                 0      179     996
0-6 months    COHORTS          GUATEMALA                      2                 1        3     996
0-6 months    COHORTS          GUATEMALA                      3                 0      130     996
0-6 months    COHORTS          GUATEMALA                      3                 1        2     996
0-6 months    COHORTS          GUATEMALA                      4                 0       65     996
0-6 months    COHORTS          GUATEMALA                      4                 1        2     996
0-6 months    COHORTS          GUATEMALA                      5                 0       23     996
0-6 months    COHORTS          GUATEMALA                      5                 1        0     996
0-6 months    COHORTS          GUATEMALA                      6                 0       86     996
0-6 months    COHORTS          GUATEMALA                      6                 1        1     996
0-6 months    COHORTS          GUATEMALA                      7                 0        4     996
0-6 months    COHORTS          GUATEMALA                      7                 1        0     996
0-6 months    COHORTS          GUATEMALA                      8                 0        2     996
0-6 months    COHORTS          GUATEMALA                      8                 1        0     996
0-6 months    COHORTS          GUATEMALA                      9                 0        1     996
0-6 months    COHORTS          GUATEMALA                      9                 1        0     996
0-6 months    COHORTS          GUATEMALA                      10                0        1     996
0-6 months    COHORTS          GUATEMALA                      10                1        0     996
0-6 months    COHORTS          GUATEMALA                      11                0        0     996
0-6 months    COHORTS          GUATEMALA                      11                1        0     996
0-6 months    COHORTS          GUATEMALA                      12                0        4     996
0-6 months    COHORTS          GUATEMALA                      12                1        0     996
0-6 months    COHORTS          GUATEMALA                      13                0        0     996
0-6 months    COHORTS          GUATEMALA                      13                1        0     996
0-6 months    COHORTS          GUATEMALA                      14                0        1     996
0-6 months    COHORTS          GUATEMALA                      14                1        0     996
0-6 months    COHORTS          GUATEMALA                      15                0        0     996
0-6 months    COHORTS          GUATEMALA                      15                1        0     996
0-6 months    COHORTS          GUATEMALA                      16                0        0     996
0-6 months    COHORTS          GUATEMALA                      16                1        0     996
0-6 months    COHORTS          GUATEMALA                      17                0        0     996
0-6 months    COHORTS          GUATEMALA                      17                1        0     996
0-6 months    COHORTS          GUATEMALA                      18                0        0     996
0-6 months    COHORTS          GUATEMALA                      18                1        0     996
0-6 months    COHORTS          GUATEMALA                      19                0        0     996
0-6 months    COHORTS          GUATEMALA                      19                1        0     996
0-6 months    COHORTS          GUATEMALA                      20                0        0     996
0-6 months    COHORTS          GUATEMALA                      20                1        0     996
0-6 months    COHORTS          GUATEMALA                      21                0        0     996
0-6 months    COHORTS          GUATEMALA                      21                1        0     996
0-6 months    COHORTS          GUATEMALA                      24                0        0     996
0-6 months    COHORTS          GUATEMALA                      24                1        0     996
0-6 months    COHORTS          GUATEMALA                      25                0        0     996
0-6 months    COHORTS          GUATEMALA                      25                1        0     996
0-6 months    COHORTS          GUATEMALA                      27                0        0     996
0-6 months    COHORTS          GUATEMALA                      27                1        0     996
0-6 months    COHORTS          INDIA                          0                 0      118    1417
0-6 months    COHORTS          INDIA                          0                 1        3    1417
0-6 months    COHORTS          INDIA                          1                 0        0    1417
0-6 months    COHORTS          INDIA                          1                 1        0    1417
0-6 months    COHORTS          INDIA                          2                 0        0    1417
0-6 months    COHORTS          INDIA                          2                 1        0    1417
0-6 months    COHORTS          INDIA                          3                 0      130    1417
0-6 months    COHORTS          INDIA                          3                 1        2    1417
0-6 months    COHORTS          INDIA                          4                 0        0    1417
0-6 months    COHORTS          INDIA                          4                 1        0    1417
0-6 months    COHORTS          INDIA                          5                 0        0    1417
0-6 months    COHORTS          INDIA                          5                 1        0    1417
0-6 months    COHORTS          INDIA                          6                 0        0    1417
0-6 months    COHORTS          INDIA                          6                 1        0    1417
0-6 months    COHORTS          INDIA                          7                 0        0    1417
0-6 months    COHORTS          INDIA                          7                 1        0    1417
0-6 months    COHORTS          INDIA                          8                 0      198    1417
0-6 months    COHORTS          INDIA                          8                 1        7    1417
0-6 months    COHORTS          INDIA                          9                 0        0    1417
0-6 months    COHORTS          INDIA                          9                 1        0    1417
0-6 months    COHORTS          INDIA                          10                0        0    1417
0-6 months    COHORTS          INDIA                          10                1        0    1417
0-6 months    COHORTS          INDIA                          11                0        0    1417
0-6 months    COHORTS          INDIA                          11                1        0    1417
0-6 months    COHORTS          INDIA                          12                0      395    1417
0-6 months    COHORTS          INDIA                          12                1        7    1417
0-6 months    COHORTS          INDIA                          13                0        0    1417
0-6 months    COHORTS          INDIA                          13                1        0    1417
0-6 months    COHORTS          INDIA                          14                0      156    1417
0-6 months    COHORTS          INDIA                          14                1        2    1417
0-6 months    COHORTS          INDIA                          15                0      272    1417
0-6 months    COHORTS          INDIA                          15                1        7    1417
0-6 months    COHORTS          INDIA                          16                0        0    1417
0-6 months    COHORTS          INDIA                          16                1        0    1417
0-6 months    COHORTS          INDIA                          17                0      119    1417
0-6 months    COHORTS          INDIA                          17                1        1    1417
0-6 months    COHORTS          INDIA                          18                0        0    1417
0-6 months    COHORTS          INDIA                          18                1        0    1417
0-6 months    COHORTS          INDIA                          19                0        0    1417
0-6 months    COHORTS          INDIA                          19                1        0    1417
0-6 months    COHORTS          INDIA                          20                0        0    1417
0-6 months    COHORTS          INDIA                          20                1        0    1417
0-6 months    COHORTS          INDIA                          21                0        0    1417
0-6 months    COHORTS          INDIA                          21                1        0    1417
0-6 months    COHORTS          INDIA                          24                0        0    1417
0-6 months    COHORTS          INDIA                          24                1        0    1417
0-6 months    COHORTS          INDIA                          25                0        0    1417
0-6 months    COHORTS          INDIA                          25                1        0    1417
0-6 months    COHORTS          INDIA                          27                0        0    1417
0-6 months    COHORTS          INDIA                          27                1        0    1417
0-6 months    COHORTS          PHILIPPINES                    0                 0       56    2867
0-6 months    COHORTS          PHILIPPINES                    0                 1        4    2867
0-6 months    COHORTS          PHILIPPINES                    1                 0       35    2867
0-6 months    COHORTS          PHILIPPINES                    1                 1        1    2867
0-6 months    COHORTS          PHILIPPINES                    2                 0       93    2867
0-6 months    COHORTS          PHILIPPINES                    2                 1        3    2867
0-6 months    COHORTS          PHILIPPINES                    3                 0      163    2867
0-6 months    COHORTS          PHILIPPINES                    3                 1        5    2867
0-6 months    COHORTS          PHILIPPINES                    4                 0      257    2867
0-6 months    COHORTS          PHILIPPINES                    4                 1        5    2867
0-6 months    COHORTS          PHILIPPINES                    5                 0      200    2867
0-6 months    COHORTS          PHILIPPINES                    5                 1        4    2867
0-6 months    COHORTS          PHILIPPINES                    6                 0      622    2867
0-6 months    COHORTS          PHILIPPINES                    6                 1       18    2867
0-6 months    COHORTS          PHILIPPINES                    7                 0      146    2867
0-6 months    COHORTS          PHILIPPINES                    7                 1        3    2867
0-6 months    COHORTS          PHILIPPINES                    8                 0      223    2867
0-6 months    COHORTS          PHILIPPINES                    8                 1        1    2867
0-6 months    COHORTS          PHILIPPINES                    9                 0      195    2867
0-6 months    COHORTS          PHILIPPINES                    9                 1        1    2867
0-6 months    COHORTS          PHILIPPINES                    10                0      325    2867
0-6 months    COHORTS          PHILIPPINES                    10                1        5    2867
0-6 months    COHORTS          PHILIPPINES                    11                0       62    2867
0-6 months    COHORTS          PHILIPPINES                    11                1        3    2867
0-6 months    COHORTS          PHILIPPINES                    12                0      176    2867
0-6 months    COHORTS          PHILIPPINES                    12                1        4    2867
0-6 months    COHORTS          PHILIPPINES                    13                0       60    2867
0-6 months    COHORTS          PHILIPPINES                    13                1        2    2867
0-6 months    COHORTS          PHILIPPINES                    14                0      145    2867
0-6 months    COHORTS          PHILIPPINES                    14                1        2    2867
0-6 months    COHORTS          PHILIPPINES                    15                0       36    2867
0-6 months    COHORTS          PHILIPPINES                    15                1        0    2867
0-6 months    COHORTS          PHILIPPINES                    16                0        8    2867
0-6 months    COHORTS          PHILIPPINES                    16                1        0    2867
0-6 months    COHORTS          PHILIPPINES                    17                0        2    2867
0-6 months    COHORTS          PHILIPPINES                    17                1        0    2867
0-6 months    COHORTS          PHILIPPINES                    18                0        2    2867
0-6 months    COHORTS          PHILIPPINES                    18                1        0    2867
0-6 months    COHORTS          PHILIPPINES                    19                0        0    2867
0-6 months    COHORTS          PHILIPPINES                    19                1        0    2867
0-6 months    COHORTS          PHILIPPINES                    20                0        0    2867
0-6 months    COHORTS          PHILIPPINES                    20                1        0    2867
0-6 months    COHORTS          PHILIPPINES                    21                0        0    2867
0-6 months    COHORTS          PHILIPPINES                    21                1        0    2867
0-6 months    COHORTS          PHILIPPINES                    24                0        0    2867
0-6 months    COHORTS          PHILIPPINES                    24                1        0    2867
0-6 months    COHORTS          PHILIPPINES                    25                0        0    2867
0-6 months    COHORTS          PHILIPPINES                    25                1        0    2867
0-6 months    COHORTS          PHILIPPINES                    27                0        0    2867
0-6 months    COHORTS          PHILIPPINES                    27                1        0    2867
0-6 months    GMS-Nepal        NEPAL                          0                 0      279     684
0-6 months    GMS-Nepal        NEPAL                          0                 1       13     684
0-6 months    GMS-Nepal        NEPAL                          1                 0        0     684
0-6 months    GMS-Nepal        NEPAL                          1                 1        0     684
0-6 months    GMS-Nepal        NEPAL                          2                 0        0     684
0-6 months    GMS-Nepal        NEPAL                          2                 1        0     684
0-6 months    GMS-Nepal        NEPAL                          3                 0        0     684
0-6 months    GMS-Nepal        NEPAL                          3                 1        0     684
0-6 months    GMS-Nepal        NEPAL                          4                 0        0     684
0-6 months    GMS-Nepal        NEPAL                          4                 1        0     684
0-6 months    GMS-Nepal        NEPAL                          5                 0      102     684
0-6 months    GMS-Nepal        NEPAL                          5                 1        8     684
0-6 months    GMS-Nepal        NEPAL                          6                 0        0     684
0-6 months    GMS-Nepal        NEPAL                          6                 1        0     684
0-6 months    GMS-Nepal        NEPAL                          7                 0        0     684
0-6 months    GMS-Nepal        NEPAL                          7                 1        0     684
0-6 months    GMS-Nepal        NEPAL                          8                 0      112     684
0-6 months    GMS-Nepal        NEPAL                          8                 1        1     684
0-6 months    GMS-Nepal        NEPAL                          9                 0        0     684
0-6 months    GMS-Nepal        NEPAL                          9                 1        0     684
0-6 months    GMS-Nepal        NEPAL                          10                0      119     684
0-6 months    GMS-Nepal        NEPAL                          10                1       11     684
0-6 months    GMS-Nepal        NEPAL                          11                0        0     684
0-6 months    GMS-Nepal        NEPAL                          11                1        0     684
0-6 months    GMS-Nepal        NEPAL                          12                0       36     684
0-6 months    GMS-Nepal        NEPAL                          12                1        3     684
0-6 months    GMS-Nepal        NEPAL                          13                0        0     684
0-6 months    GMS-Nepal        NEPAL                          13                1        0     684
0-6 months    GMS-Nepal        NEPAL                          14                0        0     684
0-6 months    GMS-Nepal        NEPAL                          14                1        0     684
0-6 months    GMS-Nepal        NEPAL                          15                0        0     684
0-6 months    GMS-Nepal        NEPAL                          15                1        0     684
0-6 months    GMS-Nepal        NEPAL                          16                0        0     684
0-6 months    GMS-Nepal        NEPAL                          16                1        0     684
0-6 months    GMS-Nepal        NEPAL                          17                0        0     684
0-6 months    GMS-Nepal        NEPAL                          17                1        0     684
0-6 months    GMS-Nepal        NEPAL                          18                0        0     684
0-6 months    GMS-Nepal        NEPAL                          18                1        0     684
0-6 months    GMS-Nepal        NEPAL                          19                0        0     684
0-6 months    GMS-Nepal        NEPAL                          19                1        0     684
0-6 months    GMS-Nepal        NEPAL                          20                0        0     684
0-6 months    GMS-Nepal        NEPAL                          20                1        0     684
0-6 months    GMS-Nepal        NEPAL                          21                0        0     684
0-6 months    GMS-Nepal        NEPAL                          21                1        0     684
0-6 months    GMS-Nepal        NEPAL                          24                0        0     684
0-6 months    GMS-Nepal        NEPAL                          24                1        0     684
0-6 months    GMS-Nepal        NEPAL                          25                0        0     684
0-6 months    GMS-Nepal        NEPAL                          25                1        0     684
0-6 months    GMS-Nepal        NEPAL                          27                0        0     684
0-6 months    GMS-Nepal        NEPAL                          27                1        0     684
0-6 months    LCNI-5           MALAWI                         0                 0      104     267
0-6 months    LCNI-5           MALAWI                         0                 1        0     267
0-6 months    LCNI-5           MALAWI                         1                 0        2     267
0-6 months    LCNI-5           MALAWI                         1                 1        0     267
0-6 months    LCNI-5           MALAWI                         2                 0        7     267
0-6 months    LCNI-5           MALAWI                         2                 1        0     267
0-6 months    LCNI-5           MALAWI                         3                 0       11     267
0-6 months    LCNI-5           MALAWI                         3                 1        0     267
0-6 months    LCNI-5           MALAWI                         4                 0       18     267
0-6 months    LCNI-5           MALAWI                         4                 1        0     267
0-6 months    LCNI-5           MALAWI                         5                 0       28     267
0-6 months    LCNI-5           MALAWI                         5                 1        0     267
0-6 months    LCNI-5           MALAWI                         6                 0       24     267
0-6 months    LCNI-5           MALAWI                         6                 1        0     267
0-6 months    LCNI-5           MALAWI                         7                 0       17     267
0-6 months    LCNI-5           MALAWI                         7                 1        0     267
0-6 months    LCNI-5           MALAWI                         8                 0       21     267
0-6 months    LCNI-5           MALAWI                         8                 1        0     267
0-6 months    LCNI-5           MALAWI                         9                 0        4     267
0-6 months    LCNI-5           MALAWI                         9                 1        0     267
0-6 months    LCNI-5           MALAWI                         10                0        5     267
0-6 months    LCNI-5           MALAWI                         10                1        0     267
0-6 months    LCNI-5           MALAWI                         11                0        4     267
0-6 months    LCNI-5           MALAWI                         11                1        0     267
0-6 months    LCNI-5           MALAWI                         12                0       19     267
0-6 months    LCNI-5           MALAWI                         12                1        0     267
0-6 months    LCNI-5           MALAWI                         13                0        1     267
0-6 months    LCNI-5           MALAWI                         13                1        0     267
0-6 months    LCNI-5           MALAWI                         14                0        1     267
0-6 months    LCNI-5           MALAWI                         14                1        0     267
0-6 months    LCNI-5           MALAWI                         15                0        0     267
0-6 months    LCNI-5           MALAWI                         15                1        0     267
0-6 months    LCNI-5           MALAWI                         16                0        1     267
0-6 months    LCNI-5           MALAWI                         16                1        0     267
0-6 months    LCNI-5           MALAWI                         17                0        0     267
0-6 months    LCNI-5           MALAWI                         17                1        0     267
0-6 months    LCNI-5           MALAWI                         18                0        0     267
0-6 months    LCNI-5           MALAWI                         18                1        0     267
0-6 months    LCNI-5           MALAWI                         19                0        0     267
0-6 months    LCNI-5           MALAWI                         19                1        0     267
0-6 months    LCNI-5           MALAWI                         20                0        0     267
0-6 months    LCNI-5           MALAWI                         20                1        0     267
0-6 months    LCNI-5           MALAWI                         21                0        0     267
0-6 months    LCNI-5           MALAWI                         21                1        0     267
0-6 months    LCNI-5           MALAWI                         24                0        0     267
0-6 months    LCNI-5           MALAWI                         24                1        0     267
0-6 months    LCNI-5           MALAWI                         25                0        0     267
0-6 months    LCNI-5           MALAWI                         25                1        0     267
0-6 months    LCNI-5           MALAWI                         27                0        0     267
0-6 months    LCNI-5           MALAWI                         27                1        0     267
0-6 months    MAL-ED           BANGLADESH                     0                 0        0     147
0-6 months    MAL-ED           BANGLADESH                     0                 1        0     147
0-6 months    MAL-ED           BANGLADESH                     1                 0        7     147
0-6 months    MAL-ED           BANGLADESH                     1                 1        0     147
0-6 months    MAL-ED           BANGLADESH                     2                 0       12     147
0-6 months    MAL-ED           BANGLADESH                     2                 1        0     147
0-6 months    MAL-ED           BANGLADESH                     3                 0       11     147
0-6 months    MAL-ED           BANGLADESH                     3                 1        1     147
0-6 months    MAL-ED           BANGLADESH                     4                 0        8     147
0-6 months    MAL-ED           BANGLADESH                     4                 1        0     147
0-6 months    MAL-ED           BANGLADESH                     5                 0       35     147
0-6 months    MAL-ED           BANGLADESH                     5                 1        1     147
0-6 months    MAL-ED           BANGLADESH                     6                 0        8     147
0-6 months    MAL-ED           BANGLADESH                     6                 1        0     147
0-6 months    MAL-ED           BANGLADESH                     7                 0       10     147
0-6 months    MAL-ED           BANGLADESH                     7                 1        0     147
0-6 months    MAL-ED           BANGLADESH                     8                 0       18     147
0-6 months    MAL-ED           BANGLADESH                     8                 1        0     147
0-6 months    MAL-ED           BANGLADESH                     9                 0       13     147
0-6 months    MAL-ED           BANGLADESH                     9                 1        1     147
0-6 months    MAL-ED           BANGLADESH                     10                0       10     147
0-6 months    MAL-ED           BANGLADESH                     10                1        0     147
0-6 months    MAL-ED           BANGLADESH                     11                0        0     147
0-6 months    MAL-ED           BANGLADESH                     11                1        0     147
0-6 months    MAL-ED           BANGLADESH                     12                0        9     147
0-6 months    MAL-ED           BANGLADESH                     12                1        1     147
0-6 months    MAL-ED           BANGLADESH                     13                0        0     147
0-6 months    MAL-ED           BANGLADESH                     13                1        0     147
0-6 months    MAL-ED           BANGLADESH                     14                0        0     147
0-6 months    MAL-ED           BANGLADESH                     14                1        0     147
0-6 months    MAL-ED           BANGLADESH                     15                0        0     147
0-6 months    MAL-ED           BANGLADESH                     15                1        0     147
0-6 months    MAL-ED           BANGLADESH                     16                0        2     147
0-6 months    MAL-ED           BANGLADESH                     16                1        0     147
0-6 months    MAL-ED           BANGLADESH                     17                0        0     147
0-6 months    MAL-ED           BANGLADESH                     17                1        0     147
0-6 months    MAL-ED           BANGLADESH                     18                0        0     147
0-6 months    MAL-ED           BANGLADESH                     18                1        0     147
0-6 months    MAL-ED           BANGLADESH                     19                0        0     147
0-6 months    MAL-ED           BANGLADESH                     19                1        0     147
0-6 months    MAL-ED           BANGLADESH                     20                0        0     147
0-6 months    MAL-ED           BANGLADESH                     20                1        0     147
0-6 months    MAL-ED           BANGLADESH                     21                0        0     147
0-6 months    MAL-ED           BANGLADESH                     21                1        0     147
0-6 months    MAL-ED           BANGLADESH                     24                0        0     147
0-6 months    MAL-ED           BANGLADESH                     24                1        0     147
0-6 months    MAL-ED           BANGLADESH                     25                0        0     147
0-6 months    MAL-ED           BANGLADESH                     25                1        0     147
0-6 months    MAL-ED           BANGLADESH                     27                0        0     147
0-6 months    MAL-ED           BANGLADESH                     27                1        0     147
0-6 months    MAL-ED           INDIA                          0                 0        0     147
0-6 months    MAL-ED           INDIA                          0                 1        0     147
0-6 months    MAL-ED           INDIA                          1                 0        0     147
0-6 months    MAL-ED           INDIA                          1                 1        0     147
0-6 months    MAL-ED           INDIA                          2                 0        6     147
0-6 months    MAL-ED           INDIA                          2                 1        0     147
0-6 months    MAL-ED           INDIA                          3                 0       12     147
0-6 months    MAL-ED           INDIA                          3                 1        0     147
0-6 months    MAL-ED           INDIA                          4                 0        7     147
0-6 months    MAL-ED           INDIA                          4                 1        0     147
0-6 months    MAL-ED           INDIA                          5                 0       31     147
0-6 months    MAL-ED           INDIA                          5                 1        3     147
0-6 months    MAL-ED           INDIA                          6                 0       10     147
0-6 months    MAL-ED           INDIA                          6                 1        1     147
0-6 months    MAL-ED           INDIA                          7                 0       12     147
0-6 months    MAL-ED           INDIA                          7                 1        0     147
0-6 months    MAL-ED           INDIA                          8                 0       20     147
0-6 months    MAL-ED           INDIA                          8                 1        1     147
0-6 months    MAL-ED           INDIA                          9                 0       25     147
0-6 months    MAL-ED           INDIA                          9                 1        2     147
0-6 months    MAL-ED           INDIA                          10                0        6     147
0-6 months    MAL-ED           INDIA                          10                1        0     147
0-6 months    MAL-ED           INDIA                          11                0        2     147
0-6 months    MAL-ED           INDIA                          11                1        0     147
0-6 months    MAL-ED           INDIA                          12                0        3     147
0-6 months    MAL-ED           INDIA                          12                1        0     147
0-6 months    MAL-ED           INDIA                          13                0        1     147
0-6 months    MAL-ED           INDIA                          13                1        0     147
0-6 months    MAL-ED           INDIA                          14                0        2     147
0-6 months    MAL-ED           INDIA                          14                1        0     147
0-6 months    MAL-ED           INDIA                          15                0        2     147
0-6 months    MAL-ED           INDIA                          15                1        0     147
0-6 months    MAL-ED           INDIA                          16                0        0     147
0-6 months    MAL-ED           INDIA                          16                1        0     147
0-6 months    MAL-ED           INDIA                          17                0        0     147
0-6 months    MAL-ED           INDIA                          17                1        0     147
0-6 months    MAL-ED           INDIA                          18                0        1     147
0-6 months    MAL-ED           INDIA                          18                1        0     147
0-6 months    MAL-ED           INDIA                          19                0        0     147
0-6 months    MAL-ED           INDIA                          19                1        0     147
0-6 months    MAL-ED           INDIA                          20                0        0     147
0-6 months    MAL-ED           INDIA                          20                1        0     147
0-6 months    MAL-ED           INDIA                          21                0        0     147
0-6 months    MAL-ED           INDIA                          21                1        0     147
0-6 months    MAL-ED           INDIA                          24                0        0     147
0-6 months    MAL-ED           INDIA                          24                1        0     147
0-6 months    MAL-ED           INDIA                          25                0        0     147
0-6 months    MAL-ED           INDIA                          25                1        0     147
0-6 months    MAL-ED           INDIA                          27                0        0     147
0-6 months    MAL-ED           INDIA                          27                1        0     147
0-6 months    MAL-ED           NEPAL                          0                 0        0      98
0-6 months    MAL-ED           NEPAL                          0                 1        0      98
0-6 months    MAL-ED           NEPAL                          1                 0        0      98
0-6 months    MAL-ED           NEPAL                          1                 1        0      98
0-6 months    MAL-ED           NEPAL                          2                 0        4      98
0-6 months    MAL-ED           NEPAL                          2                 1        0      98
0-6 months    MAL-ED           NEPAL                          3                 0        3      98
0-6 months    MAL-ED           NEPAL                          3                 1        0      98
0-6 months    MAL-ED           NEPAL                          4                 0       11      98
0-6 months    MAL-ED           NEPAL                          4                 1        0      98
0-6 months    MAL-ED           NEPAL                          5                 0        6      98
0-6 months    MAL-ED           NEPAL                          5                 1        0      98
0-6 months    MAL-ED           NEPAL                          6                 0        4      98
0-6 months    MAL-ED           NEPAL                          6                 1        0      98
0-6 months    MAL-ED           NEPAL                          7                 0        8      98
0-6 months    MAL-ED           NEPAL                          7                 1        1      98
0-6 months    MAL-ED           NEPAL                          8                 0       10      98
0-6 months    MAL-ED           NEPAL                          8                 1        2      98
0-6 months    MAL-ED           NEPAL                          9                 0        7      98
0-6 months    MAL-ED           NEPAL                          9                 1        0      98
0-6 months    MAL-ED           NEPAL                          10                0       26      98
0-6 months    MAL-ED           NEPAL                          10                1        1      98
0-6 months    MAL-ED           NEPAL                          11                0        1      98
0-6 months    MAL-ED           NEPAL                          11                1        0      98
0-6 months    MAL-ED           NEPAL                          12                0        7      98
0-6 months    MAL-ED           NEPAL                          12                1        1      98
0-6 months    MAL-ED           NEPAL                          13                0        0      98
0-6 months    MAL-ED           NEPAL                          13                1        0      98
0-6 months    MAL-ED           NEPAL                          14                0        0      98
0-6 months    MAL-ED           NEPAL                          14                1        0      98
0-6 months    MAL-ED           NEPAL                          15                0        1      98
0-6 months    MAL-ED           NEPAL                          15                1        0      98
0-6 months    MAL-ED           NEPAL                          16                0        1      98
0-6 months    MAL-ED           NEPAL                          16                1        0      98
0-6 months    MAL-ED           NEPAL                          17                0        3      98
0-6 months    MAL-ED           NEPAL                          17                1        0      98
0-6 months    MAL-ED           NEPAL                          18                0        1      98
0-6 months    MAL-ED           NEPAL                          18                1        0      98
0-6 months    MAL-ED           NEPAL                          19                0        0      98
0-6 months    MAL-ED           NEPAL                          19                1        0      98
0-6 months    MAL-ED           NEPAL                          20                0        0      98
0-6 months    MAL-ED           NEPAL                          20                1        0      98
0-6 months    MAL-ED           NEPAL                          21                0        0      98
0-6 months    MAL-ED           NEPAL                          21                1        0      98
0-6 months    MAL-ED           NEPAL                          24                0        0      98
0-6 months    MAL-ED           NEPAL                          24                1        0      98
0-6 months    MAL-ED           NEPAL                          25                0        0      98
0-6 months    MAL-ED           NEPAL                          25                1        0      98
0-6 months    MAL-ED           NEPAL                          27                0        0      98
0-6 months    MAL-ED           NEPAL                          27                1        0      98
0-6 months    MAL-ED           PERU                           0                 0        1     250
0-6 months    MAL-ED           PERU                           0                 1        0     250
0-6 months    MAL-ED           PERU                           1                 0        2     250
0-6 months    MAL-ED           PERU                           1                 1        0     250
0-6 months    MAL-ED           PERU                           2                 0        1     250
0-6 months    MAL-ED           PERU                           2                 1        0     250
0-6 months    MAL-ED           PERU                           3                 0        9     250
0-6 months    MAL-ED           PERU                           3                 1        0     250
0-6 months    MAL-ED           PERU                           4                 0        4     250
0-6 months    MAL-ED           PERU                           4                 1        0     250
0-6 months    MAL-ED           PERU                           5                 0        8     250
0-6 months    MAL-ED           PERU                           5                 1        0     250
0-6 months    MAL-ED           PERU                           6                 0       26     250
0-6 months    MAL-ED           PERU                           6                 1        0     250
0-6 months    MAL-ED           PERU                           7                 0       18     250
0-6 months    MAL-ED           PERU                           7                 1        0     250
0-6 months    MAL-ED           PERU                           8                 0       22     250
0-6 months    MAL-ED           PERU                           8                 1        0     250
0-6 months    MAL-ED           PERU                           9                 0       26     250
0-6 months    MAL-ED           PERU                           9                 1        0     250
0-6 months    MAL-ED           PERU                           10                0       13     250
0-6 months    MAL-ED           PERU                           10                1        0     250
0-6 months    MAL-ED           PERU                           11                0       99     250
0-6 months    MAL-ED           PERU                           11                1        0     250
0-6 months    MAL-ED           PERU                           12                0        1     250
0-6 months    MAL-ED           PERU                           12                1        0     250
0-6 months    MAL-ED           PERU                           13                0        5     250
0-6 months    MAL-ED           PERU                           13                1        0     250
0-6 months    MAL-ED           PERU                           14                0        5     250
0-6 months    MAL-ED           PERU                           14                1        0     250
0-6 months    MAL-ED           PERU                           15                0        1     250
0-6 months    MAL-ED           PERU                           15                1        0     250
0-6 months    MAL-ED           PERU                           16                0        1     250
0-6 months    MAL-ED           PERU                           16                1        0     250
0-6 months    MAL-ED           PERU                           17                0        1     250
0-6 months    MAL-ED           PERU                           17                1        0     250
0-6 months    MAL-ED           PERU                           18                0        5     250
0-6 months    MAL-ED           PERU                           18                1        0     250
0-6 months    MAL-ED           PERU                           19                0        0     250
0-6 months    MAL-ED           PERU                           19                1        0     250
0-6 months    MAL-ED           PERU                           20                0        2     250
0-6 months    MAL-ED           PERU                           20                1        0     250
0-6 months    MAL-ED           PERU                           21                0        0     250
0-6 months    MAL-ED           PERU                           21                1        0     250
0-6 months    MAL-ED           PERU                           24                0        0     250
0-6 months    MAL-ED           PERU                           24                1        0     250
0-6 months    MAL-ED           PERU                           25                0        0     250
0-6 months    MAL-ED           PERU                           25                1        0     250
0-6 months    MAL-ED           PERU                           27                0        0     250
0-6 months    MAL-ED           PERU                           27                1        0     250
0-6 months    MAL-ED           SOUTH AFRICA                   0                 0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   0                 1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   1                 0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   1                 1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   2                 0        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   2                 1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   3                 0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   3                 1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   4                 0        4     110
0-6 months    MAL-ED           SOUTH AFRICA                   4                 1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   5                 0        2     110
0-6 months    MAL-ED           SOUTH AFRICA                   5                 1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   6                 0        6     110
0-6 months    MAL-ED           SOUTH AFRICA                   6                 1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   7                 0        6     110
0-6 months    MAL-ED           SOUTH AFRICA                   7                 1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   8                 0       11     110
0-6 months    MAL-ED           SOUTH AFRICA                   8                 1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   9                 0        7     110
0-6 months    MAL-ED           SOUTH AFRICA                   9                 1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   10                0       10     110
0-6 months    MAL-ED           SOUTH AFRICA                   10                1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   11                0       20     110
0-6 months    MAL-ED           SOUTH AFRICA                   11                1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   12                0       35     110
0-6 months    MAL-ED           SOUTH AFRICA                   12                1        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   13                0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   13                1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   14                0        3     110
0-6 months    MAL-ED           SOUTH AFRICA                   14                1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   15                0        3     110
0-6 months    MAL-ED           SOUTH AFRICA                   15                1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   16                0        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   16                1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   17                0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   17                1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   18                0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   18                1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   19                0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   19                1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   20                0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   20                1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   21                0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   21                1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   24                0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   24                1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   25                0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   25                1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   27                0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   27                1        0     110
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       13     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        1     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 0       13     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 0       18     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 0       16     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 0       12     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 0        8     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 0      116     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 1        2     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 0        1     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 0        2     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                0        4     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                0        3     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                0        2     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                1        0     211
0-6 months    NIH-Crypto       BANGLADESH                     0                 0      168     758
0-6 months    NIH-Crypto       BANGLADESH                     0                 1        6     758
0-6 months    NIH-Crypto       BANGLADESH                     1                 0       21     758
0-6 months    NIH-Crypto       BANGLADESH                     1                 1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     2                 0       13     758
0-6 months    NIH-Crypto       BANGLADESH                     2                 1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     3                 0       32     758
0-6 months    NIH-Crypto       BANGLADESH                     3                 1        2     758
0-6 months    NIH-Crypto       BANGLADESH                     4                 0       40     758
0-6 months    NIH-Crypto       BANGLADESH                     4                 1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     5                 0       85     758
0-6 months    NIH-Crypto       BANGLADESH                     5                 1        3     758
0-6 months    NIH-Crypto       BANGLADESH                     6                 0       35     758
0-6 months    NIH-Crypto       BANGLADESH                     6                 1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     7                 0       56     758
0-6 months    NIH-Crypto       BANGLADESH                     7                 1        1     758
0-6 months    NIH-Crypto       BANGLADESH                     8                 0       87     758
0-6 months    NIH-Crypto       BANGLADESH                     8                 1        3     758
0-6 months    NIH-Crypto       BANGLADESH                     9                 0       86     758
0-6 months    NIH-Crypto       BANGLADESH                     9                 1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     10                0       54     758
0-6 months    NIH-Crypto       BANGLADESH                     10                1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     11                0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     11                1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     12                0       34     758
0-6 months    NIH-Crypto       BANGLADESH                     12                1        1     758
0-6 months    NIH-Crypto       BANGLADESH                     13                0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     13                1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     14                0        8     758
0-6 months    NIH-Crypto       BANGLADESH                     14                1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     15                0       15     758
0-6 months    NIH-Crypto       BANGLADESH                     15                1        1     758
0-6 months    NIH-Crypto       BANGLADESH                     16                0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     16                1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     17                0        7     758
0-6 months    NIH-Crypto       BANGLADESH                     17                1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     18                0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     18                1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     19                0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     19                1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     20                0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     20                1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     21                0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     21                1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     24                0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     24                1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     25                0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     25                1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     27                0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     27                1        0     758
0-6 months    PROBIT           BELARUS                        0                 0        0   16309
0-6 months    PROBIT           BELARUS                        0                 1        0   16309
0-6 months    PROBIT           BELARUS                        1                 0        0   16309
0-6 months    PROBIT           BELARUS                        1                 1        0   16309
0-6 months    PROBIT           BELARUS                        2                 0        0   16309
0-6 months    PROBIT           BELARUS                        2                 1        0   16309
0-6 months    PROBIT           BELARUS                        3                 0        0   16309
0-6 months    PROBIT           BELARUS                        3                 1        0   16309
0-6 months    PROBIT           BELARUS                        4                 0        0   16309
0-6 months    PROBIT           BELARUS                        4                 1        0   16309
0-6 months    PROBIT           BELARUS                        5                 0        0   16309
0-6 months    PROBIT           BELARUS                        5                 1        0   16309
0-6 months    PROBIT           BELARUS                        6                 0        0   16309
0-6 months    PROBIT           BELARUS                        6                 1        0   16309
0-6 months    PROBIT           BELARUS                        7                 0        0   16309
0-6 months    PROBIT           BELARUS                        7                 1        0   16309
0-6 months    PROBIT           BELARUS                        8                 0       27   16309
0-6 months    PROBIT           BELARUS                        8                 1        0   16309
0-6 months    PROBIT           BELARUS                        9                 0        0   16309
0-6 months    PROBIT           BELARUS                        9                 1        0   16309
0-6 months    PROBIT           BELARUS                        10                0      367   16309
0-6 months    PROBIT           BELARUS                        10                1        0   16309
0-6 months    PROBIT           BELARUS                        11                0        0   16309
0-6 months    PROBIT           BELARUS                        11                1        0   16309
0-6 months    PROBIT           BELARUS                        12                0     6018   16309
0-6 months    PROBIT           BELARUS                        12                1        6   16309
0-6 months    PROBIT           BELARUS                        13                0     7179   16309
0-6 months    PROBIT           BELARUS                        13                1        5   16309
0-6 months    PROBIT           BELARUS                        14                0      444   16309
0-6 months    PROBIT           BELARUS                        14                1        0   16309
0-6 months    PROBIT           BELARUS                        15                0        0   16309
0-6 months    PROBIT           BELARUS                        15                1        0   16309
0-6 months    PROBIT           BELARUS                        16                0     2263   16309
0-6 months    PROBIT           BELARUS                        16                1        0   16309
0-6 months    PROBIT           BELARUS                        17                0        0   16309
0-6 months    PROBIT           BELARUS                        17                1        0   16309
0-6 months    PROBIT           BELARUS                        18                0        0   16309
0-6 months    PROBIT           BELARUS                        18                1        0   16309
0-6 months    PROBIT           BELARUS                        19                0        0   16309
0-6 months    PROBIT           BELARUS                        19                1        0   16309
0-6 months    PROBIT           BELARUS                        20                0        0   16309
0-6 months    PROBIT           BELARUS                        20                1        0   16309
0-6 months    PROBIT           BELARUS                        21                0        0   16309
0-6 months    PROBIT           BELARUS                        21                1        0   16309
0-6 months    PROBIT           BELARUS                        24                0        0   16309
0-6 months    PROBIT           BELARUS                        24                1        0   16309
0-6 months    PROBIT           BELARUS                        25                0        0   16309
0-6 months    PROBIT           BELARUS                        25                1        0   16309
0-6 months    PROBIT           BELARUS                        27                0        0   16309
0-6 months    PROBIT           BELARUS                        27                1        0   16309
0-6 months    PROVIDE          BANGLADESH                     0                 0      196     700
0-6 months    PROVIDE          BANGLADESH                     0                 1       11     700
0-6 months    PROVIDE          BANGLADESH                     1                 0       13     700
0-6 months    PROVIDE          BANGLADESH                     1                 1        0     700
0-6 months    PROVIDE          BANGLADESH                     2                 0       16     700
0-6 months    PROVIDE          BANGLADESH                     2                 1        2     700
0-6 months    PROVIDE          BANGLADESH                     3                 0       26     700
0-6 months    PROVIDE          BANGLADESH                     3                 1        1     700
0-6 months    PROVIDE          BANGLADESH                     4                 0       49     700
0-6 months    PROVIDE          BANGLADESH                     4                 1        3     700
0-6 months    PROVIDE          BANGLADESH                     5                 0       77     700
0-6 months    PROVIDE          BANGLADESH                     5                 1        3     700
0-6 months    PROVIDE          BANGLADESH                     6                 0       28     700
0-6 months    PROVIDE          BANGLADESH                     6                 1        1     700
0-6 months    PROVIDE          BANGLADESH                     7                 0       41     700
0-6 months    PROVIDE          BANGLADESH                     7                 1        1     700
0-6 months    PROVIDE          BANGLADESH                     8                 0       63     700
0-6 months    PROVIDE          BANGLADESH                     8                 1        1     700
0-6 months    PROVIDE          BANGLADESH                     9                 0       60     700
0-6 months    PROVIDE          BANGLADESH                     9                 1        2     700
0-6 months    PROVIDE          BANGLADESH                     10                0       36     700
0-6 months    PROVIDE          BANGLADESH                     10                1        3     700
0-6 months    PROVIDE          BANGLADESH                     11                0       26     700
0-6 months    PROVIDE          BANGLADESH                     11                1        0     700
0-6 months    PROVIDE          BANGLADESH                     12                0        4     700
0-6 months    PROVIDE          BANGLADESH                     12                1        0     700
0-6 months    PROVIDE          BANGLADESH                     13                0        0     700
0-6 months    PROVIDE          BANGLADESH                     13                1        0     700
0-6 months    PROVIDE          BANGLADESH                     14                0       18     700
0-6 months    PROVIDE          BANGLADESH                     14                1        1     700
0-6 months    PROVIDE          BANGLADESH                     15                0        8     700
0-6 months    PROVIDE          BANGLADESH                     15                1        0     700
0-6 months    PROVIDE          BANGLADESH                     16                0        8     700
0-6 months    PROVIDE          BANGLADESH                     16                1        1     700
0-6 months    PROVIDE          BANGLADESH                     17                0        0     700
0-6 months    PROVIDE          BANGLADESH                     17                1        0     700
0-6 months    PROVIDE          BANGLADESH                     18                0        0     700
0-6 months    PROVIDE          BANGLADESH                     18                1        0     700
0-6 months    PROVIDE          BANGLADESH                     19                0        1     700
0-6 months    PROVIDE          BANGLADESH                     19                1        0     700
0-6 months    PROVIDE          BANGLADESH                     20                0        0     700
0-6 months    PROVIDE          BANGLADESH                     20                1        0     700
0-6 months    PROVIDE          BANGLADESH                     21                0        0     700
0-6 months    PROVIDE          BANGLADESH                     21                1        0     700
0-6 months    PROVIDE          BANGLADESH                     24                0        0     700
0-6 months    PROVIDE          BANGLADESH                     24                1        0     700
0-6 months    PROVIDE          BANGLADESH                     25                0        0     700
0-6 months    PROVIDE          BANGLADESH                     25                1        0     700
0-6 months    PROVIDE          BANGLADESH                     27                0        0     700
0-6 months    PROVIDE          BANGLADESH                     27                1        0     700
0-6 months    SAS-CompFeed     INDIA                          0                 0      171    1501
0-6 months    SAS-CompFeed     INDIA                          0                 1       19    1501
0-6 months    SAS-CompFeed     INDIA                          1                 0        0    1501
0-6 months    SAS-CompFeed     INDIA                          1                 1        0    1501
0-6 months    SAS-CompFeed     INDIA                          2                 0        6    1501
0-6 months    SAS-CompFeed     INDIA                          2                 1        0    1501
0-6 months    SAS-CompFeed     INDIA                          3                 0       13    1501
0-6 months    SAS-CompFeed     INDIA                          3                 1        1    1501
0-6 months    SAS-CompFeed     INDIA                          4                 0       24    1501
0-6 months    SAS-CompFeed     INDIA                          4                 1        1    1501
0-6 months    SAS-CompFeed     INDIA                          5                 0       82    1501
0-6 months    SAS-CompFeed     INDIA                          5                 1       10    1501
0-6 months    SAS-CompFeed     INDIA                          6                 0       23    1501
0-6 months    SAS-CompFeed     INDIA                          6                 1        4    1501
0-6 months    SAS-CompFeed     INDIA                          7                 0      107    1501
0-6 months    SAS-CompFeed     INDIA                          7                 1       10    1501
0-6 months    SAS-CompFeed     INDIA                          8                 0      161    1501
0-6 months    SAS-CompFeed     INDIA                          8                 1        8    1501
0-6 months    SAS-CompFeed     INDIA                          9                 0       92    1501
0-6 months    SAS-CompFeed     INDIA                          9                 1        6    1501
0-6 months    SAS-CompFeed     INDIA                          10                0      346    1501
0-6 months    SAS-CompFeed     INDIA                          10                1       33    1501
0-6 months    SAS-CompFeed     INDIA                          11                0       39    1501
0-6 months    SAS-CompFeed     INDIA                          11                1        1    1501
0-6 months    SAS-CompFeed     INDIA                          12                0      217    1501
0-6 months    SAS-CompFeed     INDIA                          12                1       10    1501
0-6 months    SAS-CompFeed     INDIA                          13                0        7    1501
0-6 months    SAS-CompFeed     INDIA                          13                1        0    1501
0-6 months    SAS-CompFeed     INDIA                          14                0       17    1501
0-6 months    SAS-CompFeed     INDIA                          14                1        0    1501
0-6 months    SAS-CompFeed     INDIA                          15                0       60    1501
0-6 months    SAS-CompFeed     INDIA                          15                1        3    1501
0-6 months    SAS-CompFeed     INDIA                          16                0       10    1501
0-6 months    SAS-CompFeed     INDIA                          16                1        0    1501
0-6 months    SAS-CompFeed     INDIA                          17                0       15    1501
0-6 months    SAS-CompFeed     INDIA                          17                1        0    1501
0-6 months    SAS-CompFeed     INDIA                          18                0        3    1501
0-6 months    SAS-CompFeed     INDIA                          18                1        0    1501
0-6 months    SAS-CompFeed     INDIA                          19                0        1    1501
0-6 months    SAS-CompFeed     INDIA                          19                1        0    1501
0-6 months    SAS-CompFeed     INDIA                          20                0        1    1501
0-6 months    SAS-CompFeed     INDIA                          20                1        0    1501
0-6 months    SAS-CompFeed     INDIA                          21                0        0    1501
0-6 months    SAS-CompFeed     INDIA                          21                1        0    1501
0-6 months    SAS-CompFeed     INDIA                          24                0        0    1501
0-6 months    SAS-CompFeed     INDIA                          24                1        0    1501
0-6 months    SAS-CompFeed     INDIA                          25                0        0    1501
0-6 months    SAS-CompFeed     INDIA                          25                1        0    1501
0-6 months    SAS-CompFeed     INDIA                          27                0        0    1501
0-6 months    SAS-CompFeed     INDIA                          27                1        0    1501
0-6 months    SAS-FoodSuppl    INDIA                          0                 0      136     416
0-6 months    SAS-FoodSuppl    INDIA                          0                 1       10     416
0-6 months    SAS-FoodSuppl    INDIA                          1                 0        1     416
0-6 months    SAS-FoodSuppl    INDIA                          1                 1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          2                 0        8     416
0-6 months    SAS-FoodSuppl    INDIA                          2                 1        1     416
0-6 months    SAS-FoodSuppl    INDIA                          3                 0        7     416
0-6 months    SAS-FoodSuppl    INDIA                          3                 1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          4                 0       10     416
0-6 months    SAS-FoodSuppl    INDIA                          4                 1        1     416
0-6 months    SAS-FoodSuppl    INDIA                          5                 0       48     416
0-6 months    SAS-FoodSuppl    INDIA                          5                 1        7     416
0-6 months    SAS-FoodSuppl    INDIA                          6                 0       10     416
0-6 months    SAS-FoodSuppl    INDIA                          6                 1        2     416
0-6 months    SAS-FoodSuppl    INDIA                          7                 0       14     416
0-6 months    SAS-FoodSuppl    INDIA                          7                 1        2     416
0-6 months    SAS-FoodSuppl    INDIA                          8                 0       46     416
0-6 months    SAS-FoodSuppl    INDIA                          8                 1        3     416
0-6 months    SAS-FoodSuppl    INDIA                          9                 0       25     416
0-6 months    SAS-FoodSuppl    INDIA                          9                 1        1     416
0-6 months    SAS-FoodSuppl    INDIA                          10                0       56     416
0-6 months    SAS-FoodSuppl    INDIA                          10                1        4     416
0-6 months    SAS-FoodSuppl    INDIA                          11                0        3     416
0-6 months    SAS-FoodSuppl    INDIA                          11                1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          12                0       10     416
0-6 months    SAS-FoodSuppl    INDIA                          12                1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          13                0        1     416
0-6 months    SAS-FoodSuppl    INDIA                          13                1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          14                0        6     416
0-6 months    SAS-FoodSuppl    INDIA                          14                1        1     416
0-6 months    SAS-FoodSuppl    INDIA                          15                0        3     416
0-6 months    SAS-FoodSuppl    INDIA                          15                1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          16                0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          16                1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          17                0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          17                1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          18                0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          18                1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          19                0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          19                1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          20                0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          20                1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          21                0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          21                1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          24                0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          24                1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          25                0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          25                1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          27                0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          27                1        0     416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0        5    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 0        6    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 0        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 0     1243    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 1       15    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 0        9    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 0       53    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                0       24    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                0      576    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                1        2    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                0       17    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                0      117    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                0       15    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                0       23    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                0       28    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                0       23    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                0        5    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                0        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                0       15    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                1        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                0        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                0      202    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                1        1    2383
0-6 months    ZVITAMBO         ZIMBABWE                       0                 0       59   13471
0-6 months    ZVITAMBO         ZIMBABWE                       0                 1        1   13471
0-6 months    ZVITAMBO         ZIMBABWE                       1                 0        1   13471
0-6 months    ZVITAMBO         ZIMBABWE                       1                 1        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       2                 0        5   13471
0-6 months    ZVITAMBO         ZIMBABWE                       2                 1        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       3                 0       15   13471
0-6 months    ZVITAMBO         ZIMBABWE                       3                 1        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       4                 0       23   13471
0-6 months    ZVITAMBO         ZIMBABWE                       4                 1        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       5                 0       30   13471
0-6 months    ZVITAMBO         ZIMBABWE                       5                 1        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       6                 0       40   13471
0-6 months    ZVITAMBO         ZIMBABWE                       6                 1        3   13471
0-6 months    ZVITAMBO         ZIMBABWE                       7                 0      762   13471
0-6 months    ZVITAMBO         ZIMBABWE                       7                 1       16   13471
0-6 months    ZVITAMBO         ZIMBABWE                       8                 0      101   13471
0-6 months    ZVITAMBO         ZIMBABWE                       8                 1        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       9                 0      875   13471
0-6 months    ZVITAMBO         ZIMBABWE                       9                 1       11   13471
0-6 months    ZVITAMBO         ZIMBABWE                       10                0      318   13471
0-6 months    ZVITAMBO         ZIMBABWE                       10                1        5   13471
0-6 months    ZVITAMBO         ZIMBABWE                       11                0    10101   13471
0-6 months    ZVITAMBO         ZIMBABWE                       11                1      120   13471
0-6 months    ZVITAMBO         ZIMBABWE                       12                0       58   13471
0-6 months    ZVITAMBO         ZIMBABWE                       12                1        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       13                0      920   13471
0-6 months    ZVITAMBO         ZIMBABWE                       13                1        7   13471
0-6 months    ZVITAMBO         ZIMBABWE                       14                0        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       14                1        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       15                0        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       15                1        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       16                0        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       16                1        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       17                0        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       17                1        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       18                0        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       18                1        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       19                0        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       19                1        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       20                0        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       20                1        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       21                0        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       21                1        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       24                0        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       24                1        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       25                0        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       25                1        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       27                0        0   13471
0-6 months    ZVITAMBO         ZIMBABWE                       27                1        0   13471
6-24 months   COHORTS          GUATEMALA                      0                 0      454    1124
6-24 months   COHORTS          GUATEMALA                      0                 1       57    1124
6-24 months   COHORTS          GUATEMALA                      1                 0       50    1124
6-24 months   COHORTS          GUATEMALA                      1                 1       10    1124
6-24 months   COHORTS          GUATEMALA                      2                 0      176    1124
6-24 months   COHORTS          GUATEMALA                      2                 1       19    1124
6-24 months   COHORTS          GUATEMALA                      3                 0      131    1124
6-24 months   COHORTS          GUATEMALA                      3                 1       17    1124
6-24 months   COHORTS          GUATEMALA                      4                 0       60    1124
6-24 months   COHORTS          GUATEMALA                      4                 1       12    1124
6-24 months   COHORTS          GUATEMALA                      5                 0       22    1124
6-24 months   COHORTS          GUATEMALA                      5                 1        4    1124
6-24 months   COHORTS          GUATEMALA                      6                 0       88    1124
6-24 months   COHORTS          GUATEMALA                      6                 1       10    1124
6-24 months   COHORTS          GUATEMALA                      7                 0        4    1124
6-24 months   COHORTS          GUATEMALA                      7                 1        0    1124
6-24 months   COHORTS          GUATEMALA                      8                 0        1    1124
6-24 months   COHORTS          GUATEMALA                      8                 1        0    1124
6-24 months   COHORTS          GUATEMALA                      9                 0        1    1124
6-24 months   COHORTS          GUATEMALA                      9                 1        0    1124
6-24 months   COHORTS          GUATEMALA                      10                0        1    1124
6-24 months   COHORTS          GUATEMALA                      10                1        0    1124
6-24 months   COHORTS          GUATEMALA                      11                0        0    1124
6-24 months   COHORTS          GUATEMALA                      11                1        0    1124
6-24 months   COHORTS          GUATEMALA                      12                0        5    1124
6-24 months   COHORTS          GUATEMALA                      12                1        0    1124
6-24 months   COHORTS          GUATEMALA                      13                0        0    1124
6-24 months   COHORTS          GUATEMALA                      13                1        0    1124
6-24 months   COHORTS          GUATEMALA                      14                0        1    1124
6-24 months   COHORTS          GUATEMALA                      14                1        0    1124
6-24 months   COHORTS          GUATEMALA                      15                0        1    1124
6-24 months   COHORTS          GUATEMALA                      15                1        0    1124
6-24 months   COHORTS          GUATEMALA                      16                0        0    1124
6-24 months   COHORTS          GUATEMALA                      16                1        0    1124
6-24 months   COHORTS          GUATEMALA                      17                0        0    1124
6-24 months   COHORTS          GUATEMALA                      17                1        0    1124
6-24 months   COHORTS          GUATEMALA                      18                0        0    1124
6-24 months   COHORTS          GUATEMALA                      18                1        0    1124
6-24 months   COHORTS          GUATEMALA                      19                0        0    1124
6-24 months   COHORTS          GUATEMALA                      19                1        0    1124
6-24 months   COHORTS          GUATEMALA                      20                0        0    1124
6-24 months   COHORTS          GUATEMALA                      20                1        0    1124
6-24 months   COHORTS          GUATEMALA                      21                0        0    1124
6-24 months   COHORTS          GUATEMALA                      21                1        0    1124
6-24 months   COHORTS          GUATEMALA                      24                0        0    1124
6-24 months   COHORTS          GUATEMALA                      24                1        0    1124
6-24 months   COHORTS          GUATEMALA                      25                0        0    1124
6-24 months   COHORTS          GUATEMALA                      25                1        0    1124
6-24 months   COHORTS          GUATEMALA                      27                0        0    1124
6-24 months   COHORTS          GUATEMALA                      27                1        0    1124
6-24 months   COHORTS          INDIA                          0                 0       98    1405
6-24 months   COHORTS          INDIA                          0                 1       24    1405
6-24 months   COHORTS          INDIA                          1                 0        0    1405
6-24 months   COHORTS          INDIA                          1                 1        0    1405
6-24 months   COHORTS          INDIA                          2                 0        0    1405
6-24 months   COHORTS          INDIA                          2                 1        0    1405
6-24 months   COHORTS          INDIA                          3                 0      119    1405
6-24 months   COHORTS          INDIA                          3                 1       11    1405
6-24 months   COHORTS          INDIA                          4                 0        0    1405
6-24 months   COHORTS          INDIA                          4                 1        0    1405
6-24 months   COHORTS          INDIA                          5                 0        0    1405
6-24 months   COHORTS          INDIA                          5                 1        0    1405
6-24 months   COHORTS          INDIA                          6                 0        0    1405
6-24 months   COHORTS          INDIA                          6                 1        0    1405
6-24 months   COHORTS          INDIA                          7                 0        0    1405
6-24 months   COHORTS          INDIA                          7                 1        0    1405
6-24 months   COHORTS          INDIA                          8                 0      186    1405
6-24 months   COHORTS          INDIA                          8                 1       21    1405
6-24 months   COHORTS          INDIA                          9                 0        0    1405
6-24 months   COHORTS          INDIA                          9                 1        0    1405
6-24 months   COHORTS          INDIA                          10                0        0    1405
6-24 months   COHORTS          INDIA                          10                1        0    1405
6-24 months   COHORTS          INDIA                          11                0        0    1405
6-24 months   COHORTS          INDIA                          11                1        0    1405
6-24 months   COHORTS          INDIA                          12                0      379    1405
6-24 months   COHORTS          INDIA                          12                1       18    1405
6-24 months   COHORTS          INDIA                          13                0        0    1405
6-24 months   COHORTS          INDIA                          13                1        0    1405
6-24 months   COHORTS          INDIA                          14                0      145    1405
6-24 months   COHORTS          INDIA                          14                1        8    1405
6-24 months   COHORTS          INDIA                          15                0      263    1405
6-24 months   COHORTS          INDIA                          15                1       12    1405
6-24 months   COHORTS          INDIA                          16                0        0    1405
6-24 months   COHORTS          INDIA                          16                1        0    1405
6-24 months   COHORTS          INDIA                          17                0      117    1405
6-24 months   COHORTS          INDIA                          17                1        4    1405
6-24 months   COHORTS          INDIA                          18                0        0    1405
6-24 months   COHORTS          INDIA                          18                1        0    1405
6-24 months   COHORTS          INDIA                          19                0        0    1405
6-24 months   COHORTS          INDIA                          19                1        0    1405
6-24 months   COHORTS          INDIA                          20                0        0    1405
6-24 months   COHORTS          INDIA                          20                1        0    1405
6-24 months   COHORTS          INDIA                          21                0        0    1405
6-24 months   COHORTS          INDIA                          21                1        0    1405
6-24 months   COHORTS          INDIA                          24                0        0    1405
6-24 months   COHORTS          INDIA                          24                1        0    1405
6-24 months   COHORTS          INDIA                          25                0        0    1405
6-24 months   COHORTS          INDIA                          25                1        0    1405
6-24 months   COHORTS          INDIA                          27                0        0    1405
6-24 months   COHORTS          INDIA                          27                1        0    1405
6-24 months   COHORTS          PHILIPPINES                    0                 0       36    2654
6-24 months   COHORTS          PHILIPPINES                    0                 1       20    2654
6-24 months   COHORTS          PHILIPPINES                    1                 0       23    2654
6-24 months   COHORTS          PHILIPPINES                    1                 1       11    2654
6-24 months   COHORTS          PHILIPPINES                    2                 0       66    2654
6-24 months   COHORTS          PHILIPPINES                    2                 1       26    2654
6-24 months   COHORTS          PHILIPPINES                    3                 0      120    2654
6-24 months   COHORTS          PHILIPPINES                    3                 1       39    2654
6-24 months   COHORTS          PHILIPPINES                    4                 0      186    2654
6-24 months   COHORTS          PHILIPPINES                    4                 1       59    2654
6-24 months   COHORTS          PHILIPPINES                    5                 0      146    2654
6-24 months   COHORTS          PHILIPPINES                    5                 1       46    2654
6-24 months   COHORTS          PHILIPPINES                    6                 0      475    2654
6-24 months   COHORTS          PHILIPPINES                    6                 1      135    2654
6-24 months   COHORTS          PHILIPPINES                    7                 0      108    2654
6-24 months   COHORTS          PHILIPPINES                    7                 1       29    2654
6-24 months   COHORTS          PHILIPPINES                    8                 0      168    2654
6-24 months   COHORTS          PHILIPPINES                    8                 1       39    2654
6-24 months   COHORTS          PHILIPPINES                    9                 0      151    2654
6-24 months   COHORTS          PHILIPPINES                    9                 1       27    2654
6-24 months   COHORTS          PHILIPPINES                    10                0      262    2654
6-24 months   COHORTS          PHILIPPINES                    10                1       42    2654
6-24 months   COHORTS          PHILIPPINES                    11                0       51    2654
6-24 months   COHORTS          PHILIPPINES                    11                1       10    2654
6-24 months   COHORTS          PHILIPPINES                    12                0      141    2654
6-24 months   COHORTS          PHILIPPINES                    12                1       12    2654
6-24 months   COHORTS          PHILIPPINES                    13                0       54    2654
6-24 months   COHORTS          PHILIPPINES                    13                1        4    2654
6-24 months   COHORTS          PHILIPPINES                    14                0      118    2654
6-24 months   COHORTS          PHILIPPINES                    14                1        8    2654
6-24 months   COHORTS          PHILIPPINES                    15                0       31    2654
6-24 months   COHORTS          PHILIPPINES                    15                1        2    2654
6-24 months   COHORTS          PHILIPPINES                    16                0        5    2654
6-24 months   COHORTS          PHILIPPINES                    16                1        0    2654
6-24 months   COHORTS          PHILIPPINES                    17                0        2    2654
6-24 months   COHORTS          PHILIPPINES                    17                1        0    2654
6-24 months   COHORTS          PHILIPPINES                    18                0        2    2654
6-24 months   COHORTS          PHILIPPINES                    18                1        0    2654
6-24 months   COHORTS          PHILIPPINES                    19                0        0    2654
6-24 months   COHORTS          PHILIPPINES                    19                1        0    2654
6-24 months   COHORTS          PHILIPPINES                    20                0        0    2654
6-24 months   COHORTS          PHILIPPINES                    20                1        0    2654
6-24 months   COHORTS          PHILIPPINES                    21                0        0    2654
6-24 months   COHORTS          PHILIPPINES                    21                1        0    2654
6-24 months   COHORTS          PHILIPPINES                    24                0        0    2654
6-24 months   COHORTS          PHILIPPINES                    24                1        0    2654
6-24 months   COHORTS          PHILIPPINES                    25                0        0    2654
6-24 months   COHORTS          PHILIPPINES                    25                1        0    2654
6-24 months   COHORTS          PHILIPPINES                    27                0        0    2654
6-24 months   COHORTS          PHILIPPINES                    27                1        0    2654
6-24 months   GMS-Nepal        NEPAL                          0                 0      160     589
6-24 months   GMS-Nepal        NEPAL                          0                 1       93     589
6-24 months   GMS-Nepal        NEPAL                          1                 0        0     589
6-24 months   GMS-Nepal        NEPAL                          1                 1        0     589
6-24 months   GMS-Nepal        NEPAL                          2                 0        0     589
6-24 months   GMS-Nepal        NEPAL                          2                 1        0     589
6-24 months   GMS-Nepal        NEPAL                          3                 0        0     589
6-24 months   GMS-Nepal        NEPAL                          3                 1        0     589
6-24 months   GMS-Nepal        NEPAL                          4                 0        0     589
6-24 months   GMS-Nepal        NEPAL                          4                 1        0     589
6-24 months   GMS-Nepal        NEPAL                          5                 0       65     589
6-24 months   GMS-Nepal        NEPAL                          5                 1       28     589
6-24 months   GMS-Nepal        NEPAL                          6                 0        0     589
6-24 months   GMS-Nepal        NEPAL                          6                 1        0     589
6-24 months   GMS-Nepal        NEPAL                          7                 0        0     589
6-24 months   GMS-Nepal        NEPAL                          7                 1        0     589
6-24 months   GMS-Nepal        NEPAL                          8                 0       66     589
6-24 months   GMS-Nepal        NEPAL                          8                 1       32     589
6-24 months   GMS-Nepal        NEPAL                          9                 0        0     589
6-24 months   GMS-Nepal        NEPAL                          9                 1        0     589
6-24 months   GMS-Nepal        NEPAL                          10                0       77     589
6-24 months   GMS-Nepal        NEPAL                          10                1       32     589
6-24 months   GMS-Nepal        NEPAL                          11                0        0     589
6-24 months   GMS-Nepal        NEPAL                          11                1        0     589
6-24 months   GMS-Nepal        NEPAL                          12                0       29     589
6-24 months   GMS-Nepal        NEPAL                          12                1        7     589
6-24 months   GMS-Nepal        NEPAL                          13                0        0     589
6-24 months   GMS-Nepal        NEPAL                          13                1        0     589
6-24 months   GMS-Nepal        NEPAL                          14                0        0     589
6-24 months   GMS-Nepal        NEPAL                          14                1        0     589
6-24 months   GMS-Nepal        NEPAL                          15                0        0     589
6-24 months   GMS-Nepal        NEPAL                          15                1        0     589
6-24 months   GMS-Nepal        NEPAL                          16                0        0     589
6-24 months   GMS-Nepal        NEPAL                          16                1        0     589
6-24 months   GMS-Nepal        NEPAL                          17                0        0     589
6-24 months   GMS-Nepal        NEPAL                          17                1        0     589
6-24 months   GMS-Nepal        NEPAL                          18                0        0     589
6-24 months   GMS-Nepal        NEPAL                          18                1        0     589
6-24 months   GMS-Nepal        NEPAL                          19                0        0     589
6-24 months   GMS-Nepal        NEPAL                          19                1        0     589
6-24 months   GMS-Nepal        NEPAL                          20                0        0     589
6-24 months   GMS-Nepal        NEPAL                          20                1        0     589
6-24 months   GMS-Nepal        NEPAL                          21                0        0     589
6-24 months   GMS-Nepal        NEPAL                          21                1        0     589
6-24 months   GMS-Nepal        NEPAL                          24                0        0     589
6-24 months   GMS-Nepal        NEPAL                          24                1        0     589
6-24 months   GMS-Nepal        NEPAL                          25                0        0     589
6-24 months   GMS-Nepal        NEPAL                          25                1        0     589
6-24 months   GMS-Nepal        NEPAL                          27                0        0     589
6-24 months   GMS-Nepal        NEPAL                          27                1        0     589
6-24 months   LCNI-5           MALAWI                         0                 0      272     802
6-24 months   LCNI-5           MALAWI                         0                 1       17     802
6-24 months   LCNI-5           MALAWI                         1                 0       11     802
6-24 months   LCNI-5           MALAWI                         1                 1        0     802
6-24 months   LCNI-5           MALAWI                         2                 0       30     802
6-24 months   LCNI-5           MALAWI                         2                 1        2     802
6-24 months   LCNI-5           MALAWI                         3                 0       36     802
6-24 months   LCNI-5           MALAWI                         3                 1        2     802
6-24 months   LCNI-5           MALAWI                         4                 0       56     802
6-24 months   LCNI-5           MALAWI                         4                 1        3     802
6-24 months   LCNI-5           MALAWI                         5                 0       56     802
6-24 months   LCNI-5           MALAWI                         5                 1        2     802
6-24 months   LCNI-5           MALAWI                         6                 0       65     802
6-24 months   LCNI-5           MALAWI                         6                 1        3     802
6-24 months   LCNI-5           MALAWI                         7                 0       62     802
6-24 months   LCNI-5           MALAWI                         7                 1        4     802
6-24 months   LCNI-5           MALAWI                         8                 0       83     802
6-24 months   LCNI-5           MALAWI                         8                 1        6     802
6-24 months   LCNI-5           MALAWI                         9                 0       12     802
6-24 months   LCNI-5           MALAWI                         9                 1        0     802
6-24 months   LCNI-5           MALAWI                         10                0       16     802
6-24 months   LCNI-5           MALAWI                         10                1        0     802
6-24 months   LCNI-5           MALAWI                         11                0        7     802
6-24 months   LCNI-5           MALAWI                         11                1        0     802
6-24 months   LCNI-5           MALAWI                         12                0       50     802
6-24 months   LCNI-5           MALAWI                         12                1        2     802
6-24 months   LCNI-5           MALAWI                         13                0        1     802
6-24 months   LCNI-5           MALAWI                         13                1        0     802
6-24 months   LCNI-5           MALAWI                         14                0        3     802
6-24 months   LCNI-5           MALAWI                         14                1        0     802
6-24 months   LCNI-5           MALAWI                         15                0        0     802
6-24 months   LCNI-5           MALAWI                         15                1        0     802
6-24 months   LCNI-5           MALAWI                         16                0        1     802
6-24 months   LCNI-5           MALAWI                         16                1        0     802
6-24 months   LCNI-5           MALAWI                         17                0        0     802
6-24 months   LCNI-5           MALAWI                         17                1        0     802
6-24 months   LCNI-5           MALAWI                         18                0        0     802
6-24 months   LCNI-5           MALAWI                         18                1        0     802
6-24 months   LCNI-5           MALAWI                         19                0        0     802
6-24 months   LCNI-5           MALAWI                         19                1        0     802
6-24 months   LCNI-5           MALAWI                         20                0        0     802
6-24 months   LCNI-5           MALAWI                         20                1        0     802
6-24 months   LCNI-5           MALAWI                         21                0        0     802
6-24 months   LCNI-5           MALAWI                         21                1        0     802
6-24 months   LCNI-5           MALAWI                         24                0        0     802
6-24 months   LCNI-5           MALAWI                         24                1        0     802
6-24 months   LCNI-5           MALAWI                         25                0        0     802
6-24 months   LCNI-5           MALAWI                         25                1        0     802
6-24 months   LCNI-5           MALAWI                         27                0        0     802
6-24 months   LCNI-5           MALAWI                         27                1        0     802
6-24 months   MAL-ED           BANGLADESH                     0                 0        0     131
6-24 months   MAL-ED           BANGLADESH                     0                 1        0     131
6-24 months   MAL-ED           BANGLADESH                     1                 0        6     131
6-24 months   MAL-ED           BANGLADESH                     1                 1        1     131
6-24 months   MAL-ED           BANGLADESH                     2                 0       12     131
6-24 months   MAL-ED           BANGLADESH                     2                 1        0     131
6-24 months   MAL-ED           BANGLADESH                     3                 0        8     131
6-24 months   MAL-ED           BANGLADESH                     3                 1        4     131
6-24 months   MAL-ED           BANGLADESH                     4                 0        5     131
6-24 months   MAL-ED           BANGLADESH                     4                 1        1     131
6-24 months   MAL-ED           BANGLADESH                     5                 0       22     131
6-24 months   MAL-ED           BANGLADESH                     5                 1        7     131
6-24 months   MAL-ED           BANGLADESH                     6                 0        7     131
6-24 months   MAL-ED           BANGLADESH                     6                 1        1     131
6-24 months   MAL-ED           BANGLADESH                     7                 0        8     131
6-24 months   MAL-ED           BANGLADESH                     7                 1        1     131
6-24 months   MAL-ED           BANGLADESH                     8                 0       15     131
6-24 months   MAL-ED           BANGLADESH                     8                 1        1     131
6-24 months   MAL-ED           BANGLADESH                     9                 0       11     131
6-24 months   MAL-ED           BANGLADESH                     9                 1        2     131
6-24 months   MAL-ED           BANGLADESH                     10                0        8     131
6-24 months   MAL-ED           BANGLADESH                     10                1        0     131
6-24 months   MAL-ED           BANGLADESH                     11                0        0     131
6-24 months   MAL-ED           BANGLADESH                     11                1        0     131
6-24 months   MAL-ED           BANGLADESH                     12                0        9     131
6-24 months   MAL-ED           BANGLADESH                     12                1        0     131
6-24 months   MAL-ED           BANGLADESH                     13                0        0     131
6-24 months   MAL-ED           BANGLADESH                     13                1        0     131
6-24 months   MAL-ED           BANGLADESH                     14                0        0     131
6-24 months   MAL-ED           BANGLADESH                     14                1        0     131
6-24 months   MAL-ED           BANGLADESH                     15                0        0     131
6-24 months   MAL-ED           BANGLADESH                     15                1        0     131
6-24 months   MAL-ED           BANGLADESH                     16                0        2     131
6-24 months   MAL-ED           BANGLADESH                     16                1        0     131
6-24 months   MAL-ED           BANGLADESH                     17                0        0     131
6-24 months   MAL-ED           BANGLADESH                     17                1        0     131
6-24 months   MAL-ED           BANGLADESH                     18                0        0     131
6-24 months   MAL-ED           BANGLADESH                     18                1        0     131
6-24 months   MAL-ED           BANGLADESH                     19                0        0     131
6-24 months   MAL-ED           BANGLADESH                     19                1        0     131
6-24 months   MAL-ED           BANGLADESH                     20                0        0     131
6-24 months   MAL-ED           BANGLADESH                     20                1        0     131
6-24 months   MAL-ED           BANGLADESH                     21                0        0     131
6-24 months   MAL-ED           BANGLADESH                     21                1        0     131
6-24 months   MAL-ED           BANGLADESH                     24                0        0     131
6-24 months   MAL-ED           BANGLADESH                     24                1        0     131
6-24 months   MAL-ED           BANGLADESH                     25                0        0     131
6-24 months   MAL-ED           BANGLADESH                     25                1        0     131
6-24 months   MAL-ED           BANGLADESH                     27                0        0     131
6-24 months   MAL-ED           BANGLADESH                     27                1        0     131
6-24 months   MAL-ED           INDIA                          0                 0        0     137
6-24 months   MAL-ED           INDIA                          0                 1        0     137
6-24 months   MAL-ED           INDIA                          1                 0        0     137
6-24 months   MAL-ED           INDIA                          1                 1        0     137
6-24 months   MAL-ED           INDIA                          2                 0        6     137
6-24 months   MAL-ED           INDIA                          2                 1        0     137
6-24 months   MAL-ED           INDIA                          3                 0        8     137
6-24 months   MAL-ED           INDIA                          3                 1        1     137
6-24 months   MAL-ED           INDIA                          4                 0        4     137
6-24 months   MAL-ED           INDIA                          4                 1        2     137
6-24 months   MAL-ED           INDIA                          5                 0       23     137
6-24 months   MAL-ED           INDIA                          5                 1       10     137
6-24 months   MAL-ED           INDIA                          6                 0        8     137
6-24 months   MAL-ED           INDIA                          6                 1        2     137
6-24 months   MAL-ED           INDIA                          7                 0       10     137
6-24 months   MAL-ED           INDIA                          7                 1        1     137
6-24 months   MAL-ED           INDIA                          8                 0       14     137
6-24 months   MAL-ED           INDIA                          8                 1        5     137
6-24 months   MAL-ED           INDIA                          9                 0       21     137
6-24 months   MAL-ED           INDIA                          9                 1        5     137
6-24 months   MAL-ED           INDIA                          10                0        5     137
6-24 months   MAL-ED           INDIA                          10                1        1     137
6-24 months   MAL-ED           INDIA                          11                0        1     137
6-24 months   MAL-ED           INDIA                          11                1        1     137
6-24 months   MAL-ED           INDIA                          12                0        3     137
6-24 months   MAL-ED           INDIA                          12                1        0     137
6-24 months   MAL-ED           INDIA                          13                0        1     137
6-24 months   MAL-ED           INDIA                          13                1        0     137
6-24 months   MAL-ED           INDIA                          14                0        2     137
6-24 months   MAL-ED           INDIA                          14                1        0     137
6-24 months   MAL-ED           INDIA                          15                0        2     137
6-24 months   MAL-ED           INDIA                          15                1        0     137
6-24 months   MAL-ED           INDIA                          16                0        0     137
6-24 months   MAL-ED           INDIA                          16                1        0     137
6-24 months   MAL-ED           INDIA                          17                0        0     137
6-24 months   MAL-ED           INDIA                          17                1        0     137
6-24 months   MAL-ED           INDIA                          18                0        1     137
6-24 months   MAL-ED           INDIA                          18                1        0     137
6-24 months   MAL-ED           INDIA                          19                0        0     137
6-24 months   MAL-ED           INDIA                          19                1        0     137
6-24 months   MAL-ED           INDIA                          20                0        0     137
6-24 months   MAL-ED           INDIA                          20                1        0     137
6-24 months   MAL-ED           INDIA                          21                0        0     137
6-24 months   MAL-ED           INDIA                          21                1        0     137
6-24 months   MAL-ED           INDIA                          24                0        0     137
6-24 months   MAL-ED           INDIA                          24                1        0     137
6-24 months   MAL-ED           INDIA                          25                0        0     137
6-24 months   MAL-ED           INDIA                          25                1        0     137
6-24 months   MAL-ED           INDIA                          27                0        0     137
6-24 months   MAL-ED           INDIA                          27                1        0     137
6-24 months   MAL-ED           NEPAL                          0                 0        0      94
6-24 months   MAL-ED           NEPAL                          0                 1        0      94
6-24 months   MAL-ED           NEPAL                          1                 0        0      94
6-24 months   MAL-ED           NEPAL                          1                 1        0      94
6-24 months   MAL-ED           NEPAL                          2                 0        3      94
6-24 months   MAL-ED           NEPAL                          2                 1        1      94
6-24 months   MAL-ED           NEPAL                          3                 0        3      94
6-24 months   MAL-ED           NEPAL                          3                 1        0      94
6-24 months   MAL-ED           NEPAL                          4                 0        9      94
6-24 months   MAL-ED           NEPAL                          4                 1        1      94
6-24 months   MAL-ED           NEPAL                          5                 0        6      94
6-24 months   MAL-ED           NEPAL                          5                 1        0      94
6-24 months   MAL-ED           NEPAL                          6                 0        4      94
6-24 months   MAL-ED           NEPAL                          6                 1        0      94
6-24 months   MAL-ED           NEPAL                          7                 0        7      94
6-24 months   MAL-ED           NEPAL                          7                 1        2      94
6-24 months   MAL-ED           NEPAL                          8                 0        9      94
6-24 months   MAL-ED           NEPAL                          8                 1        3      94
6-24 months   MAL-ED           NEPAL                          9                 0        7      94
6-24 months   MAL-ED           NEPAL                          9                 1        0      94
6-24 months   MAL-ED           NEPAL                          10                0       24      94
6-24 months   MAL-ED           NEPAL                          10                1        1      94
6-24 months   MAL-ED           NEPAL                          11                0        1      94
6-24 months   MAL-ED           NEPAL                          11                1        0      94
6-24 months   MAL-ED           NEPAL                          12                0        7      94
6-24 months   MAL-ED           NEPAL                          12                1        0      94
6-24 months   MAL-ED           NEPAL                          13                0        0      94
6-24 months   MAL-ED           NEPAL                          13                1        0      94
6-24 months   MAL-ED           NEPAL                          14                0        0      94
6-24 months   MAL-ED           NEPAL                          14                1        0      94
6-24 months   MAL-ED           NEPAL                          15                0        1      94
6-24 months   MAL-ED           NEPAL                          15                1        0      94
6-24 months   MAL-ED           NEPAL                          16                0        1      94
6-24 months   MAL-ED           NEPAL                          16                1        0      94
6-24 months   MAL-ED           NEPAL                          17                0        3      94
6-24 months   MAL-ED           NEPAL                          17                1        0      94
6-24 months   MAL-ED           NEPAL                          18                0        1      94
6-24 months   MAL-ED           NEPAL                          18                1        0      94
6-24 months   MAL-ED           NEPAL                          19                0        0      94
6-24 months   MAL-ED           NEPAL                          19                1        0      94
6-24 months   MAL-ED           NEPAL                          20                0        0      94
6-24 months   MAL-ED           NEPAL                          20                1        0      94
6-24 months   MAL-ED           NEPAL                          21                0        0      94
6-24 months   MAL-ED           NEPAL                          21                1        0      94
6-24 months   MAL-ED           NEPAL                          24                0        0      94
6-24 months   MAL-ED           NEPAL                          24                1        0      94
6-24 months   MAL-ED           NEPAL                          25                0        0      94
6-24 months   MAL-ED           NEPAL                          25                1        0      94
6-24 months   MAL-ED           NEPAL                          27                0        0      94
6-24 months   MAL-ED           NEPAL                          27                1        0      94
6-24 months   MAL-ED           PERU                           0                 0        1     223
6-24 months   MAL-ED           PERU                           0                 1        0     223
6-24 months   MAL-ED           PERU                           1                 0        1     223
6-24 months   MAL-ED           PERU                           1                 1        0     223
6-24 months   MAL-ED           PERU                           2                 0        0     223
6-24 months   MAL-ED           PERU                           2                 1        0     223
6-24 months   MAL-ED           PERU                           3                 0        8     223
6-24 months   MAL-ED           PERU                           3                 1        0     223
6-24 months   MAL-ED           PERU                           4                 0        4     223
6-24 months   MAL-ED           PERU                           4                 1        0     223
6-24 months   MAL-ED           PERU                           5                 0        7     223
6-24 months   MAL-ED           PERU                           5                 1        0     223
6-24 months   MAL-ED           PERU                           6                 0       23     223
6-24 months   MAL-ED           PERU                           6                 1        0     223
6-24 months   MAL-ED           PERU                           7                 0       15     223
6-24 months   MAL-ED           PERU                           7                 1        1     223
6-24 months   MAL-ED           PERU                           8                 0       18     223
6-24 months   MAL-ED           PERU                           8                 1        2     223
6-24 months   MAL-ED           PERU                           9                 0       25     223
6-24 months   MAL-ED           PERU                           9                 1        1     223
6-24 months   MAL-ED           PERU                           10                0       11     223
6-24 months   MAL-ED           PERU                           10                1        0     223
6-24 months   MAL-ED           PERU                           11                0       84     223
6-24 months   MAL-ED           PERU                           11                1        3     223
6-24 months   MAL-ED           PERU                           12                0        0     223
6-24 months   MAL-ED           PERU                           12                1        1     223
6-24 months   MAL-ED           PERU                           13                0        4     223
6-24 months   MAL-ED           PERU                           13                1        0     223
6-24 months   MAL-ED           PERU                           14                0        4     223
6-24 months   MAL-ED           PERU                           14                1        0     223
6-24 months   MAL-ED           PERU                           15                0        1     223
6-24 months   MAL-ED           PERU                           15                1        0     223
6-24 months   MAL-ED           PERU                           16                0        1     223
6-24 months   MAL-ED           PERU                           16                1        0     223
6-24 months   MAL-ED           PERU                           17                0        1     223
6-24 months   MAL-ED           PERU                           17                1        0     223
6-24 months   MAL-ED           PERU                           18                0        5     223
6-24 months   MAL-ED           PERU                           18                1        0     223
6-24 months   MAL-ED           PERU                           19                0        0     223
6-24 months   MAL-ED           PERU                           19                1        0     223
6-24 months   MAL-ED           PERU                           20                0        2     223
6-24 months   MAL-ED           PERU                           20                1        0     223
6-24 months   MAL-ED           PERU                           21                0        0     223
6-24 months   MAL-ED           PERU                           21                1        0     223
6-24 months   MAL-ED           PERU                           24                0        0     223
6-24 months   MAL-ED           PERU                           24                1        0     223
6-24 months   MAL-ED           PERU                           25                0        0     223
6-24 months   MAL-ED           PERU                           25                1        0     223
6-24 months   MAL-ED           PERU                           27                0        0     223
6-24 months   MAL-ED           PERU                           27                1        0     223
6-24 months   MAL-ED           SOUTH AFRICA                   0                 0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   0                 1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   1                 0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   1                 1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   2                 0        1      96
6-24 months   MAL-ED           SOUTH AFRICA                   2                 1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   3                 0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   3                 1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   4                 0        4      96
6-24 months   MAL-ED           SOUTH AFRICA                   4                 1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   5                 0        1      96
6-24 months   MAL-ED           SOUTH AFRICA                   5                 1        1      96
6-24 months   MAL-ED           SOUTH AFRICA                   6                 0        6      96
6-24 months   MAL-ED           SOUTH AFRICA                   6                 1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   7                 0        6      96
6-24 months   MAL-ED           SOUTH AFRICA                   7                 1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   8                 0        9      96
6-24 months   MAL-ED           SOUTH AFRICA                   8                 1        2      96
6-24 months   MAL-ED           SOUTH AFRICA                   9                 0        6      96
6-24 months   MAL-ED           SOUTH AFRICA                   9                 1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   10                0        5      96
6-24 months   MAL-ED           SOUTH AFRICA                   10                1        3      96
6-24 months   MAL-ED           SOUTH AFRICA                   11                0       16      96
6-24 months   MAL-ED           SOUTH AFRICA                   11                1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   12                0       29      96
6-24 months   MAL-ED           SOUTH AFRICA                   12                1        2      96
6-24 months   MAL-ED           SOUTH AFRICA                   13                0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   13                1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   14                0        2      96
6-24 months   MAL-ED           SOUTH AFRICA                   14                1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   15                0        2      96
6-24 months   MAL-ED           SOUTH AFRICA                   15                1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   16                0        1      96
6-24 months   MAL-ED           SOUTH AFRICA                   16                1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   17                0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   17                1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   18                0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   18                1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   19                0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   19                1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   20                0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   20                1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   21                0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   21                1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   24                0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   24                1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   25                0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   25                1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   27                0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   27                1        0      96
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       11     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        3     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 0       12     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 0       14     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 1        3     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 0       12     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 0       11     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 0        8     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 0      108     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 1        9     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 0        1     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 0        2     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                0        4     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                0        3     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                0        1     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                1        0     202
6-24 months   NIH-Crypto       BANGLADESH                     0                 0      144     730
6-24 months   NIH-Crypto       BANGLADESH                     0                 1       22     730
6-24 months   NIH-Crypto       BANGLADESH                     1                 0       19     730
6-24 months   NIH-Crypto       BANGLADESH                     1                 1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     2                 0       11     730
6-24 months   NIH-Crypto       BANGLADESH                     2                 1        1     730
6-24 months   NIH-Crypto       BANGLADESH                     3                 0       28     730
6-24 months   NIH-Crypto       BANGLADESH                     3                 1        4     730
6-24 months   NIH-Crypto       BANGLADESH                     4                 0       33     730
6-24 months   NIH-Crypto       BANGLADESH                     4                 1        6     730
6-24 months   NIH-Crypto       BANGLADESH                     5                 0       74     730
6-24 months   NIH-Crypto       BANGLADESH                     5                 1       13     730
6-24 months   NIH-Crypto       BANGLADESH                     6                 0       34     730
6-24 months   NIH-Crypto       BANGLADESH                     6                 1        1     730
6-24 months   NIH-Crypto       BANGLADESH                     7                 0       51     730
6-24 months   NIH-Crypto       BANGLADESH                     7                 1        3     730
6-24 months   NIH-Crypto       BANGLADESH                     8                 0       83     730
6-24 months   NIH-Crypto       BANGLADESH                     8                 1        4     730
6-24 months   NIH-Crypto       BANGLADESH                     9                 0       81     730
6-24 months   NIH-Crypto       BANGLADESH                     9                 1        2     730
6-24 months   NIH-Crypto       BANGLADESH                     10                0       48     730
6-24 months   NIH-Crypto       BANGLADESH                     10                1        3     730
6-24 months   NIH-Crypto       BANGLADESH                     11                0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     11                1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     12                0       32     730
6-24 months   NIH-Crypto       BANGLADESH                     12                1        2     730
6-24 months   NIH-Crypto       BANGLADESH                     13                0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     13                1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     14                0        8     730
6-24 months   NIH-Crypto       BANGLADESH                     14                1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     15                0       14     730
6-24 months   NIH-Crypto       BANGLADESH                     15                1        2     730
6-24 months   NIH-Crypto       BANGLADESH                     16                0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     16                1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     17                0        7     730
6-24 months   NIH-Crypto       BANGLADESH                     17                1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     18                0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     18                1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     19                0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     19                1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     20                0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     20                1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     21                0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     21                1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     24                0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     24                1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     25                0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     25                1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     27                0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     27                1        0     730
6-24 months   PROBIT           BELARUS                        0                 0        0   16027
6-24 months   PROBIT           BELARUS                        0                 1        0   16027
6-24 months   PROBIT           BELARUS                        1                 0        0   16027
6-24 months   PROBIT           BELARUS                        1                 1        0   16027
6-24 months   PROBIT           BELARUS                        2                 0        0   16027
6-24 months   PROBIT           BELARUS                        2                 1        0   16027
6-24 months   PROBIT           BELARUS                        3                 0        0   16027
6-24 months   PROBIT           BELARUS                        3                 1        0   16027
6-24 months   PROBIT           BELARUS                        4                 0        0   16027
6-24 months   PROBIT           BELARUS                        4                 1        0   16027
6-24 months   PROBIT           BELARUS                        5                 0        0   16027
6-24 months   PROBIT           BELARUS                        5                 1        0   16027
6-24 months   PROBIT           BELARUS                        6                 0        0   16027
6-24 months   PROBIT           BELARUS                        6                 1        0   16027
6-24 months   PROBIT           BELARUS                        7                 0        0   16027
6-24 months   PROBIT           BELARUS                        7                 1        0   16027
6-24 months   PROBIT           BELARUS                        8                 0       25   16027
6-24 months   PROBIT           BELARUS                        8                 1        0   16027
6-24 months   PROBIT           BELARUS                        9                 0        0   16027
6-24 months   PROBIT           BELARUS                        9                 1        0   16027
6-24 months   PROBIT           BELARUS                        10                0      361   16027
6-24 months   PROBIT           BELARUS                        10                1        0   16027
6-24 months   PROBIT           BELARUS                        11                0        0   16027
6-24 months   PROBIT           BELARUS                        11                1        0   16027
6-24 months   PROBIT           BELARUS                        12                0     5932   16027
6-24 months   PROBIT           BELARUS                        12                1        3   16027
6-24 months   PROBIT           BELARUS                        13                0     7068   16027
6-24 months   PROBIT           BELARUS                        13                1        2   16027
6-24 months   PROBIT           BELARUS                        14                0      430   16027
6-24 months   PROBIT           BELARUS                        14                1        0   16027
6-24 months   PROBIT           BELARUS                        15                0        0   16027
6-24 months   PROBIT           BELARUS                        15                1        0   16027
6-24 months   PROBIT           BELARUS                        16                0     2206   16027
6-24 months   PROBIT           BELARUS                        16                1        0   16027
6-24 months   PROBIT           BELARUS                        17                0        0   16027
6-24 months   PROBIT           BELARUS                        17                1        0   16027
6-24 months   PROBIT           BELARUS                        18                0        0   16027
6-24 months   PROBIT           BELARUS                        18                1        0   16027
6-24 months   PROBIT           BELARUS                        19                0        0   16027
6-24 months   PROBIT           BELARUS                        19                1        0   16027
6-24 months   PROBIT           BELARUS                        20                0        0   16027
6-24 months   PROBIT           BELARUS                        20                1        0   16027
6-24 months   PROBIT           BELARUS                        21                0        0   16027
6-24 months   PROBIT           BELARUS                        21                1        0   16027
6-24 months   PROBIT           BELARUS                        24                0        0   16027
6-24 months   PROBIT           BELARUS                        24                1        0   16027
6-24 months   PROBIT           BELARUS                        25                0        0   16027
6-24 months   PROBIT           BELARUS                        25                1        0   16027
6-24 months   PROBIT           BELARUS                        27                0        0   16027
6-24 months   PROBIT           BELARUS                        27                1        0   16027
6-24 months   PROVIDE          BANGLADESH                     0                 0      143     614
6-24 months   PROVIDE          BANGLADESH                     0                 1       34     614
6-24 months   PROVIDE          BANGLADESH                     1                 0       12     614
6-24 months   PROVIDE          BANGLADESH                     1                 1        1     614
6-24 months   PROVIDE          BANGLADESH                     2                 0       13     614
6-24 months   PROVIDE          BANGLADESH                     2                 1        4     614
6-24 months   PROVIDE          BANGLADESH                     3                 0       21     614
6-24 months   PROVIDE          BANGLADESH                     3                 1        2     614
6-24 months   PROVIDE          BANGLADESH                     4                 0       35     614
6-24 months   PROVIDE          BANGLADESH                     4                 1        8     614
6-24 months   PROVIDE          BANGLADESH                     5                 0       61     614
6-24 months   PROVIDE          BANGLADESH                     5                 1        4     614
6-24 months   PROVIDE          BANGLADESH                     6                 0       22     614
6-24 months   PROVIDE          BANGLADESH                     6                 1        5     614
6-24 months   PROVIDE          BANGLADESH                     7                 0       34     614
6-24 months   PROVIDE          BANGLADESH                     7                 1        1     614
6-24 months   PROVIDE          BANGLADESH                     8                 0       53     614
6-24 months   PROVIDE          BANGLADESH                     8                 1        6     614
6-24 months   PROVIDE          BANGLADESH                     9                 0       52     614
6-24 months   PROVIDE          BANGLADESH                     9                 1        6     614
6-24 months   PROVIDE          BANGLADESH                     10                0       31     614
6-24 months   PROVIDE          BANGLADESH                     10                1        3     614
6-24 months   PROVIDE          BANGLADESH                     11                0       25     614
6-24 months   PROVIDE          BANGLADESH                     11                1        0     614
6-24 months   PROVIDE          BANGLADESH                     12                0        3     614
6-24 months   PROVIDE          BANGLADESH                     12                1        0     614
6-24 months   PROVIDE          BANGLADESH                     13                0        0     614
6-24 months   PROVIDE          BANGLADESH                     13                1        0     614
6-24 months   PROVIDE          BANGLADESH                     14                0       17     614
6-24 months   PROVIDE          BANGLADESH                     14                1        1     614
6-24 months   PROVIDE          BANGLADESH                     15                0        8     614
6-24 months   PROVIDE          BANGLADESH                     15                1        0     614
6-24 months   PROVIDE          BANGLADESH                     16                0        8     614
6-24 months   PROVIDE          BANGLADESH                     16                1        0     614
6-24 months   PROVIDE          BANGLADESH                     17                0        0     614
6-24 months   PROVIDE          BANGLADESH                     17                1        0     614
6-24 months   PROVIDE          BANGLADESH                     18                0        0     614
6-24 months   PROVIDE          BANGLADESH                     18                1        0     614
6-24 months   PROVIDE          BANGLADESH                     19                0        1     614
6-24 months   PROVIDE          BANGLADESH                     19                1        0     614
6-24 months   PROVIDE          BANGLADESH                     20                0        0     614
6-24 months   PROVIDE          BANGLADESH                     20                1        0     614
6-24 months   PROVIDE          BANGLADESH                     21                0        0     614
6-24 months   PROVIDE          BANGLADESH                     21                1        0     614
6-24 months   PROVIDE          BANGLADESH                     24                0        0     614
6-24 months   PROVIDE          BANGLADESH                     24                1        0     614
6-24 months   PROVIDE          BANGLADESH                     25                0        0     614
6-24 months   PROVIDE          BANGLADESH                     25                1        0     614
6-24 months   PROVIDE          BANGLADESH                     27                0        0     614
6-24 months   PROVIDE          BANGLADESH                     27                1        0     614
6-24 months   SAS-CompFeed     INDIA                          0                 0      102    1386
6-24 months   SAS-CompFeed     INDIA                          0                 1       59    1386
6-24 months   SAS-CompFeed     INDIA                          1                 0        0    1386
6-24 months   SAS-CompFeed     INDIA                          1                 1        0    1386
6-24 months   SAS-CompFeed     INDIA                          2                 0        0    1386
6-24 months   SAS-CompFeed     INDIA                          2                 1        5    1386
6-24 months   SAS-CompFeed     INDIA                          3                 0        8    1386
6-24 months   SAS-CompFeed     INDIA                          3                 1        4    1386
6-24 months   SAS-CompFeed     INDIA                          4                 0       16    1386
6-24 months   SAS-CompFeed     INDIA                          4                 1        7    1386
6-24 months   SAS-CompFeed     INDIA                          5                 0       62    1386
6-24 months   SAS-CompFeed     INDIA                          5                 1       21    1386
6-24 months   SAS-CompFeed     INDIA                          6                 0       15    1386
6-24 months   SAS-CompFeed     INDIA                          6                 1       12    1386
6-24 months   SAS-CompFeed     INDIA                          7                 0       79    1386
6-24 months   SAS-CompFeed     INDIA                          7                 1       26    1386
6-24 months   SAS-CompFeed     INDIA                          8                 0      120    1386
6-24 months   SAS-CompFeed     INDIA                          8                 1       36    1386
6-24 months   SAS-CompFeed     INDIA                          9                 0       68    1386
6-24 months   SAS-CompFeed     INDIA                          9                 1       22    1386
6-24 months   SAS-CompFeed     INDIA                          10                0      287    1386
6-24 months   SAS-CompFeed     INDIA                          10                1       67    1386
6-24 months   SAS-CompFeed     INDIA                          11                0       36    1386
6-24 months   SAS-CompFeed     INDIA                          11                1        3    1386
6-24 months   SAS-CompFeed     INDIA                          12                0      183    1386
6-24 months   SAS-CompFeed     INDIA                          12                1       32    1386
6-24 months   SAS-CompFeed     INDIA                          13                0        6    1386
6-24 months   SAS-CompFeed     INDIA                          13                1        1    1386
6-24 months   SAS-CompFeed     INDIA                          14                0       13    1386
6-24 months   SAS-CompFeed     INDIA                          14                1        4    1386
6-24 months   SAS-CompFeed     INDIA                          15                0       53    1386
6-24 months   SAS-CompFeed     INDIA                          15                1        9    1386
6-24 months   SAS-CompFeed     INDIA                          16                0        9    1386
6-24 months   SAS-CompFeed     INDIA                          16                1        1    1386
6-24 months   SAS-CompFeed     INDIA                          17                0       12    1386
6-24 months   SAS-CompFeed     INDIA                          17                1        3    1386
6-24 months   SAS-CompFeed     INDIA                          18                0        3    1386
6-24 months   SAS-CompFeed     INDIA                          18                1        0    1386
6-24 months   SAS-CompFeed     INDIA                          19                0        1    1386
6-24 months   SAS-CompFeed     INDIA                          19                1        0    1386
6-24 months   SAS-CompFeed     INDIA                          20                0        1    1386
6-24 months   SAS-CompFeed     INDIA                          20                1        0    1386
6-24 months   SAS-CompFeed     INDIA                          21                0        0    1386
6-24 months   SAS-CompFeed     INDIA                          21                1        0    1386
6-24 months   SAS-CompFeed     INDIA                          24                0        0    1386
6-24 months   SAS-CompFeed     INDIA                          24                1        0    1386
6-24 months   SAS-CompFeed     INDIA                          25                0        0    1386
6-24 months   SAS-CompFeed     INDIA                          25                1        0    1386
6-24 months   SAS-CompFeed     INDIA                          27                0        0    1386
6-24 months   SAS-CompFeed     INDIA                          27                1        0    1386
6-24 months   SAS-FoodSuppl    INDIA                          0                 0       89     401
6-24 months   SAS-FoodSuppl    INDIA                          0                 1       51     401
6-24 months   SAS-FoodSuppl    INDIA                          1                 0        1     401
6-24 months   SAS-FoodSuppl    INDIA                          1                 1        0     401
6-24 months   SAS-FoodSuppl    INDIA                          2                 0        3     401
6-24 months   SAS-FoodSuppl    INDIA                          2                 1        7     401
6-24 months   SAS-FoodSuppl    INDIA                          3                 0        3     401
6-24 months   SAS-FoodSuppl    INDIA                          3                 1        3     401
6-24 months   SAS-FoodSuppl    INDIA                          4                 0        6     401
6-24 months   SAS-FoodSuppl    INDIA                          4                 1        4     401
6-24 months   SAS-FoodSuppl    INDIA                          5                 0       28     401
6-24 months   SAS-FoodSuppl    INDIA                          5                 1       25     401
6-24 months   SAS-FoodSuppl    INDIA                          6                 0        8     401
6-24 months   SAS-FoodSuppl    INDIA                          6                 1        4     401
6-24 months   SAS-FoodSuppl    INDIA                          7                 0        8     401
6-24 months   SAS-FoodSuppl    INDIA                          7                 1        7     401
6-24 months   SAS-FoodSuppl    INDIA                          8                 0       35     401
6-24 months   SAS-FoodSuppl    INDIA                          8                 1       12     401
6-24 months   SAS-FoodSuppl    INDIA                          9                 0       15     401
6-24 months   SAS-FoodSuppl    INDIA                          9                 1       11     401
6-24 months   SAS-FoodSuppl    INDIA                          10                0       44     401
6-24 months   SAS-FoodSuppl    INDIA                          10                1       14     401
6-24 months   SAS-FoodSuppl    INDIA                          11                0        1     401
6-24 months   SAS-FoodSuppl    INDIA                          11                1        2     401
6-24 months   SAS-FoodSuppl    INDIA                          12                0        9     401
6-24 months   SAS-FoodSuppl    INDIA                          12                1        1     401
6-24 months   SAS-FoodSuppl    INDIA                          13                0        1     401
6-24 months   SAS-FoodSuppl    INDIA                          13                1        0     401
6-24 months   SAS-FoodSuppl    INDIA                          14                0        3     401
6-24 months   SAS-FoodSuppl    INDIA                          14                1        3     401
6-24 months   SAS-FoodSuppl    INDIA                          15                0        2     401
6-24 months   SAS-FoodSuppl    INDIA                          15                1        1     401
6-24 months   SAS-FoodSuppl    INDIA                          16                0        0     401
6-24 months   SAS-FoodSuppl    INDIA                          16                1        0     401
6-24 months   SAS-FoodSuppl    INDIA                          17                0        0     401
6-24 months   SAS-FoodSuppl    INDIA                          17                1        0     401
6-24 months   SAS-FoodSuppl    INDIA                          18                0        0     401
6-24 months   SAS-FoodSuppl    INDIA                          18                1        0     401
6-24 months   SAS-FoodSuppl    INDIA                          19                0        0     401
6-24 months   SAS-FoodSuppl    INDIA                          19                1        0     401
6-24 months   SAS-FoodSuppl    INDIA                          20                0        0     401
6-24 months   SAS-FoodSuppl    INDIA                          20                1        0     401
6-24 months   SAS-FoodSuppl    INDIA                          21                0        0     401
6-24 months   SAS-FoodSuppl    INDIA                          21                1        0     401
6-24 months   SAS-FoodSuppl    INDIA                          24                0        0     401
6-24 months   SAS-FoodSuppl    INDIA                          24                1        0     401
6-24 months   SAS-FoodSuppl    INDIA                          25                0        0     401
6-24 months   SAS-FoodSuppl    INDIA                          25                1        0     401
6-24 months   SAS-FoodSuppl    INDIA                          27                0        0     401
6-24 months   SAS-FoodSuppl    INDIA                          27                1        0     401
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0        4    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 0        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 1        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 0        5    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 1        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 0        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 1        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 0        1    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 1        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 0      998    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 1       63    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 0        8    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 1        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 0       43    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 1        4    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                0       22    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                1        1    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                0      454    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                1       30    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                0       15    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                1        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                0       97    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                1        3    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                0       12    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                1        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                0       19    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                1        1    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                0       24    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                1        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                0       17    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                1        2    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                0        3    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                1        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                0        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                1        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                0        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                1        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                0        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                1        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                0       12    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                1        2    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                0        1    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                1        0    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                0      161    2008
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                1        6    2008
6-24 months   ZVITAMBO         ZIMBABWE                       0                 0       41   10502
6-24 months   ZVITAMBO         ZIMBABWE                       0                 1        6   10502
6-24 months   ZVITAMBO         ZIMBABWE                       1                 0        2   10502
6-24 months   ZVITAMBO         ZIMBABWE                       1                 1        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       2                 0        5   10502
6-24 months   ZVITAMBO         ZIMBABWE                       2                 1        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       3                 0       10   10502
6-24 months   ZVITAMBO         ZIMBABWE                       3                 1        2   10502
6-24 months   ZVITAMBO         ZIMBABWE                       4                 0       15   10502
6-24 months   ZVITAMBO         ZIMBABWE                       4                 1        1   10502
6-24 months   ZVITAMBO         ZIMBABWE                       5                 0       25   10502
6-24 months   ZVITAMBO         ZIMBABWE                       5                 1        3   10502
6-24 months   ZVITAMBO         ZIMBABWE                       6                 0       31   10502
6-24 months   ZVITAMBO         ZIMBABWE                       6                 1        1   10502
6-24 months   ZVITAMBO         ZIMBABWE                       7                 0      584   10502
6-24 months   ZVITAMBO         ZIMBABWE                       7                 1       44   10502
6-24 months   ZVITAMBO         ZIMBABWE                       8                 0       86   10502
6-24 months   ZVITAMBO         ZIMBABWE                       8                 1        3   10502
6-24 months   ZVITAMBO         ZIMBABWE                       9                 0      656   10502
6-24 months   ZVITAMBO         ZIMBABWE                       9                 1       40   10502
6-24 months   ZVITAMBO         ZIMBABWE                       10                0      236   10502
6-24 months   ZVITAMBO         ZIMBABWE                       10                1       22   10502
6-24 months   ZVITAMBO         ZIMBABWE                       11                0     7700   10502
6-24 months   ZVITAMBO         ZIMBABWE                       11                1      272   10502
6-24 months   ZVITAMBO         ZIMBABWE                       12                0       43   10502
6-24 months   ZVITAMBO         ZIMBABWE                       12                1        4   10502
6-24 months   ZVITAMBO         ZIMBABWE                       13                0      653   10502
6-24 months   ZVITAMBO         ZIMBABWE                       13                1       17   10502
6-24 months   ZVITAMBO         ZIMBABWE                       14                0        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       14                1        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       15                0        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       15                1        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       16                0        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       16                1        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       17                0        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       17                1        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       18                0        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       18                1        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       19                0        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       19                1        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       20                0        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       20                1        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       21                0        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       21                1        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       24                0        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       24                1        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       25                0        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       25                1        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       27                0        0   10502
6-24 months   ZVITAMBO         ZIMBABWE                       27                1        0   10502


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
















