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

**Outcome Variable:** ever_wasted

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

agecat        studyid          country                        feducyrs    ever_wasted   n_cell       n
------------  ---------------  -----------------------------  ---------  ------------  -------  ------
0-24 months   COHORTS          GUATEMALA                      0                     0      419    1234
0-24 months   COHORTS          GUATEMALA                      0                     1      139    1234
0-24 months   COHORTS          GUATEMALA                      1                     0       49    1234
0-24 months   COHORTS          GUATEMALA                      1                     1       18    1234
0-24 months   COHORTS          GUATEMALA                      2                     0      158    1234
0-24 months   COHORTS          GUATEMALA                      2                     1       58    1234
0-24 months   COHORTS          GUATEMALA                      3                     0      123    1234
0-24 months   COHORTS          GUATEMALA                      3                     1       39    1234
0-24 months   COHORTS          GUATEMALA                      4                     0       53    1234
0-24 months   COHORTS          GUATEMALA                      4                     1       26    1234
0-24 months   COHORTS          GUATEMALA                      5                     0       24    1234
0-24 months   COHORTS          GUATEMALA                      5                     1        7    1234
0-24 months   COHORTS          GUATEMALA                      6                     0       74    1234
0-24 months   COHORTS          GUATEMALA                      6                     1       32    1234
0-24 months   COHORTS          GUATEMALA                      7                     0        3    1234
0-24 months   COHORTS          GUATEMALA                      7                     1        1    1234
0-24 months   COHORTS          GUATEMALA                      8                     0        1    1234
0-24 months   COHORTS          GUATEMALA                      8                     1        1    1234
0-24 months   COHORTS          GUATEMALA                      9                     0        1    1234
0-24 months   COHORTS          GUATEMALA                      9                     1        0    1234
0-24 months   COHORTS          GUATEMALA                      10                    0        1    1234
0-24 months   COHORTS          GUATEMALA                      10                    1        0    1234
0-24 months   COHORTS          GUATEMALA                      11                    0        0    1234
0-24 months   COHORTS          GUATEMALA                      11                    1        0    1234
0-24 months   COHORTS          GUATEMALA                      12                    0        5    1234
0-24 months   COHORTS          GUATEMALA                      12                    1        0    1234
0-24 months   COHORTS          GUATEMALA                      13                    0        0    1234
0-24 months   COHORTS          GUATEMALA                      13                    1        0    1234
0-24 months   COHORTS          GUATEMALA                      14                    0        1    1234
0-24 months   COHORTS          GUATEMALA                      14                    1        0    1234
0-24 months   COHORTS          GUATEMALA                      15                    0        1    1234
0-24 months   COHORTS          GUATEMALA                      15                    1        0    1234
0-24 months   COHORTS          GUATEMALA                      16                    0        0    1234
0-24 months   COHORTS          GUATEMALA                      16                    1        0    1234
0-24 months   COHORTS          GUATEMALA                      17                    0        0    1234
0-24 months   COHORTS          GUATEMALA                      17                    1        0    1234
0-24 months   COHORTS          GUATEMALA                      18                    0        0    1234
0-24 months   COHORTS          GUATEMALA                      18                    1        0    1234
0-24 months   COHORTS          GUATEMALA                      19                    0        0    1234
0-24 months   COHORTS          GUATEMALA                      19                    1        0    1234
0-24 months   COHORTS          GUATEMALA                      20                    0        0    1234
0-24 months   COHORTS          GUATEMALA                      20                    1        0    1234
0-24 months   COHORTS          GUATEMALA                      21                    0        0    1234
0-24 months   COHORTS          GUATEMALA                      21                    1        0    1234
0-24 months   COHORTS          GUATEMALA                      24                    0        0    1234
0-24 months   COHORTS          GUATEMALA                      24                    1        0    1234
0-24 months   COHORTS          GUATEMALA                      25                    0        0    1234
0-24 months   COHORTS          GUATEMALA                      25                    1        0    1234
0-24 months   COHORTS          GUATEMALA                      27                    0        0    1234
0-24 months   COHORTS          GUATEMALA                      27                    1        0    1234
0-24 months   COHORTS          INDIA                          0                     0       77    1447
0-24 months   COHORTS          INDIA                          0                     1       47    1447
0-24 months   COHORTS          INDIA                          1                     0        0    1447
0-24 months   COHORTS          INDIA                          1                     1        0    1447
0-24 months   COHORTS          INDIA                          2                     0        0    1447
0-24 months   COHORTS          INDIA                          2                     1        0    1447
0-24 months   COHORTS          INDIA                          3                     0       89    1447
0-24 months   COHORTS          INDIA                          3                     1       45    1447
0-24 months   COHORTS          INDIA                          4                     0        0    1447
0-24 months   COHORTS          INDIA                          4                     1        0    1447
0-24 months   COHORTS          INDIA                          5                     0        0    1447
0-24 months   COHORTS          INDIA                          5                     1        0    1447
0-24 months   COHORTS          INDIA                          6                     0        0    1447
0-24 months   COHORTS          INDIA                          6                     1        0    1447
0-24 months   COHORTS          INDIA                          7                     0        0    1447
0-24 months   COHORTS          INDIA                          7                     1        0    1447
0-24 months   COHORTS          INDIA                          8                     0      139    1447
0-24 months   COHORTS          INDIA                          8                     1       75    1447
0-24 months   COHORTS          INDIA                          9                     0        0    1447
0-24 months   COHORTS          INDIA                          9                     1        0    1447
0-24 months   COHORTS          INDIA                          10                    0        0    1447
0-24 months   COHORTS          INDIA                          10                    1        0    1447
0-24 months   COHORTS          INDIA                          11                    0        0    1447
0-24 months   COHORTS          INDIA                          11                    1        0    1447
0-24 months   COHORTS          INDIA                          12                    0      269    1447
0-24 months   COHORTS          INDIA                          12                    1      139    1447
0-24 months   COHORTS          INDIA                          13                    0        0    1447
0-24 months   COHORTS          INDIA                          13                    1        0    1447
0-24 months   COHORTS          INDIA                          14                    0      109    1447
0-24 months   COHORTS          INDIA                          14                    1       49    1447
0-24 months   COHORTS          INDIA                          15                    0      191    1447
0-24 months   COHORTS          INDIA                          15                    1       92    1447
0-24 months   COHORTS          INDIA                          16                    0        0    1447
0-24 months   COHORTS          INDIA                          16                    1        0    1447
0-24 months   COHORTS          INDIA                          17                    0       86    1447
0-24 months   COHORTS          INDIA                          17                    1       40    1447
0-24 months   COHORTS          INDIA                          18                    0        0    1447
0-24 months   COHORTS          INDIA                          18                    1        0    1447
0-24 months   COHORTS          INDIA                          19                    0        0    1447
0-24 months   COHORTS          INDIA                          19                    1        0    1447
0-24 months   COHORTS          INDIA                          20                    0        0    1447
0-24 months   COHORTS          INDIA                          20                    1        0    1447
0-24 months   COHORTS          INDIA                          21                    0        0    1447
0-24 months   COHORTS          INDIA                          21                    1        0    1447
0-24 months   COHORTS          INDIA                          24                    0        0    1447
0-24 months   COHORTS          INDIA                          24                    1        0    1447
0-24 months   COHORTS          INDIA                          25                    0        0    1447
0-24 months   COHORTS          INDIA                          25                    1        0    1447
0-24 months   COHORTS          INDIA                          27                    0        0    1447
0-24 months   COHORTS          INDIA                          27                    1        0    1447
0-24 months   COHORTS          PHILIPPINES                    0                     0       36    2868
0-24 months   COHORTS          PHILIPPINES                    0                     1       24    2868
0-24 months   COHORTS          PHILIPPINES                    1                     0       19    2868
0-24 months   COHORTS          PHILIPPINES                    1                     1       17    2868
0-24 months   COHORTS          PHILIPPINES                    2                     0       48    2868
0-24 months   COHORTS          PHILIPPINES                    2                     1       48    2868
0-24 months   COHORTS          PHILIPPINES                    3                     0      104    2868
0-24 months   COHORTS          PHILIPPINES                    3                     1       64    2868
0-24 months   COHORTS          PHILIPPINES                    4                     0      152    2868
0-24 months   COHORTS          PHILIPPINES                    4                     1      110    2868
0-24 months   COHORTS          PHILIPPINES                    5                     0      121    2868
0-24 months   COHORTS          PHILIPPINES                    5                     1       83    2868
0-24 months   COHORTS          PHILIPPINES                    6                     0      377    2868
0-24 months   COHORTS          PHILIPPINES                    6                     1      264    2868
0-24 months   COHORTS          PHILIPPINES                    7                     0       85    2868
0-24 months   COHORTS          PHILIPPINES                    7                     1       64    2868
0-24 months   COHORTS          PHILIPPINES                    8                     0      135    2868
0-24 months   COHORTS          PHILIPPINES                    8                     1       89    2868
0-24 months   COHORTS          PHILIPPINES                    9                     0      111    2868
0-24 months   COHORTS          PHILIPPINES                    9                     1       85    2868
0-24 months   COHORTS          PHILIPPINES                    10                    0      215    2868
0-24 months   COHORTS          PHILIPPINES                    10                    1      115    2868
0-24 months   COHORTS          PHILIPPINES                    11                    0       35    2868
0-24 months   COHORTS          PHILIPPINES                    11                    1       30    2868
0-24 months   COHORTS          PHILIPPINES                    12                    0      116    2868
0-24 months   COHORTS          PHILIPPINES                    12                    1       64    2868
0-24 months   COHORTS          PHILIPPINES                    13                    0       39    2868
0-24 months   COHORTS          PHILIPPINES                    13                    1       23    2868
0-24 months   COHORTS          PHILIPPINES                    14                    0      100    2868
0-24 months   COHORTS          PHILIPPINES                    14                    1       47    2868
0-24 months   COHORTS          PHILIPPINES                    15                    0       18    2868
0-24 months   COHORTS          PHILIPPINES                    15                    1       18    2868
0-24 months   COHORTS          PHILIPPINES                    16                    0        3    2868
0-24 months   COHORTS          PHILIPPINES                    16                    1        5    2868
0-24 months   COHORTS          PHILIPPINES                    17                    0        1    2868
0-24 months   COHORTS          PHILIPPINES                    17                    1        1    2868
0-24 months   COHORTS          PHILIPPINES                    18                    0        2    2868
0-24 months   COHORTS          PHILIPPINES                    18                    1        0    2868
0-24 months   COHORTS          PHILIPPINES                    19                    0        0    2868
0-24 months   COHORTS          PHILIPPINES                    19                    1        0    2868
0-24 months   COHORTS          PHILIPPINES                    20                    0        0    2868
0-24 months   COHORTS          PHILIPPINES                    20                    1        0    2868
0-24 months   COHORTS          PHILIPPINES                    21                    0        0    2868
0-24 months   COHORTS          PHILIPPINES                    21                    1        0    2868
0-24 months   COHORTS          PHILIPPINES                    24                    0        0    2868
0-24 months   COHORTS          PHILIPPINES                    24                    1        0    2868
0-24 months   COHORTS          PHILIPPINES                    25                    0        0    2868
0-24 months   COHORTS          PHILIPPINES                    25                    1        0    2868
0-24 months   COHORTS          PHILIPPINES                    27                    0        0    2868
0-24 months   COHORTS          PHILIPPINES                    27                    1        0    2868
0-24 months   GMS-Nepal        NEPAL                          0                     0      115     684
0-24 months   GMS-Nepal        NEPAL                          0                     1      177     684
0-24 months   GMS-Nepal        NEPAL                          1                     0        0     684
0-24 months   GMS-Nepal        NEPAL                          1                     1        0     684
0-24 months   GMS-Nepal        NEPAL                          2                     0        0     684
0-24 months   GMS-Nepal        NEPAL                          2                     1        0     684
0-24 months   GMS-Nepal        NEPAL                          3                     0        0     684
0-24 months   GMS-Nepal        NEPAL                          3                     1        0     684
0-24 months   GMS-Nepal        NEPAL                          4                     0        0     684
0-24 months   GMS-Nepal        NEPAL                          4                     1        0     684
0-24 months   GMS-Nepal        NEPAL                          5                     0       48     684
0-24 months   GMS-Nepal        NEPAL                          5                     1       62     684
0-24 months   GMS-Nepal        NEPAL                          6                     0        0     684
0-24 months   GMS-Nepal        NEPAL                          6                     1        0     684
0-24 months   GMS-Nepal        NEPAL                          7                     0        0     684
0-24 months   GMS-Nepal        NEPAL                          7                     1        0     684
0-24 months   GMS-Nepal        NEPAL                          8                     0       52     684
0-24 months   GMS-Nepal        NEPAL                          8                     1       61     684
0-24 months   GMS-Nepal        NEPAL                          9                     0        0     684
0-24 months   GMS-Nepal        NEPAL                          9                     1        0     684
0-24 months   GMS-Nepal        NEPAL                          10                    0       47     684
0-24 months   GMS-Nepal        NEPAL                          10                    1       83     684
0-24 months   GMS-Nepal        NEPAL                          11                    0        0     684
0-24 months   GMS-Nepal        NEPAL                          11                    1        0     684
0-24 months   GMS-Nepal        NEPAL                          12                    0       18     684
0-24 months   GMS-Nepal        NEPAL                          12                    1       21     684
0-24 months   GMS-Nepal        NEPAL                          13                    0        0     684
0-24 months   GMS-Nepal        NEPAL                          13                    1        0     684
0-24 months   GMS-Nepal        NEPAL                          14                    0        0     684
0-24 months   GMS-Nepal        NEPAL                          14                    1        0     684
0-24 months   GMS-Nepal        NEPAL                          15                    0        0     684
0-24 months   GMS-Nepal        NEPAL                          15                    1        0     684
0-24 months   GMS-Nepal        NEPAL                          16                    0        0     684
0-24 months   GMS-Nepal        NEPAL                          16                    1        0     684
0-24 months   GMS-Nepal        NEPAL                          17                    0        0     684
0-24 months   GMS-Nepal        NEPAL                          17                    1        0     684
0-24 months   GMS-Nepal        NEPAL                          18                    0        0     684
0-24 months   GMS-Nepal        NEPAL                          18                    1        0     684
0-24 months   GMS-Nepal        NEPAL                          19                    0        0     684
0-24 months   GMS-Nepal        NEPAL                          19                    1        0     684
0-24 months   GMS-Nepal        NEPAL                          20                    0        0     684
0-24 months   GMS-Nepal        NEPAL                          20                    1        0     684
0-24 months   GMS-Nepal        NEPAL                          21                    0        0     684
0-24 months   GMS-Nepal        NEPAL                          21                    1        0     684
0-24 months   GMS-Nepal        NEPAL                          24                    0        0     684
0-24 months   GMS-Nepal        NEPAL                          24                    1        0     684
0-24 months   GMS-Nepal        NEPAL                          25                    0        0     684
0-24 months   GMS-Nepal        NEPAL                          25                    1        0     684
0-24 months   GMS-Nepal        NEPAL                          27                    0        0     684
0-24 months   GMS-Nepal        NEPAL                          27                    1        0     684
0-24 months   LCNI-5           MALAWI                         0                     0      267     813
0-24 months   LCNI-5           MALAWI                         0                     1       24     813
0-24 months   LCNI-5           MALAWI                         1                     0       11     813
0-24 months   LCNI-5           MALAWI                         1                     1        0     813
0-24 months   LCNI-5           MALAWI                         2                     0       28     813
0-24 months   LCNI-5           MALAWI                         2                     1        4     813
0-24 months   LCNI-5           MALAWI                         3                     0       34     813
0-24 months   LCNI-5           MALAWI                         3                     1        5     813
0-24 months   LCNI-5           MALAWI                         4                     0       54     813
0-24 months   LCNI-5           MALAWI                         4                     1        5     813
0-24 months   LCNI-5           MALAWI                         5                     0       57     813
0-24 months   LCNI-5           MALAWI                         5                     1        4     813
0-24 months   LCNI-5           MALAWI                         6                     0       62     813
0-24 months   LCNI-5           MALAWI                         6                     1        7     813
0-24 months   LCNI-5           MALAWI                         7                     0       63     813
0-24 months   LCNI-5           MALAWI                         7                     1        5     813
0-24 months   LCNI-5           MALAWI                         8                     0       84     813
0-24 months   LCNI-5           MALAWI                         8                     1        7     813
0-24 months   LCNI-5           MALAWI                         9                     0       12     813
0-24 months   LCNI-5           MALAWI                         9                     1        0     813
0-24 months   LCNI-5           MALAWI                         10                    0       15     813
0-24 months   LCNI-5           MALAWI                         10                    1        1     813
0-24 months   LCNI-5           MALAWI                         11                    0        7     813
0-24 months   LCNI-5           MALAWI                         11                    1        0     813
0-24 months   LCNI-5           MALAWI                         12                    0       49     813
0-24 months   LCNI-5           MALAWI                         12                    1        3     813
0-24 months   LCNI-5           MALAWI                         13                    0        1     813
0-24 months   LCNI-5           MALAWI                         13                    1        0     813
0-24 months   LCNI-5           MALAWI                         14                    0        3     813
0-24 months   LCNI-5           MALAWI                         14                    1        0     813
0-24 months   LCNI-5           MALAWI                         15                    0        0     813
0-24 months   LCNI-5           MALAWI                         15                    1        0     813
0-24 months   LCNI-5           MALAWI                         16                    0        1     813
0-24 months   LCNI-5           MALAWI                         16                    1        0     813
0-24 months   LCNI-5           MALAWI                         17                    0        0     813
0-24 months   LCNI-5           MALAWI                         17                    1        0     813
0-24 months   LCNI-5           MALAWI                         18                    0        0     813
0-24 months   LCNI-5           MALAWI                         18                    1        0     813
0-24 months   LCNI-5           MALAWI                         19                    0        0     813
0-24 months   LCNI-5           MALAWI                         19                    1        0     813
0-24 months   LCNI-5           MALAWI                         20                    0        0     813
0-24 months   LCNI-5           MALAWI                         20                    1        0     813
0-24 months   LCNI-5           MALAWI                         21                    0        0     813
0-24 months   LCNI-5           MALAWI                         21                    1        0     813
0-24 months   LCNI-5           MALAWI                         24                    0        0     813
0-24 months   LCNI-5           MALAWI                         24                    1        0     813
0-24 months   LCNI-5           MALAWI                         25                    0        0     813
0-24 months   LCNI-5           MALAWI                         25                    1        0     813
0-24 months   LCNI-5           MALAWI                         27                    0        0     813
0-24 months   LCNI-5           MALAWI                         27                    1        0     813
0-24 months   MAL-ED           BANGLADESH                     0                     0        0     147
0-24 months   MAL-ED           BANGLADESH                     0                     1        0     147
0-24 months   MAL-ED           BANGLADESH                     1                     0        4     147
0-24 months   MAL-ED           BANGLADESH                     1                     1        3     147
0-24 months   MAL-ED           BANGLADESH                     2                     0        9     147
0-24 months   MAL-ED           BANGLADESH                     2                     1        3     147
0-24 months   MAL-ED           BANGLADESH                     3                     0        4     147
0-24 months   MAL-ED           BANGLADESH                     3                     1        8     147
0-24 months   MAL-ED           BANGLADESH                     4                     0        6     147
0-24 months   MAL-ED           BANGLADESH                     4                     1        2     147
0-24 months   MAL-ED           BANGLADESH                     5                     0       24     147
0-24 months   MAL-ED           BANGLADESH                     5                     1       12     147
0-24 months   MAL-ED           BANGLADESH                     6                     0        6     147
0-24 months   MAL-ED           BANGLADESH                     6                     1        2     147
0-24 months   MAL-ED           BANGLADESH                     7                     0        6     147
0-24 months   MAL-ED           BANGLADESH                     7                     1        4     147
0-24 months   MAL-ED           BANGLADESH                     8                     0       15     147
0-24 months   MAL-ED           BANGLADESH                     8                     1        3     147
0-24 months   MAL-ED           BANGLADESH                     9                     0       11     147
0-24 months   MAL-ED           BANGLADESH                     9                     1        3     147
0-24 months   MAL-ED           BANGLADESH                     10                    0        7     147
0-24 months   MAL-ED           BANGLADESH                     10                    1        3     147
0-24 months   MAL-ED           BANGLADESH                     11                    0        0     147
0-24 months   MAL-ED           BANGLADESH                     11                    1        0     147
0-24 months   MAL-ED           BANGLADESH                     12                    0        6     147
0-24 months   MAL-ED           BANGLADESH                     12                    1        4     147
0-24 months   MAL-ED           BANGLADESH                     13                    0        0     147
0-24 months   MAL-ED           BANGLADESH                     13                    1        0     147
0-24 months   MAL-ED           BANGLADESH                     14                    0        0     147
0-24 months   MAL-ED           BANGLADESH                     14                    1        0     147
0-24 months   MAL-ED           BANGLADESH                     15                    0        0     147
0-24 months   MAL-ED           BANGLADESH                     15                    1        0     147
0-24 months   MAL-ED           BANGLADESH                     16                    0        2     147
0-24 months   MAL-ED           BANGLADESH                     16                    1        0     147
0-24 months   MAL-ED           BANGLADESH                     17                    0        0     147
0-24 months   MAL-ED           BANGLADESH                     17                    1        0     147
0-24 months   MAL-ED           BANGLADESH                     18                    0        0     147
0-24 months   MAL-ED           BANGLADESH                     18                    1        0     147
0-24 months   MAL-ED           BANGLADESH                     19                    0        0     147
0-24 months   MAL-ED           BANGLADESH                     19                    1        0     147
0-24 months   MAL-ED           BANGLADESH                     20                    0        0     147
0-24 months   MAL-ED           BANGLADESH                     20                    1        0     147
0-24 months   MAL-ED           BANGLADESH                     21                    0        0     147
0-24 months   MAL-ED           BANGLADESH                     21                    1        0     147
0-24 months   MAL-ED           BANGLADESH                     24                    0        0     147
0-24 months   MAL-ED           BANGLADESH                     24                    1        0     147
0-24 months   MAL-ED           BANGLADESH                     25                    0        0     147
0-24 months   MAL-ED           BANGLADESH                     25                    1        0     147
0-24 months   MAL-ED           BANGLADESH                     27                    0        0     147
0-24 months   MAL-ED           BANGLADESH                     27                    1        0     147
0-24 months   MAL-ED           INDIA                          0                     0        0     147
0-24 months   MAL-ED           INDIA                          0                     1        0     147
0-24 months   MAL-ED           INDIA                          1                     0        0     147
0-24 months   MAL-ED           INDIA                          1                     1        0     147
0-24 months   MAL-ED           INDIA                          2                     0        3     147
0-24 months   MAL-ED           INDIA                          2                     1        3     147
0-24 months   MAL-ED           INDIA                          3                     0        6     147
0-24 months   MAL-ED           INDIA                          3                     1        6     147
0-24 months   MAL-ED           INDIA                          4                     0        4     147
0-24 months   MAL-ED           INDIA                          4                     1        3     147
0-24 months   MAL-ED           INDIA                          5                     0       16     147
0-24 months   MAL-ED           INDIA                          5                     1       18     147
0-24 months   MAL-ED           INDIA                          6                     0        7     147
0-24 months   MAL-ED           INDIA                          6                     1        4     147
0-24 months   MAL-ED           INDIA                          7                     0        7     147
0-24 months   MAL-ED           INDIA                          7                     1        5     147
0-24 months   MAL-ED           INDIA                          8                     0       13     147
0-24 months   MAL-ED           INDIA                          8                     1        8     147
0-24 months   MAL-ED           INDIA                          9                     0       15     147
0-24 months   MAL-ED           INDIA                          9                     1       12     147
0-24 months   MAL-ED           INDIA                          10                    0        3     147
0-24 months   MAL-ED           INDIA                          10                    1        3     147
0-24 months   MAL-ED           INDIA                          11                    0        1     147
0-24 months   MAL-ED           INDIA                          11                    1        1     147
0-24 months   MAL-ED           INDIA                          12                    0        2     147
0-24 months   MAL-ED           INDIA                          12                    1        1     147
0-24 months   MAL-ED           INDIA                          13                    0        0     147
0-24 months   MAL-ED           INDIA                          13                    1        1     147
0-24 months   MAL-ED           INDIA                          14                    0        0     147
0-24 months   MAL-ED           INDIA                          14                    1        2     147
0-24 months   MAL-ED           INDIA                          15                    0        1     147
0-24 months   MAL-ED           INDIA                          15                    1        1     147
0-24 months   MAL-ED           INDIA                          16                    0        0     147
0-24 months   MAL-ED           INDIA                          16                    1        0     147
0-24 months   MAL-ED           INDIA                          17                    0        0     147
0-24 months   MAL-ED           INDIA                          17                    1        0     147
0-24 months   MAL-ED           INDIA                          18                    0        0     147
0-24 months   MAL-ED           INDIA                          18                    1        1     147
0-24 months   MAL-ED           INDIA                          19                    0        0     147
0-24 months   MAL-ED           INDIA                          19                    1        0     147
0-24 months   MAL-ED           INDIA                          20                    0        0     147
0-24 months   MAL-ED           INDIA                          20                    1        0     147
0-24 months   MAL-ED           INDIA                          21                    0        0     147
0-24 months   MAL-ED           INDIA                          21                    1        0     147
0-24 months   MAL-ED           INDIA                          24                    0        0     147
0-24 months   MAL-ED           INDIA                          24                    1        0     147
0-24 months   MAL-ED           INDIA                          25                    0        0     147
0-24 months   MAL-ED           INDIA                          25                    1        0     147
0-24 months   MAL-ED           INDIA                          27                    0        0     147
0-24 months   MAL-ED           INDIA                          27                    1        0     147
0-24 months   MAL-ED           NEPAL                          0                     0        0      98
0-24 months   MAL-ED           NEPAL                          0                     1        0      98
0-24 months   MAL-ED           NEPAL                          1                     0        0      98
0-24 months   MAL-ED           NEPAL                          1                     1        0      98
0-24 months   MAL-ED           NEPAL                          2                     0        2      98
0-24 months   MAL-ED           NEPAL                          2                     1        2      98
0-24 months   MAL-ED           NEPAL                          3                     0        2      98
0-24 months   MAL-ED           NEPAL                          3                     1        1      98
0-24 months   MAL-ED           NEPAL                          4                     0        5      98
0-24 months   MAL-ED           NEPAL                          4                     1        6      98
0-24 months   MAL-ED           NEPAL                          5                     0        4      98
0-24 months   MAL-ED           NEPAL                          5                     1        2      98
0-24 months   MAL-ED           NEPAL                          6                     0        4      98
0-24 months   MAL-ED           NEPAL                          6                     1        0      98
0-24 months   MAL-ED           NEPAL                          7                     0        5      98
0-24 months   MAL-ED           NEPAL                          7                     1        4      98
0-24 months   MAL-ED           NEPAL                          8                     0        7      98
0-24 months   MAL-ED           NEPAL                          8                     1        5      98
0-24 months   MAL-ED           NEPAL                          9                     0        6      98
0-24 months   MAL-ED           NEPAL                          9                     1        1      98
0-24 months   MAL-ED           NEPAL                          10                    0       20      98
0-24 months   MAL-ED           NEPAL                          10                    1        7      98
0-24 months   MAL-ED           NEPAL                          11                    0        0      98
0-24 months   MAL-ED           NEPAL                          11                    1        1      98
0-24 months   MAL-ED           NEPAL                          12                    0        5      98
0-24 months   MAL-ED           NEPAL                          12                    1        3      98
0-24 months   MAL-ED           NEPAL                          13                    0        0      98
0-24 months   MAL-ED           NEPAL                          13                    1        0      98
0-24 months   MAL-ED           NEPAL                          14                    0        0      98
0-24 months   MAL-ED           NEPAL                          14                    1        0      98
0-24 months   MAL-ED           NEPAL                          15                    0        1      98
0-24 months   MAL-ED           NEPAL                          15                    1        0      98
0-24 months   MAL-ED           NEPAL                          16                    0        1      98
0-24 months   MAL-ED           NEPAL                          16                    1        0      98
0-24 months   MAL-ED           NEPAL                          17                    0        3      98
0-24 months   MAL-ED           NEPAL                          17                    1        0      98
0-24 months   MAL-ED           NEPAL                          18                    0        1      98
0-24 months   MAL-ED           NEPAL                          18                    1        0      98
0-24 months   MAL-ED           NEPAL                          19                    0        0      98
0-24 months   MAL-ED           NEPAL                          19                    1        0      98
0-24 months   MAL-ED           NEPAL                          20                    0        0      98
0-24 months   MAL-ED           NEPAL                          20                    1        0      98
0-24 months   MAL-ED           NEPAL                          21                    0        0      98
0-24 months   MAL-ED           NEPAL                          21                    1        0      98
0-24 months   MAL-ED           NEPAL                          24                    0        0      98
0-24 months   MAL-ED           NEPAL                          24                    1        0      98
0-24 months   MAL-ED           NEPAL                          25                    0        0      98
0-24 months   MAL-ED           NEPAL                          25                    1        0      98
0-24 months   MAL-ED           NEPAL                          27                    0        0      98
0-24 months   MAL-ED           NEPAL                          27                    1        0      98
0-24 months   MAL-ED           PERU                           0                     0        1     250
0-24 months   MAL-ED           PERU                           0                     1        0     250
0-24 months   MAL-ED           PERU                           1                     0        2     250
0-24 months   MAL-ED           PERU                           1                     1        0     250
0-24 months   MAL-ED           PERU                           2                     0        1     250
0-24 months   MAL-ED           PERU                           2                     1        0     250
0-24 months   MAL-ED           PERU                           3                     0        8     250
0-24 months   MAL-ED           PERU                           3                     1        1     250
0-24 months   MAL-ED           PERU                           4                     0        4     250
0-24 months   MAL-ED           PERU                           4                     1        0     250
0-24 months   MAL-ED           PERU                           5                     0        8     250
0-24 months   MAL-ED           PERU                           5                     1        0     250
0-24 months   MAL-ED           PERU                           6                     0       24     250
0-24 months   MAL-ED           PERU                           6                     1        2     250
0-24 months   MAL-ED           PERU                           7                     0       17     250
0-24 months   MAL-ED           PERU                           7                     1        1     250
0-24 months   MAL-ED           PERU                           8                     0       17     250
0-24 months   MAL-ED           PERU                           8                     1        5     250
0-24 months   MAL-ED           PERU                           9                     0       25     250
0-24 months   MAL-ED           PERU                           9                     1        1     250
0-24 months   MAL-ED           PERU                           10                    0       12     250
0-24 months   MAL-ED           PERU                           10                    1        1     250
0-24 months   MAL-ED           PERU                           11                    0       91     250
0-24 months   MAL-ED           PERU                           11                    1        8     250
0-24 months   MAL-ED           PERU                           12                    0        0     250
0-24 months   MAL-ED           PERU                           12                    1        1     250
0-24 months   MAL-ED           PERU                           13                    0        5     250
0-24 months   MAL-ED           PERU                           13                    1        0     250
0-24 months   MAL-ED           PERU                           14                    0        5     250
0-24 months   MAL-ED           PERU                           14                    1        0     250
0-24 months   MAL-ED           PERU                           15                    0        1     250
0-24 months   MAL-ED           PERU                           15                    1        0     250
0-24 months   MAL-ED           PERU                           16                    0        1     250
0-24 months   MAL-ED           PERU                           16                    1        0     250
0-24 months   MAL-ED           PERU                           17                    0        1     250
0-24 months   MAL-ED           PERU                           17                    1        0     250
0-24 months   MAL-ED           PERU                           18                    0        5     250
0-24 months   MAL-ED           PERU                           18                    1        0     250
0-24 months   MAL-ED           PERU                           19                    0        0     250
0-24 months   MAL-ED           PERU                           19                    1        0     250
0-24 months   MAL-ED           PERU                           20                    0        2     250
0-24 months   MAL-ED           PERU                           20                    1        0     250
0-24 months   MAL-ED           PERU                           21                    0        0     250
0-24 months   MAL-ED           PERU                           21                    1        0     250
0-24 months   MAL-ED           PERU                           24                    0        0     250
0-24 months   MAL-ED           PERU                           24                    1        0     250
0-24 months   MAL-ED           PERU                           25                    0        0     250
0-24 months   MAL-ED           PERU                           25                    1        0     250
0-24 months   MAL-ED           PERU                           27                    0        0     250
0-24 months   MAL-ED           PERU                           27                    1        0     250
0-24 months   MAL-ED           SOUTH AFRICA                   0                     0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   0                     1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   1                     0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   1                     1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   2                     0        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   2                     1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   3                     0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   3                     1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   4                     0        3     110
0-24 months   MAL-ED           SOUTH AFRICA                   4                     1        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   5                     0        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   5                     1        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   6                     0        6     110
0-24 months   MAL-ED           SOUTH AFRICA                   6                     1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   7                     0        5     110
0-24 months   MAL-ED           SOUTH AFRICA                   7                     1        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   8                     0        8     110
0-24 months   MAL-ED           SOUTH AFRICA                   8                     1        3     110
0-24 months   MAL-ED           SOUTH AFRICA                   9                     0        5     110
0-24 months   MAL-ED           SOUTH AFRICA                   9                     1        2     110
0-24 months   MAL-ED           SOUTH AFRICA                   10                    0        5     110
0-24 months   MAL-ED           SOUTH AFRICA                   10                    1        5     110
0-24 months   MAL-ED           SOUTH AFRICA                   11                    0       18     110
0-24 months   MAL-ED           SOUTH AFRICA                   11                    1        2     110
0-24 months   MAL-ED           SOUTH AFRICA                   12                    0       30     110
0-24 months   MAL-ED           SOUTH AFRICA                   12                    1        6     110
0-24 months   MAL-ED           SOUTH AFRICA                   13                    0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   13                    1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   14                    0        3     110
0-24 months   MAL-ED           SOUTH AFRICA                   14                    1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   15                    0        2     110
0-24 months   MAL-ED           SOUTH AFRICA                   15                    1        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   16                    0        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   16                    1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   17                    0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   17                    1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   18                    0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   18                    1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   19                    0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   19                    1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   20                    0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   20                    1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   21                    0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   21                    1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   24                    0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   24                    1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   25                    0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   25                    1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   27                    0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   27                    1        0     110
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        9     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        5     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     0       13     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     0       14     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     1        4     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     0       16     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     0       12     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     0        7     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     1        1     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     0      102     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     1       16     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     0        1     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     0        2     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    0        4     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    0        2     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    1        1     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                    0        2     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                    1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                    0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                    1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                    0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                    1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                    0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                    1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                    0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                    1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                    0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                    1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                    0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                    1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                    0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                    1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                    0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                    1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                    0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                    1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                    0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                    1        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                    0        0     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                    1        0     211
0-24 months   NIH-Crypto       BANGLADESH                     0                     0      109     758
0-24 months   NIH-Crypto       BANGLADESH                     0                     1       65     758
0-24 months   NIH-Crypto       BANGLADESH                     1                     0       12     758
0-24 months   NIH-Crypto       BANGLADESH                     1                     1        9     758
0-24 months   NIH-Crypto       BANGLADESH                     2                     0        8     758
0-24 months   NIH-Crypto       BANGLADESH                     2                     1        5     758
0-24 months   NIH-Crypto       BANGLADESH                     3                     0       23     758
0-24 months   NIH-Crypto       BANGLADESH                     3                     1       11     758
0-24 months   NIH-Crypto       BANGLADESH                     4                     0       26     758
0-24 months   NIH-Crypto       BANGLADESH                     4                     1       14     758
0-24 months   NIH-Crypto       BANGLADESH                     5                     0       59     758
0-24 months   NIH-Crypto       BANGLADESH                     5                     1       29     758
0-24 months   NIH-Crypto       BANGLADESH                     6                     0       26     758
0-24 months   NIH-Crypto       BANGLADESH                     6                     1        9     758
0-24 months   NIH-Crypto       BANGLADESH                     7                     0       43     758
0-24 months   NIH-Crypto       BANGLADESH                     7                     1       14     758
0-24 months   NIH-Crypto       BANGLADESH                     8                     0       62     758
0-24 months   NIH-Crypto       BANGLADESH                     8                     1       28     758
0-24 months   NIH-Crypto       BANGLADESH                     9                     0       66     758
0-24 months   NIH-Crypto       BANGLADESH                     9                     1       20     758
0-24 months   NIH-Crypto       BANGLADESH                     10                    0       36     758
0-24 months   NIH-Crypto       BANGLADESH                     10                    1       18     758
0-24 months   NIH-Crypto       BANGLADESH                     11                    0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     11                    1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     12                    0       18     758
0-24 months   NIH-Crypto       BANGLADESH                     12                    1       17     758
0-24 months   NIH-Crypto       BANGLADESH                     13                    0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     13                    1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     14                    0        5     758
0-24 months   NIH-Crypto       BANGLADESH                     14                    1        3     758
0-24 months   NIH-Crypto       BANGLADESH                     15                    0       11     758
0-24 months   NIH-Crypto       BANGLADESH                     15                    1        5     758
0-24 months   NIH-Crypto       BANGLADESH                     16                    0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     16                    1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     17                    0        4     758
0-24 months   NIH-Crypto       BANGLADESH                     17                    1        3     758
0-24 months   NIH-Crypto       BANGLADESH                     18                    0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     18                    1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     19                    0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     19                    1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     20                    0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     20                    1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     21                    0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     21                    1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     24                    0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     24                    1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     25                    0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     25                    1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     27                    0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     27                    1        0     758
0-24 months   PROBIT           BELARUS                        0                     0        0   16315
0-24 months   PROBIT           BELARUS                        0                     1        0   16315
0-24 months   PROBIT           BELARUS                        1                     0        0   16315
0-24 months   PROBIT           BELARUS                        1                     1        0   16315
0-24 months   PROBIT           BELARUS                        2                     0        0   16315
0-24 months   PROBIT           BELARUS                        2                     1        0   16315
0-24 months   PROBIT           BELARUS                        3                     0        0   16315
0-24 months   PROBIT           BELARUS                        3                     1        0   16315
0-24 months   PROBIT           BELARUS                        4                     0        0   16315
0-24 months   PROBIT           BELARUS                        4                     1        0   16315
0-24 months   PROBIT           BELARUS                        5                     0        0   16315
0-24 months   PROBIT           BELARUS                        5                     1        0   16315
0-24 months   PROBIT           BELARUS                        6                     0        0   16315
0-24 months   PROBIT           BELARUS                        6                     1        0   16315
0-24 months   PROBIT           BELARUS                        7                     0        0   16315
0-24 months   PROBIT           BELARUS                        7                     1        0   16315
0-24 months   PROBIT           BELARUS                        8                     0       18   16315
0-24 months   PROBIT           BELARUS                        8                     1        9   16315
0-24 months   PROBIT           BELARUS                        9                     0        0   16315
0-24 months   PROBIT           BELARUS                        9                     1        0   16315
0-24 months   PROBIT           BELARUS                        10                    0      279   16315
0-24 months   PROBIT           BELARUS                        10                    1       88   16315
0-24 months   PROBIT           BELARUS                        11                    0        0   16315
0-24 months   PROBIT           BELARUS                        11                    1        0   16315
0-24 months   PROBIT           BELARUS                        12                    0     4458   16315
0-24 months   PROBIT           BELARUS                        12                    1     1566   16315
0-24 months   PROBIT           BELARUS                        13                    0     5346   16315
0-24 months   PROBIT           BELARUS                        13                    1     1843   16315
0-24 months   PROBIT           BELARUS                        14                    0      341   16315
0-24 months   PROBIT           BELARUS                        14                    1      103   16315
0-24 months   PROBIT           BELARUS                        15                    0        0   16315
0-24 months   PROBIT           BELARUS                        15                    1        0   16315
0-24 months   PROBIT           BELARUS                        16                    0     1730   16315
0-24 months   PROBIT           BELARUS                        16                    1      534   16315
0-24 months   PROBIT           BELARUS                        17                    0        0   16315
0-24 months   PROBIT           BELARUS                        17                    1        0   16315
0-24 months   PROBIT           BELARUS                        18                    0        0   16315
0-24 months   PROBIT           BELARUS                        18                    1        0   16315
0-24 months   PROBIT           BELARUS                        19                    0        0   16315
0-24 months   PROBIT           BELARUS                        19                    1        0   16315
0-24 months   PROBIT           BELARUS                        20                    0        0   16315
0-24 months   PROBIT           BELARUS                        20                    1        0   16315
0-24 months   PROBIT           BELARUS                        21                    0        0   16315
0-24 months   PROBIT           BELARUS                        21                    1        0   16315
0-24 months   PROBIT           BELARUS                        24                    0        0   16315
0-24 months   PROBIT           BELARUS                        24                    1        0   16315
0-24 months   PROBIT           BELARUS                        25                    0        0   16315
0-24 months   PROBIT           BELARUS                        25                    1        0   16315
0-24 months   PROBIT           BELARUS                        27                    0        0   16315
0-24 months   PROBIT           BELARUS                        27                    1        0   16315
0-24 months   PROVIDE          BANGLADESH                     0                     0      115     700
0-24 months   PROVIDE          BANGLADESH                     0                     1       92     700
0-24 months   PROVIDE          BANGLADESH                     1                     0        9     700
0-24 months   PROVIDE          BANGLADESH                     1                     1        4     700
0-24 months   PROVIDE          BANGLADESH                     2                     0       12     700
0-24 months   PROVIDE          BANGLADESH                     2                     1        6     700
0-24 months   PROVIDE          BANGLADESH                     3                     0       15     700
0-24 months   PROVIDE          BANGLADESH                     3                     1       12     700
0-24 months   PROVIDE          BANGLADESH                     4                     0       33     700
0-24 months   PROVIDE          BANGLADESH                     4                     1       19     700
0-24 months   PROVIDE          BANGLADESH                     5                     0       53     700
0-24 months   PROVIDE          BANGLADESH                     5                     1       27     700
0-24 months   PROVIDE          BANGLADESH                     6                     0       18     700
0-24 months   PROVIDE          BANGLADESH                     6                     1       11     700
0-24 months   PROVIDE          BANGLADESH                     7                     0       34     700
0-24 months   PROVIDE          BANGLADESH                     7                     1        8     700
0-24 months   PROVIDE          BANGLADESH                     8                     0       41     700
0-24 months   PROVIDE          BANGLADESH                     8                     1       23     700
0-24 months   PROVIDE          BANGLADESH                     9                     0       45     700
0-24 months   PROVIDE          BANGLADESH                     9                     1       17     700
0-24 months   PROVIDE          BANGLADESH                     10                    0       27     700
0-24 months   PROVIDE          BANGLADESH                     10                    1       12     700
0-24 months   PROVIDE          BANGLADESH                     11                    0       22     700
0-24 months   PROVIDE          BANGLADESH                     11                    1        4     700
0-24 months   PROVIDE          BANGLADESH                     12                    0        3     700
0-24 months   PROVIDE          BANGLADESH                     12                    1        1     700
0-24 months   PROVIDE          BANGLADESH                     13                    0        0     700
0-24 months   PROVIDE          BANGLADESH                     13                    1        0     700
0-24 months   PROVIDE          BANGLADESH                     14                    0       13     700
0-24 months   PROVIDE          BANGLADESH                     14                    1        6     700
0-24 months   PROVIDE          BANGLADESH                     15                    0        7     700
0-24 months   PROVIDE          BANGLADESH                     15                    1        1     700
0-24 months   PROVIDE          BANGLADESH                     16                    0        6     700
0-24 months   PROVIDE          BANGLADESH                     16                    1        3     700
0-24 months   PROVIDE          BANGLADESH                     17                    0        0     700
0-24 months   PROVIDE          BANGLADESH                     17                    1        0     700
0-24 months   PROVIDE          BANGLADESH                     18                    0        0     700
0-24 months   PROVIDE          BANGLADESH                     18                    1        0     700
0-24 months   PROVIDE          BANGLADESH                     19                    0        1     700
0-24 months   PROVIDE          BANGLADESH                     19                    1        0     700
0-24 months   PROVIDE          BANGLADESH                     20                    0        0     700
0-24 months   PROVIDE          BANGLADESH                     20                    1        0     700
0-24 months   PROVIDE          BANGLADESH                     21                    0        0     700
0-24 months   PROVIDE          BANGLADESH                     21                    1        0     700
0-24 months   PROVIDE          BANGLADESH                     24                    0        0     700
0-24 months   PROVIDE          BANGLADESH                     24                    1        0     700
0-24 months   PROVIDE          BANGLADESH                     25                    0        0     700
0-24 months   PROVIDE          BANGLADESH                     25                    1        0     700
0-24 months   PROVIDE          BANGLADESH                     27                    0        0     700
0-24 months   PROVIDE          BANGLADESH                     27                    1        0     700
0-24 months   SAS-CompFeed     INDIA                          0                     0       92    1510
0-24 months   SAS-CompFeed     INDIA                          0                     1       99    1510
0-24 months   SAS-CompFeed     INDIA                          1                     0        0    1510
0-24 months   SAS-CompFeed     INDIA                          1                     1        0    1510
0-24 months   SAS-CompFeed     INDIA                          2                     0        1    1510
0-24 months   SAS-CompFeed     INDIA                          2                     1        5    1510
0-24 months   SAS-CompFeed     INDIA                          3                     0        8    1510
0-24 months   SAS-CompFeed     INDIA                          3                     1        6    1510
0-24 months   SAS-CompFeed     INDIA                          4                     0       12    1510
0-24 months   SAS-CompFeed     INDIA                          4                     1       13    1510
0-24 months   SAS-CompFeed     INDIA                          5                     0       57    1510
0-24 months   SAS-CompFeed     INDIA                          5                     1       35    1510
0-24 months   SAS-CompFeed     INDIA                          6                     0       12    1510
0-24 months   SAS-CompFeed     INDIA                          6                     1       16    1510
0-24 months   SAS-CompFeed     INDIA                          7                     0       67    1510
0-24 months   SAS-CompFeed     INDIA                          7                     1       50    1510
0-24 months   SAS-CompFeed     INDIA                          8                     0      103    1510
0-24 months   SAS-CompFeed     INDIA                          8                     1       67    1510
0-24 months   SAS-CompFeed     INDIA                          9                     0       60    1510
0-24 months   SAS-CompFeed     INDIA                          9                     1       38    1510
0-24 months   SAS-CompFeed     INDIA                          10                    0      237    1510
0-24 months   SAS-CompFeed     INDIA                          10                    1      146    1510
0-24 months   SAS-CompFeed     INDIA                          11                    0       25    1510
0-24 months   SAS-CompFeed     INDIA                          11                    1       16    1510
0-24 months   SAS-CompFeed     INDIA                          12                    0      144    1510
0-24 months   SAS-CompFeed     INDIA                          12                    1       83    1510
0-24 months   SAS-CompFeed     INDIA                          13                    0        3    1510
0-24 months   SAS-CompFeed     INDIA                          13                    1        4    1510
0-24 months   SAS-CompFeed     INDIA                          14                    0        9    1510
0-24 months   SAS-CompFeed     INDIA                          14                    1        8    1510
0-24 months   SAS-CompFeed     INDIA                          15                    0       36    1510
0-24 months   SAS-CompFeed     INDIA                          15                    1       28    1510
0-24 months   SAS-CompFeed     INDIA                          16                    0        6    1510
0-24 months   SAS-CompFeed     INDIA                          16                    1        4    1510
0-24 months   SAS-CompFeed     INDIA                          17                    0        9    1510
0-24 months   SAS-CompFeed     INDIA                          17                    1        6    1510
0-24 months   SAS-CompFeed     INDIA                          18                    0        2    1510
0-24 months   SAS-CompFeed     INDIA                          18                    1        1    1510
0-24 months   SAS-CompFeed     INDIA                          19                    0        0    1510
0-24 months   SAS-CompFeed     INDIA                          19                    1        1    1510
0-24 months   SAS-CompFeed     INDIA                          20                    0        1    1510
0-24 months   SAS-CompFeed     INDIA                          20                    1        0    1510
0-24 months   SAS-CompFeed     INDIA                          21                    0        0    1510
0-24 months   SAS-CompFeed     INDIA                          21                    1        0    1510
0-24 months   SAS-CompFeed     INDIA                          24                    0        0    1510
0-24 months   SAS-CompFeed     INDIA                          24                    1        0    1510
0-24 months   SAS-CompFeed     INDIA                          25                    0        0    1510
0-24 months   SAS-CompFeed     INDIA                          25                    1        0    1510
0-24 months   SAS-CompFeed     INDIA                          27                    0        0    1510
0-24 months   SAS-CompFeed     INDIA                          27                    1        0    1510
0-24 months   SAS-FoodSuppl    INDIA                          0                     0       79     418
0-24 months   SAS-FoodSuppl    INDIA                          0                     1       68     418
0-24 months   SAS-FoodSuppl    INDIA                          1                     0        1     418
0-24 months   SAS-FoodSuppl    INDIA                          1                     1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          2                     0        3     418
0-24 months   SAS-FoodSuppl    INDIA                          2                     1        7     418
0-24 months   SAS-FoodSuppl    INDIA                          3                     0        3     418
0-24 months   SAS-FoodSuppl    INDIA                          3                     1        4     418
0-24 months   SAS-FoodSuppl    INDIA                          4                     0        6     418
0-24 months   SAS-FoodSuppl    INDIA                          4                     1        5     418
0-24 months   SAS-FoodSuppl    INDIA                          5                     0       24     418
0-24 months   SAS-FoodSuppl    INDIA                          5                     1       31     418
0-24 months   SAS-FoodSuppl    INDIA                          6                     0        5     418
0-24 months   SAS-FoodSuppl    INDIA                          6                     1        7     418
0-24 months   SAS-FoodSuppl    INDIA                          7                     0        8     418
0-24 months   SAS-FoodSuppl    INDIA                          7                     1        8     418
0-24 months   SAS-FoodSuppl    INDIA                          8                     0       30     418
0-24 months   SAS-FoodSuppl    INDIA                          8                     1       19     418
0-24 months   SAS-FoodSuppl    INDIA                          9                     0       14     418
0-24 months   SAS-FoodSuppl    INDIA                          9                     1       12     418
0-24 months   SAS-FoodSuppl    INDIA                          10                    0       36     418
0-24 months   SAS-FoodSuppl    INDIA                          10                    1       24     418
0-24 months   SAS-FoodSuppl    INDIA                          11                    0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          11                    1        3     418
0-24 months   SAS-FoodSuppl    INDIA                          12                    0        9     418
0-24 months   SAS-FoodSuppl    INDIA                          12                    1        1     418
0-24 months   SAS-FoodSuppl    INDIA                          13                    0        1     418
0-24 months   SAS-FoodSuppl    INDIA                          13                    1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          14                    0        1     418
0-24 months   SAS-FoodSuppl    INDIA                          14                    1        6     418
0-24 months   SAS-FoodSuppl    INDIA                          15                    0        1     418
0-24 months   SAS-FoodSuppl    INDIA                          15                    1        2     418
0-24 months   SAS-FoodSuppl    INDIA                          16                    0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          16                    1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          17                    0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          17                    1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          18                    0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          18                    1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          19                    0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          19                    1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          20                    0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          20                    1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          21                    0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          21                    1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          24                    0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          24                    1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          25                    0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          25                    1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          27                    0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          27                    1        0     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0        5    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0        4    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1        2    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      956    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1      302    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0        9    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0       36    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1       17    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0       18    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1        6    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      435    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1      143    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0       14    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1        3    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                    0       93    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                    1       24    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                    0       11    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                    1        4    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                    0       19    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                    1        4    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                    0       27    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                    1        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                    0       20    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                    1        3    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                    0        5    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                    1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                    0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                    1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                    0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                    1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                    0        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                    1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                    0        9    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                    1        7    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                    0        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                    1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                    0      155    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                    1       48    2383
0-24 months   ZVITAMBO         ZIMBABWE                       0                     0       44   13568
0-24 months   ZVITAMBO         ZIMBABWE                       0                     1       16   13568
0-24 months   ZVITAMBO         ZIMBABWE                       1                     0        2   13568
0-24 months   ZVITAMBO         ZIMBABWE                       1                     1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       2                     0        4   13568
0-24 months   ZVITAMBO         ZIMBABWE                       2                     1        1   13568
0-24 months   ZVITAMBO         ZIMBABWE                       3                     0        8   13568
0-24 months   ZVITAMBO         ZIMBABWE                       3                     1        7   13568
0-24 months   ZVITAMBO         ZIMBABWE                       4                     0       20   13568
0-24 months   ZVITAMBO         ZIMBABWE                       4                     1        3   13568
0-24 months   ZVITAMBO         ZIMBABWE                       5                     0       20   13568
0-24 months   ZVITAMBO         ZIMBABWE                       5                     1       12   13568
0-24 months   ZVITAMBO         ZIMBABWE                       6                     0       35   13568
0-24 months   ZVITAMBO         ZIMBABWE                       6                     1        8   13568
0-24 months   ZVITAMBO         ZIMBABWE                       7                     0      592   13568
0-24 months   ZVITAMBO         ZIMBABWE                       7                     1      191   13568
0-24 months   ZVITAMBO         ZIMBABWE                       8                     0       81   13568
0-24 months   ZVITAMBO         ZIMBABWE                       8                     1       21   13568
0-24 months   ZVITAMBO         ZIMBABWE                       9                     0      678   13568
0-24 months   ZVITAMBO         ZIMBABWE                       9                     1      216   13568
0-24 months   ZVITAMBO         ZIMBABWE                       10                    0      236   13568
0-24 months   ZVITAMBO         ZIMBABWE                       10                    1       89   13568
0-24 months   ZVITAMBO         ZIMBABWE                       11                    0     7893   13568
0-24 months   ZVITAMBO         ZIMBABWE                       11                    1     2399   13568
0-24 months   ZVITAMBO         ZIMBABWE                       12                    0       44   13568
0-24 months   ZVITAMBO         ZIMBABWE                       12                    1       14   13568
0-24 months   ZVITAMBO         ZIMBABWE                       13                    0      739   13568
0-24 months   ZVITAMBO         ZIMBABWE                       13                    1      195   13568
0-24 months   ZVITAMBO         ZIMBABWE                       14                    0        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       14                    1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       15                    0        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       15                    1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       16                    0        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       16                    1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       17                    0        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       17                    1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       18                    0        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       18                    1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       19                    0        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       19                    1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       20                    0        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       20                    1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       21                    0        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       21                    1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       24                    0        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       24                    1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       25                    0        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       25                    1        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       27                    0        0   13568
0-24 months   ZVITAMBO         ZIMBABWE                       27                    1        0   13568
0-6 months    COHORTS          GUATEMALA                      0                     0      355     997
0-6 months    COHORTS          GUATEMALA                      0                     1       88     997
0-6 months    COHORTS          GUATEMALA                      1                     0       41     997
0-6 months    COHORTS          GUATEMALA                      1                     1        9     997
0-6 months    COHORTS          GUATEMALA                      2                     0      144     997
0-6 months    COHORTS          GUATEMALA                      2                     1       38     997
0-6 months    COHORTS          GUATEMALA                      3                     0      111     997
0-6 months    COHORTS          GUATEMALA                      3                     1       21     997
0-6 months    COHORTS          GUATEMALA                      4                     0       54     997
0-6 months    COHORTS          GUATEMALA                      4                     1       13     997
0-6 months    COHORTS          GUATEMALA                      5                     0       18     997
0-6 months    COHORTS          GUATEMALA                      5                     1        5     997
0-6 months    COHORTS          GUATEMALA                      6                     0       63     997
0-6 months    COHORTS          GUATEMALA                      6                     1       24     997
0-6 months    COHORTS          GUATEMALA                      7                     0        3     997
0-6 months    COHORTS          GUATEMALA                      7                     1        1     997
0-6 months    COHORTS          GUATEMALA                      8                     0        1     997
0-6 months    COHORTS          GUATEMALA                      8                     1        1     997
0-6 months    COHORTS          GUATEMALA                      9                     0        1     997
0-6 months    COHORTS          GUATEMALA                      9                     1        0     997
0-6 months    COHORTS          GUATEMALA                      10                    0        1     997
0-6 months    COHORTS          GUATEMALA                      10                    1        0     997
0-6 months    COHORTS          GUATEMALA                      11                    0        0     997
0-6 months    COHORTS          GUATEMALA                      11                    1        0     997
0-6 months    COHORTS          GUATEMALA                      12                    0        4     997
0-6 months    COHORTS          GUATEMALA                      12                    1        0     997
0-6 months    COHORTS          GUATEMALA                      13                    0        0     997
0-6 months    COHORTS          GUATEMALA                      13                    1        0     997
0-6 months    COHORTS          GUATEMALA                      14                    0        1     997
0-6 months    COHORTS          GUATEMALA                      14                    1        0     997
0-6 months    COHORTS          GUATEMALA                      15                    0        0     997
0-6 months    COHORTS          GUATEMALA                      15                    1        0     997
0-6 months    COHORTS          GUATEMALA                      16                    0        0     997
0-6 months    COHORTS          GUATEMALA                      16                    1        0     997
0-6 months    COHORTS          GUATEMALA                      17                    0        0     997
0-6 months    COHORTS          GUATEMALA                      17                    1        0     997
0-6 months    COHORTS          GUATEMALA                      18                    0        0     997
0-6 months    COHORTS          GUATEMALA                      18                    1        0     997
0-6 months    COHORTS          GUATEMALA                      19                    0        0     997
0-6 months    COHORTS          GUATEMALA                      19                    1        0     997
0-6 months    COHORTS          GUATEMALA                      20                    0        0     997
0-6 months    COHORTS          GUATEMALA                      20                    1        0     997
0-6 months    COHORTS          GUATEMALA                      21                    0        0     997
0-6 months    COHORTS          GUATEMALA                      21                    1        0     997
0-6 months    COHORTS          GUATEMALA                      24                    0        0     997
0-6 months    COHORTS          GUATEMALA                      24                    1        0     997
0-6 months    COHORTS          GUATEMALA                      25                    0        0     997
0-6 months    COHORTS          GUATEMALA                      25                    1        0     997
0-6 months    COHORTS          GUATEMALA                      27                    0        0     997
0-6 months    COHORTS          GUATEMALA                      27                    1        0     997
0-6 months    COHORTS          INDIA                          0                     0       95    1417
0-6 months    COHORTS          INDIA                          0                     1       26    1417
0-6 months    COHORTS          INDIA                          1                     0        0    1417
0-6 months    COHORTS          INDIA                          1                     1        0    1417
0-6 months    COHORTS          INDIA                          2                     0        0    1417
0-6 months    COHORTS          INDIA                          2                     1        0    1417
0-6 months    COHORTS          INDIA                          3                     0      103    1417
0-6 months    COHORTS          INDIA                          3                     1       29    1417
0-6 months    COHORTS          INDIA                          4                     0        0    1417
0-6 months    COHORTS          INDIA                          4                     1        0    1417
0-6 months    COHORTS          INDIA                          5                     0        0    1417
0-6 months    COHORTS          INDIA                          5                     1        0    1417
0-6 months    COHORTS          INDIA                          6                     0        0    1417
0-6 months    COHORTS          INDIA                          6                     1        0    1417
0-6 months    COHORTS          INDIA                          7                     0        0    1417
0-6 months    COHORTS          INDIA                          7                     1        0    1417
0-6 months    COHORTS          INDIA                          8                     0      159    1417
0-6 months    COHORTS          INDIA                          8                     1       46    1417
0-6 months    COHORTS          INDIA                          9                     0        0    1417
0-6 months    COHORTS          INDIA                          9                     1        0    1417
0-6 months    COHORTS          INDIA                          10                    0        0    1417
0-6 months    COHORTS          INDIA                          10                    1        0    1417
0-6 months    COHORTS          INDIA                          11                    0        0    1417
0-6 months    COHORTS          INDIA                          11                    1        0    1417
0-6 months    COHORTS          INDIA                          12                    0      292    1417
0-6 months    COHORTS          INDIA                          12                    1      110    1417
0-6 months    COHORTS          INDIA                          13                    0        0    1417
0-6 months    COHORTS          INDIA                          13                    1        0    1417
0-6 months    COHORTS          INDIA                          14                    0      121    1417
0-6 months    COHORTS          INDIA                          14                    1       37    1417
0-6 months    COHORTS          INDIA                          15                    0      208    1417
0-6 months    COHORTS          INDIA                          15                    1       71    1417
0-6 months    COHORTS          INDIA                          16                    0        0    1417
0-6 months    COHORTS          INDIA                          16                    1        0    1417
0-6 months    COHORTS          INDIA                          17                    0       90    1417
0-6 months    COHORTS          INDIA                          17                    1       30    1417
0-6 months    COHORTS          INDIA                          18                    0        0    1417
0-6 months    COHORTS          INDIA                          18                    1        0    1417
0-6 months    COHORTS          INDIA                          19                    0        0    1417
0-6 months    COHORTS          INDIA                          19                    1        0    1417
0-6 months    COHORTS          INDIA                          20                    0        0    1417
0-6 months    COHORTS          INDIA                          20                    1        0    1417
0-6 months    COHORTS          INDIA                          21                    0        0    1417
0-6 months    COHORTS          INDIA                          21                    1        0    1417
0-6 months    COHORTS          INDIA                          24                    0        0    1417
0-6 months    COHORTS          INDIA                          24                    1        0    1417
0-6 months    COHORTS          INDIA                          25                    0        0    1417
0-6 months    COHORTS          INDIA                          25                    1        0    1417
0-6 months    COHORTS          INDIA                          27                    0        0    1417
0-6 months    COHORTS          INDIA                          27                    1        0    1417
0-6 months    COHORTS          PHILIPPINES                    0                     0       43    2867
0-6 months    COHORTS          PHILIPPINES                    0                     1       17    2867
0-6 months    COHORTS          PHILIPPINES                    1                     0       28    2867
0-6 months    COHORTS          PHILIPPINES                    1                     1        8    2867
0-6 months    COHORTS          PHILIPPINES                    2                     0       70    2867
0-6 months    COHORTS          PHILIPPINES                    2                     1       26    2867
0-6 months    COHORTS          PHILIPPINES                    3                     0      144    2867
0-6 months    COHORTS          PHILIPPINES                    3                     1       24    2867
0-6 months    COHORTS          PHILIPPINES                    4                     0      201    2867
0-6 months    COHORTS          PHILIPPINES                    4                     1       61    2867
0-6 months    COHORTS          PHILIPPINES                    5                     0      163    2867
0-6 months    COHORTS          PHILIPPINES                    5                     1       41    2867
0-6 months    COHORTS          PHILIPPINES                    6                     0      498    2867
0-6 months    COHORTS          PHILIPPINES                    6                     1      142    2867
0-6 months    COHORTS          PHILIPPINES                    7                     0      121    2867
0-6 months    COHORTS          PHILIPPINES                    7                     1       28    2867
0-6 months    COHORTS          PHILIPPINES                    8                     0      174    2867
0-6 months    COHORTS          PHILIPPINES                    8                     1       50    2867
0-6 months    COHORTS          PHILIPPINES                    9                     0      149    2867
0-6 months    COHORTS          PHILIPPINES                    9                     1       47    2867
0-6 months    COHORTS          PHILIPPINES                    10                    0      254    2867
0-6 months    COHORTS          PHILIPPINES                    10                    1       76    2867
0-6 months    COHORTS          PHILIPPINES                    11                    0       49    2867
0-6 months    COHORTS          PHILIPPINES                    11                    1       16    2867
0-6 months    COHORTS          PHILIPPINES                    12                    0      136    2867
0-6 months    COHORTS          PHILIPPINES                    12                    1       44    2867
0-6 months    COHORTS          PHILIPPINES                    13                    0       45    2867
0-6 months    COHORTS          PHILIPPINES                    13                    1       17    2867
0-6 months    COHORTS          PHILIPPINES                    14                    0      108    2867
0-6 months    COHORTS          PHILIPPINES                    14                    1       39    2867
0-6 months    COHORTS          PHILIPPINES                    15                    0       21    2867
0-6 months    COHORTS          PHILIPPINES                    15                    1       15    2867
0-6 months    COHORTS          PHILIPPINES                    16                    0        3    2867
0-6 months    COHORTS          PHILIPPINES                    16                    1        5    2867
0-6 months    COHORTS          PHILIPPINES                    17                    0        1    2867
0-6 months    COHORTS          PHILIPPINES                    17                    1        1    2867
0-6 months    COHORTS          PHILIPPINES                    18                    0        2    2867
0-6 months    COHORTS          PHILIPPINES                    18                    1        0    2867
0-6 months    COHORTS          PHILIPPINES                    19                    0        0    2867
0-6 months    COHORTS          PHILIPPINES                    19                    1        0    2867
0-6 months    COHORTS          PHILIPPINES                    20                    0        0    2867
0-6 months    COHORTS          PHILIPPINES                    20                    1        0    2867
0-6 months    COHORTS          PHILIPPINES                    21                    0        0    2867
0-6 months    COHORTS          PHILIPPINES                    21                    1        0    2867
0-6 months    COHORTS          PHILIPPINES                    24                    0        0    2867
0-6 months    COHORTS          PHILIPPINES                    24                    1        0    2867
0-6 months    COHORTS          PHILIPPINES                    25                    0        0    2867
0-6 months    COHORTS          PHILIPPINES                    25                    1        0    2867
0-6 months    COHORTS          PHILIPPINES                    27                    0        0    2867
0-6 months    COHORTS          PHILIPPINES                    27                    1        0    2867
0-6 months    GMS-Nepal        NEPAL                          0                     0      198     684
0-6 months    GMS-Nepal        NEPAL                          0                     1       94     684
0-6 months    GMS-Nepal        NEPAL                          1                     0        0     684
0-6 months    GMS-Nepal        NEPAL                          1                     1        0     684
0-6 months    GMS-Nepal        NEPAL                          2                     0        0     684
0-6 months    GMS-Nepal        NEPAL                          2                     1        0     684
0-6 months    GMS-Nepal        NEPAL                          3                     0        0     684
0-6 months    GMS-Nepal        NEPAL                          3                     1        0     684
0-6 months    GMS-Nepal        NEPAL                          4                     0        0     684
0-6 months    GMS-Nepal        NEPAL                          4                     1        0     684
0-6 months    GMS-Nepal        NEPAL                          5                     0       64     684
0-6 months    GMS-Nepal        NEPAL                          5                     1       46     684
0-6 months    GMS-Nepal        NEPAL                          6                     0        0     684
0-6 months    GMS-Nepal        NEPAL                          6                     1        0     684
0-6 months    GMS-Nepal        NEPAL                          7                     0        0     684
0-6 months    GMS-Nepal        NEPAL                          7                     1        0     684
0-6 months    GMS-Nepal        NEPAL                          8                     0       70     684
0-6 months    GMS-Nepal        NEPAL                          8                     1       43     684
0-6 months    GMS-Nepal        NEPAL                          9                     0        0     684
0-6 months    GMS-Nepal        NEPAL                          9                     1        0     684
0-6 months    GMS-Nepal        NEPAL                          10                    0       70     684
0-6 months    GMS-Nepal        NEPAL                          10                    1       60     684
0-6 months    GMS-Nepal        NEPAL                          11                    0        0     684
0-6 months    GMS-Nepal        NEPAL                          11                    1        0     684
0-6 months    GMS-Nepal        NEPAL                          12                    0       24     684
0-6 months    GMS-Nepal        NEPAL                          12                    1       15     684
0-6 months    GMS-Nepal        NEPAL                          13                    0        0     684
0-6 months    GMS-Nepal        NEPAL                          13                    1        0     684
0-6 months    GMS-Nepal        NEPAL                          14                    0        0     684
0-6 months    GMS-Nepal        NEPAL                          14                    1        0     684
0-6 months    GMS-Nepal        NEPAL                          15                    0        0     684
0-6 months    GMS-Nepal        NEPAL                          15                    1        0     684
0-6 months    GMS-Nepal        NEPAL                          16                    0        0     684
0-6 months    GMS-Nepal        NEPAL                          16                    1        0     684
0-6 months    GMS-Nepal        NEPAL                          17                    0        0     684
0-6 months    GMS-Nepal        NEPAL                          17                    1        0     684
0-6 months    GMS-Nepal        NEPAL                          18                    0        0     684
0-6 months    GMS-Nepal        NEPAL                          18                    1        0     684
0-6 months    GMS-Nepal        NEPAL                          19                    0        0     684
0-6 months    GMS-Nepal        NEPAL                          19                    1        0     684
0-6 months    GMS-Nepal        NEPAL                          20                    0        0     684
0-6 months    GMS-Nepal        NEPAL                          20                    1        0     684
0-6 months    GMS-Nepal        NEPAL                          21                    0        0     684
0-6 months    GMS-Nepal        NEPAL                          21                    1        0     684
0-6 months    GMS-Nepal        NEPAL                          24                    0        0     684
0-6 months    GMS-Nepal        NEPAL                          24                    1        0     684
0-6 months    GMS-Nepal        NEPAL                          25                    0        0     684
0-6 months    GMS-Nepal        NEPAL                          25                    1        0     684
0-6 months    GMS-Nepal        NEPAL                          27                    0        0     684
0-6 months    GMS-Nepal        NEPAL                          27                    1        0     684
0-6 months    LCNI-5           MALAWI                         0                     0      104     267
0-6 months    LCNI-5           MALAWI                         0                     1        0     267
0-6 months    LCNI-5           MALAWI                         1                     0        2     267
0-6 months    LCNI-5           MALAWI                         1                     1        0     267
0-6 months    LCNI-5           MALAWI                         2                     0        7     267
0-6 months    LCNI-5           MALAWI                         2                     1        0     267
0-6 months    LCNI-5           MALAWI                         3                     0       11     267
0-6 months    LCNI-5           MALAWI                         3                     1        0     267
0-6 months    LCNI-5           MALAWI                         4                     0       16     267
0-6 months    LCNI-5           MALAWI                         4                     1        2     267
0-6 months    LCNI-5           MALAWI                         5                     0       28     267
0-6 months    LCNI-5           MALAWI                         5                     1        0     267
0-6 months    LCNI-5           MALAWI                         6                     0       23     267
0-6 months    LCNI-5           MALAWI                         6                     1        1     267
0-6 months    LCNI-5           MALAWI                         7                     0       17     267
0-6 months    LCNI-5           MALAWI                         7                     1        0     267
0-6 months    LCNI-5           MALAWI                         8                     0       20     267
0-6 months    LCNI-5           MALAWI                         8                     1        1     267
0-6 months    LCNI-5           MALAWI                         9                     0        4     267
0-6 months    LCNI-5           MALAWI                         9                     1        0     267
0-6 months    LCNI-5           MALAWI                         10                    0        5     267
0-6 months    LCNI-5           MALAWI                         10                    1        0     267
0-6 months    LCNI-5           MALAWI                         11                    0        4     267
0-6 months    LCNI-5           MALAWI                         11                    1        0     267
0-6 months    LCNI-5           MALAWI                         12                    0       19     267
0-6 months    LCNI-5           MALAWI                         12                    1        0     267
0-6 months    LCNI-5           MALAWI                         13                    0        1     267
0-6 months    LCNI-5           MALAWI                         13                    1        0     267
0-6 months    LCNI-5           MALAWI                         14                    0        1     267
0-6 months    LCNI-5           MALAWI                         14                    1        0     267
0-6 months    LCNI-5           MALAWI                         15                    0        0     267
0-6 months    LCNI-5           MALAWI                         15                    1        0     267
0-6 months    LCNI-5           MALAWI                         16                    0        1     267
0-6 months    LCNI-5           MALAWI                         16                    1        0     267
0-6 months    LCNI-5           MALAWI                         17                    0        0     267
0-6 months    LCNI-5           MALAWI                         17                    1        0     267
0-6 months    LCNI-5           MALAWI                         18                    0        0     267
0-6 months    LCNI-5           MALAWI                         18                    1        0     267
0-6 months    LCNI-5           MALAWI                         19                    0        0     267
0-6 months    LCNI-5           MALAWI                         19                    1        0     267
0-6 months    LCNI-5           MALAWI                         20                    0        0     267
0-6 months    LCNI-5           MALAWI                         20                    1        0     267
0-6 months    LCNI-5           MALAWI                         21                    0        0     267
0-6 months    LCNI-5           MALAWI                         21                    1        0     267
0-6 months    LCNI-5           MALAWI                         24                    0        0     267
0-6 months    LCNI-5           MALAWI                         24                    1        0     267
0-6 months    LCNI-5           MALAWI                         25                    0        0     267
0-6 months    LCNI-5           MALAWI                         25                    1        0     267
0-6 months    LCNI-5           MALAWI                         27                    0        0     267
0-6 months    LCNI-5           MALAWI                         27                    1        0     267
0-6 months    MAL-ED           BANGLADESH                     0                     0        0     147
0-6 months    MAL-ED           BANGLADESH                     0                     1        0     147
0-6 months    MAL-ED           BANGLADESH                     1                     0        4     147
0-6 months    MAL-ED           BANGLADESH                     1                     1        3     147
0-6 months    MAL-ED           BANGLADESH                     2                     0        9     147
0-6 months    MAL-ED           BANGLADESH                     2                     1        3     147
0-6 months    MAL-ED           BANGLADESH                     3                     0        7     147
0-6 months    MAL-ED           BANGLADESH                     3                     1        5     147
0-6 months    MAL-ED           BANGLADESH                     4                     0        7     147
0-6 months    MAL-ED           BANGLADESH                     4                     1        1     147
0-6 months    MAL-ED           BANGLADESH                     5                     0       29     147
0-6 months    MAL-ED           BANGLADESH                     5                     1        7     147
0-6 months    MAL-ED           BANGLADESH                     6                     0        6     147
0-6 months    MAL-ED           BANGLADESH                     6                     1        2     147
0-6 months    MAL-ED           BANGLADESH                     7                     0        7     147
0-6 months    MAL-ED           BANGLADESH                     7                     1        3     147
0-6 months    MAL-ED           BANGLADESH                     8                     0       16     147
0-6 months    MAL-ED           BANGLADESH                     8                     1        2     147
0-6 months    MAL-ED           BANGLADESH                     9                     0       13     147
0-6 months    MAL-ED           BANGLADESH                     9                     1        1     147
0-6 months    MAL-ED           BANGLADESH                     10                    0        7     147
0-6 months    MAL-ED           BANGLADESH                     10                    1        3     147
0-6 months    MAL-ED           BANGLADESH                     11                    0        0     147
0-6 months    MAL-ED           BANGLADESH                     11                    1        0     147
0-6 months    MAL-ED           BANGLADESH                     12                    0        7     147
0-6 months    MAL-ED           BANGLADESH                     12                    1        3     147
0-6 months    MAL-ED           BANGLADESH                     13                    0        0     147
0-6 months    MAL-ED           BANGLADESH                     13                    1        0     147
0-6 months    MAL-ED           BANGLADESH                     14                    0        0     147
0-6 months    MAL-ED           BANGLADESH                     14                    1        0     147
0-6 months    MAL-ED           BANGLADESH                     15                    0        0     147
0-6 months    MAL-ED           BANGLADESH                     15                    1        0     147
0-6 months    MAL-ED           BANGLADESH                     16                    0        2     147
0-6 months    MAL-ED           BANGLADESH                     16                    1        0     147
0-6 months    MAL-ED           BANGLADESH                     17                    0        0     147
0-6 months    MAL-ED           BANGLADESH                     17                    1        0     147
0-6 months    MAL-ED           BANGLADESH                     18                    0        0     147
0-6 months    MAL-ED           BANGLADESH                     18                    1        0     147
0-6 months    MAL-ED           BANGLADESH                     19                    0        0     147
0-6 months    MAL-ED           BANGLADESH                     19                    1        0     147
0-6 months    MAL-ED           BANGLADESH                     20                    0        0     147
0-6 months    MAL-ED           BANGLADESH                     20                    1        0     147
0-6 months    MAL-ED           BANGLADESH                     21                    0        0     147
0-6 months    MAL-ED           BANGLADESH                     21                    1        0     147
0-6 months    MAL-ED           BANGLADESH                     24                    0        0     147
0-6 months    MAL-ED           BANGLADESH                     24                    1        0     147
0-6 months    MAL-ED           BANGLADESH                     25                    0        0     147
0-6 months    MAL-ED           BANGLADESH                     25                    1        0     147
0-6 months    MAL-ED           BANGLADESH                     27                    0        0     147
0-6 months    MAL-ED           BANGLADESH                     27                    1        0     147
0-6 months    MAL-ED           INDIA                          0                     0        0     147
0-6 months    MAL-ED           INDIA                          0                     1        0     147
0-6 months    MAL-ED           INDIA                          1                     0        0     147
0-6 months    MAL-ED           INDIA                          1                     1        0     147
0-6 months    MAL-ED           INDIA                          2                     0        5     147
0-6 months    MAL-ED           INDIA                          2                     1        1     147
0-6 months    MAL-ED           INDIA                          3                     0        7     147
0-6 months    MAL-ED           INDIA                          3                     1        5     147
0-6 months    MAL-ED           INDIA                          4                     0        5     147
0-6 months    MAL-ED           INDIA                          4                     1        2     147
0-6 months    MAL-ED           INDIA                          5                     0       24     147
0-6 months    MAL-ED           INDIA                          5                     1       10     147
0-6 months    MAL-ED           INDIA                          6                     0        9     147
0-6 months    MAL-ED           INDIA                          6                     1        2     147
0-6 months    MAL-ED           INDIA                          7                     0        8     147
0-6 months    MAL-ED           INDIA                          7                     1        4     147
0-6 months    MAL-ED           INDIA                          8                     0       16     147
0-6 months    MAL-ED           INDIA                          8                     1        5     147
0-6 months    MAL-ED           INDIA                          9                     0       19     147
0-6 months    MAL-ED           INDIA                          9                     1        8     147
0-6 months    MAL-ED           INDIA                          10                    0        5     147
0-6 months    MAL-ED           INDIA                          10                    1        1     147
0-6 months    MAL-ED           INDIA                          11                    0        2     147
0-6 months    MAL-ED           INDIA                          11                    1        0     147
0-6 months    MAL-ED           INDIA                          12                    0        3     147
0-6 months    MAL-ED           INDIA                          12                    1        0     147
0-6 months    MAL-ED           INDIA                          13                    0        0     147
0-6 months    MAL-ED           INDIA                          13                    1        1     147
0-6 months    MAL-ED           INDIA                          14                    0        0     147
0-6 months    MAL-ED           INDIA                          14                    1        2     147
0-6 months    MAL-ED           INDIA                          15                    0        1     147
0-6 months    MAL-ED           INDIA                          15                    1        1     147
0-6 months    MAL-ED           INDIA                          16                    0        0     147
0-6 months    MAL-ED           INDIA                          16                    1        0     147
0-6 months    MAL-ED           INDIA                          17                    0        0     147
0-6 months    MAL-ED           INDIA                          17                    1        0     147
0-6 months    MAL-ED           INDIA                          18                    0        0     147
0-6 months    MAL-ED           INDIA                          18                    1        1     147
0-6 months    MAL-ED           INDIA                          19                    0        0     147
0-6 months    MAL-ED           INDIA                          19                    1        0     147
0-6 months    MAL-ED           INDIA                          20                    0        0     147
0-6 months    MAL-ED           INDIA                          20                    1        0     147
0-6 months    MAL-ED           INDIA                          21                    0        0     147
0-6 months    MAL-ED           INDIA                          21                    1        0     147
0-6 months    MAL-ED           INDIA                          24                    0        0     147
0-6 months    MAL-ED           INDIA                          24                    1        0     147
0-6 months    MAL-ED           INDIA                          25                    0        0     147
0-6 months    MAL-ED           INDIA                          25                    1        0     147
0-6 months    MAL-ED           INDIA                          27                    0        0     147
0-6 months    MAL-ED           INDIA                          27                    1        0     147
0-6 months    MAL-ED           NEPAL                          0                     0        0      98
0-6 months    MAL-ED           NEPAL                          0                     1        0      98
0-6 months    MAL-ED           NEPAL                          1                     0        0      98
0-6 months    MAL-ED           NEPAL                          1                     1        0      98
0-6 months    MAL-ED           NEPAL                          2                     0        4      98
0-6 months    MAL-ED           NEPAL                          2                     1        0      98
0-6 months    MAL-ED           NEPAL                          3                     0        2      98
0-6 months    MAL-ED           NEPAL                          3                     1        1      98
0-6 months    MAL-ED           NEPAL                          4                     0        7      98
0-6 months    MAL-ED           NEPAL                          4                     1        4      98
0-6 months    MAL-ED           NEPAL                          5                     0        4      98
0-6 months    MAL-ED           NEPAL                          5                     1        2      98
0-6 months    MAL-ED           NEPAL                          6                     0        4      98
0-6 months    MAL-ED           NEPAL                          6                     1        0      98
0-6 months    MAL-ED           NEPAL                          7                     0        8      98
0-6 months    MAL-ED           NEPAL                          7                     1        1      98
0-6 months    MAL-ED           NEPAL                          8                     0       10      98
0-6 months    MAL-ED           NEPAL                          8                     1        2      98
0-6 months    MAL-ED           NEPAL                          9                     0        7      98
0-6 months    MAL-ED           NEPAL                          9                     1        0      98
0-6 months    MAL-ED           NEPAL                          10                    0       21      98
0-6 months    MAL-ED           NEPAL                          10                    1        6      98
0-6 months    MAL-ED           NEPAL                          11                    0        0      98
0-6 months    MAL-ED           NEPAL                          11                    1        1      98
0-6 months    MAL-ED           NEPAL                          12                    0        6      98
0-6 months    MAL-ED           NEPAL                          12                    1        2      98
0-6 months    MAL-ED           NEPAL                          13                    0        0      98
0-6 months    MAL-ED           NEPAL                          13                    1        0      98
0-6 months    MAL-ED           NEPAL                          14                    0        0      98
0-6 months    MAL-ED           NEPAL                          14                    1        0      98
0-6 months    MAL-ED           NEPAL                          15                    0        1      98
0-6 months    MAL-ED           NEPAL                          15                    1        0      98
0-6 months    MAL-ED           NEPAL                          16                    0        1      98
0-6 months    MAL-ED           NEPAL                          16                    1        0      98
0-6 months    MAL-ED           NEPAL                          17                    0        3      98
0-6 months    MAL-ED           NEPAL                          17                    1        0      98
0-6 months    MAL-ED           NEPAL                          18                    0        1      98
0-6 months    MAL-ED           NEPAL                          18                    1        0      98
0-6 months    MAL-ED           NEPAL                          19                    0        0      98
0-6 months    MAL-ED           NEPAL                          19                    1        0      98
0-6 months    MAL-ED           NEPAL                          20                    0        0      98
0-6 months    MAL-ED           NEPAL                          20                    1        0      98
0-6 months    MAL-ED           NEPAL                          21                    0        0      98
0-6 months    MAL-ED           NEPAL                          21                    1        0      98
0-6 months    MAL-ED           NEPAL                          24                    0        0      98
0-6 months    MAL-ED           NEPAL                          24                    1        0      98
0-6 months    MAL-ED           NEPAL                          25                    0        0      98
0-6 months    MAL-ED           NEPAL                          25                    1        0      98
0-6 months    MAL-ED           NEPAL                          27                    0        0      98
0-6 months    MAL-ED           NEPAL                          27                    1        0      98
0-6 months    MAL-ED           PERU                           0                     0        1     250
0-6 months    MAL-ED           PERU                           0                     1        0     250
0-6 months    MAL-ED           PERU                           1                     0        2     250
0-6 months    MAL-ED           PERU                           1                     1        0     250
0-6 months    MAL-ED           PERU                           2                     0        1     250
0-6 months    MAL-ED           PERU                           2                     1        0     250
0-6 months    MAL-ED           PERU                           3                     0        9     250
0-6 months    MAL-ED           PERU                           3                     1        0     250
0-6 months    MAL-ED           PERU                           4                     0        4     250
0-6 months    MAL-ED           PERU                           4                     1        0     250
0-6 months    MAL-ED           PERU                           5                     0        8     250
0-6 months    MAL-ED           PERU                           5                     1        0     250
0-6 months    MAL-ED           PERU                           6                     0       24     250
0-6 months    MAL-ED           PERU                           6                     1        2     250
0-6 months    MAL-ED           PERU                           7                     0       18     250
0-6 months    MAL-ED           PERU                           7                     1        0     250
0-6 months    MAL-ED           PERU                           8                     0       20     250
0-6 months    MAL-ED           PERU                           8                     1        2     250
0-6 months    MAL-ED           PERU                           9                     0       26     250
0-6 months    MAL-ED           PERU                           9                     1        0     250
0-6 months    MAL-ED           PERU                           10                    0       12     250
0-6 months    MAL-ED           PERU                           10                    1        1     250
0-6 months    MAL-ED           PERU                           11                    0       97     250
0-6 months    MAL-ED           PERU                           11                    1        2     250
0-6 months    MAL-ED           PERU                           12                    0        1     250
0-6 months    MAL-ED           PERU                           12                    1        0     250
0-6 months    MAL-ED           PERU                           13                    0        5     250
0-6 months    MAL-ED           PERU                           13                    1        0     250
0-6 months    MAL-ED           PERU                           14                    0        5     250
0-6 months    MAL-ED           PERU                           14                    1        0     250
0-6 months    MAL-ED           PERU                           15                    0        1     250
0-6 months    MAL-ED           PERU                           15                    1        0     250
0-6 months    MAL-ED           PERU                           16                    0        1     250
0-6 months    MAL-ED           PERU                           16                    1        0     250
0-6 months    MAL-ED           PERU                           17                    0        1     250
0-6 months    MAL-ED           PERU                           17                    1        0     250
0-6 months    MAL-ED           PERU                           18                    0        5     250
0-6 months    MAL-ED           PERU                           18                    1        0     250
0-6 months    MAL-ED           PERU                           19                    0        0     250
0-6 months    MAL-ED           PERU                           19                    1        0     250
0-6 months    MAL-ED           PERU                           20                    0        2     250
0-6 months    MAL-ED           PERU                           20                    1        0     250
0-6 months    MAL-ED           PERU                           21                    0        0     250
0-6 months    MAL-ED           PERU                           21                    1        0     250
0-6 months    MAL-ED           PERU                           24                    0        0     250
0-6 months    MAL-ED           PERU                           24                    1        0     250
0-6 months    MAL-ED           PERU                           25                    0        0     250
0-6 months    MAL-ED           PERU                           25                    1        0     250
0-6 months    MAL-ED           PERU                           27                    0        0     250
0-6 months    MAL-ED           PERU                           27                    1        0     250
0-6 months    MAL-ED           SOUTH AFRICA                   0                     0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   0                     1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   1                     0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   1                     1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   2                     0        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   2                     1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   3                     0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   3                     1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   4                     0        3     110
0-6 months    MAL-ED           SOUTH AFRICA                   4                     1        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   5                     0        2     110
0-6 months    MAL-ED           SOUTH AFRICA                   5                     1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   6                     0        6     110
0-6 months    MAL-ED           SOUTH AFRICA                   6                     1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   7                     0        5     110
0-6 months    MAL-ED           SOUTH AFRICA                   7                     1        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   8                     0       10     110
0-6 months    MAL-ED           SOUTH AFRICA                   8                     1        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   9                     0        6     110
0-6 months    MAL-ED           SOUTH AFRICA                   9                     1        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   10                    0        9     110
0-6 months    MAL-ED           SOUTH AFRICA                   10                    1        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   11                    0       20     110
0-6 months    MAL-ED           SOUTH AFRICA                   11                    1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   12                    0       33     110
0-6 months    MAL-ED           SOUTH AFRICA                   12                    1        3     110
0-6 months    MAL-ED           SOUTH AFRICA                   13                    0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   13                    1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   14                    0        3     110
0-6 months    MAL-ED           SOUTH AFRICA                   14                    1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   15                    0        2     110
0-6 months    MAL-ED           SOUTH AFRICA                   15                    1        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   16                    0        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   16                    1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   17                    0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   17                    1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   18                    0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   18                    1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   19                    0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   19                    1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   20                    0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   20                    1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   21                    0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   21                    1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   24                    0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   24                    1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   25                    0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   25                    1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   27                    0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   27                    1        0     110
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0       13     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        1     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     0       13     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     0       16     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     1        2     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     0       16     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     0       12     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     0        7     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     1        1     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     0      113     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     1        5     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     0        1     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     0        2     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    0        4     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    0        3     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                    0        2     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                    1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                    0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                    1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                    0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                    1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                    0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                    1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                    0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                    1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                    0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                    1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                    0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                    1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                    0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                    1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                    0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                    1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                    0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                    1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                    0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                    1        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                    0        0     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                    1        0     211
0-6 months    NIH-Crypto       BANGLADESH                     0                     0      126     758
0-6 months    NIH-Crypto       BANGLADESH                     0                     1       48     758
0-6 months    NIH-Crypto       BANGLADESH                     1                     0       13     758
0-6 months    NIH-Crypto       BANGLADESH                     1                     1        8     758
0-6 months    NIH-Crypto       BANGLADESH                     2                     0        8     758
0-6 months    NIH-Crypto       BANGLADESH                     2                     1        5     758
0-6 months    NIH-Crypto       BANGLADESH                     3                     0       25     758
0-6 months    NIH-Crypto       BANGLADESH                     3                     1        9     758
0-6 months    NIH-Crypto       BANGLADESH                     4                     0       30     758
0-6 months    NIH-Crypto       BANGLADESH                     4                     1       10     758
0-6 months    NIH-Crypto       BANGLADESH                     5                     0       69     758
0-6 months    NIH-Crypto       BANGLADESH                     5                     1       19     758
0-6 months    NIH-Crypto       BANGLADESH                     6                     0       28     758
0-6 months    NIH-Crypto       BANGLADESH                     6                     1        7     758
0-6 months    NIH-Crypto       BANGLADESH                     7                     0       45     758
0-6 months    NIH-Crypto       BANGLADESH                     7                     1       12     758
0-6 months    NIH-Crypto       BANGLADESH                     8                     0       65     758
0-6 months    NIH-Crypto       BANGLADESH                     8                     1       25     758
0-6 months    NIH-Crypto       BANGLADESH                     9                     0       70     758
0-6 months    NIH-Crypto       BANGLADESH                     9                     1       16     758
0-6 months    NIH-Crypto       BANGLADESH                     10                    0       40     758
0-6 months    NIH-Crypto       BANGLADESH                     10                    1       14     758
0-6 months    NIH-Crypto       BANGLADESH                     11                    0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     11                    1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     12                    0       21     758
0-6 months    NIH-Crypto       BANGLADESH                     12                    1       14     758
0-6 months    NIH-Crypto       BANGLADESH                     13                    0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     13                    1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     14                    0        5     758
0-6 months    NIH-Crypto       BANGLADESH                     14                    1        3     758
0-6 months    NIH-Crypto       BANGLADESH                     15                    0       13     758
0-6 months    NIH-Crypto       BANGLADESH                     15                    1        3     758
0-6 months    NIH-Crypto       BANGLADESH                     16                    0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     16                    1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     17                    0        5     758
0-6 months    NIH-Crypto       BANGLADESH                     17                    1        2     758
0-6 months    NIH-Crypto       BANGLADESH                     18                    0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     18                    1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     19                    0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     19                    1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     20                    0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     20                    1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     21                    0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     21                    1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     24                    0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     24                    1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     25                    0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     25                    1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     27                    0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     27                    1        0     758
0-6 months    PROBIT           BELARUS                        0                     0        0   16312
0-6 months    PROBIT           BELARUS                        0                     1        0   16312
0-6 months    PROBIT           BELARUS                        1                     0        0   16312
0-6 months    PROBIT           BELARUS                        1                     1        0   16312
0-6 months    PROBIT           BELARUS                        2                     0        0   16312
0-6 months    PROBIT           BELARUS                        2                     1        0   16312
0-6 months    PROBIT           BELARUS                        3                     0        0   16312
0-6 months    PROBIT           BELARUS                        3                     1        0   16312
0-6 months    PROBIT           BELARUS                        4                     0        0   16312
0-6 months    PROBIT           BELARUS                        4                     1        0   16312
0-6 months    PROBIT           BELARUS                        5                     0        0   16312
0-6 months    PROBIT           BELARUS                        5                     1        0   16312
0-6 months    PROBIT           BELARUS                        6                     0        0   16312
0-6 months    PROBIT           BELARUS                        6                     1        0   16312
0-6 months    PROBIT           BELARUS                        7                     0        0   16312
0-6 months    PROBIT           BELARUS                        7                     1        0   16312
0-6 months    PROBIT           BELARUS                        8                     0       18   16312
0-6 months    PROBIT           BELARUS                        8                     1        9   16312
0-6 months    PROBIT           BELARUS                        9                     0        0   16312
0-6 months    PROBIT           BELARUS                        9                     1        0   16312
0-6 months    PROBIT           BELARUS                        10                    0      282   16312
0-6 months    PROBIT           BELARUS                        10                    1       85   16312
0-6 months    PROBIT           BELARUS                        11                    0        0   16312
0-6 months    PROBIT           BELARUS                        11                    1        0   16312
0-6 months    PROBIT           BELARUS                        12                    0     4493   16312
0-6 months    PROBIT           BELARUS                        12                    1     1531   16312
0-6 months    PROBIT           BELARUS                        13                    0     5381   16312
0-6 months    PROBIT           BELARUS                        13                    1     1805   16312
0-6 months    PROBIT           BELARUS                        14                    0      344   16312
0-6 months    PROBIT           BELARUS                        14                    1      100   16312
0-6 months    PROBIT           BELARUS                        15                    0        0   16312
0-6 months    PROBIT           BELARUS                        15                    1        0   16312
0-6 months    PROBIT           BELARUS                        16                    0     1739   16312
0-6 months    PROBIT           BELARUS                        16                    1      525   16312
0-6 months    PROBIT           BELARUS                        17                    0        0   16312
0-6 months    PROBIT           BELARUS                        17                    1        0   16312
0-6 months    PROBIT           BELARUS                        18                    0        0   16312
0-6 months    PROBIT           BELARUS                        18                    1        0   16312
0-6 months    PROBIT           BELARUS                        19                    0        0   16312
0-6 months    PROBIT           BELARUS                        19                    1        0   16312
0-6 months    PROBIT           BELARUS                        20                    0        0   16312
0-6 months    PROBIT           BELARUS                        20                    1        0   16312
0-6 months    PROBIT           BELARUS                        21                    0        0   16312
0-6 months    PROBIT           BELARUS                        21                    1        0   16312
0-6 months    PROBIT           BELARUS                        24                    0        0   16312
0-6 months    PROBIT           BELARUS                        24                    1        0   16312
0-6 months    PROBIT           BELARUS                        25                    0        0   16312
0-6 months    PROBIT           BELARUS                        25                    1        0   16312
0-6 months    PROBIT           BELARUS                        27                    0        0   16312
0-6 months    PROBIT           BELARUS                        27                    1        0   16312
0-6 months    PROVIDE          BANGLADESH                     0                     0      143     700
0-6 months    PROVIDE          BANGLADESH                     0                     1       64     700
0-6 months    PROVIDE          BANGLADESH                     1                     0       10     700
0-6 months    PROVIDE          BANGLADESH                     1                     1        3     700
0-6 months    PROVIDE          BANGLADESH                     2                     0       14     700
0-6 months    PROVIDE          BANGLADESH                     2                     1        4     700
0-6 months    PROVIDE          BANGLADESH                     3                     0       18     700
0-6 months    PROVIDE          BANGLADESH                     3                     1        9     700
0-6 months    PROVIDE          BANGLADESH                     4                     0       41     700
0-6 months    PROVIDE          BANGLADESH                     4                     1       11     700
0-6 months    PROVIDE          BANGLADESH                     5                     0       56     700
0-6 months    PROVIDE          BANGLADESH                     5                     1       24     700
0-6 months    PROVIDE          BANGLADESH                     6                     0       22     700
0-6 months    PROVIDE          BANGLADESH                     6                     1        7     700
0-6 months    PROVIDE          BANGLADESH                     7                     0       35     700
0-6 months    PROVIDE          BANGLADESH                     7                     1        7     700
0-6 months    PROVIDE          BANGLADESH                     8                     0       44     700
0-6 months    PROVIDE          BANGLADESH                     8                     1       20     700
0-6 months    PROVIDE          BANGLADESH                     9                     0       51     700
0-6 months    PROVIDE          BANGLADESH                     9                     1       11     700
0-6 months    PROVIDE          BANGLADESH                     10                    0       30     700
0-6 months    PROVIDE          BANGLADESH                     10                    1        9     700
0-6 months    PROVIDE          BANGLADESH                     11                    0       23     700
0-6 months    PROVIDE          BANGLADESH                     11                    1        3     700
0-6 months    PROVIDE          BANGLADESH                     12                    0        3     700
0-6 months    PROVIDE          BANGLADESH                     12                    1        1     700
0-6 months    PROVIDE          BANGLADESH                     13                    0        0     700
0-6 months    PROVIDE          BANGLADESH                     13                    1        0     700
0-6 months    PROVIDE          BANGLADESH                     14                    0       14     700
0-6 months    PROVIDE          BANGLADESH                     14                    1        5     700
0-6 months    PROVIDE          BANGLADESH                     15                    0        7     700
0-6 months    PROVIDE          BANGLADESH                     15                    1        1     700
0-6 months    PROVIDE          BANGLADESH                     16                    0        7     700
0-6 months    PROVIDE          BANGLADESH                     16                    1        2     700
0-6 months    PROVIDE          BANGLADESH                     17                    0        0     700
0-6 months    PROVIDE          BANGLADESH                     17                    1        0     700
0-6 months    PROVIDE          BANGLADESH                     18                    0        0     700
0-6 months    PROVIDE          BANGLADESH                     18                    1        0     700
0-6 months    PROVIDE          BANGLADESH                     19                    0        1     700
0-6 months    PROVIDE          BANGLADESH                     19                    1        0     700
0-6 months    PROVIDE          BANGLADESH                     20                    0        0     700
0-6 months    PROVIDE          BANGLADESH                     20                    1        0     700
0-6 months    PROVIDE          BANGLADESH                     21                    0        0     700
0-6 months    PROVIDE          BANGLADESH                     21                    1        0     700
0-6 months    PROVIDE          BANGLADESH                     24                    0        0     700
0-6 months    PROVIDE          BANGLADESH                     24                    1        0     700
0-6 months    PROVIDE          BANGLADESH                     25                    0        0     700
0-6 months    PROVIDE          BANGLADESH                     25                    1        0     700
0-6 months    PROVIDE          BANGLADESH                     27                    0        0     700
0-6 months    PROVIDE          BANGLADESH                     27                    1        0     700
0-6 months    SAS-CompFeed     INDIA                          0                     0      138    1502
0-6 months    SAS-CompFeed     INDIA                          0                     1       52    1502
0-6 months    SAS-CompFeed     INDIA                          1                     0        0    1502
0-6 months    SAS-CompFeed     INDIA                          1                     1        0    1502
0-6 months    SAS-CompFeed     INDIA                          2                     0        5    1502
0-6 months    SAS-CompFeed     INDIA                          2                     1        1    1502
0-6 months    SAS-CompFeed     INDIA                          3                     0       10    1502
0-6 months    SAS-CompFeed     INDIA                          3                     1        4    1502
0-6 months    SAS-CompFeed     INDIA                          4                     0       18    1502
0-6 months    SAS-CompFeed     INDIA                          4                     1        7    1502
0-6 months    SAS-CompFeed     INDIA                          5                     0       70    1502
0-6 months    SAS-CompFeed     INDIA                          5                     1       22    1502
0-6 months    SAS-CompFeed     INDIA                          6                     0       18    1502
0-6 months    SAS-CompFeed     INDIA                          6                     1        9    1502
0-6 months    SAS-CompFeed     INDIA                          7                     0       95    1502
0-6 months    SAS-CompFeed     INDIA                          7                     1       22    1502
0-6 months    SAS-CompFeed     INDIA                          8                     0      137    1502
0-6 months    SAS-CompFeed     INDIA                          8                     1       32    1502
0-6 months    SAS-CompFeed     INDIA                          9                     0       80    1502
0-6 months    SAS-CompFeed     INDIA                          9                     1       18    1502
0-6 months    SAS-CompFeed     INDIA                          10                    0      292    1502
0-6 months    SAS-CompFeed     INDIA                          10                    1       87    1502
0-6 months    SAS-CompFeed     INDIA                          11                    0       32    1502
0-6 months    SAS-CompFeed     INDIA                          11                    1        9    1502
0-6 months    SAS-CompFeed     INDIA                          12                    0      183    1502
0-6 months    SAS-CompFeed     INDIA                          12                    1       44    1502
0-6 months    SAS-CompFeed     INDIA                          13                    0        5    1502
0-6 months    SAS-CompFeed     INDIA                          13                    1        2    1502
0-6 months    SAS-CompFeed     INDIA                          14                    0       13    1502
0-6 months    SAS-CompFeed     INDIA                          14                    1        4    1502
0-6 months    SAS-CompFeed     INDIA                          15                    0       49    1502
0-6 months    SAS-CompFeed     INDIA                          15                    1       14    1502
0-6 months    SAS-CompFeed     INDIA                          16                    0       10    1502
0-6 months    SAS-CompFeed     INDIA                          16                    1        0    1502
0-6 months    SAS-CompFeed     INDIA                          17                    0       13    1502
0-6 months    SAS-CompFeed     INDIA                          17                    1        2    1502
0-6 months    SAS-CompFeed     INDIA                          18                    0        3    1502
0-6 months    SAS-CompFeed     INDIA                          18                    1        0    1502
0-6 months    SAS-CompFeed     INDIA                          19                    0        0    1502
0-6 months    SAS-CompFeed     INDIA                          19                    1        1    1502
0-6 months    SAS-CompFeed     INDIA                          20                    0        1    1502
0-6 months    SAS-CompFeed     INDIA                          20                    1        0    1502
0-6 months    SAS-CompFeed     INDIA                          21                    0        0    1502
0-6 months    SAS-CompFeed     INDIA                          21                    1        0    1502
0-6 months    SAS-CompFeed     INDIA                          24                    0        0    1502
0-6 months    SAS-CompFeed     INDIA                          24                    1        0    1502
0-6 months    SAS-CompFeed     INDIA                          25                    0        0    1502
0-6 months    SAS-CompFeed     INDIA                          25                    1        0    1502
0-6 months    SAS-CompFeed     INDIA                          27                    0        0    1502
0-6 months    SAS-CompFeed     INDIA                          27                    1        0    1502
0-6 months    SAS-FoodSuppl    INDIA                          0                     0      121     418
0-6 months    SAS-FoodSuppl    INDIA                          0                     1       26     418
0-6 months    SAS-FoodSuppl    INDIA                          1                     0        1     418
0-6 months    SAS-FoodSuppl    INDIA                          1                     1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          2                     0        7     418
0-6 months    SAS-FoodSuppl    INDIA                          2                     1        3     418
0-6 months    SAS-FoodSuppl    INDIA                          3                     0        5     418
0-6 months    SAS-FoodSuppl    INDIA                          3                     1        2     418
0-6 months    SAS-FoodSuppl    INDIA                          4                     0        9     418
0-6 months    SAS-FoodSuppl    INDIA                          4                     1        2     418
0-6 months    SAS-FoodSuppl    INDIA                          5                     0       43     418
0-6 months    SAS-FoodSuppl    INDIA                          5                     1       12     418
0-6 months    SAS-FoodSuppl    INDIA                          6                     0        7     418
0-6 months    SAS-FoodSuppl    INDIA                          6                     1        5     418
0-6 months    SAS-FoodSuppl    INDIA                          7                     0       14     418
0-6 months    SAS-FoodSuppl    INDIA                          7                     1        2     418
0-6 months    SAS-FoodSuppl    INDIA                          8                     0       40     418
0-6 months    SAS-FoodSuppl    INDIA                          8                     1        9     418
0-6 months    SAS-FoodSuppl    INDIA                          9                     0       22     418
0-6 months    SAS-FoodSuppl    INDIA                          9                     1        4     418
0-6 months    SAS-FoodSuppl    INDIA                          10                    0       50     418
0-6 months    SAS-FoodSuppl    INDIA                          10                    1       10     418
0-6 months    SAS-FoodSuppl    INDIA                          11                    0        3     418
0-6 months    SAS-FoodSuppl    INDIA                          11                    1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          12                    0       10     418
0-6 months    SAS-FoodSuppl    INDIA                          12                    1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          13                    0        1     418
0-6 months    SAS-FoodSuppl    INDIA                          13                    1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          14                    0        5     418
0-6 months    SAS-FoodSuppl    INDIA                          14                    1        2     418
0-6 months    SAS-FoodSuppl    INDIA                          15                    0        2     418
0-6 months    SAS-FoodSuppl    INDIA                          15                    1        1     418
0-6 months    SAS-FoodSuppl    INDIA                          16                    0        0     418
0-6 months    SAS-FoodSuppl    INDIA                          16                    1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          17                    0        0     418
0-6 months    SAS-FoodSuppl    INDIA                          17                    1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          18                    0        0     418
0-6 months    SAS-FoodSuppl    INDIA                          18                    1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          19                    0        0     418
0-6 months    SAS-FoodSuppl    INDIA                          19                    1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          20                    0        0     418
0-6 months    SAS-FoodSuppl    INDIA                          20                    1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          21                    0        0     418
0-6 months    SAS-FoodSuppl    INDIA                          21                    1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          24                    0        0     418
0-6 months    SAS-FoodSuppl    INDIA                          24                    1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          25                    0        0     418
0-6 months    SAS-FoodSuppl    INDIA                          25                    1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          27                    0        0     418
0-6 months    SAS-FoodSuppl    INDIA                          27                    1        0     418
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0        5    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0        5    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0     1077    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1      181    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0        9    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0       43    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1       10    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0       18    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1        6    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      497    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1       81    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0       15    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1        2    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                    0      103    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                    1       14    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                    0       14    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                    1        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                    0       21    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                    1        2    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                    0       27    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                    1        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                    0       22    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                    1        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                    0        5    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                    1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                    0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                    1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                    0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                    1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                    0        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                    1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                    0       11    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                    1        5    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                    0        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                    1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                    0      175    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                    1       28    2383
0-6 months    ZVITAMBO         ZIMBABWE                       0                     0       50   13478
0-6 months    ZVITAMBO         ZIMBABWE                       0                     1       10   13478
0-6 months    ZVITAMBO         ZIMBABWE                       1                     0        1   13478
0-6 months    ZVITAMBO         ZIMBABWE                       1                     1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       2                     0        4   13478
0-6 months    ZVITAMBO         ZIMBABWE                       2                     1        1   13478
0-6 months    ZVITAMBO         ZIMBABWE                       3                     0        9   13478
0-6 months    ZVITAMBO         ZIMBABWE                       3                     1        6   13478
0-6 months    ZVITAMBO         ZIMBABWE                       4                     0       21   13478
0-6 months    ZVITAMBO         ZIMBABWE                       4                     1        2   13478
0-6 months    ZVITAMBO         ZIMBABWE                       5                     0       19   13478
0-6 months    ZVITAMBO         ZIMBABWE                       5                     1       11   13478
0-6 months    ZVITAMBO         ZIMBABWE                       6                     0       35   13478
0-6 months    ZVITAMBO         ZIMBABWE                       6                     1        8   13478
0-6 months    ZVITAMBO         ZIMBABWE                       7                     0      645   13478
0-6 months    ZVITAMBO         ZIMBABWE                       7                     1      134   13478
0-6 months    ZVITAMBO         ZIMBABWE                       8                     0       86   13478
0-6 months    ZVITAMBO         ZIMBABWE                       8                     1       15   13478
0-6 months    ZVITAMBO         ZIMBABWE                       9                     0      726   13478
0-6 months    ZVITAMBO         ZIMBABWE                       9                     1      163   13478
0-6 months    ZVITAMBO         ZIMBABWE                       10                    0      267   13478
0-6 months    ZVITAMBO         ZIMBABWE                       10                    1       56   13478
0-6 months    ZVITAMBO         ZIMBABWE                       11                    0     8381   13478
0-6 months    ZVITAMBO         ZIMBABWE                       11                    1     1843   13478
0-6 months    ZVITAMBO         ZIMBABWE                       12                    0       49   13478
0-6 months    ZVITAMBO         ZIMBABWE                       12                    1        9   13478
0-6 months    ZVITAMBO         ZIMBABWE                       13                    0      766   13478
0-6 months    ZVITAMBO         ZIMBABWE                       13                    1      161   13478
0-6 months    ZVITAMBO         ZIMBABWE                       14                    0        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       14                    1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       15                    0        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       15                    1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       16                    0        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       16                    1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       17                    0        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       17                    1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       18                    0        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       18                    1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       19                    0        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       19                    1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       20                    0        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       20                    1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       21                    0        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       21                    1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       24                    0        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       24                    1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       25                    0        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       25                    1        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       27                    0        0   13478
0-6 months    ZVITAMBO         ZIMBABWE                       27                    1        0   13478
6-24 months   COHORTS          GUATEMALA                      0                     0      445    1125
6-24 months   COHORTS          GUATEMALA                      0                     1       66    1125
6-24 months   COHORTS          GUATEMALA                      1                     0       50    1125
6-24 months   COHORTS          GUATEMALA                      1                     1       10    1125
6-24 months   COHORTS          GUATEMALA                      2                     0      175    1125
6-24 months   COHORTS          GUATEMALA                      2                     1       21    1125
6-24 months   COHORTS          GUATEMALA                      3                     0      129    1125
6-24 months   COHORTS          GUATEMALA                      3                     1       19    1125
6-24 months   COHORTS          GUATEMALA                      4                     0       58    1125
6-24 months   COHORTS          GUATEMALA                      4                     1       14    1125
6-24 months   COHORTS          GUATEMALA                      5                     0       22    1125
6-24 months   COHORTS          GUATEMALA                      5                     1        4    1125
6-24 months   COHORTS          GUATEMALA                      6                     0       87    1125
6-24 months   COHORTS          GUATEMALA                      6                     1       11    1125
6-24 months   COHORTS          GUATEMALA                      7                     0        4    1125
6-24 months   COHORTS          GUATEMALA                      7                     1        0    1125
6-24 months   COHORTS          GUATEMALA                      8                     0        1    1125
6-24 months   COHORTS          GUATEMALA                      8                     1        0    1125
6-24 months   COHORTS          GUATEMALA                      9                     0        1    1125
6-24 months   COHORTS          GUATEMALA                      9                     1        0    1125
6-24 months   COHORTS          GUATEMALA                      10                    0        1    1125
6-24 months   COHORTS          GUATEMALA                      10                    1        0    1125
6-24 months   COHORTS          GUATEMALA                      11                    0        0    1125
6-24 months   COHORTS          GUATEMALA                      11                    1        0    1125
6-24 months   COHORTS          GUATEMALA                      12                    0        5    1125
6-24 months   COHORTS          GUATEMALA                      12                    1        0    1125
6-24 months   COHORTS          GUATEMALA                      13                    0        0    1125
6-24 months   COHORTS          GUATEMALA                      13                    1        0    1125
6-24 months   COHORTS          GUATEMALA                      14                    0        1    1125
6-24 months   COHORTS          GUATEMALA                      14                    1        0    1125
6-24 months   COHORTS          GUATEMALA                      15                    0        1    1125
6-24 months   COHORTS          GUATEMALA                      15                    1        0    1125
6-24 months   COHORTS          GUATEMALA                      16                    0        0    1125
6-24 months   COHORTS          GUATEMALA                      16                    1        0    1125
6-24 months   COHORTS          GUATEMALA                      17                    0        0    1125
6-24 months   COHORTS          GUATEMALA                      17                    1        0    1125
6-24 months   COHORTS          GUATEMALA                      18                    0        0    1125
6-24 months   COHORTS          GUATEMALA                      18                    1        0    1125
6-24 months   COHORTS          GUATEMALA                      19                    0        0    1125
6-24 months   COHORTS          GUATEMALA                      19                    1        0    1125
6-24 months   COHORTS          GUATEMALA                      20                    0        0    1125
6-24 months   COHORTS          GUATEMALA                      20                    1        0    1125
6-24 months   COHORTS          GUATEMALA                      21                    0        0    1125
6-24 months   COHORTS          GUATEMALA                      21                    1        0    1125
6-24 months   COHORTS          GUATEMALA                      24                    0        0    1125
6-24 months   COHORTS          GUATEMALA                      24                    1        0    1125
6-24 months   COHORTS          GUATEMALA                      25                    0        0    1125
6-24 months   COHORTS          GUATEMALA                      25                    1        0    1125
6-24 months   COHORTS          GUATEMALA                      27                    0        0    1125
6-24 months   COHORTS          GUATEMALA                      27                    1        0    1125
6-24 months   COHORTS          INDIA                          0                     0       92    1405
6-24 months   COHORTS          INDIA                          0                     1       30    1405
6-24 months   COHORTS          INDIA                          1                     0        0    1405
6-24 months   COHORTS          INDIA                          1                     1        0    1405
6-24 months   COHORTS          INDIA                          2                     0        0    1405
6-24 months   COHORTS          INDIA                          2                     1        0    1405
6-24 months   COHORTS          INDIA                          3                     0      109    1405
6-24 months   COHORTS          INDIA                          3                     1       21    1405
6-24 months   COHORTS          INDIA                          4                     0        0    1405
6-24 months   COHORTS          INDIA                          4                     1        0    1405
6-24 months   COHORTS          INDIA                          5                     0        0    1405
6-24 months   COHORTS          INDIA                          5                     1        0    1405
6-24 months   COHORTS          INDIA                          6                     0        0    1405
6-24 months   COHORTS          INDIA                          6                     1        0    1405
6-24 months   COHORTS          INDIA                          7                     0        0    1405
6-24 months   COHORTS          INDIA                          7                     1        0    1405
6-24 months   COHORTS          INDIA                          8                     0      174    1405
6-24 months   COHORTS          INDIA                          8                     1       33    1405
6-24 months   COHORTS          INDIA                          9                     0        0    1405
6-24 months   COHORTS          INDIA                          9                     1        0    1405
6-24 months   COHORTS          INDIA                          10                    0        0    1405
6-24 months   COHORTS          INDIA                          10                    1        0    1405
6-24 months   COHORTS          INDIA                          11                    0        0    1405
6-24 months   COHORTS          INDIA                          11                    1        0    1405
6-24 months   COHORTS          INDIA                          12                    0      350    1405
6-24 months   COHORTS          INDIA                          12                    1       47    1405
6-24 months   COHORTS          INDIA                          13                    0        0    1405
6-24 months   COHORTS          INDIA                          13                    1        0    1405
6-24 months   COHORTS          INDIA                          14                    0      137    1405
6-24 months   COHORTS          INDIA                          14                    1       16    1405
6-24 months   COHORTS          INDIA                          15                    0      246    1405
6-24 months   COHORTS          INDIA                          15                    1       29    1405
6-24 months   COHORTS          INDIA                          16                    0        0    1405
6-24 months   COHORTS          INDIA                          16                    1        0    1405
6-24 months   COHORTS          INDIA                          17                    0      111    1405
6-24 months   COHORTS          INDIA                          17                    1       10    1405
6-24 months   COHORTS          INDIA                          18                    0        0    1405
6-24 months   COHORTS          INDIA                          18                    1        0    1405
6-24 months   COHORTS          INDIA                          19                    0        0    1405
6-24 months   COHORTS          INDIA                          19                    1        0    1405
6-24 months   COHORTS          INDIA                          20                    0        0    1405
6-24 months   COHORTS          INDIA                          20                    1        0    1405
6-24 months   COHORTS          INDIA                          21                    0        0    1405
6-24 months   COHORTS          INDIA                          21                    1        0    1405
6-24 months   COHORTS          INDIA                          24                    0        0    1405
6-24 months   COHORTS          INDIA                          24                    1        0    1405
6-24 months   COHORTS          INDIA                          25                    0        0    1405
6-24 months   COHORTS          INDIA                          25                    1        0    1405
6-24 months   COHORTS          INDIA                          27                    0        0    1405
6-24 months   COHORTS          INDIA                          27                    1        0    1405
6-24 months   COHORTS          PHILIPPINES                    0                     0       35    2655
6-24 months   COHORTS          PHILIPPINES                    0                     1       21    2655
6-24 months   COHORTS          PHILIPPINES                    1                     0       19    2655
6-24 months   COHORTS          PHILIPPINES                    1                     1       15    2655
6-24 months   COHORTS          PHILIPPINES                    2                     0       58    2655
6-24 months   COHORTS          PHILIPPINES                    2                     1       34    2655
6-24 months   COHORTS          PHILIPPINES                    3                     0      106    2655
6-24 months   COHORTS          PHILIPPINES                    3                     1       53    2655
6-24 months   COHORTS          PHILIPPINES                    4                     0      174    2655
6-24 months   COHORTS          PHILIPPINES                    4                     1       71    2655
6-24 months   COHORTS          PHILIPPINES                    5                     0      134    2655
6-24 months   COHORTS          PHILIPPINES                    5                     1       58    2655
6-24 months   COHORTS          PHILIPPINES                    6                     0      441    2655
6-24 months   COHORTS          PHILIPPINES                    6                     1      169    2655
6-24 months   COHORTS          PHILIPPINES                    7                     0       93    2655
6-24 months   COHORTS          PHILIPPINES                    7                     1       44    2655
6-24 months   COHORTS          PHILIPPINES                    8                     0      152    2655
6-24 months   COHORTS          PHILIPPINES                    8                     1       55    2655
6-24 months   COHORTS          PHILIPPINES                    9                     0      128    2655
6-24 months   COHORTS          PHILIPPINES                    9                     1       50    2655
6-24 months   COHORTS          PHILIPPINES                    10                    0      241    2655
6-24 months   COHORTS          PHILIPPINES                    10                    1       63    2655
6-24 months   COHORTS          PHILIPPINES                    11                    0       41    2655
6-24 months   COHORTS          PHILIPPINES                    11                    1       20    2655
6-24 months   COHORTS          PHILIPPINES                    12                    0      128    2655
6-24 months   COHORTS          PHILIPPINES                    12                    1       26    2655
6-24 months   COHORTS          PHILIPPINES                    13                    0       48    2655
6-24 months   COHORTS          PHILIPPINES                    13                    1       10    2655
6-24 months   COHORTS          PHILIPPINES                    14                    0      112    2655
6-24 months   COHORTS          PHILIPPINES                    14                    1       14    2655
6-24 months   COHORTS          PHILIPPINES                    15                    0       28    2655
6-24 months   COHORTS          PHILIPPINES                    15                    1        5    2655
6-24 months   COHORTS          PHILIPPINES                    16                    0        5    2655
6-24 months   COHORTS          PHILIPPINES                    16                    1        0    2655
6-24 months   COHORTS          PHILIPPINES                    17                    0        2    2655
6-24 months   COHORTS          PHILIPPINES                    17                    1        0    2655
6-24 months   COHORTS          PHILIPPINES                    18                    0        2    2655
6-24 months   COHORTS          PHILIPPINES                    18                    1        0    2655
6-24 months   COHORTS          PHILIPPINES                    19                    0        0    2655
6-24 months   COHORTS          PHILIPPINES                    19                    1        0    2655
6-24 months   COHORTS          PHILIPPINES                    20                    0        0    2655
6-24 months   COHORTS          PHILIPPINES                    20                    1        0    2655
6-24 months   COHORTS          PHILIPPINES                    21                    0        0    2655
6-24 months   COHORTS          PHILIPPINES                    21                    1        0    2655
6-24 months   COHORTS          PHILIPPINES                    24                    0        0    2655
6-24 months   COHORTS          PHILIPPINES                    24                    1        0    2655
6-24 months   COHORTS          PHILIPPINES                    25                    0        0    2655
6-24 months   COHORTS          PHILIPPINES                    25                    1        0    2655
6-24 months   COHORTS          PHILIPPINES                    27                    0        0    2655
6-24 months   COHORTS          PHILIPPINES                    27                    1        0    2655
6-24 months   GMS-Nepal        NEPAL                          0                     0      118     589
6-24 months   GMS-Nepal        NEPAL                          0                     1      135     589
6-24 months   GMS-Nepal        NEPAL                          1                     0        0     589
6-24 months   GMS-Nepal        NEPAL                          1                     1        0     589
6-24 months   GMS-Nepal        NEPAL                          2                     0        0     589
6-24 months   GMS-Nepal        NEPAL                          2                     1        0     589
6-24 months   GMS-Nepal        NEPAL                          3                     0        0     589
6-24 months   GMS-Nepal        NEPAL                          3                     1        0     589
6-24 months   GMS-Nepal        NEPAL                          4                     0        0     589
6-24 months   GMS-Nepal        NEPAL                          4                     1        0     589
6-24 months   GMS-Nepal        NEPAL                          5                     0       51     589
6-24 months   GMS-Nepal        NEPAL                          5                     1       42     589
6-24 months   GMS-Nepal        NEPAL                          6                     0        0     589
6-24 months   GMS-Nepal        NEPAL                          6                     1        0     589
6-24 months   GMS-Nepal        NEPAL                          7                     0        0     589
6-24 months   GMS-Nepal        NEPAL                          7                     1        0     589
6-24 months   GMS-Nepal        NEPAL                          8                     0       56     589
6-24 months   GMS-Nepal        NEPAL                          8                     1       42     589
6-24 months   GMS-Nepal        NEPAL                          9                     0        0     589
6-24 months   GMS-Nepal        NEPAL                          9                     1        0     589
6-24 months   GMS-Nepal        NEPAL                          10                    0       63     589
6-24 months   GMS-Nepal        NEPAL                          10                    1       46     589
6-24 months   GMS-Nepal        NEPAL                          11                    0        0     589
6-24 months   GMS-Nepal        NEPAL                          11                    1        0     589
6-24 months   GMS-Nepal        NEPAL                          12                    0       23     589
6-24 months   GMS-Nepal        NEPAL                          12                    1       13     589
6-24 months   GMS-Nepal        NEPAL                          13                    0        0     589
6-24 months   GMS-Nepal        NEPAL                          13                    1        0     589
6-24 months   GMS-Nepal        NEPAL                          14                    0        0     589
6-24 months   GMS-Nepal        NEPAL                          14                    1        0     589
6-24 months   GMS-Nepal        NEPAL                          15                    0        0     589
6-24 months   GMS-Nepal        NEPAL                          15                    1        0     589
6-24 months   GMS-Nepal        NEPAL                          16                    0        0     589
6-24 months   GMS-Nepal        NEPAL                          16                    1        0     589
6-24 months   GMS-Nepal        NEPAL                          17                    0        0     589
6-24 months   GMS-Nepal        NEPAL                          17                    1        0     589
6-24 months   GMS-Nepal        NEPAL                          18                    0        0     589
6-24 months   GMS-Nepal        NEPAL                          18                    1        0     589
6-24 months   GMS-Nepal        NEPAL                          19                    0        0     589
6-24 months   GMS-Nepal        NEPAL                          19                    1        0     589
6-24 months   GMS-Nepal        NEPAL                          20                    0        0     589
6-24 months   GMS-Nepal        NEPAL                          20                    1        0     589
6-24 months   GMS-Nepal        NEPAL                          21                    0        0     589
6-24 months   GMS-Nepal        NEPAL                          21                    1        0     589
6-24 months   GMS-Nepal        NEPAL                          24                    0        0     589
6-24 months   GMS-Nepal        NEPAL                          24                    1        0     589
6-24 months   GMS-Nepal        NEPAL                          25                    0        0     589
6-24 months   GMS-Nepal        NEPAL                          25                    1        0     589
6-24 months   GMS-Nepal        NEPAL                          27                    0        0     589
6-24 months   GMS-Nepal        NEPAL                          27                    1        0     589
6-24 months   LCNI-5           MALAWI                         0                     0      265     802
6-24 months   LCNI-5           MALAWI                         0                     1       24     802
6-24 months   LCNI-5           MALAWI                         1                     0       11     802
6-24 months   LCNI-5           MALAWI                         1                     1        0     802
6-24 months   LCNI-5           MALAWI                         2                     0       28     802
6-24 months   LCNI-5           MALAWI                         2                     1        4     802
6-24 months   LCNI-5           MALAWI                         3                     0       33     802
6-24 months   LCNI-5           MALAWI                         3                     1        5     802
6-24 months   LCNI-5           MALAWI                         4                     0       56     802
6-24 months   LCNI-5           MALAWI                         4                     1        3     802
6-24 months   LCNI-5           MALAWI                         5                     0       54     802
6-24 months   LCNI-5           MALAWI                         5                     1        4     802
6-24 months   LCNI-5           MALAWI                         6                     0       61     802
6-24 months   LCNI-5           MALAWI                         6                     1        7     802
6-24 months   LCNI-5           MALAWI                         7                     0       61     802
6-24 months   LCNI-5           MALAWI                         7                     1        5     802
6-24 months   LCNI-5           MALAWI                         8                     0       83     802
6-24 months   LCNI-5           MALAWI                         8                     1        6     802
6-24 months   LCNI-5           MALAWI                         9                     0       12     802
6-24 months   LCNI-5           MALAWI                         9                     1        0     802
6-24 months   LCNI-5           MALAWI                         10                    0       15     802
6-24 months   LCNI-5           MALAWI                         10                    1        1     802
6-24 months   LCNI-5           MALAWI                         11                    0        7     802
6-24 months   LCNI-5           MALAWI                         11                    1        0     802
6-24 months   LCNI-5           MALAWI                         12                    0       49     802
6-24 months   LCNI-5           MALAWI                         12                    1        3     802
6-24 months   LCNI-5           MALAWI                         13                    0        1     802
6-24 months   LCNI-5           MALAWI                         13                    1        0     802
6-24 months   LCNI-5           MALAWI                         14                    0        3     802
6-24 months   LCNI-5           MALAWI                         14                    1        0     802
6-24 months   LCNI-5           MALAWI                         15                    0        0     802
6-24 months   LCNI-5           MALAWI                         15                    1        0     802
6-24 months   LCNI-5           MALAWI                         16                    0        1     802
6-24 months   LCNI-5           MALAWI                         16                    1        0     802
6-24 months   LCNI-5           MALAWI                         17                    0        0     802
6-24 months   LCNI-5           MALAWI                         17                    1        0     802
6-24 months   LCNI-5           MALAWI                         18                    0        0     802
6-24 months   LCNI-5           MALAWI                         18                    1        0     802
6-24 months   LCNI-5           MALAWI                         19                    0        0     802
6-24 months   LCNI-5           MALAWI                         19                    1        0     802
6-24 months   LCNI-5           MALAWI                         20                    0        0     802
6-24 months   LCNI-5           MALAWI                         20                    1        0     802
6-24 months   LCNI-5           MALAWI                         21                    0        0     802
6-24 months   LCNI-5           MALAWI                         21                    1        0     802
6-24 months   LCNI-5           MALAWI                         24                    0        0     802
6-24 months   LCNI-5           MALAWI                         24                    1        0     802
6-24 months   LCNI-5           MALAWI                         25                    0        0     802
6-24 months   LCNI-5           MALAWI                         25                    1        0     802
6-24 months   LCNI-5           MALAWI                         27                    0        0     802
6-24 months   LCNI-5           MALAWI                         27                    1        0     802
6-24 months   MAL-ED           BANGLADESH                     0                     0        0     131
6-24 months   MAL-ED           BANGLADESH                     0                     1        0     131
6-24 months   MAL-ED           BANGLADESH                     1                     0        6     131
6-24 months   MAL-ED           BANGLADESH                     1                     1        1     131
6-24 months   MAL-ED           BANGLADESH                     2                     0       11     131
6-24 months   MAL-ED           BANGLADESH                     2                     1        1     131
6-24 months   MAL-ED           BANGLADESH                     3                     0        6     131
6-24 months   MAL-ED           BANGLADESH                     3                     1        6     131
6-24 months   MAL-ED           BANGLADESH                     4                     0        5     131
6-24 months   MAL-ED           BANGLADESH                     4                     1        1     131
6-24 months   MAL-ED           BANGLADESH                     5                     0       22     131
6-24 months   MAL-ED           BANGLADESH                     5                     1        7     131
6-24 months   MAL-ED           BANGLADESH                     6                     0        8     131
6-24 months   MAL-ED           BANGLADESH                     6                     1        0     131
6-24 months   MAL-ED           BANGLADESH                     7                     0        6     131
6-24 months   MAL-ED           BANGLADESH                     7                     1        3     131
6-24 months   MAL-ED           BANGLADESH                     8                     0       15     131
6-24 months   MAL-ED           BANGLADESH                     8                     1        1     131
6-24 months   MAL-ED           BANGLADESH                     9                     0       10     131
6-24 months   MAL-ED           BANGLADESH                     9                     1        3     131
6-24 months   MAL-ED           BANGLADESH                     10                    0        7     131
6-24 months   MAL-ED           BANGLADESH                     10                    1        1     131
6-24 months   MAL-ED           BANGLADESH                     11                    0        0     131
6-24 months   MAL-ED           BANGLADESH                     11                    1        0     131
6-24 months   MAL-ED           BANGLADESH                     12                    0        8     131
6-24 months   MAL-ED           BANGLADESH                     12                    1        1     131
6-24 months   MAL-ED           BANGLADESH                     13                    0        0     131
6-24 months   MAL-ED           BANGLADESH                     13                    1        0     131
6-24 months   MAL-ED           BANGLADESH                     14                    0        0     131
6-24 months   MAL-ED           BANGLADESH                     14                    1        0     131
6-24 months   MAL-ED           BANGLADESH                     15                    0        0     131
6-24 months   MAL-ED           BANGLADESH                     15                    1        0     131
6-24 months   MAL-ED           BANGLADESH                     16                    0        2     131
6-24 months   MAL-ED           BANGLADESH                     16                    1        0     131
6-24 months   MAL-ED           BANGLADESH                     17                    0        0     131
6-24 months   MAL-ED           BANGLADESH                     17                    1        0     131
6-24 months   MAL-ED           BANGLADESH                     18                    0        0     131
6-24 months   MAL-ED           BANGLADESH                     18                    1        0     131
6-24 months   MAL-ED           BANGLADESH                     19                    0        0     131
6-24 months   MAL-ED           BANGLADESH                     19                    1        0     131
6-24 months   MAL-ED           BANGLADESH                     20                    0        0     131
6-24 months   MAL-ED           BANGLADESH                     20                    1        0     131
6-24 months   MAL-ED           BANGLADESH                     21                    0        0     131
6-24 months   MAL-ED           BANGLADESH                     21                    1        0     131
6-24 months   MAL-ED           BANGLADESH                     24                    0        0     131
6-24 months   MAL-ED           BANGLADESH                     24                    1        0     131
6-24 months   MAL-ED           BANGLADESH                     25                    0        0     131
6-24 months   MAL-ED           BANGLADESH                     25                    1        0     131
6-24 months   MAL-ED           BANGLADESH                     27                    0        0     131
6-24 months   MAL-ED           BANGLADESH                     27                    1        0     131
6-24 months   MAL-ED           INDIA                          0                     0        0     137
6-24 months   MAL-ED           INDIA                          0                     1        0     137
6-24 months   MAL-ED           INDIA                          1                     0        0     137
6-24 months   MAL-ED           INDIA                          1                     1        0     137
6-24 months   MAL-ED           INDIA                          2                     0        4     137
6-24 months   MAL-ED           INDIA                          2                     1        2     137
6-24 months   MAL-ED           INDIA                          3                     0        7     137
6-24 months   MAL-ED           INDIA                          3                     1        2     137
6-24 months   MAL-ED           INDIA                          4                     0        4     137
6-24 months   MAL-ED           INDIA                          4                     1        2     137
6-24 months   MAL-ED           INDIA                          5                     0       19     137
6-24 months   MAL-ED           INDIA                          5                     1       14     137
6-24 months   MAL-ED           INDIA                          6                     0        8     137
6-24 months   MAL-ED           INDIA                          6                     1        2     137
6-24 months   MAL-ED           INDIA                          7                     0        9     137
6-24 months   MAL-ED           INDIA                          7                     1        2     137
6-24 months   MAL-ED           INDIA                          8                     0       15     137
6-24 months   MAL-ED           INDIA                          8                     1        4     137
6-24 months   MAL-ED           INDIA                          9                     0       20     137
6-24 months   MAL-ED           INDIA                          9                     1        6     137
6-24 months   MAL-ED           INDIA                          10                    0        4     137
6-24 months   MAL-ED           INDIA                          10                    1        2     137
6-24 months   MAL-ED           INDIA                          11                    0        1     137
6-24 months   MAL-ED           INDIA                          11                    1        1     137
6-24 months   MAL-ED           INDIA                          12                    0        2     137
6-24 months   MAL-ED           INDIA                          12                    1        1     137
6-24 months   MAL-ED           INDIA                          13                    0        1     137
6-24 months   MAL-ED           INDIA                          13                    1        0     137
6-24 months   MAL-ED           INDIA                          14                    0        1     137
6-24 months   MAL-ED           INDIA                          14                    1        1     137
6-24 months   MAL-ED           INDIA                          15                    0        2     137
6-24 months   MAL-ED           INDIA                          15                    1        0     137
6-24 months   MAL-ED           INDIA                          16                    0        0     137
6-24 months   MAL-ED           INDIA                          16                    1        0     137
6-24 months   MAL-ED           INDIA                          17                    0        0     137
6-24 months   MAL-ED           INDIA                          17                    1        0     137
6-24 months   MAL-ED           INDIA                          18                    0        1     137
6-24 months   MAL-ED           INDIA                          18                    1        0     137
6-24 months   MAL-ED           INDIA                          19                    0        0     137
6-24 months   MAL-ED           INDIA                          19                    1        0     137
6-24 months   MAL-ED           INDIA                          20                    0        0     137
6-24 months   MAL-ED           INDIA                          20                    1        0     137
6-24 months   MAL-ED           INDIA                          21                    0        0     137
6-24 months   MAL-ED           INDIA                          21                    1        0     137
6-24 months   MAL-ED           INDIA                          24                    0        0     137
6-24 months   MAL-ED           INDIA                          24                    1        0     137
6-24 months   MAL-ED           INDIA                          25                    0        0     137
6-24 months   MAL-ED           INDIA                          25                    1        0     137
6-24 months   MAL-ED           INDIA                          27                    0        0     137
6-24 months   MAL-ED           INDIA                          27                    1        0     137
6-24 months   MAL-ED           NEPAL                          0                     0        0      94
6-24 months   MAL-ED           NEPAL                          0                     1        0      94
6-24 months   MAL-ED           NEPAL                          1                     0        0      94
6-24 months   MAL-ED           NEPAL                          1                     1        0      94
6-24 months   MAL-ED           NEPAL                          2                     0        2      94
6-24 months   MAL-ED           NEPAL                          2                     1        2      94
6-24 months   MAL-ED           NEPAL                          3                     0        3      94
6-24 months   MAL-ED           NEPAL                          3                     1        0      94
6-24 months   MAL-ED           NEPAL                          4                     0        8      94
6-24 months   MAL-ED           NEPAL                          4                     1        2      94
6-24 months   MAL-ED           NEPAL                          5                     0        6      94
6-24 months   MAL-ED           NEPAL                          5                     1        0      94
6-24 months   MAL-ED           NEPAL                          6                     0        4      94
6-24 months   MAL-ED           NEPAL                          6                     1        0      94
6-24 months   MAL-ED           NEPAL                          7                     0        5      94
6-24 months   MAL-ED           NEPAL                          7                     1        4      94
6-24 months   MAL-ED           NEPAL                          8                     0        9      94
6-24 months   MAL-ED           NEPAL                          8                     1        3      94
6-24 months   MAL-ED           NEPAL                          9                     0        6      94
6-24 months   MAL-ED           NEPAL                          9                     1        1      94
6-24 months   MAL-ED           NEPAL                          10                    0       23      94
6-24 months   MAL-ED           NEPAL                          10                    1        2      94
6-24 months   MAL-ED           NEPAL                          11                    0        1      94
6-24 months   MAL-ED           NEPAL                          11                    1        0      94
6-24 months   MAL-ED           NEPAL                          12                    0        6      94
6-24 months   MAL-ED           NEPAL                          12                    1        1      94
6-24 months   MAL-ED           NEPAL                          13                    0        0      94
6-24 months   MAL-ED           NEPAL                          13                    1        0      94
6-24 months   MAL-ED           NEPAL                          14                    0        0      94
6-24 months   MAL-ED           NEPAL                          14                    1        0      94
6-24 months   MAL-ED           NEPAL                          15                    0        1      94
6-24 months   MAL-ED           NEPAL                          15                    1        0      94
6-24 months   MAL-ED           NEPAL                          16                    0        1      94
6-24 months   MAL-ED           NEPAL                          16                    1        0      94
6-24 months   MAL-ED           NEPAL                          17                    0        3      94
6-24 months   MAL-ED           NEPAL                          17                    1        0      94
6-24 months   MAL-ED           NEPAL                          18                    0        1      94
6-24 months   MAL-ED           NEPAL                          18                    1        0      94
6-24 months   MAL-ED           NEPAL                          19                    0        0      94
6-24 months   MAL-ED           NEPAL                          19                    1        0      94
6-24 months   MAL-ED           NEPAL                          20                    0        0      94
6-24 months   MAL-ED           NEPAL                          20                    1        0      94
6-24 months   MAL-ED           NEPAL                          21                    0        0      94
6-24 months   MAL-ED           NEPAL                          21                    1        0      94
6-24 months   MAL-ED           NEPAL                          24                    0        0      94
6-24 months   MAL-ED           NEPAL                          24                    1        0      94
6-24 months   MAL-ED           NEPAL                          25                    0        0      94
6-24 months   MAL-ED           NEPAL                          25                    1        0      94
6-24 months   MAL-ED           NEPAL                          27                    0        0      94
6-24 months   MAL-ED           NEPAL                          27                    1        0      94
6-24 months   MAL-ED           PERU                           0                     0        1     223
6-24 months   MAL-ED           PERU                           0                     1        0     223
6-24 months   MAL-ED           PERU                           1                     0        1     223
6-24 months   MAL-ED           PERU                           1                     1        0     223
6-24 months   MAL-ED           PERU                           2                     0        0     223
6-24 months   MAL-ED           PERU                           2                     1        0     223
6-24 months   MAL-ED           PERU                           3                     0        7     223
6-24 months   MAL-ED           PERU                           3                     1        1     223
6-24 months   MAL-ED           PERU                           4                     0        4     223
6-24 months   MAL-ED           PERU                           4                     1        0     223
6-24 months   MAL-ED           PERU                           5                     0        7     223
6-24 months   MAL-ED           PERU                           5                     1        0     223
6-24 months   MAL-ED           PERU                           6                     0       23     223
6-24 months   MAL-ED           PERU                           6                     1        0     223
6-24 months   MAL-ED           PERU                           7                     0       15     223
6-24 months   MAL-ED           PERU                           7                     1        1     223
6-24 months   MAL-ED           PERU                           8                     0       17     223
6-24 months   MAL-ED           PERU                           8                     1        3     223
6-24 months   MAL-ED           PERU                           9                     0       25     223
6-24 months   MAL-ED           PERU                           9                     1        1     223
6-24 months   MAL-ED           PERU                           10                    0       11     223
6-24 months   MAL-ED           PERU                           10                    1        0     223
6-24 months   MAL-ED           PERU                           11                    0       80     223
6-24 months   MAL-ED           PERU                           11                    1        7     223
6-24 months   MAL-ED           PERU                           12                    0        0     223
6-24 months   MAL-ED           PERU                           12                    1        1     223
6-24 months   MAL-ED           PERU                           13                    0        4     223
6-24 months   MAL-ED           PERU                           13                    1        0     223
6-24 months   MAL-ED           PERU                           14                    0        4     223
6-24 months   MAL-ED           PERU                           14                    1        0     223
6-24 months   MAL-ED           PERU                           15                    0        1     223
6-24 months   MAL-ED           PERU                           15                    1        0     223
6-24 months   MAL-ED           PERU                           16                    0        1     223
6-24 months   MAL-ED           PERU                           16                    1        0     223
6-24 months   MAL-ED           PERU                           17                    0        1     223
6-24 months   MAL-ED           PERU                           17                    1        0     223
6-24 months   MAL-ED           PERU                           18                    0        5     223
6-24 months   MAL-ED           PERU                           18                    1        0     223
6-24 months   MAL-ED           PERU                           19                    0        0     223
6-24 months   MAL-ED           PERU                           19                    1        0     223
6-24 months   MAL-ED           PERU                           20                    0        2     223
6-24 months   MAL-ED           PERU                           20                    1        0     223
6-24 months   MAL-ED           PERU                           21                    0        0     223
6-24 months   MAL-ED           PERU                           21                    1        0     223
6-24 months   MAL-ED           PERU                           24                    0        0     223
6-24 months   MAL-ED           PERU                           24                    1        0     223
6-24 months   MAL-ED           PERU                           25                    0        0     223
6-24 months   MAL-ED           PERU                           25                    1        0     223
6-24 months   MAL-ED           PERU                           27                    0        0     223
6-24 months   MAL-ED           PERU                           27                    1        0     223
6-24 months   MAL-ED           SOUTH AFRICA                   0                     0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   0                     1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   1                     0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   1                     1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   2                     0        1      96
6-24 months   MAL-ED           SOUTH AFRICA                   2                     1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   3                     0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   3                     1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   4                     0        4      96
6-24 months   MAL-ED           SOUTH AFRICA                   4                     1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   5                     0        1      96
6-24 months   MAL-ED           SOUTH AFRICA                   5                     1        1      96
6-24 months   MAL-ED           SOUTH AFRICA                   6                     0        6      96
6-24 months   MAL-ED           SOUTH AFRICA                   6                     1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   7                     0        5      96
6-24 months   MAL-ED           SOUTH AFRICA                   7                     1        1      96
6-24 months   MAL-ED           SOUTH AFRICA                   8                     0        8      96
6-24 months   MAL-ED           SOUTH AFRICA                   8                     1        3      96
6-24 months   MAL-ED           SOUTH AFRICA                   9                     0        5      96
6-24 months   MAL-ED           SOUTH AFRICA                   9                     1        1      96
6-24 months   MAL-ED           SOUTH AFRICA                   10                    0        3      96
6-24 months   MAL-ED           SOUTH AFRICA                   10                    1        5      96
6-24 months   MAL-ED           SOUTH AFRICA                   11                    0       14      96
6-24 months   MAL-ED           SOUTH AFRICA                   11                    1        2      96
6-24 months   MAL-ED           SOUTH AFRICA                   12                    0       28      96
6-24 months   MAL-ED           SOUTH AFRICA                   12                    1        3      96
6-24 months   MAL-ED           SOUTH AFRICA                   13                    0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   13                    1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   14                    0        2      96
6-24 months   MAL-ED           SOUTH AFRICA                   14                    1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   15                    0        2      96
6-24 months   MAL-ED           SOUTH AFRICA                   15                    1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   16                    0        1      96
6-24 months   MAL-ED           SOUTH AFRICA                   16                    1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   17                    0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   17                    1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   18                    0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   18                    1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   19                    0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   19                    1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   20                    0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   20                    1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   21                    0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   21                    1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   24                    0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   24                    1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   25                    0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   25                    1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   27                    0        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   27                    1        0      96
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        9     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        5     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     0       12     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     0       14     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     1        3     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     0       12     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     0       11     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     0        8     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     0      105     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     1       12     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     0        1     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     0        2     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    0        4     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    0        2     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    1        1     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                    0        1     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                    1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                    0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                    1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                    0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                    1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                    0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                    1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                    0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                    1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                    0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                    1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                    0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                    1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                    0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                    1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                    0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                    1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                    0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                    1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                    0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                    1        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                    0        0     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                    1        0     202
6-24 months   NIH-Crypto       BANGLADESH                     0                     0      136     730
6-24 months   NIH-Crypto       BANGLADESH                     0                     1       30     730
6-24 months   NIH-Crypto       BANGLADESH                     1                     0       18     730
6-24 months   NIH-Crypto       BANGLADESH                     1                     1        1     730
6-24 months   NIH-Crypto       BANGLADESH                     2                     0        7     730
6-24 months   NIH-Crypto       BANGLADESH                     2                     1        5     730
6-24 months   NIH-Crypto       BANGLADESH                     3                     0       27     730
6-24 months   NIH-Crypto       BANGLADESH                     3                     1        5     730
6-24 months   NIH-Crypto       BANGLADESH                     4                     0       33     730
6-24 months   NIH-Crypto       BANGLADESH                     4                     1        6     730
6-24 months   NIH-Crypto       BANGLADESH                     5                     0       69     730
6-24 months   NIH-Crypto       BANGLADESH                     5                     1       18     730
6-24 months   NIH-Crypto       BANGLADESH                     6                     0       33     730
6-24 months   NIH-Crypto       BANGLADESH                     6                     1        2     730
6-24 months   NIH-Crypto       BANGLADESH                     7                     0       48     730
6-24 months   NIH-Crypto       BANGLADESH                     7                     1        6     730
6-24 months   NIH-Crypto       BANGLADESH                     8                     0       82     730
6-24 months   NIH-Crypto       BANGLADESH                     8                     1        5     730
6-24 months   NIH-Crypto       BANGLADESH                     9                     0       78     730
6-24 months   NIH-Crypto       BANGLADESH                     9                     1        5     730
6-24 months   NIH-Crypto       BANGLADESH                     10                    0       44     730
6-24 months   NIH-Crypto       BANGLADESH                     10                    1        7     730
6-24 months   NIH-Crypto       BANGLADESH                     11                    0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     11                    1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     12                    0       31     730
6-24 months   NIH-Crypto       BANGLADESH                     12                    1        3     730
6-24 months   NIH-Crypto       BANGLADESH                     13                    0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     13                    1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     14                    0        8     730
6-24 months   NIH-Crypto       BANGLADESH                     14                    1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     15                    0       14     730
6-24 months   NIH-Crypto       BANGLADESH                     15                    1        2     730
6-24 months   NIH-Crypto       BANGLADESH                     16                    0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     16                    1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     17                    0        6     730
6-24 months   NIH-Crypto       BANGLADESH                     17                    1        1     730
6-24 months   NIH-Crypto       BANGLADESH                     18                    0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     18                    1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     19                    0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     19                    1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     20                    0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     20                    1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     21                    0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     21                    1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     24                    0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     24                    1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     25                    0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     25                    1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     27                    0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     27                    1        0     730
6-24 months   PROBIT           BELARUS                        0                     0        0   16027
6-24 months   PROBIT           BELARUS                        0                     1        0   16027
6-24 months   PROBIT           BELARUS                        1                     0        0   16027
6-24 months   PROBIT           BELARUS                        1                     1        0   16027
6-24 months   PROBIT           BELARUS                        2                     0        0   16027
6-24 months   PROBIT           BELARUS                        2                     1        0   16027
6-24 months   PROBIT           BELARUS                        3                     0        0   16027
6-24 months   PROBIT           BELARUS                        3                     1        0   16027
6-24 months   PROBIT           BELARUS                        4                     0        0   16027
6-24 months   PROBIT           BELARUS                        4                     1        0   16027
6-24 months   PROBIT           BELARUS                        5                     0        0   16027
6-24 months   PROBIT           BELARUS                        5                     1        0   16027
6-24 months   PROBIT           BELARUS                        6                     0        0   16027
6-24 months   PROBIT           BELARUS                        6                     1        0   16027
6-24 months   PROBIT           BELARUS                        7                     0        0   16027
6-24 months   PROBIT           BELARUS                        7                     1        0   16027
6-24 months   PROBIT           BELARUS                        8                     0       25   16027
6-24 months   PROBIT           BELARUS                        8                     1        0   16027
6-24 months   PROBIT           BELARUS                        9                     0        0   16027
6-24 months   PROBIT           BELARUS                        9                     1        0   16027
6-24 months   PROBIT           BELARUS                        10                    0      357   16027
6-24 months   PROBIT           BELARUS                        10                    1        4   16027
6-24 months   PROBIT           BELARUS                        11                    0        0   16027
6-24 months   PROBIT           BELARUS                        11                    1        0   16027
6-24 months   PROBIT           BELARUS                        12                    0     5878   16027
6-24 months   PROBIT           BELARUS                        12                    1       57   16027
6-24 months   PROBIT           BELARUS                        13                    0     7014   16027
6-24 months   PROBIT           BELARUS                        13                    1       56   16027
6-24 months   PROBIT           BELARUS                        14                    0      425   16027
6-24 months   PROBIT           BELARUS                        14                    1        5   16027
6-24 months   PROBIT           BELARUS                        15                    0        0   16027
6-24 months   PROBIT           BELARUS                        15                    1        0   16027
6-24 months   PROBIT           BELARUS                        16                    0     2194   16027
6-24 months   PROBIT           BELARUS                        16                    1       12   16027
6-24 months   PROBIT           BELARUS                        17                    0        0   16027
6-24 months   PROBIT           BELARUS                        17                    1        0   16027
6-24 months   PROBIT           BELARUS                        18                    0        0   16027
6-24 months   PROBIT           BELARUS                        18                    1        0   16027
6-24 months   PROBIT           BELARUS                        19                    0        0   16027
6-24 months   PROBIT           BELARUS                        19                    1        0   16027
6-24 months   PROBIT           BELARUS                        20                    0        0   16027
6-24 months   PROBIT           BELARUS                        20                    1        0   16027
6-24 months   PROBIT           BELARUS                        21                    0        0   16027
6-24 months   PROBIT           BELARUS                        21                    1        0   16027
6-24 months   PROBIT           BELARUS                        24                    0        0   16027
6-24 months   PROBIT           BELARUS                        24                    1        0   16027
6-24 months   PROBIT           BELARUS                        25                    0        0   16027
6-24 months   PROBIT           BELARUS                        25                    1        0   16027
6-24 months   PROBIT           BELARUS                        27                    0        0   16027
6-24 months   PROBIT           BELARUS                        27                    1        0   16027
6-24 months   PROVIDE          BANGLADESH                     0                     0      132     615
6-24 months   PROVIDE          BANGLADESH                     0                     1       46     615
6-24 months   PROVIDE          BANGLADESH                     1                     0       12     615
6-24 months   PROVIDE          BANGLADESH                     1                     1        1     615
6-24 months   PROVIDE          BANGLADESH                     2                     0       14     615
6-24 months   PROVIDE          BANGLADESH                     2                     1        3     615
6-24 months   PROVIDE          BANGLADESH                     3                     0       20     615
6-24 months   PROVIDE          BANGLADESH                     3                     1        3     615
6-24 months   PROVIDE          BANGLADESH                     4                     0       34     615
6-24 months   PROVIDE          BANGLADESH                     4                     1        9     615
6-24 months   PROVIDE          BANGLADESH                     5                     0       57     615
6-24 months   PROVIDE          BANGLADESH                     5                     1        8     615
6-24 months   PROVIDE          BANGLADESH                     6                     0       22     615
6-24 months   PROVIDE          BANGLADESH                     6                     1        5     615
6-24 months   PROVIDE          BANGLADESH                     7                     0       34     615
6-24 months   PROVIDE          BANGLADESH                     7                     1        1     615
6-24 months   PROVIDE          BANGLADESH                     8                     0       51     615
6-24 months   PROVIDE          BANGLADESH                     8                     1        8     615
6-24 months   PROVIDE          BANGLADESH                     9                     0       51     615
6-24 months   PROVIDE          BANGLADESH                     9                     1        7     615
6-24 months   PROVIDE          BANGLADESH                     10                    0       30     615
6-24 months   PROVIDE          BANGLADESH                     10                    1        4     615
6-24 months   PROVIDE          BANGLADESH                     11                    0       24     615
6-24 months   PROVIDE          BANGLADESH                     11                    1        1     615
6-24 months   PROVIDE          BANGLADESH                     12                    0        3     615
6-24 months   PROVIDE          BANGLADESH                     12                    1        0     615
6-24 months   PROVIDE          BANGLADESH                     13                    0        0     615
6-24 months   PROVIDE          BANGLADESH                     13                    1        0     615
6-24 months   PROVIDE          BANGLADESH                     14                    0       16     615
6-24 months   PROVIDE          BANGLADESH                     14                    1        2     615
6-24 months   PROVIDE          BANGLADESH                     15                    0        8     615
6-24 months   PROVIDE          BANGLADESH                     15                    1        0     615
6-24 months   PROVIDE          BANGLADESH                     16                    0        7     615
6-24 months   PROVIDE          BANGLADESH                     16                    1        1     615
6-24 months   PROVIDE          BANGLADESH                     17                    0        0     615
6-24 months   PROVIDE          BANGLADESH                     17                    1        0     615
6-24 months   PROVIDE          BANGLADESH                     18                    0        0     615
6-24 months   PROVIDE          BANGLADESH                     18                    1        0     615
6-24 months   PROVIDE          BANGLADESH                     19                    0        1     615
6-24 months   PROVIDE          BANGLADESH                     19                    1        0     615
6-24 months   PROVIDE          BANGLADESH                     20                    0        0     615
6-24 months   PROVIDE          BANGLADESH                     20                    1        0     615
6-24 months   PROVIDE          BANGLADESH                     21                    0        0     615
6-24 months   PROVIDE          BANGLADESH                     21                    1        0     615
6-24 months   PROVIDE          BANGLADESH                     24                    0        0     615
6-24 months   PROVIDE          BANGLADESH                     24                    1        0     615
6-24 months   PROVIDE          BANGLADESH                     25                    0        0     615
6-24 months   PROVIDE          BANGLADESH                     25                    1        0     615
6-24 months   PROVIDE          BANGLADESH                     27                    0        0     615
6-24 months   PROVIDE          BANGLADESH                     27                    1        0     615
6-24 months   SAS-CompFeed     INDIA                          0                     0       97    1386
6-24 months   SAS-CompFeed     INDIA                          0                     1       64    1386
6-24 months   SAS-CompFeed     INDIA                          1                     0        0    1386
6-24 months   SAS-CompFeed     INDIA                          1                     1        0    1386
6-24 months   SAS-CompFeed     INDIA                          2                     0        1    1386
6-24 months   SAS-CompFeed     INDIA                          2                     1        4    1386
6-24 months   SAS-CompFeed     INDIA                          3                     0        8    1386
6-24 months   SAS-CompFeed     INDIA                          3                     1        4    1386
6-24 months   SAS-CompFeed     INDIA                          4                     0       15    1386
6-24 months   SAS-CompFeed     INDIA                          4                     1        8    1386
6-24 months   SAS-CompFeed     INDIA                          5                     0       60    1386
6-24 months   SAS-CompFeed     INDIA                          5                     1       23    1386
6-24 months   SAS-CompFeed     INDIA                          6                     0       13    1386
6-24 months   SAS-CompFeed     INDIA                          6                     1       14    1386
6-24 months   SAS-CompFeed     INDIA                          7                     0       72    1386
6-24 months   SAS-CompFeed     INDIA                          7                     1       33    1386
6-24 months   SAS-CompFeed     INDIA                          8                     0      110    1386
6-24 months   SAS-CompFeed     INDIA                          8                     1       46    1386
6-24 months   SAS-CompFeed     INDIA                          9                     0       61    1386
6-24 months   SAS-CompFeed     INDIA                          9                     1       29    1386
6-24 months   SAS-CompFeed     INDIA                          10                    0      263    1386
6-24 months   SAS-CompFeed     INDIA                          10                    1       91    1386
6-24 months   SAS-CompFeed     INDIA                          11                    0       31    1386
6-24 months   SAS-CompFeed     INDIA                          11                    1        8    1386
6-24 months   SAS-CompFeed     INDIA                          12                    0      155    1386
6-24 months   SAS-CompFeed     INDIA                          12                    1       60    1386
6-24 months   SAS-CompFeed     INDIA                          13                    0        4    1386
6-24 months   SAS-CompFeed     INDIA                          13                    1        3    1386
6-24 months   SAS-CompFeed     INDIA                          14                    0       11    1386
6-24 months   SAS-CompFeed     INDIA                          14                    1        6    1386
6-24 months   SAS-CompFeed     INDIA                          15                    0       42    1386
6-24 months   SAS-CompFeed     INDIA                          15                    1       20    1386
6-24 months   SAS-CompFeed     INDIA                          16                    0        6    1386
6-24 months   SAS-CompFeed     INDIA                          16                    1        4    1386
6-24 months   SAS-CompFeed     INDIA                          17                    0       11    1386
6-24 months   SAS-CompFeed     INDIA                          17                    1        4    1386
6-24 months   SAS-CompFeed     INDIA                          18                    0        2    1386
6-24 months   SAS-CompFeed     INDIA                          18                    1        1    1386
6-24 months   SAS-CompFeed     INDIA                          19                    0        0    1386
6-24 months   SAS-CompFeed     INDIA                          19                    1        1    1386
6-24 months   SAS-CompFeed     INDIA                          20                    0        1    1386
6-24 months   SAS-CompFeed     INDIA                          20                    1        0    1386
6-24 months   SAS-CompFeed     INDIA                          21                    0        0    1386
6-24 months   SAS-CompFeed     INDIA                          21                    1        0    1386
6-24 months   SAS-CompFeed     INDIA                          24                    0        0    1386
6-24 months   SAS-CompFeed     INDIA                          24                    1        0    1386
6-24 months   SAS-CompFeed     INDIA                          25                    0        0    1386
6-24 months   SAS-CompFeed     INDIA                          25                    1        0    1386
6-24 months   SAS-CompFeed     INDIA                          27                    0        0    1386
6-24 months   SAS-CompFeed     INDIA                          27                    1        0    1386
6-24 months   SAS-FoodSuppl    INDIA                          0                     0       89     402
6-24 months   SAS-FoodSuppl    INDIA                          0                     1       51     402
6-24 months   SAS-FoodSuppl    INDIA                          1                     0        1     402
6-24 months   SAS-FoodSuppl    INDIA                          1                     1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          2                     0        6     402
6-24 months   SAS-FoodSuppl    INDIA                          2                     1        4     402
6-24 months   SAS-FoodSuppl    INDIA                          3                     0        4     402
6-24 months   SAS-FoodSuppl    INDIA                          3                     1        3     402
6-24 months   SAS-FoodSuppl    INDIA                          4                     0        6     402
6-24 months   SAS-FoodSuppl    INDIA                          4                     1        4     402
6-24 months   SAS-FoodSuppl    INDIA                          5                     0       29     402
6-24 months   SAS-FoodSuppl    INDIA                          5                     1       24     402
6-24 months   SAS-FoodSuppl    INDIA                          6                     0        7     402
6-24 months   SAS-FoodSuppl    INDIA                          6                     1        5     402
6-24 months   SAS-FoodSuppl    INDIA                          7                     0        9     402
6-24 months   SAS-FoodSuppl    INDIA                          7                     1        6     402
6-24 months   SAS-FoodSuppl    INDIA                          8                     0       37     402
6-24 months   SAS-FoodSuppl    INDIA                          8                     1       10     402
6-24 months   SAS-FoodSuppl    INDIA                          9                     0       17     402
6-24 months   SAS-FoodSuppl    INDIA                          9                     1        9     402
6-24 months   SAS-FoodSuppl    INDIA                          10                    0       40     402
6-24 months   SAS-FoodSuppl    INDIA                          10                    1       18     402
6-24 months   SAS-FoodSuppl    INDIA                          11                    0        0     402
6-24 months   SAS-FoodSuppl    INDIA                          11                    1        3     402
6-24 months   SAS-FoodSuppl    INDIA                          12                    0        9     402
6-24 months   SAS-FoodSuppl    INDIA                          12                    1        1     402
6-24 months   SAS-FoodSuppl    INDIA                          13                    0        1     402
6-24 months   SAS-FoodSuppl    INDIA                          13                    1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          14                    0        2     402
6-24 months   SAS-FoodSuppl    INDIA                          14                    1        4     402
6-24 months   SAS-FoodSuppl    INDIA                          15                    0        2     402
6-24 months   SAS-FoodSuppl    INDIA                          15                    1        1     402
6-24 months   SAS-FoodSuppl    INDIA                          16                    0        0     402
6-24 months   SAS-FoodSuppl    INDIA                          16                    1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          17                    0        0     402
6-24 months   SAS-FoodSuppl    INDIA                          17                    1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          18                    0        0     402
6-24 months   SAS-FoodSuppl    INDIA                          18                    1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          19                    0        0     402
6-24 months   SAS-FoodSuppl    INDIA                          19                    1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          20                    0        0     402
6-24 months   SAS-FoodSuppl    INDIA                          20                    1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          21                    0        0     402
6-24 months   SAS-FoodSuppl    INDIA                          21                    1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          24                    0        0     402
6-24 months   SAS-FoodSuppl    INDIA                          24                    1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          25                    0        0     402
6-24 months   SAS-FoodSuppl    INDIA                          25                    1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          27                    0        0     402
6-24 months   SAS-FoodSuppl    INDIA                          27                    1        0     402
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0        4    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0        4    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1        1    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0        1    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      897    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1      165    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0        8    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0       37    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1       10    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0       21    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1        2    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      394    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1       90    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0       14    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1        1    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                    0       84    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                    1       16    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                    0        8    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                    1        4    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                    0       18    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                    1        2    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                    0       24    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                    1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                    0       17    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                    1        2    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                    0        3    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                    1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                    0        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                    1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                    0        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                    1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                    0        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                    1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                    0        9    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                    1        5    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                    0        1    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                    1        0    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                    0      143    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                    1       24    2009
6-24 months   ZVITAMBO         ZIMBABWE                       0                     0       38   10504
6-24 months   ZVITAMBO         ZIMBABWE                       0                     1        9   10504
6-24 months   ZVITAMBO         ZIMBABWE                       1                     0        2   10504
6-24 months   ZVITAMBO         ZIMBABWE                       1                     1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       2                     0        5   10504
6-24 months   ZVITAMBO         ZIMBABWE                       2                     1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       3                     0       10   10504
6-24 months   ZVITAMBO         ZIMBABWE                       3                     1        2   10504
6-24 months   ZVITAMBO         ZIMBABWE                       4                     0       15   10504
6-24 months   ZVITAMBO         ZIMBABWE                       4                     1        1   10504
6-24 months   ZVITAMBO         ZIMBABWE                       5                     0       26   10504
6-24 months   ZVITAMBO         ZIMBABWE                       5                     1        2   10504
6-24 months   ZVITAMBO         ZIMBABWE                       6                     0       32   10504
6-24 months   ZVITAMBO         ZIMBABWE                       6                     1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       7                     0      548   10504
6-24 months   ZVITAMBO         ZIMBABWE                       7                     1       80   10504
6-24 months   ZVITAMBO         ZIMBABWE                       8                     0       83   10504
6-24 months   ZVITAMBO         ZIMBABWE                       8                     1        6   10504
6-24 months   ZVITAMBO         ZIMBABWE                       9                     0      626   10504
6-24 months   ZVITAMBO         ZIMBABWE                       9                     1       70   10504
6-24 months   ZVITAMBO         ZIMBABWE                       10                    0      215   10504
6-24 months   ZVITAMBO         ZIMBABWE                       10                    1       43   10504
6-24 months   ZVITAMBO         ZIMBABWE                       11                    0     7244   10504
6-24 months   ZVITAMBO         ZIMBABWE                       11                    1      730   10504
6-24 months   ZVITAMBO         ZIMBABWE                       12                    0       42   10504
6-24 months   ZVITAMBO         ZIMBABWE                       12                    1        5   10504
6-24 months   ZVITAMBO         ZIMBABWE                       13                    0      624   10504
6-24 months   ZVITAMBO         ZIMBABWE                       13                    1       46   10504
6-24 months   ZVITAMBO         ZIMBABWE                       14                    0        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       14                    1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       15                    0        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       15                    1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       16                    0        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       16                    1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       17                    0        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       17                    1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       18                    0        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       18                    1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       19                    0        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       19                    1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       20                    0        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       20                    1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       21                    0        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       21                    1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       24                    0        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       24                    1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       25                    0        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       25                    1        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       27                    0        0   10504
6-24 months   ZVITAMBO         ZIMBABWE                       27                    1        0   10504


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
















