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

**Outcome Variable:** wast_rec90d

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

agecat        studyid          country                        feducyrs    wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  ---------  ------------  -------  -----
0-24 months   COHORTS          GUATEMALA                      0                     0       88    358
0-24 months   COHORTS          GUATEMALA                      0                     1       71    358
0-24 months   COHORTS          GUATEMALA                      1                     0       16    358
0-24 months   COHORTS          GUATEMALA                      1                     1        4    358
0-24 months   COHORTS          GUATEMALA                      2                     0       35    358
0-24 months   COHORTS          GUATEMALA                      2                     1       27    358
0-24 months   COHORTS          GUATEMALA                      3                     0       23    358
0-24 months   COHORTS          GUATEMALA                      3                     1       19    358
0-24 months   COHORTS          GUATEMALA                      4                     0       20    358
0-24 months   COHORTS          GUATEMALA                      4                     1        9    358
0-24 months   COHORTS          GUATEMALA                      5                     0        3    358
0-24 months   COHORTS          GUATEMALA                      5                     1        6    358
0-24 months   COHORTS          GUATEMALA                      6                     0       14    358
0-24 months   COHORTS          GUATEMALA                      6                     1       21    358
0-24 months   COHORTS          GUATEMALA                      7                     0        0    358
0-24 months   COHORTS          GUATEMALA                      7                     1        1    358
0-24 months   COHORTS          GUATEMALA                      8                     0        0    358
0-24 months   COHORTS          GUATEMALA                      8                     1        1    358
0-24 months   COHORTS          GUATEMALA                      9                     0        0    358
0-24 months   COHORTS          GUATEMALA                      9                     1        0    358
0-24 months   COHORTS          GUATEMALA                      10                    0        0    358
0-24 months   COHORTS          GUATEMALA                      10                    1        0    358
0-24 months   COHORTS          GUATEMALA                      11                    0        0    358
0-24 months   COHORTS          GUATEMALA                      11                    1        0    358
0-24 months   COHORTS          GUATEMALA                      12                    0        0    358
0-24 months   COHORTS          GUATEMALA                      12                    1        0    358
0-24 months   COHORTS          GUATEMALA                      13                    0        0    358
0-24 months   COHORTS          GUATEMALA                      13                    1        0    358
0-24 months   COHORTS          GUATEMALA                      14                    0        0    358
0-24 months   COHORTS          GUATEMALA                      14                    1        0    358
0-24 months   COHORTS          GUATEMALA                      15                    0        0    358
0-24 months   COHORTS          GUATEMALA                      15                    1        0    358
0-24 months   COHORTS          GUATEMALA                      16                    0        0    358
0-24 months   COHORTS          GUATEMALA                      16                    1        0    358
0-24 months   COHORTS          GUATEMALA                      17                    0        0    358
0-24 months   COHORTS          GUATEMALA                      17                    1        0    358
0-24 months   COHORTS          GUATEMALA                      18                    0        0    358
0-24 months   COHORTS          GUATEMALA                      18                    1        0    358
0-24 months   COHORTS          GUATEMALA                      19                    0        0    358
0-24 months   COHORTS          GUATEMALA                      19                    1        0    358
0-24 months   COHORTS          GUATEMALA                      24                    0        0    358
0-24 months   COHORTS          GUATEMALA                      24                    1        0    358
0-24 months   COHORTS          GUATEMALA                      27                    0        0    358
0-24 months   COHORTS          GUATEMALA                      27                    1        0    358
0-24 months   COHORTS          INDIA                          0                     0       50    539
0-24 months   COHORTS          INDIA                          0                     1        7    539
0-24 months   COHORTS          INDIA                          1                     0        0    539
0-24 months   COHORTS          INDIA                          1                     1        0    539
0-24 months   COHORTS          INDIA                          2                     0        0    539
0-24 months   COHORTS          INDIA                          2                     1        0    539
0-24 months   COHORTS          INDIA                          3                     0       38    539
0-24 months   COHORTS          INDIA                          3                     1       12    539
0-24 months   COHORTS          INDIA                          4                     0        0    539
0-24 months   COHORTS          INDIA                          4                     1        0    539
0-24 months   COHORTS          INDIA                          5                     0        0    539
0-24 months   COHORTS          INDIA                          5                     1        0    539
0-24 months   COHORTS          INDIA                          6                     0        0    539
0-24 months   COHORTS          INDIA                          6                     1        0    539
0-24 months   COHORTS          INDIA                          7                     0        0    539
0-24 months   COHORTS          INDIA                          7                     1        0    539
0-24 months   COHORTS          INDIA                          8                     0       64    539
0-24 months   COHORTS          INDIA                          8                     1       15    539
0-24 months   COHORTS          INDIA                          9                     0        0    539
0-24 months   COHORTS          INDIA                          9                     1        0    539
0-24 months   COHORTS          INDIA                          10                    0        0    539
0-24 months   COHORTS          INDIA                          10                    1        0    539
0-24 months   COHORTS          INDIA                          11                    0        0    539
0-24 months   COHORTS          INDIA                          11                    1        0    539
0-24 months   COHORTS          INDIA                          12                    0      106    539
0-24 months   COHORTS          INDIA                          12                    1       54    539
0-24 months   COHORTS          INDIA                          13                    0        0    539
0-24 months   COHORTS          INDIA                          13                    1        0    539
0-24 months   COHORTS          INDIA                          14                    0       40    539
0-24 months   COHORTS          INDIA                          14                    1       13    539
0-24 months   COHORTS          INDIA                          15                    0       75    539
0-24 months   COHORTS          INDIA                          15                    1       25    539
0-24 months   COHORTS          INDIA                          16                    0        0    539
0-24 months   COHORTS          INDIA                          16                    1        0    539
0-24 months   COHORTS          INDIA                          17                    0       28    539
0-24 months   COHORTS          INDIA                          17                    1       12    539
0-24 months   COHORTS          INDIA                          18                    0        0    539
0-24 months   COHORTS          INDIA                          18                    1        0    539
0-24 months   COHORTS          INDIA                          19                    0        0    539
0-24 months   COHORTS          INDIA                          19                    1        0    539
0-24 months   COHORTS          INDIA                          24                    0        0    539
0-24 months   COHORTS          INDIA                          24                    1        0    539
0-24 months   COHORTS          INDIA                          27                    0        0    539
0-24 months   COHORTS          INDIA                          27                    1        0    539
0-24 months   COHORTS          PHILIPPINES                    0                     0       22   1574
0-24 months   COHORTS          PHILIPPINES                    0                     1       24   1574
0-24 months   COHORTS          PHILIPPINES                    1                     0       13   1574
0-24 months   COHORTS          PHILIPPINES                    1                     1       15   1574
0-24 months   COHORTS          PHILIPPINES                    2                     0       26   1574
0-24 months   COHORTS          PHILIPPINES                    2                     1       42   1574
0-24 months   COHORTS          PHILIPPINES                    3                     0       43   1574
0-24 months   COHORTS          PHILIPPINES                    3                     1       49   1574
0-24 months   COHORTS          PHILIPPINES                    4                     0       63   1574
0-24 months   COHORTS          PHILIPPINES                    4                     1       84   1574
0-24 months   COHORTS          PHILIPPINES                    5                     0       47   1574
0-24 months   COHORTS          PHILIPPINES                    5                     1       67   1574
0-24 months   COHORTS          PHILIPPINES                    6                     0      154   1574
0-24 months   COHORTS          PHILIPPINES                    6                     1      214   1574
0-24 months   COHORTS          PHILIPPINES                    7                     0       35   1574
0-24 months   COHORTS          PHILIPPINES                    7                     1       51   1574
0-24 months   COHORTS          PHILIPPINES                    8                     0       38   1574
0-24 months   COHORTS          PHILIPPINES                    8                     1       77   1574
0-24 months   COHORTS          PHILIPPINES                    9                     0       33   1574
0-24 months   COHORTS          PHILIPPINES                    9                     1       78   1574
0-24 months   COHORTS          PHILIPPINES                    10                    0       58   1574
0-24 months   COHORTS          PHILIPPINES                    10                    1      100   1574
0-24 months   COHORTS          PHILIPPINES                    11                    0       17   1574
0-24 months   COHORTS          PHILIPPINES                    11                    1       28   1574
0-24 months   COHORTS          PHILIPPINES                    12                    0       31   1574
0-24 months   COHORTS          PHILIPPINES                    12                    1       49   1574
0-24 months   COHORTS          PHILIPPINES                    13                    0        7   1574
0-24 months   COHORTS          PHILIPPINES                    13                    1       23   1574
0-24 months   COHORTS          PHILIPPINES                    14                    0       20   1574
0-24 months   COHORTS          PHILIPPINES                    14                    1       37   1574
0-24 months   COHORTS          PHILIPPINES                    15                    0        6   1574
0-24 months   COHORTS          PHILIPPINES                    15                    1       17   1574
0-24 months   COHORTS          PHILIPPINES                    16                    0        2   1574
0-24 months   COHORTS          PHILIPPINES                    16                    1        3   1574
0-24 months   COHORTS          PHILIPPINES                    17                    0        0   1574
0-24 months   COHORTS          PHILIPPINES                    17                    1        1   1574
0-24 months   COHORTS          PHILIPPINES                    18                    0        0   1574
0-24 months   COHORTS          PHILIPPINES                    18                    1        0   1574
0-24 months   COHORTS          PHILIPPINES                    19                    0        0   1574
0-24 months   COHORTS          PHILIPPINES                    19                    1        0   1574
0-24 months   COHORTS          PHILIPPINES                    24                    0        0   1574
0-24 months   COHORTS          PHILIPPINES                    24                    1        0   1574
0-24 months   COHORTS          PHILIPPINES                    27                    0        0   1574
0-24 months   COHORTS          PHILIPPINES                    27                    1        0   1574
0-24 months   GMS-Nepal        NEPAL                          0                     0      127    641
0-24 months   GMS-Nepal        NEPAL                          0                     1      141    641
0-24 months   GMS-Nepal        NEPAL                          1                     0        0    641
0-24 months   GMS-Nepal        NEPAL                          1                     1        0    641
0-24 months   GMS-Nepal        NEPAL                          2                     0        0    641
0-24 months   GMS-Nepal        NEPAL                          2                     1        0    641
0-24 months   GMS-Nepal        NEPAL                          3                     0        0    641
0-24 months   GMS-Nepal        NEPAL                          3                     1        0    641
0-24 months   GMS-Nepal        NEPAL                          4                     0        0    641
0-24 months   GMS-Nepal        NEPAL                          4                     1        0    641
0-24 months   GMS-Nepal        NEPAL                          5                     0       43    641
0-24 months   GMS-Nepal        NEPAL                          5                     1       74    641
0-24 months   GMS-Nepal        NEPAL                          6                     0        0    641
0-24 months   GMS-Nepal        NEPAL                          6                     1        0    641
0-24 months   GMS-Nepal        NEPAL                          7                     0        0    641
0-24 months   GMS-Nepal        NEPAL                          7                     1        0    641
0-24 months   GMS-Nepal        NEPAL                          8                     0       48    641
0-24 months   GMS-Nepal        NEPAL                          8                     1       52    641
0-24 months   GMS-Nepal        NEPAL                          9                     0        0    641
0-24 months   GMS-Nepal        NEPAL                          9                     1        0    641
0-24 months   GMS-Nepal        NEPAL                          10                    0       61    641
0-24 months   GMS-Nepal        NEPAL                          10                    1       59    641
0-24 months   GMS-Nepal        NEPAL                          11                    0        0    641
0-24 months   GMS-Nepal        NEPAL                          11                    1        0    641
0-24 months   GMS-Nepal        NEPAL                          12                    0       16    641
0-24 months   GMS-Nepal        NEPAL                          12                    1       20    641
0-24 months   GMS-Nepal        NEPAL                          13                    0        0    641
0-24 months   GMS-Nepal        NEPAL                          13                    1        0    641
0-24 months   GMS-Nepal        NEPAL                          14                    0        0    641
0-24 months   GMS-Nepal        NEPAL                          14                    1        0    641
0-24 months   GMS-Nepal        NEPAL                          15                    0        0    641
0-24 months   GMS-Nepal        NEPAL                          15                    1        0    641
0-24 months   GMS-Nepal        NEPAL                          16                    0        0    641
0-24 months   GMS-Nepal        NEPAL                          16                    1        0    641
0-24 months   GMS-Nepal        NEPAL                          17                    0        0    641
0-24 months   GMS-Nepal        NEPAL                          17                    1        0    641
0-24 months   GMS-Nepal        NEPAL                          18                    0        0    641
0-24 months   GMS-Nepal        NEPAL                          18                    1        0    641
0-24 months   GMS-Nepal        NEPAL                          19                    0        0    641
0-24 months   GMS-Nepal        NEPAL                          19                    1        0    641
0-24 months   GMS-Nepal        NEPAL                          24                    0        0    641
0-24 months   GMS-Nepal        NEPAL                          24                    1        0    641
0-24 months   GMS-Nepal        NEPAL                          27                    0        0    641
0-24 months   GMS-Nepal        NEPAL                          27                    1        0    641
0-24 months   LCNI-5           MALAWI                         0                     0       25     77
0-24 months   LCNI-5           MALAWI                         0                     1        5     77
0-24 months   LCNI-5           MALAWI                         1                     0        0     77
0-24 months   LCNI-5           MALAWI                         1                     1        0     77
0-24 months   LCNI-5           MALAWI                         2                     0        3     77
0-24 months   LCNI-5           MALAWI                         2                     1        1     77
0-24 months   LCNI-5           MALAWI                         3                     0        5     77
0-24 months   LCNI-5           MALAWI                         3                     1        0     77
0-24 months   LCNI-5           MALAWI                         4                     0        7     77
0-24 months   LCNI-5           MALAWI                         4                     1        1     77
0-24 months   LCNI-5           MALAWI                         5                     0        4     77
0-24 months   LCNI-5           MALAWI                         5                     1        1     77
0-24 months   LCNI-5           MALAWI                         6                     0        7     77
0-24 months   LCNI-5           MALAWI                         6                     1        1     77
0-24 months   LCNI-5           MALAWI                         7                     0        4     77
0-24 months   LCNI-5           MALAWI                         7                     1        1     77
0-24 months   LCNI-5           MALAWI                         8                     0        6     77
0-24 months   LCNI-5           MALAWI                         8                     1        2     77
0-24 months   LCNI-5           MALAWI                         9                     0        0     77
0-24 months   LCNI-5           MALAWI                         9                     1        0     77
0-24 months   LCNI-5           MALAWI                         10                    0        1     77
0-24 months   LCNI-5           MALAWI                         10                    1        0     77
0-24 months   LCNI-5           MALAWI                         11                    0        0     77
0-24 months   LCNI-5           MALAWI                         11                    1        0     77
0-24 months   LCNI-5           MALAWI                         12                    0        2     77
0-24 months   LCNI-5           MALAWI                         12                    1        1     77
0-24 months   LCNI-5           MALAWI                         13                    0        0     77
0-24 months   LCNI-5           MALAWI                         13                    1        0     77
0-24 months   LCNI-5           MALAWI                         14                    0        0     77
0-24 months   LCNI-5           MALAWI                         14                    1        0     77
0-24 months   LCNI-5           MALAWI                         15                    0        0     77
0-24 months   LCNI-5           MALAWI                         15                    1        0     77
0-24 months   LCNI-5           MALAWI                         16                    0        0     77
0-24 months   LCNI-5           MALAWI                         16                    1        0     77
0-24 months   LCNI-5           MALAWI                         17                    0        0     77
0-24 months   LCNI-5           MALAWI                         17                    1        0     77
0-24 months   LCNI-5           MALAWI                         18                    0        0     77
0-24 months   LCNI-5           MALAWI                         18                    1        0     77
0-24 months   LCNI-5           MALAWI                         19                    0        0     77
0-24 months   LCNI-5           MALAWI                         19                    1        0     77
0-24 months   LCNI-5           MALAWI                         24                    0        0     77
0-24 months   LCNI-5           MALAWI                         24                    1        0     77
0-24 months   LCNI-5           MALAWI                         27                    0        0     77
0-24 months   LCNI-5           MALAWI                         27                    1        0     77
0-24 months   MAL-ED           BANGLADESH                     0                     0        0     71
0-24 months   MAL-ED           BANGLADESH                     0                     1        0     71
0-24 months   MAL-ED           BANGLADESH                     1                     0        1     71
0-24 months   MAL-ED           BANGLADESH                     1                     1        4     71
0-24 months   MAL-ED           BANGLADESH                     2                     0        2     71
0-24 months   MAL-ED           BANGLADESH                     2                     1        2     71
0-24 months   MAL-ED           BANGLADESH                     3                     0        4     71
0-24 months   MAL-ED           BANGLADESH                     3                     1       11     71
0-24 months   MAL-ED           BANGLADESH                     4                     0        2     71
0-24 months   MAL-ED           BANGLADESH                     4                     1        2     71
0-24 months   MAL-ED           BANGLADESH                     5                     0        5     71
0-24 months   MAL-ED           BANGLADESH                     5                     1       10     71
0-24 months   MAL-ED           BANGLADESH                     6                     0        2     71
0-24 months   MAL-ED           BANGLADESH                     6                     1        1     71
0-24 months   MAL-ED           BANGLADESH                     7                     0        3     71
0-24 months   MAL-ED           BANGLADESH                     7                     1        4     71
0-24 months   MAL-ED           BANGLADESH                     8                     0        2     71
0-24 months   MAL-ED           BANGLADESH                     8                     1        2     71
0-24 months   MAL-ED           BANGLADESH                     9                     0        2     71
0-24 months   MAL-ED           BANGLADESH                     9                     1        3     71
0-24 months   MAL-ED           BANGLADESH                     10                    0        1     71
0-24 months   MAL-ED           BANGLADESH                     10                    1        4     71
0-24 months   MAL-ED           BANGLADESH                     11                    0        0     71
0-24 months   MAL-ED           BANGLADESH                     11                    1        0     71
0-24 months   MAL-ED           BANGLADESH                     12                    0        1     71
0-24 months   MAL-ED           BANGLADESH                     12                    1        3     71
0-24 months   MAL-ED           BANGLADESH                     13                    0        0     71
0-24 months   MAL-ED           BANGLADESH                     13                    1        0     71
0-24 months   MAL-ED           BANGLADESH                     14                    0        0     71
0-24 months   MAL-ED           BANGLADESH                     14                    1        0     71
0-24 months   MAL-ED           BANGLADESH                     15                    0        0     71
0-24 months   MAL-ED           BANGLADESH                     15                    1        0     71
0-24 months   MAL-ED           BANGLADESH                     16                    0        0     71
0-24 months   MAL-ED           BANGLADESH                     16                    1        0     71
0-24 months   MAL-ED           BANGLADESH                     17                    0        0     71
0-24 months   MAL-ED           BANGLADESH                     17                    1        0     71
0-24 months   MAL-ED           BANGLADESH                     18                    0        0     71
0-24 months   MAL-ED           BANGLADESH                     18                    1        0     71
0-24 months   MAL-ED           BANGLADESH                     19                    0        0     71
0-24 months   MAL-ED           BANGLADESH                     19                    1        0     71
0-24 months   MAL-ED           BANGLADESH                     24                    0        0     71
0-24 months   MAL-ED           BANGLADESH                     24                    1        0     71
0-24 months   MAL-ED           BANGLADESH                     27                    0        0     71
0-24 months   MAL-ED           BANGLADESH                     27                    1        0     71
0-24 months   MAL-ED           INDIA                          0                     0        0    103
0-24 months   MAL-ED           INDIA                          0                     1        0    103
0-24 months   MAL-ED           INDIA                          1                     0        0    103
0-24 months   MAL-ED           INDIA                          1                     1        0    103
0-24 months   MAL-ED           INDIA                          2                     0        0    103
0-24 months   MAL-ED           INDIA                          2                     1        3    103
0-24 months   MAL-ED           INDIA                          3                     0        3    103
0-24 months   MAL-ED           INDIA                          3                     1        4    103
0-24 months   MAL-ED           INDIA                          4                     0        0    103
0-24 months   MAL-ED           INDIA                          4                     1        5    103
0-24 months   MAL-ED           INDIA                          5                     0       13    103
0-24 months   MAL-ED           INDIA                          5                     1       18    103
0-24 months   MAL-ED           INDIA                          6                     0        3    103
0-24 months   MAL-ED           INDIA                          6                     1        5    103
0-24 months   MAL-ED           INDIA                          7                     0        2    103
0-24 months   MAL-ED           INDIA                          7                     1        5    103
0-24 months   MAL-ED           INDIA                          8                     0        9    103
0-24 months   MAL-ED           INDIA                          8                     1        4    103
0-24 months   MAL-ED           INDIA                          9                     0        4    103
0-24 months   MAL-ED           INDIA                          9                     1       13    103
0-24 months   MAL-ED           INDIA                          10                    0        1    103
0-24 months   MAL-ED           INDIA                          10                    1        2    103
0-24 months   MAL-ED           INDIA                          11                    0        1    103
0-24 months   MAL-ED           INDIA                          11                    1        0    103
0-24 months   MAL-ED           INDIA                          12                    0        1    103
0-24 months   MAL-ED           INDIA                          12                    1        1    103
0-24 months   MAL-ED           INDIA                          13                    0        0    103
0-24 months   MAL-ED           INDIA                          13                    1        1    103
0-24 months   MAL-ED           INDIA                          14                    0        0    103
0-24 months   MAL-ED           INDIA                          14                    1        3    103
0-24 months   MAL-ED           INDIA                          15                    0        0    103
0-24 months   MAL-ED           INDIA                          15                    1        1    103
0-24 months   MAL-ED           INDIA                          16                    0        0    103
0-24 months   MAL-ED           INDIA                          16                    1        0    103
0-24 months   MAL-ED           INDIA                          17                    0        0    103
0-24 months   MAL-ED           INDIA                          17                    1        0    103
0-24 months   MAL-ED           INDIA                          18                    0        0    103
0-24 months   MAL-ED           INDIA                          18                    1        1    103
0-24 months   MAL-ED           INDIA                          19                    0        0    103
0-24 months   MAL-ED           INDIA                          19                    1        0    103
0-24 months   MAL-ED           INDIA                          24                    0        0    103
0-24 months   MAL-ED           INDIA                          24                    1        0    103
0-24 months   MAL-ED           INDIA                          27                    0        0    103
0-24 months   MAL-ED           INDIA                          27                    1        0    103
0-24 months   MAL-ED           NEPAL                          0                     0        0     37
0-24 months   MAL-ED           NEPAL                          0                     1        0     37
0-24 months   MAL-ED           NEPAL                          1                     0        0     37
0-24 months   MAL-ED           NEPAL                          1                     1        0     37
0-24 months   MAL-ED           NEPAL                          2                     0        1     37
0-24 months   MAL-ED           NEPAL                          2                     1        2     37
0-24 months   MAL-ED           NEPAL                          3                     0        0     37
0-24 months   MAL-ED           NEPAL                          3                     1        1     37
0-24 months   MAL-ED           NEPAL                          4                     0        0     37
0-24 months   MAL-ED           NEPAL                          4                     1        6     37
0-24 months   MAL-ED           NEPAL                          5                     0        1     37
0-24 months   MAL-ED           NEPAL                          5                     1        1     37
0-24 months   MAL-ED           NEPAL                          6                     0        0     37
0-24 months   MAL-ED           NEPAL                          6                     1        0     37
0-24 months   MAL-ED           NEPAL                          7                     0        3     37
0-24 months   MAL-ED           NEPAL                          7                     1        3     37
0-24 months   MAL-ED           NEPAL                          8                     0        1     37
0-24 months   MAL-ED           NEPAL                          8                     1        5     37
0-24 months   MAL-ED           NEPAL                          9                     0        0     37
0-24 months   MAL-ED           NEPAL                          9                     1        1     37
0-24 months   MAL-ED           NEPAL                          10                    0        2     37
0-24 months   MAL-ED           NEPAL                          10                    1        6     37
0-24 months   MAL-ED           NEPAL                          11                    0        0     37
0-24 months   MAL-ED           NEPAL                          11                    1        1     37
0-24 months   MAL-ED           NEPAL                          12                    0        0     37
0-24 months   MAL-ED           NEPAL                          12                    1        3     37
0-24 months   MAL-ED           NEPAL                          13                    0        0     37
0-24 months   MAL-ED           NEPAL                          13                    1        0     37
0-24 months   MAL-ED           NEPAL                          14                    0        0     37
0-24 months   MAL-ED           NEPAL                          14                    1        0     37
0-24 months   MAL-ED           NEPAL                          15                    0        0     37
0-24 months   MAL-ED           NEPAL                          15                    1        0     37
0-24 months   MAL-ED           NEPAL                          16                    0        0     37
0-24 months   MAL-ED           NEPAL                          16                    1        0     37
0-24 months   MAL-ED           NEPAL                          17                    0        0     37
0-24 months   MAL-ED           NEPAL                          17                    1        0     37
0-24 months   MAL-ED           NEPAL                          18                    0        0     37
0-24 months   MAL-ED           NEPAL                          18                    1        0     37
0-24 months   MAL-ED           NEPAL                          19                    0        0     37
0-24 months   MAL-ED           NEPAL                          19                    1        0     37
0-24 months   MAL-ED           NEPAL                          24                    0        0     37
0-24 months   MAL-ED           NEPAL                          24                    1        0     37
0-24 months   MAL-ED           NEPAL                          27                    0        0     37
0-24 months   MAL-ED           NEPAL                          27                    1        0     37
0-24 months   MAL-ED           PERU                           0                     0        0     26
0-24 months   MAL-ED           PERU                           0                     1        0     26
0-24 months   MAL-ED           PERU                           1                     0        0     26
0-24 months   MAL-ED           PERU                           1                     1        0     26
0-24 months   MAL-ED           PERU                           2                     0        0     26
0-24 months   MAL-ED           PERU                           2                     1        0     26
0-24 months   MAL-ED           PERU                           3                     0        0     26
0-24 months   MAL-ED           PERU                           3                     1        1     26
0-24 months   MAL-ED           PERU                           4                     0        0     26
0-24 months   MAL-ED           PERU                           4                     1        0     26
0-24 months   MAL-ED           PERU                           5                     0        0     26
0-24 months   MAL-ED           PERU                           5                     1        0     26
0-24 months   MAL-ED           PERU                           6                     0        0     26
0-24 months   MAL-ED           PERU                           6                     1        2     26
0-24 months   MAL-ED           PERU                           7                     0        1     26
0-24 months   MAL-ED           PERU                           7                     1        0     26
0-24 months   MAL-ED           PERU                           8                     0        1     26
0-24 months   MAL-ED           PERU                           8                     1        7     26
0-24 months   MAL-ED           PERU                           9                     0        0     26
0-24 months   MAL-ED           PERU                           9                     1        2     26
0-24 months   MAL-ED           PERU                           10                    0        0     26
0-24 months   MAL-ED           PERU                           10                    1        1     26
0-24 months   MAL-ED           PERU                           11                    0        1     26
0-24 months   MAL-ED           PERU                           11                    1        8     26
0-24 months   MAL-ED           PERU                           12                    0        1     26
0-24 months   MAL-ED           PERU                           12                    1        1     26
0-24 months   MAL-ED           PERU                           13                    0        0     26
0-24 months   MAL-ED           PERU                           13                    1        0     26
0-24 months   MAL-ED           PERU                           14                    0        0     26
0-24 months   MAL-ED           PERU                           14                    1        0     26
0-24 months   MAL-ED           PERU                           15                    0        0     26
0-24 months   MAL-ED           PERU                           15                    1        0     26
0-24 months   MAL-ED           PERU                           16                    0        0     26
0-24 months   MAL-ED           PERU                           16                    1        0     26
0-24 months   MAL-ED           PERU                           17                    0        0     26
0-24 months   MAL-ED           PERU                           17                    1        0     26
0-24 months   MAL-ED           PERU                           18                    0        0     26
0-24 months   MAL-ED           PERU                           18                    1        0     26
0-24 months   MAL-ED           PERU                           19                    0        0     26
0-24 months   MAL-ED           PERU                           19                    1        0     26
0-24 months   MAL-ED           PERU                           24                    0        0     26
0-24 months   MAL-ED           PERU                           24                    1        0     26
0-24 months   MAL-ED           PERU                           27                    0        0     26
0-24 months   MAL-ED           PERU                           27                    1        0     26
0-24 months   MAL-ED           SOUTH AFRICA                   0                     0        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   0                     1        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   1                     0        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   1                     1        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   2                     0        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   2                     1        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   3                     0        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   3                     1        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   4                     0        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   4                     1        1     29
0-24 months   MAL-ED           SOUTH AFRICA                   5                     0        1     29
0-24 months   MAL-ED           SOUTH AFRICA                   5                     1        1     29
0-24 months   MAL-ED           SOUTH AFRICA                   6                     0        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   6                     1        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   7                     0        2     29
0-24 months   MAL-ED           SOUTH AFRICA                   7                     1        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   8                     0        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   8                     1        5     29
0-24 months   MAL-ED           SOUTH AFRICA                   9                     0        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   9                     1        2     29
0-24 months   MAL-ED           SOUTH AFRICA                   10                    0        1     29
0-24 months   MAL-ED           SOUTH AFRICA                   10                    1        5     29
0-24 months   MAL-ED           SOUTH AFRICA                   11                    0        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   11                    1        2     29
0-24 months   MAL-ED           SOUTH AFRICA                   12                    0        1     29
0-24 months   MAL-ED           SOUTH AFRICA                   12                    1        7     29
0-24 months   MAL-ED           SOUTH AFRICA                   13                    0        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   13                    1        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   14                    0        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   14                    1        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   15                    0        1     29
0-24 months   MAL-ED           SOUTH AFRICA                   15                    1        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   16                    0        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   16                    1        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   17                    0        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   17                    1        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   18                    0        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   18                    1        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   19                    0        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   19                    1        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   24                    0        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   24                    1        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   27                    0        0     29
0-24 months   MAL-ED           SOUTH AFRICA                   27                    1        0     29
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        1     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        7     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     0        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     1        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     0        3     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     1        4     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     0        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     1        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     0        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     1        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     0        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     1        1     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     0        2     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     1       17     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     0        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     1        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     0        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     1        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    0        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    1        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    0        1     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    1        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    0        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    1        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                    0        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                    1        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                    0        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                    1        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                    0        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                    1        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                    0        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                    1        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                    0        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                    1        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                    0        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                    1        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                    0        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                    1        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                    0        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                    1        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                    0        0     36
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                    1        0     36
0-24 months   NIH-Crypto       BANGLADESH                     0                     0       34    310
0-24 months   NIH-Crypto       BANGLADESH                     0                     1       51    310
0-24 months   NIH-Crypto       BANGLADESH                     1                     0        0    310
0-24 months   NIH-Crypto       BANGLADESH                     1                     1        9    310
0-24 months   NIH-Crypto       BANGLADESH                     2                     0        5    310
0-24 months   NIH-Crypto       BANGLADESH                     2                     1        5    310
0-24 months   NIH-Crypto       BANGLADESH                     3                     0        7    310
0-24 months   NIH-Crypto       BANGLADESH                     3                     1        7    310
0-24 months   NIH-Crypto       BANGLADESH                     4                     0        6    310
0-24 months   NIH-Crypto       BANGLADESH                     4                     1       11    310
0-24 months   NIH-Crypto       BANGLADESH                     5                     0       22    310
0-24 months   NIH-Crypto       BANGLADESH                     5                     1       20    310
0-24 months   NIH-Crypto       BANGLADESH                     6                     0        4    310
0-24 months   NIH-Crypto       BANGLADESH                     6                     1        6    310
0-24 months   NIH-Crypto       BANGLADESH                     7                     0        4    310
0-24 months   NIH-Crypto       BANGLADESH                     7                     1       14    310
0-24 months   NIH-Crypto       BANGLADESH                     8                     0       10    310
0-24 months   NIH-Crypto       BANGLADESH                     8                     1       21    310
0-24 months   NIH-Crypto       BANGLADESH                     9                     0        6    310
0-24 months   NIH-Crypto       BANGLADESH                     9                     1       16    310
0-24 months   NIH-Crypto       BANGLADESH                     10                    0        9    310
0-24 months   NIH-Crypto       BANGLADESH                     10                    1       12    310
0-24 months   NIH-Crypto       BANGLADESH                     11                    0        0    310
0-24 months   NIH-Crypto       BANGLADESH                     11                    1        0    310
0-24 months   NIH-Crypto       BANGLADESH                     12                    0        6    310
0-24 months   NIH-Crypto       BANGLADESH                     12                    1       14    310
0-24 months   NIH-Crypto       BANGLADESH                     13                    0        0    310
0-24 months   NIH-Crypto       BANGLADESH                     13                    1        0    310
0-24 months   NIH-Crypto       BANGLADESH                     14                    0        0    310
0-24 months   NIH-Crypto       BANGLADESH                     14                    1        3    310
0-24 months   NIH-Crypto       BANGLADESH                     15                    0        2    310
0-24 months   NIH-Crypto       BANGLADESH                     15                    1        3    310
0-24 months   NIH-Crypto       BANGLADESH                     16                    0        0    310
0-24 months   NIH-Crypto       BANGLADESH                     16                    1        0    310
0-24 months   NIH-Crypto       BANGLADESH                     17                    0        2    310
0-24 months   NIH-Crypto       BANGLADESH                     17                    1        1    310
0-24 months   NIH-Crypto       BANGLADESH                     18                    0        0    310
0-24 months   NIH-Crypto       BANGLADESH                     18                    1        0    310
0-24 months   NIH-Crypto       BANGLADESH                     19                    0        0    310
0-24 months   NIH-Crypto       BANGLADESH                     19                    1        0    310
0-24 months   NIH-Crypto       BANGLADESH                     24                    0        0    310
0-24 months   NIH-Crypto       BANGLADESH                     24                    1        0    310
0-24 months   NIH-Crypto       BANGLADESH                     27                    0        0    310
0-24 months   NIH-Crypto       BANGLADESH                     27                    1        0    310
0-24 months   PROBIT           BELARUS                        0                     0        0   4229
0-24 months   PROBIT           BELARUS                        0                     1        0   4229
0-24 months   PROBIT           BELARUS                        1                     0        0   4229
0-24 months   PROBIT           BELARUS                        1                     1        0   4229
0-24 months   PROBIT           BELARUS                        2                     0        0   4229
0-24 months   PROBIT           BELARUS                        2                     1        0   4229
0-24 months   PROBIT           BELARUS                        3                     0        0   4229
0-24 months   PROBIT           BELARUS                        3                     1        0   4229
0-24 months   PROBIT           BELARUS                        4                     0        0   4229
0-24 months   PROBIT           BELARUS                        4                     1        0   4229
0-24 months   PROBIT           BELARUS                        5                     0        0   4229
0-24 months   PROBIT           BELARUS                        5                     1        0   4229
0-24 months   PROBIT           BELARUS                        6                     0        0   4229
0-24 months   PROBIT           BELARUS                        6                     1        0   4229
0-24 months   PROBIT           BELARUS                        7                     0        0   4229
0-24 months   PROBIT           BELARUS                        7                     1        0   4229
0-24 months   PROBIT           BELARUS                        8                     0        3   4229
0-24 months   PROBIT           BELARUS                        8                     1        6   4229
0-24 months   PROBIT           BELARUS                        9                     0        0   4229
0-24 months   PROBIT           BELARUS                        9                     1        0   4229
0-24 months   PROBIT           BELARUS                        10                    0       11   4229
0-24 months   PROBIT           BELARUS                        10                    1       78   4229
0-24 months   PROBIT           BELARUS                        11                    0        0   4229
0-24 months   PROBIT           BELARUS                        11                    1        0   4229
0-24 months   PROBIT           BELARUS                        12                    0      212   4229
0-24 months   PROBIT           BELARUS                        12                    1     1394   4229
0-24 months   PROBIT           BELARUS                        13                    0      207   4229
0-24 months   PROBIT           BELARUS                        13                    1     1672   4229
0-24 months   PROBIT           BELARUS                        14                    0       16   4229
0-24 months   PROBIT           BELARUS                        14                    1       89   4229
0-24 months   PROBIT           BELARUS                        15                    0        0   4229
0-24 months   PROBIT           BELARUS                        15                    1        0   4229
0-24 months   PROBIT           BELARUS                        16                    0       61   4229
0-24 months   PROBIT           BELARUS                        16                    1      480   4229
0-24 months   PROBIT           BELARUS                        17                    0        0   4229
0-24 months   PROBIT           BELARUS                        17                    1        0   4229
0-24 months   PROBIT           BELARUS                        18                    0        0   4229
0-24 months   PROBIT           BELARUS                        18                    1        0   4229
0-24 months   PROBIT           BELARUS                        19                    0        0   4229
0-24 months   PROBIT           BELARUS                        19                    1        0   4229
0-24 months   PROBIT           BELARUS                        24                    0        0   4229
0-24 months   PROBIT           BELARUS                        24                    1        0   4229
0-24 months   PROBIT           BELARUS                        27                    0        0   4229
0-24 months   PROBIT           BELARUS                        27                    1        0   4229
0-24 months   PROVIDE          BANGLADESH                     0                     0       55    308
0-24 months   PROVIDE          BANGLADESH                     0                     1       68    308
0-24 months   PROVIDE          BANGLADESH                     1                     0        1    308
0-24 months   PROVIDE          BANGLADESH                     1                     1        3    308
0-24 months   PROVIDE          BANGLADESH                     2                     0        6    308
0-24 months   PROVIDE          BANGLADESH                     2                     1        2    308
0-24 months   PROVIDE          BANGLADESH                     3                     0        4    308
0-24 months   PROVIDE          BANGLADESH                     3                     1        8    308
0-24 months   PROVIDE          BANGLADESH                     4                     0       10    308
0-24 months   PROVIDE          BANGLADESH                     4                     1       13    308
0-24 months   PROVIDE          BANGLADESH                     5                     0       14    308
0-24 months   PROVIDE          BANGLADESH                     5                     1       22    308
0-24 months   PROVIDE          BANGLADESH                     6                     0        9    308
0-24 months   PROVIDE          BANGLADESH                     6                     1        6    308
0-24 months   PROVIDE          BANGLADESH                     7                     0        0    308
0-24 months   PROVIDE          BANGLADESH                     7                     1        8    308
0-24 months   PROVIDE          BANGLADESH                     8                     0       10    308
0-24 months   PROVIDE          BANGLADESH                     8                     1       19    308
0-24 months   PROVIDE          BANGLADESH                     9                     0        8    308
0-24 months   PROVIDE          BANGLADESH                     9                     1       11    308
0-24 months   PROVIDE          BANGLADESH                     10                    0        6    308
0-24 months   PROVIDE          BANGLADESH                     10                    1        9    308
0-24 months   PROVIDE          BANGLADESH                     11                    0        1    308
0-24 months   PROVIDE          BANGLADESH                     11                    1        3    308
0-24 months   PROVIDE          BANGLADESH                     12                    0        0    308
0-24 months   PROVIDE          BANGLADESH                     12                    1        1    308
0-24 months   PROVIDE          BANGLADESH                     13                    0        0    308
0-24 months   PROVIDE          BANGLADESH                     13                    1        0    308
0-24 months   PROVIDE          BANGLADESH                     14                    0        3    308
0-24 months   PROVIDE          BANGLADESH                     14                    1        4    308
0-24 months   PROVIDE          BANGLADESH                     15                    0        0    308
0-24 months   PROVIDE          BANGLADESH                     15                    1        1    308
0-24 months   PROVIDE          BANGLADESH                     16                    0        2    308
0-24 months   PROVIDE          BANGLADESH                     16                    1        1    308
0-24 months   PROVIDE          BANGLADESH                     17                    0        0    308
0-24 months   PROVIDE          BANGLADESH                     17                    1        0    308
0-24 months   PROVIDE          BANGLADESH                     18                    0        0    308
0-24 months   PROVIDE          BANGLADESH                     18                    1        0    308
0-24 months   PROVIDE          BANGLADESH                     19                    0        0    308
0-24 months   PROVIDE          BANGLADESH                     19                    1        0    308
0-24 months   PROVIDE          BANGLADESH                     24                    0        0    308
0-24 months   PROVIDE          BANGLADESH                     24                    1        0    308
0-24 months   PROVIDE          BANGLADESH                     27                    0        0    308
0-24 months   PROVIDE          BANGLADESH                     27                    1        0    308
0-24 months   SAS-CompFeed     INDIA                          0                     0       77    811
0-24 months   SAS-CompFeed     INDIA                          0                     1       47    811
0-24 months   SAS-CompFeed     INDIA                          1                     0        0    811
0-24 months   SAS-CompFeed     INDIA                          1                     1        0    811
0-24 months   SAS-CompFeed     INDIA                          2                     0        5    811
0-24 months   SAS-CompFeed     INDIA                          2                     1        1    811
0-24 months   SAS-CompFeed     INDIA                          3                     0        6    811
0-24 months   SAS-CompFeed     INDIA                          3                     1        2    811
0-24 months   SAS-CompFeed     INDIA                          4                     0        7    811
0-24 months   SAS-CompFeed     INDIA                          4                     1        8    811
0-24 months   SAS-CompFeed     INDIA                          5                     0       35    811
0-24 months   SAS-CompFeed     INDIA                          5                     1       14    811
0-24 months   SAS-CompFeed     INDIA                          6                     0       16    811
0-24 months   SAS-CompFeed     INDIA                          6                     1       10    811
0-24 months   SAS-CompFeed     INDIA                          7                     0       40    811
0-24 months   SAS-CompFeed     INDIA                          7                     1       20    811
0-24 months   SAS-CompFeed     INDIA                          8                     0       56    811
0-24 months   SAS-CompFeed     INDIA                          8                     1       29    811
0-24 months   SAS-CompFeed     INDIA                          9                     0       27    811
0-24 months   SAS-CompFeed     INDIA                          9                     1       21    811
0-24 months   SAS-CompFeed     INDIA                          10                    0      119    811
0-24 months   SAS-CompFeed     INDIA                          10                    1       71    811
0-24 months   SAS-CompFeed     INDIA                          11                    0        7    811
0-24 months   SAS-CompFeed     INDIA                          11                    1       11    811
0-24 months   SAS-CompFeed     INDIA                          12                    0       67    811
0-24 months   SAS-CompFeed     INDIA                          12                    1       47    811
0-24 months   SAS-CompFeed     INDIA                          13                    0        3    811
0-24 months   SAS-CompFeed     INDIA                          13                    1        2    811
0-24 months   SAS-CompFeed     INDIA                          14                    0        9    811
0-24 months   SAS-CompFeed     INDIA                          14                    1        3    811
0-24 months   SAS-CompFeed     INDIA                          15                    0       17    811
0-24 months   SAS-CompFeed     INDIA                          15                    1       19    811
0-24 months   SAS-CompFeed     INDIA                          16                    0        3    811
0-24 months   SAS-CompFeed     INDIA                          16                    1        2    811
0-24 months   SAS-CompFeed     INDIA                          17                    0        4    811
0-24 months   SAS-CompFeed     INDIA                          17                    1        3    811
0-24 months   SAS-CompFeed     INDIA                          18                    0        1    811
0-24 months   SAS-CompFeed     INDIA                          18                    1        0    811
0-24 months   SAS-CompFeed     INDIA                          19                    0        2    811
0-24 months   SAS-CompFeed     INDIA                          19                    1        0    811
0-24 months   SAS-CompFeed     INDIA                          24                    0        0    811
0-24 months   SAS-CompFeed     INDIA                          24                    1        0    811
0-24 months   SAS-CompFeed     INDIA                          27                    0        0    811
0-24 months   SAS-CompFeed     INDIA                          27                    1        0    811
0-24 months   SAS-FoodSuppl    INDIA                          0                     0       80    234
0-24 months   SAS-FoodSuppl    INDIA                          0                     1        2    234
0-24 months   SAS-FoodSuppl    INDIA                          1                     0        0    234
0-24 months   SAS-FoodSuppl    INDIA                          1                     1        0    234
0-24 months   SAS-FoodSuppl    INDIA                          2                     0        7    234
0-24 months   SAS-FoodSuppl    INDIA                          2                     1        0    234
0-24 months   SAS-FoodSuppl    INDIA                          3                     0        5    234
0-24 months   SAS-FoodSuppl    INDIA                          3                     1        0    234
0-24 months   SAS-FoodSuppl    INDIA                          4                     0        7    234
0-24 months   SAS-FoodSuppl    INDIA                          4                     1        0    234
0-24 months   SAS-FoodSuppl    INDIA                          5                     0       35    234
0-24 months   SAS-FoodSuppl    INDIA                          5                     1        3    234
0-24 months   SAS-FoodSuppl    INDIA                          6                     0       10    234
0-24 months   SAS-FoodSuppl    INDIA                          6                     1        0    234
0-24 months   SAS-FoodSuppl    INDIA                          7                     0        7    234
0-24 months   SAS-FoodSuppl    INDIA                          7                     1        1    234
0-24 months   SAS-FoodSuppl    INDIA                          8                     0       18    234
0-24 months   SAS-FoodSuppl    INDIA                          8                     1        1    234
0-24 months   SAS-FoodSuppl    INDIA                          9                     0       12    234
0-24 months   SAS-FoodSuppl    INDIA                          9                     1        3    234
0-24 months   SAS-FoodSuppl    INDIA                          10                    0       27    234
0-24 months   SAS-FoodSuppl    INDIA                          10                    1        1    234
0-24 months   SAS-FoodSuppl    INDIA                          11                    0        4    234
0-24 months   SAS-FoodSuppl    INDIA                          11                    1        0    234
0-24 months   SAS-FoodSuppl    INDIA                          12                    0        2    234
0-24 months   SAS-FoodSuppl    INDIA                          12                    1        0    234
0-24 months   SAS-FoodSuppl    INDIA                          13                    0        0    234
0-24 months   SAS-FoodSuppl    INDIA                          13                    1        0    234
0-24 months   SAS-FoodSuppl    INDIA                          14                    0        6    234
0-24 months   SAS-FoodSuppl    INDIA                          14                    1        1    234
0-24 months   SAS-FoodSuppl    INDIA                          15                    0        1    234
0-24 months   SAS-FoodSuppl    INDIA                          15                    1        1    234
0-24 months   SAS-FoodSuppl    INDIA                          16                    0        0    234
0-24 months   SAS-FoodSuppl    INDIA                          16                    1        0    234
0-24 months   SAS-FoodSuppl    INDIA                          17                    0        0    234
0-24 months   SAS-FoodSuppl    INDIA                          17                    1        0    234
0-24 months   SAS-FoodSuppl    INDIA                          18                    0        0    234
0-24 months   SAS-FoodSuppl    INDIA                          18                    1        0    234
0-24 months   SAS-FoodSuppl    INDIA                          19                    0        0    234
0-24 months   SAS-FoodSuppl    INDIA                          19                    1        0    234
0-24 months   SAS-FoodSuppl    INDIA                          24                    0        0    234
0-24 months   SAS-FoodSuppl    INDIA                          24                    1        0    234
0-24 months   SAS-FoodSuppl    INDIA                          27                    0        0    234
0-24 months   SAS-FoodSuppl    INDIA                          27                    1        0    234
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0        0    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1        0    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0        0    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1        0    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0        0    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1        0    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0        0    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1        0    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0        1    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1        1    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0        0    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1        0    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0        0    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1        0    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      139    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1      240    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0        0    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1        0    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0        7    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1       16    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0        4    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1        4    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0       68    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1      118    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0        1    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1        2    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                    0       12    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                    1       18    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                    0        0    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                    1        6    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                    0        1    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                    1        3    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                    0        1    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                    1        0    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                    0        1    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                    1        3    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                    0        0    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                    1        0    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                    0        0    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                    1        0    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                    0        5    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                    1        5    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                    0       25    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                    1       30    711
0-24 months   ZVITAMBO         ZIMBABWE                       0                     0       11   3478
0-24 months   ZVITAMBO         ZIMBABWE                       0                     1        8   3478
0-24 months   ZVITAMBO         ZIMBABWE                       1                     0        0   3478
0-24 months   ZVITAMBO         ZIMBABWE                       1                     1        0   3478
0-24 months   ZVITAMBO         ZIMBABWE                       2                     0        0   3478
0-24 months   ZVITAMBO         ZIMBABWE                       2                     1        1   3478
0-24 months   ZVITAMBO         ZIMBABWE                       3                     0        5   3478
0-24 months   ZVITAMBO         ZIMBABWE                       3                     1        3   3478
0-24 months   ZVITAMBO         ZIMBABWE                       4                     0        1   3478
0-24 months   ZVITAMBO         ZIMBABWE                       4                     1        2   3478
0-24 months   ZVITAMBO         ZIMBABWE                       5                     0        4   3478
0-24 months   ZVITAMBO         ZIMBABWE                       5                     1        9   3478
0-24 months   ZVITAMBO         ZIMBABWE                       6                     0        4   3478
0-24 months   ZVITAMBO         ZIMBABWE                       6                     1        4   3478
0-24 months   ZVITAMBO         ZIMBABWE                       7                     0      118   3478
0-24 months   ZVITAMBO         ZIMBABWE                       7                     1      105   3478
0-24 months   ZVITAMBO         ZIMBABWE                       8                     0        6   3478
0-24 months   ZVITAMBO         ZIMBABWE                       8                     1       15   3478
0-24 months   ZVITAMBO         ZIMBABWE                       9                     0      105   3478
0-24 months   ZVITAMBO         ZIMBABWE                       9                     1      132   3478
0-24 months   ZVITAMBO         ZIMBABWE                       10                    0       64   3478
0-24 months   ZVITAMBO         ZIMBABWE                       10                    1       39   3478
0-24 months   ZVITAMBO         ZIMBABWE                       11                    0     1189   3478
0-24 months   ZVITAMBO         ZIMBABWE                       11                    1     1428   3478
0-24 months   ZVITAMBO         ZIMBABWE                       12                    0        5   3478
0-24 months   ZVITAMBO         ZIMBABWE                       12                    1        9   3478
0-24 months   ZVITAMBO         ZIMBABWE                       13                    0       79   3478
0-24 months   ZVITAMBO         ZIMBABWE                       13                    1      132   3478
0-24 months   ZVITAMBO         ZIMBABWE                       14                    0        0   3478
0-24 months   ZVITAMBO         ZIMBABWE                       14                    1        0   3478
0-24 months   ZVITAMBO         ZIMBABWE                       15                    0        0   3478
0-24 months   ZVITAMBO         ZIMBABWE                       15                    1        0   3478
0-24 months   ZVITAMBO         ZIMBABWE                       16                    0        0   3478
0-24 months   ZVITAMBO         ZIMBABWE                       16                    1        0   3478
0-24 months   ZVITAMBO         ZIMBABWE                       17                    0        0   3478
0-24 months   ZVITAMBO         ZIMBABWE                       17                    1        0   3478
0-24 months   ZVITAMBO         ZIMBABWE                       18                    0        0   3478
0-24 months   ZVITAMBO         ZIMBABWE                       18                    1        0   3478
0-24 months   ZVITAMBO         ZIMBABWE                       19                    0        0   3478
0-24 months   ZVITAMBO         ZIMBABWE                       19                    1        0   3478
0-24 months   ZVITAMBO         ZIMBABWE                       24                    0        0   3478
0-24 months   ZVITAMBO         ZIMBABWE                       24                    1        0   3478
0-24 months   ZVITAMBO         ZIMBABWE                       27                    0        0   3478
0-24 months   ZVITAMBO         ZIMBABWE                       27                    1        0   3478
0-6 months    COHORTS          GUATEMALA                      0                     0       19    201
0-6 months    COHORTS          GUATEMALA                      0                     1       69    201
0-6 months    COHORTS          GUATEMALA                      1                     0        5    201
0-6 months    COHORTS          GUATEMALA                      1                     1        4    201
0-6 months    COHORTS          GUATEMALA                      2                     0       12    201
0-6 months    COHORTS          GUATEMALA                      2                     1       26    201
0-6 months    COHORTS          GUATEMALA                      3                     0        5    201
0-6 months    COHORTS          GUATEMALA                      3                     1       17    201
0-6 months    COHORTS          GUATEMALA                      4                     0        4    201
0-6 months    COHORTS          GUATEMALA                      4                     1        9    201
0-6 months    COHORTS          GUATEMALA                      5                     0        0    201
0-6 months    COHORTS          GUATEMALA                      5                     1        5    201
0-6 months    COHORTS          GUATEMALA                      6                     0        5    201
0-6 months    COHORTS          GUATEMALA                      6                     1       19    201
0-6 months    COHORTS          GUATEMALA                      7                     0        0    201
0-6 months    COHORTS          GUATEMALA                      7                     1        1    201
0-6 months    COHORTS          GUATEMALA                      8                     0        0    201
0-6 months    COHORTS          GUATEMALA                      8                     1        1    201
0-6 months    COHORTS          GUATEMALA                      9                     0        0    201
0-6 months    COHORTS          GUATEMALA                      9                     1        0    201
0-6 months    COHORTS          GUATEMALA                      10                    0        0    201
0-6 months    COHORTS          GUATEMALA                      10                    1        0    201
0-6 months    COHORTS          GUATEMALA                      11                    0        0    201
0-6 months    COHORTS          GUATEMALA                      11                    1        0    201
0-6 months    COHORTS          GUATEMALA                      12                    0        0    201
0-6 months    COHORTS          GUATEMALA                      12                    1        0    201
0-6 months    COHORTS          GUATEMALA                      13                    0        0    201
0-6 months    COHORTS          GUATEMALA                      13                    1        0    201
0-6 months    COHORTS          GUATEMALA                      14                    0        0    201
0-6 months    COHORTS          GUATEMALA                      14                    1        0    201
0-6 months    COHORTS          GUATEMALA                      15                    0        0    201
0-6 months    COHORTS          GUATEMALA                      15                    1        0    201
0-6 months    COHORTS          GUATEMALA                      16                    0        0    201
0-6 months    COHORTS          GUATEMALA                      16                    1        0    201
0-6 months    COHORTS          GUATEMALA                      17                    0        0    201
0-6 months    COHORTS          GUATEMALA                      17                    1        0    201
0-6 months    COHORTS          GUATEMALA                      18                    0        0    201
0-6 months    COHORTS          GUATEMALA                      18                    1        0    201
0-6 months    COHORTS          GUATEMALA                      19                    0        0    201
0-6 months    COHORTS          GUATEMALA                      19                    1        0    201
0-6 months    COHORTS          GUATEMALA                      24                    0        0    201
0-6 months    COHORTS          GUATEMALA                      24                    1        0    201
0-6 months    COHORTS          GUATEMALA                      27                    0        0    201
0-6 months    COHORTS          GUATEMALA                      27                    1        0    201
0-6 months    COHORTS          INDIA                          0                     0       19    349
0-6 months    COHORTS          INDIA                          0                     1        7    349
0-6 months    COHORTS          INDIA                          1                     0        0    349
0-6 months    COHORTS          INDIA                          1                     1        0    349
0-6 months    COHORTS          INDIA                          2                     0        0    349
0-6 months    COHORTS          INDIA                          2                     1        0    349
0-6 months    COHORTS          INDIA                          3                     0       17    349
0-6 months    COHORTS          INDIA                          3                     1       12    349
0-6 months    COHORTS          INDIA                          4                     0        0    349
0-6 months    COHORTS          INDIA                          4                     1        0    349
0-6 months    COHORTS          INDIA                          5                     0        0    349
0-6 months    COHORTS          INDIA                          5                     1        0    349
0-6 months    COHORTS          INDIA                          6                     0        0    349
0-6 months    COHORTS          INDIA                          6                     1        0    349
0-6 months    COHORTS          INDIA                          7                     0        0    349
0-6 months    COHORTS          INDIA                          7                     1        0    349
0-6 months    COHORTS          INDIA                          8                     0       31    349
0-6 months    COHORTS          INDIA                          8                     1       15    349
0-6 months    COHORTS          INDIA                          9                     0        0    349
0-6 months    COHORTS          INDIA                          9                     1        0    349
0-6 months    COHORTS          INDIA                          10                    0        0    349
0-6 months    COHORTS          INDIA                          10                    1        0    349
0-6 months    COHORTS          INDIA                          11                    0        0    349
0-6 months    COHORTS          INDIA                          11                    1        0    349
0-6 months    COHORTS          INDIA                          12                    0       56    349
0-6 months    COHORTS          INDIA                          12                    1       54    349
0-6 months    COHORTS          INDIA                          13                    0        0    349
0-6 months    COHORTS          INDIA                          13                    1        0    349
0-6 months    COHORTS          INDIA                          14                    0       24    349
0-6 months    COHORTS          INDIA                          14                    1       13    349
0-6 months    COHORTS          INDIA                          15                    0       46    349
0-6 months    COHORTS          INDIA                          15                    1       25    349
0-6 months    COHORTS          INDIA                          16                    0        0    349
0-6 months    COHORTS          INDIA                          16                    1        0    349
0-6 months    COHORTS          INDIA                          17                    0       18    349
0-6 months    COHORTS          INDIA                          17                    1       12    349
0-6 months    COHORTS          INDIA                          18                    0        0    349
0-6 months    COHORTS          INDIA                          18                    1        0    349
0-6 months    COHORTS          INDIA                          19                    0        0    349
0-6 months    COHORTS          INDIA                          19                    1        0    349
0-6 months    COHORTS          INDIA                          24                    0        0    349
0-6 months    COHORTS          INDIA                          24                    1        0    349
0-6 months    COHORTS          INDIA                          27                    0        0    349
0-6 months    COHORTS          INDIA                          27                    1        0    349
0-6 months    COHORTS          PHILIPPINES                    0                     0        9    689
0-6 months    COHORTS          PHILIPPINES                    0                     1        8    689
0-6 months    COHORTS          PHILIPPINES                    1                     0        0    689
0-6 months    COHORTS          PHILIPPINES                    1                     1        8    689
0-6 months    COHORTS          PHILIPPINES                    2                     0        3    689
0-6 months    COHORTS          PHILIPPINES                    2                     1       24    689
0-6 months    COHORTS          PHILIPPINES                    3                     0        8    689
0-6 months    COHORTS          PHILIPPINES                    3                     1       17    689
0-6 months    COHORTS          PHILIPPINES                    4                     0       18    689
0-6 months    COHORTS          PHILIPPINES                    4                     1       45    689
0-6 months    COHORTS          PHILIPPINES                    5                     0        9    689
0-6 months    COHORTS          PHILIPPINES                    5                     1       33    689
0-6 months    COHORTS          PHILIPPINES                    6                     0       45    689
0-6 months    COHORTS          PHILIPPINES                    6                     1      109    689
0-6 months    COHORTS          PHILIPPINES                    7                     0       10    689
0-6 months    COHORTS          PHILIPPINES                    7                     1       20    689
0-6 months    COHORTS          PHILIPPINES                    8                     0        8    689
0-6 months    COHORTS          PHILIPPINES                    8                     1       44    689
0-6 months    COHORTS          PHILIPPINES                    9                     0       12    689
0-6 months    COHORTS          PHILIPPINES                    9                     1       35    689
0-6 months    COHORTS          PHILIPPINES                    10                    0       19    689
0-6 months    COHORTS          PHILIPPINES                    10                    1       64    689
0-6 months    COHORTS          PHILIPPINES                    11                    0        2    689
0-6 months    COHORTS          PHILIPPINES                    11                    1       14    689
0-6 months    COHORTS          PHILIPPINES                    12                    0       15    689
0-6 months    COHORTS          PHILIPPINES                    12                    1       31    689
0-6 months    COHORTS          PHILIPPINES                    13                    0        5    689
0-6 months    COHORTS          PHILIPPINES                    13                    1       13    689
0-6 months    COHORTS          PHILIPPINES                    14                    0       10    689
0-6 months    COHORTS          PHILIPPINES                    14                    1       30    689
0-6 months    COHORTS          PHILIPPINES                    15                    0        4    689
0-6 months    COHORTS          PHILIPPINES                    15                    1       11    689
0-6 months    COHORTS          PHILIPPINES                    16                    0        2    689
0-6 months    COHORTS          PHILIPPINES                    16                    1        3    689
0-6 months    COHORTS          PHILIPPINES                    17                    0        0    689
0-6 months    COHORTS          PHILIPPINES                    17                    1        1    689
0-6 months    COHORTS          PHILIPPINES                    18                    0        0    689
0-6 months    COHORTS          PHILIPPINES                    18                    1        0    689
0-6 months    COHORTS          PHILIPPINES                    19                    0        0    689
0-6 months    COHORTS          PHILIPPINES                    19                    1        0    689
0-6 months    COHORTS          PHILIPPINES                    24                    0        0    689
0-6 months    COHORTS          PHILIPPINES                    24                    1        0    689
0-6 months    COHORTS          PHILIPPINES                    27                    0        0    689
0-6 months    COHORTS          PHILIPPINES                    27                    1        0    689
0-6 months    GMS-Nepal        NEPAL                          0                     0       41    263
0-6 months    GMS-Nepal        NEPAL                          0                     1       56    263
0-6 months    GMS-Nepal        NEPAL                          1                     0        0    263
0-6 months    GMS-Nepal        NEPAL                          1                     1        0    263
0-6 months    GMS-Nepal        NEPAL                          2                     0        0    263
0-6 months    GMS-Nepal        NEPAL                          2                     1        0    263
0-6 months    GMS-Nepal        NEPAL                          3                     0        0    263
0-6 months    GMS-Nepal        NEPAL                          3                     1        0    263
0-6 months    GMS-Nepal        NEPAL                          4                     0        0    263
0-6 months    GMS-Nepal        NEPAL                          4                     1        0    263
0-6 months    GMS-Nepal        NEPAL                          5                     0       19    263
0-6 months    GMS-Nepal        NEPAL                          5                     1       28    263
0-6 months    GMS-Nepal        NEPAL                          6                     0        0    263
0-6 months    GMS-Nepal        NEPAL                          6                     1        0    263
0-6 months    GMS-Nepal        NEPAL                          7                     0        0    263
0-6 months    GMS-Nepal        NEPAL                          7                     1        0    263
0-6 months    GMS-Nepal        NEPAL                          8                     0       16    263
0-6 months    GMS-Nepal        NEPAL                          8                     1       28    263
0-6 months    GMS-Nepal        NEPAL                          9                     0        0    263
0-6 months    GMS-Nepal        NEPAL                          9                     1        0    263
0-6 months    GMS-Nepal        NEPAL                          10                    0       22    263
0-6 months    GMS-Nepal        NEPAL                          10                    1       38    263
0-6 months    GMS-Nepal        NEPAL                          11                    0        0    263
0-6 months    GMS-Nepal        NEPAL                          11                    1        0    263
0-6 months    GMS-Nepal        NEPAL                          12                    0        6    263
0-6 months    GMS-Nepal        NEPAL                          12                    1        9    263
0-6 months    GMS-Nepal        NEPAL                          13                    0        0    263
0-6 months    GMS-Nepal        NEPAL                          13                    1        0    263
0-6 months    GMS-Nepal        NEPAL                          14                    0        0    263
0-6 months    GMS-Nepal        NEPAL                          14                    1        0    263
0-6 months    GMS-Nepal        NEPAL                          15                    0        0    263
0-6 months    GMS-Nepal        NEPAL                          15                    1        0    263
0-6 months    GMS-Nepal        NEPAL                          16                    0        0    263
0-6 months    GMS-Nepal        NEPAL                          16                    1        0    263
0-6 months    GMS-Nepal        NEPAL                          17                    0        0    263
0-6 months    GMS-Nepal        NEPAL                          17                    1        0    263
0-6 months    GMS-Nepal        NEPAL                          18                    0        0    263
0-6 months    GMS-Nepal        NEPAL                          18                    1        0    263
0-6 months    GMS-Nepal        NEPAL                          19                    0        0    263
0-6 months    GMS-Nepal        NEPAL                          19                    1        0    263
0-6 months    GMS-Nepal        NEPAL                          24                    0        0    263
0-6 months    GMS-Nepal        NEPAL                          24                    1        0    263
0-6 months    GMS-Nepal        NEPAL                          27                    0        0    263
0-6 months    GMS-Nepal        NEPAL                          27                    1        0    263
0-6 months    LCNI-5           MALAWI                         0                     0        0      4
0-6 months    LCNI-5           MALAWI                         0                     1        0      4
0-6 months    LCNI-5           MALAWI                         1                     0        0      4
0-6 months    LCNI-5           MALAWI                         1                     1        0      4
0-6 months    LCNI-5           MALAWI                         2                     0        0      4
0-6 months    LCNI-5           MALAWI                         2                     1        0      4
0-6 months    LCNI-5           MALAWI                         3                     0        0      4
0-6 months    LCNI-5           MALAWI                         3                     1        0      4
0-6 months    LCNI-5           MALAWI                         4                     0        2      4
0-6 months    LCNI-5           MALAWI                         4                     1        0      4
0-6 months    LCNI-5           MALAWI                         5                     0        0      4
0-6 months    LCNI-5           MALAWI                         5                     1        0      4
0-6 months    LCNI-5           MALAWI                         6                     0        1      4
0-6 months    LCNI-5           MALAWI                         6                     1        0      4
0-6 months    LCNI-5           MALAWI                         7                     0        0      4
0-6 months    LCNI-5           MALAWI                         7                     1        0      4
0-6 months    LCNI-5           MALAWI                         8                     0        1      4
0-6 months    LCNI-5           MALAWI                         8                     1        0      4
0-6 months    LCNI-5           MALAWI                         9                     0        0      4
0-6 months    LCNI-5           MALAWI                         9                     1        0      4
0-6 months    LCNI-5           MALAWI                         10                    0        0      4
0-6 months    LCNI-5           MALAWI                         10                    1        0      4
0-6 months    LCNI-5           MALAWI                         11                    0        0      4
0-6 months    LCNI-5           MALAWI                         11                    1        0      4
0-6 months    LCNI-5           MALAWI                         12                    0        0      4
0-6 months    LCNI-5           MALAWI                         12                    1        0      4
0-6 months    LCNI-5           MALAWI                         13                    0        0      4
0-6 months    LCNI-5           MALAWI                         13                    1        0      4
0-6 months    LCNI-5           MALAWI                         14                    0        0      4
0-6 months    LCNI-5           MALAWI                         14                    1        0      4
0-6 months    LCNI-5           MALAWI                         15                    0        0      4
0-6 months    LCNI-5           MALAWI                         15                    1        0      4
0-6 months    LCNI-5           MALAWI                         16                    0        0      4
0-6 months    LCNI-5           MALAWI                         16                    1        0      4
0-6 months    LCNI-5           MALAWI                         17                    0        0      4
0-6 months    LCNI-5           MALAWI                         17                    1        0      4
0-6 months    LCNI-5           MALAWI                         18                    0        0      4
0-6 months    LCNI-5           MALAWI                         18                    1        0      4
0-6 months    LCNI-5           MALAWI                         19                    0        0      4
0-6 months    LCNI-5           MALAWI                         19                    1        0      4
0-6 months    LCNI-5           MALAWI                         24                    0        0      4
0-6 months    LCNI-5           MALAWI                         24                    1        0      4
0-6 months    LCNI-5           MALAWI                         27                    0        0      4
0-6 months    LCNI-5           MALAWI                         27                    1        0      4
0-6 months    MAL-ED           BANGLADESH                     0                     0        0     35
0-6 months    MAL-ED           BANGLADESH                     0                     1        0     35
0-6 months    MAL-ED           BANGLADESH                     1                     0        0     35
0-6 months    MAL-ED           BANGLADESH                     1                     1        3     35
0-6 months    MAL-ED           BANGLADESH                     2                     0        1     35
0-6 months    MAL-ED           BANGLADESH                     2                     1        2     35
0-6 months    MAL-ED           BANGLADESH                     3                     0        1     35
0-6 months    MAL-ED           BANGLADESH                     3                     1        5     35
0-6 months    MAL-ED           BANGLADESH                     4                     0        0     35
0-6 months    MAL-ED           BANGLADESH                     4                     1        1     35
0-6 months    MAL-ED           BANGLADESH                     5                     0        1     35
0-6 months    MAL-ED           BANGLADESH                     5                     1        6     35
0-6 months    MAL-ED           BANGLADESH                     6                     0        2     35
0-6 months    MAL-ED           BANGLADESH                     6                     1        1     35
0-6 months    MAL-ED           BANGLADESH                     7                     0        0     35
0-6 months    MAL-ED           BANGLADESH                     7                     1        3     35
0-6 months    MAL-ED           BANGLADESH                     8                     0        1     35
0-6 months    MAL-ED           BANGLADESH                     8                     1        1     35
0-6 months    MAL-ED           BANGLADESH                     9                     0        0     35
0-6 months    MAL-ED           BANGLADESH                     9                     1        1     35
0-6 months    MAL-ED           BANGLADESH                     10                    0        0     35
0-6 months    MAL-ED           BANGLADESH                     10                    1        3     35
0-6 months    MAL-ED           BANGLADESH                     11                    0        0     35
0-6 months    MAL-ED           BANGLADESH                     11                    1        0     35
0-6 months    MAL-ED           BANGLADESH                     12                    0        1     35
0-6 months    MAL-ED           BANGLADESH                     12                    1        2     35
0-6 months    MAL-ED           BANGLADESH                     13                    0        0     35
0-6 months    MAL-ED           BANGLADESH                     13                    1        0     35
0-6 months    MAL-ED           BANGLADESH                     14                    0        0     35
0-6 months    MAL-ED           BANGLADESH                     14                    1        0     35
0-6 months    MAL-ED           BANGLADESH                     15                    0        0     35
0-6 months    MAL-ED           BANGLADESH                     15                    1        0     35
0-6 months    MAL-ED           BANGLADESH                     16                    0        0     35
0-6 months    MAL-ED           BANGLADESH                     16                    1        0     35
0-6 months    MAL-ED           BANGLADESH                     17                    0        0     35
0-6 months    MAL-ED           BANGLADESH                     17                    1        0     35
0-6 months    MAL-ED           BANGLADESH                     18                    0        0     35
0-6 months    MAL-ED           BANGLADESH                     18                    1        0     35
0-6 months    MAL-ED           BANGLADESH                     19                    0        0     35
0-6 months    MAL-ED           BANGLADESH                     19                    1        0     35
0-6 months    MAL-ED           BANGLADESH                     24                    0        0     35
0-6 months    MAL-ED           BANGLADESH                     24                    1        0     35
0-6 months    MAL-ED           BANGLADESH                     27                    0        0     35
0-6 months    MAL-ED           BANGLADESH                     27                    1        0     35
0-6 months    MAL-ED           INDIA                          0                     0        0     46
0-6 months    MAL-ED           INDIA                          0                     1        0     46
0-6 months    MAL-ED           INDIA                          1                     0        0     46
0-6 months    MAL-ED           INDIA                          1                     1        0     46
0-6 months    MAL-ED           INDIA                          2                     0        0     46
0-6 months    MAL-ED           INDIA                          2                     1        1     46
0-6 months    MAL-ED           INDIA                          3                     0        3     46
0-6 months    MAL-ED           INDIA                          3                     1        2     46
0-6 months    MAL-ED           INDIA                          4                     0        0     46
0-6 months    MAL-ED           INDIA                          4                     1        2     46
0-6 months    MAL-ED           INDIA                          5                     0        2     46
0-6 months    MAL-ED           INDIA                          5                     1        9     46
0-6 months    MAL-ED           INDIA                          6                     0        2     46
0-6 months    MAL-ED           INDIA                          6                     1        0     46
0-6 months    MAL-ED           INDIA                          7                     0        1     46
0-6 months    MAL-ED           INDIA                          7                     1        4     46
0-6 months    MAL-ED           INDIA                          8                     0        3     46
0-6 months    MAL-ED           INDIA                          8                     1        3     46
0-6 months    MAL-ED           INDIA                          9                     0        1     46
0-6 months    MAL-ED           INDIA                          9                     1        7     46
0-6 months    MAL-ED           INDIA                          10                    0        0     46
0-6 months    MAL-ED           INDIA                          10                    1        1     46
0-6 months    MAL-ED           INDIA                          11                    0        0     46
0-6 months    MAL-ED           INDIA                          11                    1        0     46
0-6 months    MAL-ED           INDIA                          12                    0        0     46
0-6 months    MAL-ED           INDIA                          12                    1        0     46
0-6 months    MAL-ED           INDIA                          13                    0        0     46
0-6 months    MAL-ED           INDIA                          13                    1        1     46
0-6 months    MAL-ED           INDIA                          14                    0        0     46
0-6 months    MAL-ED           INDIA                          14                    1        2     46
0-6 months    MAL-ED           INDIA                          15                    0        0     46
0-6 months    MAL-ED           INDIA                          15                    1        1     46
0-6 months    MAL-ED           INDIA                          16                    0        0     46
0-6 months    MAL-ED           INDIA                          16                    1        0     46
0-6 months    MAL-ED           INDIA                          17                    0        0     46
0-6 months    MAL-ED           INDIA                          17                    1        0     46
0-6 months    MAL-ED           INDIA                          18                    0        0     46
0-6 months    MAL-ED           INDIA                          18                    1        1     46
0-6 months    MAL-ED           INDIA                          19                    0        0     46
0-6 months    MAL-ED           INDIA                          19                    1        0     46
0-6 months    MAL-ED           INDIA                          24                    0        0     46
0-6 months    MAL-ED           INDIA                          24                    1        0     46
0-6 months    MAL-ED           INDIA                          27                    0        0     46
0-6 months    MAL-ED           INDIA                          27                    1        0     46
0-6 months    MAL-ED           NEPAL                          0                     0        0     19
0-6 months    MAL-ED           NEPAL                          0                     1        0     19
0-6 months    MAL-ED           NEPAL                          1                     0        0     19
0-6 months    MAL-ED           NEPAL                          1                     1        0     19
0-6 months    MAL-ED           NEPAL                          2                     0        0     19
0-6 months    MAL-ED           NEPAL                          2                     1        0     19
0-6 months    MAL-ED           NEPAL                          3                     0        0     19
0-6 months    MAL-ED           NEPAL                          3                     1        1     19
0-6 months    MAL-ED           NEPAL                          4                     0        0     19
0-6 months    MAL-ED           NEPAL                          4                     1        4     19
0-6 months    MAL-ED           NEPAL                          5                     0        1     19
0-6 months    MAL-ED           NEPAL                          5                     1        1     19
0-6 months    MAL-ED           NEPAL                          6                     0        0     19
0-6 months    MAL-ED           NEPAL                          6                     1        0     19
0-6 months    MAL-ED           NEPAL                          7                     0        1     19
0-6 months    MAL-ED           NEPAL                          7                     1        0     19
0-6 months    MAL-ED           NEPAL                          8                     0        0     19
0-6 months    MAL-ED           NEPAL                          8                     1        2     19
0-6 months    MAL-ED           NEPAL                          9                     0        0     19
0-6 months    MAL-ED           NEPAL                          9                     1        0     19
0-6 months    MAL-ED           NEPAL                          10                    0        2     19
0-6 months    MAL-ED           NEPAL                          10                    1        4     19
0-6 months    MAL-ED           NEPAL                          11                    0        0     19
0-6 months    MAL-ED           NEPAL                          11                    1        1     19
0-6 months    MAL-ED           NEPAL                          12                    0        0     19
0-6 months    MAL-ED           NEPAL                          12                    1        2     19
0-6 months    MAL-ED           NEPAL                          13                    0        0     19
0-6 months    MAL-ED           NEPAL                          13                    1        0     19
0-6 months    MAL-ED           NEPAL                          14                    0        0     19
0-6 months    MAL-ED           NEPAL                          14                    1        0     19
0-6 months    MAL-ED           NEPAL                          15                    0        0     19
0-6 months    MAL-ED           NEPAL                          15                    1        0     19
0-6 months    MAL-ED           NEPAL                          16                    0        0     19
0-6 months    MAL-ED           NEPAL                          16                    1        0     19
0-6 months    MAL-ED           NEPAL                          17                    0        0     19
0-6 months    MAL-ED           NEPAL                          17                    1        0     19
0-6 months    MAL-ED           NEPAL                          18                    0        0     19
0-6 months    MAL-ED           NEPAL                          18                    1        0     19
0-6 months    MAL-ED           NEPAL                          19                    0        0     19
0-6 months    MAL-ED           NEPAL                          19                    1        0     19
0-6 months    MAL-ED           NEPAL                          24                    0        0     19
0-6 months    MAL-ED           NEPAL                          24                    1        0     19
0-6 months    MAL-ED           NEPAL                          27                    0        0     19
0-6 months    MAL-ED           NEPAL                          27                    1        0     19
0-6 months    MAL-ED           PERU                           0                     0        0      7
0-6 months    MAL-ED           PERU                           0                     1        0      7
0-6 months    MAL-ED           PERU                           1                     0        0      7
0-6 months    MAL-ED           PERU                           1                     1        0      7
0-6 months    MAL-ED           PERU                           2                     0        0      7
0-6 months    MAL-ED           PERU                           2                     1        0      7
0-6 months    MAL-ED           PERU                           3                     0        0      7
0-6 months    MAL-ED           PERU                           3                     1        0      7
0-6 months    MAL-ED           PERU                           4                     0        0      7
0-6 months    MAL-ED           PERU                           4                     1        0      7
0-6 months    MAL-ED           PERU                           5                     0        0      7
0-6 months    MAL-ED           PERU                           5                     1        0      7
0-6 months    MAL-ED           PERU                           6                     0        0      7
0-6 months    MAL-ED           PERU                           6                     1        2      7
0-6 months    MAL-ED           PERU                           7                     0        0      7
0-6 months    MAL-ED           PERU                           7                     1        0      7
0-6 months    MAL-ED           PERU                           8                     0        0      7
0-6 months    MAL-ED           PERU                           8                     1        2      7
0-6 months    MAL-ED           PERU                           9                     0        0      7
0-6 months    MAL-ED           PERU                           9                     1        0      7
0-6 months    MAL-ED           PERU                           10                    0        0      7
0-6 months    MAL-ED           PERU                           10                    1        1      7
0-6 months    MAL-ED           PERU                           11                    0        0      7
0-6 months    MAL-ED           PERU                           11                    1        2      7
0-6 months    MAL-ED           PERU                           12                    0        0      7
0-6 months    MAL-ED           PERU                           12                    1        0      7
0-6 months    MAL-ED           PERU                           13                    0        0      7
0-6 months    MAL-ED           PERU                           13                    1        0      7
0-6 months    MAL-ED           PERU                           14                    0        0      7
0-6 months    MAL-ED           PERU                           14                    1        0      7
0-6 months    MAL-ED           PERU                           15                    0        0      7
0-6 months    MAL-ED           PERU                           15                    1        0      7
0-6 months    MAL-ED           PERU                           16                    0        0      7
0-6 months    MAL-ED           PERU                           16                    1        0      7
0-6 months    MAL-ED           PERU                           17                    0        0      7
0-6 months    MAL-ED           PERU                           17                    1        0      7
0-6 months    MAL-ED           PERU                           18                    0        0      7
0-6 months    MAL-ED           PERU                           18                    1        0      7
0-6 months    MAL-ED           PERU                           19                    0        0      7
0-6 months    MAL-ED           PERU                           19                    1        0      7
0-6 months    MAL-ED           PERU                           24                    0        0      7
0-6 months    MAL-ED           PERU                           24                    1        0      7
0-6 months    MAL-ED           PERU                           27                    0        0      7
0-6 months    MAL-ED           PERU                           27                    1        0      7
0-6 months    MAL-ED           SOUTH AFRICA                   0                     0        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   0                     1        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   1                     0        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   1                     1        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   2                     0        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   2                     1        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   3                     0        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   3                     1        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   4                     0        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   4                     1        1      9
0-6 months    MAL-ED           SOUTH AFRICA                   5                     0        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   5                     1        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   6                     0        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   6                     1        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   7                     0        1      9
0-6 months    MAL-ED           SOUTH AFRICA                   7                     1        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   8                     0        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   8                     1        1      9
0-6 months    MAL-ED           SOUTH AFRICA                   9                     0        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   9                     1        1      9
0-6 months    MAL-ED           SOUTH AFRICA                   10                    0        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   10                    1        1      9
0-6 months    MAL-ED           SOUTH AFRICA                   11                    0        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   11                    1        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   12                    0        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   12                    1        3      9
0-6 months    MAL-ED           SOUTH AFRICA                   13                    0        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   13                    1        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   14                    0        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   14                    1        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   15                    0        1      9
0-6 months    MAL-ED           SOUTH AFRICA                   15                    1        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   16                    0        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   16                    1        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   17                    0        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   17                    1        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   18                    0        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   18                    1        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   19                    0        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   19                    1        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   24                    0        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   24                    1        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   27                    0        0      9
0-6 months    MAL-ED           SOUTH AFRICA                   27                    1        0      9
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        1     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     1        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     1        3     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     1        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     1        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     1        1     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     0        1     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     1        4     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     1        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     1        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    1        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    1        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    1        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                    0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                    1        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                    0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                    1        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                    0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                    1        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                    0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                    1        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                    0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                    1        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                    0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                    1        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                    0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                    1        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                    0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                    1        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                    0        0     10
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                    1        0     10
0-6 months    NIH-Crypto       BANGLADESH                     0                     0        5    197
0-6 months    NIH-Crypto       BANGLADESH                     0                     1       43    197
0-6 months    NIH-Crypto       BANGLADESH                     1                     0        0    197
0-6 months    NIH-Crypto       BANGLADESH                     1                     1        8    197
0-6 months    NIH-Crypto       BANGLADESH                     2                     0        0    197
0-6 months    NIH-Crypto       BANGLADESH                     2                     1        5    197
0-6 months    NIH-Crypto       BANGLADESH                     3                     0        2    197
0-6 months    NIH-Crypto       BANGLADESH                     3                     1        7    197
0-6 months    NIH-Crypto       BANGLADESH                     4                     0        0    197
0-6 months    NIH-Crypto       BANGLADESH                     4                     1       10    197
0-6 months    NIH-Crypto       BANGLADESH                     5                     0        2    197
0-6 months    NIH-Crypto       BANGLADESH                     5                     1       17    197
0-6 months    NIH-Crypto       BANGLADESH                     6                     0        1    197
0-6 months    NIH-Crypto       BANGLADESH                     6                     1        6    197
0-6 months    NIH-Crypto       BANGLADESH                     7                     0        0    197
0-6 months    NIH-Crypto       BANGLADESH                     7                     1       12    197
0-6 months    NIH-Crypto       BANGLADESH                     8                     0        4    197
0-6 months    NIH-Crypto       BANGLADESH                     8                     1       21    197
0-6 months    NIH-Crypto       BANGLADESH                     9                     0        2    197
0-6 months    NIH-Crypto       BANGLADESH                     9                     1       15    197
0-6 months    NIH-Crypto       BANGLADESH                     10                    0        3    197
0-6 months    NIH-Crypto       BANGLADESH                     10                    1       11    197
0-6 months    NIH-Crypto       BANGLADESH                     11                    0        0    197
0-6 months    NIH-Crypto       BANGLADESH                     11                    1        0    197
0-6 months    NIH-Crypto       BANGLADESH                     12                    0        1    197
0-6 months    NIH-Crypto       BANGLADESH                     12                    1       14    197
0-6 months    NIH-Crypto       BANGLADESH                     13                    0        0    197
0-6 months    NIH-Crypto       BANGLADESH                     13                    1        0    197
0-6 months    NIH-Crypto       BANGLADESH                     14                    0        0    197
0-6 months    NIH-Crypto       BANGLADESH                     14                    1        3    197
0-6 months    NIH-Crypto       BANGLADESH                     15                    0        0    197
0-6 months    NIH-Crypto       BANGLADESH                     15                    1        3    197
0-6 months    NIH-Crypto       BANGLADESH                     16                    0        0    197
0-6 months    NIH-Crypto       BANGLADESH                     16                    1        0    197
0-6 months    NIH-Crypto       BANGLADESH                     17                    0        1    197
0-6 months    NIH-Crypto       BANGLADESH                     17                    1        1    197
0-6 months    NIH-Crypto       BANGLADESH                     18                    0        0    197
0-6 months    NIH-Crypto       BANGLADESH                     18                    1        0    197
0-6 months    NIH-Crypto       BANGLADESH                     19                    0        0    197
0-6 months    NIH-Crypto       BANGLADESH                     19                    1        0    197
0-6 months    NIH-Crypto       BANGLADESH                     24                    0        0    197
0-6 months    NIH-Crypto       BANGLADESH                     24                    1        0    197
0-6 months    NIH-Crypto       BANGLADESH                     27                    0        0    197
0-6 months    NIH-Crypto       BANGLADESH                     27                    1        0    197
0-6 months    PROBIT           BELARUS                        0                     0        0   4093
0-6 months    PROBIT           BELARUS                        0                     1        0   4093
0-6 months    PROBIT           BELARUS                        1                     0        0   4093
0-6 months    PROBIT           BELARUS                        1                     1        0   4093
0-6 months    PROBIT           BELARUS                        2                     0        0   4093
0-6 months    PROBIT           BELARUS                        2                     1        0   4093
0-6 months    PROBIT           BELARUS                        3                     0        0   4093
0-6 months    PROBIT           BELARUS                        3                     1        0   4093
0-6 months    PROBIT           BELARUS                        4                     0        0   4093
0-6 months    PROBIT           BELARUS                        4                     1        0   4093
0-6 months    PROBIT           BELARUS                        5                     0        0   4093
0-6 months    PROBIT           BELARUS                        5                     1        0   4093
0-6 months    PROBIT           BELARUS                        6                     0        0   4093
0-6 months    PROBIT           BELARUS                        6                     1        0   4093
0-6 months    PROBIT           BELARUS                        7                     0        0   4093
0-6 months    PROBIT           BELARUS                        7                     1        0   4093
0-6 months    PROBIT           BELARUS                        8                     0        3   4093
0-6 months    PROBIT           BELARUS                        8                     1        6   4093
0-6 months    PROBIT           BELARUS                        9                     0        0   4093
0-6 months    PROBIT           BELARUS                        9                     1        0   4093
0-6 months    PROBIT           BELARUS                        10                    0        8   4093
0-6 months    PROBIT           BELARUS                        10                    1       77   4093
0-6 months    PROBIT           BELARUS                        11                    0        0   4093
0-6 months    PROBIT           BELARUS                        11                    1        0   4093
0-6 months    PROBIT           BELARUS                        12                    0      167   4093
0-6 months    PROBIT           BELARUS                        12                    1     1380   4093
0-6 months    PROBIT           BELARUS                        13                    0      168   4093
0-6 months    PROBIT           BELARUS                        13                    1     1655   4093
0-6 months    PROBIT           BELARUS                        14                    0       13   4093
0-6 months    PROBIT           BELARUS                        14                    1       87   4093
0-6 months    PROBIT           BELARUS                        15                    0        0   4093
0-6 months    PROBIT           BELARUS                        15                    1        0   4093
0-6 months    PROBIT           BELARUS                        16                    0       51   4093
0-6 months    PROBIT           BELARUS                        16                    1      478   4093
0-6 months    PROBIT           BELARUS                        17                    0        0   4093
0-6 months    PROBIT           BELARUS                        17                    1        0   4093
0-6 months    PROBIT           BELARUS                        18                    0        0   4093
0-6 months    PROBIT           BELARUS                        18                    1        0   4093
0-6 months    PROBIT           BELARUS                        19                    0        0   4093
0-6 months    PROBIT           BELARUS                        19                    1        0   4093
0-6 months    PROBIT           BELARUS                        24                    0        0   4093
0-6 months    PROBIT           BELARUS                        24                    1        0   4093
0-6 months    PROBIT           BELARUS                        27                    0        0   4093
0-6 months    PROBIT           BELARUS                        27                    1        0   4093
0-6 months    PROVIDE          BANGLADESH                     0                     0       15    185
0-6 months    PROVIDE          BANGLADESH                     0                     1       50    185
0-6 months    PROVIDE          BANGLADESH                     1                     0        0    185
0-6 months    PROVIDE          BANGLADESH                     1                     1        3    185
0-6 months    PROVIDE          BANGLADESH                     2                     0        2    185
0-6 months    PROVIDE          BANGLADESH                     2                     1        2    185
0-6 months    PROVIDE          BANGLADESH                     3                     0        1    185
0-6 months    PROVIDE          BANGLADESH                     3                     1        8    185
0-6 months    PROVIDE          BANGLADESH                     4                     0        2    185
0-6 months    PROVIDE          BANGLADESH                     4                     1       10    185
0-6 months    PROVIDE          BANGLADESH                     5                     0        7    185
0-6 months    PROVIDE          BANGLADESH                     5                     1       19    185
0-6 months    PROVIDE          BANGLADESH                     6                     0        2    185
0-6 months    PROVIDE          BANGLADESH                     6                     1        5    185
0-6 months    PROVIDE          BANGLADESH                     7                     0        0    185
0-6 months    PROVIDE          BANGLADESH                     7                     1        7    185
0-6 months    PROVIDE          BANGLADESH                     8                     0        2    185
0-6 months    PROVIDE          BANGLADESH                     8                     1       18    185
0-6 months    PROVIDE          BANGLADESH                     9                     0        4    185
0-6 months    PROVIDE          BANGLADESH                     9                     1        7    185
0-6 months    PROVIDE          BANGLADESH                     10                    0        2    185
0-6 months    PROVIDE          BANGLADESH                     10                    1        7    185
0-6 months    PROVIDE          BANGLADESH                     11                    0        0    185
0-6 months    PROVIDE          BANGLADESH                     11                    1        3    185
0-6 months    PROVIDE          BANGLADESH                     12                    0        0    185
0-6 months    PROVIDE          BANGLADESH                     12                    1        1    185
0-6 months    PROVIDE          BANGLADESH                     13                    0        0    185
0-6 months    PROVIDE          BANGLADESH                     13                    1        0    185
0-6 months    PROVIDE          BANGLADESH                     14                    0        2    185
0-6 months    PROVIDE          BANGLADESH                     14                    1        3    185
0-6 months    PROVIDE          BANGLADESH                     15                    0        0    185
0-6 months    PROVIDE          BANGLADESH                     15                    1        1    185
0-6 months    PROVIDE          BANGLADESH                     16                    0        1    185
0-6 months    PROVIDE          BANGLADESH                     16                    1        1    185
0-6 months    PROVIDE          BANGLADESH                     17                    0        0    185
0-6 months    PROVIDE          BANGLADESH                     17                    1        0    185
0-6 months    PROVIDE          BANGLADESH                     18                    0        0    185
0-6 months    PROVIDE          BANGLADESH                     18                    1        0    185
0-6 months    PROVIDE          BANGLADESH                     19                    0        0    185
0-6 months    PROVIDE          BANGLADESH                     19                    1        0    185
0-6 months    PROVIDE          BANGLADESH                     24                    0        0    185
0-6 months    PROVIDE          BANGLADESH                     24                    1        0    185
0-6 months    PROVIDE          BANGLADESH                     27                    0        0    185
0-6 months    PROVIDE          BANGLADESH                     27                    1        0    185
0-6 months    SAS-CompFeed     INDIA                          0                     0       30    340
0-6 months    SAS-CompFeed     INDIA                          0                     1       24    340
0-6 months    SAS-CompFeed     INDIA                          1                     0        0    340
0-6 months    SAS-CompFeed     INDIA                          1                     1        0    340
0-6 months    SAS-CompFeed     INDIA                          2                     0        1    340
0-6 months    SAS-CompFeed     INDIA                          2                     1        0    340
0-6 months    SAS-CompFeed     INDIA                          3                     0        2    340
0-6 months    SAS-CompFeed     INDIA                          3                     1        2    340
0-6 months    SAS-CompFeed     INDIA                          4                     0        2    340
0-6 months    SAS-CompFeed     INDIA                          4                     1        5    340
0-6 months    SAS-CompFeed     INDIA                          5                     0       15    340
0-6 months    SAS-CompFeed     INDIA                          5                     1       10    340
0-6 months    SAS-CompFeed     INDIA                          6                     0        5    340
0-6 months    SAS-CompFeed     INDIA                          6                     1        5    340
0-6 months    SAS-CompFeed     INDIA                          7                     0       14    340
0-6 months    SAS-CompFeed     INDIA                          7                     1        8    340
0-6 months    SAS-CompFeed     INDIA                          8                     0       14    340
0-6 months    SAS-CompFeed     INDIA                          8                     1       18    340
0-6 months    SAS-CompFeed     INDIA                          9                     0        5    340
0-6 months    SAS-CompFeed     INDIA                          9                     1       13    340
0-6 months    SAS-CompFeed     INDIA                          10                    0       42    340
0-6 months    SAS-CompFeed     INDIA                          10                    1       46    340
0-6 months    SAS-CompFeed     INDIA                          11                    0        4    340
0-6 months    SAS-CompFeed     INDIA                          11                    1        5    340
0-6 months    SAS-CompFeed     INDIA                          12                    0       20    340
0-6 months    SAS-CompFeed     INDIA                          12                    1       25    340
0-6 months    SAS-CompFeed     INDIA                          13                    0        1    340
0-6 months    SAS-CompFeed     INDIA                          13                    1        1    340
0-6 months    SAS-CompFeed     INDIA                          14                    0        2    340
0-6 months    SAS-CompFeed     INDIA                          14                    1        2    340
0-6 months    SAS-CompFeed     INDIA                          15                    0        6    340
0-6 months    SAS-CompFeed     INDIA                          15                    1       10    340
0-6 months    SAS-CompFeed     INDIA                          16                    0        0    340
0-6 months    SAS-CompFeed     INDIA                          16                    1        0    340
0-6 months    SAS-CompFeed     INDIA                          17                    0        1    340
0-6 months    SAS-CompFeed     INDIA                          17                    1        1    340
0-6 months    SAS-CompFeed     INDIA                          18                    0        0    340
0-6 months    SAS-CompFeed     INDIA                          18                    1        0    340
0-6 months    SAS-CompFeed     INDIA                          19                    0        1    340
0-6 months    SAS-CompFeed     INDIA                          19                    1        0    340
0-6 months    SAS-CompFeed     INDIA                          24                    0        0    340
0-6 months    SAS-CompFeed     INDIA                          24                    1        0    340
0-6 months    SAS-CompFeed     INDIA                          27                    0        0    340
0-6 months    SAS-CompFeed     INDIA                          27                    1        0    340
0-6 months    SAS-FoodSuppl    INDIA                          0                     0       26     78
0-6 months    SAS-FoodSuppl    INDIA                          0                     1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          1                     0        0     78
0-6 months    SAS-FoodSuppl    INDIA                          1                     1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          2                     0        3     78
0-6 months    SAS-FoodSuppl    INDIA                          2                     1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          3                     0        2     78
0-6 months    SAS-FoodSuppl    INDIA                          3                     1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          4                     0        2     78
0-6 months    SAS-FoodSuppl    INDIA                          4                     1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          5                     0       12     78
0-6 months    SAS-FoodSuppl    INDIA                          5                     1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          6                     0        5     78
0-6 months    SAS-FoodSuppl    INDIA                          6                     1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          7                     0        2     78
0-6 months    SAS-FoodSuppl    INDIA                          7                     1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          8                     0        9     78
0-6 months    SAS-FoodSuppl    INDIA                          8                     1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          9                     0        4     78
0-6 months    SAS-FoodSuppl    INDIA                          9                     1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          10                    0       10     78
0-6 months    SAS-FoodSuppl    INDIA                          10                    1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          11                    0        0     78
0-6 months    SAS-FoodSuppl    INDIA                          11                    1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          12                    0        0     78
0-6 months    SAS-FoodSuppl    INDIA                          12                    1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          13                    0        0     78
0-6 months    SAS-FoodSuppl    INDIA                          13                    1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          14                    0        2     78
0-6 months    SAS-FoodSuppl    INDIA                          14                    1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          15                    0        1     78
0-6 months    SAS-FoodSuppl    INDIA                          15                    1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          16                    0        0     78
0-6 months    SAS-FoodSuppl    INDIA                          16                    1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          17                    0        0     78
0-6 months    SAS-FoodSuppl    INDIA                          17                    1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          18                    0        0     78
0-6 months    SAS-FoodSuppl    INDIA                          18                    1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          19                    0        0     78
0-6 months    SAS-FoodSuppl    INDIA                          19                    1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          24                    0        0     78
0-6 months    SAS-FoodSuppl    INDIA                          24                    1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          27                    0        0     78
0-6 months    SAS-FoodSuppl    INDIA                          27                    1        0     78
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1        1    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0       53    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1      131    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0        2    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1        9    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0        3    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1        3    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0       24    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1       59    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0        1    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1        1    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                    0        4    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                    1       10    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                    0        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                    1        2    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                    0        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                    1        2    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                    0        1    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                    1        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                    0        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                    1        1    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                    0        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                    1        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                    0        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                    1        0    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                    0        1    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                    1        4    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                    0       12    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                    1       16    340
0-6 months    ZVITAMBO         ZIMBABWE                       0                     0        3   2429
0-6 months    ZVITAMBO         ZIMBABWE                       0                     1        7   2429
0-6 months    ZVITAMBO         ZIMBABWE                       1                     0        0   2429
0-6 months    ZVITAMBO         ZIMBABWE                       1                     1        0   2429
0-6 months    ZVITAMBO         ZIMBABWE                       2                     0        0   2429
0-6 months    ZVITAMBO         ZIMBABWE                       2                     1        1   2429
0-6 months    ZVITAMBO         ZIMBABWE                       3                     0        3   2429
0-6 months    ZVITAMBO         ZIMBABWE                       3                     1        3   2429
0-6 months    ZVITAMBO         ZIMBABWE                       4                     0        0   2429
0-6 months    ZVITAMBO         ZIMBABWE                       4                     1        2   2429
0-6 months    ZVITAMBO         ZIMBABWE                       5                     0        2   2429
0-6 months    ZVITAMBO         ZIMBABWE                       5                     1        9   2429
0-6 months    ZVITAMBO         ZIMBABWE                       6                     0        4   2429
0-6 months    ZVITAMBO         ZIMBABWE                       6                     1        4   2429
0-6 months    ZVITAMBO         ZIMBABWE                       7                     0       38   2429
0-6 months    ZVITAMBO         ZIMBABWE                       7                     1       96   2429
0-6 months    ZVITAMBO         ZIMBABWE                       8                     0        1   2429
0-6 months    ZVITAMBO         ZIMBABWE                       8                     1       14   2429
0-6 months    ZVITAMBO         ZIMBABWE                       9                     0       35   2429
0-6 months    ZVITAMBO         ZIMBABWE                       9                     1      128   2429
0-6 months    ZVITAMBO         ZIMBABWE                       10                    0       19   2429
0-6 months    ZVITAMBO         ZIMBABWE                       10                    1       37   2429
0-6 months    ZVITAMBO         ZIMBABWE                       11                    0      478   2429
0-6 months    ZVITAMBO         ZIMBABWE                       11                    1     1373   2429
0-6 months    ZVITAMBO         ZIMBABWE                       12                    0        1   2429
0-6 months    ZVITAMBO         ZIMBABWE                       12                    1        8   2429
0-6 months    ZVITAMBO         ZIMBABWE                       13                    0       33   2429
0-6 months    ZVITAMBO         ZIMBABWE                       13                    1      130   2429
0-6 months    ZVITAMBO         ZIMBABWE                       14                    0        0   2429
0-6 months    ZVITAMBO         ZIMBABWE                       14                    1        0   2429
0-6 months    ZVITAMBO         ZIMBABWE                       15                    0        0   2429
0-6 months    ZVITAMBO         ZIMBABWE                       15                    1        0   2429
0-6 months    ZVITAMBO         ZIMBABWE                       16                    0        0   2429
0-6 months    ZVITAMBO         ZIMBABWE                       16                    1        0   2429
0-6 months    ZVITAMBO         ZIMBABWE                       17                    0        0   2429
0-6 months    ZVITAMBO         ZIMBABWE                       17                    1        0   2429
0-6 months    ZVITAMBO         ZIMBABWE                       18                    0        0   2429
0-6 months    ZVITAMBO         ZIMBABWE                       18                    1        0   2429
0-6 months    ZVITAMBO         ZIMBABWE                       19                    0        0   2429
0-6 months    ZVITAMBO         ZIMBABWE                       19                    1        0   2429
0-6 months    ZVITAMBO         ZIMBABWE                       24                    0        0   2429
0-6 months    ZVITAMBO         ZIMBABWE                       24                    1        0   2429
0-6 months    ZVITAMBO         ZIMBABWE                       27                    0        0   2429
0-6 months    ZVITAMBO         ZIMBABWE                       27                    1        0   2429
6-24 months   COHORTS          GUATEMALA                      0                     0       69    157
6-24 months   COHORTS          GUATEMALA                      0                     1        2    157
6-24 months   COHORTS          GUATEMALA                      1                     0       11    157
6-24 months   COHORTS          GUATEMALA                      1                     1        0    157
6-24 months   COHORTS          GUATEMALA                      2                     0       23    157
6-24 months   COHORTS          GUATEMALA                      2                     1        1    157
6-24 months   COHORTS          GUATEMALA                      3                     0       18    157
6-24 months   COHORTS          GUATEMALA                      3                     1        2    157
6-24 months   COHORTS          GUATEMALA                      4                     0       16    157
6-24 months   COHORTS          GUATEMALA                      4                     1        0    157
6-24 months   COHORTS          GUATEMALA                      5                     0        3    157
6-24 months   COHORTS          GUATEMALA                      5                     1        1    157
6-24 months   COHORTS          GUATEMALA                      6                     0        9    157
6-24 months   COHORTS          GUATEMALA                      6                     1        2    157
6-24 months   COHORTS          GUATEMALA                      7                     0        0    157
6-24 months   COHORTS          GUATEMALA                      7                     1        0    157
6-24 months   COHORTS          GUATEMALA                      8                     0        0    157
6-24 months   COHORTS          GUATEMALA                      8                     1        0    157
6-24 months   COHORTS          GUATEMALA                      9                     0        0    157
6-24 months   COHORTS          GUATEMALA                      9                     1        0    157
6-24 months   COHORTS          GUATEMALA                      10                    0        0    157
6-24 months   COHORTS          GUATEMALA                      10                    1        0    157
6-24 months   COHORTS          GUATEMALA                      11                    0        0    157
6-24 months   COHORTS          GUATEMALA                      11                    1        0    157
6-24 months   COHORTS          GUATEMALA                      12                    0        0    157
6-24 months   COHORTS          GUATEMALA                      12                    1        0    157
6-24 months   COHORTS          GUATEMALA                      13                    0        0    157
6-24 months   COHORTS          GUATEMALA                      13                    1        0    157
6-24 months   COHORTS          GUATEMALA                      14                    0        0    157
6-24 months   COHORTS          GUATEMALA                      14                    1        0    157
6-24 months   COHORTS          GUATEMALA                      15                    0        0    157
6-24 months   COHORTS          GUATEMALA                      15                    1        0    157
6-24 months   COHORTS          GUATEMALA                      16                    0        0    157
6-24 months   COHORTS          GUATEMALA                      16                    1        0    157
6-24 months   COHORTS          GUATEMALA                      17                    0        0    157
6-24 months   COHORTS          GUATEMALA                      17                    1        0    157
6-24 months   COHORTS          GUATEMALA                      18                    0        0    157
6-24 months   COHORTS          GUATEMALA                      18                    1        0    157
6-24 months   COHORTS          GUATEMALA                      19                    0        0    157
6-24 months   COHORTS          GUATEMALA                      19                    1        0    157
6-24 months   COHORTS          GUATEMALA                      24                    0        0    157
6-24 months   COHORTS          GUATEMALA                      24                    1        0    157
6-24 months   COHORTS          GUATEMALA                      27                    0        0    157
6-24 months   COHORTS          GUATEMALA                      27                    1        0    157
6-24 months   COHORTS          INDIA                          0                     0       31    190
6-24 months   COHORTS          INDIA                          0                     1        0    190
6-24 months   COHORTS          INDIA                          1                     0        0    190
6-24 months   COHORTS          INDIA                          1                     1        0    190
6-24 months   COHORTS          INDIA                          2                     0        0    190
6-24 months   COHORTS          INDIA                          2                     1        0    190
6-24 months   COHORTS          INDIA                          3                     0       21    190
6-24 months   COHORTS          INDIA                          3                     1        0    190
6-24 months   COHORTS          INDIA                          4                     0        0    190
6-24 months   COHORTS          INDIA                          4                     1        0    190
6-24 months   COHORTS          INDIA                          5                     0        0    190
6-24 months   COHORTS          INDIA                          5                     1        0    190
6-24 months   COHORTS          INDIA                          6                     0        0    190
6-24 months   COHORTS          INDIA                          6                     1        0    190
6-24 months   COHORTS          INDIA                          7                     0        0    190
6-24 months   COHORTS          INDIA                          7                     1        0    190
6-24 months   COHORTS          INDIA                          8                     0       33    190
6-24 months   COHORTS          INDIA                          8                     1        0    190
6-24 months   COHORTS          INDIA                          9                     0        0    190
6-24 months   COHORTS          INDIA                          9                     1        0    190
6-24 months   COHORTS          INDIA                          10                    0        0    190
6-24 months   COHORTS          INDIA                          10                    1        0    190
6-24 months   COHORTS          INDIA                          11                    0        0    190
6-24 months   COHORTS          INDIA                          11                    1        0    190
6-24 months   COHORTS          INDIA                          12                    0       50    190
6-24 months   COHORTS          INDIA                          12                    1        0    190
6-24 months   COHORTS          INDIA                          13                    0        0    190
6-24 months   COHORTS          INDIA                          13                    1        0    190
6-24 months   COHORTS          INDIA                          14                    0       16    190
6-24 months   COHORTS          INDIA                          14                    1        0    190
6-24 months   COHORTS          INDIA                          15                    0       29    190
6-24 months   COHORTS          INDIA                          15                    1        0    190
6-24 months   COHORTS          INDIA                          16                    0        0    190
6-24 months   COHORTS          INDIA                          16                    1        0    190
6-24 months   COHORTS          INDIA                          17                    0       10    190
6-24 months   COHORTS          INDIA                          17                    1        0    190
6-24 months   COHORTS          INDIA                          18                    0        0    190
6-24 months   COHORTS          INDIA                          18                    1        0    190
6-24 months   COHORTS          INDIA                          19                    0        0    190
6-24 months   COHORTS          INDIA                          19                    1        0    190
6-24 months   COHORTS          INDIA                          24                    0        0    190
6-24 months   COHORTS          INDIA                          24                    1        0    190
6-24 months   COHORTS          INDIA                          27                    0        0    190
6-24 months   COHORTS          INDIA                          27                    1        0    190
6-24 months   COHORTS          PHILIPPINES                    0                     0       13    885
6-24 months   COHORTS          PHILIPPINES                    0                     1       16    885
6-24 months   COHORTS          PHILIPPINES                    1                     0       13    885
6-24 months   COHORTS          PHILIPPINES                    1                     1        7    885
6-24 months   COHORTS          PHILIPPINES                    2                     0       23    885
6-24 months   COHORTS          PHILIPPINES                    2                     1       18    885
6-24 months   COHORTS          PHILIPPINES                    3                     0       35    885
6-24 months   COHORTS          PHILIPPINES                    3                     1       32    885
6-24 months   COHORTS          PHILIPPINES                    4                     0       45    885
6-24 months   COHORTS          PHILIPPINES                    4                     1       39    885
6-24 months   COHORTS          PHILIPPINES                    5                     0       38    885
6-24 months   COHORTS          PHILIPPINES                    5                     1       34    885
6-24 months   COHORTS          PHILIPPINES                    6                     0      109    885
6-24 months   COHORTS          PHILIPPINES                    6                     1      105    885
6-24 months   COHORTS          PHILIPPINES                    7                     0       25    885
6-24 months   COHORTS          PHILIPPINES                    7                     1       31    885
6-24 months   COHORTS          PHILIPPINES                    8                     0       30    885
6-24 months   COHORTS          PHILIPPINES                    8                     1       33    885
6-24 months   COHORTS          PHILIPPINES                    9                     0       21    885
6-24 months   COHORTS          PHILIPPINES                    9                     1       43    885
6-24 months   COHORTS          PHILIPPINES                    10                    0       39    885
6-24 months   COHORTS          PHILIPPINES                    10                    1       36    885
6-24 months   COHORTS          PHILIPPINES                    11                    0       15    885
6-24 months   COHORTS          PHILIPPINES                    11                    1       14    885
6-24 months   COHORTS          PHILIPPINES                    12                    0       16    885
6-24 months   COHORTS          PHILIPPINES                    12                    1       18    885
6-24 months   COHORTS          PHILIPPINES                    13                    0        2    885
6-24 months   COHORTS          PHILIPPINES                    13                    1       10    885
6-24 months   COHORTS          PHILIPPINES                    14                    0       10    885
6-24 months   COHORTS          PHILIPPINES                    14                    1        7    885
6-24 months   COHORTS          PHILIPPINES                    15                    0        2    885
6-24 months   COHORTS          PHILIPPINES                    15                    1        6    885
6-24 months   COHORTS          PHILIPPINES                    16                    0        0    885
6-24 months   COHORTS          PHILIPPINES                    16                    1        0    885
6-24 months   COHORTS          PHILIPPINES                    17                    0        0    885
6-24 months   COHORTS          PHILIPPINES                    17                    1        0    885
6-24 months   COHORTS          PHILIPPINES                    18                    0        0    885
6-24 months   COHORTS          PHILIPPINES                    18                    1        0    885
6-24 months   COHORTS          PHILIPPINES                    19                    0        0    885
6-24 months   COHORTS          PHILIPPINES                    19                    1        0    885
6-24 months   COHORTS          PHILIPPINES                    24                    0        0    885
6-24 months   COHORTS          PHILIPPINES                    24                    1        0    885
6-24 months   COHORTS          PHILIPPINES                    27                    0        0    885
6-24 months   COHORTS          PHILIPPINES                    27                    1        0    885
6-24 months   GMS-Nepal        NEPAL                          0                     0       86    378
6-24 months   GMS-Nepal        NEPAL                          0                     1       85    378
6-24 months   GMS-Nepal        NEPAL                          1                     0        0    378
6-24 months   GMS-Nepal        NEPAL                          1                     1        0    378
6-24 months   GMS-Nepal        NEPAL                          2                     0        0    378
6-24 months   GMS-Nepal        NEPAL                          2                     1        0    378
6-24 months   GMS-Nepal        NEPAL                          3                     0        0    378
6-24 months   GMS-Nepal        NEPAL                          3                     1        0    378
6-24 months   GMS-Nepal        NEPAL                          4                     0        0    378
6-24 months   GMS-Nepal        NEPAL                          4                     1        0    378
6-24 months   GMS-Nepal        NEPAL                          5                     0       24    378
6-24 months   GMS-Nepal        NEPAL                          5                     1       46    378
6-24 months   GMS-Nepal        NEPAL                          6                     0        0    378
6-24 months   GMS-Nepal        NEPAL                          6                     1        0    378
6-24 months   GMS-Nepal        NEPAL                          7                     0        0    378
6-24 months   GMS-Nepal        NEPAL                          7                     1        0    378
6-24 months   GMS-Nepal        NEPAL                          8                     0       32    378
6-24 months   GMS-Nepal        NEPAL                          8                     1       24    378
6-24 months   GMS-Nepal        NEPAL                          9                     0        0    378
6-24 months   GMS-Nepal        NEPAL                          9                     1        0    378
6-24 months   GMS-Nepal        NEPAL                          10                    0       39    378
6-24 months   GMS-Nepal        NEPAL                          10                    1       21    378
6-24 months   GMS-Nepal        NEPAL                          11                    0        0    378
6-24 months   GMS-Nepal        NEPAL                          11                    1        0    378
6-24 months   GMS-Nepal        NEPAL                          12                    0       10    378
6-24 months   GMS-Nepal        NEPAL                          12                    1       11    378
6-24 months   GMS-Nepal        NEPAL                          13                    0        0    378
6-24 months   GMS-Nepal        NEPAL                          13                    1        0    378
6-24 months   GMS-Nepal        NEPAL                          14                    0        0    378
6-24 months   GMS-Nepal        NEPAL                          14                    1        0    378
6-24 months   GMS-Nepal        NEPAL                          15                    0        0    378
6-24 months   GMS-Nepal        NEPAL                          15                    1        0    378
6-24 months   GMS-Nepal        NEPAL                          16                    0        0    378
6-24 months   GMS-Nepal        NEPAL                          16                    1        0    378
6-24 months   GMS-Nepal        NEPAL                          17                    0        0    378
6-24 months   GMS-Nepal        NEPAL                          17                    1        0    378
6-24 months   GMS-Nepal        NEPAL                          18                    0        0    378
6-24 months   GMS-Nepal        NEPAL                          18                    1        0    378
6-24 months   GMS-Nepal        NEPAL                          19                    0        0    378
6-24 months   GMS-Nepal        NEPAL                          19                    1        0    378
6-24 months   GMS-Nepal        NEPAL                          24                    0        0    378
6-24 months   GMS-Nepal        NEPAL                          24                    1        0    378
6-24 months   GMS-Nepal        NEPAL                          27                    0        0    378
6-24 months   GMS-Nepal        NEPAL                          27                    1        0    378
6-24 months   LCNI-5           MALAWI                         0                     0       25     73
6-24 months   LCNI-5           MALAWI                         0                     1        5     73
6-24 months   LCNI-5           MALAWI                         1                     0        0     73
6-24 months   LCNI-5           MALAWI                         1                     1        0     73
6-24 months   LCNI-5           MALAWI                         2                     0        3     73
6-24 months   LCNI-5           MALAWI                         2                     1        1     73
6-24 months   LCNI-5           MALAWI                         3                     0        5     73
6-24 months   LCNI-5           MALAWI                         3                     1        0     73
6-24 months   LCNI-5           MALAWI                         4                     0        5     73
6-24 months   LCNI-5           MALAWI                         4                     1        1     73
6-24 months   LCNI-5           MALAWI                         5                     0        4     73
6-24 months   LCNI-5           MALAWI                         5                     1        1     73
6-24 months   LCNI-5           MALAWI                         6                     0        6     73
6-24 months   LCNI-5           MALAWI                         6                     1        1     73
6-24 months   LCNI-5           MALAWI                         7                     0        4     73
6-24 months   LCNI-5           MALAWI                         7                     1        1     73
6-24 months   LCNI-5           MALAWI                         8                     0        5     73
6-24 months   LCNI-5           MALAWI                         8                     1        2     73
6-24 months   LCNI-5           MALAWI                         9                     0        0     73
6-24 months   LCNI-5           MALAWI                         9                     1        0     73
6-24 months   LCNI-5           MALAWI                         10                    0        1     73
6-24 months   LCNI-5           MALAWI                         10                    1        0     73
6-24 months   LCNI-5           MALAWI                         11                    0        0     73
6-24 months   LCNI-5           MALAWI                         11                    1        0     73
6-24 months   LCNI-5           MALAWI                         12                    0        2     73
6-24 months   LCNI-5           MALAWI                         12                    1        1     73
6-24 months   LCNI-5           MALAWI                         13                    0        0     73
6-24 months   LCNI-5           MALAWI                         13                    1        0     73
6-24 months   LCNI-5           MALAWI                         14                    0        0     73
6-24 months   LCNI-5           MALAWI                         14                    1        0     73
6-24 months   LCNI-5           MALAWI                         15                    0        0     73
6-24 months   LCNI-5           MALAWI                         15                    1        0     73
6-24 months   LCNI-5           MALAWI                         16                    0        0     73
6-24 months   LCNI-5           MALAWI                         16                    1        0     73
6-24 months   LCNI-5           MALAWI                         17                    0        0     73
6-24 months   LCNI-5           MALAWI                         17                    1        0     73
6-24 months   LCNI-5           MALAWI                         18                    0        0     73
6-24 months   LCNI-5           MALAWI                         18                    1        0     73
6-24 months   LCNI-5           MALAWI                         19                    0        0     73
6-24 months   LCNI-5           MALAWI                         19                    1        0     73
6-24 months   LCNI-5           MALAWI                         24                    0        0     73
6-24 months   LCNI-5           MALAWI                         24                    1        0     73
6-24 months   LCNI-5           MALAWI                         27                    0        0     73
6-24 months   LCNI-5           MALAWI                         27                    1        0     73
6-24 months   MAL-ED           BANGLADESH                     0                     0        0     36
6-24 months   MAL-ED           BANGLADESH                     0                     1        0     36
6-24 months   MAL-ED           BANGLADESH                     1                     0        1     36
6-24 months   MAL-ED           BANGLADESH                     1                     1        1     36
6-24 months   MAL-ED           BANGLADESH                     2                     0        1     36
6-24 months   MAL-ED           BANGLADESH                     2                     1        0     36
6-24 months   MAL-ED           BANGLADESH                     3                     0        3     36
6-24 months   MAL-ED           BANGLADESH                     3                     1        6     36
6-24 months   MAL-ED           BANGLADESH                     4                     0        2     36
6-24 months   MAL-ED           BANGLADESH                     4                     1        1     36
6-24 months   MAL-ED           BANGLADESH                     5                     0        4     36
6-24 months   MAL-ED           BANGLADESH                     5                     1        4     36
6-24 months   MAL-ED           BANGLADESH                     6                     0        0     36
6-24 months   MAL-ED           BANGLADESH                     6                     1        0     36
6-24 months   MAL-ED           BANGLADESH                     7                     0        3     36
6-24 months   MAL-ED           BANGLADESH                     7                     1        1     36
6-24 months   MAL-ED           BANGLADESH                     8                     0        1     36
6-24 months   MAL-ED           BANGLADESH                     8                     1        1     36
6-24 months   MAL-ED           BANGLADESH                     9                     0        2     36
6-24 months   MAL-ED           BANGLADESH                     9                     1        2     36
6-24 months   MAL-ED           BANGLADESH                     10                    0        1     36
6-24 months   MAL-ED           BANGLADESH                     10                    1        1     36
6-24 months   MAL-ED           BANGLADESH                     11                    0        0     36
6-24 months   MAL-ED           BANGLADESH                     11                    1        0     36
6-24 months   MAL-ED           BANGLADESH                     12                    0        0     36
6-24 months   MAL-ED           BANGLADESH                     12                    1        1     36
6-24 months   MAL-ED           BANGLADESH                     13                    0        0     36
6-24 months   MAL-ED           BANGLADESH                     13                    1        0     36
6-24 months   MAL-ED           BANGLADESH                     14                    0        0     36
6-24 months   MAL-ED           BANGLADESH                     14                    1        0     36
6-24 months   MAL-ED           BANGLADESH                     15                    0        0     36
6-24 months   MAL-ED           BANGLADESH                     15                    1        0     36
6-24 months   MAL-ED           BANGLADESH                     16                    0        0     36
6-24 months   MAL-ED           BANGLADESH                     16                    1        0     36
6-24 months   MAL-ED           BANGLADESH                     17                    0        0     36
6-24 months   MAL-ED           BANGLADESH                     17                    1        0     36
6-24 months   MAL-ED           BANGLADESH                     18                    0        0     36
6-24 months   MAL-ED           BANGLADESH                     18                    1        0     36
6-24 months   MAL-ED           BANGLADESH                     19                    0        0     36
6-24 months   MAL-ED           BANGLADESH                     19                    1        0     36
6-24 months   MAL-ED           BANGLADESH                     24                    0        0     36
6-24 months   MAL-ED           BANGLADESH                     24                    1        0     36
6-24 months   MAL-ED           BANGLADESH                     27                    0        0     36
6-24 months   MAL-ED           BANGLADESH                     27                    1        0     36
6-24 months   MAL-ED           INDIA                          0                     0        0     57
6-24 months   MAL-ED           INDIA                          0                     1        0     57
6-24 months   MAL-ED           INDIA                          1                     0        0     57
6-24 months   MAL-ED           INDIA                          1                     1        0     57
6-24 months   MAL-ED           INDIA                          2                     0        0     57
6-24 months   MAL-ED           INDIA                          2                     1        2     57
6-24 months   MAL-ED           INDIA                          3                     0        0     57
6-24 months   MAL-ED           INDIA                          3                     1        2     57
6-24 months   MAL-ED           INDIA                          4                     0        0     57
6-24 months   MAL-ED           INDIA                          4                     1        3     57
6-24 months   MAL-ED           INDIA                          5                     0       11     57
6-24 months   MAL-ED           INDIA                          5                     1        9     57
6-24 months   MAL-ED           INDIA                          6                     0        1     57
6-24 months   MAL-ED           INDIA                          6                     1        5     57
6-24 months   MAL-ED           INDIA                          7                     0        1     57
6-24 months   MAL-ED           INDIA                          7                     1        1     57
6-24 months   MAL-ED           INDIA                          8                     0        6     57
6-24 months   MAL-ED           INDIA                          8                     1        1     57
6-24 months   MAL-ED           INDIA                          9                     0        3     57
6-24 months   MAL-ED           INDIA                          9                     1        6     57
6-24 months   MAL-ED           INDIA                          10                    0        1     57
6-24 months   MAL-ED           INDIA                          10                    1        1     57
6-24 months   MAL-ED           INDIA                          11                    0        1     57
6-24 months   MAL-ED           INDIA                          11                    1        0     57
6-24 months   MAL-ED           INDIA                          12                    0        1     57
6-24 months   MAL-ED           INDIA                          12                    1        1     57
6-24 months   MAL-ED           INDIA                          13                    0        0     57
6-24 months   MAL-ED           INDIA                          13                    1        0     57
6-24 months   MAL-ED           INDIA                          14                    0        0     57
6-24 months   MAL-ED           INDIA                          14                    1        1     57
6-24 months   MAL-ED           INDIA                          15                    0        0     57
6-24 months   MAL-ED           INDIA                          15                    1        0     57
6-24 months   MAL-ED           INDIA                          16                    0        0     57
6-24 months   MAL-ED           INDIA                          16                    1        0     57
6-24 months   MAL-ED           INDIA                          17                    0        0     57
6-24 months   MAL-ED           INDIA                          17                    1        0     57
6-24 months   MAL-ED           INDIA                          18                    0        0     57
6-24 months   MAL-ED           INDIA                          18                    1        0     57
6-24 months   MAL-ED           INDIA                          19                    0        0     57
6-24 months   MAL-ED           INDIA                          19                    1        0     57
6-24 months   MAL-ED           INDIA                          24                    0        0     57
6-24 months   MAL-ED           INDIA                          24                    1        0     57
6-24 months   MAL-ED           INDIA                          27                    0        0     57
6-24 months   MAL-ED           INDIA                          27                    1        0     57
6-24 months   MAL-ED           NEPAL                          0                     0        0     18
6-24 months   MAL-ED           NEPAL                          0                     1        0     18
6-24 months   MAL-ED           NEPAL                          1                     0        0     18
6-24 months   MAL-ED           NEPAL                          1                     1        0     18
6-24 months   MAL-ED           NEPAL                          2                     0        1     18
6-24 months   MAL-ED           NEPAL                          2                     1        2     18
6-24 months   MAL-ED           NEPAL                          3                     0        0     18
6-24 months   MAL-ED           NEPAL                          3                     1        0     18
6-24 months   MAL-ED           NEPAL                          4                     0        0     18
6-24 months   MAL-ED           NEPAL                          4                     1        2     18
6-24 months   MAL-ED           NEPAL                          5                     0        0     18
6-24 months   MAL-ED           NEPAL                          5                     1        0     18
6-24 months   MAL-ED           NEPAL                          6                     0        0     18
6-24 months   MAL-ED           NEPAL                          6                     1        0     18
6-24 months   MAL-ED           NEPAL                          7                     0        2     18
6-24 months   MAL-ED           NEPAL                          7                     1        3     18
6-24 months   MAL-ED           NEPAL                          8                     0        1     18
6-24 months   MAL-ED           NEPAL                          8                     1        3     18
6-24 months   MAL-ED           NEPAL                          9                     0        0     18
6-24 months   MAL-ED           NEPAL                          9                     1        1     18
6-24 months   MAL-ED           NEPAL                          10                    0        0     18
6-24 months   MAL-ED           NEPAL                          10                    1        2     18
6-24 months   MAL-ED           NEPAL                          11                    0        0     18
6-24 months   MAL-ED           NEPAL                          11                    1        0     18
6-24 months   MAL-ED           NEPAL                          12                    0        0     18
6-24 months   MAL-ED           NEPAL                          12                    1        1     18
6-24 months   MAL-ED           NEPAL                          13                    0        0     18
6-24 months   MAL-ED           NEPAL                          13                    1        0     18
6-24 months   MAL-ED           NEPAL                          14                    0        0     18
6-24 months   MAL-ED           NEPAL                          14                    1        0     18
6-24 months   MAL-ED           NEPAL                          15                    0        0     18
6-24 months   MAL-ED           NEPAL                          15                    1        0     18
6-24 months   MAL-ED           NEPAL                          16                    0        0     18
6-24 months   MAL-ED           NEPAL                          16                    1        0     18
6-24 months   MAL-ED           NEPAL                          17                    0        0     18
6-24 months   MAL-ED           NEPAL                          17                    1        0     18
6-24 months   MAL-ED           NEPAL                          18                    0        0     18
6-24 months   MAL-ED           NEPAL                          18                    1        0     18
6-24 months   MAL-ED           NEPAL                          19                    0        0     18
6-24 months   MAL-ED           NEPAL                          19                    1        0     18
6-24 months   MAL-ED           NEPAL                          24                    0        0     18
6-24 months   MAL-ED           NEPAL                          24                    1        0     18
6-24 months   MAL-ED           NEPAL                          27                    0        0     18
6-24 months   MAL-ED           NEPAL                          27                    1        0     18
6-24 months   MAL-ED           PERU                           0                     0        0     19
6-24 months   MAL-ED           PERU                           0                     1        0     19
6-24 months   MAL-ED           PERU                           1                     0        0     19
6-24 months   MAL-ED           PERU                           1                     1        0     19
6-24 months   MAL-ED           PERU                           2                     0        0     19
6-24 months   MAL-ED           PERU                           2                     1        0     19
6-24 months   MAL-ED           PERU                           3                     0        0     19
6-24 months   MAL-ED           PERU                           3                     1        1     19
6-24 months   MAL-ED           PERU                           4                     0        0     19
6-24 months   MAL-ED           PERU                           4                     1        0     19
6-24 months   MAL-ED           PERU                           5                     0        0     19
6-24 months   MAL-ED           PERU                           5                     1        0     19
6-24 months   MAL-ED           PERU                           6                     0        0     19
6-24 months   MAL-ED           PERU                           6                     1        0     19
6-24 months   MAL-ED           PERU                           7                     0        1     19
6-24 months   MAL-ED           PERU                           7                     1        0     19
6-24 months   MAL-ED           PERU                           8                     0        1     19
6-24 months   MAL-ED           PERU                           8                     1        5     19
6-24 months   MAL-ED           PERU                           9                     0        0     19
6-24 months   MAL-ED           PERU                           9                     1        2     19
6-24 months   MAL-ED           PERU                           10                    0        0     19
6-24 months   MAL-ED           PERU                           10                    1        0     19
6-24 months   MAL-ED           PERU                           11                    0        1     19
6-24 months   MAL-ED           PERU                           11                    1        6     19
6-24 months   MAL-ED           PERU                           12                    0        1     19
6-24 months   MAL-ED           PERU                           12                    1        1     19
6-24 months   MAL-ED           PERU                           13                    0        0     19
6-24 months   MAL-ED           PERU                           13                    1        0     19
6-24 months   MAL-ED           PERU                           14                    0        0     19
6-24 months   MAL-ED           PERU                           14                    1        0     19
6-24 months   MAL-ED           PERU                           15                    0        0     19
6-24 months   MAL-ED           PERU                           15                    1        0     19
6-24 months   MAL-ED           PERU                           16                    0        0     19
6-24 months   MAL-ED           PERU                           16                    1        0     19
6-24 months   MAL-ED           PERU                           17                    0        0     19
6-24 months   MAL-ED           PERU                           17                    1        0     19
6-24 months   MAL-ED           PERU                           18                    0        0     19
6-24 months   MAL-ED           PERU                           18                    1        0     19
6-24 months   MAL-ED           PERU                           19                    0        0     19
6-24 months   MAL-ED           PERU                           19                    1        0     19
6-24 months   MAL-ED           PERU                           24                    0        0     19
6-24 months   MAL-ED           PERU                           24                    1        0     19
6-24 months   MAL-ED           PERU                           27                    0        0     19
6-24 months   MAL-ED           PERU                           27                    1        0     19
6-24 months   MAL-ED           SOUTH AFRICA                   0                     0        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   0                     1        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   1                     0        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   1                     1        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   2                     0        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   2                     1        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   3                     0        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   3                     1        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   4                     0        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   4                     1        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   5                     0        1     20
6-24 months   MAL-ED           SOUTH AFRICA                   5                     1        1     20
6-24 months   MAL-ED           SOUTH AFRICA                   6                     0        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   6                     1        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   7                     0        1     20
6-24 months   MAL-ED           SOUTH AFRICA                   7                     1        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   8                     0        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   8                     1        4     20
6-24 months   MAL-ED           SOUTH AFRICA                   9                     0        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   9                     1        1     20
6-24 months   MAL-ED           SOUTH AFRICA                   10                    0        1     20
6-24 months   MAL-ED           SOUTH AFRICA                   10                    1        4     20
6-24 months   MAL-ED           SOUTH AFRICA                   11                    0        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   11                    1        2     20
6-24 months   MAL-ED           SOUTH AFRICA                   12                    0        1     20
6-24 months   MAL-ED           SOUTH AFRICA                   12                    1        4     20
6-24 months   MAL-ED           SOUTH AFRICA                   13                    0        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   13                    1        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   14                    0        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   14                    1        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   15                    0        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   15                    1        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   16                    0        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   16                    1        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   17                    0        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   17                    1        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   18                    0        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   18                    1        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   19                    0        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   19                    1        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   24                    0        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   24                    1        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   27                    0        0     20
6-24 months   MAL-ED           SOUTH AFRICA                   27                    1        0     20
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        1     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        6     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     0        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     1        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     0        3     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     1        1     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     0        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     1        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     0        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     1        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     0        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     1        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     0        1     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     1       13     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     0        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     1        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     0        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     1        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    0        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    1        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    0        1     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    1        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    0        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    1        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                    0        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                    1        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                    0        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                    1        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                    0        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                    1        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                    0        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                    1        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                    0        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                    1        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                    0        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                    1        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                    0        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                    1        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                    0        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                    1        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                    0        0     26
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                    1        0     26
6-24 months   NIH-Crypto       BANGLADESH                     0                     0       29    113
6-24 months   NIH-Crypto       BANGLADESH                     0                     1        8    113
6-24 months   NIH-Crypto       BANGLADESH                     1                     0        0    113
6-24 months   NIH-Crypto       BANGLADESH                     1                     1        1    113
6-24 months   NIH-Crypto       BANGLADESH                     2                     0        5    113
6-24 months   NIH-Crypto       BANGLADESH                     2                     1        0    113
6-24 months   NIH-Crypto       BANGLADESH                     3                     0        5    113
6-24 months   NIH-Crypto       BANGLADESH                     3                     1        0    113
6-24 months   NIH-Crypto       BANGLADESH                     4                     0        6    113
6-24 months   NIH-Crypto       BANGLADESH                     4                     1        1    113
6-24 months   NIH-Crypto       BANGLADESH                     5                     0       20    113
6-24 months   NIH-Crypto       BANGLADESH                     5                     1        3    113
6-24 months   NIH-Crypto       BANGLADESH                     6                     0        3    113
6-24 months   NIH-Crypto       BANGLADESH                     6                     1        0    113
6-24 months   NIH-Crypto       BANGLADESH                     7                     0        4    113
6-24 months   NIH-Crypto       BANGLADESH                     7                     1        2    113
6-24 months   NIH-Crypto       BANGLADESH                     8                     0        6    113
6-24 months   NIH-Crypto       BANGLADESH                     8                     1        0    113
6-24 months   NIH-Crypto       BANGLADESH                     9                     0        4    113
6-24 months   NIH-Crypto       BANGLADESH                     9                     1        1    113
6-24 months   NIH-Crypto       BANGLADESH                     10                    0        6    113
6-24 months   NIH-Crypto       BANGLADESH                     10                    1        1    113
6-24 months   NIH-Crypto       BANGLADESH                     11                    0        0    113
6-24 months   NIH-Crypto       BANGLADESH                     11                    1        0    113
6-24 months   NIH-Crypto       BANGLADESH                     12                    0        5    113
6-24 months   NIH-Crypto       BANGLADESH                     12                    1        0    113
6-24 months   NIH-Crypto       BANGLADESH                     13                    0        0    113
6-24 months   NIH-Crypto       BANGLADESH                     13                    1        0    113
6-24 months   NIH-Crypto       BANGLADESH                     14                    0        0    113
6-24 months   NIH-Crypto       BANGLADESH                     14                    1        0    113
6-24 months   NIH-Crypto       BANGLADESH                     15                    0        2    113
6-24 months   NIH-Crypto       BANGLADESH                     15                    1        0    113
6-24 months   NIH-Crypto       BANGLADESH                     16                    0        0    113
6-24 months   NIH-Crypto       BANGLADESH                     16                    1        0    113
6-24 months   NIH-Crypto       BANGLADESH                     17                    0        1    113
6-24 months   NIH-Crypto       BANGLADESH                     17                    1        0    113
6-24 months   NIH-Crypto       BANGLADESH                     18                    0        0    113
6-24 months   NIH-Crypto       BANGLADESH                     18                    1        0    113
6-24 months   NIH-Crypto       BANGLADESH                     19                    0        0    113
6-24 months   NIH-Crypto       BANGLADESH                     19                    1        0    113
6-24 months   NIH-Crypto       BANGLADESH                     24                    0        0    113
6-24 months   NIH-Crypto       BANGLADESH                     24                    1        0    113
6-24 months   NIH-Crypto       BANGLADESH                     27                    0        0    113
6-24 months   NIH-Crypto       BANGLADESH                     27                    1        0    113
6-24 months   PROBIT           BELARUS                        0                     0        0    136
6-24 months   PROBIT           BELARUS                        0                     1        0    136
6-24 months   PROBIT           BELARUS                        1                     0        0    136
6-24 months   PROBIT           BELARUS                        1                     1        0    136
6-24 months   PROBIT           BELARUS                        2                     0        0    136
6-24 months   PROBIT           BELARUS                        2                     1        0    136
6-24 months   PROBIT           BELARUS                        3                     0        0    136
6-24 months   PROBIT           BELARUS                        3                     1        0    136
6-24 months   PROBIT           BELARUS                        4                     0        0    136
6-24 months   PROBIT           BELARUS                        4                     1        0    136
6-24 months   PROBIT           BELARUS                        5                     0        0    136
6-24 months   PROBIT           BELARUS                        5                     1        0    136
6-24 months   PROBIT           BELARUS                        6                     0        0    136
6-24 months   PROBIT           BELARUS                        6                     1        0    136
6-24 months   PROBIT           BELARUS                        7                     0        0    136
6-24 months   PROBIT           BELARUS                        7                     1        0    136
6-24 months   PROBIT           BELARUS                        8                     0        0    136
6-24 months   PROBIT           BELARUS                        8                     1        0    136
6-24 months   PROBIT           BELARUS                        9                     0        0    136
6-24 months   PROBIT           BELARUS                        9                     1        0    136
6-24 months   PROBIT           BELARUS                        10                    0        3    136
6-24 months   PROBIT           BELARUS                        10                    1        1    136
6-24 months   PROBIT           BELARUS                        11                    0        0    136
6-24 months   PROBIT           BELARUS                        11                    1        0    136
6-24 months   PROBIT           BELARUS                        12                    0       45    136
6-24 months   PROBIT           BELARUS                        12                    1       14    136
6-24 months   PROBIT           BELARUS                        13                    0       39    136
6-24 months   PROBIT           BELARUS                        13                    1       17    136
6-24 months   PROBIT           BELARUS                        14                    0        3    136
6-24 months   PROBIT           BELARUS                        14                    1        2    136
6-24 months   PROBIT           BELARUS                        15                    0        0    136
6-24 months   PROBIT           BELARUS                        15                    1        0    136
6-24 months   PROBIT           BELARUS                        16                    0       10    136
6-24 months   PROBIT           BELARUS                        16                    1        2    136
6-24 months   PROBIT           BELARUS                        17                    0        0    136
6-24 months   PROBIT           BELARUS                        17                    1        0    136
6-24 months   PROBIT           BELARUS                        18                    0        0    136
6-24 months   PROBIT           BELARUS                        18                    1        0    136
6-24 months   PROBIT           BELARUS                        19                    0        0    136
6-24 months   PROBIT           BELARUS                        19                    1        0    136
6-24 months   PROBIT           BELARUS                        24                    0        0    136
6-24 months   PROBIT           BELARUS                        24                    1        0    136
6-24 months   PROBIT           BELARUS                        27                    0        0    136
6-24 months   PROBIT           BELARUS                        27                    1        0    136
6-24 months   PROVIDE          BANGLADESH                     0                     0       40    123
6-24 months   PROVIDE          BANGLADESH                     0                     1       18    123
6-24 months   PROVIDE          BANGLADESH                     1                     0        1    123
6-24 months   PROVIDE          BANGLADESH                     1                     1        0    123
6-24 months   PROVIDE          BANGLADESH                     2                     0        4    123
6-24 months   PROVIDE          BANGLADESH                     2                     1        0    123
6-24 months   PROVIDE          BANGLADESH                     3                     0        3    123
6-24 months   PROVIDE          BANGLADESH                     3                     1        0    123
6-24 months   PROVIDE          BANGLADESH                     4                     0        8    123
6-24 months   PROVIDE          BANGLADESH                     4                     1        3    123
6-24 months   PROVIDE          BANGLADESH                     5                     0        7    123
6-24 months   PROVIDE          BANGLADESH                     5                     1        3    123
6-24 months   PROVIDE          BANGLADESH                     6                     0        7    123
6-24 months   PROVIDE          BANGLADESH                     6                     1        1    123
6-24 months   PROVIDE          BANGLADESH                     7                     0        0    123
6-24 months   PROVIDE          BANGLADESH                     7                     1        1    123
6-24 months   PROVIDE          BANGLADESH                     8                     0        8    123
6-24 months   PROVIDE          BANGLADESH                     8                     1        1    123
6-24 months   PROVIDE          BANGLADESH                     9                     0        4    123
6-24 months   PROVIDE          BANGLADESH                     9                     1        4    123
6-24 months   PROVIDE          BANGLADESH                     10                    0        4    123
6-24 months   PROVIDE          BANGLADESH                     10                    1        2    123
6-24 months   PROVIDE          BANGLADESH                     11                    0        1    123
6-24 months   PROVIDE          BANGLADESH                     11                    1        0    123
6-24 months   PROVIDE          BANGLADESH                     12                    0        0    123
6-24 months   PROVIDE          BANGLADESH                     12                    1        0    123
6-24 months   PROVIDE          BANGLADESH                     13                    0        0    123
6-24 months   PROVIDE          BANGLADESH                     13                    1        0    123
6-24 months   PROVIDE          BANGLADESH                     14                    0        1    123
6-24 months   PROVIDE          BANGLADESH                     14                    1        1    123
6-24 months   PROVIDE          BANGLADESH                     15                    0        0    123
6-24 months   PROVIDE          BANGLADESH                     15                    1        0    123
6-24 months   PROVIDE          BANGLADESH                     16                    0        1    123
6-24 months   PROVIDE          BANGLADESH                     16                    1        0    123
6-24 months   PROVIDE          BANGLADESH                     17                    0        0    123
6-24 months   PROVIDE          BANGLADESH                     17                    1        0    123
6-24 months   PROVIDE          BANGLADESH                     18                    0        0    123
6-24 months   PROVIDE          BANGLADESH                     18                    1        0    123
6-24 months   PROVIDE          BANGLADESH                     19                    0        0    123
6-24 months   PROVIDE          BANGLADESH                     19                    1        0    123
6-24 months   PROVIDE          BANGLADESH                     24                    0        0    123
6-24 months   PROVIDE          BANGLADESH                     24                    1        0    123
6-24 months   PROVIDE          BANGLADESH                     27                    0        0    123
6-24 months   PROVIDE          BANGLADESH                     27                    1        0    123
6-24 months   SAS-CompFeed     INDIA                          0                     0       47    471
6-24 months   SAS-CompFeed     INDIA                          0                     1       23    471
6-24 months   SAS-CompFeed     INDIA                          1                     0        0    471
6-24 months   SAS-CompFeed     INDIA                          1                     1        0    471
6-24 months   SAS-CompFeed     INDIA                          2                     0        4    471
6-24 months   SAS-CompFeed     INDIA                          2                     1        1    471
6-24 months   SAS-CompFeed     INDIA                          3                     0        4    471
6-24 months   SAS-CompFeed     INDIA                          3                     1        0    471
6-24 months   SAS-CompFeed     INDIA                          4                     0        5    471
6-24 months   SAS-CompFeed     INDIA                          4                     1        3    471
6-24 months   SAS-CompFeed     INDIA                          5                     0       20    471
6-24 months   SAS-CompFeed     INDIA                          5                     1        4    471
6-24 months   SAS-CompFeed     INDIA                          6                     0       11    471
6-24 months   SAS-CompFeed     INDIA                          6                     1        5    471
6-24 months   SAS-CompFeed     INDIA                          7                     0       26    471
6-24 months   SAS-CompFeed     INDIA                          7                     1       12    471
6-24 months   SAS-CompFeed     INDIA                          8                     0       42    471
6-24 months   SAS-CompFeed     INDIA                          8                     1       11    471
6-24 months   SAS-CompFeed     INDIA                          9                     0       22    471
6-24 months   SAS-CompFeed     INDIA                          9                     1        8    471
6-24 months   SAS-CompFeed     INDIA                          10                    0       77    471
6-24 months   SAS-CompFeed     INDIA                          10                    1       25    471
6-24 months   SAS-CompFeed     INDIA                          11                    0        3    471
6-24 months   SAS-CompFeed     INDIA                          11                    1        6    471
6-24 months   SAS-CompFeed     INDIA                          12                    0       47    471
6-24 months   SAS-CompFeed     INDIA                          12                    1       22    471
6-24 months   SAS-CompFeed     INDIA                          13                    0        2    471
6-24 months   SAS-CompFeed     INDIA                          13                    1        1    471
6-24 months   SAS-CompFeed     INDIA                          14                    0        7    471
6-24 months   SAS-CompFeed     INDIA                          14                    1        1    471
6-24 months   SAS-CompFeed     INDIA                          15                    0       11    471
6-24 months   SAS-CompFeed     INDIA                          15                    1        9    471
6-24 months   SAS-CompFeed     INDIA                          16                    0        3    471
6-24 months   SAS-CompFeed     INDIA                          16                    1        2    471
6-24 months   SAS-CompFeed     INDIA                          17                    0        3    471
6-24 months   SAS-CompFeed     INDIA                          17                    1        2    471
6-24 months   SAS-CompFeed     INDIA                          18                    0        1    471
6-24 months   SAS-CompFeed     INDIA                          18                    1        0    471
6-24 months   SAS-CompFeed     INDIA                          19                    0        1    471
6-24 months   SAS-CompFeed     INDIA                          19                    1        0    471
6-24 months   SAS-CompFeed     INDIA                          24                    0        0    471
6-24 months   SAS-CompFeed     INDIA                          24                    1        0    471
6-24 months   SAS-CompFeed     INDIA                          27                    0        0    471
6-24 months   SAS-CompFeed     INDIA                          27                    1        0    471
6-24 months   SAS-FoodSuppl    INDIA                          0                     0       54    156
6-24 months   SAS-FoodSuppl    INDIA                          0                     1        2    156
6-24 months   SAS-FoodSuppl    INDIA                          1                     0        0    156
6-24 months   SAS-FoodSuppl    INDIA                          1                     1        0    156
6-24 months   SAS-FoodSuppl    INDIA                          2                     0        4    156
6-24 months   SAS-FoodSuppl    INDIA                          2                     1        0    156
6-24 months   SAS-FoodSuppl    INDIA                          3                     0        3    156
6-24 months   SAS-FoodSuppl    INDIA                          3                     1        0    156
6-24 months   SAS-FoodSuppl    INDIA                          4                     0        5    156
6-24 months   SAS-FoodSuppl    INDIA                          4                     1        0    156
6-24 months   SAS-FoodSuppl    INDIA                          5                     0       23    156
6-24 months   SAS-FoodSuppl    INDIA                          5                     1        3    156
6-24 months   SAS-FoodSuppl    INDIA                          6                     0        5    156
6-24 months   SAS-FoodSuppl    INDIA                          6                     1        0    156
6-24 months   SAS-FoodSuppl    INDIA                          7                     0        5    156
6-24 months   SAS-FoodSuppl    INDIA                          7                     1        1    156
6-24 months   SAS-FoodSuppl    INDIA                          8                     0        9    156
6-24 months   SAS-FoodSuppl    INDIA                          8                     1        1    156
6-24 months   SAS-FoodSuppl    INDIA                          9                     0        8    156
6-24 months   SAS-FoodSuppl    INDIA                          9                     1        3    156
6-24 months   SAS-FoodSuppl    INDIA                          10                    0       17    156
6-24 months   SAS-FoodSuppl    INDIA                          10                    1        1    156
6-24 months   SAS-FoodSuppl    INDIA                          11                    0        4    156
6-24 months   SAS-FoodSuppl    INDIA                          11                    1        0    156
6-24 months   SAS-FoodSuppl    INDIA                          12                    0        2    156
6-24 months   SAS-FoodSuppl    INDIA                          12                    1        0    156
6-24 months   SAS-FoodSuppl    INDIA                          13                    0        0    156
6-24 months   SAS-FoodSuppl    INDIA                          13                    1        0    156
6-24 months   SAS-FoodSuppl    INDIA                          14                    0        4    156
6-24 months   SAS-FoodSuppl    INDIA                          14                    1        1    156
6-24 months   SAS-FoodSuppl    INDIA                          15                    0        0    156
6-24 months   SAS-FoodSuppl    INDIA                          15                    1        1    156
6-24 months   SAS-FoodSuppl    INDIA                          16                    0        0    156
6-24 months   SAS-FoodSuppl    INDIA                          16                    1        0    156
6-24 months   SAS-FoodSuppl    INDIA                          17                    0        0    156
6-24 months   SAS-FoodSuppl    INDIA                          17                    1        0    156
6-24 months   SAS-FoodSuppl    INDIA                          18                    0        0    156
6-24 months   SAS-FoodSuppl    INDIA                          18                    1        0    156
6-24 months   SAS-FoodSuppl    INDIA                          19                    0        0    156
6-24 months   SAS-FoodSuppl    INDIA                          19                    1        0    156
6-24 months   SAS-FoodSuppl    INDIA                          24                    0        0    156
6-24 months   SAS-FoodSuppl    INDIA                          24                    1        0    156
6-24 months   SAS-FoodSuppl    INDIA                          27                    0        0    156
6-24 months   SAS-FoodSuppl    INDIA                          27                    1        0    156
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0        1    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0       86    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1      109    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0        5    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1        7    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0        1    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1        1    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0       44    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1       59    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1        1    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                    0        8    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                    1        8    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                    0        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                    1        4    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                    0        1    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                    1        1    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                    0        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                    1        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                    0        1    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                    1        2    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                    0        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                    1        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                    0        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                    1        0    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                    0        4    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                    1        1    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                    0       13    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                    1       14    371
6-24 months   ZVITAMBO         ZIMBABWE                       0                     0        8   1049
6-24 months   ZVITAMBO         ZIMBABWE                       0                     1        1   1049
6-24 months   ZVITAMBO         ZIMBABWE                       1                     0        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       1                     1        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       2                     0        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       2                     1        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       3                     0        2   1049
6-24 months   ZVITAMBO         ZIMBABWE                       3                     1        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       4                     0        1   1049
6-24 months   ZVITAMBO         ZIMBABWE                       4                     1        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       5                     0        2   1049
6-24 months   ZVITAMBO         ZIMBABWE                       5                     1        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       6                     0        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       6                     1        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       7                     0       80   1049
6-24 months   ZVITAMBO         ZIMBABWE                       7                     1        9   1049
6-24 months   ZVITAMBO         ZIMBABWE                       8                     0        5   1049
6-24 months   ZVITAMBO         ZIMBABWE                       8                     1        1   1049
6-24 months   ZVITAMBO         ZIMBABWE                       9                     0       70   1049
6-24 months   ZVITAMBO         ZIMBABWE                       9                     1        4   1049
6-24 months   ZVITAMBO         ZIMBABWE                       10                    0       45   1049
6-24 months   ZVITAMBO         ZIMBABWE                       10                    1        2   1049
6-24 months   ZVITAMBO         ZIMBABWE                       11                    0      711   1049
6-24 months   ZVITAMBO         ZIMBABWE                       11                    1       55   1049
6-24 months   ZVITAMBO         ZIMBABWE                       12                    0        4   1049
6-24 months   ZVITAMBO         ZIMBABWE                       12                    1        1   1049
6-24 months   ZVITAMBO         ZIMBABWE                       13                    0       46   1049
6-24 months   ZVITAMBO         ZIMBABWE                       13                    1        2   1049
6-24 months   ZVITAMBO         ZIMBABWE                       14                    0        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       14                    1        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       15                    0        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       15                    1        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       16                    0        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       16                    1        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       17                    0        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       17                    1        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       18                    0        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       18                    1        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       19                    0        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       19                    1        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       24                    0        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       24                    1        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       27                    0        0   1049
6-24 months   ZVITAMBO         ZIMBABWE                       27                    1        0   1049


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
















