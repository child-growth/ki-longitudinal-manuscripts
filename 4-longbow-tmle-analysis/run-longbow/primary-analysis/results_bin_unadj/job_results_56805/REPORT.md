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

**Outcome Variable:** ever_stunted

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

agecat        studyid          country                        feducyrs    ever_stunted   n_cell       n
------------  ---------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   COHORTS          GUATEMALA                      0                      0      122    1250
0-24 months   COHORTS          GUATEMALA                      0                      1      445    1250
0-24 months   COHORTS          GUATEMALA                      1                      0       12    1250
0-24 months   COHORTS          GUATEMALA                      1                      1       57    1250
0-24 months   COHORTS          GUATEMALA                      2                      0       64    1250
0-24 months   COHORTS          GUATEMALA                      2                      1      153    1250
0-24 months   COHORTS          GUATEMALA                      3                      0       38    1250
0-24 months   COHORTS          GUATEMALA                      3                      1      125    1250
0-24 months   COHORTS          GUATEMALA                      4                      0       13    1250
0-24 months   COHORTS          GUATEMALA                      4                      1       66    1250
0-24 months   COHORTS          GUATEMALA                      5                      0        8    1250
0-24 months   COHORTS          GUATEMALA                      5                      1       23    1250
0-24 months   COHORTS          GUATEMALA                      6                      0       29    1250
0-24 months   COHORTS          GUATEMALA                      6                      1       79    1250
0-24 months   COHORTS          GUATEMALA                      7                      0        3    1250
0-24 months   COHORTS          GUATEMALA                      7                      1        1    1250
0-24 months   COHORTS          GUATEMALA                      8                      0        1    1250
0-24 months   COHORTS          GUATEMALA                      8                      1        1    1250
0-24 months   COHORTS          GUATEMALA                      9                      0        0    1250
0-24 months   COHORTS          GUATEMALA                      9                      1        1    1250
0-24 months   COHORTS          GUATEMALA                      10                     0        0    1250
0-24 months   COHORTS          GUATEMALA                      10                     1        1    1250
0-24 months   COHORTS          GUATEMALA                      11                     0        0    1250
0-24 months   COHORTS          GUATEMALA                      11                     1        0    1250
0-24 months   COHORTS          GUATEMALA                      12                     0        1    1250
0-24 months   COHORTS          GUATEMALA                      12                     1        5    1250
0-24 months   COHORTS          GUATEMALA                      13                     0        0    1250
0-24 months   COHORTS          GUATEMALA                      13                     1        0    1250
0-24 months   COHORTS          GUATEMALA                      14                     0        0    1250
0-24 months   COHORTS          GUATEMALA                      14                     1        1    1250
0-24 months   COHORTS          GUATEMALA                      15                     0        0    1250
0-24 months   COHORTS          GUATEMALA                      15                     1        1    1250
0-24 months   COHORTS          GUATEMALA                      16                     0        0    1250
0-24 months   COHORTS          GUATEMALA                      16                     1        0    1250
0-24 months   COHORTS          GUATEMALA                      17                     0        0    1250
0-24 months   COHORTS          GUATEMALA                      17                     1        0    1250
0-24 months   COHORTS          GUATEMALA                      18                     0        0    1250
0-24 months   COHORTS          GUATEMALA                      18                     1        0    1250
0-24 months   COHORTS          GUATEMALA                      19                     0        0    1250
0-24 months   COHORTS          GUATEMALA                      19                     1        0    1250
0-24 months   COHORTS          GUATEMALA                      20                     0        0    1250
0-24 months   COHORTS          GUATEMALA                      20                     1        0    1250
0-24 months   COHORTS          GUATEMALA                      21                     0        0    1250
0-24 months   COHORTS          GUATEMALA                      21                     1        0    1250
0-24 months   COHORTS          GUATEMALA                      24                     0        0    1250
0-24 months   COHORTS          GUATEMALA                      24                     1        0    1250
0-24 months   COHORTS          GUATEMALA                      25                     0        0    1250
0-24 months   COHORTS          GUATEMALA                      25                     1        0    1250
0-24 months   COHORTS          GUATEMALA                      27                     0        0    1250
0-24 months   COHORTS          GUATEMALA                      27                     1        0    1250
0-24 months   COHORTS          INDIA                          0                      0       54    1447
0-24 months   COHORTS          INDIA                          0                      1       70    1447
0-24 months   COHORTS          INDIA                          1                      0        0    1447
0-24 months   COHORTS          INDIA                          1                      1        0    1447
0-24 months   COHORTS          INDIA                          2                      0        0    1447
0-24 months   COHORTS          INDIA                          2                      1        0    1447
0-24 months   COHORTS          INDIA                          3                      0       68    1447
0-24 months   COHORTS          INDIA                          3                      1       66    1447
0-24 months   COHORTS          INDIA                          4                      0        0    1447
0-24 months   COHORTS          INDIA                          4                      1        0    1447
0-24 months   COHORTS          INDIA                          5                      0        0    1447
0-24 months   COHORTS          INDIA                          5                      1        0    1447
0-24 months   COHORTS          INDIA                          6                      0        0    1447
0-24 months   COHORTS          INDIA                          6                      1        0    1447
0-24 months   COHORTS          INDIA                          7                      0        0    1447
0-24 months   COHORTS          INDIA                          7                      1        0    1447
0-24 months   COHORTS          INDIA                          8                      0      118    1447
0-24 months   COHORTS          INDIA                          8                      1       96    1447
0-24 months   COHORTS          INDIA                          9                      0        0    1447
0-24 months   COHORTS          INDIA                          9                      1        0    1447
0-24 months   COHORTS          INDIA                          10                     0        0    1447
0-24 months   COHORTS          INDIA                          10                     1        0    1447
0-24 months   COHORTS          INDIA                          11                     0        0    1447
0-24 months   COHORTS          INDIA                          11                     1        0    1447
0-24 months   COHORTS          INDIA                          12                     0      256    1447
0-24 months   COHORTS          INDIA                          12                     1      152    1447
0-24 months   COHORTS          INDIA                          13                     0        0    1447
0-24 months   COHORTS          INDIA                          13                     1        0    1447
0-24 months   COHORTS          INDIA                          14                     0       99    1447
0-24 months   COHORTS          INDIA                          14                     1       59    1447
0-24 months   COHORTS          INDIA                          15                     0      215    1447
0-24 months   COHORTS          INDIA                          15                     1       68    1447
0-24 months   COHORTS          INDIA                          16                     0        0    1447
0-24 months   COHORTS          INDIA                          16                     1        0    1447
0-24 months   COHORTS          INDIA                          17                     0       90    1447
0-24 months   COHORTS          INDIA                          17                     1       36    1447
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
0-24 months   COHORTS          PHILIPPINES                    0                      0       10    2880
0-24 months   COHORTS          PHILIPPINES                    0                      1       50    2880
0-24 months   COHORTS          PHILIPPINES                    1                      0        4    2880
0-24 months   COHORTS          PHILIPPINES                    1                      1       32    2880
0-24 months   COHORTS          PHILIPPINES                    2                      0       14    2880
0-24 months   COHORTS          PHILIPPINES                    2                      1       82    2880
0-24 months   COHORTS          PHILIPPINES                    3                      0       34    2880
0-24 months   COHORTS          PHILIPPINES                    3                      1      135    2880
0-24 months   COHORTS          PHILIPPINES                    4                      0       54    2880
0-24 months   COHORTS          PHILIPPINES                    4                      1      209    2880
0-24 months   COHORTS          PHILIPPINES                    5                      0       44    2880
0-24 months   COHORTS          PHILIPPINES                    5                      1      160    2880
0-24 months   COHORTS          PHILIPPINES                    6                      0      156    2880
0-24 months   COHORTS          PHILIPPINES                    6                      1      489    2880
0-24 months   COHORTS          PHILIPPINES                    7                      0       57    2880
0-24 months   COHORTS          PHILIPPINES                    7                      1       94    2880
0-24 months   COHORTS          PHILIPPINES                    8                      0       54    2880
0-24 months   COHORTS          PHILIPPINES                    8                      1      171    2880
0-24 months   COHORTS          PHILIPPINES                    9                      0       76    2880
0-24 months   COHORTS          PHILIPPINES                    9                      1      121    2880
0-24 months   COHORTS          PHILIPPINES                    10                     0      122    2880
0-24 months   COHORTS          PHILIPPINES                    10                     1      209    2880
0-24 months   COHORTS          PHILIPPINES                    11                     0       24    2880
0-24 months   COHORTS          PHILIPPINES                    11                     1       41    2880
0-24 months   COHORTS          PHILIPPINES                    12                     0      101    2880
0-24 months   COHORTS          PHILIPPINES                    12                     1       79    2880
0-24 months   COHORTS          PHILIPPINES                    13                     0       34    2880
0-24 months   COHORTS          PHILIPPINES                    13                     1       29    2880
0-24 months   COHORTS          PHILIPPINES                    14                     0       79    2880
0-24 months   COHORTS          PHILIPPINES                    14                     1       68    2880
0-24 months   COHORTS          PHILIPPINES                    15                     0       21    2880
0-24 months   COHORTS          PHILIPPINES                    15                     1       15    2880
0-24 months   COHORTS          PHILIPPINES                    16                     0        5    2880
0-24 months   COHORTS          PHILIPPINES                    16                     1        3    2880
0-24 months   COHORTS          PHILIPPINES                    17                     0        2    2880
0-24 months   COHORTS          PHILIPPINES                    17                     1        0    2880
0-24 months   COHORTS          PHILIPPINES                    18                     0        2    2880
0-24 months   COHORTS          PHILIPPINES                    18                     1        0    2880
0-24 months   COHORTS          PHILIPPINES                    19                     0        0    2880
0-24 months   COHORTS          PHILIPPINES                    19                     1        0    2880
0-24 months   COHORTS          PHILIPPINES                    20                     0        0    2880
0-24 months   COHORTS          PHILIPPINES                    20                     1        0    2880
0-24 months   COHORTS          PHILIPPINES                    21                     0        0    2880
0-24 months   COHORTS          PHILIPPINES                    21                     1        0    2880
0-24 months   COHORTS          PHILIPPINES                    24                     0        0    2880
0-24 months   COHORTS          PHILIPPINES                    24                     1        0    2880
0-24 months   COHORTS          PHILIPPINES                    25                     0        0    2880
0-24 months   COHORTS          PHILIPPINES                    25                     1        0    2880
0-24 months   COHORTS          PHILIPPINES                    27                     0        0    2880
0-24 months   COHORTS          PHILIPPINES                    27                     1        0    2880
0-24 months   GMS-Nepal        NEPAL                          0                      0       92     696
0-24 months   GMS-Nepal        NEPAL                          0                      1      204     696
0-24 months   GMS-Nepal        NEPAL                          1                      0        0     696
0-24 months   GMS-Nepal        NEPAL                          1                      1        0     696
0-24 months   GMS-Nepal        NEPAL                          2                      0        0     696
0-24 months   GMS-Nepal        NEPAL                          2                      1        0     696
0-24 months   GMS-Nepal        NEPAL                          3                      0        0     696
0-24 months   GMS-Nepal        NEPAL                          3                      1        0     696
0-24 months   GMS-Nepal        NEPAL                          4                      0        0     696
0-24 months   GMS-Nepal        NEPAL                          4                      1        0     696
0-24 months   GMS-Nepal        NEPAL                          5                      0       40     696
0-24 months   GMS-Nepal        NEPAL                          5                      1       70     696
0-24 months   GMS-Nepal        NEPAL                          6                      0        0     696
0-24 months   GMS-Nepal        NEPAL                          6                      1        0     696
0-24 months   GMS-Nepal        NEPAL                          7                      0        0     696
0-24 months   GMS-Nepal        NEPAL                          7                      1        0     696
0-24 months   GMS-Nepal        NEPAL                          8                      0       39     696
0-24 months   GMS-Nepal        NEPAL                          8                      1       78     696
0-24 months   GMS-Nepal        NEPAL                          9                      0        0     696
0-24 months   GMS-Nepal        NEPAL                          9                      1        0     696
0-24 months   GMS-Nepal        NEPAL                          10                     0       61     696
0-24 months   GMS-Nepal        NEPAL                          10                     1       73     696
0-24 months   GMS-Nepal        NEPAL                          11                     0        0     696
0-24 months   GMS-Nepal        NEPAL                          11                     1        0     696
0-24 months   GMS-Nepal        NEPAL                          12                     0       18     696
0-24 months   GMS-Nepal        NEPAL                          12                     1       21     696
0-24 months   GMS-Nepal        NEPAL                          13                     0        0     696
0-24 months   GMS-Nepal        NEPAL                          13                     1        0     696
0-24 months   GMS-Nepal        NEPAL                          14                     0        0     696
0-24 months   GMS-Nepal        NEPAL                          14                     1        0     696
0-24 months   GMS-Nepal        NEPAL                          15                     0        0     696
0-24 months   GMS-Nepal        NEPAL                          15                     1        0     696
0-24 months   GMS-Nepal        NEPAL                          16                     0        0     696
0-24 months   GMS-Nepal        NEPAL                          16                     1        0     696
0-24 months   GMS-Nepal        NEPAL                          17                     0        0     696
0-24 months   GMS-Nepal        NEPAL                          17                     1        0     696
0-24 months   GMS-Nepal        NEPAL                          18                     0        0     696
0-24 months   GMS-Nepal        NEPAL                          18                     1        0     696
0-24 months   GMS-Nepal        NEPAL                          19                     0        0     696
0-24 months   GMS-Nepal        NEPAL                          19                     1        0     696
0-24 months   GMS-Nepal        NEPAL                          20                     0        0     696
0-24 months   GMS-Nepal        NEPAL                          20                     1        0     696
0-24 months   GMS-Nepal        NEPAL                          21                     0        0     696
0-24 months   GMS-Nepal        NEPAL                          21                     1        0     696
0-24 months   GMS-Nepal        NEPAL                          24                     0        0     696
0-24 months   GMS-Nepal        NEPAL                          24                     1        0     696
0-24 months   GMS-Nepal        NEPAL                          25                     0        0     696
0-24 months   GMS-Nepal        NEPAL                          25                     1        0     696
0-24 months   GMS-Nepal        NEPAL                          27                     0        0     696
0-24 months   GMS-Nepal        NEPAL                          27                     1        0     696
0-24 months   LCNI-5           MALAWI                         0                      0      107     813
0-24 months   LCNI-5           MALAWI                         0                      1      184     813
0-24 months   LCNI-5           MALAWI                         1                      0        3     813
0-24 months   LCNI-5           MALAWI                         1                      1        8     813
0-24 months   LCNI-5           MALAWI                         2                      0       11     813
0-24 months   LCNI-5           MALAWI                         2                      1       21     813
0-24 months   LCNI-5           MALAWI                         3                      0       10     813
0-24 months   LCNI-5           MALAWI                         3                      1       29     813
0-24 months   LCNI-5           MALAWI                         4                      0       21     813
0-24 months   LCNI-5           MALAWI                         4                      1       38     813
0-24 months   LCNI-5           MALAWI                         5                      0       26     813
0-24 months   LCNI-5           MALAWI                         5                      1       35     813
0-24 months   LCNI-5           MALAWI                         6                      0       27     813
0-24 months   LCNI-5           MALAWI                         6                      1       42     813
0-24 months   LCNI-5           MALAWI                         7                      0       17     813
0-24 months   LCNI-5           MALAWI                         7                      1       51     813
0-24 months   LCNI-5           MALAWI                         8                      0       29     813
0-24 months   LCNI-5           MALAWI                         8                      1       62     813
0-24 months   LCNI-5           MALAWI                         9                      0        8     813
0-24 months   LCNI-5           MALAWI                         9                      1        4     813
0-24 months   LCNI-5           MALAWI                         10                     0        6     813
0-24 months   LCNI-5           MALAWI                         10                     1       10     813
0-24 months   LCNI-5           MALAWI                         11                     0        3     813
0-24 months   LCNI-5           MALAWI                         11                     1        4     813
0-24 months   LCNI-5           MALAWI                         12                     0       27     813
0-24 months   LCNI-5           MALAWI                         12                     1       25     813
0-24 months   LCNI-5           MALAWI                         13                     0        0     813
0-24 months   LCNI-5           MALAWI                         13                     1        1     813
0-24 months   LCNI-5           MALAWI                         14                     0        0     813
0-24 months   LCNI-5           MALAWI                         14                     1        3     813
0-24 months   LCNI-5           MALAWI                         15                     0        0     813
0-24 months   LCNI-5           MALAWI                         15                     1        0     813
0-24 months   LCNI-5           MALAWI                         16                     0        0     813
0-24 months   LCNI-5           MALAWI                         16                     1        1     813
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
0-24 months   MAL-ED           BANGLADESH                     0                      0        0     149
0-24 months   MAL-ED           BANGLADESH                     0                      1        0     149
0-24 months   MAL-ED           BANGLADESH                     1                      0        3     149
0-24 months   MAL-ED           BANGLADESH                     1                      1        4     149
0-24 months   MAL-ED           BANGLADESH                     2                      0        5     149
0-24 months   MAL-ED           BANGLADESH                     2                      1        7     149
0-24 months   MAL-ED           BANGLADESH                     3                      0        3     149
0-24 months   MAL-ED           BANGLADESH                     3                      1        9     149
0-24 months   MAL-ED           BANGLADESH                     4                      0        4     149
0-24 months   MAL-ED           BANGLADESH                     4                      1        5     149
0-24 months   MAL-ED           BANGLADESH                     5                      0       11     149
0-24 months   MAL-ED           BANGLADESH                     5                      1       26     149
0-24 months   MAL-ED           BANGLADESH                     6                      0        4     149
0-24 months   MAL-ED           BANGLADESH                     6                      1        4     149
0-24 months   MAL-ED           BANGLADESH                     7                      0        4     149
0-24 months   MAL-ED           BANGLADESH                     7                      1        6     149
0-24 months   MAL-ED           BANGLADESH                     8                      0       10     149
0-24 months   MAL-ED           BANGLADESH                     8                      1        8     149
0-24 months   MAL-ED           BANGLADESH                     9                      0        4     149
0-24 months   MAL-ED           BANGLADESH                     9                      1       10     149
0-24 months   MAL-ED           BANGLADESH                     10                     0        8     149
0-24 months   MAL-ED           BANGLADESH                     10                     1        2     149
0-24 months   MAL-ED           BANGLADESH                     11                     0        0     149
0-24 months   MAL-ED           BANGLADESH                     11                     1        0     149
0-24 months   MAL-ED           BANGLADESH                     12                     0        7     149
0-24 months   MAL-ED           BANGLADESH                     12                     1        3     149
0-24 months   MAL-ED           BANGLADESH                     13                     0        0     149
0-24 months   MAL-ED           BANGLADESH                     13                     1        0     149
0-24 months   MAL-ED           BANGLADESH                     14                     0        0     149
0-24 months   MAL-ED           BANGLADESH                     14                     1        0     149
0-24 months   MAL-ED           BANGLADESH                     15                     0        0     149
0-24 months   MAL-ED           BANGLADESH                     15                     1        0     149
0-24 months   MAL-ED           BANGLADESH                     16                     0        2     149
0-24 months   MAL-ED           BANGLADESH                     16                     1        0     149
0-24 months   MAL-ED           BANGLADESH                     17                     0        0     149
0-24 months   MAL-ED           BANGLADESH                     17                     1        0     149
0-24 months   MAL-ED           BANGLADESH                     18                     0        0     149
0-24 months   MAL-ED           BANGLADESH                     18                     1        0     149
0-24 months   MAL-ED           BANGLADESH                     19                     0        0     149
0-24 months   MAL-ED           BANGLADESH                     19                     1        0     149
0-24 months   MAL-ED           BANGLADESH                     20                     0        0     149
0-24 months   MAL-ED           BANGLADESH                     20                     1        0     149
0-24 months   MAL-ED           BANGLADESH                     21                     0        0     149
0-24 months   MAL-ED           BANGLADESH                     21                     1        0     149
0-24 months   MAL-ED           BANGLADESH                     24                     0        0     149
0-24 months   MAL-ED           BANGLADESH                     24                     1        0     149
0-24 months   MAL-ED           BANGLADESH                     25                     0        0     149
0-24 months   MAL-ED           BANGLADESH                     25                     1        0     149
0-24 months   MAL-ED           BANGLADESH                     27                     0        0     149
0-24 months   MAL-ED           BANGLADESH                     27                     1        0     149
0-24 months   MAL-ED           INDIA                          0                      0        0     147
0-24 months   MAL-ED           INDIA                          0                      1        0     147
0-24 months   MAL-ED           INDIA                          1                      0        0     147
0-24 months   MAL-ED           INDIA                          1                      1        0     147
0-24 months   MAL-ED           INDIA                          2                      0        3     147
0-24 months   MAL-ED           INDIA                          2                      1        3     147
0-24 months   MAL-ED           INDIA                          3                      0        8     147
0-24 months   MAL-ED           INDIA                          3                      1        4     147
0-24 months   MAL-ED           INDIA                          4                      0        3     147
0-24 months   MAL-ED           INDIA                          4                      1        4     147
0-24 months   MAL-ED           INDIA                          5                      0       14     147
0-24 months   MAL-ED           INDIA                          5                      1       20     147
0-24 months   MAL-ED           INDIA                          6                      0        3     147
0-24 months   MAL-ED           INDIA                          6                      1        8     147
0-24 months   MAL-ED           INDIA                          7                      0        6     147
0-24 months   MAL-ED           INDIA                          7                      1        6     147
0-24 months   MAL-ED           INDIA                          8                      0        9     147
0-24 months   MAL-ED           INDIA                          8                      1       12     147
0-24 months   MAL-ED           INDIA                          9                      0       10     147
0-24 months   MAL-ED           INDIA                          9                      1       17     147
0-24 months   MAL-ED           INDIA                          10                     0        1     147
0-24 months   MAL-ED           INDIA                          10                     1        5     147
0-24 months   MAL-ED           INDIA                          11                     0        0     147
0-24 months   MAL-ED           INDIA                          11                     1        2     147
0-24 months   MAL-ED           INDIA                          12                     0        2     147
0-24 months   MAL-ED           INDIA                          12                     1        1     147
0-24 months   MAL-ED           INDIA                          13                     0        1     147
0-24 months   MAL-ED           INDIA                          13                     1        0     147
0-24 months   MAL-ED           INDIA                          14                     0        1     147
0-24 months   MAL-ED           INDIA                          14                     1        1     147
0-24 months   MAL-ED           INDIA                          15                     0        2     147
0-24 months   MAL-ED           INDIA                          15                     1        0     147
0-24 months   MAL-ED           INDIA                          16                     0        0     147
0-24 months   MAL-ED           INDIA                          16                     1        0     147
0-24 months   MAL-ED           INDIA                          17                     0        0     147
0-24 months   MAL-ED           INDIA                          17                     1        0     147
0-24 months   MAL-ED           INDIA                          18                     0        0     147
0-24 months   MAL-ED           INDIA                          18                     1        1     147
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
0-24 months   MAL-ED           NEPAL                          2                      0        2      98
0-24 months   MAL-ED           NEPAL                          2                      1        2      98
0-24 months   MAL-ED           NEPAL                          3                      0        1      98
0-24 months   MAL-ED           NEPAL                          3                      1        2      98
0-24 months   MAL-ED           NEPAL                          4                      0        5      98
0-24 months   MAL-ED           NEPAL                          4                      1        6      98
0-24 months   MAL-ED           NEPAL                          5                      0        6      98
0-24 months   MAL-ED           NEPAL                          5                      1        0      98
0-24 months   MAL-ED           NEPAL                          6                      0        2      98
0-24 months   MAL-ED           NEPAL                          6                      1        2      98
0-24 months   MAL-ED           NEPAL                          7                      0        5      98
0-24 months   MAL-ED           NEPAL                          7                      1        4      98
0-24 months   MAL-ED           NEPAL                          8                      0        5      98
0-24 months   MAL-ED           NEPAL                          8                      1        7      98
0-24 months   MAL-ED           NEPAL                          9                      0        5      98
0-24 months   MAL-ED           NEPAL                          9                      1        2      98
0-24 months   MAL-ED           NEPAL                          10                     0       18      98
0-24 months   MAL-ED           NEPAL                          10                     1        9      98
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
0-24 months   MAL-ED           PERU                           0                      0        0     250
0-24 months   MAL-ED           PERU                           0                      1        1     250
0-24 months   MAL-ED           PERU                           1                      0        1     250
0-24 months   MAL-ED           PERU                           1                      1        1     250
0-24 months   MAL-ED           PERU                           2                      0        0     250
0-24 months   MAL-ED           PERU                           2                      1        1     250
0-24 months   MAL-ED           PERU                           3                      0        4     250
0-24 months   MAL-ED           PERU                           3                      1        5     250
0-24 months   MAL-ED           PERU                           4                      0        1     250
0-24 months   MAL-ED           PERU                           4                      1        3     250
0-24 months   MAL-ED           PERU                           5                      0        1     250
0-24 months   MAL-ED           PERU                           5                      1        7     250
0-24 months   MAL-ED           PERU                           6                      0       13     250
0-24 months   MAL-ED           PERU                           6                      1       13     250
0-24 months   MAL-ED           PERU                           7                      0        8     250
0-24 months   MAL-ED           PERU                           7                      1       10     250
0-24 months   MAL-ED           PERU                           8                      0        6     250
0-24 months   MAL-ED           PERU                           8                      1       16     250
0-24 months   MAL-ED           PERU                           9                      0        8     250
0-24 months   MAL-ED           PERU                           9                      1       18     250
0-24 months   MAL-ED           PERU                           10                     0        6     250
0-24 months   MAL-ED           PERU                           10                     1        7     250
0-24 months   MAL-ED           PERU                           11                     0       35     250
0-24 months   MAL-ED           PERU                           11                     1       64     250
0-24 months   MAL-ED           PERU                           12                     0        0     250
0-24 months   MAL-ED           PERU                           12                     1        1     250
0-24 months   MAL-ED           PERU                           13                     0        3     250
0-24 months   MAL-ED           PERU                           13                     1        2     250
0-24 months   MAL-ED           PERU                           14                     0        2     250
0-24 months   MAL-ED           PERU                           14                     1        3     250
0-24 months   MAL-ED           PERU                           15                     0        1     250
0-24 months   MAL-ED           PERU                           15                     1        0     250
0-24 months   MAL-ED           PERU                           16                     0        0     250
0-24 months   MAL-ED           PERU                           16                     1        1     250
0-24 months   MAL-ED           PERU                           17                     0        0     250
0-24 months   MAL-ED           PERU                           17                     1        1     250
0-24 months   MAL-ED           PERU                           18                     0        2     250
0-24 months   MAL-ED           PERU                           18                     1        3     250
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
0-24 months   MAL-ED           SOUTH AFRICA                   4                      0        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   4                      1        3     110
0-24 months   MAL-ED           SOUTH AFRICA                   5                      0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   5                      1        2     110
0-24 months   MAL-ED           SOUTH AFRICA                   6                      0        5     110
0-24 months   MAL-ED           SOUTH AFRICA                   6                      1        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   7                      0        4     110
0-24 months   MAL-ED           SOUTH AFRICA                   7                      1        2     110
0-24 months   MAL-ED           SOUTH AFRICA                   8                      0        4     110
0-24 months   MAL-ED           SOUTH AFRICA                   8                      1        7     110
0-24 months   MAL-ED           SOUTH AFRICA                   9                      0        3     110
0-24 months   MAL-ED           SOUTH AFRICA                   9                      1        4     110
0-24 months   MAL-ED           SOUTH AFRICA                   10                     0        4     110
0-24 months   MAL-ED           SOUTH AFRICA                   10                     1        6     110
0-24 months   MAL-ED           SOUTH AFRICA                   11                     0        6     110
0-24 months   MAL-ED           SOUTH AFRICA                   11                     1       14     110
0-24 months   MAL-ED           SOUTH AFRICA                   12                     0       11     110
0-24 months   MAL-ED           SOUTH AFRICA                   12                     1       25     110
0-24 months   MAL-ED           SOUTH AFRICA                   13                     0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   13                     1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   14                     0        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   14                     1        2     110
0-24 months   MAL-ED           SOUTH AFRICA                   15                     0        2     110
0-24 months   MAL-ED           SOUTH AFRICA                   15                     1        1     110
0-24 months   MAL-ED           SOUTH AFRICA                   16                     0        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   16                     1        1     110
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
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        3     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1       11     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                      0        2     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                      1       11     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                      0        1     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                      1       17     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                      0        4     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                      1       12     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                      0        1     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                      1       12     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                      0        2     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                      1        6     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                      0       17     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                      1      101     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                      0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                      1        1     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                      0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                      1        2     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                     0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                     1        4     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                     0        1     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                     1        2     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                     0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                     1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                     0        1     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                     1        1     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                     0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                     1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                     0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                     1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                     0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                     1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                     0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                     1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                     0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                     1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                     0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                     1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                     0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                     1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                     0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                     1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                     0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                     1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                     0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                     1        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                     0        0     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                     1        0     212
0-24 months   NIH-Crypto       BANGLADESH                     0                      0       77     758
0-24 months   NIH-Crypto       BANGLADESH                     0                      1       97     758
0-24 months   NIH-Crypto       BANGLADESH                     1                      0       11     758
0-24 months   NIH-Crypto       BANGLADESH                     1                      1       10     758
0-24 months   NIH-Crypto       BANGLADESH                     2                      0        7     758
0-24 months   NIH-Crypto       BANGLADESH                     2                      1        6     758
0-24 months   NIH-Crypto       BANGLADESH                     3                      0       17     758
0-24 months   NIH-Crypto       BANGLADESH                     3                      1       17     758
0-24 months   NIH-Crypto       BANGLADESH                     4                      0       13     758
0-24 months   NIH-Crypto       BANGLADESH                     4                      1       27     758
0-24 months   NIH-Crypto       BANGLADESH                     5                      0       33     758
0-24 months   NIH-Crypto       BANGLADESH                     5                      1       55     758
0-24 months   NIH-Crypto       BANGLADESH                     6                      0       17     758
0-24 months   NIH-Crypto       BANGLADESH                     6                      1       18     758
0-24 months   NIH-Crypto       BANGLADESH                     7                      0       29     758
0-24 months   NIH-Crypto       BANGLADESH                     7                      1       28     758
0-24 months   NIH-Crypto       BANGLADESH                     8                      0       55     758
0-24 months   NIH-Crypto       BANGLADESH                     8                      1       35     758
0-24 months   NIH-Crypto       BANGLADESH                     9                      0       54     758
0-24 months   NIH-Crypto       BANGLADESH                     9                      1       32     758
0-24 months   NIH-Crypto       BANGLADESH                     10                     0       35     758
0-24 months   NIH-Crypto       BANGLADESH                     10                     1       19     758
0-24 months   NIH-Crypto       BANGLADESH                     11                     0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     11                     1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     12                     0       24     758
0-24 months   NIH-Crypto       BANGLADESH                     12                     1       11     758
0-24 months   NIH-Crypto       BANGLADESH                     13                     0        0     758
0-24 months   NIH-Crypto       BANGLADESH                     13                     1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     14                     0        8     758
0-24 months   NIH-Crypto       BANGLADESH                     14                     1        0     758
0-24 months   NIH-Crypto       BANGLADESH                     15                     0       10     758
0-24 months   NIH-Crypto       BANGLADESH                     15                     1        6     758
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
0-24 months   PROBIT           BELARUS                        0                      0        0   16314
0-24 months   PROBIT           BELARUS                        0                      1        0   16314
0-24 months   PROBIT           BELARUS                        1                      0        0   16314
0-24 months   PROBIT           BELARUS                        1                      1        0   16314
0-24 months   PROBIT           BELARUS                        2                      0        0   16314
0-24 months   PROBIT           BELARUS                        2                      1        0   16314
0-24 months   PROBIT           BELARUS                        3                      0        0   16314
0-24 months   PROBIT           BELARUS                        3                      1        0   16314
0-24 months   PROBIT           BELARUS                        4                      0        0   16314
0-24 months   PROBIT           BELARUS                        4                      1        0   16314
0-24 months   PROBIT           BELARUS                        5                      0        0   16314
0-24 months   PROBIT           BELARUS                        5                      1        0   16314
0-24 months   PROBIT           BELARUS                        6                      0        0   16314
0-24 months   PROBIT           BELARUS                        6                      1        0   16314
0-24 months   PROBIT           BELARUS                        7                      0        0   16314
0-24 months   PROBIT           BELARUS                        7                      1        0   16314
0-24 months   PROBIT           BELARUS                        8                      0       22   16314
0-24 months   PROBIT           BELARUS                        8                      1        5   16314
0-24 months   PROBIT           BELARUS                        9                      0        0   16314
0-24 months   PROBIT           BELARUS                        9                      1        0   16314
0-24 months   PROBIT           BELARUS                        10                     0      310   16314
0-24 months   PROBIT           BELARUS                        10                     1       57   16314
0-24 months   PROBIT           BELARUS                        11                     0        0   16314
0-24 months   PROBIT           BELARUS                        11                     1        0   16314
0-24 months   PROBIT           BELARUS                        12                     0     5147   16314
0-24 months   PROBIT           BELARUS                        12                     1      877   16314
0-24 months   PROBIT           BELARUS                        13                     0     6346   16314
0-24 months   PROBIT           BELARUS                        13                     1      843   16314
0-24 months   PROBIT           BELARUS                        14                     0      402   16314
0-24 months   PROBIT           BELARUS                        14                     1       42   16314
0-24 months   PROBIT           BELARUS                        15                     0        0   16314
0-24 months   PROBIT           BELARUS                        15                     1        0   16314
0-24 months   PROBIT           BELARUS                        16                     0     2052   16314
0-24 months   PROBIT           BELARUS                        16                     1      211   16314
0-24 months   PROBIT           BELARUS                        17                     0        0   16314
0-24 months   PROBIT           BELARUS                        17                     1        0   16314
0-24 months   PROBIT           BELARUS                        18                     0        0   16314
0-24 months   PROBIT           BELARUS                        18                     1        0   16314
0-24 months   PROBIT           BELARUS                        19                     0        0   16314
0-24 months   PROBIT           BELARUS                        19                     1        0   16314
0-24 months   PROBIT           BELARUS                        20                     0        0   16314
0-24 months   PROBIT           BELARUS                        20                     1        0   16314
0-24 months   PROBIT           BELARUS                        21                     0        0   16314
0-24 months   PROBIT           BELARUS                        21                     1        0   16314
0-24 months   PROBIT           BELARUS                        24                     0        0   16314
0-24 months   PROBIT           BELARUS                        24                     1        0   16314
0-24 months   PROBIT           BELARUS                        25                     0        0   16314
0-24 months   PROBIT           BELARUS                        25                     1        0   16314
0-24 months   PROBIT           BELARUS                        27                     0        0   16314
0-24 months   PROBIT           BELARUS                        27                     1        0   16314
0-24 months   PROVIDE          BANGLADESH                     0                      0       98     700
0-24 months   PROVIDE          BANGLADESH                     0                      1      109     700
0-24 months   PROVIDE          BANGLADESH                     1                      0       10     700
0-24 months   PROVIDE          BANGLADESH                     1                      1        3     700
0-24 months   PROVIDE          BANGLADESH                     2                      0        7     700
0-24 months   PROVIDE          BANGLADESH                     2                      1       11     700
0-24 months   PROVIDE          BANGLADESH                     3                      0       18     700
0-24 months   PROVIDE          BANGLADESH                     3                      1        9     700
0-24 months   PROVIDE          BANGLADESH                     4                      0       28     700
0-24 months   PROVIDE          BANGLADESH                     4                      1       24     700
0-24 months   PROVIDE          BANGLADESH                     5                      0       49     700
0-24 months   PROVIDE          BANGLADESH                     5                      1       31     700
0-24 months   PROVIDE          BANGLADESH                     6                      0       10     700
0-24 months   PROVIDE          BANGLADESH                     6                      1       19     700
0-24 months   PROVIDE          BANGLADESH                     7                      0       25     700
0-24 months   PROVIDE          BANGLADESH                     7                      1       17     700
0-24 months   PROVIDE          BANGLADESH                     8                      0       38     700
0-24 months   PROVIDE          BANGLADESH                     8                      1       26     700
0-24 months   PROVIDE          BANGLADESH                     9                      0       37     700
0-24 months   PROVIDE          BANGLADESH                     9                      1       25     700
0-24 months   PROVIDE          BANGLADESH                     10                     0       29     700
0-24 months   PROVIDE          BANGLADESH                     10                     1       10     700
0-24 months   PROVIDE          BANGLADESH                     11                     0       16     700
0-24 months   PROVIDE          BANGLADESH                     11                     1       10     700
0-24 months   PROVIDE          BANGLADESH                     12                     0        3     700
0-24 months   PROVIDE          BANGLADESH                     12                     1        1     700
0-24 months   PROVIDE          BANGLADESH                     13                     0        0     700
0-24 months   PROVIDE          BANGLADESH                     13                     1        0     700
0-24 months   PROVIDE          BANGLADESH                     14                     0       13     700
0-24 months   PROVIDE          BANGLADESH                     14                     1        6     700
0-24 months   PROVIDE          BANGLADESH                     15                     0        8     700
0-24 months   PROVIDE          BANGLADESH                     15                     1        0     700
0-24 months   PROVIDE          BANGLADESH                     16                     0        6     700
0-24 months   PROVIDE          BANGLADESH                     16                     1        3     700
0-24 months   PROVIDE          BANGLADESH                     17                     0        0     700
0-24 months   PROVIDE          BANGLADESH                     17                     1        0     700
0-24 months   PROVIDE          BANGLADESH                     18                     0        0     700
0-24 months   PROVIDE          BANGLADESH                     18                     1        0     700
0-24 months   PROVIDE          BANGLADESH                     19                     0        0     700
0-24 months   PROVIDE          BANGLADESH                     19                     1        1     700
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
0-24 months   SAS-CompFeed     INDIA                          0                      0       47    1530
0-24 months   SAS-CompFeed     INDIA                          0                      1      149    1530
0-24 months   SAS-CompFeed     INDIA                          1                      0        0    1530
0-24 months   SAS-CompFeed     INDIA                          1                      1        0    1530
0-24 months   SAS-CompFeed     INDIA                          2                      0        1    1530
0-24 months   SAS-CompFeed     INDIA                          2                      1        6    1530
0-24 months   SAS-CompFeed     INDIA                          3                      0        2    1530
0-24 months   SAS-CompFeed     INDIA                          3                      1       13    1530
0-24 months   SAS-CompFeed     INDIA                          4                      0        5    1530
0-24 months   SAS-CompFeed     INDIA                          4                      1       20    1530
0-24 months   SAS-CompFeed     INDIA                          5                      0       30    1530
0-24 months   SAS-CompFeed     INDIA                          5                      1       64    1530
0-24 months   SAS-CompFeed     INDIA                          6                      0        7    1530
0-24 months   SAS-CompFeed     INDIA                          6                      1       22    1530
0-24 months   SAS-CompFeed     INDIA                          7                      0       26    1530
0-24 months   SAS-CompFeed     INDIA                          7                      1       91    1530
0-24 months   SAS-CompFeed     INDIA                          8                      0       48    1530
0-24 months   SAS-CompFeed     INDIA                          8                      1      123    1530
0-24 months   SAS-CompFeed     INDIA                          9                      0       27    1530
0-24 months   SAS-CompFeed     INDIA                          9                      1       71    1530
0-24 months   SAS-CompFeed     INDIA                          10                     0      121    1530
0-24 months   SAS-CompFeed     INDIA                          10                     1      268    1530
0-24 months   SAS-CompFeed     INDIA                          11                     0       18    1530
0-24 months   SAS-CompFeed     INDIA                          11                     1       24    1530
0-24 months   SAS-CompFeed     INDIA                          12                     0       89    1530
0-24 months   SAS-CompFeed     INDIA                          12                     1      139    1530
0-24 months   SAS-CompFeed     INDIA                          13                     0        1    1530
0-24 months   SAS-CompFeed     INDIA                          13                     1        6    1530
0-24 months   SAS-CompFeed     INDIA                          14                     0        7    1530
0-24 months   SAS-CompFeed     INDIA                          14                     1       10    1530
0-24 months   SAS-CompFeed     INDIA                          15                     0       27    1530
0-24 months   SAS-CompFeed     INDIA                          15                     1       38    1530
0-24 months   SAS-CompFeed     INDIA                          16                     0        5    1530
0-24 months   SAS-CompFeed     INDIA                          16                     1        5    1530
0-24 months   SAS-CompFeed     INDIA                          17                     0        7    1530
0-24 months   SAS-CompFeed     INDIA                          17                     1        8    1530
0-24 months   SAS-CompFeed     INDIA                          18                     0        3    1530
0-24 months   SAS-CompFeed     INDIA                          18                     1        0    1530
0-24 months   SAS-CompFeed     INDIA                          19                     0        1    1530
0-24 months   SAS-CompFeed     INDIA                          19                     1        0    1530
0-24 months   SAS-CompFeed     INDIA                          20                     0        1    1530
0-24 months   SAS-CompFeed     INDIA                          20                     1        0    1530
0-24 months   SAS-CompFeed     INDIA                          21                     0        0    1530
0-24 months   SAS-CompFeed     INDIA                          21                     1        0    1530
0-24 months   SAS-CompFeed     INDIA                          24                     0        0    1530
0-24 months   SAS-CompFeed     INDIA                          24                     1        0    1530
0-24 months   SAS-CompFeed     INDIA                          25                     0        0    1530
0-24 months   SAS-CompFeed     INDIA                          25                     1        0    1530
0-24 months   SAS-CompFeed     INDIA                          27                     0        0    1530
0-24 months   SAS-CompFeed     INDIA                          27                     1        0    1530
0-24 months   SAS-FoodSuppl    INDIA                          0                      0       26     418
0-24 months   SAS-FoodSuppl    INDIA                          0                      1      121     418
0-24 months   SAS-FoodSuppl    INDIA                          1                      0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          1                      1        1     418
0-24 months   SAS-FoodSuppl    INDIA                          2                      0        1     418
0-24 months   SAS-FoodSuppl    INDIA                          2                      1        9     418
0-24 months   SAS-FoodSuppl    INDIA                          3                      0        1     418
0-24 months   SAS-FoodSuppl    INDIA                          3                      1        6     418
0-24 months   SAS-FoodSuppl    INDIA                          4                      0        2     418
0-24 months   SAS-FoodSuppl    INDIA                          4                      1        9     418
0-24 months   SAS-FoodSuppl    INDIA                          5                      0        8     418
0-24 months   SAS-FoodSuppl    INDIA                          5                      1       47     418
0-24 months   SAS-FoodSuppl    INDIA                          6                      0        4     418
0-24 months   SAS-FoodSuppl    INDIA                          6                      1        8     418
0-24 months   SAS-FoodSuppl    INDIA                          7                      0        2     418
0-24 months   SAS-FoodSuppl    INDIA                          7                      1       14     418
0-24 months   SAS-FoodSuppl    INDIA                          8                      0        6     418
0-24 months   SAS-FoodSuppl    INDIA                          8                      1       43     418
0-24 months   SAS-FoodSuppl    INDIA                          9                      0        1     418
0-24 months   SAS-FoodSuppl    INDIA                          9                      1       25     418
0-24 months   SAS-FoodSuppl    INDIA                          10                     0       13     418
0-24 months   SAS-FoodSuppl    INDIA                          10                     1       47     418
0-24 months   SAS-FoodSuppl    INDIA                          11                     0        1     418
0-24 months   SAS-FoodSuppl    INDIA                          11                     1        2     418
0-24 months   SAS-FoodSuppl    INDIA                          12                     0        2     418
0-24 months   SAS-FoodSuppl    INDIA                          12                     1        8     418
0-24 months   SAS-FoodSuppl    INDIA                          13                     0        1     418
0-24 months   SAS-FoodSuppl    INDIA                          13                     1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          14                     0        3     418
0-24 months   SAS-FoodSuppl    INDIA                          14                     1        4     418
0-24 months   SAS-FoodSuppl    INDIA                          15                     0        1     418
0-24 months   SAS-FoodSuppl    INDIA                          15                     1        2     418
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
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      0        4    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      1        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      0        5    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      1        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      0        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      0      801    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      1      457    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      0        5    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      1        4    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      0       36    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      1       17    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     0       15    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     1        9    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     0      387    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     1      191    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     0       13    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     1        4    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                     0       81    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                     1       36    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                     0       12    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                     1        3    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                     0       13    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                     1       10    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                     0       20    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                     1        8    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                     0       15    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                     1        8    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                     0        4    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                     1        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                     0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                     1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                     0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                     1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                     0        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                     1        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                     0        8    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                     1        8    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                     0        0    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                     1        1    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                     0      136    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                     1       67    2383
0-24 months   ZVITAMBO         ZIMBABWE                       0                      0       32   13694
0-24 months   ZVITAMBO         ZIMBABWE                       0                      1       30   13694
0-24 months   ZVITAMBO         ZIMBABWE                       1                      0        1   13694
0-24 months   ZVITAMBO         ZIMBABWE                       1                      1        1   13694
0-24 months   ZVITAMBO         ZIMBABWE                       2                      0        3   13694
0-24 months   ZVITAMBO         ZIMBABWE                       2                      1        2   13694
0-24 months   ZVITAMBO         ZIMBABWE                       3                      0        8   13694
0-24 months   ZVITAMBO         ZIMBABWE                       3                      1        7   13694
0-24 months   ZVITAMBO         ZIMBABWE                       4                      0       12   13694
0-24 months   ZVITAMBO         ZIMBABWE                       4                      1       11   13694
0-24 months   ZVITAMBO         ZIMBABWE                       5                      0       17   13694
0-24 months   ZVITAMBO         ZIMBABWE                       5                      1       15   13694
0-24 months   ZVITAMBO         ZIMBABWE                       6                      0       21   13694
0-24 months   ZVITAMBO         ZIMBABWE                       6                      1       22   13694
0-24 months   ZVITAMBO         ZIMBABWE                       7                      0      423   13694
0-24 months   ZVITAMBO         ZIMBABWE                       7                      1      371   13694
0-24 months   ZVITAMBO         ZIMBABWE                       8                      0       62   13694
0-24 months   ZVITAMBO         ZIMBABWE                       8                      1       42   13694
0-24 months   ZVITAMBO         ZIMBABWE                       9                      0      479   13694
0-24 months   ZVITAMBO         ZIMBABWE                       9                      1      422   13694
0-24 months   ZVITAMBO         ZIMBABWE                       10                     0      167   13694
0-24 months   ZVITAMBO         ZIMBABWE                       10                     1      164   13694
0-24 months   ZVITAMBO         ZIMBABWE                       11                     0     6154   13694
0-24 months   ZVITAMBO         ZIMBABWE                       11                     1     4228   13694
0-24 months   ZVITAMBO         ZIMBABWE                       12                     0       33   13694
0-24 months   ZVITAMBO         ZIMBABWE                       12                     1       26   13694
0-24 months   ZVITAMBO         ZIMBABWE                       13                     0      618   13694
0-24 months   ZVITAMBO         ZIMBABWE                       13                     1      323   13694
0-24 months   ZVITAMBO         ZIMBABWE                       14                     0        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       14                     1        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       15                     0        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       15                     1        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       16                     0        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       16                     1        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       17                     0        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       17                     1        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       18                     0        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       18                     1        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       19                     0        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       19                     1        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       20                     0        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       20                     1        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       21                     0        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       21                     1        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       24                     0        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       24                     1        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       25                     0        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       25                     1        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       27                     0        0   13694
0-24 months   ZVITAMBO         ZIMBABWE                       27                     1        0   13694
0-6 months    COHORTS          GUATEMALA                      0                      0      304    1020
0-6 months    COHORTS          GUATEMALA                      0                      1      152    1020
0-6 months    COHORTS          GUATEMALA                      1                      0       38    1020
0-6 months    COHORTS          GUATEMALA                      1                      1       15    1020
0-6 months    COHORTS          GUATEMALA                      2                      0      129    1020
0-6 months    COHORTS          GUATEMALA                      2                      1       54    1020
0-6 months    COHORTS          GUATEMALA                      3                      0       89    1020
0-6 months    COHORTS          GUATEMALA                      3                      1       45    1020
0-6 months    COHORTS          GUATEMALA                      4                      0       38    1020
0-6 months    COHORTS          GUATEMALA                      4                      1       29    1020
0-6 months    COHORTS          GUATEMALA                      5                      0       16    1020
0-6 months    COHORTS          GUATEMALA                      5                      1        7    1020
0-6 months    COHORTS          GUATEMALA                      6                      0       68    1020
0-6 months    COHORTS          GUATEMALA                      6                      1       22    1020
0-6 months    COHORTS          GUATEMALA                      7                      0        4    1020
0-6 months    COHORTS          GUATEMALA                      7                      1        0    1020
0-6 months    COHORTS          GUATEMALA                      8                      0        2    1020
0-6 months    COHORTS          GUATEMALA                      8                      1        0    1020
0-6 months    COHORTS          GUATEMALA                      9                      0        0    1020
0-6 months    COHORTS          GUATEMALA                      9                      1        1    1020
0-6 months    COHORTS          GUATEMALA                      10                     0        1    1020
0-6 months    COHORTS          GUATEMALA                      10                     1        0    1020
0-6 months    COHORTS          GUATEMALA                      11                     0        0    1020
0-6 months    COHORTS          GUATEMALA                      11                     1        0    1020
0-6 months    COHORTS          GUATEMALA                      12                     0        4    1020
0-6 months    COHORTS          GUATEMALA                      12                     1        1    1020
0-6 months    COHORTS          GUATEMALA                      13                     0        0    1020
0-6 months    COHORTS          GUATEMALA                      13                     1        0    1020
0-6 months    COHORTS          GUATEMALA                      14                     0        1    1020
0-6 months    COHORTS          GUATEMALA                      14                     1        0    1020
0-6 months    COHORTS          GUATEMALA                      15                     0        0    1020
0-6 months    COHORTS          GUATEMALA                      15                     1        0    1020
0-6 months    COHORTS          GUATEMALA                      16                     0        0    1020
0-6 months    COHORTS          GUATEMALA                      16                     1        0    1020
0-6 months    COHORTS          GUATEMALA                      17                     0        0    1020
0-6 months    COHORTS          GUATEMALA                      17                     1        0    1020
0-6 months    COHORTS          GUATEMALA                      18                     0        0    1020
0-6 months    COHORTS          GUATEMALA                      18                     1        0    1020
0-6 months    COHORTS          GUATEMALA                      19                     0        0    1020
0-6 months    COHORTS          GUATEMALA                      19                     1        0    1020
0-6 months    COHORTS          GUATEMALA                      20                     0        0    1020
0-6 months    COHORTS          GUATEMALA                      20                     1        0    1020
0-6 months    COHORTS          GUATEMALA                      21                     0        0    1020
0-6 months    COHORTS          GUATEMALA                      21                     1        0    1020
0-6 months    COHORTS          GUATEMALA                      24                     0        0    1020
0-6 months    COHORTS          GUATEMALA                      24                     1        0    1020
0-6 months    COHORTS          GUATEMALA                      25                     0        0    1020
0-6 months    COHORTS          GUATEMALA                      25                     1        0    1020
0-6 months    COHORTS          GUATEMALA                      27                     0        0    1020
0-6 months    COHORTS          GUATEMALA                      27                     1        0    1020
0-6 months    COHORTS          INDIA                          0                      0       98    1421
0-6 months    COHORTS          INDIA                          0                      1       23    1421
0-6 months    COHORTS          INDIA                          1                      0        0    1421
0-6 months    COHORTS          INDIA                          1                      1        0    1421
0-6 months    COHORTS          INDIA                          2                      0        0    1421
0-6 months    COHORTS          INDIA                          2                      1        0    1421
0-6 months    COHORTS          INDIA                          3                      0      104    1421
0-6 months    COHORTS          INDIA                          3                      1       28    1421
0-6 months    COHORTS          INDIA                          4                      0        0    1421
0-6 months    COHORTS          INDIA                          4                      1        0    1421
0-6 months    COHORTS          INDIA                          5                      0        0    1421
0-6 months    COHORTS          INDIA                          5                      1        0    1421
0-6 months    COHORTS          INDIA                          6                      0        0    1421
0-6 months    COHORTS          INDIA                          6                      1        0    1421
0-6 months    COHORTS          INDIA                          7                      0        0    1421
0-6 months    COHORTS          INDIA                          7                      1        0    1421
0-6 months    COHORTS          INDIA                          8                      0      159    1421
0-6 months    COHORTS          INDIA                          8                      1       46    1421
0-6 months    COHORTS          INDIA                          9                      0        0    1421
0-6 months    COHORTS          INDIA                          9                      1        0    1421
0-6 months    COHORTS          INDIA                          10                     0        0    1421
0-6 months    COHORTS          INDIA                          10                     1        0    1421
0-6 months    COHORTS          INDIA                          11                     0        0    1421
0-6 months    COHORTS          INDIA                          11                     1        0    1421
0-6 months    COHORTS          INDIA                          12                     0      342    1421
0-6 months    COHORTS          INDIA                          12                     1       62    1421
0-6 months    COHORTS          INDIA                          13                     0        0    1421
0-6 months    COHORTS          INDIA                          13                     1        0    1421
0-6 months    COHORTS          INDIA                          14                     0      131    1421
0-6 months    COHORTS          INDIA                          14                     1       27    1421
0-6 months    COHORTS          INDIA                          15                     0      247    1421
0-6 months    COHORTS          INDIA                          15                     1       34    1421
0-6 months    COHORTS          INDIA                          16                     0        0    1421
0-6 months    COHORTS          INDIA                          16                     1        0    1421
0-6 months    COHORTS          INDIA                          17                     0      107    1421
0-6 months    COHORTS          INDIA                          17                     1       13    1421
0-6 months    COHORTS          INDIA                          18                     0        0    1421
0-6 months    COHORTS          INDIA                          18                     1        0    1421
0-6 months    COHORTS          INDIA                          19                     0        0    1421
0-6 months    COHORTS          INDIA                          19                     1        0    1421
0-6 months    COHORTS          INDIA                          20                     0        0    1421
0-6 months    COHORTS          INDIA                          20                     1        0    1421
0-6 months    COHORTS          INDIA                          21                     0        0    1421
0-6 months    COHORTS          INDIA                          21                     1        0    1421
0-6 months    COHORTS          INDIA                          24                     0        0    1421
0-6 months    COHORTS          INDIA                          24                     1        0    1421
0-6 months    COHORTS          INDIA                          25                     0        0    1421
0-6 months    COHORTS          INDIA                          25                     1        0    1421
0-6 months    COHORTS          INDIA                          27                     0        0    1421
0-6 months    COHORTS          INDIA                          27                     1        0    1421
0-6 months    COHORTS          PHILIPPINES                    0                      0       40    2880
0-6 months    COHORTS          PHILIPPINES                    0                      1       20    2880
0-6 months    COHORTS          PHILIPPINES                    1                      0       20    2880
0-6 months    COHORTS          PHILIPPINES                    1                      1       16    2880
0-6 months    COHORTS          PHILIPPINES                    2                      0       64    2880
0-6 months    COHORTS          PHILIPPINES                    2                      1       32    2880
0-6 months    COHORTS          PHILIPPINES                    3                      0      113    2880
0-6 months    COHORTS          PHILIPPINES                    3                      1       56    2880
0-6 months    COHORTS          PHILIPPINES                    4                      0      190    2880
0-6 months    COHORTS          PHILIPPINES                    4                      1       73    2880
0-6 months    COHORTS          PHILIPPINES                    5                      0      153    2880
0-6 months    COHORTS          PHILIPPINES                    5                      1       51    2880
0-6 months    COHORTS          PHILIPPINES                    6                      0      461    2880
0-6 months    COHORTS          PHILIPPINES                    6                      1      184    2880
0-6 months    COHORTS          PHILIPPINES                    7                      0      118    2880
0-6 months    COHORTS          PHILIPPINES                    7                      1       33    2880
0-6 months    COHORTS          PHILIPPINES                    8                      0      172    2880
0-6 months    COHORTS          PHILIPPINES                    8                      1       53    2880
0-6 months    COHORTS          PHILIPPINES                    9                      0      162    2880
0-6 months    COHORTS          PHILIPPINES                    9                      1       35    2880
0-6 months    COHORTS          PHILIPPINES                    10                     0      265    2880
0-6 months    COHORTS          PHILIPPINES                    10                     1       66    2880
0-6 months    COHORTS          PHILIPPINES                    11                     0       53    2880
0-6 months    COHORTS          PHILIPPINES                    11                     1       12    2880
0-6 months    COHORTS          PHILIPPINES                    12                     0      157    2880
0-6 months    COHORTS          PHILIPPINES                    12                     1       23    2880
0-6 months    COHORTS          PHILIPPINES                    13                     0       55    2880
0-6 months    COHORTS          PHILIPPINES                    13                     1        8    2880
0-6 months    COHORTS          PHILIPPINES                    14                     0      125    2880
0-6 months    COHORTS          PHILIPPINES                    14                     1       22    2880
0-6 months    COHORTS          PHILIPPINES                    15                     0       35    2880
0-6 months    COHORTS          PHILIPPINES                    15                     1        1    2880
0-6 months    COHORTS          PHILIPPINES                    16                     0        7    2880
0-6 months    COHORTS          PHILIPPINES                    16                     1        1    2880
0-6 months    COHORTS          PHILIPPINES                    17                     0        2    2880
0-6 months    COHORTS          PHILIPPINES                    17                     1        0    2880
0-6 months    COHORTS          PHILIPPINES                    18                     0        2    2880
0-6 months    COHORTS          PHILIPPINES                    18                     1        0    2880
0-6 months    COHORTS          PHILIPPINES                    19                     0        0    2880
0-6 months    COHORTS          PHILIPPINES                    19                     1        0    2880
0-6 months    COHORTS          PHILIPPINES                    20                     0        0    2880
0-6 months    COHORTS          PHILIPPINES                    20                     1        0    2880
0-6 months    COHORTS          PHILIPPINES                    21                     0        0    2880
0-6 months    COHORTS          PHILIPPINES                    21                     1        0    2880
0-6 months    COHORTS          PHILIPPINES                    24                     0        0    2880
0-6 months    COHORTS          PHILIPPINES                    24                     1        0    2880
0-6 months    COHORTS          PHILIPPINES                    25                     0        0    2880
0-6 months    COHORTS          PHILIPPINES                    25                     1        0    2880
0-6 months    COHORTS          PHILIPPINES                    27                     0        0    2880
0-6 months    COHORTS          PHILIPPINES                    27                     1        0    2880
0-6 months    GMS-Nepal        NEPAL                          0                      0      189     696
0-6 months    GMS-Nepal        NEPAL                          0                      1      107     696
0-6 months    GMS-Nepal        NEPAL                          1                      0        0     696
0-6 months    GMS-Nepal        NEPAL                          1                      1        0     696
0-6 months    GMS-Nepal        NEPAL                          2                      0        0     696
0-6 months    GMS-Nepal        NEPAL                          2                      1        0     696
0-6 months    GMS-Nepal        NEPAL                          3                      0        0     696
0-6 months    GMS-Nepal        NEPAL                          3                      1        0     696
0-6 months    GMS-Nepal        NEPAL                          4                      0        0     696
0-6 months    GMS-Nepal        NEPAL                          4                      1        0     696
0-6 months    GMS-Nepal        NEPAL                          5                      0       72     696
0-6 months    GMS-Nepal        NEPAL                          5                      1       38     696
0-6 months    GMS-Nepal        NEPAL                          6                      0        0     696
0-6 months    GMS-Nepal        NEPAL                          6                      1        0     696
0-6 months    GMS-Nepal        NEPAL                          7                      0        0     696
0-6 months    GMS-Nepal        NEPAL                          7                      1        0     696
0-6 months    GMS-Nepal        NEPAL                          8                      0       88     696
0-6 months    GMS-Nepal        NEPAL                          8                      1       29     696
0-6 months    GMS-Nepal        NEPAL                          9                      0        0     696
0-6 months    GMS-Nepal        NEPAL                          9                      1        0     696
0-6 months    GMS-Nepal        NEPAL                          10                     0       94     696
0-6 months    GMS-Nepal        NEPAL                          10                     1       40     696
0-6 months    GMS-Nepal        NEPAL                          11                     0        0     696
0-6 months    GMS-Nepal        NEPAL                          11                     1        0     696
0-6 months    GMS-Nepal        NEPAL                          12                     0       31     696
0-6 months    GMS-Nepal        NEPAL                          12                     1        8     696
0-6 months    GMS-Nepal        NEPAL                          13                     0        0     696
0-6 months    GMS-Nepal        NEPAL                          13                     1        0     696
0-6 months    GMS-Nepal        NEPAL                          14                     0        0     696
0-6 months    GMS-Nepal        NEPAL                          14                     1        0     696
0-6 months    GMS-Nepal        NEPAL                          15                     0        0     696
0-6 months    GMS-Nepal        NEPAL                          15                     1        0     696
0-6 months    GMS-Nepal        NEPAL                          16                     0        0     696
0-6 months    GMS-Nepal        NEPAL                          16                     1        0     696
0-6 months    GMS-Nepal        NEPAL                          17                     0        0     696
0-6 months    GMS-Nepal        NEPAL                          17                     1        0     696
0-6 months    GMS-Nepal        NEPAL                          18                     0        0     696
0-6 months    GMS-Nepal        NEPAL                          18                     1        0     696
0-6 months    GMS-Nepal        NEPAL                          19                     0        0     696
0-6 months    GMS-Nepal        NEPAL                          19                     1        0     696
0-6 months    GMS-Nepal        NEPAL                          20                     0        0     696
0-6 months    GMS-Nepal        NEPAL                          20                     1        0     696
0-6 months    GMS-Nepal        NEPAL                          21                     0        0     696
0-6 months    GMS-Nepal        NEPAL                          21                     1        0     696
0-6 months    GMS-Nepal        NEPAL                          24                     0        0     696
0-6 months    GMS-Nepal        NEPAL                          24                     1        0     696
0-6 months    GMS-Nepal        NEPAL                          25                     0        0     696
0-6 months    GMS-Nepal        NEPAL                          25                     1        0     696
0-6 months    GMS-Nepal        NEPAL                          27                     0        0     696
0-6 months    GMS-Nepal        NEPAL                          27                     1        0     696
0-6 months    LCNI-5           MALAWI                         0                      0       65     267
0-6 months    LCNI-5           MALAWI                         0                      1       39     267
0-6 months    LCNI-5           MALAWI                         1                      0        1     267
0-6 months    LCNI-5           MALAWI                         1                      1        1     267
0-6 months    LCNI-5           MALAWI                         2                      0        3     267
0-6 months    LCNI-5           MALAWI                         2                      1        4     267
0-6 months    LCNI-5           MALAWI                         3                      0        7     267
0-6 months    LCNI-5           MALAWI                         3                      1        4     267
0-6 months    LCNI-5           MALAWI                         4                      0       11     267
0-6 months    LCNI-5           MALAWI                         4                      1        7     267
0-6 months    LCNI-5           MALAWI                         5                      0       17     267
0-6 months    LCNI-5           MALAWI                         5                      1       11     267
0-6 months    LCNI-5           MALAWI                         6                      0       14     267
0-6 months    LCNI-5           MALAWI                         6                      1       10     267
0-6 months    LCNI-5           MALAWI                         7                      0       11     267
0-6 months    LCNI-5           MALAWI                         7                      1        6     267
0-6 months    LCNI-5           MALAWI                         8                      0       15     267
0-6 months    LCNI-5           MALAWI                         8                      1        6     267
0-6 months    LCNI-5           MALAWI                         9                      0        4     267
0-6 months    LCNI-5           MALAWI                         9                      1        0     267
0-6 months    LCNI-5           MALAWI                         10                     0        5     267
0-6 months    LCNI-5           MALAWI                         10                     1        0     267
0-6 months    LCNI-5           MALAWI                         11                     0        2     267
0-6 months    LCNI-5           MALAWI                         11                     1        2     267
0-6 months    LCNI-5           MALAWI                         12                     0       15     267
0-6 months    LCNI-5           MALAWI                         12                     1        4     267
0-6 months    LCNI-5           MALAWI                         13                     0        0     267
0-6 months    LCNI-5           MALAWI                         13                     1        1     267
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
0-6 months    MAL-ED           BANGLADESH                     0                      0        0     149
0-6 months    MAL-ED           BANGLADESH                     0                      1        0     149
0-6 months    MAL-ED           BANGLADESH                     1                      0        6     149
0-6 months    MAL-ED           BANGLADESH                     1                      1        1     149
0-6 months    MAL-ED           BANGLADESH                     2                      0       10     149
0-6 months    MAL-ED           BANGLADESH                     2                      1        2     149
0-6 months    MAL-ED           BANGLADESH                     3                      0        5     149
0-6 months    MAL-ED           BANGLADESH                     3                      1        7     149
0-6 months    MAL-ED           BANGLADESH                     4                      0        5     149
0-6 months    MAL-ED           BANGLADESH                     4                      1        4     149
0-6 months    MAL-ED           BANGLADESH                     5                      0       19     149
0-6 months    MAL-ED           BANGLADESH                     5                      1       18     149
0-6 months    MAL-ED           BANGLADESH                     6                      0        6     149
0-6 months    MAL-ED           BANGLADESH                     6                      1        2     149
0-6 months    MAL-ED           BANGLADESH                     7                      0        7     149
0-6 months    MAL-ED           BANGLADESH                     7                      1        3     149
0-6 months    MAL-ED           BANGLADESH                     8                      0       13     149
0-6 months    MAL-ED           BANGLADESH                     8                      1        5     149
0-6 months    MAL-ED           BANGLADESH                     9                      0        7     149
0-6 months    MAL-ED           BANGLADESH                     9                      1        7     149
0-6 months    MAL-ED           BANGLADESH                     10                     0        9     149
0-6 months    MAL-ED           BANGLADESH                     10                     1        1     149
0-6 months    MAL-ED           BANGLADESH                     11                     0        0     149
0-6 months    MAL-ED           BANGLADESH                     11                     1        0     149
0-6 months    MAL-ED           BANGLADESH                     12                     0        8     149
0-6 months    MAL-ED           BANGLADESH                     12                     1        2     149
0-6 months    MAL-ED           BANGLADESH                     13                     0        0     149
0-6 months    MAL-ED           BANGLADESH                     13                     1        0     149
0-6 months    MAL-ED           BANGLADESH                     14                     0        0     149
0-6 months    MAL-ED           BANGLADESH                     14                     1        0     149
0-6 months    MAL-ED           BANGLADESH                     15                     0        0     149
0-6 months    MAL-ED           BANGLADESH                     15                     1        0     149
0-6 months    MAL-ED           BANGLADESH                     16                     0        2     149
0-6 months    MAL-ED           BANGLADESH                     16                     1        0     149
0-6 months    MAL-ED           BANGLADESH                     17                     0        0     149
0-6 months    MAL-ED           BANGLADESH                     17                     1        0     149
0-6 months    MAL-ED           BANGLADESH                     18                     0        0     149
0-6 months    MAL-ED           BANGLADESH                     18                     1        0     149
0-6 months    MAL-ED           BANGLADESH                     19                     0        0     149
0-6 months    MAL-ED           BANGLADESH                     19                     1        0     149
0-6 months    MAL-ED           BANGLADESH                     20                     0        0     149
0-6 months    MAL-ED           BANGLADESH                     20                     1        0     149
0-6 months    MAL-ED           BANGLADESH                     21                     0        0     149
0-6 months    MAL-ED           BANGLADESH                     21                     1        0     149
0-6 months    MAL-ED           BANGLADESH                     24                     0        0     149
0-6 months    MAL-ED           BANGLADESH                     24                     1        0     149
0-6 months    MAL-ED           BANGLADESH                     25                     0        0     149
0-6 months    MAL-ED           BANGLADESH                     25                     1        0     149
0-6 months    MAL-ED           BANGLADESH                     27                     0        0     149
0-6 months    MAL-ED           BANGLADESH                     27                     1        0     149
0-6 months    MAL-ED           INDIA                          0                      0        0     147
0-6 months    MAL-ED           INDIA                          0                      1        0     147
0-6 months    MAL-ED           INDIA                          1                      0        0     147
0-6 months    MAL-ED           INDIA                          1                      1        0     147
0-6 months    MAL-ED           INDIA                          2                      0        4     147
0-6 months    MAL-ED           INDIA                          2                      1        2     147
0-6 months    MAL-ED           INDIA                          3                      0        9     147
0-6 months    MAL-ED           INDIA                          3                      1        3     147
0-6 months    MAL-ED           INDIA                          4                      0        5     147
0-6 months    MAL-ED           INDIA                          4                      1        2     147
0-6 months    MAL-ED           INDIA                          5                      0       23     147
0-6 months    MAL-ED           INDIA                          5                      1       11     147
0-6 months    MAL-ED           INDIA                          6                      0        8     147
0-6 months    MAL-ED           INDIA                          6                      1        3     147
0-6 months    MAL-ED           INDIA                          7                      0        9     147
0-6 months    MAL-ED           INDIA                          7                      1        3     147
0-6 months    MAL-ED           INDIA                          8                      0       15     147
0-6 months    MAL-ED           INDIA                          8                      1        6     147
0-6 months    MAL-ED           INDIA                          9                      0       19     147
0-6 months    MAL-ED           INDIA                          9                      1        8     147
0-6 months    MAL-ED           INDIA                          10                     0        3     147
0-6 months    MAL-ED           INDIA                          10                     1        3     147
0-6 months    MAL-ED           INDIA                          11                     0        0     147
0-6 months    MAL-ED           INDIA                          11                     1        2     147
0-6 months    MAL-ED           INDIA                          12                     0        2     147
0-6 months    MAL-ED           INDIA                          12                     1        1     147
0-6 months    MAL-ED           INDIA                          13                     0        1     147
0-6 months    MAL-ED           INDIA                          13                     1        0     147
0-6 months    MAL-ED           INDIA                          14                     0        1     147
0-6 months    MAL-ED           INDIA                          14                     1        1     147
0-6 months    MAL-ED           INDIA                          15                     0        2     147
0-6 months    MAL-ED           INDIA                          15                     1        0     147
0-6 months    MAL-ED           INDIA                          16                     0        0     147
0-6 months    MAL-ED           INDIA                          16                     1        0     147
0-6 months    MAL-ED           INDIA                          17                     0        0     147
0-6 months    MAL-ED           INDIA                          17                     1        0     147
0-6 months    MAL-ED           INDIA                          18                     0        0     147
0-6 months    MAL-ED           INDIA                          18                     1        1     147
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
0-6 months    MAL-ED           NEPAL                          2                      0        3      98
0-6 months    MAL-ED           NEPAL                          2                      1        1      98
0-6 months    MAL-ED           NEPAL                          3                      0        2      98
0-6 months    MAL-ED           NEPAL                          3                      1        1      98
0-6 months    MAL-ED           NEPAL                          4                      0        9      98
0-6 months    MAL-ED           NEPAL                          4                      1        2      98
0-6 months    MAL-ED           NEPAL                          5                      0        6      98
0-6 months    MAL-ED           NEPAL                          5                      1        0      98
0-6 months    MAL-ED           NEPAL                          6                      0        4      98
0-6 months    MAL-ED           NEPAL                          6                      1        0      98
0-6 months    MAL-ED           NEPAL                          7                      0        7      98
0-6 months    MAL-ED           NEPAL                          7                      1        2      98
0-6 months    MAL-ED           NEPAL                          8                      0        8      98
0-6 months    MAL-ED           NEPAL                          8                      1        4      98
0-6 months    MAL-ED           NEPAL                          9                      0        6      98
0-6 months    MAL-ED           NEPAL                          9                      1        1      98
0-6 months    MAL-ED           NEPAL                          10                     0       22      98
0-6 months    MAL-ED           NEPAL                          10                     1        5      98
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
0-6 months    MAL-ED           PERU                           0                      0        0     250
0-6 months    MAL-ED           PERU                           0                      1        1     250
0-6 months    MAL-ED           PERU                           1                      0        1     250
0-6 months    MAL-ED           PERU                           1                      1        1     250
0-6 months    MAL-ED           PERU                           2                      0        0     250
0-6 months    MAL-ED           PERU                           2                      1        1     250
0-6 months    MAL-ED           PERU                           3                      0        7     250
0-6 months    MAL-ED           PERU                           3                      1        2     250
0-6 months    MAL-ED           PERU                           4                      0        2     250
0-6 months    MAL-ED           PERU                           4                      1        2     250
0-6 months    MAL-ED           PERU                           5                      0        4     250
0-6 months    MAL-ED           PERU                           5                      1        4     250
0-6 months    MAL-ED           PERU                           6                      0       15     250
0-6 months    MAL-ED           PERU                           6                      1       11     250
0-6 months    MAL-ED           PERU                           7                      0       12     250
0-6 months    MAL-ED           PERU                           7                      1        6     250
0-6 months    MAL-ED           PERU                           8                      0       12     250
0-6 months    MAL-ED           PERU                           8                      1       10     250
0-6 months    MAL-ED           PERU                           9                      0       16     250
0-6 months    MAL-ED           PERU                           9                      1       10     250
0-6 months    MAL-ED           PERU                           10                     0        9     250
0-6 months    MAL-ED           PERU                           10                     1        4     250
0-6 months    MAL-ED           PERU                           11                     0       54     250
0-6 months    MAL-ED           PERU                           11                     1       45     250
0-6 months    MAL-ED           PERU                           12                     0        0     250
0-6 months    MAL-ED           PERU                           12                     1        1     250
0-6 months    MAL-ED           PERU                           13                     0        3     250
0-6 months    MAL-ED           PERU                           13                     1        2     250
0-6 months    MAL-ED           PERU                           14                     0        2     250
0-6 months    MAL-ED           PERU                           14                     1        3     250
0-6 months    MAL-ED           PERU                           15                     0        1     250
0-6 months    MAL-ED           PERU                           15                     1        0     250
0-6 months    MAL-ED           PERU                           16                     0        0     250
0-6 months    MAL-ED           PERU                           16                     1        1     250
0-6 months    MAL-ED           PERU                           17                     0        1     250
0-6 months    MAL-ED           PERU                           17                     1        0     250
0-6 months    MAL-ED           PERU                           18                     0        2     250
0-6 months    MAL-ED           PERU                           18                     1        3     250
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
0-6 months    MAL-ED           SOUTH AFRICA                   4                      0        2     110
0-6 months    MAL-ED           SOUTH AFRICA                   4                      1        2     110
0-6 months    MAL-ED           SOUTH AFRICA                   5                      0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   5                      1        2     110
0-6 months    MAL-ED           SOUTH AFRICA                   6                      0        6     110
0-6 months    MAL-ED           SOUTH AFRICA                   6                      1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   7                      0        6     110
0-6 months    MAL-ED           SOUTH AFRICA                   7                      1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   8                      0        9     110
0-6 months    MAL-ED           SOUTH AFRICA                   8                      1        2     110
0-6 months    MAL-ED           SOUTH AFRICA                   9                      0        4     110
0-6 months    MAL-ED           SOUTH AFRICA                   9                      1        3     110
0-6 months    MAL-ED           SOUTH AFRICA                   10                     0        7     110
0-6 months    MAL-ED           SOUTH AFRICA                   10                     1        3     110
0-6 months    MAL-ED           SOUTH AFRICA                   11                     0        9     110
0-6 months    MAL-ED           SOUTH AFRICA                   11                     1       11     110
0-6 months    MAL-ED           SOUTH AFRICA                   12                     0       19     110
0-6 months    MAL-ED           SOUTH AFRICA                   12                     1       17     110
0-6 months    MAL-ED           SOUTH AFRICA                   13                     0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   13                     1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   14                     0        2     110
0-6 months    MAL-ED           SOUTH AFRICA                   14                     1        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   15                     0        2     110
0-6 months    MAL-ED           SOUTH AFRICA                   15                     1        1     110
0-6 months    MAL-ED           SOUTH AFRICA                   16                     0        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   16                     1        1     110
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
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0       10     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        4     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                      0        6     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                      1        7     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                      0       12     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                      1        6     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                      0        8     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                      1        8     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                      0        4     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                      1        9     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                      0        6     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                      1        2     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                      0       72     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                      1       46     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                      0        1     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                      1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                      0        1     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                      1        1     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                     0        3     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                     1        1     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                     0        2     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                     1        1     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                     0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                     1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                     0        1     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                     1        1     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                     0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                     1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                     0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                     1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                     0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                     1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                     0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                     1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                     0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                     1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                     0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                     1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                     0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                     1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                     0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                     1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                     0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                     1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                     0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                     1        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                     0        0     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                     1        0     212
0-6 months    NIH-Crypto       BANGLADESH                     0                      0      114     758
0-6 months    NIH-Crypto       BANGLADESH                     0                      1       60     758
0-6 months    NIH-Crypto       BANGLADESH                     1                      0       16     758
0-6 months    NIH-Crypto       BANGLADESH                     1                      1        5     758
0-6 months    NIH-Crypto       BANGLADESH                     2                      0       13     758
0-6 months    NIH-Crypto       BANGLADESH                     2                      1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     3                      0       24     758
0-6 months    NIH-Crypto       BANGLADESH                     3                      1       10     758
0-6 months    NIH-Crypto       BANGLADESH                     4                      0       23     758
0-6 months    NIH-Crypto       BANGLADESH                     4                      1       17     758
0-6 months    NIH-Crypto       BANGLADESH                     5                      0       56     758
0-6 months    NIH-Crypto       BANGLADESH                     5                      1       32     758
0-6 months    NIH-Crypto       BANGLADESH                     6                      0       20     758
0-6 months    NIH-Crypto       BANGLADESH                     6                      1       15     758
0-6 months    NIH-Crypto       BANGLADESH                     7                      0       37     758
0-6 months    NIH-Crypto       BANGLADESH                     7                      1       20     758
0-6 months    NIH-Crypto       BANGLADESH                     8                      0       66     758
0-6 months    NIH-Crypto       BANGLADESH                     8                      1       24     758
0-6 months    NIH-Crypto       BANGLADESH                     9                      0       60     758
0-6 months    NIH-Crypto       BANGLADESH                     9                      1       26     758
0-6 months    NIH-Crypto       BANGLADESH                     10                     0       45     758
0-6 months    NIH-Crypto       BANGLADESH                     10                     1        9     758
0-6 months    NIH-Crypto       BANGLADESH                     11                     0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     11                     1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     12                     0       28     758
0-6 months    NIH-Crypto       BANGLADESH                     12                     1        7     758
0-6 months    NIH-Crypto       BANGLADESH                     13                     0        0     758
0-6 months    NIH-Crypto       BANGLADESH                     13                     1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     14                     0        8     758
0-6 months    NIH-Crypto       BANGLADESH                     14                     1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     15                     0       13     758
0-6 months    NIH-Crypto       BANGLADESH                     15                     1        3     758
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
0-6 months    PROBIT           BELARUS                        0                      0        0   16309
0-6 months    PROBIT           BELARUS                        0                      1        0   16309
0-6 months    PROBIT           BELARUS                        1                      0        0   16309
0-6 months    PROBIT           BELARUS                        1                      1        0   16309
0-6 months    PROBIT           BELARUS                        2                      0        0   16309
0-6 months    PROBIT           BELARUS                        2                      1        0   16309
0-6 months    PROBIT           BELARUS                        3                      0        0   16309
0-6 months    PROBIT           BELARUS                        3                      1        0   16309
0-6 months    PROBIT           BELARUS                        4                      0        0   16309
0-6 months    PROBIT           BELARUS                        4                      1        0   16309
0-6 months    PROBIT           BELARUS                        5                      0        0   16309
0-6 months    PROBIT           BELARUS                        5                      1        0   16309
0-6 months    PROBIT           BELARUS                        6                      0        0   16309
0-6 months    PROBIT           BELARUS                        6                      1        0   16309
0-6 months    PROBIT           BELARUS                        7                      0        0   16309
0-6 months    PROBIT           BELARUS                        7                      1        0   16309
0-6 months    PROBIT           BELARUS                        8                      0       24   16309
0-6 months    PROBIT           BELARUS                        8                      1        3   16309
0-6 months    PROBIT           BELARUS                        9                      0        0   16309
0-6 months    PROBIT           BELARUS                        9                      1        0   16309
0-6 months    PROBIT           BELARUS                        10                     0      338   16309
0-6 months    PROBIT           BELARUS                        10                     1       29   16309
0-6 months    PROBIT           BELARUS                        11                     0        0   16309
0-6 months    PROBIT           BELARUS                        11                     1        0   16309
0-6 months    PROBIT           BELARUS                        12                     0     5546   16309
0-6 months    PROBIT           BELARUS                        12                     1      478   16309
0-6 months    PROBIT           BELARUS                        13                     0     6756   16309
0-6 months    PROBIT           BELARUS                        13                     1      428   16309
0-6 months    PROBIT           BELARUS                        14                     0      417   16309
0-6 months    PROBIT           BELARUS                        14                     1       27   16309
0-6 months    PROBIT           BELARUS                        15                     0        0   16309
0-6 months    PROBIT           BELARUS                        15                     1        0   16309
0-6 months    PROBIT           BELARUS                        16                     0     2150   16309
0-6 months    PROBIT           BELARUS                        16                     1      113   16309
0-6 months    PROBIT           BELARUS                        17                     0        0   16309
0-6 months    PROBIT           BELARUS                        17                     1        0   16309
0-6 months    PROBIT           BELARUS                        18                     0        0   16309
0-6 months    PROBIT           BELARUS                        18                     1        0   16309
0-6 months    PROBIT           BELARUS                        19                     0        0   16309
0-6 months    PROBIT           BELARUS                        19                     1        0   16309
0-6 months    PROBIT           BELARUS                        20                     0        0   16309
0-6 months    PROBIT           BELARUS                        20                     1        0   16309
0-6 months    PROBIT           BELARUS                        21                     0        0   16309
0-6 months    PROBIT           BELARUS                        21                     1        0   16309
0-6 months    PROBIT           BELARUS                        24                     0        0   16309
0-6 months    PROBIT           BELARUS                        24                     1        0   16309
0-6 months    PROBIT           BELARUS                        25                     0        0   16309
0-6 months    PROBIT           BELARUS                        25                     1        0   16309
0-6 months    PROBIT           BELARUS                        27                     0        0   16309
0-6 months    PROBIT           BELARUS                        27                     1        0   16309
0-6 months    PROVIDE          BANGLADESH                     0                      0      144     700
0-6 months    PROVIDE          BANGLADESH                     0                      1       63     700
0-6 months    PROVIDE          BANGLADESH                     1                      0       11     700
0-6 months    PROVIDE          BANGLADESH                     1                      1        2     700
0-6 months    PROVIDE          BANGLADESH                     2                      0       11     700
0-6 months    PROVIDE          BANGLADESH                     2                      1        7     700
0-6 months    PROVIDE          BANGLADESH                     3                      0       23     700
0-6 months    PROVIDE          BANGLADESH                     3                      1        4     700
0-6 months    PROVIDE          BANGLADESH                     4                      0       36     700
0-6 months    PROVIDE          BANGLADESH                     4                      1       16     700
0-6 months    PROVIDE          BANGLADESH                     5                      0       66     700
0-6 months    PROVIDE          BANGLADESH                     5                      1       14     700
0-6 months    PROVIDE          BANGLADESH                     6                      0       21     700
0-6 months    PROVIDE          BANGLADESH                     6                      1        8     700
0-6 months    PROVIDE          BANGLADESH                     7                      0       32     700
0-6 months    PROVIDE          BANGLADESH                     7                      1       10     700
0-6 months    PROVIDE          BANGLADESH                     8                      0       51     700
0-6 months    PROVIDE          BANGLADESH                     8                      1       13     700
0-6 months    PROVIDE          BANGLADESH                     9                      0       48     700
0-6 months    PROVIDE          BANGLADESH                     9                      1       14     700
0-6 months    PROVIDE          BANGLADESH                     10                     0       33     700
0-6 months    PROVIDE          BANGLADESH                     10                     1        6     700
0-6 months    PROVIDE          BANGLADESH                     11                     0       21     700
0-6 months    PROVIDE          BANGLADESH                     11                     1        5     700
0-6 months    PROVIDE          BANGLADESH                     12                     0        3     700
0-6 months    PROVIDE          BANGLADESH                     12                     1        1     700
0-6 months    PROVIDE          BANGLADESH                     13                     0        0     700
0-6 months    PROVIDE          BANGLADESH                     13                     1        0     700
0-6 months    PROVIDE          BANGLADESH                     14                     0       17     700
0-6 months    PROVIDE          BANGLADESH                     14                     1        2     700
0-6 months    PROVIDE          BANGLADESH                     15                     0        8     700
0-6 months    PROVIDE          BANGLADESH                     15                     1        0     700
0-6 months    PROVIDE          BANGLADESH                     16                     0        7     700
0-6 months    PROVIDE          BANGLADESH                     16                     1        2     700
0-6 months    PROVIDE          BANGLADESH                     17                     0        0     700
0-6 months    PROVIDE          BANGLADESH                     17                     1        0     700
0-6 months    PROVIDE          BANGLADESH                     18                     0        0     700
0-6 months    PROVIDE          BANGLADESH                     18                     1        0     700
0-6 months    PROVIDE          BANGLADESH                     19                     0        0     700
0-6 months    PROVIDE          BANGLADESH                     19                     1        1     700
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
0-6 months    SAS-CompFeed     INDIA                          0                      0       98    1527
0-6 months    SAS-CompFeed     INDIA                          0                      1       98    1527
0-6 months    SAS-CompFeed     INDIA                          1                      0        0    1527
0-6 months    SAS-CompFeed     INDIA                          1                      1        0    1527
0-6 months    SAS-CompFeed     INDIA                          2                      0        4    1527
0-6 months    SAS-CompFeed     INDIA                          2                      1        3    1527
0-6 months    SAS-CompFeed     INDIA                          3                      0        7    1527
0-6 months    SAS-CompFeed     INDIA                          3                      1        8    1527
0-6 months    SAS-CompFeed     INDIA                          4                      0       12    1527
0-6 months    SAS-CompFeed     INDIA                          4                      1       13    1527
0-6 months    SAS-CompFeed     INDIA                          5                      0       48    1527
0-6 months    SAS-CompFeed     INDIA                          5                      1       46    1527
0-6 months    SAS-CompFeed     INDIA                          6                      0       14    1527
0-6 months    SAS-CompFeed     INDIA                          6                      1       14    1527
0-6 months    SAS-CompFeed     INDIA                          7                      0       64    1527
0-6 months    SAS-CompFeed     INDIA                          7                      1       53    1527
0-6 months    SAS-CompFeed     INDIA                          8                      0       91    1527
0-6 months    SAS-CompFeed     INDIA                          8                      1       80    1527
0-6 months    SAS-CompFeed     INDIA                          9                      0       56    1527
0-6 months    SAS-CompFeed     INDIA                          9                      1       42    1527
0-6 months    SAS-CompFeed     INDIA                          10                     0      229    1527
0-6 months    SAS-CompFeed     INDIA                          10                     1      158    1527
0-6 months    SAS-CompFeed     INDIA                          11                     0       25    1527
0-6 months    SAS-CompFeed     INDIA                          11                     1       17    1527
0-6 months    SAS-CompFeed     INDIA                          12                     0      150    1527
0-6 months    SAS-CompFeed     INDIA                          12                     1       78    1527
0-6 months    SAS-CompFeed     INDIA                          13                     0        5    1527
0-6 months    SAS-CompFeed     INDIA                          13                     1        2    1527
0-6 months    SAS-CompFeed     INDIA                          14                     0       12    1527
0-6 months    SAS-CompFeed     INDIA                          14                     1        5    1527
0-6 months    SAS-CompFeed     INDIA                          15                     0       40    1527
0-6 months    SAS-CompFeed     INDIA                          15                     1       25    1527
0-6 months    SAS-CompFeed     INDIA                          16                     0        6    1527
0-6 months    SAS-CompFeed     INDIA                          16                     1        4    1527
0-6 months    SAS-CompFeed     INDIA                          17                     0       12    1527
0-6 months    SAS-CompFeed     INDIA                          17                     1        3    1527
0-6 months    SAS-CompFeed     INDIA                          18                     0        3    1527
0-6 months    SAS-CompFeed     INDIA                          18                     1        0    1527
0-6 months    SAS-CompFeed     INDIA                          19                     0        1    1527
0-6 months    SAS-CompFeed     INDIA                          19                     1        0    1527
0-6 months    SAS-CompFeed     INDIA                          20                     0        1    1527
0-6 months    SAS-CompFeed     INDIA                          20                     1        0    1527
0-6 months    SAS-CompFeed     INDIA                          21                     0        0    1527
0-6 months    SAS-CompFeed     INDIA                          21                     1        0    1527
0-6 months    SAS-CompFeed     INDIA                          24                     0        0    1527
0-6 months    SAS-CompFeed     INDIA                          24                     1        0    1527
0-6 months    SAS-CompFeed     INDIA                          25                     0        0    1527
0-6 months    SAS-CompFeed     INDIA                          25                     1        0    1527
0-6 months    SAS-CompFeed     INDIA                          27                     0        0    1527
0-6 months    SAS-CompFeed     INDIA                          27                     1        0    1527
0-6 months    SAS-FoodSuppl    INDIA                          0                      0       88     416
0-6 months    SAS-FoodSuppl    INDIA                          0                      1       58     416
0-6 months    SAS-FoodSuppl    INDIA                          1                      0        1     416
0-6 months    SAS-FoodSuppl    INDIA                          1                      1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          2                      0        6     416
0-6 months    SAS-FoodSuppl    INDIA                          2                      1        3     416
0-6 months    SAS-FoodSuppl    INDIA                          3                      0        5     416
0-6 months    SAS-FoodSuppl    INDIA                          3                      1        2     416
0-6 months    SAS-FoodSuppl    INDIA                          4                      0        5     416
0-6 months    SAS-FoodSuppl    INDIA                          4                      1        6     416
0-6 months    SAS-FoodSuppl    INDIA                          5                      0       30     416
0-6 months    SAS-FoodSuppl    INDIA                          5                      1       25     416
0-6 months    SAS-FoodSuppl    INDIA                          6                      0        7     416
0-6 months    SAS-FoodSuppl    INDIA                          6                      1        5     416
0-6 months    SAS-FoodSuppl    INDIA                          7                      0       11     416
0-6 months    SAS-FoodSuppl    INDIA                          7                      1        5     416
0-6 months    SAS-FoodSuppl    INDIA                          8                      0       30     416
0-6 months    SAS-FoodSuppl    INDIA                          8                      1       19     416
0-6 months    SAS-FoodSuppl    INDIA                          9                      0       18     416
0-6 months    SAS-FoodSuppl    INDIA                          9                      1        8     416
0-6 months    SAS-FoodSuppl    INDIA                          10                     0       36     416
0-6 months    SAS-FoodSuppl    INDIA                          10                     1       24     416
0-6 months    SAS-FoodSuppl    INDIA                          11                     0        2     416
0-6 months    SAS-FoodSuppl    INDIA                          11                     1        1     416
0-6 months    SAS-FoodSuppl    INDIA                          12                     0        7     416
0-6 months    SAS-FoodSuppl    INDIA                          12                     1        3     416
0-6 months    SAS-FoodSuppl    INDIA                          13                     0        1     416
0-6 months    SAS-FoodSuppl    INDIA                          13                     1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          14                     0        5     416
0-6 months    SAS-FoodSuppl    INDIA                          14                     1        2     416
0-6 months    SAS-FoodSuppl    INDIA                          15                     0        2     416
0-6 months    SAS-FoodSuppl    INDIA                          15                     1        1     416
0-6 months    SAS-FoodSuppl    INDIA                          16                     0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          16                     1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          17                     0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          17                     1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          18                     0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          18                     1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          19                     0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          19                     1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          20                     0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          20                     1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          21                     0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          21                     1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          24                     0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          24                     1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          25                     0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          25                     1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          27                     0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          27                     1        0     416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      0        5    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      0        5    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      1        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      0        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      1        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      0      991    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      1      267    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      0        5    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      1        4    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      0       43    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      1       10    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     0       20    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     1        4    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     0      470    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     1      108    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     0       15    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     1        2    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                     0      101    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                     1       16    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                     0       14    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                     1        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                     0       20    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                     1        3    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                     0       25    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                     1        3    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                     0       18    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                     1        5    2383
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
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                     0        0    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                     1        1    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                     0      165    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                     1       38    2383
0-6 months    ZVITAMBO         ZIMBABWE                       0                      0       46   13679
0-6 months    ZVITAMBO         ZIMBABWE                       0                      1       16   13679
0-6 months    ZVITAMBO         ZIMBABWE                       1                      0        1   13679
0-6 months    ZVITAMBO         ZIMBABWE                       1                      1        1   13679
0-6 months    ZVITAMBO         ZIMBABWE                       2                      0        4   13679
0-6 months    ZVITAMBO         ZIMBABWE                       2                      1        1   13679
0-6 months    ZVITAMBO         ZIMBABWE                       3                      0       11   13679
0-6 months    ZVITAMBO         ZIMBABWE                       3                      1        4   13679
0-6 months    ZVITAMBO         ZIMBABWE                       4                      0       18   13679
0-6 months    ZVITAMBO         ZIMBABWE                       4                      1        5   13679
0-6 months    ZVITAMBO         ZIMBABWE                       5                      0       21   13679
0-6 months    ZVITAMBO         ZIMBABWE                       5                      1       11   13679
0-6 months    ZVITAMBO         ZIMBABWE                       6                      0       28   13679
0-6 months    ZVITAMBO         ZIMBABWE                       6                      1       15   13679
0-6 months    ZVITAMBO         ZIMBABWE                       7                      0      559   13679
0-6 months    ZVITAMBO         ZIMBABWE                       7                      1      234   13679
0-6 months    ZVITAMBO         ZIMBABWE                       8                      0       85   13679
0-6 months    ZVITAMBO         ZIMBABWE                       8                      1       18   13679
0-6 months    ZVITAMBO         ZIMBABWE                       9                      0      636   13679
0-6 months    ZVITAMBO         ZIMBABWE                       9                      1      264   13679
0-6 months    ZVITAMBO         ZIMBABWE                       10                     0      238   13679
0-6 months    ZVITAMBO         ZIMBABWE                       10                     1       93   13679
0-6 months    ZVITAMBO         ZIMBABWE                       11                     0     7744   13679
0-6 months    ZVITAMBO         ZIMBABWE                       11                     1     2628   13679
0-6 months    ZVITAMBO         ZIMBABWE                       12                     0       42   13679
0-6 months    ZVITAMBO         ZIMBABWE                       12                     1       17   13679
0-6 months    ZVITAMBO         ZIMBABWE                       13                     0      736   13679
0-6 months    ZVITAMBO         ZIMBABWE                       13                     1      203   13679
0-6 months    ZVITAMBO         ZIMBABWE                       14                     0        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       14                     1        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       15                     0        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       15                     1        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       16                     0        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       16                     1        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       17                     0        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       17                     1        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       18                     0        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       18                     1        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       19                     0        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       19                     1        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       20                     0        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       20                     1        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       21                     0        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       21                     1        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       24                     0        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       24                     1        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       25                     0        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       25                     1        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       27                     0        0   13679
0-6 months    ZVITAMBO         ZIMBABWE                       27                     1        0   13679
6-24 months   COHORTS          GUATEMALA                      0                      0       84     831
6-24 months   COHORTS          GUATEMALA                      0                      1      293     831
6-24 months   COHORTS          GUATEMALA                      1                      0        7     831
6-24 months   COHORTS          GUATEMALA                      1                      1       42     831
6-24 months   COHORTS          GUATEMALA                      2                      0       47     831
6-24 months   COHORTS          GUATEMALA                      2                      1       99     831
6-24 months   COHORTS          GUATEMALA                      3                      0       27     831
6-24 months   COHORTS          GUATEMALA                      3                      1       80     831
6-24 months   COHORTS          GUATEMALA                      4                      0        7     831
6-24 months   COHORTS          GUATEMALA                      4                      1       37     831
6-24 months   COHORTS          GUATEMALA                      5                      0        3     831
6-24 months   COHORTS          GUATEMALA                      5                      1       16     831
6-24 months   COHORTS          GUATEMALA                      6                      0       20     831
6-24 months   COHORTS          GUATEMALA                      6                      1       57     831
6-24 months   COHORTS          GUATEMALA                      7                      0        3     831
6-24 months   COHORTS          GUATEMALA                      7                      1        1     831
6-24 months   COHORTS          GUATEMALA                      8                      0        0     831
6-24 months   COHORTS          GUATEMALA                      8                      1        1     831
6-24 months   COHORTS          GUATEMALA                      9                      0        0     831
6-24 months   COHORTS          GUATEMALA                      9                      1        0     831
6-24 months   COHORTS          GUATEMALA                      10                     0        0     831
6-24 months   COHORTS          GUATEMALA                      10                     1        1     831
6-24 months   COHORTS          GUATEMALA                      11                     0        0     831
6-24 months   COHORTS          GUATEMALA                      11                     1        0     831
6-24 months   COHORTS          GUATEMALA                      12                     0        0     831
6-24 months   COHORTS          GUATEMALA                      12                     1        4     831
6-24 months   COHORTS          GUATEMALA                      13                     0        0     831
6-24 months   COHORTS          GUATEMALA                      13                     1        0     831
6-24 months   COHORTS          GUATEMALA                      14                     0        0     831
6-24 months   COHORTS          GUATEMALA                      14                     1        1     831
6-24 months   COHORTS          GUATEMALA                      15                     0        0     831
6-24 months   COHORTS          GUATEMALA                      15                     1        1     831
6-24 months   COHORTS          GUATEMALA                      16                     0        0     831
6-24 months   COHORTS          GUATEMALA                      16                     1        0     831
6-24 months   COHORTS          GUATEMALA                      17                     0        0     831
6-24 months   COHORTS          GUATEMALA                      17                     1        0     831
6-24 months   COHORTS          GUATEMALA                      18                     0        0     831
6-24 months   COHORTS          GUATEMALA                      18                     1        0     831
6-24 months   COHORTS          GUATEMALA                      19                     0        0     831
6-24 months   COHORTS          GUATEMALA                      19                     1        0     831
6-24 months   COHORTS          GUATEMALA                      20                     0        0     831
6-24 months   COHORTS          GUATEMALA                      20                     1        0     831
6-24 months   COHORTS          GUATEMALA                      21                     0        0     831
6-24 months   COHORTS          GUATEMALA                      21                     1        0     831
6-24 months   COHORTS          GUATEMALA                      24                     0        0     831
6-24 months   COHORTS          GUATEMALA                      24                     1        0     831
6-24 months   COHORTS          GUATEMALA                      25                     0        0     831
6-24 months   COHORTS          GUATEMALA                      25                     1        0     831
6-24 months   COHORTS          GUATEMALA                      27                     0        0     831
6-24 months   COHORTS          GUATEMALA                      27                     1        0     831
6-24 months   COHORTS          INDIA                          0                      0       52    1179
6-24 months   COHORTS          INDIA                          0                      1       47    1179
6-24 months   COHORTS          INDIA                          1                      0        0    1179
6-24 months   COHORTS          INDIA                          1                      1        0    1179
6-24 months   COHORTS          INDIA                          2                      0        0    1179
6-24 months   COHORTS          INDIA                          2                      1        0    1179
6-24 months   COHORTS          INDIA                          3                      0       66    1179
6-24 months   COHORTS          INDIA                          3                      1       38    1179
6-24 months   COHORTS          INDIA                          4                      0        0    1179
6-24 months   COHORTS          INDIA                          4                      1        0    1179
6-24 months   COHORTS          INDIA                          5                      0        0    1179
6-24 months   COHORTS          INDIA                          5                      1        0    1179
6-24 months   COHORTS          INDIA                          6                      0        0    1179
6-24 months   COHORTS          INDIA                          6                      1        0    1179
6-24 months   COHORTS          INDIA                          7                      0        0    1179
6-24 months   COHORTS          INDIA                          7                      1        0    1179
6-24 months   COHORTS          INDIA                          8                      0      113    1179
6-24 months   COHORTS          INDIA                          8                      1       50    1179
6-24 months   COHORTS          INDIA                          9                      0        0    1179
6-24 months   COHORTS          INDIA                          9                      1        0    1179
6-24 months   COHORTS          INDIA                          10                     0        0    1179
6-24 months   COHORTS          INDIA                          10                     1        0    1179
6-24 months   COHORTS          INDIA                          11                     0        0    1179
6-24 months   COHORTS          INDIA                          11                     1        0    1179
6-24 months   COHORTS          INDIA                          12                     0      246    1179
6-24 months   COHORTS          INDIA                          12                     1       90    1179
6-24 months   COHORTS          INDIA                          13                     0        0    1179
6-24 months   COHORTS          INDIA                          13                     1        0    1179
6-24 months   COHORTS          INDIA                          14                     0       96    1179
6-24 months   COHORTS          INDIA                          14                     1       32    1179
6-24 months   COHORTS          INDIA                          15                     0      207    1179
6-24 months   COHORTS          INDIA                          15                     1       34    1179
6-24 months   COHORTS          INDIA                          16                     0        0    1179
6-24 months   COHORTS          INDIA                          16                     1        0    1179
6-24 months   COHORTS          INDIA                          17                     0       85    1179
6-24 months   COHORTS          INDIA                          17                     1       23    1179
6-24 months   COHORTS          INDIA                          18                     0        0    1179
6-24 months   COHORTS          INDIA                          18                     1        0    1179
6-24 months   COHORTS          INDIA                          19                     0        0    1179
6-24 months   COHORTS          INDIA                          19                     1        0    1179
6-24 months   COHORTS          INDIA                          20                     0        0    1179
6-24 months   COHORTS          INDIA                          20                     1        0    1179
6-24 months   COHORTS          INDIA                          21                     0        0    1179
6-24 months   COHORTS          INDIA                          21                     1        0    1179
6-24 months   COHORTS          INDIA                          24                     0        0    1179
6-24 months   COHORTS          INDIA                          24                     1        0    1179
6-24 months   COHORTS          INDIA                          25                     0        0    1179
6-24 months   COHORTS          INDIA                          25                     1        0    1179
6-24 months   COHORTS          INDIA                          27                     0        0    1179
6-24 months   COHORTS          INDIA                          27                     1        0    1179
6-24 months   COHORTS          PHILIPPINES                    0                      0        6    2007
6-24 months   COHORTS          PHILIPPINES                    0                      1       30    2007
6-24 months   COHORTS          PHILIPPINES                    1                      0        2    2007
6-24 months   COHORTS          PHILIPPINES                    1                      1       16    2007
6-24 months   COHORTS          PHILIPPINES                    2                      0       10    2007
6-24 months   COHORTS          PHILIPPINES                    2                      1       50    2007
6-24 months   COHORTS          PHILIPPINES                    3                      0       28    2007
6-24 months   COHORTS          PHILIPPINES                    3                      1       79    2007
6-24 months   COHORTS          PHILIPPINES                    4                      0       43    2007
6-24 months   COHORTS          PHILIPPINES                    4                      1      136    2007
6-24 months   COHORTS          PHILIPPINES                    5                      0       35    2007
6-24 months   COHORTS          PHILIPPINES                    5                      1      109    2007
6-24 months   COHORTS          PHILIPPINES                    6                      0      130    2007
6-24 months   COHORTS          PHILIPPINES                    6                      1      305    2007
6-24 months   COHORTS          PHILIPPINES                    7                      0       44    2007
6-24 months   COHORTS          PHILIPPINES                    7                      1       61    2007
6-24 months   COHORTS          PHILIPPINES                    8                      0       40    2007
6-24 months   COHORTS          PHILIPPINES                    8                      1      118    2007
6-24 months   COHORTS          PHILIPPINES                    9                      0       58    2007
6-24 months   COHORTS          PHILIPPINES                    9                      1       86    2007
6-24 months   COHORTS          PHILIPPINES                    10                     0       99    2007
6-24 months   COHORTS          PHILIPPINES                    10                     1      143    2007
6-24 months   COHORTS          PHILIPPINES                    11                     0       20    2007
6-24 months   COHORTS          PHILIPPINES                    11                     1       29    2007
6-24 months   COHORTS          PHILIPPINES                    12                     0       77    2007
6-24 months   COHORTS          PHILIPPINES                    12                     1       56    2007
6-24 months   COHORTS          PHILIPPINES                    13                     0       30    2007
6-24 months   COHORTS          PHILIPPINES                    13                     1       21    2007
6-24 months   COHORTS          PHILIPPINES                    14                     0       59    2007
6-24 months   COHORTS          PHILIPPINES                    14                     1       46    2007
6-24 months   COHORTS          PHILIPPINES                    15                     0       18    2007
6-24 months   COHORTS          PHILIPPINES                    15                     1       14    2007
6-24 months   COHORTS          PHILIPPINES                    16                     0        3    2007
6-24 months   COHORTS          PHILIPPINES                    16                     1        2    2007
6-24 months   COHORTS          PHILIPPINES                    17                     0        2    2007
6-24 months   COHORTS          PHILIPPINES                    17                     1        0    2007
6-24 months   COHORTS          PHILIPPINES                    18                     0        2    2007
6-24 months   COHORTS          PHILIPPINES                    18                     1        0    2007
6-24 months   COHORTS          PHILIPPINES                    19                     0        0    2007
6-24 months   COHORTS          PHILIPPINES                    19                     1        0    2007
6-24 months   COHORTS          PHILIPPINES                    20                     0        0    2007
6-24 months   COHORTS          PHILIPPINES                    20                     1        0    2007
6-24 months   COHORTS          PHILIPPINES                    21                     0        0    2007
6-24 months   COHORTS          PHILIPPINES                    21                     1        0    2007
6-24 months   COHORTS          PHILIPPINES                    24                     0        0    2007
6-24 months   COHORTS          PHILIPPINES                    24                     1        0    2007
6-24 months   COHORTS          PHILIPPINES                    25                     0        0    2007
6-24 months   COHORTS          PHILIPPINES                    25                     1        0    2007
6-24 months   COHORTS          PHILIPPINES                    27                     0        0    2007
6-24 months   COHORTS          PHILIPPINES                    27                     1        0    2007
6-24 months   GMS-Nepal        NEPAL                          0                      0       61     396
6-24 months   GMS-Nepal        NEPAL                          0                      1       97     396
6-24 months   GMS-Nepal        NEPAL                          1                      0        0     396
6-24 months   GMS-Nepal        NEPAL                          1                      1        0     396
6-24 months   GMS-Nepal        NEPAL                          2                      0        0     396
6-24 months   GMS-Nepal        NEPAL                          2                      1        0     396
6-24 months   GMS-Nepal        NEPAL                          3                      0        0     396
6-24 months   GMS-Nepal        NEPAL                          3                      1        0     396
6-24 months   GMS-Nepal        NEPAL                          4                      0        0     396
6-24 months   GMS-Nepal        NEPAL                          4                      1        0     396
6-24 months   GMS-Nepal        NEPAL                          5                      0       28     396
6-24 months   GMS-Nepal        NEPAL                          5                      1       32     396
6-24 months   GMS-Nepal        NEPAL                          6                      0        0     396
6-24 months   GMS-Nepal        NEPAL                          6                      1        0     396
6-24 months   GMS-Nepal        NEPAL                          7                      0        0     396
6-24 months   GMS-Nepal        NEPAL                          7                      1        0     396
6-24 months   GMS-Nepal        NEPAL                          8                      0       25     396
6-24 months   GMS-Nepal        NEPAL                          8                      1       49     396
6-24 months   GMS-Nepal        NEPAL                          9                      0        0     396
6-24 months   GMS-Nepal        NEPAL                          9                      1        0     396
6-24 months   GMS-Nepal        NEPAL                          10                     0       42     396
6-24 months   GMS-Nepal        NEPAL                          10                     1       33     396
6-24 months   GMS-Nepal        NEPAL                          11                     0        0     396
6-24 months   GMS-Nepal        NEPAL                          11                     1        0     396
6-24 months   GMS-Nepal        NEPAL                          12                     0       16     396
6-24 months   GMS-Nepal        NEPAL                          12                     1       13     396
6-24 months   GMS-Nepal        NEPAL                          13                     0        0     396
6-24 months   GMS-Nepal        NEPAL                          13                     1        0     396
6-24 months   GMS-Nepal        NEPAL                          14                     0        0     396
6-24 months   GMS-Nepal        NEPAL                          14                     1        0     396
6-24 months   GMS-Nepal        NEPAL                          15                     0        0     396
6-24 months   GMS-Nepal        NEPAL                          15                     1        0     396
6-24 months   GMS-Nepal        NEPAL                          16                     0        0     396
6-24 months   GMS-Nepal        NEPAL                          16                     1        0     396
6-24 months   GMS-Nepal        NEPAL                          17                     0        0     396
6-24 months   GMS-Nepal        NEPAL                          17                     1        0     396
6-24 months   GMS-Nepal        NEPAL                          18                     0        0     396
6-24 months   GMS-Nepal        NEPAL                          18                     1        0     396
6-24 months   GMS-Nepal        NEPAL                          19                     0        0     396
6-24 months   GMS-Nepal        NEPAL                          19                     1        0     396
6-24 months   GMS-Nepal        NEPAL                          20                     0        0     396
6-24 months   GMS-Nepal        NEPAL                          20                     1        0     396
6-24 months   GMS-Nepal        NEPAL                          21                     0        0     396
6-24 months   GMS-Nepal        NEPAL                          21                     1        0     396
6-24 months   GMS-Nepal        NEPAL                          24                     0        0     396
6-24 months   GMS-Nepal        NEPAL                          24                     1        0     396
6-24 months   GMS-Nepal        NEPAL                          25                     0        0     396
6-24 months   GMS-Nepal        NEPAL                          25                     1        0     396
6-24 months   GMS-Nepal        NEPAL                          27                     0        0     396
6-24 months   GMS-Nepal        NEPAL                          27                     1        0     396
6-24 months   LCNI-5           MALAWI                         0                      0      105     707
6-24 months   LCNI-5           MALAWI                         0                      1      145     707
6-24 months   LCNI-5           MALAWI                         1                      0        3     707
6-24 months   LCNI-5           MALAWI                         1                      1        7     707
6-24 months   LCNI-5           MALAWI                         2                      0       11     707
6-24 months   LCNI-5           MALAWI                         2                      1       17     707
6-24 months   LCNI-5           MALAWI                         3                      0        9     707
6-24 months   LCNI-5           MALAWI                         3                      1       25     707
6-24 months   LCNI-5           MALAWI                         4                      0       21     707
6-24 months   LCNI-5           MALAWI                         4                      1       31     707
6-24 months   LCNI-5           MALAWI                         5                      0       23     707
6-24 months   LCNI-5           MALAWI                         5                      1       24     707
6-24 months   LCNI-5           MALAWI                         6                      0       26     707
6-24 months   LCNI-5           MALAWI                         6                      1       32     707
6-24 months   LCNI-5           MALAWI                         7                      0       15     707
6-24 months   LCNI-5           MALAWI                         7                      1       45     707
6-24 months   LCNI-5           MALAWI                         8                      0       27     707
6-24 months   LCNI-5           MALAWI                         8                      1       56     707
6-24 months   LCNI-5           MALAWI                         9                      0        8     707
6-24 months   LCNI-5           MALAWI                         9                      1        4     707
6-24 months   LCNI-5           MALAWI                         10                     0        6     707
6-24 months   LCNI-5           MALAWI                         10                     1       10     707
6-24 months   LCNI-5           MALAWI                         11                     0        3     707
6-24 months   LCNI-5           MALAWI                         11                     1        2     707
6-24 months   LCNI-5           MALAWI                         12                     0       27     707
6-24 months   LCNI-5           MALAWI                         12                     1       21     707
6-24 months   LCNI-5           MALAWI                         13                     0        0     707
6-24 months   LCNI-5           MALAWI                         13                     1        0     707
6-24 months   LCNI-5           MALAWI                         14                     0        0     707
6-24 months   LCNI-5           MALAWI                         14                     1        3     707
6-24 months   LCNI-5           MALAWI                         15                     0        0     707
6-24 months   LCNI-5           MALAWI                         15                     1        0     707
6-24 months   LCNI-5           MALAWI                         16                     0        0     707
6-24 months   LCNI-5           MALAWI                         16                     1        1     707
6-24 months   LCNI-5           MALAWI                         17                     0        0     707
6-24 months   LCNI-5           MALAWI                         17                     1        0     707
6-24 months   LCNI-5           MALAWI                         18                     0        0     707
6-24 months   LCNI-5           MALAWI                         18                     1        0     707
6-24 months   LCNI-5           MALAWI                         19                     0        0     707
6-24 months   LCNI-5           MALAWI                         19                     1        0     707
6-24 months   LCNI-5           MALAWI                         20                     0        0     707
6-24 months   LCNI-5           MALAWI                         20                     1        0     707
6-24 months   LCNI-5           MALAWI                         21                     0        0     707
6-24 months   LCNI-5           MALAWI                         21                     1        0     707
6-24 months   LCNI-5           MALAWI                         24                     0        0     707
6-24 months   LCNI-5           MALAWI                         24                     1        0     707
6-24 months   LCNI-5           MALAWI                         25                     0        0     707
6-24 months   LCNI-5           MALAWI                         25                     1        0     707
6-24 months   LCNI-5           MALAWI                         27                     0        0     707
6-24 months   LCNI-5           MALAWI                         27                     1        0     707
6-24 months   MAL-ED           BANGLADESH                     0                      0        0      88
6-24 months   MAL-ED           BANGLADESH                     0                      1        0      88
6-24 months   MAL-ED           BANGLADESH                     1                      0        3      88
6-24 months   MAL-ED           BANGLADESH                     1                      1        3      88
6-24 months   MAL-ED           BANGLADESH                     2                      0        5      88
6-24 months   MAL-ED           BANGLADESH                     2                      1        5      88
6-24 months   MAL-ED           BANGLADESH                     3                      0        3      88
6-24 months   MAL-ED           BANGLADESH                     3                      1        2      88
6-24 months   MAL-ED           BANGLADESH                     4                      0        2      88
6-24 months   MAL-ED           BANGLADESH                     4                      1        1      88
6-24 months   MAL-ED           BANGLADESH                     5                      0        9      88
6-24 months   MAL-ED           BANGLADESH                     5                      1        8      88
6-24 months   MAL-ED           BANGLADESH                     6                      0        4      88
6-24 months   MAL-ED           BANGLADESH                     6                      1        2      88
6-24 months   MAL-ED           BANGLADESH                     7                      0        4      88
6-24 months   MAL-ED           BANGLADESH                     7                      1        3      88
6-24 months   MAL-ED           BANGLADESH                     8                      0        9      88
6-24 months   MAL-ED           BANGLADESH                     8                      1        3      88
6-24 months   MAL-ED           BANGLADESH                     9                      0        3      88
6-24 months   MAL-ED           BANGLADESH                     9                      1        3      88
6-24 months   MAL-ED           BANGLADESH                     10                     0        6      88
6-24 months   MAL-ED           BANGLADESH                     10                     1        1      88
6-24 months   MAL-ED           BANGLADESH                     11                     0        0      88
6-24 months   MAL-ED           BANGLADESH                     11                     1        0      88
6-24 months   MAL-ED           BANGLADESH                     12                     0        6      88
6-24 months   MAL-ED           BANGLADESH                     12                     1        1      88
6-24 months   MAL-ED           BANGLADESH                     13                     0        0      88
6-24 months   MAL-ED           BANGLADESH                     13                     1        0      88
6-24 months   MAL-ED           BANGLADESH                     14                     0        0      88
6-24 months   MAL-ED           BANGLADESH                     14                     1        0      88
6-24 months   MAL-ED           BANGLADESH                     15                     0        0      88
6-24 months   MAL-ED           BANGLADESH                     15                     1        0      88
6-24 months   MAL-ED           BANGLADESH                     16                     0        2      88
6-24 months   MAL-ED           BANGLADESH                     16                     1        0      88
6-24 months   MAL-ED           BANGLADESH                     17                     0        0      88
6-24 months   MAL-ED           BANGLADESH                     17                     1        0      88
6-24 months   MAL-ED           BANGLADESH                     18                     0        0      88
6-24 months   MAL-ED           BANGLADESH                     18                     1        0      88
6-24 months   MAL-ED           BANGLADESH                     19                     0        0      88
6-24 months   MAL-ED           BANGLADESH                     19                     1        0      88
6-24 months   MAL-ED           BANGLADESH                     20                     0        0      88
6-24 months   MAL-ED           BANGLADESH                     20                     1        0      88
6-24 months   MAL-ED           BANGLADESH                     21                     0        0      88
6-24 months   MAL-ED           BANGLADESH                     21                     1        0      88
6-24 months   MAL-ED           BANGLADESH                     24                     0        0      88
6-24 months   MAL-ED           BANGLADESH                     24                     1        0      88
6-24 months   MAL-ED           BANGLADESH                     25                     0        0      88
6-24 months   MAL-ED           BANGLADESH                     25                     1        0      88
6-24 months   MAL-ED           BANGLADESH                     27                     0        0      88
6-24 months   MAL-ED           BANGLADESH                     27                     1        0      88
6-24 months   MAL-ED           INDIA                          0                      0        0      93
6-24 months   MAL-ED           INDIA                          0                      1        0      93
6-24 months   MAL-ED           INDIA                          1                      0        0      93
6-24 months   MAL-ED           INDIA                          1                      1        0      93
6-24 months   MAL-ED           INDIA                          2                      0        3      93
6-24 months   MAL-ED           INDIA                          2                      1        1      93
6-24 months   MAL-ED           INDIA                          3                      0        5      93
6-24 months   MAL-ED           INDIA                          3                      1        1      93
6-24 months   MAL-ED           INDIA                          4                      0        2      93
6-24 months   MAL-ED           INDIA                          4                      1        2      93
6-24 months   MAL-ED           INDIA                          5                      0       13      93
6-24 months   MAL-ED           INDIA                          5                      1        9      93
6-24 months   MAL-ED           INDIA                          6                      0        3      93
6-24 months   MAL-ED           INDIA                          6                      1        5      93
6-24 months   MAL-ED           INDIA                          7                      0        6      93
6-24 months   MAL-ED           INDIA                          7                      1        3      93
6-24 months   MAL-ED           INDIA                          8                      0        7      93
6-24 months   MAL-ED           INDIA                          8                      1        6      93
6-24 months   MAL-ED           INDIA                          9                      0        9      93
6-24 months   MAL-ED           INDIA                          9                      1        9      93
6-24 months   MAL-ED           INDIA                          10                     0        1      93
6-24 months   MAL-ED           INDIA                          10                     1        2      93
6-24 months   MAL-ED           INDIA                          11                     0        0      93
6-24 months   MAL-ED           INDIA                          11                     1        0      93
6-24 months   MAL-ED           INDIA                          12                     0        2      93
6-24 months   MAL-ED           INDIA                          12                     1        0      93
6-24 months   MAL-ED           INDIA                          13                     0        1      93
6-24 months   MAL-ED           INDIA                          13                     1        0      93
6-24 months   MAL-ED           INDIA                          14                     0        1      93
6-24 months   MAL-ED           INDIA                          14                     1        0      93
6-24 months   MAL-ED           INDIA                          15                     0        2      93
6-24 months   MAL-ED           INDIA                          15                     1        0      93
6-24 months   MAL-ED           INDIA                          16                     0        0      93
6-24 months   MAL-ED           INDIA                          16                     1        0      93
6-24 months   MAL-ED           INDIA                          17                     0        0      93
6-24 months   MAL-ED           INDIA                          17                     1        0      93
6-24 months   MAL-ED           INDIA                          18                     0        0      93
6-24 months   MAL-ED           INDIA                          18                     1        0      93
6-24 months   MAL-ED           INDIA                          19                     0        0      93
6-24 months   MAL-ED           INDIA                          19                     1        0      93
6-24 months   MAL-ED           INDIA                          20                     0        0      93
6-24 months   MAL-ED           INDIA                          20                     1        0      93
6-24 months   MAL-ED           INDIA                          21                     0        0      93
6-24 months   MAL-ED           INDIA                          21                     1        0      93
6-24 months   MAL-ED           INDIA                          24                     0        0      93
6-24 months   MAL-ED           INDIA                          24                     1        0      93
6-24 months   MAL-ED           INDIA                          25                     0        0      93
6-24 months   MAL-ED           INDIA                          25                     1        0      93
6-24 months   MAL-ED           INDIA                          27                     0        0      93
6-24 months   MAL-ED           INDIA                          27                     1        0      93
6-24 months   MAL-ED           NEPAL                          0                      0        0      78
6-24 months   MAL-ED           NEPAL                          0                      1        0      78
6-24 months   MAL-ED           NEPAL                          1                      0        0      78
6-24 months   MAL-ED           NEPAL                          1                      1        0      78
6-24 months   MAL-ED           NEPAL                          2                      0        2      78
6-24 months   MAL-ED           NEPAL                          2                      1        1      78
6-24 months   MAL-ED           NEPAL                          3                      0        1      78
6-24 months   MAL-ED           NEPAL                          3                      1        1      78
6-24 months   MAL-ED           NEPAL                          4                      0        5      78
6-24 months   MAL-ED           NEPAL                          4                      1        4      78
6-24 months   MAL-ED           NEPAL                          5                      0        6      78
6-24 months   MAL-ED           NEPAL                          5                      1        0      78
6-24 months   MAL-ED           NEPAL                          6                      0        2      78
6-24 months   MAL-ED           NEPAL                          6                      1        2      78
6-24 months   MAL-ED           NEPAL                          7                      0        5      78
6-24 months   MAL-ED           NEPAL                          7                      1        2      78
6-24 months   MAL-ED           NEPAL                          8                      0        5      78
6-24 months   MAL-ED           NEPAL                          8                      1        3      78
6-24 months   MAL-ED           NEPAL                          9                      0        5      78
6-24 months   MAL-ED           NEPAL                          9                      1        1      78
6-24 months   MAL-ED           NEPAL                          10                     0       16      78
6-24 months   MAL-ED           NEPAL                          10                     1        4      78
6-24 months   MAL-ED           NEPAL                          11                     0        1      78
6-24 months   MAL-ED           NEPAL                          11                     1        0      78
6-24 months   MAL-ED           NEPAL                          12                     0        6      78
6-24 months   MAL-ED           NEPAL                          12                     1        0      78
6-24 months   MAL-ED           NEPAL                          13                     0        0      78
6-24 months   MAL-ED           NEPAL                          13                     1        0      78
6-24 months   MAL-ED           NEPAL                          14                     0        0      78
6-24 months   MAL-ED           NEPAL                          14                     1        0      78
6-24 months   MAL-ED           NEPAL                          15                     0        1      78
6-24 months   MAL-ED           NEPAL                          15                     1        0      78
6-24 months   MAL-ED           NEPAL                          16                     0        1      78
6-24 months   MAL-ED           NEPAL                          16                     1        0      78
6-24 months   MAL-ED           NEPAL                          17                     0        3      78
6-24 months   MAL-ED           NEPAL                          17                     1        0      78
6-24 months   MAL-ED           NEPAL                          18                     0        1      78
6-24 months   MAL-ED           NEPAL                          18                     1        0      78
6-24 months   MAL-ED           NEPAL                          19                     0        0      78
6-24 months   MAL-ED           NEPAL                          19                     1        0      78
6-24 months   MAL-ED           NEPAL                          20                     0        0      78
6-24 months   MAL-ED           NEPAL                          20                     1        0      78
6-24 months   MAL-ED           NEPAL                          21                     0        0      78
6-24 months   MAL-ED           NEPAL                          21                     1        0      78
6-24 months   MAL-ED           NEPAL                          24                     0        0      78
6-24 months   MAL-ED           NEPAL                          24                     1        0      78
6-24 months   MAL-ED           NEPAL                          25                     0        0      78
6-24 months   MAL-ED           NEPAL                          25                     1        0      78
6-24 months   MAL-ED           NEPAL                          27                     0        0      78
6-24 months   MAL-ED           NEPAL                          27                     1        0      78
6-24 months   MAL-ED           PERU                           0                      0        0     121
6-24 months   MAL-ED           PERU                           0                      1        0     121
6-24 months   MAL-ED           PERU                           1                      0        0     121
6-24 months   MAL-ED           PERU                           1                      1        0     121
6-24 months   MAL-ED           PERU                           2                      0        0     121
6-24 months   MAL-ED           PERU                           2                      1        0     121
6-24 months   MAL-ED           PERU                           3                      0        3     121
6-24 months   MAL-ED           PERU                           3                      1        3     121
6-24 months   MAL-ED           PERU                           4                      0        1     121
6-24 months   MAL-ED           PERU                           4                      1        1     121
6-24 months   MAL-ED           PERU                           5                      0        0     121
6-24 months   MAL-ED           PERU                           5                      1        3     121
6-24 months   MAL-ED           PERU                           6                      0       10     121
6-24 months   MAL-ED           PERU                           6                      1        2     121
6-24 months   MAL-ED           PERU                           7                      0        6     121
6-24 months   MAL-ED           PERU                           7                      1        4     121
6-24 months   MAL-ED           PERU                           8                      0        6     121
6-24 months   MAL-ED           PERU                           8                      1        6     121
6-24 months   MAL-ED           PERU                           9                      0        8     121
6-24 months   MAL-ED           PERU                           9                      1        8     121
6-24 months   MAL-ED           PERU                           10                     0        4     121
6-24 months   MAL-ED           PERU                           10                     1        3     121
6-24 months   MAL-ED           PERU                           11                     0       25     121
6-24 months   MAL-ED           PERU                           11                     1       19     121
6-24 months   MAL-ED           PERU                           12                     0        0     121
6-24 months   MAL-ED           PERU                           12                     1        0     121
6-24 months   MAL-ED           PERU                           13                     0        2     121
6-24 months   MAL-ED           PERU                           13                     1        0     121
6-24 months   MAL-ED           PERU                           14                     0        1     121
6-24 months   MAL-ED           PERU                           14                     1        0     121
6-24 months   MAL-ED           PERU                           15                     0        1     121
6-24 months   MAL-ED           PERU                           15                     1        0     121
6-24 months   MAL-ED           PERU                           16                     0        0     121
6-24 months   MAL-ED           PERU                           16                     1        0     121
6-24 months   MAL-ED           PERU                           17                     0        0     121
6-24 months   MAL-ED           PERU                           17                     1        1     121
6-24 months   MAL-ED           PERU                           18                     0        2     121
6-24 months   MAL-ED           PERU                           18                     1        0     121
6-24 months   MAL-ED           PERU                           19                     0        0     121
6-24 months   MAL-ED           PERU                           19                     1        0     121
6-24 months   MAL-ED           PERU                           20                     0        2     121
6-24 months   MAL-ED           PERU                           20                     1        0     121
6-24 months   MAL-ED           PERU                           21                     0        0     121
6-24 months   MAL-ED           PERU                           21                     1        0     121
6-24 months   MAL-ED           PERU                           24                     0        0     121
6-24 months   MAL-ED           PERU                           24                     1        0     121
6-24 months   MAL-ED           PERU                           25                     0        0     121
6-24 months   MAL-ED           PERU                           25                     1        0     121
6-24 months   MAL-ED           PERU                           27                     0        0     121
6-24 months   MAL-ED           PERU                           27                     1        0     121
6-24 months   MAL-ED           SOUTH AFRICA                   0                      0        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   0                      1        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   1                      0        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   1                      1        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   2                      0        1      58
6-24 months   MAL-ED           SOUTH AFRICA                   2                      1        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   3                      0        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   3                      1        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   4                      0        1      58
6-24 months   MAL-ED           SOUTH AFRICA                   4                      1        1      58
6-24 months   MAL-ED           SOUTH AFRICA                   5                      0        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   5                      1        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   6                      0        5      58
6-24 months   MAL-ED           SOUTH AFRICA                   6                      1        1      58
6-24 months   MAL-ED           SOUTH AFRICA                   7                      0        4      58
6-24 months   MAL-ED           SOUTH AFRICA                   7                      1        2      58
6-24 months   MAL-ED           SOUTH AFRICA                   8                      0        4      58
6-24 months   MAL-ED           SOUTH AFRICA                   8                      1        5      58
6-24 months   MAL-ED           SOUTH AFRICA                   9                      0        2      58
6-24 months   MAL-ED           SOUTH AFRICA                   9                      1        1      58
6-24 months   MAL-ED           SOUTH AFRICA                   10                     0        3      58
6-24 months   MAL-ED           SOUTH AFRICA                   10                     1        3      58
6-24 months   MAL-ED           SOUTH AFRICA                   11                     0        3      58
6-24 months   MAL-ED           SOUTH AFRICA                   11                     1        3      58
6-24 months   MAL-ED           SOUTH AFRICA                   12                     0        8      58
6-24 months   MAL-ED           SOUTH AFRICA                   12                     1        8      58
6-24 months   MAL-ED           SOUTH AFRICA                   13                     0        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   13                     1        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   14                     0        1      58
6-24 months   MAL-ED           SOUTH AFRICA                   14                     1        1      58
6-24 months   MAL-ED           SOUTH AFRICA                   15                     0        1      58
6-24 months   MAL-ED           SOUTH AFRICA                   15                     1        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   16                     0        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   16                     1        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   17                     0        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   17                     1        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   18                     0        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   18                     1        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   19                     0        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   19                     1        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   20                     0        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   20                     1        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   21                     0        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   21                     1        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   24                     0        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   24                     1        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   25                     0        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   25                     1        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   27                     0        0      58
6-24 months   MAL-ED           SOUTH AFRICA                   27                     1        0      58
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        3     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        7     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                      0        1     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                      1        4     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                      0        1     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                      1       11     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                      0        2     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                      1        4     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                      0        1     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                      1        3     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                      0        2     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                      1        4     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                      0       16     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                      1       55     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                      0        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                      1        1     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                      0        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                      1        1     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                     0        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                     1        3     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                     0        1     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                     1        1     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                     0        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                     1        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                     0        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                     1        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                     0        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                     1        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                     0        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                     1        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                     0        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                     1        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                     0        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                     1        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                     0        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                     1        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                     0        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                     1        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                     0        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                     1        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                     0        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   21                     1        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                     0        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                     1        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                     0        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                     1        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                     0        0     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                     1        0     121
6-24 months   NIH-Crypto       BANGLADESH                     0                      0       70     506
6-24 months   NIH-Crypto       BANGLADESH                     0                      1       37     506
6-24 months   NIH-Crypto       BANGLADESH                     1                      0        9     506
6-24 months   NIH-Crypto       BANGLADESH                     1                      1        5     506
6-24 months   NIH-Crypto       BANGLADESH                     2                      0        6     506
6-24 months   NIH-Crypto       BANGLADESH                     2                      1        6     506
6-24 months   NIH-Crypto       BANGLADESH                     3                      0       16     506
6-24 months   NIH-Crypto       BANGLADESH                     3                      1        7     506
6-24 months   NIH-Crypto       BANGLADESH                     4                      0       12     506
6-24 months   NIH-Crypto       BANGLADESH                     4                      1       10     506
6-24 months   NIH-Crypto       BANGLADESH                     5                      0       32     506
6-24 months   NIH-Crypto       BANGLADESH                     5                      1       23     506
6-24 months   NIH-Crypto       BANGLADESH                     6                      0       17     506
6-24 months   NIH-Crypto       BANGLADESH                     6                      1        3     506
6-24 months   NIH-Crypto       BANGLADESH                     7                      0       28     506
6-24 months   NIH-Crypto       BANGLADESH                     7                      1        8     506
6-24 months   NIH-Crypto       BANGLADESH                     8                      0       53     506
6-24 months   NIH-Crypto       BANGLADESH                     8                      1       11     506
6-24 months   NIH-Crypto       BANGLADESH                     9                      0       51     506
6-24 months   NIH-Crypto       BANGLADESH                     9                      1        6     506
6-24 months   NIH-Crypto       BANGLADESH                     10                     0       32     506
6-24 months   NIH-Crypto       BANGLADESH                     10                     1       10     506
6-24 months   NIH-Crypto       BANGLADESH                     11                     0        0     506
6-24 months   NIH-Crypto       BANGLADESH                     11                     1        0     506
6-24 months   NIH-Crypto       BANGLADESH                     12                     0       23     506
6-24 months   NIH-Crypto       BANGLADESH                     12                     1        4     506
6-24 months   NIH-Crypto       BANGLADESH                     13                     0        0     506
6-24 months   NIH-Crypto       BANGLADESH                     13                     1        0     506
6-24 months   NIH-Crypto       BANGLADESH                     14                     0        8     506
6-24 months   NIH-Crypto       BANGLADESH                     14                     1        0     506
6-24 months   NIH-Crypto       BANGLADESH                     15                     0       10     506
6-24 months   NIH-Crypto       BANGLADESH                     15                     1        3     506
6-24 months   NIH-Crypto       BANGLADESH                     16                     0        0     506
6-24 months   NIH-Crypto       BANGLADESH                     16                     1        0     506
6-24 months   NIH-Crypto       BANGLADESH                     17                     0        6     506
6-24 months   NIH-Crypto       BANGLADESH                     17                     1        0     506
6-24 months   NIH-Crypto       BANGLADESH                     18                     0        0     506
6-24 months   NIH-Crypto       BANGLADESH                     18                     1        0     506
6-24 months   NIH-Crypto       BANGLADESH                     19                     0        0     506
6-24 months   NIH-Crypto       BANGLADESH                     19                     1        0     506
6-24 months   NIH-Crypto       BANGLADESH                     20                     0        0     506
6-24 months   NIH-Crypto       BANGLADESH                     20                     1        0     506
6-24 months   NIH-Crypto       BANGLADESH                     21                     0        0     506
6-24 months   NIH-Crypto       BANGLADESH                     21                     1        0     506
6-24 months   NIH-Crypto       BANGLADESH                     24                     0        0     506
6-24 months   NIH-Crypto       BANGLADESH                     24                     1        0     506
6-24 months   NIH-Crypto       BANGLADESH                     25                     0        0     506
6-24 months   NIH-Crypto       BANGLADESH                     25                     1        0     506
6-24 months   NIH-Crypto       BANGLADESH                     27                     0        0     506
6-24 months   NIH-Crypto       BANGLADESH                     27                     1        0     506
6-24 months   PROBIT           BELARUS                        0                      0        0   14975
6-24 months   PROBIT           BELARUS                        0                      1        0   14975
6-24 months   PROBIT           BELARUS                        1                      0        0   14975
6-24 months   PROBIT           BELARUS                        1                      1        0   14975
6-24 months   PROBIT           BELARUS                        2                      0        0   14975
6-24 months   PROBIT           BELARUS                        2                      1        0   14975
6-24 months   PROBIT           BELARUS                        3                      0        0   14975
6-24 months   PROBIT           BELARUS                        3                      1        0   14975
6-24 months   PROBIT           BELARUS                        4                      0        0   14975
6-24 months   PROBIT           BELARUS                        4                      1        0   14975
6-24 months   PROBIT           BELARUS                        5                      0        0   14975
6-24 months   PROBIT           BELARUS                        5                      1        0   14975
6-24 months   PROBIT           BELARUS                        6                      0        0   14975
6-24 months   PROBIT           BELARUS                        6                      1        0   14975
6-24 months   PROBIT           BELARUS                        7                      0        0   14975
6-24 months   PROBIT           BELARUS                        7                      1        0   14975
6-24 months   PROBIT           BELARUS                        8                      0       20   14975
6-24 months   PROBIT           BELARUS                        8                      1        2   14975
6-24 months   PROBIT           BELARUS                        9                      0        0   14975
6-24 months   PROBIT           BELARUS                        9                      1        0   14975
6-24 months   PROBIT           BELARUS                        10                     0      304   14975
6-24 months   PROBIT           BELARUS                        10                     1       28   14975
6-24 months   PROBIT           BELARUS                        11                     0        0   14975
6-24 months   PROBIT           BELARUS                        11                     1        0   14975
6-24 months   PROBIT           BELARUS                        12                     0     5068   14975
6-24 months   PROBIT           BELARUS                        12                     1      399   14975
6-24 months   PROBIT           BELARUS                        13                     0     6236   14975
6-24 months   PROBIT           BELARUS                        13                     1      415   14975
6-24 months   PROBIT           BELARUS                        14                     0      390   14975
6-24 months   PROBIT           BELARUS                        14                     1       15   14975
6-24 months   PROBIT           BELARUS                        15                     0        0   14975
6-24 months   PROBIT           BELARUS                        15                     1        0   14975
6-24 months   PROBIT           BELARUS                        16                     0     2000   14975
6-24 months   PROBIT           BELARUS                        16                     1       98   14975
6-24 months   PROBIT           BELARUS                        17                     0        0   14975
6-24 months   PROBIT           BELARUS                        17                     1        0   14975
6-24 months   PROBIT           BELARUS                        18                     0        0   14975
6-24 months   PROBIT           BELARUS                        18                     1        0   14975
6-24 months   PROBIT           BELARUS                        19                     0        0   14975
6-24 months   PROBIT           BELARUS                        19                     1        0   14975
6-24 months   PROBIT           BELARUS                        20                     0        0   14975
6-24 months   PROBIT           BELARUS                        20                     1        0   14975
6-24 months   PROBIT           BELARUS                        21                     0        0   14975
6-24 months   PROBIT           BELARUS                        21                     1        0   14975
6-24 months   PROBIT           BELARUS                        24                     0        0   14975
6-24 months   PROBIT           BELARUS                        24                     1        0   14975
6-24 months   PROBIT           BELARUS                        25                     0        0   14975
6-24 months   PROBIT           BELARUS                        25                     1        0   14975
6-24 months   PROBIT           BELARUS                        27                     0        0   14975
6-24 months   PROBIT           BELARUS                        27                     1        0   14975
6-24 months   PROVIDE          BANGLADESH                     0                      0       72     456
6-24 months   PROVIDE          BANGLADESH                     0                      1       46     456
6-24 months   PROVIDE          BANGLADESH                     1                      0       10     456
6-24 months   PROVIDE          BANGLADESH                     1                      1        1     456
6-24 months   PROVIDE          BANGLADESH                     2                      0        6     456
6-24 months   PROVIDE          BANGLADESH                     2                      1        4     456
6-24 months   PROVIDE          BANGLADESH                     3                      0       14     456
6-24 months   PROVIDE          BANGLADESH                     3                      1        5     456
6-24 months   PROVIDE          BANGLADESH                     4                      0       19     456
6-24 months   PROVIDE          BANGLADESH                     4                      1        8     456
6-24 months   PROVIDE          BANGLADESH                     5                      0       35     456
6-24 months   PROVIDE          BANGLADESH                     5                      1       17     456
6-24 months   PROVIDE          BANGLADESH                     6                      0        9     456
6-24 months   PROVIDE          BANGLADESH                     6                      1       11     456
6-24 months   PROVIDE          BANGLADESH                     7                      0       19     456
6-24 months   PROVIDE          BANGLADESH                     7                      1        7     456
6-24 months   PROVIDE          BANGLADESH                     8                      0       34     456
6-24 months   PROVIDE          BANGLADESH                     8                      1       13     456
6-24 months   PROVIDE          BANGLADESH                     9                      0       34     456
6-24 months   PROVIDE          BANGLADESH                     9                      1       11     456
6-24 months   PROVIDE          BANGLADESH                     10                     0       25     456
6-24 months   PROVIDE          BANGLADESH                     10                     1        4     456
6-24 months   PROVIDE          BANGLADESH                     11                     0       15     456
6-24 months   PROVIDE          BANGLADESH                     11                     1        5     456
6-24 months   PROVIDE          BANGLADESH                     12                     0        2     456
6-24 months   PROVIDE          BANGLADESH                     12                     1        0     456
6-24 months   PROVIDE          BANGLADESH                     13                     0        0     456
6-24 months   PROVIDE          BANGLADESH                     13                     1        0     456
6-24 months   PROVIDE          BANGLADESH                     14                     0       12     456
6-24 months   PROVIDE          BANGLADESH                     14                     1        4     456
6-24 months   PROVIDE          BANGLADESH                     15                     0        8     456
6-24 months   PROVIDE          BANGLADESH                     15                     1        0     456
6-24 months   PROVIDE          BANGLADESH                     16                     0        5     456
6-24 months   PROVIDE          BANGLADESH                     16                     1        1     456
6-24 months   PROVIDE          BANGLADESH                     17                     0        0     456
6-24 months   PROVIDE          BANGLADESH                     17                     1        0     456
6-24 months   PROVIDE          BANGLADESH                     18                     0        0     456
6-24 months   PROVIDE          BANGLADESH                     18                     1        0     456
6-24 months   PROVIDE          BANGLADESH                     19                     0        0     456
6-24 months   PROVIDE          BANGLADESH                     19                     1        0     456
6-24 months   PROVIDE          BANGLADESH                     20                     0        0     456
6-24 months   PROVIDE          BANGLADESH                     20                     1        0     456
6-24 months   PROVIDE          BANGLADESH                     21                     0        0     456
6-24 months   PROVIDE          BANGLADESH                     21                     1        0     456
6-24 months   PROVIDE          BANGLADESH                     24                     0        0     456
6-24 months   PROVIDE          BANGLADESH                     24                     1        0     456
6-24 months   PROVIDE          BANGLADESH                     25                     0        0     456
6-24 months   PROVIDE          BANGLADESH                     25                     1        0     456
6-24 months   PROVIDE          BANGLADESH                     27                     0        0     456
6-24 months   PROVIDE          BANGLADESH                     27                     1        0     456
6-24 months   SAS-CompFeed     INDIA                          0                      0       26     812
6-24 months   SAS-CompFeed     INDIA                          0                      1       51     812
6-24 months   SAS-CompFeed     INDIA                          1                      0        0     812
6-24 months   SAS-CompFeed     INDIA                          1                      1        0     812
6-24 months   SAS-CompFeed     INDIA                          2                      0        0     812
6-24 months   SAS-CompFeed     INDIA                          2                      1        3     812
6-24 months   SAS-CompFeed     INDIA                          3                      0        1     812
6-24 months   SAS-CompFeed     INDIA                          3                      1        5     812
6-24 months   SAS-CompFeed     INDIA                          4                      0        4     812
6-24 months   SAS-CompFeed     INDIA                          4                      1        7     812
6-24 months   SAS-CompFeed     INDIA                          5                      0       24     812
6-24 months   SAS-CompFeed     INDIA                          5                      1       18     812
6-24 months   SAS-CompFeed     INDIA                          6                      0        6     812
6-24 months   SAS-CompFeed     INDIA                          6                      1        8     812
6-24 months   SAS-CompFeed     INDIA                          7                      0       20     812
6-24 months   SAS-CompFeed     INDIA                          7                      1       38     812
6-24 months   SAS-CompFeed     INDIA                          8                      0       40     812
6-24 months   SAS-CompFeed     INDIA                          8                      1       43     812
6-24 months   SAS-CompFeed     INDIA                          9                      0       24     812
6-24 months   SAS-CompFeed     INDIA                          9                      1       29     812
6-24 months   SAS-CompFeed     INDIA                          10                     0      110     812
6-24 months   SAS-CompFeed     INDIA                          10                     1      110     812
6-24 months   SAS-CompFeed     INDIA                          11                     0       17     812
6-24 months   SAS-CompFeed     INDIA                          11                     1        7     812
6-24 months   SAS-CompFeed     INDIA                          12                     0       81     812
6-24 months   SAS-CompFeed     INDIA                          12                     1       61     812
6-24 months   SAS-CompFeed     INDIA                          13                     0        1     812
6-24 months   SAS-CompFeed     INDIA                          13                     1        4     812
6-24 months   SAS-CompFeed     INDIA                          14                     0        7     812
6-24 months   SAS-CompFeed     INDIA                          14                     1        5     812
6-24 months   SAS-CompFeed     INDIA                          15                     0       26     812
6-24 months   SAS-CompFeed     INDIA                          15                     1       13     812
6-24 months   SAS-CompFeed     INDIA                          16                     0        5     812
6-24 months   SAS-CompFeed     INDIA                          16                     1        1     812
6-24 months   SAS-CompFeed     INDIA                          17                     0        7     812
6-24 months   SAS-CompFeed     INDIA                          17                     1        5     812
6-24 months   SAS-CompFeed     INDIA                          18                     0        3     812
6-24 months   SAS-CompFeed     INDIA                          18                     1        0     812
6-24 months   SAS-CompFeed     INDIA                          19                     0        1     812
6-24 months   SAS-CompFeed     INDIA                          19                     1        0     812
6-24 months   SAS-CompFeed     INDIA                          20                     0        1     812
6-24 months   SAS-CompFeed     INDIA                          20                     1        0     812
6-24 months   SAS-CompFeed     INDIA                          21                     0        0     812
6-24 months   SAS-CompFeed     INDIA                          21                     1        0     812
6-24 months   SAS-CompFeed     INDIA                          24                     0        0     812
6-24 months   SAS-CompFeed     INDIA                          24                     1        0     812
6-24 months   SAS-CompFeed     INDIA                          25                     0        0     812
6-24 months   SAS-CompFeed     INDIA                          25                     1        0     812
6-24 months   SAS-CompFeed     INDIA                          27                     0        0     812
6-24 months   SAS-CompFeed     INDIA                          27                     1        0     812
6-24 months   SAS-FoodSuppl    INDIA                          0                      0       20     243
6-24 months   SAS-FoodSuppl    INDIA                          0                      1       63     243
6-24 months   SAS-FoodSuppl    INDIA                          1                      0        0     243
6-24 months   SAS-FoodSuppl    INDIA                          1                      1        1     243
6-24 months   SAS-FoodSuppl    INDIA                          2                      0        1     243
6-24 months   SAS-FoodSuppl    INDIA                          2                      1        6     243
6-24 months   SAS-FoodSuppl    INDIA                          3                      0        1     243
6-24 months   SAS-FoodSuppl    INDIA                          3                      1        4     243
6-24 months   SAS-FoodSuppl    INDIA                          4                      0        1     243
6-24 months   SAS-FoodSuppl    INDIA                          4                      1        3     243
6-24 months   SAS-FoodSuppl    INDIA                          5                      0        8     243
6-24 months   SAS-FoodSuppl    INDIA                          5                      1       22     243
6-24 months   SAS-FoodSuppl    INDIA                          6                      0        4     243
6-24 months   SAS-FoodSuppl    INDIA                          6                      1        3     243
6-24 months   SAS-FoodSuppl    INDIA                          7                      0        1     243
6-24 months   SAS-FoodSuppl    INDIA                          7                      1        9     243
6-24 months   SAS-FoodSuppl    INDIA                          8                      0        4     243
6-24 months   SAS-FoodSuppl    INDIA                          8                      1       24     243
6-24 months   SAS-FoodSuppl    INDIA                          9                      0        1     243
6-24 months   SAS-FoodSuppl    INDIA                          9                      1       17     243
6-24 months   SAS-FoodSuppl    INDIA                          10                     0       11     243
6-24 months   SAS-FoodSuppl    INDIA                          10                     1       23     243
6-24 months   SAS-FoodSuppl    INDIA                          11                     0        1     243
6-24 months   SAS-FoodSuppl    INDIA                          11                     1        1     243
6-24 months   SAS-FoodSuppl    INDIA                          12                     0        2     243
6-24 months   SAS-FoodSuppl    INDIA                          12                     1        5     243
6-24 months   SAS-FoodSuppl    INDIA                          13                     0        1     243
6-24 months   SAS-FoodSuppl    INDIA                          13                     1        0     243
6-24 months   SAS-FoodSuppl    INDIA                          14                     0        2     243
6-24 months   SAS-FoodSuppl    INDIA                          14                     1        2     243
6-24 months   SAS-FoodSuppl    INDIA                          15                     0        1     243
6-24 months   SAS-FoodSuppl    INDIA                          15                     1        1     243
6-24 months   SAS-FoodSuppl    INDIA                          16                     0        0     243
6-24 months   SAS-FoodSuppl    INDIA                          16                     1        0     243
6-24 months   SAS-FoodSuppl    INDIA                          17                     0        0     243
6-24 months   SAS-FoodSuppl    INDIA                          17                     1        0     243
6-24 months   SAS-FoodSuppl    INDIA                          18                     0        0     243
6-24 months   SAS-FoodSuppl    INDIA                          18                     1        0     243
6-24 months   SAS-FoodSuppl    INDIA                          19                     0        0     243
6-24 months   SAS-FoodSuppl    INDIA                          19                     1        0     243
6-24 months   SAS-FoodSuppl    INDIA                          20                     0        0     243
6-24 months   SAS-FoodSuppl    INDIA                          20                     1        0     243
6-24 months   SAS-FoodSuppl    INDIA                          21                     0        0     243
6-24 months   SAS-FoodSuppl    INDIA                          21                     1        0     243
6-24 months   SAS-FoodSuppl    INDIA                          24                     0        0     243
6-24 months   SAS-FoodSuppl    INDIA                          24                     1        0     243
6-24 months   SAS-FoodSuppl    INDIA                          25                     0        0     243
6-24 months   SAS-FoodSuppl    INDIA                          25                     1        0     243
6-24 months   SAS-FoodSuppl    INDIA                          27                     0        0     243
6-24 months   SAS-FoodSuppl    INDIA                          27                     1        0     243
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      0        3    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      1        1    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0        0    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1        0    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0        0    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1        0    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      0        0    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      1        0    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      0        4    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      1        0    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      0        0    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      1        0    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      0        1    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      1        0    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      0      632    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      1      190    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      0        5    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      1        0    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      0       31    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      1        7    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     0       14    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     1        5    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     0      306    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     1       83    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     0       11    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     1        2    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                     0       67    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                     1       20    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                     0        9    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                     1        2    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                     0       10    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                     1        7    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                     0       16    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                     1        5    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                     0       11    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                     1        3    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                     0        2    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                     1        1    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                     0        0    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                     1        0    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                     0        0    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                     1        0    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                     0        0    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   21                     1        0    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                     0        7    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                     1        6    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                     0        0    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                     1        0    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                     0      105    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                     1       29    1595
6-24 months   ZVITAMBO         ZIMBABWE                       0                      0       23    8280
6-24 months   ZVITAMBO         ZIMBABWE                       0                      1       14    8280
6-24 months   ZVITAMBO         ZIMBABWE                       1                      0        1    8280
6-24 months   ZVITAMBO         ZIMBABWE                       1                      1        0    8280
6-24 months   ZVITAMBO         ZIMBABWE                       2                      0        3    8280
6-24 months   ZVITAMBO         ZIMBABWE                       2                      1        1    8280
6-24 months   ZVITAMBO         ZIMBABWE                       3                      0        5    8280
6-24 months   ZVITAMBO         ZIMBABWE                       3                      1        3    8280
6-24 months   ZVITAMBO         ZIMBABWE                       4                      0        7    8280
6-24 months   ZVITAMBO         ZIMBABWE                       4                      1        6    8280
6-24 months   ZVITAMBO         ZIMBABWE                       5                      0       15    8280
6-24 months   ZVITAMBO         ZIMBABWE                       5                      1        4    8280
6-24 months   ZVITAMBO         ZIMBABWE                       6                      0       16    8280
6-24 months   ZVITAMBO         ZIMBABWE                       6                      1        7    8280
6-24 months   ZVITAMBO         ZIMBABWE                       7                      0      336    8280
6-24 months   ZVITAMBO         ZIMBABWE                       7                      1      137    8280
6-24 months   ZVITAMBO         ZIMBABWE                       8                      0       53    8280
6-24 months   ZVITAMBO         ZIMBABWE                       8                      1       24    8280
6-24 months   ZVITAMBO         ZIMBABWE                       9                      0      367    8280
6-24 months   ZVITAMBO         ZIMBABWE                       9                      1      158    8280
6-24 months   ZVITAMBO         ZIMBABWE                       10                     0      122    8280
6-24 months   ZVITAMBO         ZIMBABWE                       10                     1       71    8280
6-24 months   ZVITAMBO         ZIMBABWE                       11                     0     4695    8280
6-24 months   ZVITAMBO         ZIMBABWE                       11                     1     1600    8280
6-24 months   ZVITAMBO         ZIMBABWE                       12                     0       27    8280
6-24 months   ZVITAMBO         ZIMBABWE                       12                     1        9    8280
6-24 months   ZVITAMBO         ZIMBABWE                       13                     0      456    8280
6-24 months   ZVITAMBO         ZIMBABWE                       13                     1      120    8280
6-24 months   ZVITAMBO         ZIMBABWE                       14                     0        0    8280
6-24 months   ZVITAMBO         ZIMBABWE                       14                     1        0    8280
6-24 months   ZVITAMBO         ZIMBABWE                       15                     0        0    8280
6-24 months   ZVITAMBO         ZIMBABWE                       15                     1        0    8280
6-24 months   ZVITAMBO         ZIMBABWE                       16                     0        0    8280
6-24 months   ZVITAMBO         ZIMBABWE                       16                     1        0    8280
6-24 months   ZVITAMBO         ZIMBABWE                       17                     0        0    8280
6-24 months   ZVITAMBO         ZIMBABWE                       17                     1        0    8280
6-24 months   ZVITAMBO         ZIMBABWE                       18                     0        0    8280
6-24 months   ZVITAMBO         ZIMBABWE                       18                     1        0    8280
6-24 months   ZVITAMBO         ZIMBABWE                       19                     0        0    8280
6-24 months   ZVITAMBO         ZIMBABWE                       19                     1        0    8280
6-24 months   ZVITAMBO         ZIMBABWE                       20                     0        0    8280
6-24 months   ZVITAMBO         ZIMBABWE                       20                     1        0    8280
6-24 months   ZVITAMBO         ZIMBABWE                       21                     0        0    8280
6-24 months   ZVITAMBO         ZIMBABWE                       21                     1        0    8280
6-24 months   ZVITAMBO         ZIMBABWE                       24                     0        0    8280
6-24 months   ZVITAMBO         ZIMBABWE                       24                     1        0    8280
6-24 months   ZVITAMBO         ZIMBABWE                       25                     0        0    8280
6-24 months   ZVITAMBO         ZIMBABWE                       25                     1        0    8280
6-24 months   ZVITAMBO         ZIMBABWE                       27                     0        0    8280
6-24 months   ZVITAMBO         ZIMBABWE                       27                     1        0    8280


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
















