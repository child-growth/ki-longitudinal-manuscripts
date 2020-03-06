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

**Outcome Variable:** pers_wast

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

agecat        studyid          country                        feducyrs    pers_wast   n_cell       n
------------  ---------------  -----------------------------  ---------  ----------  -------  ------
0-24 months   COHORTS          GUATEMALA                      0                   0      431     999
0-24 months   COHORTS          GUATEMALA                      0                   1       14     999
0-24 months   COHORTS          GUATEMALA                      1                   0       49     999
0-24 months   COHORTS          GUATEMALA                      1                   1        4     999
0-24 months   COHORTS          GUATEMALA                      2                   0      175     999
0-24 months   COHORTS          GUATEMALA                      2                   1        5     999
0-24 months   COHORTS          GUATEMALA                      3                   0      127     999
0-24 months   COHORTS          GUATEMALA                      3                   1        6     999
0-24 months   COHORTS          GUATEMALA                      4                   0       64     999
0-24 months   COHORTS          GUATEMALA                      4                   1        3     999
0-24 months   COHORTS          GUATEMALA                      5                   0       23     999
0-24 months   COHORTS          GUATEMALA                      5                   1        1     999
0-24 months   COHORTS          GUATEMALA                      6                   0       82     999
0-24 months   COHORTS          GUATEMALA                      6                   1        2     999
0-24 months   COHORTS          GUATEMALA                      7                   0        4     999
0-24 months   COHORTS          GUATEMALA                      7                   1        0     999
0-24 months   COHORTS          GUATEMALA                      8                   0        1     999
0-24 months   COHORTS          GUATEMALA                      8                   1        0     999
0-24 months   COHORTS          GUATEMALA                      9                   0        1     999
0-24 months   COHORTS          GUATEMALA                      9                   1        0     999
0-24 months   COHORTS          GUATEMALA                      10                  0        1     999
0-24 months   COHORTS          GUATEMALA                      10                  1        0     999
0-24 months   COHORTS          GUATEMALA                      11                  0        0     999
0-24 months   COHORTS          GUATEMALA                      11                  1        0     999
0-24 months   COHORTS          GUATEMALA                      12                  0        5     999
0-24 months   COHORTS          GUATEMALA                      12                  1        0     999
0-24 months   COHORTS          GUATEMALA                      13                  0        0     999
0-24 months   COHORTS          GUATEMALA                      13                  1        0     999
0-24 months   COHORTS          GUATEMALA                      14                  0        1     999
0-24 months   COHORTS          GUATEMALA                      14                  1        0     999
0-24 months   COHORTS          GUATEMALA                      15                  0        0     999
0-24 months   COHORTS          GUATEMALA                      15                  1        0     999
0-24 months   COHORTS          GUATEMALA                      16                  0        0     999
0-24 months   COHORTS          GUATEMALA                      16                  1        0     999
0-24 months   COHORTS          GUATEMALA                      17                  0        0     999
0-24 months   COHORTS          GUATEMALA                      17                  1        0     999
0-24 months   COHORTS          GUATEMALA                      18                  0        0     999
0-24 months   COHORTS          GUATEMALA                      18                  1        0     999
0-24 months   COHORTS          GUATEMALA                      19                  0        0     999
0-24 months   COHORTS          GUATEMALA                      19                  1        0     999
0-24 months   COHORTS          GUATEMALA                      20                  0        0     999
0-24 months   COHORTS          GUATEMALA                      20                  1        0     999
0-24 months   COHORTS          GUATEMALA                      24                  0        0     999
0-24 months   COHORTS          GUATEMALA                      24                  1        0     999
0-24 months   COHORTS          GUATEMALA                      25                  0        0     999
0-24 months   COHORTS          GUATEMALA                      25                  1        0     999
0-24 months   COHORTS          GUATEMALA                      27                  0        0     999
0-24 months   COHORTS          GUATEMALA                      27                  1        0     999
0-24 months   COHORTS          INDIA                          0                   0       90    1242
0-24 months   COHORTS          INDIA                          0                   1       12    1242
0-24 months   COHORTS          INDIA                          1                   0        0    1242
0-24 months   COHORTS          INDIA                          1                   1        0    1242
0-24 months   COHORTS          INDIA                          2                   0        0    1242
0-24 months   COHORTS          INDIA                          2                   1        0    1242
0-24 months   COHORTS          INDIA                          3                   0      109    1242
0-24 months   COHORTS          INDIA                          3                   1        9    1242
0-24 months   COHORTS          INDIA                          4                   0        0    1242
0-24 months   COHORTS          INDIA                          4                   1        0    1242
0-24 months   COHORTS          INDIA                          5                   0        0    1242
0-24 months   COHORTS          INDIA                          5                   1        0    1242
0-24 months   COHORTS          INDIA                          6                   0        0    1242
0-24 months   COHORTS          INDIA                          6                   1        0    1242
0-24 months   COHORTS          INDIA                          7                   0        0    1242
0-24 months   COHORTS          INDIA                          7                   1        0    1242
0-24 months   COHORTS          INDIA                          8                   0      167    1242
0-24 months   COHORTS          INDIA                          8                   1       17    1242
0-24 months   COHORTS          INDIA                          9                   0        0    1242
0-24 months   COHORTS          INDIA                          9                   1        0    1242
0-24 months   COHORTS          INDIA                          10                  0        0    1242
0-24 months   COHORTS          INDIA                          10                  1        0    1242
0-24 months   COHORTS          INDIA                          11                  0        0    1242
0-24 months   COHORTS          INDIA                          11                  1        0    1242
0-24 months   COHORTS          INDIA                          12                  0      324    1242
0-24 months   COHORTS          INDIA                          12                  1       27    1242
0-24 months   COHORTS          INDIA                          13                  0        0    1242
0-24 months   COHORTS          INDIA                          13                  1        0    1242
0-24 months   COHORTS          INDIA                          14                  0      125    1242
0-24 months   COHORTS          INDIA                          14                  1        8    1242
0-24 months   COHORTS          INDIA                          15                  0      225    1242
0-24 months   COHORTS          INDIA                          15                  1       22    1242
0-24 months   COHORTS          INDIA                          16                  0        0    1242
0-24 months   COHORTS          INDIA                          16                  1        0    1242
0-24 months   COHORTS          INDIA                          17                  0      104    1242
0-24 months   COHORTS          INDIA                          17                  1        3    1242
0-24 months   COHORTS          INDIA                          18                  0        0    1242
0-24 months   COHORTS          INDIA                          18                  1        0    1242
0-24 months   COHORTS          INDIA                          19                  0        0    1242
0-24 months   COHORTS          INDIA                          19                  1        0    1242
0-24 months   COHORTS          INDIA                          20                  0        0    1242
0-24 months   COHORTS          INDIA                          20                  1        0    1242
0-24 months   COHORTS          INDIA                          24                  0        0    1242
0-24 months   COHORTS          INDIA                          24                  1        0    1242
0-24 months   COHORTS          INDIA                          25                  0        0    1242
0-24 months   COHORTS          INDIA                          25                  1        0    1242
0-24 months   COHORTS          INDIA                          27                  0        0    1242
0-24 months   COHORTS          INDIA                          27                  1        0    1242
0-24 months   COHORTS          PHILIPPINES                    0                   0       52    2659
0-24 months   COHORTS          PHILIPPINES                    0                   1        4    2659
0-24 months   COHORTS          PHILIPPINES                    1                   0       32    2659
0-24 months   COHORTS          PHILIPPINES                    1                   1        2    2659
0-24 months   COHORTS          PHILIPPINES                    2                   0       86    2659
0-24 months   COHORTS          PHILIPPINES                    2                   1        6    2659
0-24 months   COHORTS          PHILIPPINES                    3                   0      156    2659
0-24 months   COHORTS          PHILIPPINES                    3                   1        5    2659
0-24 months   COHORTS          PHILIPPINES                    4                   0      236    2659
0-24 months   COHORTS          PHILIPPINES                    4                   1        9    2659
0-24 months   COHORTS          PHILIPPINES                    5                   0      174    2659
0-24 months   COHORTS          PHILIPPINES                    5                   1       18    2659
0-24 months   COHORTS          PHILIPPINES                    6                   0      570    2659
0-24 months   COHORTS          PHILIPPINES                    6                   1       41    2659
0-24 months   COHORTS          PHILIPPINES                    7                   0      129    2659
0-24 months   COHORTS          PHILIPPINES                    7                   1        8    2659
0-24 months   COHORTS          PHILIPPINES                    8                   0      198    2659
0-24 months   COHORTS          PHILIPPINES                    8                   1       10    2659
0-24 months   COHORTS          PHILIPPINES                    9                   0      175    2659
0-24 months   COHORTS          PHILIPPINES                    9                   1        2    2659
0-24 months   COHORTS          PHILIPPINES                    10                  0      290    2659
0-24 months   COHORTS          PHILIPPINES                    10                  1       14    2659
0-24 months   COHORTS          PHILIPPINES                    11                  0       61    2659
0-24 months   COHORTS          PHILIPPINES                    11                  1        0    2659
0-24 months   COHORTS          PHILIPPINES                    12                  0      145    2659
0-24 months   COHORTS          PHILIPPINES                    12                  1        8    2659
0-24 months   COHORTS          PHILIPPINES                    13                  0       56    2659
0-24 months   COHORTS          PHILIPPINES                    13                  1        2    2659
0-24 months   COHORTS          PHILIPPINES                    14                  0      123    2659
0-24 months   COHORTS          PHILIPPINES                    14                  1        3    2659
0-24 months   COHORTS          PHILIPPINES                    15                  0       34    2659
0-24 months   COHORTS          PHILIPPINES                    15                  1        1    2659
0-24 months   COHORTS          PHILIPPINES                    16                  0        4    2659
0-24 months   COHORTS          PHILIPPINES                    16                  1        1    2659
0-24 months   COHORTS          PHILIPPINES                    17                  0        2    2659
0-24 months   COHORTS          PHILIPPINES                    17                  1        0    2659
0-24 months   COHORTS          PHILIPPINES                    18                  0        2    2659
0-24 months   COHORTS          PHILIPPINES                    18                  1        0    2659
0-24 months   COHORTS          PHILIPPINES                    19                  0        0    2659
0-24 months   COHORTS          PHILIPPINES                    19                  1        0    2659
0-24 months   COHORTS          PHILIPPINES                    20                  0        0    2659
0-24 months   COHORTS          PHILIPPINES                    20                  1        0    2659
0-24 months   COHORTS          PHILIPPINES                    24                  0        0    2659
0-24 months   COHORTS          PHILIPPINES                    24                  1        0    2659
0-24 months   COHORTS          PHILIPPINES                    25                  0        0    2659
0-24 months   COHORTS          PHILIPPINES                    25                  1        0    2659
0-24 months   COHORTS          PHILIPPINES                    27                  0        0    2659
0-24 months   COHORTS          PHILIPPINES                    27                  1        0    2659
0-24 months   GMS-Nepal        NEPAL                          0                   0      221     596
0-24 months   GMS-Nepal        NEPAL                          0                   1       36     596
0-24 months   GMS-Nepal        NEPAL                          1                   0        0     596
0-24 months   GMS-Nepal        NEPAL                          1                   1        0     596
0-24 months   GMS-Nepal        NEPAL                          2                   0        0     596
0-24 months   GMS-Nepal        NEPAL                          2                   1        0     596
0-24 months   GMS-Nepal        NEPAL                          3                   0        0     596
0-24 months   GMS-Nepal        NEPAL                          3                   1        0     596
0-24 months   GMS-Nepal        NEPAL                          4                   0        0     596
0-24 months   GMS-Nepal        NEPAL                          4                   1        0     596
0-24 months   GMS-Nepal        NEPAL                          5                   0       78     596
0-24 months   GMS-Nepal        NEPAL                          5                   1       15     596
0-24 months   GMS-Nepal        NEPAL                          6                   0        0     596
0-24 months   GMS-Nepal        NEPAL                          6                   1        0     596
0-24 months   GMS-Nepal        NEPAL                          7                   0        0     596
0-24 months   GMS-Nepal        NEPAL                          7                   1        0     596
0-24 months   GMS-Nepal        NEPAL                          8                   0       91     596
0-24 months   GMS-Nepal        NEPAL                          8                   1        9     596
0-24 months   GMS-Nepal        NEPAL                          9                   0        0     596
0-24 months   GMS-Nepal        NEPAL                          9                   1        0     596
0-24 months   GMS-Nepal        NEPAL                          10                  0       94     596
0-24 months   GMS-Nepal        NEPAL                          10                  1       16     596
0-24 months   GMS-Nepal        NEPAL                          11                  0        0     596
0-24 months   GMS-Nepal        NEPAL                          11                  1        0     596
0-24 months   GMS-Nepal        NEPAL                          12                  0       32     596
0-24 months   GMS-Nepal        NEPAL                          12                  1        4     596
0-24 months   GMS-Nepal        NEPAL                          13                  0        0     596
0-24 months   GMS-Nepal        NEPAL                          13                  1        0     596
0-24 months   GMS-Nepal        NEPAL                          14                  0        0     596
0-24 months   GMS-Nepal        NEPAL                          14                  1        0     596
0-24 months   GMS-Nepal        NEPAL                          15                  0        0     596
0-24 months   GMS-Nepal        NEPAL                          15                  1        0     596
0-24 months   GMS-Nepal        NEPAL                          16                  0        0     596
0-24 months   GMS-Nepal        NEPAL                          16                  1        0     596
0-24 months   GMS-Nepal        NEPAL                          17                  0        0     596
0-24 months   GMS-Nepal        NEPAL                          17                  1        0     596
0-24 months   GMS-Nepal        NEPAL                          18                  0        0     596
0-24 months   GMS-Nepal        NEPAL                          18                  1        0     596
0-24 months   GMS-Nepal        NEPAL                          19                  0        0     596
0-24 months   GMS-Nepal        NEPAL                          19                  1        0     596
0-24 months   GMS-Nepal        NEPAL                          20                  0        0     596
0-24 months   GMS-Nepal        NEPAL                          20                  1        0     596
0-24 months   GMS-Nepal        NEPAL                          24                  0        0     596
0-24 months   GMS-Nepal        NEPAL                          24                  1        0     596
0-24 months   GMS-Nepal        NEPAL                          25                  0        0     596
0-24 months   GMS-Nepal        NEPAL                          25                  1        0     596
0-24 months   GMS-Nepal        NEPAL                          27                  0        0     596
0-24 months   GMS-Nepal        NEPAL                          27                  1        0     596
0-24 months   LCNI-5           MALAWI                         0                   0      258     712
0-24 months   LCNI-5           MALAWI                         0                   1        1     712
0-24 months   LCNI-5           MALAWI                         1                   0       10     712
0-24 months   LCNI-5           MALAWI                         1                   1        0     712
0-24 months   LCNI-5           MALAWI                         2                   0       25     712
0-24 months   LCNI-5           MALAWI                         2                   1        0     712
0-24 months   LCNI-5           MALAWI                         3                   0       36     712
0-24 months   LCNI-5           MALAWI                         3                   1        1     712
0-24 months   LCNI-5           MALAWI                         4                   0       47     712
0-24 months   LCNI-5           MALAWI                         4                   1        2     712
0-24 months   LCNI-5           MALAWI                         5                   0       53     712
0-24 months   LCNI-5           MALAWI                         5                   1        0     712
0-24 months   LCNI-5           MALAWI                         6                   0       63     712
0-24 months   LCNI-5           MALAWI                         6                   1        0     712
0-24 months   LCNI-5           MALAWI                         7                   0       59     712
0-24 months   LCNI-5           MALAWI                         7                   1        1     712
0-24 months   LCNI-5           MALAWI                         8                   0       75     712
0-24 months   LCNI-5           MALAWI                         8                   1        1     712
0-24 months   LCNI-5           MALAWI                         9                   0       11     712
0-24 months   LCNI-5           MALAWI                         9                   1        0     712
0-24 months   LCNI-5           MALAWI                         10                  0       14     712
0-24 months   LCNI-5           MALAWI                         10                  1        0     712
0-24 months   LCNI-5           MALAWI                         11                  0        5     712
0-24 months   LCNI-5           MALAWI                         11                  1        0     712
0-24 months   LCNI-5           MALAWI                         12                  0       46     712
0-24 months   LCNI-5           MALAWI                         12                  1        0     712
0-24 months   LCNI-5           MALAWI                         13                  0        1     712
0-24 months   LCNI-5           MALAWI                         13                  1        0     712
0-24 months   LCNI-5           MALAWI                         14                  0        2     712
0-24 months   LCNI-5           MALAWI                         14                  1        0     712
0-24 months   LCNI-5           MALAWI                         15                  0        0     712
0-24 months   LCNI-5           MALAWI                         15                  1        0     712
0-24 months   LCNI-5           MALAWI                         16                  0        1     712
0-24 months   LCNI-5           MALAWI                         16                  1        0     712
0-24 months   LCNI-5           MALAWI                         17                  0        0     712
0-24 months   LCNI-5           MALAWI                         17                  1        0     712
0-24 months   LCNI-5           MALAWI                         18                  0        0     712
0-24 months   LCNI-5           MALAWI                         18                  1        0     712
0-24 months   LCNI-5           MALAWI                         19                  0        0     712
0-24 months   LCNI-5           MALAWI                         19                  1        0     712
0-24 months   LCNI-5           MALAWI                         20                  0        0     712
0-24 months   LCNI-5           MALAWI                         20                  1        0     712
0-24 months   LCNI-5           MALAWI                         24                  0        0     712
0-24 months   LCNI-5           MALAWI                         24                  1        0     712
0-24 months   LCNI-5           MALAWI                         25                  0        0     712
0-24 months   LCNI-5           MALAWI                         25                  1        0     712
0-24 months   LCNI-5           MALAWI                         27                  0        0     712
0-24 months   LCNI-5           MALAWI                         27                  1        0     712
0-24 months   MAL-ED           BANGLADESH                     0                   0        0     138
0-24 months   MAL-ED           BANGLADESH                     0                   1        0     138
0-24 months   MAL-ED           BANGLADESH                     1                   0        7     138
0-24 months   MAL-ED           BANGLADESH                     1                   1        0     138
0-24 months   MAL-ED           BANGLADESH                     2                   0       12     138
0-24 months   MAL-ED           BANGLADESH                     2                   1        0     138
0-24 months   MAL-ED           BANGLADESH                     3                   0       12     138
0-24 months   MAL-ED           BANGLADESH                     3                   1        0     138
0-24 months   MAL-ED           BANGLADESH                     4                   0        7     138
0-24 months   MAL-ED           BANGLADESH                     4                   1        0     138
0-24 months   MAL-ED           BANGLADESH                     5                   0       29     138
0-24 months   MAL-ED           BANGLADESH                     5                   1        2     138
0-24 months   MAL-ED           BANGLADESH                     6                   0        6     138
0-24 months   MAL-ED           BANGLADESH                     6                   1        2     138
0-24 months   MAL-ED           BANGLADESH                     7                   0       10     138
0-24 months   MAL-ED           BANGLADESH                     7                   1        0     138
0-24 months   MAL-ED           BANGLADESH                     8                   0       15     138
0-24 months   MAL-ED           BANGLADESH                     8                   1        2     138
0-24 months   MAL-ED           BANGLADESH                     9                   0       13     138
0-24 months   MAL-ED           BANGLADESH                     9                   1        0     138
0-24 months   MAL-ED           BANGLADESH                     10                  0        8     138
0-24 months   MAL-ED           BANGLADESH                     10                  1        1     138
0-24 months   MAL-ED           BANGLADESH                     11                  0        0     138
0-24 months   MAL-ED           BANGLADESH                     11                  1        0     138
0-24 months   MAL-ED           BANGLADESH                     12                  0       10     138
0-24 months   MAL-ED           BANGLADESH                     12                  1        0     138
0-24 months   MAL-ED           BANGLADESH                     13                  0        0     138
0-24 months   MAL-ED           BANGLADESH                     13                  1        0     138
0-24 months   MAL-ED           BANGLADESH                     14                  0        0     138
0-24 months   MAL-ED           BANGLADESH                     14                  1        0     138
0-24 months   MAL-ED           BANGLADESH                     15                  0        0     138
0-24 months   MAL-ED           BANGLADESH                     15                  1        0     138
0-24 months   MAL-ED           BANGLADESH                     16                  0        2     138
0-24 months   MAL-ED           BANGLADESH                     16                  1        0     138
0-24 months   MAL-ED           BANGLADESH                     17                  0        0     138
0-24 months   MAL-ED           BANGLADESH                     17                  1        0     138
0-24 months   MAL-ED           BANGLADESH                     18                  0        0     138
0-24 months   MAL-ED           BANGLADESH                     18                  1        0     138
0-24 months   MAL-ED           BANGLADESH                     19                  0        0     138
0-24 months   MAL-ED           BANGLADESH                     19                  1        0     138
0-24 months   MAL-ED           BANGLADESH                     20                  0        0     138
0-24 months   MAL-ED           BANGLADESH                     20                  1        0     138
0-24 months   MAL-ED           BANGLADESH                     24                  0        0     138
0-24 months   MAL-ED           BANGLADESH                     24                  1        0     138
0-24 months   MAL-ED           BANGLADESH                     25                  0        0     138
0-24 months   MAL-ED           BANGLADESH                     25                  1        0     138
0-24 months   MAL-ED           BANGLADESH                     27                  0        0     138
0-24 months   MAL-ED           BANGLADESH                     27                  1        0     138
0-24 months   MAL-ED           INDIA                          0                   0        0     139
0-24 months   MAL-ED           INDIA                          0                   1        0     139
0-24 months   MAL-ED           INDIA                          1                   0        0     139
0-24 months   MAL-ED           INDIA                          1                   1        0     139
0-24 months   MAL-ED           INDIA                          2                   0        6     139
0-24 months   MAL-ED           INDIA                          2                   1        0     139
0-24 months   MAL-ED           INDIA                          3                   0       10     139
0-24 months   MAL-ED           INDIA                          3                   1        0     139
0-24 months   MAL-ED           INDIA                          4                   0        6     139
0-24 months   MAL-ED           INDIA                          4                   1        0     139
0-24 months   MAL-ED           INDIA                          5                   0       29     139
0-24 months   MAL-ED           INDIA                          5                   1        4     139
0-24 months   MAL-ED           INDIA                          6                   0        9     139
0-24 months   MAL-ED           INDIA                          6                   1        2     139
0-24 months   MAL-ED           INDIA                          7                   0        9     139
0-24 months   MAL-ED           INDIA                          7                   1        2     139
0-24 months   MAL-ED           INDIA                          8                   0       14     139
0-24 months   MAL-ED           INDIA                          8                   1        5     139
0-24 months   MAL-ED           INDIA                          9                   0       26     139
0-24 months   MAL-ED           INDIA                          9                   1        0     139
0-24 months   MAL-ED           INDIA                          10                  0        6     139
0-24 months   MAL-ED           INDIA                          10                  1        0     139
0-24 months   MAL-ED           INDIA                          11                  0        2     139
0-24 months   MAL-ED           INDIA                          11                  1        0     139
0-24 months   MAL-ED           INDIA                          12                  0        3     139
0-24 months   MAL-ED           INDIA                          12                  1        0     139
0-24 months   MAL-ED           INDIA                          13                  0        1     139
0-24 months   MAL-ED           INDIA                          13                  1        0     139
0-24 months   MAL-ED           INDIA                          14                  0        2     139
0-24 months   MAL-ED           INDIA                          14                  1        0     139
0-24 months   MAL-ED           INDIA                          15                  0        2     139
0-24 months   MAL-ED           INDIA                          15                  1        0     139
0-24 months   MAL-ED           INDIA                          16                  0        0     139
0-24 months   MAL-ED           INDIA                          16                  1        0     139
0-24 months   MAL-ED           INDIA                          17                  0        0     139
0-24 months   MAL-ED           INDIA                          17                  1        0     139
0-24 months   MAL-ED           INDIA                          18                  0        1     139
0-24 months   MAL-ED           INDIA                          18                  1        0     139
0-24 months   MAL-ED           INDIA                          19                  0        0     139
0-24 months   MAL-ED           INDIA                          19                  1        0     139
0-24 months   MAL-ED           INDIA                          20                  0        0     139
0-24 months   MAL-ED           INDIA                          20                  1        0     139
0-24 months   MAL-ED           INDIA                          24                  0        0     139
0-24 months   MAL-ED           INDIA                          24                  1        0     139
0-24 months   MAL-ED           INDIA                          25                  0        0     139
0-24 months   MAL-ED           INDIA                          25                  1        0     139
0-24 months   MAL-ED           INDIA                          27                  0        0     139
0-24 months   MAL-ED           INDIA                          27                  1        0     139
0-24 months   MAL-ED           NEPAL                          0                   0        0      96
0-24 months   MAL-ED           NEPAL                          0                   1        0      96
0-24 months   MAL-ED           NEPAL                          1                   0        0      96
0-24 months   MAL-ED           NEPAL                          1                   1        0      96
0-24 months   MAL-ED           NEPAL                          2                   0        4      96
0-24 months   MAL-ED           NEPAL                          2                   1        0      96
0-24 months   MAL-ED           NEPAL                          3                   0        3      96
0-24 months   MAL-ED           NEPAL                          3                   1        0      96
0-24 months   MAL-ED           NEPAL                          4                   0       10      96
0-24 months   MAL-ED           NEPAL                          4                   1        0      96
0-24 months   MAL-ED           NEPAL                          5                   0        6      96
0-24 months   MAL-ED           NEPAL                          5                   1        0      96
0-24 months   MAL-ED           NEPAL                          6                   0        4      96
0-24 months   MAL-ED           NEPAL                          6                   1        0      96
0-24 months   MAL-ED           NEPAL                          7                   0        8      96
0-24 months   MAL-ED           NEPAL                          7                   1        1      96
0-24 months   MAL-ED           NEPAL                          8                   0       12      96
0-24 months   MAL-ED           NEPAL                          8                   1        0      96
0-24 months   MAL-ED           NEPAL                          9                   0        7      96
0-24 months   MAL-ED           NEPAL                          9                   1        0      96
0-24 months   MAL-ED           NEPAL                          10                  0       26      96
0-24 months   MAL-ED           NEPAL                          10                  1        1      96
0-24 months   MAL-ED           NEPAL                          11                  0        1      96
0-24 months   MAL-ED           NEPAL                          11                  1        0      96
0-24 months   MAL-ED           NEPAL                          12                  0        7      96
0-24 months   MAL-ED           NEPAL                          12                  1        0      96
0-24 months   MAL-ED           NEPAL                          13                  0        0      96
0-24 months   MAL-ED           NEPAL                          13                  1        0      96
0-24 months   MAL-ED           NEPAL                          14                  0        0      96
0-24 months   MAL-ED           NEPAL                          14                  1        0      96
0-24 months   MAL-ED           NEPAL                          15                  0        1      96
0-24 months   MAL-ED           NEPAL                          15                  1        0      96
0-24 months   MAL-ED           NEPAL                          16                  0        1      96
0-24 months   MAL-ED           NEPAL                          16                  1        0      96
0-24 months   MAL-ED           NEPAL                          17                  0        3      96
0-24 months   MAL-ED           NEPAL                          17                  1        0      96
0-24 months   MAL-ED           NEPAL                          18                  0        1      96
0-24 months   MAL-ED           NEPAL                          18                  1        0      96
0-24 months   MAL-ED           NEPAL                          19                  0        0      96
0-24 months   MAL-ED           NEPAL                          19                  1        0      96
0-24 months   MAL-ED           NEPAL                          20                  0        0      96
0-24 months   MAL-ED           NEPAL                          20                  1        0      96
0-24 months   MAL-ED           NEPAL                          24                  0        0      96
0-24 months   MAL-ED           NEPAL                          24                  1        0      96
0-24 months   MAL-ED           NEPAL                          25                  0        0      96
0-24 months   MAL-ED           NEPAL                          25                  1        0      96
0-24 months   MAL-ED           NEPAL                          27                  0        0      96
0-24 months   MAL-ED           NEPAL                          27                  1        0      96
0-24 months   MAL-ED           PERU                           0                   0        1     234
0-24 months   MAL-ED           PERU                           0                   1        0     234
0-24 months   MAL-ED           PERU                           1                   0        2     234
0-24 months   MAL-ED           PERU                           1                   1        0     234
0-24 months   MAL-ED           PERU                           2                   0        1     234
0-24 months   MAL-ED           PERU                           2                   1        0     234
0-24 months   MAL-ED           PERU                           3                   0        8     234
0-24 months   MAL-ED           PERU                           3                   1        0     234
0-24 months   MAL-ED           PERU                           4                   0        4     234
0-24 months   MAL-ED           PERU                           4                   1        0     234
0-24 months   MAL-ED           PERU                           5                   0        7     234
0-24 months   MAL-ED           PERU                           5                   1        0     234
0-24 months   MAL-ED           PERU                           6                   0       24     234
0-24 months   MAL-ED           PERU                           6                   1        0     234
0-24 months   MAL-ED           PERU                           7                   0       16     234
0-24 months   MAL-ED           PERU                           7                   1        0     234
0-24 months   MAL-ED           PERU                           8                   0       22     234
0-24 months   MAL-ED           PERU                           8                   1        0     234
0-24 months   MAL-ED           PERU                           9                   0       26     234
0-24 months   MAL-ED           PERU                           9                   1        0     234
0-24 months   MAL-ED           PERU                           10                  0       12     234
0-24 months   MAL-ED           PERU                           10                  1        0     234
0-24 months   MAL-ED           PERU                           11                  0       91     234
0-24 months   MAL-ED           PERU                           11                  1        1     234
0-24 months   MAL-ED           PERU                           12                  0        1     234
0-24 months   MAL-ED           PERU                           12                  1        0     234
0-24 months   MAL-ED           PERU                           13                  0        4     234
0-24 months   MAL-ED           PERU                           13                  1        0     234
0-24 months   MAL-ED           PERU                           14                  0        4     234
0-24 months   MAL-ED           PERU                           14                  1        0     234
0-24 months   MAL-ED           PERU                           15                  0        1     234
0-24 months   MAL-ED           PERU                           15                  1        0     234
0-24 months   MAL-ED           PERU                           16                  0        1     234
0-24 months   MAL-ED           PERU                           16                  1        0     234
0-24 months   MAL-ED           PERU                           17                  0        1     234
0-24 months   MAL-ED           PERU                           17                  1        0     234
0-24 months   MAL-ED           PERU                           18                  0        5     234
0-24 months   MAL-ED           PERU                           18                  1        0     234
0-24 months   MAL-ED           PERU                           19                  0        0     234
0-24 months   MAL-ED           PERU                           19                  1        0     234
0-24 months   MAL-ED           PERU                           20                  0        2     234
0-24 months   MAL-ED           PERU                           20                  1        0     234
0-24 months   MAL-ED           PERU                           24                  0        0     234
0-24 months   MAL-ED           PERU                           24                  1        0     234
0-24 months   MAL-ED           PERU                           25                  0        0     234
0-24 months   MAL-ED           PERU                           25                  1        0     234
0-24 months   MAL-ED           PERU                           27                  0        0     234
0-24 months   MAL-ED           PERU                           27                  1        0     234
0-24 months   MAL-ED           SOUTH AFRICA                   0                   0        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   0                   1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   1                   0        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   1                   1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   2                   0        1      99
0-24 months   MAL-ED           SOUTH AFRICA                   2                   1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   3                   0        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   3                   1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   4                   0        4      99
0-24 months   MAL-ED           SOUTH AFRICA                   4                   1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   5                   0        2      99
0-24 months   MAL-ED           SOUTH AFRICA                   5                   1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   6                   0        6      99
0-24 months   MAL-ED           SOUTH AFRICA                   6                   1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   7                   0        5      99
0-24 months   MAL-ED           SOUTH AFRICA                   7                   1        1      99
0-24 months   MAL-ED           SOUTH AFRICA                   8                   0       11      99
0-24 months   MAL-ED           SOUTH AFRICA                   8                   1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   9                   0        6      99
0-24 months   MAL-ED           SOUTH AFRICA                   9                   1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   10                  0        9      99
0-24 months   MAL-ED           SOUTH AFRICA                   10                  1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   11                  0       16      99
0-24 months   MAL-ED           SOUTH AFRICA                   11                  1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   12                  0       33      99
0-24 months   MAL-ED           SOUTH AFRICA                   12                  1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   13                  0        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   13                  1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   14                  0        2      99
0-24 months   MAL-ED           SOUTH AFRICA                   14                  1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   15                  0        2      99
0-24 months   MAL-ED           SOUTH AFRICA                   15                  1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   16                  0        1      99
0-24 months   MAL-ED           SOUTH AFRICA                   16                  1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   17                  0        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   17                  1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   18                  0        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   18                  1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   19                  0        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   19                  1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   20                  0        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   20                  1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   24                  0        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   24                  1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   25                  0        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   25                  1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   27                  0        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   27                  1        0      99
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0       14     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                   0       13     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                   1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                   0       18     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                   1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                   0       13     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                   1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                   0       11     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                   1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                   0        8     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                   1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                   0      118     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                   1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                   0        1     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                   1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                   0        2     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                   1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                  0        4     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                  1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                  0        3     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                  1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                  0        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                  1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                  0        1     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                  1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                  0        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                  1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                  0        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                  1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                  0        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                  1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                  0        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                  1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                  0        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                  1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                  0        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                  1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                  0        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                  1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                  0        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                  1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                  0        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                  1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                  0        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                  1        0     206
0-24 months   NIH-Crypto       BANGLADESH                     0                   0      157     730
0-24 months   NIH-Crypto       BANGLADESH                     0                   1        9     730
0-24 months   NIH-Crypto       BANGLADESH                     1                   0       19     730
0-24 months   NIH-Crypto       BANGLADESH                     1                   1        0     730
0-24 months   NIH-Crypto       BANGLADESH                     2                   0       10     730
0-24 months   NIH-Crypto       BANGLADESH                     2                   1        2     730
0-24 months   NIH-Crypto       BANGLADESH                     3                   0       29     730
0-24 months   NIH-Crypto       BANGLADESH                     3                   1        3     730
0-24 months   NIH-Crypto       BANGLADESH                     4                   0       38     730
0-24 months   NIH-Crypto       BANGLADESH                     4                   1        1     730
0-24 months   NIH-Crypto       BANGLADESH                     5                   0       82     730
0-24 months   NIH-Crypto       BANGLADESH                     5                   1        5     730
0-24 months   NIH-Crypto       BANGLADESH                     6                   0       35     730
0-24 months   NIH-Crypto       BANGLADESH                     6                   1        0     730
0-24 months   NIH-Crypto       BANGLADESH                     7                   0       52     730
0-24 months   NIH-Crypto       BANGLADESH                     7                   1        2     730
0-24 months   NIH-Crypto       BANGLADESH                     8                   0       85     730
0-24 months   NIH-Crypto       BANGLADESH                     8                   1        2     730
0-24 months   NIH-Crypto       BANGLADESH                     9                   0       82     730
0-24 months   NIH-Crypto       BANGLADESH                     9                   1        1     730
0-24 months   NIH-Crypto       BANGLADESH                     10                  0       50     730
0-24 months   NIH-Crypto       BANGLADESH                     10                  1        1     730
0-24 months   NIH-Crypto       BANGLADESH                     11                  0        0     730
0-24 months   NIH-Crypto       BANGLADESH                     11                  1        0     730
0-24 months   NIH-Crypto       BANGLADESH                     12                  0       34     730
0-24 months   NIH-Crypto       BANGLADESH                     12                  1        0     730
0-24 months   NIH-Crypto       BANGLADESH                     13                  0        0     730
0-24 months   NIH-Crypto       BANGLADESH                     13                  1        0     730
0-24 months   NIH-Crypto       BANGLADESH                     14                  0        8     730
0-24 months   NIH-Crypto       BANGLADESH                     14                  1        0     730
0-24 months   NIH-Crypto       BANGLADESH                     15                  0       16     730
0-24 months   NIH-Crypto       BANGLADESH                     15                  1        0     730
0-24 months   NIH-Crypto       BANGLADESH                     16                  0        0     730
0-24 months   NIH-Crypto       BANGLADESH                     16                  1        0     730
0-24 months   NIH-Crypto       BANGLADESH                     17                  0        7     730
0-24 months   NIH-Crypto       BANGLADESH                     17                  1        0     730
0-24 months   NIH-Crypto       BANGLADESH                     18                  0        0     730
0-24 months   NIH-Crypto       BANGLADESH                     18                  1        0     730
0-24 months   NIH-Crypto       BANGLADESH                     19                  0        0     730
0-24 months   NIH-Crypto       BANGLADESH                     19                  1        0     730
0-24 months   NIH-Crypto       BANGLADESH                     20                  0        0     730
0-24 months   NIH-Crypto       BANGLADESH                     20                  1        0     730
0-24 months   NIH-Crypto       BANGLADESH                     24                  0        0     730
0-24 months   NIH-Crypto       BANGLADESH                     24                  1        0     730
0-24 months   NIH-Crypto       BANGLADESH                     25                  0        0     730
0-24 months   NIH-Crypto       BANGLADESH                     25                  1        0     730
0-24 months   NIH-Crypto       BANGLADESH                     27                  0        0     730
0-24 months   NIH-Crypto       BANGLADESH                     27                  1        0     730
0-24 months   PROBIT           BELARUS                        0                   0        0   16012
0-24 months   PROBIT           BELARUS                        0                   1        0   16012
0-24 months   PROBIT           BELARUS                        1                   0        0   16012
0-24 months   PROBIT           BELARUS                        1                   1        0   16012
0-24 months   PROBIT           BELARUS                        2                   0        0   16012
0-24 months   PROBIT           BELARUS                        2                   1        0   16012
0-24 months   PROBIT           BELARUS                        3                   0        0   16012
0-24 months   PROBIT           BELARUS                        3                   1        0   16012
0-24 months   PROBIT           BELARUS                        4                   0        0   16012
0-24 months   PROBIT           BELARUS                        4                   1        0   16012
0-24 months   PROBIT           BELARUS                        5                   0        0   16012
0-24 months   PROBIT           BELARUS                        5                   1        0   16012
0-24 months   PROBIT           BELARUS                        6                   0        0   16012
0-24 months   PROBIT           BELARUS                        6                   1        0   16012
0-24 months   PROBIT           BELARUS                        7                   0        0   16012
0-24 months   PROBIT           BELARUS                        7                   1        0   16012
0-24 months   PROBIT           BELARUS                        8                   0       24   16012
0-24 months   PROBIT           BELARUS                        8                   1        1   16012
0-24 months   PROBIT           BELARUS                        9                   0        0   16012
0-24 months   PROBIT           BELARUS                        9                   1        0   16012
0-24 months   PROBIT           BELARUS                        10                  0      356   16012
0-24 months   PROBIT           BELARUS                        10                  1        4   16012
0-24 months   PROBIT           BELARUS                        11                  0        0   16012
0-24 months   PROBIT           BELARUS                        11                  1        0   16012
0-24 months   PROBIT           BELARUS                        12                  0     5878   16012
0-24 months   PROBIT           BELARUS                        12                  1       51   16012
0-24 months   PROBIT           BELARUS                        13                  0     7006   16012
0-24 months   PROBIT           BELARUS                        13                  1       58   16012
0-24 months   PROBIT           BELARUS                        14                  0      427   16012
0-24 months   PROBIT           BELARUS                        14                  1        3   16012
0-24 months   PROBIT           BELARUS                        15                  0        0   16012
0-24 months   PROBIT           BELARUS                        15                  1        0   16012
0-24 months   PROBIT           BELARUS                        16                  0     2190   16012
0-24 months   PROBIT           BELARUS                        16                  1       14   16012
0-24 months   PROBIT           BELARUS                        17                  0        0   16012
0-24 months   PROBIT           BELARUS                        17                  1        0   16012
0-24 months   PROBIT           BELARUS                        18                  0        0   16012
0-24 months   PROBIT           BELARUS                        18                  1        0   16012
0-24 months   PROBIT           BELARUS                        19                  0        0   16012
0-24 months   PROBIT           BELARUS                        19                  1        0   16012
0-24 months   PROBIT           BELARUS                        20                  0        0   16012
0-24 months   PROBIT           BELARUS                        20                  1        0   16012
0-24 months   PROBIT           BELARUS                        24                  0        0   16012
0-24 months   PROBIT           BELARUS                        24                  1        0   16012
0-24 months   PROBIT           BELARUS                        25                  0        0   16012
0-24 months   PROBIT           BELARUS                        25                  1        0   16012
0-24 months   PROBIT           BELARUS                        27                  0        0   16012
0-24 months   PROBIT           BELARUS                        27                  1        0   16012
0-24 months   PROVIDE          BANGLADESH                     0                   0      178     641
0-24 months   PROVIDE          BANGLADESH                     0                   1        7     641
0-24 months   PROVIDE          BANGLADESH                     1                   0       13     641
0-24 months   PROVIDE          BANGLADESH                     1                   1        0     641
0-24 months   PROVIDE          BANGLADESH                     2                   0       17     641
0-24 months   PROVIDE          BANGLADESH                     2                   1        1     641
0-24 months   PROVIDE          BANGLADESH                     3                   0       25     641
0-24 months   PROVIDE          BANGLADESH                     3                   1        0     641
0-24 months   PROVIDE          BANGLADESH                     4                   0       44     641
0-24 months   PROVIDE          BANGLADESH                     4                   1        2     641
0-24 months   PROVIDE          BANGLADESH                     5                   0       69     641
0-24 months   PROVIDE          BANGLADESH                     5                   1        1     641
0-24 months   PROVIDE          BANGLADESH                     6                   0       28     641
0-24 months   PROVIDE          BANGLADESH                     6                   1        0     641
0-24 months   PROVIDE          BANGLADESH                     7                   0       36     641
0-24 months   PROVIDE          BANGLADESH                     7                   1        0     641
0-24 months   PROVIDE          BANGLADESH                     8                   0       59     641
0-24 months   PROVIDE          BANGLADESH                     8                   1        1     641
0-24 months   PROVIDE          BANGLADESH                     9                   0       58     641
0-24 months   PROVIDE          BANGLADESH                     9                   1        1     641
0-24 months   PROVIDE          BANGLADESH                     10                  0       35     641
0-24 months   PROVIDE          BANGLADESH                     10                  1        1     641
0-24 months   PROVIDE          BANGLADESH                     11                  0       25     641
0-24 months   PROVIDE          BANGLADESH                     11                  1        0     641
0-24 months   PROVIDE          BANGLADESH                     12                  0        4     641
0-24 months   PROVIDE          BANGLADESH                     12                  1        0     641
0-24 months   PROVIDE          BANGLADESH                     13                  0        0     641
0-24 months   PROVIDE          BANGLADESH                     13                  1        0     641
0-24 months   PROVIDE          BANGLADESH                     14                  0       18     641
0-24 months   PROVIDE          BANGLADESH                     14                  1        1     641
0-24 months   PROVIDE          BANGLADESH                     15                  0        8     641
0-24 months   PROVIDE          BANGLADESH                     15                  1        0     641
0-24 months   PROVIDE          BANGLADESH                     16                  0        8     641
0-24 months   PROVIDE          BANGLADESH                     16                  1        0     641
0-24 months   PROVIDE          BANGLADESH                     17                  0        0     641
0-24 months   PROVIDE          BANGLADESH                     17                  1        0     641
0-24 months   PROVIDE          BANGLADESH                     18                  0        0     641
0-24 months   PROVIDE          BANGLADESH                     18                  1        0     641
0-24 months   PROVIDE          BANGLADESH                     19                  0        1     641
0-24 months   PROVIDE          BANGLADESH                     19                  1        0     641
0-24 months   PROVIDE          BANGLADESH                     20                  0        0     641
0-24 months   PROVIDE          BANGLADESH                     20                  1        0     641
0-24 months   PROVIDE          BANGLADESH                     24                  0        0     641
0-24 months   PROVIDE          BANGLADESH                     24                  1        0     641
0-24 months   PROVIDE          BANGLADESH                     25                  0        0     641
0-24 months   PROVIDE          BANGLADESH                     25                  1        0     641
0-24 months   PROVIDE          BANGLADESH                     27                  0        0     641
0-24 months   PROVIDE          BANGLADESH                     27                  1        0     641
0-24 months   SAS-CompFeed     INDIA                          0                   0      139    1363
0-24 months   SAS-CompFeed     INDIA                          0                   1       18    1363
0-24 months   SAS-CompFeed     INDIA                          1                   0        0    1363
0-24 months   SAS-CompFeed     INDIA                          1                   1        0    1363
0-24 months   SAS-CompFeed     INDIA                          2                   0        4    1363
0-24 months   SAS-CompFeed     INDIA                          2                   1        1    1363
0-24 months   SAS-CompFeed     INDIA                          3                   0       10    1363
0-24 months   SAS-CompFeed     INDIA                          3                   1        2    1363
0-24 months   SAS-CompFeed     INDIA                          4                   0       21    1363
0-24 months   SAS-CompFeed     INDIA                          4                   1        2    1363
0-24 months   SAS-CompFeed     INDIA                          5                   0       73    1363
0-24 months   SAS-CompFeed     INDIA                          5                   1        9    1363
0-24 months   SAS-CompFeed     INDIA                          6                   0       20    1363
0-24 months   SAS-CompFeed     INDIA                          6                   1        6    1363
0-24 months   SAS-CompFeed     INDIA                          7                   0       96    1363
0-24 months   SAS-CompFeed     INDIA                          7                   1        9    1363
0-24 months   SAS-CompFeed     INDIA                          8                   0      138    1363
0-24 months   SAS-CompFeed     INDIA                          8                   1       15    1363
0-24 months   SAS-CompFeed     INDIA                          9                   0       81    1363
0-24 months   SAS-CompFeed     INDIA                          9                   1        8    1363
0-24 months   SAS-CompFeed     INDIA                          10                  0      322    1363
0-24 months   SAS-CompFeed     INDIA                          10                  1       27    1363
0-24 months   SAS-CompFeed     INDIA                          11                  0       37    1363
0-24 months   SAS-CompFeed     INDIA                          11                  1        0    1363
0-24 months   SAS-CompFeed     INDIA                          12                  0      201    1363
0-24 months   SAS-CompFeed     INDIA                          12                  1       12    1363
0-24 months   SAS-CompFeed     INDIA                          13                  0        7    1363
0-24 months   SAS-CompFeed     INDIA                          13                  1        0    1363
0-24 months   SAS-CompFeed     INDIA                          14                  0       15    1363
0-24 months   SAS-CompFeed     INDIA                          14                  1        1    1363
0-24 months   SAS-CompFeed     INDIA                          15                  0       56    1363
0-24 months   SAS-CompFeed     INDIA                          15                  1        3    1363
0-24 months   SAS-CompFeed     INDIA                          16                  0       10    1363
0-24 months   SAS-CompFeed     INDIA                          16                  1        0    1363
0-24 months   SAS-CompFeed     INDIA                          17                  0       14    1363
0-24 months   SAS-CompFeed     INDIA                          17                  1        1    1363
0-24 months   SAS-CompFeed     INDIA                          18                  0        3    1363
0-24 months   SAS-CompFeed     INDIA                          18                  1        0    1363
0-24 months   SAS-CompFeed     INDIA                          19                  0        1    1363
0-24 months   SAS-CompFeed     INDIA                          19                  1        0    1363
0-24 months   SAS-CompFeed     INDIA                          20                  0        1    1363
0-24 months   SAS-CompFeed     INDIA                          20                  1        0    1363
0-24 months   SAS-CompFeed     INDIA                          24                  0        0    1363
0-24 months   SAS-CompFeed     INDIA                          24                  1        0    1363
0-24 months   SAS-CompFeed     INDIA                          25                  0        0    1363
0-24 months   SAS-CompFeed     INDIA                          25                  1        0    1363
0-24 months   SAS-CompFeed     INDIA                          27                  0        0    1363
0-24 months   SAS-CompFeed     INDIA                          27                  1        0    1363
0-24 months   SAS-FoodSuppl    INDIA                          0                   0      107     375
0-24 months   SAS-FoodSuppl    INDIA                          0                   1       24     375
0-24 months   SAS-FoodSuppl    INDIA                          1                   0        1     375
0-24 months   SAS-FoodSuppl    INDIA                          1                   1        0     375
0-24 months   SAS-FoodSuppl    INDIA                          2                   0        7     375
0-24 months   SAS-FoodSuppl    INDIA                          2                   1        3     375
0-24 months   SAS-FoodSuppl    INDIA                          3                   0        4     375
0-24 months   SAS-FoodSuppl    INDIA                          3                   1        2     375
0-24 months   SAS-FoodSuppl    INDIA                          4                   0        8     375
0-24 months   SAS-FoodSuppl    INDIA                          4                   1        2     375
0-24 months   SAS-FoodSuppl    INDIA                          5                   0       38     375
0-24 months   SAS-FoodSuppl    INDIA                          5                   1       11     375
0-24 months   SAS-FoodSuppl    INDIA                          6                   0        8     375
0-24 months   SAS-FoodSuppl    INDIA                          6                   1        2     375
0-24 months   SAS-FoodSuppl    INDIA                          7                   0       11     375
0-24 months   SAS-FoodSuppl    INDIA                          7                   1        2     375
0-24 months   SAS-FoodSuppl    INDIA                          8                   0       40     375
0-24 months   SAS-FoodSuppl    INDIA                          8                   1        6     375
0-24 months   SAS-FoodSuppl    INDIA                          9                   0       22     375
0-24 months   SAS-FoodSuppl    INDIA                          9                   1        4     375
0-24 months   SAS-FoodSuppl    INDIA                          10                  0       46     375
0-24 months   SAS-FoodSuppl    INDIA                          10                  1        6     375
0-24 months   SAS-FoodSuppl    INDIA                          11                  0        0     375
0-24 months   SAS-FoodSuppl    INDIA                          11                  1        2     375
0-24 months   SAS-FoodSuppl    INDIA                          12                  0       10     375
0-24 months   SAS-FoodSuppl    INDIA                          12                  1        0     375
0-24 months   SAS-FoodSuppl    INDIA                          13                  0        1     375
0-24 months   SAS-FoodSuppl    INDIA                          13                  1        0     375
0-24 months   SAS-FoodSuppl    INDIA                          14                  0        4     375
0-24 months   SAS-FoodSuppl    INDIA                          14                  1        1     375
0-24 months   SAS-FoodSuppl    INDIA                          15                  0        3     375
0-24 months   SAS-FoodSuppl    INDIA                          15                  1        0     375
0-24 months   SAS-FoodSuppl    INDIA                          16                  0        0     375
0-24 months   SAS-FoodSuppl    INDIA                          16                  1        0     375
0-24 months   SAS-FoodSuppl    INDIA                          17                  0        0     375
0-24 months   SAS-FoodSuppl    INDIA                          17                  1        0     375
0-24 months   SAS-FoodSuppl    INDIA                          18                  0        0     375
0-24 months   SAS-FoodSuppl    INDIA                          18                  1        0     375
0-24 months   SAS-FoodSuppl    INDIA                          19                  0        0     375
0-24 months   SAS-FoodSuppl    INDIA                          19                  1        0     375
0-24 months   SAS-FoodSuppl    INDIA                          20                  0        0     375
0-24 months   SAS-FoodSuppl    INDIA                          20                  1        0     375
0-24 months   SAS-FoodSuppl    INDIA                          24                  0        0     375
0-24 months   SAS-FoodSuppl    INDIA                          24                  1        0     375
0-24 months   SAS-FoodSuppl    INDIA                          25                  0        0     375
0-24 months   SAS-FoodSuppl    INDIA                          25                  1        0     375
0-24 months   SAS-FoodSuppl    INDIA                          27                  0        0     375
0-24 months   SAS-FoodSuppl    INDIA                          27                  1        0     375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0        4    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1        0    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        0    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        0    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0        0    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1        0    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   0        0    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   1        0    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   0        5    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   1        0    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   0        0    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   1        0    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   0        1    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   1        0    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   0     1113    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   1       29    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   0        8    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   1        0    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   0       48    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   1        2    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  0       20    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  1        2    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  0      505    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  1       16    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  0       14    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  1        1    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                  0      106    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                  1        2    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                  0       12    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                  1        0    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                  0       21    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                  1        0    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                  0       26    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                  1        0    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                  0       21    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                  1        0    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                  0        4    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                  1        0    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                  0        0    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                  1        0    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                  0        0    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                  1        0    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                  0       12    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                  1        2    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                  0        1    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                  1        0    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                  0      176    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                  1        4    2155
0-24 months   ZVITAMBO         ZIMBABWE                       0                   0       40    9246
0-24 months   ZVITAMBO         ZIMBABWE                       0                   1        2    9246
0-24 months   ZVITAMBO         ZIMBABWE                       1                   0        1    9246
0-24 months   ZVITAMBO         ZIMBABWE                       1                   1        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       2                   0        4    9246
0-24 months   ZVITAMBO         ZIMBABWE                       2                   1        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       3                   0        9    9246
0-24 months   ZVITAMBO         ZIMBABWE                       3                   1        1    9246
0-24 months   ZVITAMBO         ZIMBABWE                       4                   0       16    9246
0-24 months   ZVITAMBO         ZIMBABWE                       4                   1        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       5                   0       23    9246
0-24 months   ZVITAMBO         ZIMBABWE                       5                   1        3    9246
0-24 months   ZVITAMBO         ZIMBABWE                       6                   0       28    9246
0-24 months   ZVITAMBO         ZIMBABWE                       6                   1        1    9246
0-24 months   ZVITAMBO         ZIMBABWE                       7                   0      556    9246
0-24 months   ZVITAMBO         ZIMBABWE                       7                   1       15    9246
0-24 months   ZVITAMBO         ZIMBABWE                       8                   0       76    9246
0-24 months   ZVITAMBO         ZIMBABWE                       8                   1        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       9                   0      597    9246
0-24 months   ZVITAMBO         ZIMBABWE                       9                   1       17    9246
0-24 months   ZVITAMBO         ZIMBABWE                       10                  0      218    9246
0-24 months   ZVITAMBO         ZIMBABWE                       10                  1        6    9246
0-24 months   ZVITAMBO         ZIMBABWE                       11                  0     6904    9246
0-24 months   ZVITAMBO         ZIMBABWE                       11                  1      109    9246
0-24 months   ZVITAMBO         ZIMBABWE                       12                  0       41    9246
0-24 months   ZVITAMBO         ZIMBABWE                       12                  1        1    9246
0-24 months   ZVITAMBO         ZIMBABWE                       13                  0      570    9246
0-24 months   ZVITAMBO         ZIMBABWE                       13                  1        8    9246
0-24 months   ZVITAMBO         ZIMBABWE                       14                  0        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       14                  1        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       15                  0        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       15                  1        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       16                  0        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       16                  1        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       17                  0        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       17                  1        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       18                  0        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       18                  1        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       19                  0        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       19                  1        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       20                  0        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       20                  1        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       24                  0        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       24                  1        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       25                  0        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       25                  1        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       27                  0        0    9246
0-24 months   ZVITAMBO         ZIMBABWE                       27                  1        0    9246
0-6 months    COHORTS          PHILIPPINES                    0                   0       12     804
0-6 months    COHORTS          PHILIPPINES                    0                   1        1     804
0-6 months    COHORTS          PHILIPPINES                    1                   0       12     804
0-6 months    COHORTS          PHILIPPINES                    1                   1        0     804
0-6 months    COHORTS          PHILIPPINES                    2                   0       25     804
0-6 months    COHORTS          PHILIPPINES                    2                   1        3     804
0-6 months    COHORTS          PHILIPPINES                    3                   0       45     804
0-6 months    COHORTS          PHILIPPINES                    3                   1        2     804
0-6 months    COHORTS          PHILIPPINES                    4                   0       58     804
0-6 months    COHORTS          PHILIPPINES                    4                   1        2     804
0-6 months    COHORTS          PHILIPPINES                    5                   0       57     804
0-6 months    COHORTS          PHILIPPINES                    5                   1        3     804
0-6 months    COHORTS          PHILIPPINES                    6                   0      176     804
0-6 months    COHORTS          PHILIPPINES                    6                   1       18     804
0-6 months    COHORTS          PHILIPPINES                    7                   0       36     804
0-6 months    COHORTS          PHILIPPINES                    7                   1        0     804
0-6 months    COHORTS          PHILIPPINES                    8                   0       76     804
0-6 months    COHORTS          PHILIPPINES                    8                   1        1     804
0-6 months    COHORTS          PHILIPPINES                    9                   0       49     804
0-6 months    COHORTS          PHILIPPINES                    9                   1        2     804
0-6 months    COHORTS          PHILIPPINES                    10                  0       87     804
0-6 months    COHORTS          PHILIPPINES                    10                  1       11     804
0-6 months    COHORTS          PHILIPPINES                    11                  0       22     804
0-6 months    COHORTS          PHILIPPINES                    11                  1        1     804
0-6 months    COHORTS          PHILIPPINES                    12                  0       39     804
0-6 months    COHORTS          PHILIPPINES                    12                  1        1     804
0-6 months    COHORTS          PHILIPPINES                    13                  0       23     804
0-6 months    COHORTS          PHILIPPINES                    13                  1        1     804
0-6 months    COHORTS          PHILIPPINES                    14                  0       31     804
0-6 months    COHORTS          PHILIPPINES                    14                  1        1     804
0-6 months    COHORTS          PHILIPPINES                    15                  0        8     804
0-6 months    COHORTS          PHILIPPINES                    15                  1        1     804
0-6 months    COHORTS          PHILIPPINES                    16                  0        0     804
0-6 months    COHORTS          PHILIPPINES                    16                  1        0     804
0-6 months    COHORTS          PHILIPPINES                    17                  0        0     804
0-6 months    COHORTS          PHILIPPINES                    17                  1        0     804
0-6 months    COHORTS          PHILIPPINES                    18                  0        0     804
0-6 months    COHORTS          PHILIPPINES                    18                  1        0     804
0-6 months    COHORTS          PHILIPPINES                    19                  0        0     804
0-6 months    COHORTS          PHILIPPINES                    19                  1        0     804
0-6 months    COHORTS          PHILIPPINES                    20                  0        0     804
0-6 months    COHORTS          PHILIPPINES                    20                  1        0     804
0-6 months    COHORTS          PHILIPPINES                    24                  0        0     804
0-6 months    COHORTS          PHILIPPINES                    24                  1        0     804
0-6 months    COHORTS          PHILIPPINES                    25                  0        0     804
0-6 months    COHORTS          PHILIPPINES                    25                  1        0     804
0-6 months    COHORTS          PHILIPPINES                    27                  0        0     804
0-6 months    COHORTS          PHILIPPINES                    27                  1        0     804
0-6 months    GMS-Nepal        NEPAL                          0                   0      221     566
0-6 months    GMS-Nepal        NEPAL                          0                   1       26     566
0-6 months    GMS-Nepal        NEPAL                          1                   0        0     566
0-6 months    GMS-Nepal        NEPAL                          1                   1        0     566
0-6 months    GMS-Nepal        NEPAL                          2                   0        0     566
0-6 months    GMS-Nepal        NEPAL                          2                   1        0     566
0-6 months    GMS-Nepal        NEPAL                          3                   0        0     566
0-6 months    GMS-Nepal        NEPAL                          3                   1        0     566
0-6 months    GMS-Nepal        NEPAL                          4                   0        0     566
0-6 months    GMS-Nepal        NEPAL                          4                   1        0     566
0-6 months    GMS-Nepal        NEPAL                          5                   0       77     566
0-6 months    GMS-Nepal        NEPAL                          5                   1       13     566
0-6 months    GMS-Nepal        NEPAL                          6                   0        0     566
0-6 months    GMS-Nepal        NEPAL                          6                   1        0     566
0-6 months    GMS-Nepal        NEPAL                          7                   0        0     566
0-6 months    GMS-Nepal        NEPAL                          7                   1        0     566
0-6 months    GMS-Nepal        NEPAL                          8                   0       83     566
0-6 months    GMS-Nepal        NEPAL                          8                   1        9     566
0-6 months    GMS-Nepal        NEPAL                          9                   0        0     566
0-6 months    GMS-Nepal        NEPAL                          9                   1        0     566
0-6 months    GMS-Nepal        NEPAL                          10                  0       95     566
0-6 months    GMS-Nepal        NEPAL                          10                  1       10     566
0-6 months    GMS-Nepal        NEPAL                          11                  0        0     566
0-6 months    GMS-Nepal        NEPAL                          11                  1        0     566
0-6 months    GMS-Nepal        NEPAL                          12                  0       28     566
0-6 months    GMS-Nepal        NEPAL                          12                  1        4     566
0-6 months    GMS-Nepal        NEPAL                          13                  0        0     566
0-6 months    GMS-Nepal        NEPAL                          13                  1        0     566
0-6 months    GMS-Nepal        NEPAL                          14                  0        0     566
0-6 months    GMS-Nepal        NEPAL                          14                  1        0     566
0-6 months    GMS-Nepal        NEPAL                          15                  0        0     566
0-6 months    GMS-Nepal        NEPAL                          15                  1        0     566
0-6 months    GMS-Nepal        NEPAL                          16                  0        0     566
0-6 months    GMS-Nepal        NEPAL                          16                  1        0     566
0-6 months    GMS-Nepal        NEPAL                          17                  0        0     566
0-6 months    GMS-Nepal        NEPAL                          17                  1        0     566
0-6 months    GMS-Nepal        NEPAL                          18                  0        0     566
0-6 months    GMS-Nepal        NEPAL                          18                  1        0     566
0-6 months    GMS-Nepal        NEPAL                          19                  0        0     566
0-6 months    GMS-Nepal        NEPAL                          19                  1        0     566
0-6 months    GMS-Nepal        NEPAL                          20                  0        0     566
0-6 months    GMS-Nepal        NEPAL                          20                  1        0     566
0-6 months    GMS-Nepal        NEPAL                          24                  0        0     566
0-6 months    GMS-Nepal        NEPAL                          24                  1        0     566
0-6 months    GMS-Nepal        NEPAL                          25                  0        0     566
0-6 months    GMS-Nepal        NEPAL                          25                  1        0     566
0-6 months    GMS-Nepal        NEPAL                          27                  0        0     566
0-6 months    GMS-Nepal        NEPAL                          27                  1        0     566
0-6 months    MAL-ED           BANGLADESH                     0                   0        0     138
0-6 months    MAL-ED           BANGLADESH                     0                   1        0     138
0-6 months    MAL-ED           BANGLADESH                     1                   0        7     138
0-6 months    MAL-ED           BANGLADESH                     1                   1        0     138
0-6 months    MAL-ED           BANGLADESH                     2                   0       11     138
0-6 months    MAL-ED           BANGLADESH                     2                   1        1     138
0-6 months    MAL-ED           BANGLADESH                     3                   0       11     138
0-6 months    MAL-ED           BANGLADESH                     3                   1        1     138
0-6 months    MAL-ED           BANGLADESH                     4                   0        7     138
0-6 months    MAL-ED           BANGLADESH                     4                   1        0     138
0-6 months    MAL-ED           BANGLADESH                     5                   0       31     138
0-6 months    MAL-ED           BANGLADESH                     5                   1        0     138
0-6 months    MAL-ED           BANGLADESH                     6                   0        6     138
0-6 months    MAL-ED           BANGLADESH                     6                   1        2     138
0-6 months    MAL-ED           BANGLADESH                     7                   0       10     138
0-6 months    MAL-ED           BANGLADESH                     7                   1        0     138
0-6 months    MAL-ED           BANGLADESH                     8                   0       16     138
0-6 months    MAL-ED           BANGLADESH                     8                   1        1     138
0-6 months    MAL-ED           BANGLADESH                     9                   0       13     138
0-6 months    MAL-ED           BANGLADESH                     9                   1        0     138
0-6 months    MAL-ED           BANGLADESH                     10                  0        9     138
0-6 months    MAL-ED           BANGLADESH                     10                  1        0     138
0-6 months    MAL-ED           BANGLADESH                     11                  0        0     138
0-6 months    MAL-ED           BANGLADESH                     11                  1        0     138
0-6 months    MAL-ED           BANGLADESH                     12                  0        9     138
0-6 months    MAL-ED           BANGLADESH                     12                  1        1     138
0-6 months    MAL-ED           BANGLADESH                     13                  0        0     138
0-6 months    MAL-ED           BANGLADESH                     13                  1        0     138
0-6 months    MAL-ED           BANGLADESH                     14                  0        0     138
0-6 months    MAL-ED           BANGLADESH                     14                  1        0     138
0-6 months    MAL-ED           BANGLADESH                     15                  0        0     138
0-6 months    MAL-ED           BANGLADESH                     15                  1        0     138
0-6 months    MAL-ED           BANGLADESH                     16                  0        2     138
0-6 months    MAL-ED           BANGLADESH                     16                  1        0     138
0-6 months    MAL-ED           BANGLADESH                     17                  0        0     138
0-6 months    MAL-ED           BANGLADESH                     17                  1        0     138
0-6 months    MAL-ED           BANGLADESH                     18                  0        0     138
0-6 months    MAL-ED           BANGLADESH                     18                  1        0     138
0-6 months    MAL-ED           BANGLADESH                     19                  0        0     138
0-6 months    MAL-ED           BANGLADESH                     19                  1        0     138
0-6 months    MAL-ED           BANGLADESH                     20                  0        0     138
0-6 months    MAL-ED           BANGLADESH                     20                  1        0     138
0-6 months    MAL-ED           BANGLADESH                     24                  0        0     138
0-6 months    MAL-ED           BANGLADESH                     24                  1        0     138
0-6 months    MAL-ED           BANGLADESH                     25                  0        0     138
0-6 months    MAL-ED           BANGLADESH                     25                  1        0     138
0-6 months    MAL-ED           BANGLADESH                     27                  0        0     138
0-6 months    MAL-ED           BANGLADESH                     27                  1        0     138
0-6 months    MAL-ED           INDIA                          0                   0        0     138
0-6 months    MAL-ED           INDIA                          0                   1        0     138
0-6 months    MAL-ED           INDIA                          1                   0        0     138
0-6 months    MAL-ED           INDIA                          1                   1        0     138
0-6 months    MAL-ED           INDIA                          2                   0        6     138
0-6 months    MAL-ED           INDIA                          2                   1        0     138
0-6 months    MAL-ED           INDIA                          3                   0        8     138
0-6 months    MAL-ED           INDIA                          3                   1        2     138
0-6 months    MAL-ED           INDIA                          4                   0        6     138
0-6 months    MAL-ED           INDIA                          4                   1        0     138
0-6 months    MAL-ED           INDIA                          5                   0       30     138
0-6 months    MAL-ED           INDIA                          5                   1        3     138
0-6 months    MAL-ED           INDIA                          6                   0       10     138
0-6 months    MAL-ED           INDIA                          6                   1        1     138
0-6 months    MAL-ED           INDIA                          7                   0       10     138
0-6 months    MAL-ED           INDIA                          7                   1        1     138
0-6 months    MAL-ED           INDIA                          8                   0       17     138
0-6 months    MAL-ED           INDIA                          8                   1        2     138
0-6 months    MAL-ED           INDIA                          9                   0       25     138
0-6 months    MAL-ED           INDIA                          9                   1        1     138
0-6 months    MAL-ED           INDIA                          10                  0        6     138
0-6 months    MAL-ED           INDIA                          10                  1        0     138
0-6 months    MAL-ED           INDIA                          11                  0        2     138
0-6 months    MAL-ED           INDIA                          11                  1        0     138
0-6 months    MAL-ED           INDIA                          12                  0        2     138
0-6 months    MAL-ED           INDIA                          12                  1        0     138
0-6 months    MAL-ED           INDIA                          13                  0        1     138
0-6 months    MAL-ED           INDIA                          13                  1        0     138
0-6 months    MAL-ED           INDIA                          14                  0        2     138
0-6 months    MAL-ED           INDIA                          14                  1        0     138
0-6 months    MAL-ED           INDIA                          15                  0        2     138
0-6 months    MAL-ED           INDIA                          15                  1        0     138
0-6 months    MAL-ED           INDIA                          16                  0        0     138
0-6 months    MAL-ED           INDIA                          16                  1        0     138
0-6 months    MAL-ED           INDIA                          17                  0        0     138
0-6 months    MAL-ED           INDIA                          17                  1        0     138
0-6 months    MAL-ED           INDIA                          18                  0        1     138
0-6 months    MAL-ED           INDIA                          18                  1        0     138
0-6 months    MAL-ED           INDIA                          19                  0        0     138
0-6 months    MAL-ED           INDIA                          19                  1        0     138
0-6 months    MAL-ED           INDIA                          20                  0        0     138
0-6 months    MAL-ED           INDIA                          20                  1        0     138
0-6 months    MAL-ED           INDIA                          24                  0        0     138
0-6 months    MAL-ED           INDIA                          24                  1        0     138
0-6 months    MAL-ED           INDIA                          25                  0        0     138
0-6 months    MAL-ED           INDIA                          25                  1        0     138
0-6 months    MAL-ED           INDIA                          27                  0        0     138
0-6 months    MAL-ED           INDIA                          27                  1        0     138
0-6 months    MAL-ED           NEPAL                          0                   0        0      96
0-6 months    MAL-ED           NEPAL                          0                   1        0      96
0-6 months    MAL-ED           NEPAL                          1                   0        0      96
0-6 months    MAL-ED           NEPAL                          1                   1        0      96
0-6 months    MAL-ED           NEPAL                          2                   0        4      96
0-6 months    MAL-ED           NEPAL                          2                   1        0      96
0-6 months    MAL-ED           NEPAL                          3                   0        3      96
0-6 months    MAL-ED           NEPAL                          3                   1        0      96
0-6 months    MAL-ED           NEPAL                          4                   0       10      96
0-6 months    MAL-ED           NEPAL                          4                   1        0      96
0-6 months    MAL-ED           NEPAL                          5                   0        6      96
0-6 months    MAL-ED           NEPAL                          5                   1        0      96
0-6 months    MAL-ED           NEPAL                          6                   0        4      96
0-6 months    MAL-ED           NEPAL                          6                   1        0      96
0-6 months    MAL-ED           NEPAL                          7                   0        9      96
0-6 months    MAL-ED           NEPAL                          7                   1        0      96
0-6 months    MAL-ED           NEPAL                          8                   0       12      96
0-6 months    MAL-ED           NEPAL                          8                   1        0      96
0-6 months    MAL-ED           NEPAL                          9                   0        7      96
0-6 months    MAL-ED           NEPAL                          9                   1        0      96
0-6 months    MAL-ED           NEPAL                          10                  0       26      96
0-6 months    MAL-ED           NEPAL                          10                  1        1      96
0-6 months    MAL-ED           NEPAL                          11                  0        1      96
0-6 months    MAL-ED           NEPAL                          11                  1        0      96
0-6 months    MAL-ED           NEPAL                          12                  0        6      96
0-6 months    MAL-ED           NEPAL                          12                  1        1      96
0-6 months    MAL-ED           NEPAL                          13                  0        0      96
0-6 months    MAL-ED           NEPAL                          13                  1        0      96
0-6 months    MAL-ED           NEPAL                          14                  0        0      96
0-6 months    MAL-ED           NEPAL                          14                  1        0      96
0-6 months    MAL-ED           NEPAL                          15                  0        1      96
0-6 months    MAL-ED           NEPAL                          15                  1        0      96
0-6 months    MAL-ED           NEPAL                          16                  0        1      96
0-6 months    MAL-ED           NEPAL                          16                  1        0      96
0-6 months    MAL-ED           NEPAL                          17                  0        3      96
0-6 months    MAL-ED           NEPAL                          17                  1        0      96
0-6 months    MAL-ED           NEPAL                          18                  0        1      96
0-6 months    MAL-ED           NEPAL                          18                  1        0      96
0-6 months    MAL-ED           NEPAL                          19                  0        0      96
0-6 months    MAL-ED           NEPAL                          19                  1        0      96
0-6 months    MAL-ED           NEPAL                          20                  0        0      96
0-6 months    MAL-ED           NEPAL                          20                  1        0      96
0-6 months    MAL-ED           NEPAL                          24                  0        0      96
0-6 months    MAL-ED           NEPAL                          24                  1        0      96
0-6 months    MAL-ED           NEPAL                          25                  0        0      96
0-6 months    MAL-ED           NEPAL                          25                  1        0      96
0-6 months    MAL-ED           NEPAL                          27                  0        0      96
0-6 months    MAL-ED           NEPAL                          27                  1        0      96
0-6 months    MAL-ED           PERU                           0                   0        1     234
0-6 months    MAL-ED           PERU                           0                   1        0     234
0-6 months    MAL-ED           PERU                           1                   0        2     234
0-6 months    MAL-ED           PERU                           1                   1        0     234
0-6 months    MAL-ED           PERU                           2                   0        1     234
0-6 months    MAL-ED           PERU                           2                   1        0     234
0-6 months    MAL-ED           PERU                           3                   0        8     234
0-6 months    MAL-ED           PERU                           3                   1        0     234
0-6 months    MAL-ED           PERU                           4                   0        4     234
0-6 months    MAL-ED           PERU                           4                   1        0     234
0-6 months    MAL-ED           PERU                           5                   0        7     234
0-6 months    MAL-ED           PERU                           5                   1        0     234
0-6 months    MAL-ED           PERU                           6                   0       24     234
0-6 months    MAL-ED           PERU                           6                   1        0     234
0-6 months    MAL-ED           PERU                           7                   0       16     234
0-6 months    MAL-ED           PERU                           7                   1        0     234
0-6 months    MAL-ED           PERU                           8                   0       22     234
0-6 months    MAL-ED           PERU                           8                   1        0     234
0-6 months    MAL-ED           PERU                           9                   0       26     234
0-6 months    MAL-ED           PERU                           9                   1        0     234
0-6 months    MAL-ED           PERU                           10                  0       12     234
0-6 months    MAL-ED           PERU                           10                  1        0     234
0-6 months    MAL-ED           PERU                           11                  0       92     234
0-6 months    MAL-ED           PERU                           11                  1        0     234
0-6 months    MAL-ED           PERU                           12                  0        1     234
0-6 months    MAL-ED           PERU                           12                  1        0     234
0-6 months    MAL-ED           PERU                           13                  0        4     234
0-6 months    MAL-ED           PERU                           13                  1        0     234
0-6 months    MAL-ED           PERU                           14                  0        4     234
0-6 months    MAL-ED           PERU                           14                  1        0     234
0-6 months    MAL-ED           PERU                           15                  0        1     234
0-6 months    MAL-ED           PERU                           15                  1        0     234
0-6 months    MAL-ED           PERU                           16                  0        1     234
0-6 months    MAL-ED           PERU                           16                  1        0     234
0-6 months    MAL-ED           PERU                           17                  0        1     234
0-6 months    MAL-ED           PERU                           17                  1        0     234
0-6 months    MAL-ED           PERU                           18                  0        5     234
0-6 months    MAL-ED           PERU                           18                  1        0     234
0-6 months    MAL-ED           PERU                           19                  0        0     234
0-6 months    MAL-ED           PERU                           19                  1        0     234
0-6 months    MAL-ED           PERU                           20                  0        2     234
0-6 months    MAL-ED           PERU                           20                  1        0     234
0-6 months    MAL-ED           PERU                           24                  0        0     234
0-6 months    MAL-ED           PERU                           24                  1        0     234
0-6 months    MAL-ED           PERU                           25                  0        0     234
0-6 months    MAL-ED           PERU                           25                  1        0     234
0-6 months    MAL-ED           PERU                           27                  0        0     234
0-6 months    MAL-ED           PERU                           27                  1        0     234
0-6 months    MAL-ED           SOUTH AFRICA                   0                   0        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   0                   1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   1                   0        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   1                   1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   2                   0        1      99
0-6 months    MAL-ED           SOUTH AFRICA                   2                   1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   3                   0        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   3                   1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   4                   0        4      99
0-6 months    MAL-ED           SOUTH AFRICA                   4                   1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   5                   0        2      99
0-6 months    MAL-ED           SOUTH AFRICA                   5                   1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   6                   0        6      99
0-6 months    MAL-ED           SOUTH AFRICA                   6                   1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   7                   0        5      99
0-6 months    MAL-ED           SOUTH AFRICA                   7                   1        1      99
0-6 months    MAL-ED           SOUTH AFRICA                   8                   0       11      99
0-6 months    MAL-ED           SOUTH AFRICA                   8                   1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   9                   0        6      99
0-6 months    MAL-ED           SOUTH AFRICA                   9                   1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   10                  0        9      99
0-6 months    MAL-ED           SOUTH AFRICA                   10                  1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   11                  0       16      99
0-6 months    MAL-ED           SOUTH AFRICA                   11                  1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   12                  0       33      99
0-6 months    MAL-ED           SOUTH AFRICA                   12                  1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   13                  0        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   13                  1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   14                  0        2      99
0-6 months    MAL-ED           SOUTH AFRICA                   14                  1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   15                  0        2      99
0-6 months    MAL-ED           SOUTH AFRICA                   15                  1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   16                  0        1      99
0-6 months    MAL-ED           SOUTH AFRICA                   16                  1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   17                  0        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   17                  1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   18                  0        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   18                  1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   19                  0        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   19                  1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   20                  0        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   20                  1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   24                  0        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   24                  1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   25                  0        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   25                  1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   27                  0        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   27                  1        0      99
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0       14     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                   0       13     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                   1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                   0       18     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                   1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                   0       13     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                   1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                   0       11     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                   1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                   0        8     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                   1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                   0      118     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                   1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                   0        1     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                   1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                   0        2     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                   1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                  0        4     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                  1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                  0        3     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                  1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                  0        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                  1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                  0        1     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                  1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                  0        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                  1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                  0        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                  1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                  0        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                  1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                  0        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                  1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                  0        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                  1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                  0        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                  1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                  0        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                  1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                  0        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                  1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                  0        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                  1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                  0        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                  1        0     206
0-6 months    NIH-Crypto       BANGLADESH                     0                   0       81     250
0-6 months    NIH-Crypto       BANGLADESH                     0                   1        2     250
0-6 months    NIH-Crypto       BANGLADESH                     1                   0        8     250
0-6 months    NIH-Crypto       BANGLADESH                     1                   1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     2                   0        2     250
0-6 months    NIH-Crypto       BANGLADESH                     2                   1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     3                   0       11     250
0-6 months    NIH-Crypto       BANGLADESH                     3                   1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     4                   0       12     250
0-6 months    NIH-Crypto       BANGLADESH                     4                   1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     5                   0       30     250
0-6 months    NIH-Crypto       BANGLADESH                     5                   1        2     250
0-6 months    NIH-Crypto       BANGLADESH                     6                   0       13     250
0-6 months    NIH-Crypto       BANGLADESH                     6                   1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     7                   0       13     250
0-6 months    NIH-Crypto       BANGLADESH                     7                   1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     8                   0       30     250
0-6 months    NIH-Crypto       BANGLADESH                     8                   1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     9                   0       15     250
0-6 months    NIH-Crypto       BANGLADESH                     9                   1        1     250
0-6 months    NIH-Crypto       BANGLADESH                     10                  0       11     250
0-6 months    NIH-Crypto       BANGLADESH                     10                  1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     11                  0        0     250
0-6 months    NIH-Crypto       BANGLADESH                     11                  1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     12                  0       10     250
0-6 months    NIH-Crypto       BANGLADESH                     12                  1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     13                  0        0     250
0-6 months    NIH-Crypto       BANGLADESH                     13                  1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     14                  0        4     250
0-6 months    NIH-Crypto       BANGLADESH                     14                  1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     15                  0        4     250
0-6 months    NIH-Crypto       BANGLADESH                     15                  1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     16                  0        0     250
0-6 months    NIH-Crypto       BANGLADESH                     16                  1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     17                  0        1     250
0-6 months    NIH-Crypto       BANGLADESH                     17                  1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     18                  0        0     250
0-6 months    NIH-Crypto       BANGLADESH                     18                  1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     19                  0        0     250
0-6 months    NIH-Crypto       BANGLADESH                     19                  1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     20                  0        0     250
0-6 months    NIH-Crypto       BANGLADESH                     20                  1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     24                  0        0     250
0-6 months    NIH-Crypto       BANGLADESH                     24                  1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     25                  0        0     250
0-6 months    NIH-Crypto       BANGLADESH                     25                  1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     27                  0        0     250
0-6 months    NIH-Crypto       BANGLADESH                     27                  1        0     250
0-6 months    PROBIT           BELARUS                        0                   0        0   13069
0-6 months    PROBIT           BELARUS                        0                   1        0   13069
0-6 months    PROBIT           BELARUS                        1                   0        0   13069
0-6 months    PROBIT           BELARUS                        1                   1        0   13069
0-6 months    PROBIT           BELARUS                        2                   0        0   13069
0-6 months    PROBIT           BELARUS                        2                   1        0   13069
0-6 months    PROBIT           BELARUS                        3                   0        0   13069
0-6 months    PROBIT           BELARUS                        3                   1        0   13069
0-6 months    PROBIT           BELARUS                        4                   0        0   13069
0-6 months    PROBIT           BELARUS                        4                   1        0   13069
0-6 months    PROBIT           BELARUS                        5                   0        0   13069
0-6 months    PROBIT           BELARUS                        5                   1        0   13069
0-6 months    PROBIT           BELARUS                        6                   0        0   13069
0-6 months    PROBIT           BELARUS                        6                   1        0   13069
0-6 months    PROBIT           BELARUS                        7                   0        0   13069
0-6 months    PROBIT           BELARUS                        7                   1        0   13069
0-6 months    PROBIT           BELARUS                        8                   0       21   13069
0-6 months    PROBIT           BELARUS                        8                   1        2   13069
0-6 months    PROBIT           BELARUS                        9                   0        0   13069
0-6 months    PROBIT           BELARUS                        9                   1        0   13069
0-6 months    PROBIT           BELARUS                        10                  0      271   13069
0-6 months    PROBIT           BELARUS                        10                  1       20   13069
0-6 months    PROBIT           BELARUS                        11                  0        0   13069
0-6 months    PROBIT           BELARUS                        11                  1        0   13069
0-6 months    PROBIT           BELARUS                        12                  0     4454   13069
0-6 months    PROBIT           BELARUS                        12                  1      406   13069
0-6 months    PROBIT           BELARUS                        13                  0     5412   13069
0-6 months    PROBIT           BELARUS                        13                  1      473   13069
0-6 months    PROBIT           BELARUS                        14                  0      305   13069
0-6 months    PROBIT           BELARUS                        14                  1       23   13069
0-6 months    PROBIT           BELARUS                        15                  0        0   13069
0-6 months    PROBIT           BELARUS                        15                  1        0   13069
0-6 months    PROBIT           BELARUS                        16                  0     1556   13069
0-6 months    PROBIT           BELARUS                        16                  1      126   13069
0-6 months    PROBIT           BELARUS                        17                  0        0   13069
0-6 months    PROBIT           BELARUS                        17                  1        0   13069
0-6 months    PROBIT           BELARUS                        18                  0        0   13069
0-6 months    PROBIT           BELARUS                        18                  1        0   13069
0-6 months    PROBIT           BELARUS                        19                  0        0   13069
0-6 months    PROBIT           BELARUS                        19                  1        0   13069
0-6 months    PROBIT           BELARUS                        20                  0        0   13069
0-6 months    PROBIT           BELARUS                        20                  1        0   13069
0-6 months    PROBIT           BELARUS                        24                  0        0   13069
0-6 months    PROBIT           BELARUS                        24                  1        0   13069
0-6 months    PROBIT           BELARUS                        25                  0        0   13069
0-6 months    PROBIT           BELARUS                        25                  1        0   13069
0-6 months    PROBIT           BELARUS                        27                  0        0   13069
0-6 months    PROBIT           BELARUS                        27                  1        0   13069
0-6 months    PROVIDE          BANGLADESH                     0                   0      178     638
0-6 months    PROVIDE          BANGLADESH                     0                   1        6     638
0-6 months    PROVIDE          BANGLADESH                     1                   0       13     638
0-6 months    PROVIDE          BANGLADESH                     1                   1        0     638
0-6 months    PROVIDE          BANGLADESH                     2                   0       18     638
0-6 months    PROVIDE          BANGLADESH                     2                   1        0     638
0-6 months    PROVIDE          BANGLADESH                     3                   0       24     638
0-6 months    PROVIDE          BANGLADESH                     3                   1        1     638
0-6 months    PROVIDE          BANGLADESH                     4                   0       45     638
0-6 months    PROVIDE          BANGLADESH                     4                   1        0     638
0-6 months    PROVIDE          BANGLADESH                     5                   0       69     638
0-6 months    PROVIDE          BANGLADESH                     5                   1        1     638
0-6 months    PROVIDE          BANGLADESH                     6                   0       28     638
0-6 months    PROVIDE          BANGLADESH                     6                   1        0     638
0-6 months    PROVIDE          BANGLADESH                     7                   0       36     638
0-6 months    PROVIDE          BANGLADESH                     7                   1        0     638
0-6 months    PROVIDE          BANGLADESH                     8                   0       60     638
0-6 months    PROVIDE          BANGLADESH                     8                   1        0     638
0-6 months    PROVIDE          BANGLADESH                     9                   0       57     638
0-6 months    PROVIDE          BANGLADESH                     9                   1        2     638
0-6 months    PROVIDE          BANGLADESH                     10                  0       34     638
0-6 months    PROVIDE          BANGLADESH                     10                  1        1     638
0-6 months    PROVIDE          BANGLADESH                     11                  0       25     638
0-6 months    PROVIDE          BANGLADESH                     11                  1        0     638
0-6 months    PROVIDE          BANGLADESH                     12                  0        4     638
0-6 months    PROVIDE          BANGLADESH                     12                  1        0     638
0-6 months    PROVIDE          BANGLADESH                     13                  0        0     638
0-6 months    PROVIDE          BANGLADESH                     13                  1        0     638
0-6 months    PROVIDE          BANGLADESH                     14                  0       17     638
0-6 months    PROVIDE          BANGLADESH                     14                  1        2     638
0-6 months    PROVIDE          BANGLADESH                     15                  0        8     638
0-6 months    PROVIDE          BANGLADESH                     15                  1        0     638
0-6 months    PROVIDE          BANGLADESH                     16                  0        7     638
0-6 months    PROVIDE          BANGLADESH                     16                  1        1     638
0-6 months    PROVIDE          BANGLADESH                     17                  0        0     638
0-6 months    PROVIDE          BANGLADESH                     17                  1        0     638
0-6 months    PROVIDE          BANGLADESH                     18                  0        0     638
0-6 months    PROVIDE          BANGLADESH                     18                  1        0     638
0-6 months    PROVIDE          BANGLADESH                     19                  0        1     638
0-6 months    PROVIDE          BANGLADESH                     19                  1        0     638
0-6 months    PROVIDE          BANGLADESH                     20                  0        0     638
0-6 months    PROVIDE          BANGLADESH                     20                  1        0     638
0-6 months    PROVIDE          BANGLADESH                     24                  0        0     638
0-6 months    PROVIDE          BANGLADESH                     24                  1        0     638
0-6 months    PROVIDE          BANGLADESH                     25                  0        0     638
0-6 months    PROVIDE          BANGLADESH                     25                  1        0     638
0-6 months    PROVIDE          BANGLADESH                     27                  0        0     638
0-6 months    PROVIDE          BANGLADESH                     27                  1        0     638
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0        4    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   0        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   1        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   0        4    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   1        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   0        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   1        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   0        1    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   1        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   0     1067    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   1       23    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   0        8    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   1        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   0       44    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   1        2    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  0       18    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  1        2    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  0      489    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  1       12    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  0       15    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  1        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                  0      101    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                  1        3    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                  0       10    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                  1        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                  0       18    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                  1        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                  0       25    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                  1        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                  0       19    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                  1        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                  0        4    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                  1        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                  0        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                  1        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                  0        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                  1        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                  0       10    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                  1        3    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                  0        1    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                  1        0    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                  0      161    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                  1        7    2051
0-6 months    ZVITAMBO         ZIMBABWE                       0                   0        3     613
0-6 months    ZVITAMBO         ZIMBABWE                       0                   1        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       1                   0        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       1                   1        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       2                   0        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       2                   1        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       3                   0        3     613
0-6 months    ZVITAMBO         ZIMBABWE                       3                   1        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       4                   0        2     613
0-6 months    ZVITAMBO         ZIMBABWE                       4                   1        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       5                   0        2     613
0-6 months    ZVITAMBO         ZIMBABWE                       5                   1        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       6                   0        3     613
0-6 months    ZVITAMBO         ZIMBABWE                       6                   1        1     613
0-6 months    ZVITAMBO         ZIMBABWE                       7                   0       28     613
0-6 months    ZVITAMBO         ZIMBABWE                       7                   1        1     613
0-6 months    ZVITAMBO         ZIMBABWE                       8                   0       10     613
0-6 months    ZVITAMBO         ZIMBABWE                       8                   1        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       9                   0       37     613
0-6 months    ZVITAMBO         ZIMBABWE                       9                   1        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       10                  0       14     613
0-6 months    ZVITAMBO         ZIMBABWE                       10                  1        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       11                  0      452     613
0-6 months    ZVITAMBO         ZIMBABWE                       11                  1       10     613
0-6 months    ZVITAMBO         ZIMBABWE                       12                  0        4     613
0-6 months    ZVITAMBO         ZIMBABWE                       12                  1        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       13                  0       41     613
0-6 months    ZVITAMBO         ZIMBABWE                       13                  1        2     613
0-6 months    ZVITAMBO         ZIMBABWE                       14                  0        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       14                  1        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       15                  0        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       15                  1        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       16                  0        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       16                  1        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       17                  0        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       17                  1        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       18                  0        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       18                  1        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       19                  0        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       19                  1        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       20                  0        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       20                  1        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       24                  0        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       24                  1        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       25                  0        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       25                  1        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       27                  0        0     613
0-6 months    ZVITAMBO         ZIMBABWE                       27                  1        0     613
6-24 months   COHORTS          GUATEMALA                      0                   0      431     999
6-24 months   COHORTS          GUATEMALA                      0                   1       14     999
6-24 months   COHORTS          GUATEMALA                      1                   0       49     999
6-24 months   COHORTS          GUATEMALA                      1                   1        4     999
6-24 months   COHORTS          GUATEMALA                      2                   0      175     999
6-24 months   COHORTS          GUATEMALA                      2                   1        5     999
6-24 months   COHORTS          GUATEMALA                      3                   0      127     999
6-24 months   COHORTS          GUATEMALA                      3                   1        6     999
6-24 months   COHORTS          GUATEMALA                      4                   0       64     999
6-24 months   COHORTS          GUATEMALA                      4                   1        3     999
6-24 months   COHORTS          GUATEMALA                      5                   0       23     999
6-24 months   COHORTS          GUATEMALA                      5                   1        1     999
6-24 months   COHORTS          GUATEMALA                      6                   0       82     999
6-24 months   COHORTS          GUATEMALA                      6                   1        2     999
6-24 months   COHORTS          GUATEMALA                      7                   0        4     999
6-24 months   COHORTS          GUATEMALA                      7                   1        0     999
6-24 months   COHORTS          GUATEMALA                      8                   0        1     999
6-24 months   COHORTS          GUATEMALA                      8                   1        0     999
6-24 months   COHORTS          GUATEMALA                      9                   0        1     999
6-24 months   COHORTS          GUATEMALA                      9                   1        0     999
6-24 months   COHORTS          GUATEMALA                      10                  0        1     999
6-24 months   COHORTS          GUATEMALA                      10                  1        0     999
6-24 months   COHORTS          GUATEMALA                      11                  0        0     999
6-24 months   COHORTS          GUATEMALA                      11                  1        0     999
6-24 months   COHORTS          GUATEMALA                      12                  0        5     999
6-24 months   COHORTS          GUATEMALA                      12                  1        0     999
6-24 months   COHORTS          GUATEMALA                      13                  0        0     999
6-24 months   COHORTS          GUATEMALA                      13                  1        0     999
6-24 months   COHORTS          GUATEMALA                      14                  0        1     999
6-24 months   COHORTS          GUATEMALA                      14                  1        0     999
6-24 months   COHORTS          GUATEMALA                      15                  0        0     999
6-24 months   COHORTS          GUATEMALA                      15                  1        0     999
6-24 months   COHORTS          GUATEMALA                      16                  0        0     999
6-24 months   COHORTS          GUATEMALA                      16                  1        0     999
6-24 months   COHORTS          GUATEMALA                      17                  0        0     999
6-24 months   COHORTS          GUATEMALA                      17                  1        0     999
6-24 months   COHORTS          GUATEMALA                      18                  0        0     999
6-24 months   COHORTS          GUATEMALA                      18                  1        0     999
6-24 months   COHORTS          GUATEMALA                      19                  0        0     999
6-24 months   COHORTS          GUATEMALA                      19                  1        0     999
6-24 months   COHORTS          GUATEMALA                      20                  0        0     999
6-24 months   COHORTS          GUATEMALA                      20                  1        0     999
6-24 months   COHORTS          GUATEMALA                      24                  0        0     999
6-24 months   COHORTS          GUATEMALA                      24                  1        0     999
6-24 months   COHORTS          GUATEMALA                      25                  0        0     999
6-24 months   COHORTS          GUATEMALA                      25                  1        0     999
6-24 months   COHORTS          GUATEMALA                      27                  0        0     999
6-24 months   COHORTS          GUATEMALA                      27                  1        0     999
6-24 months   COHORTS          INDIA                          0                   0       90    1242
6-24 months   COHORTS          INDIA                          0                   1       12    1242
6-24 months   COHORTS          INDIA                          1                   0        0    1242
6-24 months   COHORTS          INDIA                          1                   1        0    1242
6-24 months   COHORTS          INDIA                          2                   0        0    1242
6-24 months   COHORTS          INDIA                          2                   1        0    1242
6-24 months   COHORTS          INDIA                          3                   0      109    1242
6-24 months   COHORTS          INDIA                          3                   1        9    1242
6-24 months   COHORTS          INDIA                          4                   0        0    1242
6-24 months   COHORTS          INDIA                          4                   1        0    1242
6-24 months   COHORTS          INDIA                          5                   0        0    1242
6-24 months   COHORTS          INDIA                          5                   1        0    1242
6-24 months   COHORTS          INDIA                          6                   0        0    1242
6-24 months   COHORTS          INDIA                          6                   1        0    1242
6-24 months   COHORTS          INDIA                          7                   0        0    1242
6-24 months   COHORTS          INDIA                          7                   1        0    1242
6-24 months   COHORTS          INDIA                          8                   0      167    1242
6-24 months   COHORTS          INDIA                          8                   1       17    1242
6-24 months   COHORTS          INDIA                          9                   0        0    1242
6-24 months   COHORTS          INDIA                          9                   1        0    1242
6-24 months   COHORTS          INDIA                          10                  0        0    1242
6-24 months   COHORTS          INDIA                          10                  1        0    1242
6-24 months   COHORTS          INDIA                          11                  0        0    1242
6-24 months   COHORTS          INDIA                          11                  1        0    1242
6-24 months   COHORTS          INDIA                          12                  0      324    1242
6-24 months   COHORTS          INDIA                          12                  1       27    1242
6-24 months   COHORTS          INDIA                          13                  0        0    1242
6-24 months   COHORTS          INDIA                          13                  1        0    1242
6-24 months   COHORTS          INDIA                          14                  0      125    1242
6-24 months   COHORTS          INDIA                          14                  1        8    1242
6-24 months   COHORTS          INDIA                          15                  0      225    1242
6-24 months   COHORTS          INDIA                          15                  1       22    1242
6-24 months   COHORTS          INDIA                          16                  0        0    1242
6-24 months   COHORTS          INDIA                          16                  1        0    1242
6-24 months   COHORTS          INDIA                          17                  0      104    1242
6-24 months   COHORTS          INDIA                          17                  1        3    1242
6-24 months   COHORTS          INDIA                          18                  0        0    1242
6-24 months   COHORTS          INDIA                          18                  1        0    1242
6-24 months   COHORTS          INDIA                          19                  0        0    1242
6-24 months   COHORTS          INDIA                          19                  1        0    1242
6-24 months   COHORTS          INDIA                          20                  0        0    1242
6-24 months   COHORTS          INDIA                          20                  1        0    1242
6-24 months   COHORTS          INDIA                          24                  0        0    1242
6-24 months   COHORTS          INDIA                          24                  1        0    1242
6-24 months   COHORTS          INDIA                          25                  0        0    1242
6-24 months   COHORTS          INDIA                          25                  1        0    1242
6-24 months   COHORTS          INDIA                          27                  0        0    1242
6-24 months   COHORTS          INDIA                          27                  1        0    1242
6-24 months   COHORTS          PHILIPPINES                    0                   0       52    2659
6-24 months   COHORTS          PHILIPPINES                    0                   1        4    2659
6-24 months   COHORTS          PHILIPPINES                    1                   0       32    2659
6-24 months   COHORTS          PHILIPPINES                    1                   1        2    2659
6-24 months   COHORTS          PHILIPPINES                    2                   0       86    2659
6-24 months   COHORTS          PHILIPPINES                    2                   1        6    2659
6-24 months   COHORTS          PHILIPPINES                    3                   0      156    2659
6-24 months   COHORTS          PHILIPPINES                    3                   1        5    2659
6-24 months   COHORTS          PHILIPPINES                    4                   0      236    2659
6-24 months   COHORTS          PHILIPPINES                    4                   1        9    2659
6-24 months   COHORTS          PHILIPPINES                    5                   0      174    2659
6-24 months   COHORTS          PHILIPPINES                    5                   1       18    2659
6-24 months   COHORTS          PHILIPPINES                    6                   0      570    2659
6-24 months   COHORTS          PHILIPPINES                    6                   1       41    2659
6-24 months   COHORTS          PHILIPPINES                    7                   0      129    2659
6-24 months   COHORTS          PHILIPPINES                    7                   1        8    2659
6-24 months   COHORTS          PHILIPPINES                    8                   0      198    2659
6-24 months   COHORTS          PHILIPPINES                    8                   1       10    2659
6-24 months   COHORTS          PHILIPPINES                    9                   0      175    2659
6-24 months   COHORTS          PHILIPPINES                    9                   1        2    2659
6-24 months   COHORTS          PHILIPPINES                    10                  0      290    2659
6-24 months   COHORTS          PHILIPPINES                    10                  1       14    2659
6-24 months   COHORTS          PHILIPPINES                    11                  0       61    2659
6-24 months   COHORTS          PHILIPPINES                    11                  1        0    2659
6-24 months   COHORTS          PHILIPPINES                    12                  0      145    2659
6-24 months   COHORTS          PHILIPPINES                    12                  1        8    2659
6-24 months   COHORTS          PHILIPPINES                    13                  0       56    2659
6-24 months   COHORTS          PHILIPPINES                    13                  1        2    2659
6-24 months   COHORTS          PHILIPPINES                    14                  0      123    2659
6-24 months   COHORTS          PHILIPPINES                    14                  1        3    2659
6-24 months   COHORTS          PHILIPPINES                    15                  0       34    2659
6-24 months   COHORTS          PHILIPPINES                    15                  1        1    2659
6-24 months   COHORTS          PHILIPPINES                    16                  0        4    2659
6-24 months   COHORTS          PHILIPPINES                    16                  1        1    2659
6-24 months   COHORTS          PHILIPPINES                    17                  0        2    2659
6-24 months   COHORTS          PHILIPPINES                    17                  1        0    2659
6-24 months   COHORTS          PHILIPPINES                    18                  0        2    2659
6-24 months   COHORTS          PHILIPPINES                    18                  1        0    2659
6-24 months   COHORTS          PHILIPPINES                    19                  0        0    2659
6-24 months   COHORTS          PHILIPPINES                    19                  1        0    2659
6-24 months   COHORTS          PHILIPPINES                    20                  0        0    2659
6-24 months   COHORTS          PHILIPPINES                    20                  1        0    2659
6-24 months   COHORTS          PHILIPPINES                    24                  0        0    2659
6-24 months   COHORTS          PHILIPPINES                    24                  1        0    2659
6-24 months   COHORTS          PHILIPPINES                    25                  0        0    2659
6-24 months   COHORTS          PHILIPPINES                    25                  1        0    2659
6-24 months   COHORTS          PHILIPPINES                    27                  0        0    2659
6-24 months   COHORTS          PHILIPPINES                    27                  1        0    2659
6-24 months   GMS-Nepal        NEPAL                          0                   0      221     596
6-24 months   GMS-Nepal        NEPAL                          0                   1       36     596
6-24 months   GMS-Nepal        NEPAL                          1                   0        0     596
6-24 months   GMS-Nepal        NEPAL                          1                   1        0     596
6-24 months   GMS-Nepal        NEPAL                          2                   0        0     596
6-24 months   GMS-Nepal        NEPAL                          2                   1        0     596
6-24 months   GMS-Nepal        NEPAL                          3                   0        0     596
6-24 months   GMS-Nepal        NEPAL                          3                   1        0     596
6-24 months   GMS-Nepal        NEPAL                          4                   0        0     596
6-24 months   GMS-Nepal        NEPAL                          4                   1        0     596
6-24 months   GMS-Nepal        NEPAL                          5                   0       78     596
6-24 months   GMS-Nepal        NEPAL                          5                   1       15     596
6-24 months   GMS-Nepal        NEPAL                          6                   0        0     596
6-24 months   GMS-Nepal        NEPAL                          6                   1        0     596
6-24 months   GMS-Nepal        NEPAL                          7                   0        0     596
6-24 months   GMS-Nepal        NEPAL                          7                   1        0     596
6-24 months   GMS-Nepal        NEPAL                          8                   0       91     596
6-24 months   GMS-Nepal        NEPAL                          8                   1        9     596
6-24 months   GMS-Nepal        NEPAL                          9                   0        0     596
6-24 months   GMS-Nepal        NEPAL                          9                   1        0     596
6-24 months   GMS-Nepal        NEPAL                          10                  0       94     596
6-24 months   GMS-Nepal        NEPAL                          10                  1       16     596
6-24 months   GMS-Nepal        NEPAL                          11                  0        0     596
6-24 months   GMS-Nepal        NEPAL                          11                  1        0     596
6-24 months   GMS-Nepal        NEPAL                          12                  0       32     596
6-24 months   GMS-Nepal        NEPAL                          12                  1        4     596
6-24 months   GMS-Nepal        NEPAL                          13                  0        0     596
6-24 months   GMS-Nepal        NEPAL                          13                  1        0     596
6-24 months   GMS-Nepal        NEPAL                          14                  0        0     596
6-24 months   GMS-Nepal        NEPAL                          14                  1        0     596
6-24 months   GMS-Nepal        NEPAL                          15                  0        0     596
6-24 months   GMS-Nepal        NEPAL                          15                  1        0     596
6-24 months   GMS-Nepal        NEPAL                          16                  0        0     596
6-24 months   GMS-Nepal        NEPAL                          16                  1        0     596
6-24 months   GMS-Nepal        NEPAL                          17                  0        0     596
6-24 months   GMS-Nepal        NEPAL                          17                  1        0     596
6-24 months   GMS-Nepal        NEPAL                          18                  0        0     596
6-24 months   GMS-Nepal        NEPAL                          18                  1        0     596
6-24 months   GMS-Nepal        NEPAL                          19                  0        0     596
6-24 months   GMS-Nepal        NEPAL                          19                  1        0     596
6-24 months   GMS-Nepal        NEPAL                          20                  0        0     596
6-24 months   GMS-Nepal        NEPAL                          20                  1        0     596
6-24 months   GMS-Nepal        NEPAL                          24                  0        0     596
6-24 months   GMS-Nepal        NEPAL                          24                  1        0     596
6-24 months   GMS-Nepal        NEPAL                          25                  0        0     596
6-24 months   GMS-Nepal        NEPAL                          25                  1        0     596
6-24 months   GMS-Nepal        NEPAL                          27                  0        0     596
6-24 months   GMS-Nepal        NEPAL                          27                  1        0     596
6-24 months   LCNI-5           MALAWI                         0                   0      258     712
6-24 months   LCNI-5           MALAWI                         0                   1        1     712
6-24 months   LCNI-5           MALAWI                         1                   0       10     712
6-24 months   LCNI-5           MALAWI                         1                   1        0     712
6-24 months   LCNI-5           MALAWI                         2                   0       25     712
6-24 months   LCNI-5           MALAWI                         2                   1        0     712
6-24 months   LCNI-5           MALAWI                         3                   0       36     712
6-24 months   LCNI-5           MALAWI                         3                   1        1     712
6-24 months   LCNI-5           MALAWI                         4                   0       47     712
6-24 months   LCNI-5           MALAWI                         4                   1        2     712
6-24 months   LCNI-5           MALAWI                         5                   0       53     712
6-24 months   LCNI-5           MALAWI                         5                   1        0     712
6-24 months   LCNI-5           MALAWI                         6                   0       63     712
6-24 months   LCNI-5           MALAWI                         6                   1        0     712
6-24 months   LCNI-5           MALAWI                         7                   0       59     712
6-24 months   LCNI-5           MALAWI                         7                   1        1     712
6-24 months   LCNI-5           MALAWI                         8                   0       75     712
6-24 months   LCNI-5           MALAWI                         8                   1        1     712
6-24 months   LCNI-5           MALAWI                         9                   0       11     712
6-24 months   LCNI-5           MALAWI                         9                   1        0     712
6-24 months   LCNI-5           MALAWI                         10                  0       14     712
6-24 months   LCNI-5           MALAWI                         10                  1        0     712
6-24 months   LCNI-5           MALAWI                         11                  0        5     712
6-24 months   LCNI-5           MALAWI                         11                  1        0     712
6-24 months   LCNI-5           MALAWI                         12                  0       46     712
6-24 months   LCNI-5           MALAWI                         12                  1        0     712
6-24 months   LCNI-5           MALAWI                         13                  0        1     712
6-24 months   LCNI-5           MALAWI                         13                  1        0     712
6-24 months   LCNI-5           MALAWI                         14                  0        2     712
6-24 months   LCNI-5           MALAWI                         14                  1        0     712
6-24 months   LCNI-5           MALAWI                         15                  0        0     712
6-24 months   LCNI-5           MALAWI                         15                  1        0     712
6-24 months   LCNI-5           MALAWI                         16                  0        1     712
6-24 months   LCNI-5           MALAWI                         16                  1        0     712
6-24 months   LCNI-5           MALAWI                         17                  0        0     712
6-24 months   LCNI-5           MALAWI                         17                  1        0     712
6-24 months   LCNI-5           MALAWI                         18                  0        0     712
6-24 months   LCNI-5           MALAWI                         18                  1        0     712
6-24 months   LCNI-5           MALAWI                         19                  0        0     712
6-24 months   LCNI-5           MALAWI                         19                  1        0     712
6-24 months   LCNI-5           MALAWI                         20                  0        0     712
6-24 months   LCNI-5           MALAWI                         20                  1        0     712
6-24 months   LCNI-5           MALAWI                         24                  0        0     712
6-24 months   LCNI-5           MALAWI                         24                  1        0     712
6-24 months   LCNI-5           MALAWI                         25                  0        0     712
6-24 months   LCNI-5           MALAWI                         25                  1        0     712
6-24 months   LCNI-5           MALAWI                         27                  0        0     712
6-24 months   LCNI-5           MALAWI                         27                  1        0     712
6-24 months   MAL-ED           BANGLADESH                     0                   0        0     138
6-24 months   MAL-ED           BANGLADESH                     0                   1        0     138
6-24 months   MAL-ED           BANGLADESH                     1                   0        7     138
6-24 months   MAL-ED           BANGLADESH                     1                   1        0     138
6-24 months   MAL-ED           BANGLADESH                     2                   0       12     138
6-24 months   MAL-ED           BANGLADESH                     2                   1        0     138
6-24 months   MAL-ED           BANGLADESH                     3                   0       12     138
6-24 months   MAL-ED           BANGLADESH                     3                   1        0     138
6-24 months   MAL-ED           BANGLADESH                     4                   0        7     138
6-24 months   MAL-ED           BANGLADESH                     4                   1        0     138
6-24 months   MAL-ED           BANGLADESH                     5                   0       29     138
6-24 months   MAL-ED           BANGLADESH                     5                   1        2     138
6-24 months   MAL-ED           BANGLADESH                     6                   0        6     138
6-24 months   MAL-ED           BANGLADESH                     6                   1        2     138
6-24 months   MAL-ED           BANGLADESH                     7                   0       10     138
6-24 months   MAL-ED           BANGLADESH                     7                   1        0     138
6-24 months   MAL-ED           BANGLADESH                     8                   0       15     138
6-24 months   MAL-ED           BANGLADESH                     8                   1        2     138
6-24 months   MAL-ED           BANGLADESH                     9                   0       13     138
6-24 months   MAL-ED           BANGLADESH                     9                   1        0     138
6-24 months   MAL-ED           BANGLADESH                     10                  0        8     138
6-24 months   MAL-ED           BANGLADESH                     10                  1        1     138
6-24 months   MAL-ED           BANGLADESH                     11                  0        0     138
6-24 months   MAL-ED           BANGLADESH                     11                  1        0     138
6-24 months   MAL-ED           BANGLADESH                     12                  0       10     138
6-24 months   MAL-ED           BANGLADESH                     12                  1        0     138
6-24 months   MAL-ED           BANGLADESH                     13                  0        0     138
6-24 months   MAL-ED           BANGLADESH                     13                  1        0     138
6-24 months   MAL-ED           BANGLADESH                     14                  0        0     138
6-24 months   MAL-ED           BANGLADESH                     14                  1        0     138
6-24 months   MAL-ED           BANGLADESH                     15                  0        0     138
6-24 months   MAL-ED           BANGLADESH                     15                  1        0     138
6-24 months   MAL-ED           BANGLADESH                     16                  0        2     138
6-24 months   MAL-ED           BANGLADESH                     16                  1        0     138
6-24 months   MAL-ED           BANGLADESH                     17                  0        0     138
6-24 months   MAL-ED           BANGLADESH                     17                  1        0     138
6-24 months   MAL-ED           BANGLADESH                     18                  0        0     138
6-24 months   MAL-ED           BANGLADESH                     18                  1        0     138
6-24 months   MAL-ED           BANGLADESH                     19                  0        0     138
6-24 months   MAL-ED           BANGLADESH                     19                  1        0     138
6-24 months   MAL-ED           BANGLADESH                     20                  0        0     138
6-24 months   MAL-ED           BANGLADESH                     20                  1        0     138
6-24 months   MAL-ED           BANGLADESH                     24                  0        0     138
6-24 months   MAL-ED           BANGLADESH                     24                  1        0     138
6-24 months   MAL-ED           BANGLADESH                     25                  0        0     138
6-24 months   MAL-ED           BANGLADESH                     25                  1        0     138
6-24 months   MAL-ED           BANGLADESH                     27                  0        0     138
6-24 months   MAL-ED           BANGLADESH                     27                  1        0     138
6-24 months   MAL-ED           INDIA                          0                   0        0     139
6-24 months   MAL-ED           INDIA                          0                   1        0     139
6-24 months   MAL-ED           INDIA                          1                   0        0     139
6-24 months   MAL-ED           INDIA                          1                   1        0     139
6-24 months   MAL-ED           INDIA                          2                   0        6     139
6-24 months   MAL-ED           INDIA                          2                   1        0     139
6-24 months   MAL-ED           INDIA                          3                   0       10     139
6-24 months   MAL-ED           INDIA                          3                   1        0     139
6-24 months   MAL-ED           INDIA                          4                   0        6     139
6-24 months   MAL-ED           INDIA                          4                   1        0     139
6-24 months   MAL-ED           INDIA                          5                   0       29     139
6-24 months   MAL-ED           INDIA                          5                   1        4     139
6-24 months   MAL-ED           INDIA                          6                   0        9     139
6-24 months   MAL-ED           INDIA                          6                   1        2     139
6-24 months   MAL-ED           INDIA                          7                   0        9     139
6-24 months   MAL-ED           INDIA                          7                   1        2     139
6-24 months   MAL-ED           INDIA                          8                   0       14     139
6-24 months   MAL-ED           INDIA                          8                   1        5     139
6-24 months   MAL-ED           INDIA                          9                   0       26     139
6-24 months   MAL-ED           INDIA                          9                   1        0     139
6-24 months   MAL-ED           INDIA                          10                  0        6     139
6-24 months   MAL-ED           INDIA                          10                  1        0     139
6-24 months   MAL-ED           INDIA                          11                  0        2     139
6-24 months   MAL-ED           INDIA                          11                  1        0     139
6-24 months   MAL-ED           INDIA                          12                  0        3     139
6-24 months   MAL-ED           INDIA                          12                  1        0     139
6-24 months   MAL-ED           INDIA                          13                  0        1     139
6-24 months   MAL-ED           INDIA                          13                  1        0     139
6-24 months   MAL-ED           INDIA                          14                  0        2     139
6-24 months   MAL-ED           INDIA                          14                  1        0     139
6-24 months   MAL-ED           INDIA                          15                  0        2     139
6-24 months   MAL-ED           INDIA                          15                  1        0     139
6-24 months   MAL-ED           INDIA                          16                  0        0     139
6-24 months   MAL-ED           INDIA                          16                  1        0     139
6-24 months   MAL-ED           INDIA                          17                  0        0     139
6-24 months   MAL-ED           INDIA                          17                  1        0     139
6-24 months   MAL-ED           INDIA                          18                  0        1     139
6-24 months   MAL-ED           INDIA                          18                  1        0     139
6-24 months   MAL-ED           INDIA                          19                  0        0     139
6-24 months   MAL-ED           INDIA                          19                  1        0     139
6-24 months   MAL-ED           INDIA                          20                  0        0     139
6-24 months   MAL-ED           INDIA                          20                  1        0     139
6-24 months   MAL-ED           INDIA                          24                  0        0     139
6-24 months   MAL-ED           INDIA                          24                  1        0     139
6-24 months   MAL-ED           INDIA                          25                  0        0     139
6-24 months   MAL-ED           INDIA                          25                  1        0     139
6-24 months   MAL-ED           INDIA                          27                  0        0     139
6-24 months   MAL-ED           INDIA                          27                  1        0     139
6-24 months   MAL-ED           NEPAL                          0                   0        0      96
6-24 months   MAL-ED           NEPAL                          0                   1        0      96
6-24 months   MAL-ED           NEPAL                          1                   0        0      96
6-24 months   MAL-ED           NEPAL                          1                   1        0      96
6-24 months   MAL-ED           NEPAL                          2                   0        4      96
6-24 months   MAL-ED           NEPAL                          2                   1        0      96
6-24 months   MAL-ED           NEPAL                          3                   0        3      96
6-24 months   MAL-ED           NEPAL                          3                   1        0      96
6-24 months   MAL-ED           NEPAL                          4                   0       10      96
6-24 months   MAL-ED           NEPAL                          4                   1        0      96
6-24 months   MAL-ED           NEPAL                          5                   0        6      96
6-24 months   MAL-ED           NEPAL                          5                   1        0      96
6-24 months   MAL-ED           NEPAL                          6                   0        4      96
6-24 months   MAL-ED           NEPAL                          6                   1        0      96
6-24 months   MAL-ED           NEPAL                          7                   0        8      96
6-24 months   MAL-ED           NEPAL                          7                   1        1      96
6-24 months   MAL-ED           NEPAL                          8                   0       12      96
6-24 months   MAL-ED           NEPAL                          8                   1        0      96
6-24 months   MAL-ED           NEPAL                          9                   0        7      96
6-24 months   MAL-ED           NEPAL                          9                   1        0      96
6-24 months   MAL-ED           NEPAL                          10                  0       26      96
6-24 months   MAL-ED           NEPAL                          10                  1        1      96
6-24 months   MAL-ED           NEPAL                          11                  0        1      96
6-24 months   MAL-ED           NEPAL                          11                  1        0      96
6-24 months   MAL-ED           NEPAL                          12                  0        7      96
6-24 months   MAL-ED           NEPAL                          12                  1        0      96
6-24 months   MAL-ED           NEPAL                          13                  0        0      96
6-24 months   MAL-ED           NEPAL                          13                  1        0      96
6-24 months   MAL-ED           NEPAL                          14                  0        0      96
6-24 months   MAL-ED           NEPAL                          14                  1        0      96
6-24 months   MAL-ED           NEPAL                          15                  0        1      96
6-24 months   MAL-ED           NEPAL                          15                  1        0      96
6-24 months   MAL-ED           NEPAL                          16                  0        1      96
6-24 months   MAL-ED           NEPAL                          16                  1        0      96
6-24 months   MAL-ED           NEPAL                          17                  0        3      96
6-24 months   MAL-ED           NEPAL                          17                  1        0      96
6-24 months   MAL-ED           NEPAL                          18                  0        1      96
6-24 months   MAL-ED           NEPAL                          18                  1        0      96
6-24 months   MAL-ED           NEPAL                          19                  0        0      96
6-24 months   MAL-ED           NEPAL                          19                  1        0      96
6-24 months   MAL-ED           NEPAL                          20                  0        0      96
6-24 months   MAL-ED           NEPAL                          20                  1        0      96
6-24 months   MAL-ED           NEPAL                          24                  0        0      96
6-24 months   MAL-ED           NEPAL                          24                  1        0      96
6-24 months   MAL-ED           NEPAL                          25                  0        0      96
6-24 months   MAL-ED           NEPAL                          25                  1        0      96
6-24 months   MAL-ED           NEPAL                          27                  0        0      96
6-24 months   MAL-ED           NEPAL                          27                  1        0      96
6-24 months   MAL-ED           PERU                           0                   0        1     234
6-24 months   MAL-ED           PERU                           0                   1        0     234
6-24 months   MAL-ED           PERU                           1                   0        2     234
6-24 months   MAL-ED           PERU                           1                   1        0     234
6-24 months   MAL-ED           PERU                           2                   0        1     234
6-24 months   MAL-ED           PERU                           2                   1        0     234
6-24 months   MAL-ED           PERU                           3                   0        8     234
6-24 months   MAL-ED           PERU                           3                   1        0     234
6-24 months   MAL-ED           PERU                           4                   0        4     234
6-24 months   MAL-ED           PERU                           4                   1        0     234
6-24 months   MAL-ED           PERU                           5                   0        7     234
6-24 months   MAL-ED           PERU                           5                   1        0     234
6-24 months   MAL-ED           PERU                           6                   0       24     234
6-24 months   MAL-ED           PERU                           6                   1        0     234
6-24 months   MAL-ED           PERU                           7                   0       16     234
6-24 months   MAL-ED           PERU                           7                   1        0     234
6-24 months   MAL-ED           PERU                           8                   0       22     234
6-24 months   MAL-ED           PERU                           8                   1        0     234
6-24 months   MAL-ED           PERU                           9                   0       26     234
6-24 months   MAL-ED           PERU                           9                   1        0     234
6-24 months   MAL-ED           PERU                           10                  0       12     234
6-24 months   MAL-ED           PERU                           10                  1        0     234
6-24 months   MAL-ED           PERU                           11                  0       91     234
6-24 months   MAL-ED           PERU                           11                  1        1     234
6-24 months   MAL-ED           PERU                           12                  0        1     234
6-24 months   MAL-ED           PERU                           12                  1        0     234
6-24 months   MAL-ED           PERU                           13                  0        4     234
6-24 months   MAL-ED           PERU                           13                  1        0     234
6-24 months   MAL-ED           PERU                           14                  0        4     234
6-24 months   MAL-ED           PERU                           14                  1        0     234
6-24 months   MAL-ED           PERU                           15                  0        1     234
6-24 months   MAL-ED           PERU                           15                  1        0     234
6-24 months   MAL-ED           PERU                           16                  0        1     234
6-24 months   MAL-ED           PERU                           16                  1        0     234
6-24 months   MAL-ED           PERU                           17                  0        1     234
6-24 months   MAL-ED           PERU                           17                  1        0     234
6-24 months   MAL-ED           PERU                           18                  0        5     234
6-24 months   MAL-ED           PERU                           18                  1        0     234
6-24 months   MAL-ED           PERU                           19                  0        0     234
6-24 months   MAL-ED           PERU                           19                  1        0     234
6-24 months   MAL-ED           PERU                           20                  0        2     234
6-24 months   MAL-ED           PERU                           20                  1        0     234
6-24 months   MAL-ED           PERU                           24                  0        0     234
6-24 months   MAL-ED           PERU                           24                  1        0     234
6-24 months   MAL-ED           PERU                           25                  0        0     234
6-24 months   MAL-ED           PERU                           25                  1        0     234
6-24 months   MAL-ED           PERU                           27                  0        0     234
6-24 months   MAL-ED           PERU                           27                  1        0     234
6-24 months   MAL-ED           SOUTH AFRICA                   0                   0        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   0                   1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   1                   0        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   1                   1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   2                   0        1      99
6-24 months   MAL-ED           SOUTH AFRICA                   2                   1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   3                   0        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   3                   1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   4                   0        4      99
6-24 months   MAL-ED           SOUTH AFRICA                   4                   1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   5                   0        2      99
6-24 months   MAL-ED           SOUTH AFRICA                   5                   1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   6                   0        6      99
6-24 months   MAL-ED           SOUTH AFRICA                   6                   1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   7                   0        5      99
6-24 months   MAL-ED           SOUTH AFRICA                   7                   1        1      99
6-24 months   MAL-ED           SOUTH AFRICA                   8                   0       11      99
6-24 months   MAL-ED           SOUTH AFRICA                   8                   1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   9                   0        6      99
6-24 months   MAL-ED           SOUTH AFRICA                   9                   1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   10                  0        9      99
6-24 months   MAL-ED           SOUTH AFRICA                   10                  1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   11                  0       16      99
6-24 months   MAL-ED           SOUTH AFRICA                   11                  1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   12                  0       33      99
6-24 months   MAL-ED           SOUTH AFRICA                   12                  1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   13                  0        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   13                  1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   14                  0        2      99
6-24 months   MAL-ED           SOUTH AFRICA                   14                  1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   15                  0        2      99
6-24 months   MAL-ED           SOUTH AFRICA                   15                  1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   16                  0        1      99
6-24 months   MAL-ED           SOUTH AFRICA                   16                  1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   17                  0        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   17                  1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   18                  0        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   18                  1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   19                  0        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   19                  1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   20                  0        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   20                  1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   24                  0        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   24                  1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   25                  0        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   25                  1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   27                  0        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   27                  1        0      99
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0       14     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                   0       13     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                   1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                   0       18     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                   1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                   0       13     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                   1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                   0       11     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                   1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                   0        8     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                   1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                   0      118     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                   1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                   0        1     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                   1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                   0        2     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                   1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                  0        4     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                  1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                  0        3     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                  1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                  0        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                  1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                  0        1     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13                  1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                  0        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14                  1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                  0        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15                  1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                  0        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16                  1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                  0        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17                  1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                  0        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18                  1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                  0        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19                  1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                  0        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20                  1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                  0        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24                  1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                  0        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25                  1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                  0        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27                  1        0     206
6-24 months   NIH-Crypto       BANGLADESH                     0                   0      157     730
6-24 months   NIH-Crypto       BANGLADESH                     0                   1        9     730
6-24 months   NIH-Crypto       BANGLADESH                     1                   0       19     730
6-24 months   NIH-Crypto       BANGLADESH                     1                   1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     2                   0       10     730
6-24 months   NIH-Crypto       BANGLADESH                     2                   1        2     730
6-24 months   NIH-Crypto       BANGLADESH                     3                   0       29     730
6-24 months   NIH-Crypto       BANGLADESH                     3                   1        3     730
6-24 months   NIH-Crypto       BANGLADESH                     4                   0       38     730
6-24 months   NIH-Crypto       BANGLADESH                     4                   1        1     730
6-24 months   NIH-Crypto       BANGLADESH                     5                   0       82     730
6-24 months   NIH-Crypto       BANGLADESH                     5                   1        5     730
6-24 months   NIH-Crypto       BANGLADESH                     6                   0       35     730
6-24 months   NIH-Crypto       BANGLADESH                     6                   1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     7                   0       52     730
6-24 months   NIH-Crypto       BANGLADESH                     7                   1        2     730
6-24 months   NIH-Crypto       BANGLADESH                     8                   0       85     730
6-24 months   NIH-Crypto       BANGLADESH                     8                   1        2     730
6-24 months   NIH-Crypto       BANGLADESH                     9                   0       82     730
6-24 months   NIH-Crypto       BANGLADESH                     9                   1        1     730
6-24 months   NIH-Crypto       BANGLADESH                     10                  0       50     730
6-24 months   NIH-Crypto       BANGLADESH                     10                  1        1     730
6-24 months   NIH-Crypto       BANGLADESH                     11                  0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     11                  1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     12                  0       34     730
6-24 months   NIH-Crypto       BANGLADESH                     12                  1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     13                  0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     13                  1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     14                  0        8     730
6-24 months   NIH-Crypto       BANGLADESH                     14                  1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     15                  0       16     730
6-24 months   NIH-Crypto       BANGLADESH                     15                  1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     16                  0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     16                  1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     17                  0        7     730
6-24 months   NIH-Crypto       BANGLADESH                     17                  1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     18                  0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     18                  1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     19                  0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     19                  1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     20                  0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     20                  1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     24                  0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     24                  1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     25                  0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     25                  1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     27                  0        0     730
6-24 months   NIH-Crypto       BANGLADESH                     27                  1        0     730
6-24 months   PROBIT           BELARUS                        0                   0        0   16012
6-24 months   PROBIT           BELARUS                        0                   1        0   16012
6-24 months   PROBIT           BELARUS                        1                   0        0   16012
6-24 months   PROBIT           BELARUS                        1                   1        0   16012
6-24 months   PROBIT           BELARUS                        2                   0        0   16012
6-24 months   PROBIT           BELARUS                        2                   1        0   16012
6-24 months   PROBIT           BELARUS                        3                   0        0   16012
6-24 months   PROBIT           BELARUS                        3                   1        0   16012
6-24 months   PROBIT           BELARUS                        4                   0        0   16012
6-24 months   PROBIT           BELARUS                        4                   1        0   16012
6-24 months   PROBIT           BELARUS                        5                   0        0   16012
6-24 months   PROBIT           BELARUS                        5                   1        0   16012
6-24 months   PROBIT           BELARUS                        6                   0        0   16012
6-24 months   PROBIT           BELARUS                        6                   1        0   16012
6-24 months   PROBIT           BELARUS                        7                   0        0   16012
6-24 months   PROBIT           BELARUS                        7                   1        0   16012
6-24 months   PROBIT           BELARUS                        8                   0       24   16012
6-24 months   PROBIT           BELARUS                        8                   1        1   16012
6-24 months   PROBIT           BELARUS                        9                   0        0   16012
6-24 months   PROBIT           BELARUS                        9                   1        0   16012
6-24 months   PROBIT           BELARUS                        10                  0      356   16012
6-24 months   PROBIT           BELARUS                        10                  1        4   16012
6-24 months   PROBIT           BELARUS                        11                  0        0   16012
6-24 months   PROBIT           BELARUS                        11                  1        0   16012
6-24 months   PROBIT           BELARUS                        12                  0     5878   16012
6-24 months   PROBIT           BELARUS                        12                  1       51   16012
6-24 months   PROBIT           BELARUS                        13                  0     7006   16012
6-24 months   PROBIT           BELARUS                        13                  1       58   16012
6-24 months   PROBIT           BELARUS                        14                  0      427   16012
6-24 months   PROBIT           BELARUS                        14                  1        3   16012
6-24 months   PROBIT           BELARUS                        15                  0        0   16012
6-24 months   PROBIT           BELARUS                        15                  1        0   16012
6-24 months   PROBIT           BELARUS                        16                  0     2190   16012
6-24 months   PROBIT           BELARUS                        16                  1       14   16012
6-24 months   PROBIT           BELARUS                        17                  0        0   16012
6-24 months   PROBIT           BELARUS                        17                  1        0   16012
6-24 months   PROBIT           BELARUS                        18                  0        0   16012
6-24 months   PROBIT           BELARUS                        18                  1        0   16012
6-24 months   PROBIT           BELARUS                        19                  0        0   16012
6-24 months   PROBIT           BELARUS                        19                  1        0   16012
6-24 months   PROBIT           BELARUS                        20                  0        0   16012
6-24 months   PROBIT           BELARUS                        20                  1        0   16012
6-24 months   PROBIT           BELARUS                        24                  0        0   16012
6-24 months   PROBIT           BELARUS                        24                  1        0   16012
6-24 months   PROBIT           BELARUS                        25                  0        0   16012
6-24 months   PROBIT           BELARUS                        25                  1        0   16012
6-24 months   PROBIT           BELARUS                        27                  0        0   16012
6-24 months   PROBIT           BELARUS                        27                  1        0   16012
6-24 months   PROVIDE          BANGLADESH                     0                   0      178     641
6-24 months   PROVIDE          BANGLADESH                     0                   1        7     641
6-24 months   PROVIDE          BANGLADESH                     1                   0       13     641
6-24 months   PROVIDE          BANGLADESH                     1                   1        0     641
6-24 months   PROVIDE          BANGLADESH                     2                   0       17     641
6-24 months   PROVIDE          BANGLADESH                     2                   1        1     641
6-24 months   PROVIDE          BANGLADESH                     3                   0       25     641
6-24 months   PROVIDE          BANGLADESH                     3                   1        0     641
6-24 months   PROVIDE          BANGLADESH                     4                   0       44     641
6-24 months   PROVIDE          BANGLADESH                     4                   1        2     641
6-24 months   PROVIDE          BANGLADESH                     5                   0       69     641
6-24 months   PROVIDE          BANGLADESH                     5                   1        1     641
6-24 months   PROVIDE          BANGLADESH                     6                   0       28     641
6-24 months   PROVIDE          BANGLADESH                     6                   1        0     641
6-24 months   PROVIDE          BANGLADESH                     7                   0       36     641
6-24 months   PROVIDE          BANGLADESH                     7                   1        0     641
6-24 months   PROVIDE          BANGLADESH                     8                   0       59     641
6-24 months   PROVIDE          BANGLADESH                     8                   1        1     641
6-24 months   PROVIDE          BANGLADESH                     9                   0       58     641
6-24 months   PROVIDE          BANGLADESH                     9                   1        1     641
6-24 months   PROVIDE          BANGLADESH                     10                  0       35     641
6-24 months   PROVIDE          BANGLADESH                     10                  1        1     641
6-24 months   PROVIDE          BANGLADESH                     11                  0       25     641
6-24 months   PROVIDE          BANGLADESH                     11                  1        0     641
6-24 months   PROVIDE          BANGLADESH                     12                  0        4     641
6-24 months   PROVIDE          BANGLADESH                     12                  1        0     641
6-24 months   PROVIDE          BANGLADESH                     13                  0        0     641
6-24 months   PROVIDE          BANGLADESH                     13                  1        0     641
6-24 months   PROVIDE          BANGLADESH                     14                  0       18     641
6-24 months   PROVIDE          BANGLADESH                     14                  1        1     641
6-24 months   PROVIDE          BANGLADESH                     15                  0        8     641
6-24 months   PROVIDE          BANGLADESH                     15                  1        0     641
6-24 months   PROVIDE          BANGLADESH                     16                  0        8     641
6-24 months   PROVIDE          BANGLADESH                     16                  1        0     641
6-24 months   PROVIDE          BANGLADESH                     17                  0        0     641
6-24 months   PROVIDE          BANGLADESH                     17                  1        0     641
6-24 months   PROVIDE          BANGLADESH                     18                  0        0     641
6-24 months   PROVIDE          BANGLADESH                     18                  1        0     641
6-24 months   PROVIDE          BANGLADESH                     19                  0        1     641
6-24 months   PROVIDE          BANGLADESH                     19                  1        0     641
6-24 months   PROVIDE          BANGLADESH                     20                  0        0     641
6-24 months   PROVIDE          BANGLADESH                     20                  1        0     641
6-24 months   PROVIDE          BANGLADESH                     24                  0        0     641
6-24 months   PROVIDE          BANGLADESH                     24                  1        0     641
6-24 months   PROVIDE          BANGLADESH                     25                  0        0     641
6-24 months   PROVIDE          BANGLADESH                     25                  1        0     641
6-24 months   PROVIDE          BANGLADESH                     27                  0        0     641
6-24 months   PROVIDE          BANGLADESH                     27                  1        0     641
6-24 months   SAS-CompFeed     INDIA                          0                   0      139    1363
6-24 months   SAS-CompFeed     INDIA                          0                   1       18    1363
6-24 months   SAS-CompFeed     INDIA                          1                   0        0    1363
6-24 months   SAS-CompFeed     INDIA                          1                   1        0    1363
6-24 months   SAS-CompFeed     INDIA                          2                   0        4    1363
6-24 months   SAS-CompFeed     INDIA                          2                   1        1    1363
6-24 months   SAS-CompFeed     INDIA                          3                   0       10    1363
6-24 months   SAS-CompFeed     INDIA                          3                   1        2    1363
6-24 months   SAS-CompFeed     INDIA                          4                   0       21    1363
6-24 months   SAS-CompFeed     INDIA                          4                   1        2    1363
6-24 months   SAS-CompFeed     INDIA                          5                   0       73    1363
6-24 months   SAS-CompFeed     INDIA                          5                   1        9    1363
6-24 months   SAS-CompFeed     INDIA                          6                   0       20    1363
6-24 months   SAS-CompFeed     INDIA                          6                   1        6    1363
6-24 months   SAS-CompFeed     INDIA                          7                   0       96    1363
6-24 months   SAS-CompFeed     INDIA                          7                   1        9    1363
6-24 months   SAS-CompFeed     INDIA                          8                   0      138    1363
6-24 months   SAS-CompFeed     INDIA                          8                   1       15    1363
6-24 months   SAS-CompFeed     INDIA                          9                   0       81    1363
6-24 months   SAS-CompFeed     INDIA                          9                   1        8    1363
6-24 months   SAS-CompFeed     INDIA                          10                  0      322    1363
6-24 months   SAS-CompFeed     INDIA                          10                  1       27    1363
6-24 months   SAS-CompFeed     INDIA                          11                  0       37    1363
6-24 months   SAS-CompFeed     INDIA                          11                  1        0    1363
6-24 months   SAS-CompFeed     INDIA                          12                  0      201    1363
6-24 months   SAS-CompFeed     INDIA                          12                  1       12    1363
6-24 months   SAS-CompFeed     INDIA                          13                  0        7    1363
6-24 months   SAS-CompFeed     INDIA                          13                  1        0    1363
6-24 months   SAS-CompFeed     INDIA                          14                  0       15    1363
6-24 months   SAS-CompFeed     INDIA                          14                  1        1    1363
6-24 months   SAS-CompFeed     INDIA                          15                  0       56    1363
6-24 months   SAS-CompFeed     INDIA                          15                  1        3    1363
6-24 months   SAS-CompFeed     INDIA                          16                  0       10    1363
6-24 months   SAS-CompFeed     INDIA                          16                  1        0    1363
6-24 months   SAS-CompFeed     INDIA                          17                  0       14    1363
6-24 months   SAS-CompFeed     INDIA                          17                  1        1    1363
6-24 months   SAS-CompFeed     INDIA                          18                  0        3    1363
6-24 months   SAS-CompFeed     INDIA                          18                  1        0    1363
6-24 months   SAS-CompFeed     INDIA                          19                  0        1    1363
6-24 months   SAS-CompFeed     INDIA                          19                  1        0    1363
6-24 months   SAS-CompFeed     INDIA                          20                  0        1    1363
6-24 months   SAS-CompFeed     INDIA                          20                  1        0    1363
6-24 months   SAS-CompFeed     INDIA                          24                  0        0    1363
6-24 months   SAS-CompFeed     INDIA                          24                  1        0    1363
6-24 months   SAS-CompFeed     INDIA                          25                  0        0    1363
6-24 months   SAS-CompFeed     INDIA                          25                  1        0    1363
6-24 months   SAS-CompFeed     INDIA                          27                  0        0    1363
6-24 months   SAS-CompFeed     INDIA                          27                  1        0    1363
6-24 months   SAS-FoodSuppl    INDIA                          0                   0      107     375
6-24 months   SAS-FoodSuppl    INDIA                          0                   1       24     375
6-24 months   SAS-FoodSuppl    INDIA                          1                   0        1     375
6-24 months   SAS-FoodSuppl    INDIA                          1                   1        0     375
6-24 months   SAS-FoodSuppl    INDIA                          2                   0        7     375
6-24 months   SAS-FoodSuppl    INDIA                          2                   1        3     375
6-24 months   SAS-FoodSuppl    INDIA                          3                   0        4     375
6-24 months   SAS-FoodSuppl    INDIA                          3                   1        2     375
6-24 months   SAS-FoodSuppl    INDIA                          4                   0        8     375
6-24 months   SAS-FoodSuppl    INDIA                          4                   1        2     375
6-24 months   SAS-FoodSuppl    INDIA                          5                   0       38     375
6-24 months   SAS-FoodSuppl    INDIA                          5                   1       11     375
6-24 months   SAS-FoodSuppl    INDIA                          6                   0        8     375
6-24 months   SAS-FoodSuppl    INDIA                          6                   1        2     375
6-24 months   SAS-FoodSuppl    INDIA                          7                   0       11     375
6-24 months   SAS-FoodSuppl    INDIA                          7                   1        2     375
6-24 months   SAS-FoodSuppl    INDIA                          8                   0       40     375
6-24 months   SAS-FoodSuppl    INDIA                          8                   1        6     375
6-24 months   SAS-FoodSuppl    INDIA                          9                   0       22     375
6-24 months   SAS-FoodSuppl    INDIA                          9                   1        4     375
6-24 months   SAS-FoodSuppl    INDIA                          10                  0       46     375
6-24 months   SAS-FoodSuppl    INDIA                          10                  1        6     375
6-24 months   SAS-FoodSuppl    INDIA                          11                  0        0     375
6-24 months   SAS-FoodSuppl    INDIA                          11                  1        2     375
6-24 months   SAS-FoodSuppl    INDIA                          12                  0       10     375
6-24 months   SAS-FoodSuppl    INDIA                          12                  1        0     375
6-24 months   SAS-FoodSuppl    INDIA                          13                  0        1     375
6-24 months   SAS-FoodSuppl    INDIA                          13                  1        0     375
6-24 months   SAS-FoodSuppl    INDIA                          14                  0        4     375
6-24 months   SAS-FoodSuppl    INDIA                          14                  1        1     375
6-24 months   SAS-FoodSuppl    INDIA                          15                  0        3     375
6-24 months   SAS-FoodSuppl    INDIA                          15                  1        0     375
6-24 months   SAS-FoodSuppl    INDIA                          16                  0        0     375
6-24 months   SAS-FoodSuppl    INDIA                          16                  1        0     375
6-24 months   SAS-FoodSuppl    INDIA                          17                  0        0     375
6-24 months   SAS-FoodSuppl    INDIA                          17                  1        0     375
6-24 months   SAS-FoodSuppl    INDIA                          18                  0        0     375
6-24 months   SAS-FoodSuppl    INDIA                          18                  1        0     375
6-24 months   SAS-FoodSuppl    INDIA                          19                  0        0     375
6-24 months   SAS-FoodSuppl    INDIA                          19                  1        0     375
6-24 months   SAS-FoodSuppl    INDIA                          20                  0        0     375
6-24 months   SAS-FoodSuppl    INDIA                          20                  1        0     375
6-24 months   SAS-FoodSuppl    INDIA                          24                  0        0     375
6-24 months   SAS-FoodSuppl    INDIA                          24                  1        0     375
6-24 months   SAS-FoodSuppl    INDIA                          25                  0        0     375
6-24 months   SAS-FoodSuppl    INDIA                          25                  1        0     375
6-24 months   SAS-FoodSuppl    INDIA                          27                  0        0     375
6-24 months   SAS-FoodSuppl    INDIA                          27                  1        0     375
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0        4    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1        0    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        0    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        0    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0        0    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1        0    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   0        0    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   1        0    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   0        5    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   1        0    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   0        0    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   1        0    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   0        1    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   1        0    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   0     1113    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   1       29    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   0        8    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   1        0    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   0       48    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   1        2    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  0       20    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  1        2    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  0      505    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  1       16    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  0       14    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  1        1    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                  0      106    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13                  1        2    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                  0       12    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14                  1        0    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                  0       21    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15                  1        0    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                  0       26    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16                  1        0    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                  0       21    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17                  1        0    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                  0        4    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18                  1        0    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                  0        0    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19                  1        0    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                  0        0    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20                  1        0    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                  0       12    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24                  1        2    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                  0        1    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25                  1        0    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                  0      176    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27                  1        4    2155
6-24 months   ZVITAMBO         ZIMBABWE                       0                   0       40    9246
6-24 months   ZVITAMBO         ZIMBABWE                       0                   1        2    9246
6-24 months   ZVITAMBO         ZIMBABWE                       1                   0        1    9246
6-24 months   ZVITAMBO         ZIMBABWE                       1                   1        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       2                   0        4    9246
6-24 months   ZVITAMBO         ZIMBABWE                       2                   1        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       3                   0        9    9246
6-24 months   ZVITAMBO         ZIMBABWE                       3                   1        1    9246
6-24 months   ZVITAMBO         ZIMBABWE                       4                   0       16    9246
6-24 months   ZVITAMBO         ZIMBABWE                       4                   1        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       5                   0       23    9246
6-24 months   ZVITAMBO         ZIMBABWE                       5                   1        3    9246
6-24 months   ZVITAMBO         ZIMBABWE                       6                   0       28    9246
6-24 months   ZVITAMBO         ZIMBABWE                       6                   1        1    9246
6-24 months   ZVITAMBO         ZIMBABWE                       7                   0      556    9246
6-24 months   ZVITAMBO         ZIMBABWE                       7                   1       15    9246
6-24 months   ZVITAMBO         ZIMBABWE                       8                   0       76    9246
6-24 months   ZVITAMBO         ZIMBABWE                       8                   1        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       9                   0      597    9246
6-24 months   ZVITAMBO         ZIMBABWE                       9                   1       17    9246
6-24 months   ZVITAMBO         ZIMBABWE                       10                  0      218    9246
6-24 months   ZVITAMBO         ZIMBABWE                       10                  1        6    9246
6-24 months   ZVITAMBO         ZIMBABWE                       11                  0     6904    9246
6-24 months   ZVITAMBO         ZIMBABWE                       11                  1      109    9246
6-24 months   ZVITAMBO         ZIMBABWE                       12                  0       41    9246
6-24 months   ZVITAMBO         ZIMBABWE                       12                  1        1    9246
6-24 months   ZVITAMBO         ZIMBABWE                       13                  0      570    9246
6-24 months   ZVITAMBO         ZIMBABWE                       13                  1        8    9246
6-24 months   ZVITAMBO         ZIMBABWE                       14                  0        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       14                  1        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       15                  0        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       15                  1        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       16                  0        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       16                  1        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       17                  0        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       17                  1        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       18                  0        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       18                  1        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       19                  0        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       19                  1        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       20                  0        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       20                  1        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       24                  0        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       24                  1        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       25                  0        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       25                  1        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       27                  0        0    9246
6-24 months   ZVITAMBO         ZIMBABWE                       27                  1        0    9246


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
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
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
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
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
















