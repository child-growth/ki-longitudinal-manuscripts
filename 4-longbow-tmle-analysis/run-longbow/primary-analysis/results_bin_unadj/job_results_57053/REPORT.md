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

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid          country                        month    ever_wasted   n_cell       n
----------------------------  ---------------  -----------------------------  ------  ------------  -------  ------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                  0       13     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                  1       15     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          2                  0       13     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          2                  1       10     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          3                  0       13     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          3                  1       11     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          4                  0       21     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          4                  1        8     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          5                  0       27     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          5                  1       16     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          6                  0       21     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          6                  1       14     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          7                  0       20     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          7                  1       13     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          8                  0       22     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          8                  1       19     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          9                  0        9     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          9                  1       14     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          10                 0       12     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          10                 1        7     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          11                 0       20     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          11                 1       21     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          12                 0       11     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          12                 1       18     368
0-24 months (no birth wast)   CMIN             BANGLADESH                     1                  0       15     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     1                  1       13     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     2                  0       19     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     2                  1       15     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     3                  0       13     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     3                  1        7     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     4                  0       11     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     4                  1        9     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     5                  0       11     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     5                  1        9     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     6                  0       15     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     6                  1       10     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     7                  0        7     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     7                  1        7     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     8                  0       10     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     8                  1        4     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     9                  0       13     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     9                  1        7     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     10                 0       17     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     10                 1        6     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     11                 0        3     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     11                 1        0     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     12                 0       19     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     12                 1       28     268
0-24 months (no birth wast)   CONTENT          PERU                           1                  0        8     215
0-24 months (no birth wast)   CONTENT          PERU                           1                  1        1     215
0-24 months (no birth wast)   CONTENT          PERU                           2                  0       13     215
0-24 months (no birth wast)   CONTENT          PERU                           2                  1        0     215
0-24 months (no birth wast)   CONTENT          PERU                           3                  0       25     215
0-24 months (no birth wast)   CONTENT          PERU                           3                  1        2     215
0-24 months (no birth wast)   CONTENT          PERU                           4                  0       18     215
0-24 months (no birth wast)   CONTENT          PERU                           4                  1        0     215
0-24 months (no birth wast)   CONTENT          PERU                           5                  0       25     215
0-24 months (no birth wast)   CONTENT          PERU                           5                  1        0     215
0-24 months (no birth wast)   CONTENT          PERU                           6                  0       13     215
0-24 months (no birth wast)   CONTENT          PERU                           6                  1        1     215
0-24 months (no birth wast)   CONTENT          PERU                           7                  0       16     215
0-24 months (no birth wast)   CONTENT          PERU                           7                  1        0     215
0-24 months (no birth wast)   CONTENT          PERU                           8                  0       26     215
0-24 months (no birth wast)   CONTENT          PERU                           8                  1        0     215
0-24 months (no birth wast)   CONTENT          PERU                           9                  0       19     215
0-24 months (no birth wast)   CONTENT          PERU                           9                  1        0     215
0-24 months (no birth wast)   CONTENT          PERU                           10                 0       23     215
0-24 months (no birth wast)   CONTENT          PERU                           10                 1        0     215
0-24 months (no birth wast)   CONTENT          PERU                           11                 0       18     215
0-24 months (no birth wast)   CONTENT          PERU                           11                 1        0     215
0-24 months (no birth wast)   CONTENT          PERU                           12                 0        7     215
0-24 months (no birth wast)   CONTENT          PERU                           12                 1        0     215
0-24 months (no birth wast)   EE               PAKISTAN                       1                  0       43     377
0-24 months (no birth wast)   EE               PAKISTAN                       1                  1       50     377
0-24 months (no birth wast)   EE               PAKISTAN                       2                  0       40     377
0-24 months (no birth wast)   EE               PAKISTAN                       2                  1       33     377
0-24 months (no birth wast)   EE               PAKISTAN                       3                  0       18     377
0-24 months (no birth wast)   EE               PAKISTAN                       3                  1       28     377
0-24 months (no birth wast)   EE               PAKISTAN                       4                  0        6     377
0-24 months (no birth wast)   EE               PAKISTAN                       4                  1       16     377
0-24 months (no birth wast)   EE               PAKISTAN                       5                  0        0     377
0-24 months (no birth wast)   EE               PAKISTAN                       5                  1        0     377
0-24 months (no birth wast)   EE               PAKISTAN                       6                  0        0     377
0-24 months (no birth wast)   EE               PAKISTAN                       6                  1        0     377
0-24 months (no birth wast)   EE               PAKISTAN                       7                  0        0     377
0-24 months (no birth wast)   EE               PAKISTAN                       7                  1        0     377
0-24 months (no birth wast)   EE               PAKISTAN                       8                  0        0     377
0-24 months (no birth wast)   EE               PAKISTAN                       8                  1        0     377
0-24 months (no birth wast)   EE               PAKISTAN                       9                  0        0     377
0-24 months (no birth wast)   EE               PAKISTAN                       9                  1        0     377
0-24 months (no birth wast)   EE               PAKISTAN                       10                 0        0     377
0-24 months (no birth wast)   EE               PAKISTAN                       10                 1        0     377
0-24 months (no birth wast)   EE               PAKISTAN                       11                 0       29     377
0-24 months (no birth wast)   EE               PAKISTAN                       11                 1       30     377
0-24 months (no birth wast)   EE               PAKISTAN                       12                 0       38     377
0-24 months (no birth wast)   EE               PAKISTAN                       12                 1       46     377
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                  0        0     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                  1        0     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          2                  0        0     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          2                  1        0     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          3                  0        0     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          3                  1        0     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          4                  0        0     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          4                  1        1     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          5                  0        0     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          5                  1        0     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          6                  0       78     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          6                  1       72     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          7                  0      129     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          7                  1      120     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          8                  0      122     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          8                  1      138     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          9                  0        0     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          9                  1        0     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          10                 0        0     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          10                 1        0     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          11                 0        0     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          11                 1        0     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          12                 0        0     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          12                 1        0     660
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      1                  0       17     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      1                  1        2     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      2                  0       19     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      2                  1        1     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      3                  0       20     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      3                  1        2     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      4                  0       24     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      4                  1        4     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      5                  0       31     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      5                  1        2     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      6                  0       36     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      6                  1        3     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      7                  0       22     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      7                  1        3     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      8                  0       16     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      8                  1        3     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      9                  0       32     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      9                  1        3     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      10                 0       32     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      10                 1        1     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      11                 0       28     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      11                 1        2     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      12                 0       10     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      12                 1        0     313
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   1                  0      209    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   1                  1       21    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   2                  0      178    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   2                  1       16    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   3                  0      184    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   3                  1       22    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   4                  0      161    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   4                  1       10    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   5                  0      220    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   5                  1       22    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   6                  0      318    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   6                  1       31    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   7                  0      363    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   7                  1       29    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   8                  0      308    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   8                  1       30    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   9                  0      248    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   9                  1       24    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   10                 0      334    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   10                 1       27    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   11                 0      170    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   11                 1       17    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   12                 0      135    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   12                 1       14    3091
0-24 months (no birth wast)   IRC              INDIA                          1                  0       18     409
0-24 months (no birth wast)   IRC              INDIA                          1                  1       17     409
0-24 months (no birth wast)   IRC              INDIA                          2                  0       16     409
0-24 months (no birth wast)   IRC              INDIA                          2                  1       14     409
0-24 months (no birth wast)   IRC              INDIA                          3                  0       15     409
0-24 months (no birth wast)   IRC              INDIA                          3                  1       14     409
0-24 months (no birth wast)   IRC              INDIA                          4                  0       14     409
0-24 months (no birth wast)   IRC              INDIA                          4                  1       10     409
0-24 months (no birth wast)   IRC              INDIA                          5                  0        9     409
0-24 months (no birth wast)   IRC              INDIA                          5                  1       12     409
0-24 months (no birth wast)   IRC              INDIA                          6                  0       14     409
0-24 months (no birth wast)   IRC              INDIA                          6                  1       20     409
0-24 months (no birth wast)   IRC              INDIA                          7                  0       15     409
0-24 months (no birth wast)   IRC              INDIA                          7                  1       21     409
0-24 months (no birth wast)   IRC              INDIA                          8                  0       19     409
0-24 months (no birth wast)   IRC              INDIA                          8                  1       22     409
0-24 months (no birth wast)   IRC              INDIA                          9                  0       14     409
0-24 months (no birth wast)   IRC              INDIA                          9                  1       16     409
0-24 months (no birth wast)   IRC              INDIA                          10                 0       17     409
0-24 months (no birth wast)   IRC              INDIA                          10                 1       22     409
0-24 months (no birth wast)   IRC              INDIA                          11                 0       22     409
0-24 months (no birth wast)   IRC              INDIA                          11                 1       19     409
0-24 months (no birth wast)   IRC              INDIA                          12                 0       23     409
0-24 months (no birth wast)   IRC              INDIA                          12                 1       26     409
0-24 months (no birth wast)   Keneba           GAMBIA                         1                  0      152    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         1                  1       86    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         2                  0      163    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         2                  1      112    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         3                  0      143    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         3                  1       89    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         4                  0      212    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         4                  1       97    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         5                  0      233    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         5                  1       79    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         6                  0      175    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         6                  1       51    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         7                  0      114    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         7                  1       66    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         8                  0      116    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         8                  1       59    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         9                  0      117    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         9                  1       75    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         10                 0      137    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         10                 1       86    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         11                 0      195    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         11                 1      104    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         12                 0      138    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         12                 1       69    2868
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                  0       49     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                  1        6     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         2                  0      108     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         2                  1        6     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         3                  0       88     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         3                  1       10     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         4                  0      104     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         4                  1        6     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         5                  0      106     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         5                  1        5     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         6                  0       82     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         6                  1        8     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         7                  0       67     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         7                  1        4     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         8                  0       38     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         8                  1        3     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         9                  0       26     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         9                  1        3     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         10                 0       35     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         10                 1        0     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         11                 0       44     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         11                 1        5     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         12                 0       34     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         12                 1        0     837
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                  0       19     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                  1        3     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     2                  0       17     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     2                  1        7     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     3                  0       15     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     3                  1       11     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     4                  0       19     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     4                  1        5     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     5                  0       12     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     5                  1        6     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     6                  0       11     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     6                  1        2     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     7                  0       12     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     7                  1        6     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     8                  0       28     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     8                  1        1     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     9                  0       12     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     9                  1       10     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     10                 0       20     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     10                 1        3     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     11                 0       14     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     11                 1        2     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     12                 0       26     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     12                 1        2     263
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                  0       15     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                  1        0     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         2                  0       23     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         2                  1        2     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         3                  0       17     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         3                  1        1     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         4                  0       14     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         4                  1        0     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         5                  0       17     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         5                  1        1     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         6                  0       15     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         6                  1        1     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         7                  0       17     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         7                  1        1     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         8                  0       17     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         8                  1        1     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         9                  0       23     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         9                  1        2     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         10                 0       26     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         10                 1        1     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         11                 0       18     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         11                 1        1     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         12                 0       18     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         12                 1        2     233
0-24 months (no birth wast)   MAL-ED           INDIA                          1                  0       10     246
0-24 months (no birth wast)   MAL-ED           INDIA                          1                  1        6     246
0-24 months (no birth wast)   MAL-ED           INDIA                          2                  0       20     246
0-24 months (no birth wast)   MAL-ED           INDIA                          2                  1        6     246
0-24 months (no birth wast)   MAL-ED           INDIA                          3                  0       14     246
0-24 months (no birth wast)   MAL-ED           INDIA                          3                  1        7     246
0-24 months (no birth wast)   MAL-ED           INDIA                          4                  0       13     246
0-24 months (no birth wast)   MAL-ED           INDIA                          4                  1        8     246
0-24 months (no birth wast)   MAL-ED           INDIA                          5                  0        5     246
0-24 months (no birth wast)   MAL-ED           INDIA                          5                  1        3     246
0-24 months (no birth wast)   MAL-ED           INDIA                          6                  0       12     246
0-24 months (no birth wast)   MAL-ED           INDIA                          6                  1        5     246
0-24 months (no birth wast)   MAL-ED           INDIA                          7                  0       10     246
0-24 months (no birth wast)   MAL-ED           INDIA                          7                  1       11     246
0-24 months (no birth wast)   MAL-ED           INDIA                          8                  0       14     246
0-24 months (no birth wast)   MAL-ED           INDIA                          8                  1       10     246
0-24 months (no birth wast)   MAL-ED           INDIA                          9                  0       12     246
0-24 months (no birth wast)   MAL-ED           INDIA                          9                  1       11     246
0-24 months (no birth wast)   MAL-ED           INDIA                          10                 0       18     246
0-24 months (no birth wast)   MAL-ED           INDIA                          10                 1        6     246
0-24 months (no birth wast)   MAL-ED           INDIA                          11                 0       13     246
0-24 months (no birth wast)   MAL-ED           INDIA                          11                 1       11     246
0-24 months (no birth wast)   MAL-ED           INDIA                          12                 0       14     246
0-24 months (no birth wast)   MAL-ED           INDIA                          12                 1        7     246
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                  0       15     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                  1        5     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          2                  0       17     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          2                  1        3     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          3                  0       19     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          3                  1        1     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          4                  0       14     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          4                  1        6     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          5                  0       13     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          5                  1        6     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          6                  0       12     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          6                  1        8     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          7                  0       16     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          7                  1        4     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          8                  0       14     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          8                  1        6     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          9                  0       20     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          9                  1        0     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          10                 0       19     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          10                 1        1     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          11                 0       17     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          11                 1        3     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          12                 0       17     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          12                 1        3     239
0-24 months (no birth wast)   MAL-ED           PERU                           1                  0       33     302
0-24 months (no birth wast)   MAL-ED           PERU                           1                  1        4     302
0-24 months (no birth wast)   MAL-ED           PERU                           2                  0       28     302
0-24 months (no birth wast)   MAL-ED           PERU                           2                  1        2     302
0-24 months (no birth wast)   MAL-ED           PERU                           3                  0       20     302
0-24 months (no birth wast)   MAL-ED           PERU                           3                  1        3     302
0-24 months (no birth wast)   MAL-ED           PERU                           4                  0       18     302
0-24 months (no birth wast)   MAL-ED           PERU                           4                  1        1     302
0-24 months (no birth wast)   MAL-ED           PERU                           5                  0       24     302
0-24 months (no birth wast)   MAL-ED           PERU                           5                  1        1     302
0-24 months (no birth wast)   MAL-ED           PERU                           6                  0       20     302
0-24 months (no birth wast)   MAL-ED           PERU                           6                  1        2     302
0-24 months (no birth wast)   MAL-ED           PERU                           7                  0       24     302
0-24 months (no birth wast)   MAL-ED           PERU                           7                  1        0     302
0-24 months (no birth wast)   MAL-ED           PERU                           8                  0       18     302
0-24 months (no birth wast)   MAL-ED           PERU                           8                  1        1     302
0-24 months (no birth wast)   MAL-ED           PERU                           9                  0       20     302
0-24 months (no birth wast)   MAL-ED           PERU                           9                  1        2     302
0-24 months (no birth wast)   MAL-ED           PERU                           10                 0       24     302
0-24 months (no birth wast)   MAL-ED           PERU                           10                 1        1     302
0-24 months (no birth wast)   MAL-ED           PERU                           11                 0       33     302
0-24 months (no birth wast)   MAL-ED           PERU                           11                 1        4     302
0-24 months (no birth wast)   MAL-ED           PERU                           12                 0       19     302
0-24 months (no birth wast)   MAL-ED           PERU                           12                 1        0     302
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                  0       28     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                  1        9     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   2                  0       35     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   2                  1        5     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   3                  0       20     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   3                  1        1     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   4                  0       11     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   4                  1        1     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   5                  0       10     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   5                  1        2     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   6                  0       20     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   6                  1        2     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   7                  0       25     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   7                  1        4     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   8                  0       12     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   8                  1        0     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   9                  0       20     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   9                  1        2     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   10                 0       22     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   10                 1        7     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   11                 0       28     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   11                 1        6     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   12                 0       32     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   12                 1        6     308
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       16     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        7     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  0       23     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  1        5     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  0       21     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  1        3     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  0       10     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  1        1     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  0       14     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  1        2     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  0       12     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  1        4     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  0       26     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  1        2     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  0        9     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  1        3     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  0       19     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  1        0     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 0       21     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 1        0     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 0       25     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 1        4     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 0       31     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 1        3     261
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     1                  0       39     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     1                  1       25     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     2                  0       41     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     2                  1       17     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     3                  0       37     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     3                  1       19     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     4                  0       36     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     4                  1       14     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     5                  0       36     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     5                  1       11     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     6                  0       32     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     6                  1       12     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     7                  0       31     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     7                  1       16     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     8                  0       28     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     8                  1       13     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     9                  0       25     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     9                  1        8     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     10                 0       46     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     10                 1       12     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     11                 0       36     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     11                 1       15     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     12                 0       37     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     12                 1       16     602
0-24 months (no birth wast)   PROBIT           BELARUS                        1                  0     1111   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        1                  1       72   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        2                  0      942   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        2                  1       62   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        3                  0     1106   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        3                  1       79   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        4                  0     1062   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        4                  1       67   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        5                  0     1071   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        5                  1       79   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        6                  0     1125   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        6                  1       95   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        7                  0     1382   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        7                  1       92   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        8                  0     1488   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        8                  1      127   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        9                  0     1486   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        9                  1      103   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        10                 0     1682   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        10                 1      120   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        11                 0     1579   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        11                 1      125   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        12                 0     1697   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        12                 1      127   16879
0-24 months (no birth wast)   ResPak           PAKISTAN                       1                  0        2     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       1                  1        1     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       2                  0        6     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       2                  1        4     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       3                  0        7     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       3                  1        5     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       4                  0       12     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       4                  1        9     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       5                  0       15     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       5                  1       21     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       6                  0       29     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       6                  1       19     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       7                  0       28     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       7                  1       19     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       8                  0       12     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       8                  1       18     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       9                  0       28     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       9                  1       17     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       10                 0        8     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       10                 1        8     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       11                 0        2     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       11                 1        5     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       12                 0        4     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       12                 1        1     280
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                  0       66    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                  1       41    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          2                  0       67    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          2                  1       25    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          3                  0       59    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          3                  1       29    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          4                  0       53    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          4                  1       31    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          5                  0       50    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          5                  1       37    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          6                  0       70    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          6                  1       44    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          7                  0       85    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          7                  1       39    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          8                  0      104    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          8                  1       64    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          9                  0      117    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          9                  1       67    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          10                 0      104    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          10                 1       59    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          11                 0       83    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          11                 1       61    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          12                 0      101    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          12                 1       46    1502
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                  0       37     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                  1       25     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          2                  0       25     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          2                  1       15     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          3                  0       23     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          3                  1       12     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          4                  0       16     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          4                  1       11     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          5                  0       17     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          5                  1       13     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          6                  0       19     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          6                  1       12     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          7                  0       13     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          7                  1        5     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          8                  0        0     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          8                  1        0     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          9                  0        7     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          9                  1        6     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          10                 0       22     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          10                 1        6     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          11                 0       33     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          11                 1       18     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          12                 0       42     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          12                 1       20     397
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      178    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       53    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0      125    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1       32    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0      136    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1       47    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0      133    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1       28    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0      172    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1       27    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0      148    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1       25    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0      141    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1       31    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0      155    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1       40    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0      179    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1       49    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0      189    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1       39    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0      175    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       51    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0      179    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1       52    2384
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                  0     1187   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                  1      141   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       2                  0      917   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       2                  1      106   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       3                  0      979   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       3                  1      134   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       4                  0      929   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       4                  1       91   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       5                  0      900   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       5                  1       98   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       6                  0     1016   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       6                  1      106   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       7                  0     1034   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       7                  1      114   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       8                  0     1074   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       8                  1      126   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       9                  0     1190   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       9                  1      105   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       10                 0      926   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       10                 1      103   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       11                 0      998   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       11                 1      124   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       12                 0     1096   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       12                 1      143   13637
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                  0       17     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                  1       10     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          2                  0       15     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          2                  1        6     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          3                  0       14     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          3                  1        9     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          4                  0       21     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          4                  1        6     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          5                  0       28     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          5                  1       13     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          6                  0       24     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          6                  1        9     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          7                  0       22     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          7                  1       10     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          8                  0       29     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          8                  1       10     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          9                  0       14     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          9                  1        5     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          10                 0       13     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          10                 1        6     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          11                 0       27     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          11                 1       13     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          12                 0       18     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          12                 1       11     350
0-6 months (no birth wast)    CMIN             BANGLADESH                     1                  0       23     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     1                  1        5     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     2                  0       27     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     2                  1        7     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     3                  0       19     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     3                  1        1     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     4                  0       18     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     4                  1        2     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     5                  0       15     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     5                  1        5     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     6                  0       20     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     6                  1        4     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     7                  0       12     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     7                  1        2     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     8                  0       14     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     8                  1        0     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     9                  0       19     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     9                  1        1     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     10                 0       23     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     10                 1        0     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     11                 0        3     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     11                 1        0     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     12                 0       43     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     12                 1        4     267
0-6 months (no birth wast)    CONTENT          PERU                           1                  0        8     215
0-6 months (no birth wast)    CONTENT          PERU                           1                  1        1     215
0-6 months (no birth wast)    CONTENT          PERU                           2                  0       13     215
0-6 months (no birth wast)    CONTENT          PERU                           2                  1        0     215
0-6 months (no birth wast)    CONTENT          PERU                           3                  0       25     215
0-6 months (no birth wast)    CONTENT          PERU                           3                  1        2     215
0-6 months (no birth wast)    CONTENT          PERU                           4                  0       18     215
0-6 months (no birth wast)    CONTENT          PERU                           4                  1        0     215
0-6 months (no birth wast)    CONTENT          PERU                           5                  0       25     215
0-6 months (no birth wast)    CONTENT          PERU                           5                  1        0     215
0-6 months (no birth wast)    CONTENT          PERU                           6                  0       14     215
0-6 months (no birth wast)    CONTENT          PERU                           6                  1        0     215
0-6 months (no birth wast)    CONTENT          PERU                           7                  0       16     215
0-6 months (no birth wast)    CONTENT          PERU                           7                  1        0     215
0-6 months (no birth wast)    CONTENT          PERU                           8                  0       26     215
0-6 months (no birth wast)    CONTENT          PERU                           8                  1        0     215
0-6 months (no birth wast)    CONTENT          PERU                           9                  0       19     215
0-6 months (no birth wast)    CONTENT          PERU                           9                  1        0     215
0-6 months (no birth wast)    CONTENT          PERU                           10                 0       23     215
0-6 months (no birth wast)    CONTENT          PERU                           10                 1        0     215
0-6 months (no birth wast)    CONTENT          PERU                           11                 0       18     215
0-6 months (no birth wast)    CONTENT          PERU                           11                 1        0     215
0-6 months (no birth wast)    CONTENT          PERU                           12                 0        7     215
0-6 months (no birth wast)    CONTENT          PERU                           12                 1        0     215
0-6 months (no birth wast)    EE               PAKISTAN                       1                  0       69     375
0-6 months (no birth wast)    EE               PAKISTAN                       1                  1       23     375
0-6 months (no birth wast)    EE               PAKISTAN                       2                  0       61     375
0-6 months (no birth wast)    EE               PAKISTAN                       2                  1       12     375
0-6 months (no birth wast)    EE               PAKISTAN                       3                  0       32     375
0-6 months (no birth wast)    EE               PAKISTAN                       3                  1       14     375
0-6 months (no birth wast)    EE               PAKISTAN                       4                  0       17     375
0-6 months (no birth wast)    EE               PAKISTAN                       4                  1        5     375
0-6 months (no birth wast)    EE               PAKISTAN                       5                  0        0     375
0-6 months (no birth wast)    EE               PAKISTAN                       5                  1        0     375
0-6 months (no birth wast)    EE               PAKISTAN                       6                  0        0     375
0-6 months (no birth wast)    EE               PAKISTAN                       6                  1        0     375
0-6 months (no birth wast)    EE               PAKISTAN                       7                  0        0     375
0-6 months (no birth wast)    EE               PAKISTAN                       7                  1        0     375
0-6 months (no birth wast)    EE               PAKISTAN                       8                  0        0     375
0-6 months (no birth wast)    EE               PAKISTAN                       8                  1        0     375
0-6 months (no birth wast)    EE               PAKISTAN                       9                  0        0     375
0-6 months (no birth wast)    EE               PAKISTAN                       9                  1        0     375
0-6 months (no birth wast)    EE               PAKISTAN                       10                 0        0     375
0-6 months (no birth wast)    EE               PAKISTAN                       10                 1        0     375
0-6 months (no birth wast)    EE               PAKISTAN                       11                 0       47     375
0-6 months (no birth wast)    EE               PAKISTAN                       11                 1       12     375
0-6 months (no birth wast)    EE               PAKISTAN                       12                 0       68     375
0-6 months (no birth wast)    EE               PAKISTAN                       12                 1       15     375
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                  0        0     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                  1        0     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          2                  0        0     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          2                  1        0     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          3                  0        0     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          3                  1        0     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          4                  0        0     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          4                  1        1     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          5                  0        0     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          5                  1        0     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          6                  0      118     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          6                  1       28     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          7                  0      189     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          7                  1       56     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          8                  0      212     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          8                  1       38     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          9                  0        0     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          9                  1        0     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          10                 0        0     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          10                 1        0     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          11                 0        0     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          11                 1        0     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          12                 0        0     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          12                 1        0     642
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      1                  0       18     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      1                  1        0     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      2                  0       19     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      2                  1        0     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      3                  0       21     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      3                  1        0     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      4                  0       22     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      4                  1        1     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      5                  0       27     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      5                  1        0     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      6                  0       35     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      6                  1        1     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      7                  0       23     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      7                  1        2     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      8                  0       17     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      8                  1        1     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      9                  0       31     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      9                  1        0     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      10                 0       32     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      10                 1        0     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      11                 0       30     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      11                 1        0     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      12                 0       10     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      12                 1        0     290
0-6 months (no birth wast)    IRC              INDIA                          1                  0       25     390
0-6 months (no birth wast)    IRC              INDIA                          1                  1       10     390
0-6 months (no birth wast)    IRC              INDIA                          2                  0       20     390
0-6 months (no birth wast)    IRC              INDIA                          2                  1       10     390
0-6 months (no birth wast)    IRC              INDIA                          3                  0       17     390
0-6 months (no birth wast)    IRC              INDIA                          3                  1       11     390
0-6 months (no birth wast)    IRC              INDIA                          4                  0       21     390
0-6 months (no birth wast)    IRC              INDIA                          4                  1        2     390
0-6 months (no birth wast)    IRC              INDIA                          5                  0       16     390
0-6 months (no birth wast)    IRC              INDIA                          5                  1        5     390
0-6 months (no birth wast)    IRC              INDIA                          6                  0       19     390
0-6 months (no birth wast)    IRC              INDIA                          6                  1       13     390
0-6 months (no birth wast)    IRC              INDIA                          7                  0       19     390
0-6 months (no birth wast)    IRC              INDIA                          7                  1       14     390
0-6 months (no birth wast)    IRC              INDIA                          8                  0       24     390
0-6 months (no birth wast)    IRC              INDIA                          8                  1       14     390
0-6 months (no birth wast)    IRC              INDIA                          9                  0       20     390
0-6 months (no birth wast)    IRC              INDIA                          9                  1        9     390
0-6 months (no birth wast)    IRC              INDIA                          10                 0       23     390
0-6 months (no birth wast)    IRC              INDIA                          10                 1       13     390
0-6 months (no birth wast)    IRC              INDIA                          11                 0       28     390
0-6 months (no birth wast)    IRC              INDIA                          11                 1       13     390
0-6 months (no birth wast)    IRC              INDIA                          12                 0       25     390
0-6 months (no birth wast)    IRC              INDIA                          12                 1       19     390
0-6 months (no birth wast)    Keneba           GAMBIA                         1                  0      193    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         1                  1       17    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         2                  0      219    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         2                  1       26    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         3                  0      194    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         3                  1       23    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         4                  0      235    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         4                  1       27    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         5                  0      187    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         5                  1       29    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         6                  0      154    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         6                  1       23    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         7                  0      117    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         7                  1       20    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         8                  0      117    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         8                  1       19    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         9                  0      148    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         9                  1       22    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         10                 0      175    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         10                 1       25    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         11                 0      240    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         11                 1       28    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         12                 0      174    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         12                 1       12    2424
0-6 months (no birth wast)    LCNI-5           MALAWI                         1                  0        7     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         1                  1        0     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         2                  0       47     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         2                  1        0     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         3                  0       56     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         3                  1        0     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         4                  0       48     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         4                  1        0     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         5                  0       26     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         5                  1        0     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         6                  0       28     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         6                  1        0     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         7                  0       28     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         7                  1        0     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         8                  0        4     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         8                  1        0     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         9                  0        4     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         9                  1        0     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         10                 0        5     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         10                 1        0     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         11                 0       10     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         11                 1        0     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         12                 0        5     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         12                 1        0     268
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                  0       21     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                  1        1     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     2                  0       23     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     2                  1        1     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     3                  0       23     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     3                  1        3     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     4                  0       20     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     4                  1        3     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     5                  0       15     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     5                  1        3     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     6                  0       12     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     6                  1        1     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     7                  0       15     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     7                  1        3     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     8                  0       29     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     8                  1        0     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     9                  0       21     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     9                  1        1     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     10                 0       21     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     10                 1        2     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     11                 0       16     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     11                 1        0     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     12                 0       27     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     12                 1        1     262
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                  0       15     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                  1        0     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         2                  0       24     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         2                  1        1     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         3                  0       18     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         3                  1        0     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         4                  0       14     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         4                  1        0     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         5                  0       17     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         5                  1        1     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         6                  0       15     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         6                  1        1     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         7                  0       17     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         7                  1        1     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         8                  0       18     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         8                  1        0     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         9                  0       24     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         9                  1        1     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         10                 0       27     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         10                 1        0     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         11                 0       18     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         11                 1        1     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         12                 0       18     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         12                 1        2     233
0-6 months (no birth wast)    MAL-ED           INDIA                          1                  0       13     244
0-6 months (no birth wast)    MAL-ED           INDIA                          1                  1        3     244
0-6 months (no birth wast)    MAL-ED           INDIA                          2                  0       23     244
0-6 months (no birth wast)    MAL-ED           INDIA                          2                  1        2     244
0-6 months (no birth wast)    MAL-ED           INDIA                          3                  0       15     244
0-6 months (no birth wast)    MAL-ED           INDIA                          3                  1        6     244
0-6 months (no birth wast)    MAL-ED           INDIA                          4                  0       18     244
0-6 months (no birth wast)    MAL-ED           INDIA                          4                  1        3     244
0-6 months (no birth wast)    MAL-ED           INDIA                          5                  0        7     244
0-6 months (no birth wast)    MAL-ED           INDIA                          5                  1        1     244
0-6 months (no birth wast)    MAL-ED           INDIA                          6                  0       14     244
0-6 months (no birth wast)    MAL-ED           INDIA                          6                  1        3     244
0-6 months (no birth wast)    MAL-ED           INDIA                          7                  0       15     244
0-6 months (no birth wast)    MAL-ED           INDIA                          7                  1        6     244
0-6 months (no birth wast)    MAL-ED           INDIA                          8                  0       20     244
0-6 months (no birth wast)    MAL-ED           INDIA                          8                  1        4     244
0-6 months (no birth wast)    MAL-ED           INDIA                          9                  0       19     244
0-6 months (no birth wast)    MAL-ED           INDIA                          9                  1        4     244
0-6 months (no birth wast)    MAL-ED           INDIA                          10                 0       23     244
0-6 months (no birth wast)    MAL-ED           INDIA                          10                 1        1     244
0-6 months (no birth wast)    MAL-ED           INDIA                          11                 0       20     244
0-6 months (no birth wast)    MAL-ED           INDIA                          11                 1        4     244
0-6 months (no birth wast)    MAL-ED           INDIA                          12                 0       18     244
0-6 months (no birth wast)    MAL-ED           INDIA                          12                 1        2     244
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                  0       17     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                  1        2     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          2                  0       20     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          2                  1        0     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          3                  0       20     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          3                  1        0     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          4                  0       18     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          4                  1        2     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          5                  0       16     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          5                  1        3     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          6                  0       18     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          6                  1        2     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          7                  0       17     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          7                  1        3     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          8                  0       18     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          8                  1        2     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          9                  0       19     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          9                  1        0     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          10                 0       20     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          10                 1        0     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          11                 0       19     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          11                 1        1     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          12                 0       19     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          12                 1        1     237
0-6 months (no birth wast)    MAL-ED           PERU                           1                  0       37     302
0-6 months (no birth wast)    MAL-ED           PERU                           1                  1        0     302
0-6 months (no birth wast)    MAL-ED           PERU                           2                  0       29     302
0-6 months (no birth wast)    MAL-ED           PERU                           2                  1        1     302
0-6 months (no birth wast)    MAL-ED           PERU                           3                  0       23     302
0-6 months (no birth wast)    MAL-ED           PERU                           3                  1        0     302
0-6 months (no birth wast)    MAL-ED           PERU                           4                  0       19     302
0-6 months (no birth wast)    MAL-ED           PERU                           4                  1        0     302
0-6 months (no birth wast)    MAL-ED           PERU                           5                  0       25     302
0-6 months (no birth wast)    MAL-ED           PERU                           5                  1        0     302
0-6 months (no birth wast)    MAL-ED           PERU                           6                  0       21     302
0-6 months (no birth wast)    MAL-ED           PERU                           6                  1        1     302
0-6 months (no birth wast)    MAL-ED           PERU                           7                  0       24     302
0-6 months (no birth wast)    MAL-ED           PERU                           7                  1        0     302
0-6 months (no birth wast)    MAL-ED           PERU                           8                  0       19     302
0-6 months (no birth wast)    MAL-ED           PERU                           8                  1        0     302
0-6 months (no birth wast)    MAL-ED           PERU                           9                  0       22     302
0-6 months (no birth wast)    MAL-ED           PERU                           9                  1        0     302
0-6 months (no birth wast)    MAL-ED           PERU                           10                 0       24     302
0-6 months (no birth wast)    MAL-ED           PERU                           10                 1        1     302
0-6 months (no birth wast)    MAL-ED           PERU                           11                 0       35     302
0-6 months (no birth wast)    MAL-ED           PERU                           11                 1        2     302
0-6 months (no birth wast)    MAL-ED           PERU                           12                 0       19     302
0-6 months (no birth wast)    MAL-ED           PERU                           12                 1        0     302
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                  0       35     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                  1        1     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   2                  0       39     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   2                  1        1     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   3                  0       21     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   3                  1        0     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   4                  0       12     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   4                  1        0     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   5                  0       12     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   5                  1        0     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   6                  0       22     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   6                  1        0     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   7                  0       27     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   7                  1        2     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   8                  0       12     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   8                  1        0     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   9                  0       22     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   9                  1        0     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   10                 0       26     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   10                 1        3     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   11                 0       29     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   11                 1        5     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   12                 0       36     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   12                 1        2     307
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       20     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        3     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  0       28     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  1        0     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  0       24     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  1        0     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  0       11     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  1        0     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  0       15     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  1        1     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  0       15     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  1        1     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  0       26     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  1        2     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  0       12     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  1        0     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  0       19     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  1        0     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 0       21     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 1        0     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 0       27     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 1        2     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 0       33     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 1        1     261
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     1                  0       52     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     1                  1       11     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     2                  0       57     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     2                  1        1     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     3                  0       46     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     3                  1        8     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     4                  0       42     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     4                  1        7     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     5                  0       44     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     5                  1        1     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     6                  0       42     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     6                  1        2     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     7                  0       39     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     7                  1        4     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     8                  0       38     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     8                  1        2     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     9                  0       29     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     9                  1        3     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     10                 0       54     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     10                 1        2     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     11                 0       45     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     11                 1        3     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     12                 0       50     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     12                 1        2     584
0-6 months (no birth wast)    PROBIT           BELARUS                        1                  0     1102   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        1                  1       64   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        2                  0      940   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        2                  1       55   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        3                  0     1105   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        3                  1       71   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        4                  0     1055   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        4                  1       61   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        5                  0     1063   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        5                  1       71   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        6                  0     1114   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        6                  1       90   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        7                  0     1373   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        7                  1       86   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        8                  0     1477   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        8                  1      121   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        9                  0     1476   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        9                  1       92   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        10                 0     1680   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        10                 1       97   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        11                 0     1580   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        11                 1      108   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        12                 0     1706   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        12                 1      106   16693
0-6 months (no birth wast)    ResPak           PAKISTAN                       1                  0        3     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       1                  1        0     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       2                  0        5     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       2                  1        4     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       3                  0        8     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       3                  1        3     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       4                  0       19     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       4                  1        2     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       5                  0       26     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       5                  1       10     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       6                  0       41     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       6                  1        6     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       7                  0       36     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       7                  1       11     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       8                  0       20     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       8                  1       10     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       9                  0       33     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       9                  1       11     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       10                 0       13     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       10                 1        3     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       11                 0        4     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       11                 1        3     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       12                 0        5     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       12                 1        0     276
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                  0       80    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                  1       23    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          2                  0       80    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          2                  1       10    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          3                  0       73    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          3                  1       13    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          4                  0       70    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          4                  1       11    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          5                  0       66    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          5                  1       18    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          6                  0       98    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          6                  1       16    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          7                  0      114    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          7                  1        6    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          8                  0      154    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          8                  1       12    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          9                  0      167    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          9                  1       13    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          10                 0      142    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          10                 1       18    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          11                 0      119    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          11                 1       23    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          12                 0      125    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          12                 1       22    1473
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          1                  0       54     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          1                  1        0     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          2                  0       32     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          2                  1        0     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          3                  0       31     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          3                  1        0     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          4                  0       23     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          4                  1        0     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          5                  0       27     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          5                  1        0     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          6                  0       26     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          6                  1        0     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          7                  0       14     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          7                  1        0     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          8                  0        0     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          8                  1        0     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          9                  0       11     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          9                  1        0     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          10                 0       24     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          10                 1        0     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          11                 0       49     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          11                 1        0     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          12                 0       50     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          12                 1        0     341
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      200    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       29    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0      145    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1       11    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0      156    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1       27    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0      153    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1        8    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0      187    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1       11    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0      165    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1        7    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0      163    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1        9    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0      175    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1       19    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0      207    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1       21    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0      214    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1       14    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0      205    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       21    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0      202    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1       27    2376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                  0     1256   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                  1       42   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       2                  0      956   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       2                  1       37   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       3                  0     1051   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       3                  1       43   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       4                  0      980   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       4                  1       26   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       5                  0      968   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       5                  1       18   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       6                  0     1081   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       6                  1       28   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       7                  0     1088   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       7                  1       41   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       8                  0     1135   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       8                  1       44   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       9                  0     1224   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       9                  1       45   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       10                 0      979   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       10                 1       26   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       11                 0     1053   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       11                 1       38   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       12                 0     1177   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       12                 1       40   13376
6-24 months                   CMC-V-BCS-2002   INDIA                          1                  0       19     373
6-24 months                   CMC-V-BCS-2002   INDIA                          1                  1        9     373
6-24 months                   CMC-V-BCS-2002   INDIA                          2                  0       16     373
6-24 months                   CMC-V-BCS-2002   INDIA                          2                  1        8     373
6-24 months                   CMC-V-BCS-2002   INDIA                          3                  0       22     373
6-24 months                   CMC-V-BCS-2002   INDIA                          3                  1        4     373
6-24 months                   CMC-V-BCS-2002   INDIA                          4                  0       23     373
6-24 months                   CMC-V-BCS-2002   INDIA                          4                  1        6     373
6-24 months                   CMC-V-BCS-2002   INDIA                          5                  0       35     373
6-24 months                   CMC-V-BCS-2002   INDIA                          5                  1        8     373
6-24 months                   CMC-V-BCS-2002   INDIA                          6                  0       29     373
6-24 months                   CMC-V-BCS-2002   INDIA                          6                  1        8     373
6-24 months                   CMC-V-BCS-2002   INDIA                          7                  0       25     373
6-24 months                   CMC-V-BCS-2002   INDIA                          7                  1        8     373
6-24 months                   CMC-V-BCS-2002   INDIA                          8                  0       29     373
6-24 months                   CMC-V-BCS-2002   INDIA                          8                  1       12     373
6-24 months                   CMC-V-BCS-2002   INDIA                          9                  0       13     373
6-24 months                   CMC-V-BCS-2002   INDIA                          9                  1       10     373
6-24 months                   CMC-V-BCS-2002   INDIA                          10                 0       16     373
6-24 months                   CMC-V-BCS-2002   INDIA                          10                 1        3     373
6-24 months                   CMC-V-BCS-2002   INDIA                          11                 0       29     373
6-24 months                   CMC-V-BCS-2002   INDIA                          11                 1       12     373
6-24 months                   CMC-V-BCS-2002   INDIA                          12                 0       18     373
6-24 months                   CMC-V-BCS-2002   INDIA                          12                 1       11     373
6-24 months                   CMIN             BANGLADESH                     1                  0       18     252
6-24 months                   CMIN             BANGLADESH                     1                  1        9     252
6-24 months                   CMIN             BANGLADESH                     2                  0       20     252
6-24 months                   CMIN             BANGLADESH                     2                  1       11     252
6-24 months                   CMIN             BANGLADESH                     3                  0       14     252
6-24 months                   CMIN             BANGLADESH                     3                  1        6     252
6-24 months                   CMIN             BANGLADESH                     4                  0       10     252
6-24 months                   CMIN             BANGLADESH                     4                  1        8     252
6-24 months                   CMIN             BANGLADESH                     5                  0       12     252
6-24 months                   CMIN             BANGLADESH                     5                  1        8     252
6-24 months                   CMIN             BANGLADESH                     6                  0       17     252
6-24 months                   CMIN             BANGLADESH                     6                  1        6     252
6-24 months                   CMIN             BANGLADESH                     7                  0        8     252
6-24 months                   CMIN             BANGLADESH                     7                  1        5     252
6-24 months                   CMIN             BANGLADESH                     8                  0       10     252
6-24 months                   CMIN             BANGLADESH                     8                  1        4     252
6-24 months                   CMIN             BANGLADESH                     9                  0       12     252
6-24 months                   CMIN             BANGLADESH                     9                  1        7     252
6-24 months                   CMIN             BANGLADESH                     10                 0       13     252
6-24 months                   CMIN             BANGLADESH                     10                 1        6     252
6-24 months                   CMIN             BANGLADESH                     11                 0        2     252
6-24 months                   CMIN             BANGLADESH                     11                 1        0     252
6-24 months                   CMIN             BANGLADESH                     12                 0       19     252
6-24 months                   CMIN             BANGLADESH                     12                 1       27     252
6-24 months                   CONTENT          PERU                           1                  0        8     215
6-24 months                   CONTENT          PERU                           1                  1        1     215
6-24 months                   CONTENT          PERU                           2                  0       13     215
6-24 months                   CONTENT          PERU                           2                  1        0     215
6-24 months                   CONTENT          PERU                           3                  0       27     215
6-24 months                   CONTENT          PERU                           3                  1        0     215
6-24 months                   CONTENT          PERU                           4                  0       18     215
6-24 months                   CONTENT          PERU                           4                  1        0     215
6-24 months                   CONTENT          PERU                           5                  0       25     215
6-24 months                   CONTENT          PERU                           5                  1        0     215
6-24 months                   CONTENT          PERU                           6                  0       13     215
6-24 months                   CONTENT          PERU                           6                  1        1     215
6-24 months                   CONTENT          PERU                           7                  0       16     215
6-24 months                   CONTENT          PERU                           7                  1        0     215
6-24 months                   CONTENT          PERU                           8                  0       26     215
6-24 months                   CONTENT          PERU                           8                  1        0     215
6-24 months                   CONTENT          PERU                           9                  0       19     215
6-24 months                   CONTENT          PERU                           9                  1        0     215
6-24 months                   CONTENT          PERU                           10                 0       23     215
6-24 months                   CONTENT          PERU                           10                 1        0     215
6-24 months                   CONTENT          PERU                           11                 0       18     215
6-24 months                   CONTENT          PERU                           11                 1        0     215
6-24 months                   CONTENT          PERU                           12                 0        7     215
6-24 months                   CONTENT          PERU                           12                 1        0     215
6-24 months                   EE               PAKISTAN                       1                  0       57     374
6-24 months                   EE               PAKISTAN                       1                  1       34     374
6-24 months                   EE               PAKISTAN                       2                  0       46     374
6-24 months                   EE               PAKISTAN                       2                  1       26     374
6-24 months                   EE               PAKISTAN                       3                  0       22     374
6-24 months                   EE               PAKISTAN                       3                  1       24     374
6-24 months                   EE               PAKISTAN                       4                  0        9     374
6-24 months                   EE               PAKISTAN                       4                  1       13     374
6-24 months                   EE               PAKISTAN                       5                  0        0     374
6-24 months                   EE               PAKISTAN                       5                  1        0     374
6-24 months                   EE               PAKISTAN                       6                  0        0     374
6-24 months                   EE               PAKISTAN                       6                  1        0     374
6-24 months                   EE               PAKISTAN                       7                  0        0     374
6-24 months                   EE               PAKISTAN                       7                  1        0     374
6-24 months                   EE               PAKISTAN                       8                  0        0     374
6-24 months                   EE               PAKISTAN                       8                  1        0     374
6-24 months                   EE               PAKISTAN                       9                  0        0     374
6-24 months                   EE               PAKISTAN                       9                  1        0     374
6-24 months                   EE               PAKISTAN                       10                 0        0     374
6-24 months                   EE               PAKISTAN                       10                 1        0     374
6-24 months                   EE               PAKISTAN                       11                 0       35     374
6-24 months                   EE               PAKISTAN                       11                 1       24     374
6-24 months                   EE               PAKISTAN                       12                 0       44     374
6-24 months                   EE               PAKISTAN                       12                 1       40     374
6-24 months                   GMS-Nepal        NEPAL                          1                  0        0     590
6-24 months                   GMS-Nepal        NEPAL                          1                  1        0     590
6-24 months                   GMS-Nepal        NEPAL                          2                  0        0     590
6-24 months                   GMS-Nepal        NEPAL                          2                  1        0     590
6-24 months                   GMS-Nepal        NEPAL                          3                  0        0     590
6-24 months                   GMS-Nepal        NEPAL                          3                  1        0     590
6-24 months                   GMS-Nepal        NEPAL                          4                  0        0     590
6-24 months                   GMS-Nepal        NEPAL                          4                  1        1     590
6-24 months                   GMS-Nepal        NEPAL                          5                  0        0     590
6-24 months                   GMS-Nepal        NEPAL                          5                  1        0     590
6-24 months                   GMS-Nepal        NEPAL                          6                  0       58     590
6-24 months                   GMS-Nepal        NEPAL                          6                  1       60     590
6-24 months                   GMS-Nepal        NEPAL                          7                  0      129     590
6-24 months                   GMS-Nepal        NEPAL                          7                  1       96     590
6-24 months                   GMS-Nepal        NEPAL                          8                  0      124     590
6-24 months                   GMS-Nepal        NEPAL                          8                  1      122     590
6-24 months                   GMS-Nepal        NEPAL                          9                  0        0     590
6-24 months                   GMS-Nepal        NEPAL                          9                  1        0     590
6-24 months                   GMS-Nepal        NEPAL                          10                 0        0     590
6-24 months                   GMS-Nepal        NEPAL                          10                 1        0     590
6-24 months                   GMS-Nepal        NEPAL                          11                 0        0     590
6-24 months                   GMS-Nepal        NEPAL                          11                 1        0     590
6-24 months                   GMS-Nepal        NEPAL                          12                 0        0     590
6-24 months                   GMS-Nepal        NEPAL                          12                 1        0     590
6-24 months                   Guatemala BSC    GUATEMALA                      1                  0       13     277
6-24 months                   Guatemala BSC    GUATEMALA                      1                  1        2     277
6-24 months                   Guatemala BSC    GUATEMALA                      2                  0       17     277
6-24 months                   Guatemala BSC    GUATEMALA                      2                  1        1     277
6-24 months                   Guatemala BSC    GUATEMALA                      3                  0       17     277
6-24 months                   Guatemala BSC    GUATEMALA                      3                  1        2     277
6-24 months                   Guatemala BSC    GUATEMALA                      4                  0       20     277
6-24 months                   Guatemala BSC    GUATEMALA                      4                  1        3     277
6-24 months                   Guatemala BSC    GUATEMALA                      5                  0       29     277
6-24 months                   Guatemala BSC    GUATEMALA                      5                  1        2     277
6-24 months                   Guatemala BSC    GUATEMALA                      6                  0       35     277
6-24 months                   Guatemala BSC    GUATEMALA                      6                  1        2     277
6-24 months                   Guatemala BSC    GUATEMALA                      7                  0       23     277
6-24 months                   Guatemala BSC    GUATEMALA                      7                  1        1     277
6-24 months                   Guatemala BSC    GUATEMALA                      8                  0       16     277
6-24 months                   Guatemala BSC    GUATEMALA                      8                  1        3     277
6-24 months                   Guatemala BSC    GUATEMALA                      9                  0       28     277
6-24 months                   Guatemala BSC    GUATEMALA                      9                  1        4     277
6-24 months                   Guatemala BSC    GUATEMALA                      10                 0       23     277
6-24 months                   Guatemala BSC    GUATEMALA                      10                 1        1     277
6-24 months                   Guatemala BSC    GUATEMALA                      11                 0       24     277
6-24 months                   Guatemala BSC    GUATEMALA                      11                 1        2     277
6-24 months                   Guatemala BSC    GUATEMALA                      12                 0        9     277
6-24 months                   Guatemala BSC    GUATEMALA                      12                 1        0     277
6-24 months                   iLiNS-Zinc       BURKINA FASO                   1                  0      184    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   1                  1       55    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   2                  0      159    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   2                  1       49    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   3                  0      167    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   3                  1       47    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   4                  0      144    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   4                  1       39    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   5                  0      197    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   5                  1       60    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   6                  0      279    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   6                  1       87    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   7                  0      320    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   7                  1       91    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   8                  0      271    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   8                  1       91    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   9                  0      223    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   9                  1       72    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   10                 0      303    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   10                 1       69    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   11                 0      143    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   11                 1       54    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   12                 0      119    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   12                 1       43    3266
6-24 months                   IRC              INDIA                          1                  0       23     410
6-24 months                   IRC              INDIA                          1                  1       12     410
6-24 months                   IRC              INDIA                          2                  0       21     410
6-24 months                   IRC              INDIA                          2                  1        9     410
6-24 months                   IRC              INDIA                          3                  0       23     410
6-24 months                   IRC              INDIA                          3                  1        6     410
6-24 months                   IRC              INDIA                          4                  0       15     410
6-24 months                   IRC              INDIA                          4                  1        9     410
6-24 months                   IRC              INDIA                          5                  0       12     410
6-24 months                   IRC              INDIA                          5                  1        9     410
6-24 months                   IRC              INDIA                          6                  0       24     410
6-24 months                   IRC              INDIA                          6                  1       11     410
6-24 months                   IRC              INDIA                          7                  0       23     410
6-24 months                   IRC              INDIA                          7                  1       13     410
6-24 months                   IRC              INDIA                          8                  0       27     410
6-24 months                   IRC              INDIA                          8                  1       14     410
6-24 months                   IRC              INDIA                          9                  0       20     410
6-24 months                   IRC              INDIA                          9                  1       10     410
6-24 months                   IRC              INDIA                          10                 0       23     410
6-24 months                   IRC              INDIA                          10                 1       16     410
6-24 months                   IRC              INDIA                          11                 0       33     410
6-24 months                   IRC              INDIA                          11                 1        8     410
6-24 months                   IRC              INDIA                          12                 0       39     410
6-24 months                   IRC              INDIA                          12                 1       10     410
6-24 months                   Keneba           GAMBIA                         1                  0      147    2738
6-24 months                   Keneba           GAMBIA                         1                  1       77    2738
6-24 months                   Keneba           GAMBIA                         2                  0      159    2738
6-24 months                   Keneba           GAMBIA                         2                  1      105    2738
6-24 months                   Keneba           GAMBIA                         3                  0      142    2738
6-24 months                   Keneba           GAMBIA                         3                  1       78    2738
6-24 months                   Keneba           GAMBIA                         4                  0      207    2738
6-24 months                   Keneba           GAMBIA                         4                  1       86    2738
6-24 months                   Keneba           GAMBIA                         5                  0      225    2738
6-24 months                   Keneba           GAMBIA                         5                  1       69    2738
6-24 months                   Keneba           GAMBIA                         6                  0      183    2738
6-24 months                   Keneba           GAMBIA                         6                  1       40    2738
6-24 months                   Keneba           GAMBIA                         7                  0      116    2738
6-24 months                   Keneba           GAMBIA                         7                  1       59    2738
6-24 months                   Keneba           GAMBIA                         8                  0      112    2738
6-24 months                   Keneba           GAMBIA                         8                  1       56    2738
6-24 months                   Keneba           GAMBIA                         9                  0      120    2738
6-24 months                   Keneba           GAMBIA                         9                  1       66    2738
6-24 months                   Keneba           GAMBIA                         10                 0      137    2738
6-24 months                   Keneba           GAMBIA                         10                 1       74    2738
6-24 months                   Keneba           GAMBIA                         11                 0      192    2738
6-24 months                   Keneba           GAMBIA                         11                 1       95    2738
6-24 months                   Keneba           GAMBIA                         12                 0      131    2738
6-24 months                   Keneba           GAMBIA                         12                 1       62    2738
6-24 months                   LCNI-5           MALAWI                         1                  0       49     826
6-24 months                   LCNI-5           MALAWI                         1                  1        6     826
6-24 months                   LCNI-5           MALAWI                         2                  0      105     826
6-24 months                   LCNI-5           MALAWI                         2                  1        9     826
6-24 months                   LCNI-5           MALAWI                         3                  0       84     826
6-24 months                   LCNI-5           MALAWI                         3                  1       10     826
6-24 months                   LCNI-5           MALAWI                         4                  0      101     826
6-24 months                   LCNI-5           MALAWI                         4                  1        6     826
6-24 months                   LCNI-5           MALAWI                         5                  0      104     826
6-24 months                   LCNI-5           MALAWI                         5                  1        5     826
6-24 months                   LCNI-5           MALAWI                         6                  0       80     826
6-24 months                   LCNI-5           MALAWI                         6                  1       10     826
6-24 months                   LCNI-5           MALAWI                         7                  0       67     826
6-24 months                   LCNI-5           MALAWI                         7                  1        4     826
6-24 months                   LCNI-5           MALAWI                         8                  0       38     826
6-24 months                   LCNI-5           MALAWI                         8                  1        3     826
6-24 months                   LCNI-5           MALAWI                         9                  0       26     826
6-24 months                   LCNI-5           MALAWI                         9                  1        3     826
6-24 months                   LCNI-5           MALAWI                         10                 0       35     826
6-24 months                   LCNI-5           MALAWI                         10                 1        0     826
6-24 months                   LCNI-5           MALAWI                         11                 0       41     826
6-24 months                   LCNI-5           MALAWI                         11                 1        6     826
6-24 months                   LCNI-5           MALAWI                         12                 0       32     826
6-24 months                   LCNI-5           MALAWI                         12                 1        2     826
6-24 months                   MAL-ED           BANGLADESH                     1                  0       18     240
6-24 months                   MAL-ED           BANGLADESH                     1                  1        2     240
6-24 months                   MAL-ED           BANGLADESH                     2                  0       14     240
6-24 months                   MAL-ED           BANGLADESH                     2                  1        6     240
6-24 months                   MAL-ED           BANGLADESH                     3                  0       14     240
6-24 months                   MAL-ED           BANGLADESH                     3                  1        9     240
6-24 months                   MAL-ED           BANGLADESH                     4                  0       21     240
6-24 months                   MAL-ED           BANGLADESH                     4                  1        3     240
6-24 months                   MAL-ED           BANGLADESH                     5                  0       13     240
6-24 months                   MAL-ED           BANGLADESH                     5                  1        4     240
6-24 months                   MAL-ED           BANGLADESH                     6                  0       11     240
6-24 months                   MAL-ED           BANGLADESH                     6                  1        1     240
6-24 months                   MAL-ED           BANGLADESH                     7                  0       14     240
6-24 months                   MAL-ED           BANGLADESH                     7                  1        3     240
6-24 months                   MAL-ED           BANGLADESH                     8                  0       24     240
6-24 months                   MAL-ED           BANGLADESH                     8                  1        1     240
6-24 months                   MAL-ED           BANGLADESH                     9                  0       11     240
6-24 months                   MAL-ED           BANGLADESH                     9                  1        9     240
6-24 months                   MAL-ED           BANGLADESH                     10                 0       20     240
6-24 months                   MAL-ED           BANGLADESH                     10                 1        1     240
6-24 months                   MAL-ED           BANGLADESH                     11                 0       12     240
6-24 months                   MAL-ED           BANGLADESH                     11                 1        2     240
6-24 months                   MAL-ED           BANGLADESH                     12                 0       25     240
6-24 months                   MAL-ED           BANGLADESH                     12                 1        2     240
6-24 months                   MAL-ED           BRAZIL                         1                  0       14     207
6-24 months                   MAL-ED           BRAZIL                         1                  1        0     207
6-24 months                   MAL-ED           BRAZIL                         2                  0       22     207
6-24 months                   MAL-ED           BRAZIL                         2                  1        1     207
6-24 months                   MAL-ED           BRAZIL                         3                  0       14     207
6-24 months                   MAL-ED           BRAZIL                         3                  1        1     207
6-24 months                   MAL-ED           BRAZIL                         4                  0       12     207
6-24 months                   MAL-ED           BRAZIL                         4                  1        0     207
6-24 months                   MAL-ED           BRAZIL                         5                  0       17     207
6-24 months                   MAL-ED           BRAZIL                         5                  1        0     207
6-24 months                   MAL-ED           BRAZIL                         6                  0       14     207
6-24 months                   MAL-ED           BRAZIL                         6                  1        0     207
6-24 months                   MAL-ED           BRAZIL                         7                  0       16     207
6-24 months                   MAL-ED           BRAZIL                         7                  1        0     207
6-24 months                   MAL-ED           BRAZIL                         8                  0       14     207
6-24 months                   MAL-ED           BRAZIL                         8                  1        1     207
6-24 months                   MAL-ED           BRAZIL                         9                  0       20     207
6-24 months                   MAL-ED           BRAZIL                         9                  1        1     207
6-24 months                   MAL-ED           BRAZIL                         10                 0       24     207
6-24 months                   MAL-ED           BRAZIL                         10                 1        1     207
6-24 months                   MAL-ED           BRAZIL                         11                 0       17     207
6-24 months                   MAL-ED           BRAZIL                         11                 1        0     207
6-24 months                   MAL-ED           BRAZIL                         12                 0       17     207
6-24 months                   MAL-ED           BRAZIL                         12                 1        1     207
6-24 months                   MAL-ED           INDIA                          1                  0       11     235
6-24 months                   MAL-ED           INDIA                          1                  1        4     235
6-24 months                   MAL-ED           INDIA                          2                  0       19     235
6-24 months                   MAL-ED           INDIA                          2                  1        4     235
6-24 months                   MAL-ED           INDIA                          3                  0       20     235
6-24 months                   MAL-ED           INDIA                          3                  1        1     235
6-24 months                   MAL-ED           INDIA                          4                  0       11     235
6-24 months                   MAL-ED           INDIA                          4                  1        7     235
6-24 months                   MAL-ED           INDIA                          5                  0        4     235
6-24 months                   MAL-ED           INDIA                          5                  1        3     235
6-24 months                   MAL-ED           INDIA                          6                  0       15     235
6-24 months                   MAL-ED           INDIA                          6                  1        3     235
6-24 months                   MAL-ED           INDIA                          7                  0       13     235
6-24 months                   MAL-ED           INDIA                          7                  1        8     235
6-24 months                   MAL-ED           INDIA                          8                  0       13     235
6-24 months                   MAL-ED           INDIA                          8                  1        8     235
6-24 months                   MAL-ED           INDIA                          9                  0       14     235
6-24 months                   MAL-ED           INDIA                          9                  1        7     235
6-24 months                   MAL-ED           INDIA                          10                 0       19     235
6-24 months                   MAL-ED           INDIA                          10                 1        5     235
6-24 months                   MAL-ED           INDIA                          11                 0       16     235
6-24 months                   MAL-ED           INDIA                          11                 1        8     235
6-24 months                   MAL-ED           INDIA                          12                 0       16     235
6-24 months                   MAL-ED           INDIA                          12                 1        6     235
6-24 months                   MAL-ED           NEPAL                          1                  0       16     235
6-24 months                   MAL-ED           NEPAL                          1                  1        4     235
6-24 months                   MAL-ED           NEPAL                          2                  0       17     235
6-24 months                   MAL-ED           NEPAL                          2                  1        3     235
6-24 months                   MAL-ED           NEPAL                          3                  0       19     235
6-24 months                   MAL-ED           NEPAL                          3                  1        1     235
6-24 months                   MAL-ED           NEPAL                          4                  0       15     235
6-24 months                   MAL-ED           NEPAL                          4                  1        5     235
6-24 months                   MAL-ED           NEPAL                          5                  0       14     235
6-24 months                   MAL-ED           NEPAL                          5                  1        4     235
6-24 months                   MAL-ED           NEPAL                          6                  0       13     235
6-24 months                   MAL-ED           NEPAL                          6                  1        7     235
6-24 months                   MAL-ED           NEPAL                          7                  0       18     235
6-24 months                   MAL-ED           NEPAL                          7                  1        1     235
6-24 months                   MAL-ED           NEPAL                          8                  0       14     235
6-24 months                   MAL-ED           NEPAL                          8                  1        5     235
6-24 months                   MAL-ED           NEPAL                          9                  0       19     235
6-24 months                   MAL-ED           NEPAL                          9                  1        0     235
6-24 months                   MAL-ED           NEPAL                          10                 0       19     235
6-24 months                   MAL-ED           NEPAL                          10                 1        1     235
6-24 months                   MAL-ED           NEPAL                          11                 0       18     235
6-24 months                   MAL-ED           NEPAL                          11                 1        2     235
6-24 months                   MAL-ED           NEPAL                          12                 0       17     235
6-24 months                   MAL-ED           NEPAL                          12                 1        3     235
6-24 months                   MAL-ED           PERU                           1                  0       29     270
6-24 months                   MAL-ED           PERU                           1                  1        4     270
6-24 months                   MAL-ED           PERU                           2                  0       24     270
6-24 months                   MAL-ED           PERU                           2                  1        2     270
6-24 months                   MAL-ED           PERU                           3                  0       19     270
6-24 months                   MAL-ED           PERU                           3                  1        3     270
6-24 months                   MAL-ED           PERU                           4                  0       17     270
6-24 months                   MAL-ED           PERU                           4                  1        1     270
6-24 months                   MAL-ED           PERU                           5                  0       21     270
6-24 months                   MAL-ED           PERU                           5                  1        1     270
6-24 months                   MAL-ED           PERU                           6                  0       18     270
6-24 months                   MAL-ED           PERU                           6                  1        2     270
6-24 months                   MAL-ED           PERU                           7                  0       22     270
6-24 months                   MAL-ED           PERU                           7                  1        0     270
6-24 months                   MAL-ED           PERU                           8                  0       15     270
6-24 months                   MAL-ED           PERU                           8                  1        1     270
6-24 months                   MAL-ED           PERU                           9                  0       20     270
6-24 months                   MAL-ED           PERU                           9                  1        2     270
6-24 months                   MAL-ED           PERU                           10                 0       19     270
6-24 months                   MAL-ED           PERU                           10                 1        0     270
6-24 months                   MAL-ED           PERU                           11                 0       32     270
6-24 months                   MAL-ED           PERU                           11                 1        2     270
6-24 months                   MAL-ED           PERU                           12                 0       16     270
6-24 months                   MAL-ED           PERU                           12                 1        0     270
6-24 months                   MAL-ED           SOUTH AFRICA                   1                  0       22     259
6-24 months                   MAL-ED           SOUTH AFRICA                   1                  1        9     259
6-24 months                   MAL-ED           SOUTH AFRICA                   2                  0       30     259
6-24 months                   MAL-ED           SOUTH AFRICA                   2                  1        4     259
6-24 months                   MAL-ED           SOUTH AFRICA                   3                  0       16     259
6-24 months                   MAL-ED           SOUTH AFRICA                   3                  1        1     259
6-24 months                   MAL-ED           SOUTH AFRICA                   4                  0       11     259
6-24 months                   MAL-ED           SOUTH AFRICA                   4                  1        1     259
6-24 months                   MAL-ED           SOUTH AFRICA                   5                  0        9     259
6-24 months                   MAL-ED           SOUTH AFRICA                   5                  1        2     259
6-24 months                   MAL-ED           SOUTH AFRICA                   6                  0       16     259
6-24 months                   MAL-ED           SOUTH AFRICA                   6                  1        2     259
6-24 months                   MAL-ED           SOUTH AFRICA                   7                  0       23     259
6-24 months                   MAL-ED           SOUTH AFRICA                   7                  1        2     259
6-24 months                   MAL-ED           SOUTH AFRICA                   8                  0        8     259
6-24 months                   MAL-ED           SOUTH AFRICA                   8                  1        0     259
6-24 months                   MAL-ED           SOUTH AFRICA                   9                  0       16     259
6-24 months                   MAL-ED           SOUTH AFRICA                   9                  1        2     259
6-24 months                   MAL-ED           SOUTH AFRICA                   10                 0       18     259
6-24 months                   MAL-ED           SOUTH AFRICA                   10                 1        5     259
6-24 months                   MAL-ED           SOUTH AFRICA                   11                 0       27     259
6-24 months                   MAL-ED           SOUTH AFRICA                   11                 1        4     259
6-24 months                   MAL-ED           SOUTH AFRICA                   12                 0       26     259
6-24 months                   MAL-ED           SOUTH AFRICA                   12                 1        5     259
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       12     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        7     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  0       22     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  1        5     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  0       20     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  1        3     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  0        9     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  1        1     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  0       14     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  1        1     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  0       13     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  1        3     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  0       28     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  1        0     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  0        9     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  1        3     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  0       18     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  1        0     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 0       19     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 1        0     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 0       25     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 1        3     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 0       28     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 1        2     245
6-24 months                   NIH-Birth        BANGLADESH                     1                  0       30     542
6-24 months                   NIH-Birth        BANGLADESH                     1                  1       22     542
6-24 months                   NIH-Birth        BANGLADESH                     2                  0       33     542
6-24 months                   NIH-Birth        BANGLADESH                     2                  1       17     542
6-24 months                   NIH-Birth        BANGLADESH                     3                  0       35     542
6-24 months                   NIH-Birth        BANGLADESH                     3                  1       16     542
6-24 months                   NIH-Birth        BANGLADESH                     4                  0       34     542
6-24 months                   NIH-Birth        BANGLADESH                     4                  1       11     542
6-24 months                   NIH-Birth        BANGLADESH                     5                  0       32     542
6-24 months                   NIH-Birth        BANGLADESH                     5                  1       10     542
6-24 months                   NIH-Birth        BANGLADESH                     6                  0       30     542
6-24 months                   NIH-Birth        BANGLADESH                     6                  1       10     542
6-24 months                   NIH-Birth        BANGLADESH                     7                  0       31     542
6-24 months                   NIH-Birth        BANGLADESH                     7                  1       14     542
6-24 months                   NIH-Birth        BANGLADESH                     8                  0       25     542
6-24 months                   NIH-Birth        BANGLADESH                     8                  1       12     542
6-24 months                   NIH-Birth        BANGLADESH                     9                  0       22     542
6-24 months                   NIH-Birth        BANGLADESH                     9                  1        7     542
6-24 months                   NIH-Birth        BANGLADESH                     10                 0       41     542
6-24 months                   NIH-Birth        BANGLADESH                     10                 1       12     542
6-24 months                   NIH-Birth        BANGLADESH                     11                 0       35     542
6-24 months                   NIH-Birth        BANGLADESH                     11                 1       13     542
6-24 months                   NIH-Birth        BANGLADESH                     12                 0       35     542
6-24 months                   NIH-Birth        BANGLADESH                     12                 1       15     542
6-24 months                   PROBIT           BELARUS                        1                  0     1138   16598
6-24 months                   PROBIT           BELARUS                        1                  1        9   16598
6-24 months                   PROBIT           BELARUS                        2                  0      981   16598
6-24 months                   PROBIT           BELARUS                        2                  1        7   16598
6-24 months                   PROBIT           BELARUS                        3                  0     1160   16598
6-24 months                   PROBIT           BELARUS                        3                  1        9   16598
6-24 months                   PROBIT           BELARUS                        4                  0     1111   16598
6-24 months                   PROBIT           BELARUS                        4                  1        7   16598
6-24 months                   PROBIT           BELARUS                        5                  0     1125   16598
6-24 months                   PROBIT           BELARUS                        5                  1        8   16598
6-24 months                   PROBIT           BELARUS                        6                  0     1185   16598
6-24 months                   PROBIT           BELARUS                        6                  1        6   16598
6-24 months                   PROBIT           BELARUS                        7                  0     1448   16598
6-24 months                   PROBIT           BELARUS                        7                  1        8   16598
6-24 months                   PROBIT           BELARUS                        8                  0     1578   16598
6-24 months                   PROBIT           BELARUS                        8                  1        7   16598
6-24 months                   PROBIT           BELARUS                        9                  0     1548   16598
6-24 months                   PROBIT           BELARUS                        9                  1       13   16598
6-24 months                   PROBIT           BELARUS                        10                 0     1744   16598
6-24 months                   PROBIT           BELARUS                        10                 1       24   16598
6-24 months                   PROBIT           BELARUS                        11                 0     1662   16598
6-24 months                   PROBIT           BELARUS                        11                 1       19   16598
6-24 months                   PROBIT           BELARUS                        12                 0     1779   16598
6-24 months                   PROBIT           BELARUS                        12                 1       22   16598
6-24 months                   ResPak           PAKISTAN                       1                  0        1     236
6-24 months                   ResPak           PAKISTAN                       1                  1        1     236
6-24 months                   ResPak           PAKISTAN                       2                  0       10     236
6-24 months                   ResPak           PAKISTAN                       2                  1        0     236
6-24 months                   ResPak           PAKISTAN                       3                  0        8     236
6-24 months                   ResPak           PAKISTAN                       3                  1        2     236
6-24 months                   ResPak           PAKISTAN                       4                  0       14     236
6-24 months                   ResPak           PAKISTAN                       4                  1        7     236
6-24 months                   ResPak           PAKISTAN                       5                  0       13     236
6-24 months                   ResPak           PAKISTAN                       5                  1       13     236
6-24 months                   ResPak           PAKISTAN                       6                  0       22     236
6-24 months                   ResPak           PAKISTAN                       6                  1       17     236
6-24 months                   ResPak           PAKISTAN                       7                  0       25     236
6-24 months                   ResPak           PAKISTAN                       7                  1       16     236
6-24 months                   ResPak           PAKISTAN                       8                  0       15     236
6-24 months                   ResPak           PAKISTAN                       8                  1       10     236
6-24 months                   ResPak           PAKISTAN                       9                  0       27     236
6-24 months                   ResPak           PAKISTAN                       9                  1       10     236
6-24 months                   ResPak           PAKISTAN                       10                 0        9     236
6-24 months                   ResPak           PAKISTAN                       10                 1        6     236
6-24 months                   ResPak           PAKISTAN                       11                 0        4     236
6-24 months                   ResPak           PAKISTAN                       11                 1        3     236
6-24 months                   ResPak           PAKISTAN                       12                 0        2     236
6-24 months                   ResPak           PAKISTAN                       12                 1        1     236
6-24 months                   SAS-CompFeed     INDIA                          1                  0       67    1389
6-24 months                   SAS-CompFeed     INDIA                          1                  1       29    1389
6-24 months                   SAS-CompFeed     INDIA                          2                  0       63    1389
6-24 months                   SAS-CompFeed     INDIA                          2                  1       19    1389
6-24 months                   SAS-CompFeed     INDIA                          3                  0       59    1389
6-24 months                   SAS-CompFeed     INDIA                          3                  1       23    1389
6-24 months                   SAS-CompFeed     INDIA                          4                  0       55    1389
6-24 months                   SAS-CompFeed     INDIA                          4                  1       25    1389
6-24 months                   SAS-CompFeed     INDIA                          5                  0       55    1389
6-24 months                   SAS-CompFeed     INDIA                          5                  1       26    1389
6-24 months                   SAS-CompFeed     INDIA                          6                  0       74    1389
6-24 months                   SAS-CompFeed     INDIA                          6                  1       33    1389
6-24 months                   SAS-CompFeed     INDIA                          7                  0       80    1389
6-24 months                   SAS-CompFeed     INDIA                          7                  1       37    1389
6-24 months                   SAS-CompFeed     INDIA                          8                  0       99    1389
6-24 months                   SAS-CompFeed     INDIA                          8                  1       55    1389
6-24 months                   SAS-CompFeed     INDIA                          9                  0      113    1389
6-24 months                   SAS-CompFeed     INDIA                          9                  1       59    1389
6-24 months                   SAS-CompFeed     INDIA                          10                 0      105    1389
6-24 months                   SAS-CompFeed     INDIA                          10                 1       45    1389
6-24 months                   SAS-CompFeed     INDIA                          11                 0       88    1389
6-24 months                   SAS-CompFeed     INDIA                          11                 1       43    1389
6-24 months                   SAS-CompFeed     INDIA                          12                 0      106    1389
6-24 months                   SAS-CompFeed     INDIA                          12                 1       31    1389
6-24 months                   SAS-FoodSuppl    INDIA                          1                  0       37     402
6-24 months                   SAS-FoodSuppl    INDIA                          1                  1       25     402
6-24 months                   SAS-FoodSuppl    INDIA                          2                  0       24     402
6-24 months                   SAS-FoodSuppl    INDIA                          2                  1       15     402
6-24 months                   SAS-FoodSuppl    INDIA                          3                  0       25     402
6-24 months                   SAS-FoodSuppl    INDIA                          3                  1       12     402
6-24 months                   SAS-FoodSuppl    INDIA                          4                  0       18     402
6-24 months                   SAS-FoodSuppl    INDIA                          4                  1       11     402
6-24 months                   SAS-FoodSuppl    INDIA                          5                  0       18     402
6-24 months                   SAS-FoodSuppl    INDIA                          5                  1       13     402
6-24 months                   SAS-FoodSuppl    INDIA                          6                  0       21     402
6-24 months                   SAS-FoodSuppl    INDIA                          6                  1       12     402
6-24 months                   SAS-FoodSuppl    INDIA                          7                  0       13     402
6-24 months                   SAS-FoodSuppl    INDIA                          7                  1        5     402
6-24 months                   SAS-FoodSuppl    INDIA                          8                  0        0     402
6-24 months                   SAS-FoodSuppl    INDIA                          8                  1        0     402
6-24 months                   SAS-FoodSuppl    INDIA                          9                  0        6     402
6-24 months                   SAS-FoodSuppl    INDIA                          9                  1        6     402
6-24 months                   SAS-FoodSuppl    INDIA                          10                 0       23     402
6-24 months                   SAS-FoodSuppl    INDIA                          10                 1        6     402
6-24 months                   SAS-FoodSuppl    INDIA                          11                 0       30     402
6-24 months                   SAS-FoodSuppl    INDIA                          11                 1       18     402
6-24 months                   SAS-FoodSuppl    INDIA                          12                 0       44     402
6-24 months                   SAS-FoodSuppl    INDIA                          12                 1       20     402
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      167    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       32    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0      108    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1       25    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0      124    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1       26    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0      116    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1       22    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0      142    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1       17    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0      120    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1       19    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0      117    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1       25    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0      148    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1       28    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0      164    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1       35    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0      167    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1       29    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0      158    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       33    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0      163    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1       33    2018
6-24 months                   ZVITAMBO         ZIMBABWE                       1                  0      957   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       1                  1      107   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       2                  0      739   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       2                  1       78   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       3                  0      772   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       3                  1      104   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       4                  0      749   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       4                  1       69   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       5                  0      688   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       5                  1       84   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       6                  0      804   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       6                  1       81   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       7                  0      826   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       7                  1       78   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       8                  0      846   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       8                  1       86   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       9                  0      956   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       9                  1       68   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       10                 0      718   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       10                 1       80   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       11                 0      809   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       11                 1       91   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       12                 0      914   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       12                 1      111   10815


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/5746f82b-4b08-4c59-955e-c0043ce1c7b9/f3fd1643-b888-4b05-b78e-0e050fc46b37/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5746f82b-4b08-4c59-955e-c0043ce1c7b9/f3fd1643-b888-4b05-b78e-0e050fc46b37/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5746f82b-4b08-4c59-955e-c0043ce1c7b9/f3fd1643-b888-4b05-b78e-0e050fc46b37/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5746f82b-4b08-4c59-955e-c0043ce1c7b9/f3fd1643-b888-4b05-b78e-0e050fc46b37/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    NA                0.5357143    0.3507366   0.7206919
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          2                    NA                0.4347826    0.2319121   0.6376531
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          3                    NA                0.4583333    0.2587197   0.6579469
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          4                    NA                0.2758621    0.1129712   0.4387529
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          5                    NA                0.3720930    0.2274231   0.5167629
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          6                    NA                0.4000000    0.2374786   0.5625214
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          7                    NA                0.3939394    0.2270016   0.5608772
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          8                    NA                0.4634146    0.3105696   0.6162597
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          9                    NA                0.6086957    0.4089706   0.8084207
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          10                   NA                0.3684211    0.1512269   0.5856152
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          11                   NA                0.5121951    0.3589849   0.6654054
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          12                   NA                0.6206897    0.4438521   0.7975272
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0913043    0.0521520   0.1304567
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   2                    NA                0.0824742    0.0482164   0.1167321
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   3                    NA                0.1067961    0.0708294   0.1427628
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   4                    NA                0.0584795   -0.0147508   0.1317099
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   5                    NA                0.0909091    0.0333445   0.1484737
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   6                    NA                0.0888252    0.0345812   0.1430692
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   7                    NA                0.0739796    0.0489020   0.0990572
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   8                    NA                0.0887574    0.0275400   0.1499748
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   9                    NA                0.0882353    0.0483938   0.1280768
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   10                   NA                0.0747922    0.0269183   0.1226662
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   11                   NA                0.0909091    0.0397598   0.1420584
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   12                   NA                0.0939597    0.0465824   0.1413370
0-24 months (no birth wast)   IRC              INDIA                          1                    NA                0.4857143    0.3199319   0.6514966
0-24 months (no birth wast)   IRC              INDIA                          2                    NA                0.4666667    0.2879267   0.6454067
0-24 months (no birth wast)   IRC              INDIA                          3                    NA                0.4827586    0.3006660   0.6648512
0-24 months (no birth wast)   IRC              INDIA                          4                    NA                0.4166667    0.2191850   0.6141483
0-24 months (no birth wast)   IRC              INDIA                          5                    NA                0.5714286    0.3595131   0.7833440
0-24 months (no birth wast)   IRC              INDIA                          6                    NA                0.5882353    0.4226048   0.7538658
0-24 months (no birth wast)   IRC              INDIA                          7                    NA                0.5833333    0.4220902   0.7445765
0-24 months (no birth wast)   IRC              INDIA                          8                    NA                0.5365854    0.3837612   0.6894095
0-24 months (no birth wast)   IRC              INDIA                          9                    NA                0.5333333    0.3545933   0.7120733
0-24 months (no birth wast)   IRC              INDIA                          10                   NA                0.5641026    0.4082842   0.7199209
0-24 months (no birth wast)   IRC              INDIA                          11                   NA                0.4634146    0.3105905   0.6162388
0-24 months (no birth wast)   IRC              INDIA                          12                   NA                0.5306122    0.3907063   0.6705182
0-24 months (no birth wast)   Keneba           GAMBIA                         1                    NA                0.3613445    0.3003024   0.4223866
0-24 months (no birth wast)   Keneba           GAMBIA                         2                    NA                0.4072727    0.3491926   0.4653529
0-24 months (no birth wast)   Keneba           GAMBIA                         3                    NA                0.3836207    0.3210379   0.4462035
0-24 months (no birth wast)   Keneba           GAMBIA                         4                    NA                0.3139159    0.2621623   0.3656694
0-24 months (no birth wast)   Keneba           GAMBIA                         5                    NA                0.2532051    0.2049456   0.3014647
0-24 months (no birth wast)   Keneba           GAMBIA                         6                    NA                0.2256637    0.1711551   0.2801723
0-24 months (no birth wast)   Keneba           GAMBIA                         7                    NA                0.3666667    0.2962558   0.4370775
0-24 months (no birth wast)   Keneba           GAMBIA                         8                    NA                0.3371429    0.2670907   0.4071951
0-24 months (no birth wast)   Keneba           GAMBIA                         9                    NA                0.3906250    0.3216017   0.4596483
0-24 months (no birth wast)   Keneba           GAMBIA                         10                   NA                0.3856502    0.3217539   0.4495466
0-24 months (no birth wast)   Keneba           GAMBIA                         11                   NA                0.3478261    0.2938314   0.4018208
0-24 months (no birth wast)   Keneba           GAMBIA                         12                   NA                0.3333333    0.2691042   0.3975625
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     1                    NA                0.3906250    0.2709946   0.5102554
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     2                    NA                0.2931034    0.1758614   0.4103455
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     3                    NA                0.3392857    0.2151763   0.4633951
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     4                    NA                0.2800000    0.1554426   0.4045574
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     5                    NA                0.2340426    0.1128963   0.3551888
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     6                    NA                0.2727273    0.1410243   0.4044303
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     7                    NA                0.3404255    0.2048432   0.4760079
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     8                    NA                0.3170732    0.1745177   0.4596287
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     9                    NA                0.2424242    0.0960876   0.3887609
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     10                   NA                0.2068966    0.1025600   0.3112331
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     11                   NA                0.2941176    0.1689619   0.4192734
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     12                   NA                0.3018868    0.1781907   0.4255829
0-24 months (no birth wast)   PROBIT           BELARUS                        1                    NA                0.0608622    0.0386180   0.0831064
0-24 months (no birth wast)   PROBIT           BELARUS                        2                    NA                0.0617530    0.0437199   0.0797861
0-24 months (no birth wast)   PROBIT           BELARUS                        3                    NA                0.0666667    0.0478733   0.0854600
0-24 months (no birth wast)   PROBIT           BELARUS                        4                    NA                0.0593446    0.0365016   0.0821875
0-24 months (no birth wast)   PROBIT           BELARUS                        5                    NA                0.0686957    0.0450066   0.0923847
0-24 months (no birth wast)   PROBIT           BELARUS                        6                    NA                0.0778689    0.0563707   0.0993670
0-24 months (no birth wast)   PROBIT           BELARUS                        7                    NA                0.0624152    0.0468291   0.0780012
0-24 months (no birth wast)   PROBIT           BELARUS                        8                    NA                0.0786378    0.0615509   0.0957246
0-24 months (no birth wast)   PROBIT           BELARUS                        9                    NA                0.0648206    0.0506279   0.0790134
0-24 months (no birth wast)   PROBIT           BELARUS                        10                   NA                0.0665927    0.0448588   0.0883266
0-24 months (no birth wast)   PROBIT           BELARUS                        11                   NA                0.0733568    0.0517585   0.0949551
0-24 months (no birth wast)   PROBIT           BELARUS                        12                   NA                0.0696272    0.0545593   0.0846951
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                    NA                0.3831776    0.2839910   0.4823642
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          2                    NA                0.2717391    0.1689336   0.3745446
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          3                    NA                0.3295455    0.2231786   0.4359123
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          4                    NA                0.3690476    0.2686959   0.4693993
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          5                    NA                0.4252874    0.3295151   0.5210596
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          6                    NA                0.3859649    0.3154439   0.4564859
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          7                    NA                0.3145161    0.2324843   0.3965479
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          8                    NA                0.3809524    0.2944997   0.4674051
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          9                    NA                0.3641304    0.2909517   0.4373091
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          10                   NA                0.3619632    0.2407299   0.4831965
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          11                   NA                0.4236111    0.3746959   0.4725263
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          12                   NA                0.3129252    0.1998174   0.4260329
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2294372    0.1752035   0.2836709
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2038217    0.1407957   0.2668477
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2568306    0.1935193   0.3201419
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1739130    0.1153525   0.2324736
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1356784    0.0880895   0.1832673
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1445087    0.0921039   0.1969135
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1802326    0.1227764   0.2376888
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.2051282    0.1484413   0.2618152
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.2149123    0.1615835   0.2682410
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1710526    0.1221649   0.2199404
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.2256637    0.1711532   0.2801743
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.2251082    0.1712379   0.2789785
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    NA                0.1061747    0.0896055   0.1227439
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       2                    NA                0.1036168    0.0849406   0.1222930
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       3                    NA                0.1203953    0.1012763   0.1395143
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       4                    NA                0.0892157    0.0717216   0.1067098
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       5                    NA                0.0981964    0.0797334   0.1166594
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       6                    NA                0.0944742    0.0773592   0.1115891
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       7                    NA                0.0993031    0.0820024   0.1166038
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       8                    NA                0.1050000    0.0876548   0.1223452
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       9                    NA                0.0810811    0.0662139   0.0959482
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       10                   NA                0.1000972    0.0817586   0.1184357
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       11                   NA                0.1105169    0.0921705   0.1288633
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       12                   NA                0.1154157    0.0976234   0.1332079
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                    NA                0.3703704    0.1879606   0.5527802
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          2                    NA                0.2857143    0.0922229   0.4792057
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          3                    NA                0.3913043    0.1915653   0.5910434
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          4                    NA                0.2222222    0.0651827   0.3792618
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          5                    NA                0.3170732    0.1744322   0.4597141
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          6                    NA                0.2727273    0.1205586   0.4248960
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          7                    NA                0.3125000    0.1516742   0.4733258
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          8                    NA                0.2564103    0.1191732   0.3936473
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          9                    NA                0.2631579    0.0648737   0.4614421
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          10                   NA                0.3157895    0.1064812   0.5250977
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          11                   NA                0.3250000    0.1796440   0.4703560
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          12                   NA                0.3793103    0.2024604   0.5561603
0-6 months (no birth wast)    Keneba           GAMBIA                         1                    NA                0.0809524    0.0440536   0.1178511
0-6 months (no birth wast)    Keneba           GAMBIA                         2                    NA                0.1061224    0.0675482   0.1446967
0-6 months (no birth wast)    Keneba           GAMBIA                         3                    NA                0.1059908    0.0650258   0.1469558
0-6 months (no birth wast)    Keneba           GAMBIA                         4                    NA                0.1030534    0.0662319   0.1398749
0-6 months (no birth wast)    Keneba           GAMBIA                         5                    NA                0.1342593    0.0887838   0.1797347
0-6 months (no birth wast)    Keneba           GAMBIA                         6                    NA                0.1299435    0.0803982   0.1794888
0-6 months (no birth wast)    Keneba           GAMBIA                         7                    NA                0.1459854    0.0868477   0.2051231
0-6 months (no birth wast)    Keneba           GAMBIA                         8                    NA                0.1397059    0.0814286   0.1979831
0-6 months (no birth wast)    Keneba           GAMBIA                         9                    NA                0.1294118    0.0789449   0.1798787
0-6 months (no birth wast)    Keneba           GAMBIA                         10                   NA                0.1250000    0.0791561   0.1708439
0-6 months (no birth wast)    Keneba           GAMBIA                         11                   NA                0.1044776    0.0678490   0.1411062
0-6 months (no birth wast)    Keneba           GAMBIA                         12                   NA                0.0645161    0.0292032   0.0998290
0-6 months (no birth wast)    PROBIT           BELARUS                        1                    NA                0.0548885    0.0309521   0.0788249
0-6 months (no birth wast)    PROBIT           BELARUS                        2                    NA                0.0552764    0.0374053   0.0731474
0-6 months (no birth wast)    PROBIT           BELARUS                        3                    NA                0.0603741    0.0414475   0.0793008
0-6 months (no birth wast)    PROBIT           BELARUS                        4                    NA                0.0546595    0.0303565   0.0789625
0-6 months (no birth wast)    PROBIT           BELARUS                        5                    NA                0.0626102    0.0391805   0.0860399
0-6 months (no birth wast)    PROBIT           BELARUS                        6                    NA                0.0747508    0.0539628   0.0955388
0-6 months (no birth wast)    PROBIT           BELARUS                        7                    NA                0.0589445    0.0426761   0.0752128
0-6 months (no birth wast)    PROBIT           BELARUS                        8                    NA                0.0757196    0.0579186   0.0935207
0-6 months (no birth wast)    PROBIT           BELARUS                        9                    NA                0.0586735    0.0451600   0.0721870
0-6 months (no birth wast)    PROBIT           BELARUS                        10                   NA                0.0545864    0.0361568   0.0730159
0-6 months (no birth wast)    PROBIT           BELARUS                        11                   NA                0.0639810    0.0451675   0.0827946
0-6 months (no birth wast)    PROBIT           BELARUS                        12                   NA                0.0584989    0.0440084   0.0729894
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                    NA                0.2233010    0.1755091   0.2710929
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          2                    NA                0.1111111    0.0486545   0.1735677
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          3                    NA                0.1511628    0.0611044   0.2412212
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          4                    NA                0.1358025    0.0584777   0.2131272
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          5                    NA                0.2142857    0.1050587   0.3235127
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          6                    NA                0.1403509    0.0805208   0.2001810
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          7                    NA                0.0500000    0.0211940   0.0788060
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          8                    NA                0.0722892    0.0372343   0.1073440
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          9                    NA                0.0722222    0.0486558   0.0957886
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          10                   NA                0.1125000    0.0509355   0.1740645
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          11                   NA                0.1619718    0.0863301   0.2376136
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          12                   NA                0.1496599    0.0527957   0.2465240
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1266376    0.0835551   0.1697200
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0705128    0.0303307   0.1106949
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1475410    0.0961476   0.1989343
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0496894    0.0161163   0.0832625
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.0555556    0.0236432   0.0874679
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.0406977    0.0111626   0.0702327
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.0523256    0.0190396   0.0856116
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.0979381    0.0561038   0.1397725
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0921053    0.0545620   0.1296485
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.0614035    0.0302356   0.0925715
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.0929204    0.0550619   0.1307789
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1179039    0.0761263   0.1596816
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                    NA                0.0323575    0.0227309   0.0419840
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       2                    NA                0.0372608    0.0254801   0.0490415
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       3                    NA                0.0393053    0.0277900   0.0508206
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       4                    NA                0.0258449    0.0160395   0.0356504
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       5                    NA                0.0182556    0.0098991   0.0266120
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       6                    NA                0.0252480    0.0160146   0.0344813
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       7                    NA                0.0363153    0.0254027   0.0472280
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       8                    NA                0.0373198    0.0265000   0.0481395
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       9                    NA                0.0354610    0.0252852   0.0456368
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       10                   NA                0.0258706    0.0160556   0.0356857
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       11                   NA                0.0348304    0.0239503   0.0457105
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       12                   NA                0.0328677    0.0228505   0.0428849
6-24 months                   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2301255    0.1646588   0.2955923
6-24 months                   iLiNS-Zinc       BURKINA FASO                   2                    NA                0.2355769    0.1698416   0.3013122
6-24 months                   iLiNS-Zinc       BURKINA FASO                   3                    NA                0.2196262    0.1302934   0.3089589
6-24 months                   iLiNS-Zinc       BURKINA FASO                   4                    NA                0.2131148    0.1106419   0.3155876
6-24 months                   iLiNS-Zinc       BURKINA FASO                   5                    NA                0.2334630    0.1761323   0.2907937
6-24 months                   iLiNS-Zinc       BURKINA FASO                   6                    NA                0.2377049    0.1585503   0.3168596
6-24 months                   iLiNS-Zinc       BURKINA FASO                   7                    NA                0.2214112    0.1772815   0.2655409
6-24 months                   iLiNS-Zinc       BURKINA FASO                   8                    NA                0.2513812    0.1873390   0.3154234
6-24 months                   iLiNS-Zinc       BURKINA FASO                   9                    NA                0.2440678    0.1748095   0.3133261
6-24 months                   iLiNS-Zinc       BURKINA FASO                   10                   NA                0.1854839    0.0804310   0.2905367
6-24 months                   iLiNS-Zinc       BURKINA FASO                   11                   NA                0.2741117    0.2094554   0.3387679
6-24 months                   iLiNS-Zinc       BURKINA FASO                   12                   NA                0.2654321    0.2046935   0.3261707
6-24 months                   IRC              INDIA                          1                    NA                0.3428571    0.1854114   0.5003029
6-24 months                   IRC              INDIA                          2                    NA                0.3000000    0.1358173   0.4641827
6-24 months                   IRC              INDIA                          3                    NA                0.2068966    0.0592848   0.3545083
6-24 months                   IRC              INDIA                          4                    NA                0.3750000    0.1810774   0.5689226
6-24 months                   IRC              INDIA                          5                    NA                0.4285714    0.2166566   0.6404862
6-24 months                   IRC              INDIA                          6                    NA                0.3142857    0.1603008   0.4682707
6-24 months                   IRC              INDIA                          7                    NA                0.3611111    0.2040169   0.5182053
6-24 months                   IRC              INDIA                          8                    NA                0.3414634    0.1961357   0.4867911
6-24 months                   IRC              INDIA                          9                    NA                0.3333333    0.1644404   0.5022263
6-24 months                   IRC              INDIA                          10                   NA                0.4102564    0.2556935   0.5648193
6-24 months                   IRC              INDIA                          11                   NA                0.1951220    0.0736700   0.3165739
6-24 months                   IRC              INDIA                          12                   NA                0.2040816    0.0910977   0.3170655
6-24 months                   Keneba           GAMBIA                         1                    NA                0.3437500    0.2815401   0.4059599
6-24 months                   Keneba           GAMBIA                         2                    NA                0.3977273    0.3386780   0.4567766
6-24 months                   Keneba           GAMBIA                         3                    NA                0.3545455    0.2913210   0.4177699
6-24 months                   Keneba           GAMBIA                         4                    NA                0.2935154    0.2413646   0.3456661
6-24 months                   Keneba           GAMBIA                         5                    NA                0.2346939    0.1862407   0.2831471
6-24 months                   Keneba           GAMBIA                         6                    NA                0.1793722    0.1290076   0.2297368
6-24 months                   Keneba           GAMBIA                         7                    NA                0.3371429    0.2670901   0.4071956
6-24 months                   Keneba           GAMBIA                         8                    NA                0.3333333    0.2620371   0.4046296
6-24 months                   Keneba           GAMBIA                         9                    NA                0.3548387    0.2860653   0.4236121
6-24 months                   Keneba           GAMBIA                         10                   NA                0.3507109    0.2863118   0.4151100
6-24 months                   Keneba           GAMBIA                         11                   NA                0.3310105    0.2765581   0.3854628
6-24 months                   Keneba           GAMBIA                         12                   NA                0.3212435    0.2553530   0.3871340
6-24 months                   NIH-Birth        BANGLADESH                     1                    NA                0.4230769    0.2886717   0.5574821
6-24 months                   NIH-Birth        BANGLADESH                     2                    NA                0.3400000    0.2085757   0.4714243
6-24 months                   NIH-Birth        BANGLADESH                     3                    NA                0.3137255    0.1862614   0.4411896
6-24 months                   NIH-Birth        BANGLADESH                     4                    NA                0.2444444    0.1187645   0.3701244
6-24 months                   NIH-Birth        BANGLADESH                     5                    NA                0.2380952    0.1091664   0.3670241
6-24 months                   NIH-Birth        BANGLADESH                     6                    NA                0.2500000    0.1156865   0.3843135
6-24 months                   NIH-Birth        BANGLADESH                     7                    NA                0.3111111    0.1757247   0.4464976
6-24 months                   NIH-Birth        BANGLADESH                     8                    NA                0.3243243    0.1733486   0.4753001
6-24 months                   NIH-Birth        BANGLADESH                     9                    NA                0.2413793    0.0854914   0.3972672
6-24 months                   NIH-Birth        BANGLADESH                     10                   NA                0.2264151    0.1136388   0.3391914
6-24 months                   NIH-Birth        BANGLADESH                     11                   NA                0.2708333    0.1450008   0.3966659
6-24 months                   NIH-Birth        BANGLADESH                     12                   NA                0.3000000    0.1728625   0.4271375
6-24 months                   PROBIT           BELARUS                        1                    NA                0.0078466   -0.0001202   0.0158133
6-24 months                   PROBIT           BELARUS                        2                    NA                0.0070850    0.0019819   0.0121881
6-24 months                   PROBIT           BELARUS                        3                    NA                0.0076989    0.0018516   0.0135462
6-24 months                   PROBIT           BELARUS                        4                    NA                0.0062612   -0.0033398   0.0158622
6-24 months                   PROBIT           BELARUS                        5                    NA                0.0070609   -0.0001126   0.0142344
6-24 months                   PROBIT           BELARUS                        6                    NA                0.0050378    0.0010242   0.0090514
6-24 months                   PROBIT           BELARUS                        7                    NA                0.0054945    0.0018628   0.0091262
6-24 months                   PROBIT           BELARUS                        8                    NA                0.0044164   -0.0007884   0.0096212
6-24 months                   PROBIT           BELARUS                        9                    NA                0.0083280    0.0010539   0.0156021
6-24 months                   PROBIT           BELARUS                        10                   NA                0.0135747    0.0054446   0.0217048
6-24 months                   PROBIT           BELARUS                        11                   NA                0.0113028    0.0020276   0.0205780
6-24 months                   PROBIT           BELARUS                        12                   NA                0.0122154    0.0063408   0.0180901
6-24 months                   SAS-CompFeed     INDIA                          1                    NA                0.3020833    0.2035644   0.4006022
6-24 months                   SAS-CompFeed     INDIA                          2                    NA                0.2317073    0.1425683   0.3208463
6-24 months                   SAS-CompFeed     INDIA                          3                    NA                0.2804878    0.1898470   0.3711286
6-24 months                   SAS-CompFeed     INDIA                          4                    NA                0.3125000    0.1869948   0.4380052
6-24 months                   SAS-CompFeed     INDIA                          5                    NA                0.3209877    0.2223049   0.4196704
6-24 months                   SAS-CompFeed     INDIA                          6                    NA                0.3084112    0.2363775   0.3804450
6-24 months                   SAS-CompFeed     INDIA                          7                    NA                0.3162393    0.2418386   0.3906400
6-24 months                   SAS-CompFeed     INDIA                          8                    NA                0.3571429    0.2439512   0.4703345
6-24 months                   SAS-CompFeed     INDIA                          9                    NA                0.3430233    0.2697963   0.4162503
6-24 months                   SAS-CompFeed     INDIA                          10                   NA                0.3000000    0.1738532   0.4261468
6-24 months                   SAS-CompFeed     INDIA                          11                   NA                0.3282443    0.2648324   0.3916562
6-24 months                   SAS-CompFeed     INDIA                          12                   NA                0.2262774    0.1675653   0.2849895
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1608040    0.1097524   0.2118556
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1879699    0.1215558   0.2543840
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1733333    0.1127412   0.2339255
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1594203    0.0983293   0.2205113
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1069182    0.0588754   0.1549611
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1366906    0.0795690   0.1938123
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1760563    0.1133970   0.2387157
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.1590909    0.1050408   0.2131410
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.1758794    0.1229701   0.2287887
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1479592    0.0982394   0.1976789
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.1727749    0.1191469   0.2264028
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1683673    0.1159684   0.2207663
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    NA                0.1005639    0.0824920   0.1186358
6-24 months                   ZVITAMBO         ZIMBABWE                       2                    NA                0.0954712    0.0753199   0.1156226
6-24 months                   ZVITAMBO         ZIMBABWE                       3                    NA                0.1187215    0.0973006   0.1401423
6-24 months                   ZVITAMBO         ZIMBABWE                       4                    NA                0.0843521    0.0653061   0.1033981
6-24 months                   ZVITAMBO         ZIMBABWE                       5                    NA                0.1088083    0.0868410   0.1307756
6-24 months                   ZVITAMBO         ZIMBABWE                       6                    NA                0.0915254    0.0725267   0.1105241
6-24 months                   ZVITAMBO         ZIMBABWE                       7                    NA                0.0862832    0.0679789   0.1045875
6-24 months                   ZVITAMBO         ZIMBABWE                       8                    NA                0.0922747    0.0736933   0.1108561
6-24 months                   ZVITAMBO         ZIMBABWE                       9                    NA                0.0664063    0.0511551   0.0816574
6-24 months                   ZVITAMBO         ZIMBABWE                       10                   NA                0.1002506    0.0794119   0.1210893
6-24 months                   ZVITAMBO         ZIMBABWE                       11                   NA                0.1011111    0.0814141   0.1208081
6-24 months                   ZVITAMBO         ZIMBABWE                       12                   NA                0.1082927    0.0892680   0.1273173


### Parameter: E(Y)


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          NA                   NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0850857   0.0676201   0.1025513
0-24 months (no birth wast)   IRC              INDIA                          NA                   NA                0.5207824   0.4723080   0.5692568
0-24 months (no birth wast)   Keneba           GAMBIA                         NA                   NA                0.3392608   0.3219301   0.3565915
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     NA                   NA                0.2956811   0.2591967   0.3321655
0-24 months (no birth wast)   PROBIT           BELARUS                        NA                   NA                0.0680135   0.0562135   0.0798135
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          NA                   NA                0.3615180   0.3107193   0.4123167
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1988255   0.1828010   0.2148500
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1020019   0.0969221   0.1070817
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          NA                   NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    Keneba           GAMBIA                         NA                   NA                0.1117987   0.0992515   0.1243458
0-6 months (no birth wast)    PROBIT           BELARUS                        NA                   NA                0.0612233   0.0502388   0.0722078
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          NA                   NA                0.1255940   0.0954030   0.1557851
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0858586   0.0745914   0.0971258
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0319976   0.0290150   0.0349802
6-24 months                   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2317820   0.2038933   0.2596707
6-24 months                   IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months                   Keneba           GAMBIA                         NA                   NA                0.3166545   0.2992274   0.3340815
6-24 months                   NIH-Birth        BANGLADESH                     NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months                   PROBIT           BELARUS                        NA                   NA                0.0083745   0.0044130   0.0123360
6-24 months                   SAS-CompFeed     INDIA                          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1605550   0.1445335   0.1765765
6-24 months                   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0958853   0.0903360   0.1014347


### Parameter: RR


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          2                    1                 0.8115942   0.4541974   1.4502179
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          3                    1                 0.8555556   0.4907620   1.4915077
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          4                    1                 0.5149425   0.2598304   1.0205343
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          5                    1                 0.6945736   0.4129415   1.1682831
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          6                    1                 0.7466667   0.4380849   1.2726098
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          7                    1                 0.7353535   0.4256947   1.2702644
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          8                    1                 0.8650407   0.5366106   1.3944847
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          9                    1                 1.1362319   0.7056675   1.8295058
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          10                   1                 0.6877193   0.3472956   1.3618309
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          11                   1                 0.9560976   0.6054796   1.5097495
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          12                   1                 1.1586207   0.7405018   1.8128272
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   2                    1                 0.9032892   0.4978203   1.6390077
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   3                    1                 1.1696718   0.6472774   2.1136719
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   4                    1                 0.6404901   0.1702923   2.4089620
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   5                    1                 0.9956710   0.4609213   2.1508245
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   6                    1                 0.9728476   0.4612382   2.0519387
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   7                    1                 0.8102527   0.4836418   1.3574290
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   8                    1                 0.9721048   0.4363746   2.1655425
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   9                    1                 0.9663866   0.6025337   1.5499596
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   10                   1                 0.8191531   0.3900277   1.7204212
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   11                   1                 0.9956710   0.4935339   2.0086984
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   12                   1                 1.0290828   0.5318362   1.9912360
0-24 months (no birth wast)   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   IRC              INDIA                          2                    1                 0.9607843   0.5752028   1.6048366
0-24 months (no birth wast)   IRC              INDIA                          3                    1                 0.9939148   0.5976208   1.6529992
0-24 months (no birth wast)   IRC              INDIA                          4                    1                 0.8578431   0.4783567   1.5383809
0-24 months (no birth wast)   IRC              INDIA                          5                    1                 1.1764706   0.7107083   1.9474700
0-24 months (no birth wast)   IRC              INDIA                          6                    1                 1.2110727   0.7780507   1.8850918
0-24 months (no birth wast)   IRC              INDIA                          7                    1                 1.2009804   0.7740883   1.8632938
0-24 months (no birth wast)   IRC              INDIA                          8                    1                 1.1047346   0.7082687   1.7231292
0-24 months (no birth wast)   IRC              INDIA                          9                    1                 1.0980392   0.6805737   1.7715792
0-24 months (no birth wast)   IRC              INDIA                          10                   1                 1.1613876   0.7486600   1.8016473
0-24 months (no birth wast)   IRC              INDIA                          11                   1                 0.9540890   0.5935675   1.5335842
0-24 months (no birth wast)   IRC              INDIA                          12                   1                 1.0924370   0.7097181   1.6815389
0-24 months (no birth wast)   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   Keneba           GAMBIA                         2                    1                 1.1271036   0.9035495   1.4059689
0-24 months (no birth wast)   Keneba           GAMBIA                         3                    1                 1.0616480   0.8394397   1.3426769
0-24 months (no birth wast)   Keneba           GAMBIA                         4                    1                 0.8687439   0.6860855   1.1000318
0-24 months (no birth wast)   Keneba           GAMBIA                         5                    1                 0.7007305   0.5431793   0.9039799
0-24 months (no birth wast)   Keneba           GAMBIA                         6                    1                 0.6245112   0.4650803   0.8385955
0-24 months (no birth wast)   Keneba           GAMBIA                         7                    1                 1.0147287   0.7857331   1.3104631
0-24 months (no birth wast)   Keneba           GAMBIA                         8                    1                 0.9330233   0.7138275   1.2195277
0-24 months (no birth wast)   Keneba           GAMBIA                         9                    1                 1.0810320   0.8465865   1.3804026
0-24 months (no birth wast)   Keneba           GAMBIA                         10                   1                 1.0672646   0.8423827   1.3521808
0-24 months (no birth wast)   Keneba           GAMBIA                         11                   1                 0.9625885   0.7652496   1.2108161
0-24 months (no birth wast)   Keneba           GAMBIA                         12                   1                 0.9224806   0.7139498   1.1919193
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     2                    1                 0.7503448   0.4533905   1.2417933
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     3                    1                 0.8685714   0.5390333   1.3995728
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     4                    1                 0.7168000   0.4176827   1.2301258
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     5                    1                 0.5991489   0.3283476   1.0932908
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     6                    1                 0.6981818   0.3941160   1.2368385
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     7                    1                 0.8714894   0.5273142   1.4403058
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     8                    1                 0.8117073   0.4711354   1.3984702
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     9                    1                 0.6206061   0.3153910   1.2211886
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     10                   1                 0.5296552   0.2936015   0.9554945
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     11                   1                 0.7529412   0.4457284   1.2718965
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     12                   1                 0.7728302   0.4633634   1.2889807
0-24 months (no birth wast)   PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   PROBIT           BELARUS                        2                    1                 1.0146359   0.7322175   1.4059839
0-24 months (no birth wast)   PROBIT           BELARUS                        3                    1                 1.0953704   0.7592821   1.5802245
0-24 months (no birth wast)   PROBIT           BELARUS                        4                    1                 0.9750640   0.6359287   1.4950572
0-24 months (no birth wast)   PROBIT           BELARUS                        5                    1                 1.1287077   0.6702306   1.9008103
0-24 months (no birth wast)   PROBIT           BELARUS                        6                    1                 1.2794285   0.8505175   1.9246369
0-24 months (no birth wast)   PROBIT           BELARUS                        7                    1                 1.0255164   0.6687024   1.5727231
0-24 months (no birth wast)   PROBIT           BELARUS                        8                    1                 1.2920623   0.8886750   1.8785551
0-24 months (no birth wast)   PROBIT           BELARUS                        9                    1                 1.0650392   0.6996124   1.6213382
0-24 months (no birth wast)   PROBIT           BELARUS                        10                   1                 1.0941546   0.8304493   1.4415984
0-24 months (no birth wast)   PROBIT           BELARUS                        11                   1                 1.2052931   0.8595158   1.6901743
0-24 months (no birth wast)   PROBIT           BELARUS                        12                   1                 1.1440135   0.8539455   1.5326116
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          2                    1                 0.7091729   0.4222443   1.1910786
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          3                    1                 0.8600333   0.5405112   1.3684401
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          4                    1                 0.9631243   0.6546652   1.4169203
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          5                    1                 1.1098963   0.8657312   1.4229240
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          6                    1                 1.0072743   0.7306083   1.3887079
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          7                    1                 0.8208104   0.6109443   1.1027677
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          8                    1                 0.9941928   0.6964970   1.4191293
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          9                    1                 0.9502916   0.7207500   1.2529368
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          10                   1                 0.9446356   0.6649408   1.3419788
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          11                   1                 1.1055217   0.8277657   1.4764784
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          12                   1                 0.8166584   0.5532872   1.2053973
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8883548   0.6019363   1.3110594
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.1193938   0.7955350   1.5750940
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.7579984   0.5023380   1.1437748
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.5913530   0.3873968   0.9026877
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.6298397   0.4085393   0.9710156
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.7855419   0.5282186   1.1682210
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.8940493   0.6214832   1.2861558
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.9366931   0.6649076   1.3195729
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.7455313   0.5145063   1.0802916
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.9835532   0.7014866   1.3790383
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.9811321   0.7008825   1.3734401
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       2                    1                 0.9759087   0.7688959   1.2386564
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       3                    1                 1.1339361   0.9075998   1.4167160
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       4                    1                 0.8402726   0.6540076   1.0795868
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       5                    1                 0.9248568   0.7243624   1.1808455
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       6                    1                 0.8897991   0.7005658   1.1301471
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       7                    1                 0.9352806   0.7402236   1.1817372
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       8                    1                 0.9889362   0.7879076   1.2412556
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       9                    1                 0.7636573   0.6002458   0.9715560
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       10                   1                 0.9427593   0.7411095   1.1992763
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       11                   1                 1.0408971   0.8288156   1.3072470
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       12                   1                 1.0870354   0.8729262   1.3536609
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          2                    1                 0.7714286   0.3339107   1.7822194
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          3                    1                 1.0565217   0.5197931   2.1474665
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          4                    1                 0.6000000   0.2535499   1.4198387
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          5                    1                 0.8560976   0.4393707   1.6680746
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          6                    1                 0.7363636   0.3498476   1.5499075
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          7                    1                 0.8437500   0.4138577   1.7201903
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          8                    1                 0.6923077   0.3345169   1.4327825
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          9                    1                 0.7105263   0.2888312   1.7478986
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          10                   1                 0.8526316   0.3733693   1.9470821
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          11                   1                 0.8775000   0.4511497   1.7067645
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          12                   1                 1.0241379   0.5197851   2.0178697
0-6 months (no birth wast)    Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    Keneba           GAMBIA                         2                    1                 1.3109244   0.7317884   2.3483873
0-6 months (no birth wast)    Keneba           GAMBIA                         3                    1                 1.3092979   0.7202758   2.3800063
0-6 months (no birth wast)    Keneba           GAMBIA                         4                    1                 1.2730130   0.7133558   2.2717446
0-6 months (no birth wast)    Keneba           GAMBIA                         5                    1                 1.6584967   0.9399123   2.9264555
0-6 months (no birth wast)    Keneba           GAMBIA                         6                    1                 1.6051844   0.8860203   2.9080792
0-6 months (no birth wast)    Keneba           GAMBIA                         7                    1                 1.8033491   0.9800425   3.3182928
0-6 months (no birth wast)    Keneba           GAMBIA                         8                    1                 1.7257785   0.9303482   3.2012869
0-6 months (no birth wast)    Keneba           GAMBIA                         9                    1                 1.5986159   0.8774568   2.9124770
0-6 months (no birth wast)    Keneba           GAMBIA                         10                   1                 1.5441176   0.8602056   2.7717786
0-6 months (no birth wast)    Keneba           GAMBIA                         11                   1                 1.2906058   0.7261998   2.2936708
0-6 months (no birth wast)    Keneba           GAMBIA                         12                   1                 0.7969639   0.3909275   1.6247299
0-6 months (no birth wast)    PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    PROBIT           BELARUS                        2                    1                 1.0070666   0.7198715   1.4088391
0-6 months (no birth wast)    PROBIT           BELARUS                        3                    1                 1.0999415   0.7267456   1.6647797
0-6 months (no birth wast)    PROBIT           BELARUS                        4                    1                 0.9958277   0.6141539   1.6146978
0-6 months (no birth wast)    PROBIT           BELARUS                        5                    1                 1.1406801   0.6303993   2.0640111
0-6 months (no birth wast)    PROBIT           BELARUS                        6                    1                 1.3618667   0.8604470   2.1554853
0-6 months (no birth wast)    PROBIT           BELARUS                        7                    1                 1.0738948   0.6517605   1.7694384
0-6 months (no birth wast)    PROBIT           BELARUS                        8                    1                 1.3795174   0.8750418   2.1748312
0-6 months (no birth wast)    PROBIT           BELARUS                        9                    1                 1.0689573   0.6479993   1.7633811
0-6 months (no birth wast)    PROBIT           BELARUS                        10                   1                 0.9944956   0.6672384   1.4822612
0-6 months (no birth wast)    PROBIT           BELARUS                        11                   1                 1.1656546   0.7684145   1.7682522
0-6 months (no birth wast)    PROBIT           BELARUS                        12                   1                 1.0657768   0.7827535   1.4511339
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          2                    1                 0.4975845   0.2736484   0.9047756
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          3                    1                 0.6769464   0.3634340   1.2609068
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          4                    1                 0.6081589   0.3299478   1.1209569
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          5                    1                 0.9596273   0.5649402   1.6300567
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          6                    1                 0.6285278   0.3780935   1.0448401
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          7                    1                 0.2239130   0.1227581   0.4084217
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          8                    1                 0.3237297   0.1779742   0.5888546
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          9                    1                 0.3234300   0.2420999   0.4320818
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          10                   1                 0.5038043   0.3111319   0.8157916
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          11                   1                 0.7253521   0.4542885   1.1581533
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          12                   1                 0.6702159   0.3778054   1.1889436
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.5568081   0.2867294   1.0812817
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.1650650   0.7159642   1.8958721
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.3923752   0.1841490   0.8360532
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.4386973   0.2250230   0.8552695
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.3213713   0.1441847   0.7163000
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.4131917   0.2008427   0.8500550
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.7733736   0.4479536   1.3351981
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.7273140   0.4277030   1.2368060
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.4848760   0.2631801   0.8933226
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.7337504   0.4315486   1.2475759
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.9310345   0.5696838   1.5215901
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       2                    1                 1.1515369   0.7459947   1.7775425
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       3                    1                 1.2147210   0.8000924   1.8442208
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       4                    1                 0.7987314   0.4931893   1.2935640
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       5                    1                 0.5641843   0.3268321   0.9739066
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       6                    1                 0.7802825   0.4869788   1.2502410
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       7                    1                 1.1223164   0.7353100   1.7130109
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       8                    1                 1.1533584   0.7612978   1.7473260
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       9                    1                 1.0959135   0.7248736   1.6568771
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       10                   1                 0.7995262   0.4936819   1.2948461
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       11                   1                 1.0764262   0.6992602   1.6570274
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       12                   1                 1.0157687   0.6634764   1.5551209
6-24 months                   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   iLiNS-Zinc       BURKINA FASO                   2                    1                 1.0236888   0.6626044   1.5815450
6-24 months                   iLiNS-Zinc       BURKINA FASO                   3                    1                 0.9543755   0.5694689   1.5994424
6-24 months                   iLiNS-Zinc       BURKINA FASO                   4                    1                 0.9260805   0.5105634   1.6797621
6-24 months                   iLiNS-Zinc       BURKINA FASO                   5                    1                 1.0145030   0.6842978   1.5040475
6-24 months                   iLiNS-Zinc       BURKINA FASO                   6                    1                 1.0329359   0.6396376   1.6680641
6-24 months                   iLiNS-Zinc       BURKINA FASO                   7                    1                 0.9621323   0.6630092   1.3962075
6-24 months                   iLiNS-Zinc       BURKINA FASO                   8                    1                 1.0923656   0.7152657   1.6682789
6-24 months                   iLiNS-Zinc       BURKINA FASO                   9                    1                 1.0605855   0.7046706   1.5962659
6-24 months                   iLiNS-Zinc       BURKINA FASO                   10                   1                 0.8060117   0.4202567   1.5458526
6-24 months                   iLiNS-Zinc       BURKINA FASO                   11                   1                 1.1911398   0.7860250   1.8050496
6-24 months                   iLiNS-Zinc       BURKINA FASO                   12                   1                 1.1534231   0.7934119   1.6767897
6-24 months                   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   IRC              INDIA                          2                    1                 0.8750000   0.4282930   1.7876195
6-24 months                   IRC              INDIA                          3                    1                 0.6034483   0.2583179   1.4096967
6-24 months                   IRC              INDIA                          4                    1                 1.0937500   0.5477259   2.1841017
6-24 months                   IRC              INDIA                          5                    1                 1.2500000   0.6365618   2.4545928
6-24 months                   IRC              INDIA                          6                    1                 0.9166667   0.4683559   1.7941010
6-24 months                   IRC              INDIA                          7                    1                 1.0532407   0.5595136   1.9826435
6-24 months                   IRC              INDIA                          8                    1                 0.9959350   0.5324926   1.8627236
6-24 months                   IRC              INDIA                          9                    1                 0.9722222   0.4906687   1.9263835
6-24 months                   IRC              INDIA                          10                   1                 1.1965812   0.6606595   2.1672382
6-24 months                   IRC              INDIA                          11                   1                 0.5691057   0.2625809   1.2334535
6-24 months                   IRC              INDIA                          12                   1                 0.5952381   0.2899396   1.2220074
6-24 months                   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   Keneba           GAMBIA                         2                    1                 1.1570248   0.9155508   1.4621869
6-24 months                   Keneba           GAMBIA                         3                    1                 1.0314050   0.7999963   1.3297513
6-24 months                   Keneba           GAMBIA                         4                    1                 0.8538629   0.6625895   1.1003522
6-24 months                   Keneba           GAMBIA                         5                    1                 0.6827458   0.5188313   0.8984460
6-24 months                   Keneba           GAMBIA                         6                    1                 0.5218100   0.3736247   0.7287680
6-24 months                   Keneba           GAMBIA                         7                    1                 0.9807792   0.7445658   1.2919314
6-24 months                   Keneba           GAMBIA                         8                    1                 0.9696970   0.7327503   1.2832641
6-24 months                   Keneba           GAMBIA                         9                    1                 1.0322581   0.7918182   1.3457089
6-24 months                   Keneba           GAMBIA                         10                   1                 1.0202499   0.7883844   1.3203074
6-24 months                   Keneba           GAMBIA                         11                   1                 0.9629395   0.7540234   1.2297396
6-24 months                   Keneba           GAMBIA                         12                   1                 0.9345266   0.7108801   1.2285334
6-24 months                   NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   NIH-Birth        BANGLADESH                     2                    1                 0.8036364   0.4872652   1.3254207
6-24 months                   NIH-Birth        BANGLADESH                     3                    1                 0.7415330   0.4427348   1.2419877
6-24 months                   NIH-Birth        BANGLADESH                     4                    1                 0.5777778   0.3157069   1.0573959
6-24 months                   NIH-Birth        BANGLADESH                     5                    1                 0.5627706   0.3003836   1.0543540
6-24 months                   NIH-Birth        BANGLADESH                     6                    1                 0.5909091   0.3165592   1.1030278
6-24 months                   NIH-Birth        BANGLADESH                     7                    1                 0.7353535   0.4290438   1.2603489
6-24 months                   NIH-Birth        BANGLADESH                     8                    1                 0.7665848   0.4363155   1.3468514
6-24 months                   NIH-Birth        BANGLADESH                     9                    1                 0.5705329   0.2777836   1.1718035
6-24 months                   NIH-Birth        BANGLADESH                     10                   1                 0.5351630   0.2964237   0.9661825
6-24 months                   NIH-Birth        BANGLADESH                     11                   1                 0.6401515   0.3646235   1.1238826
6-24 months                   NIH-Birth        BANGLADESH                     12                   1                 0.7090909   0.4175229   1.2042692
6-24 months                   PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   PROBIT           BELARUS                        2                    1                 0.9029465   0.2587663   3.1507669
6-24 months                   PROBIT           BELARUS                        3                    1                 0.9811805   0.3061034   3.1450657
6-24 months                   PROBIT           BELARUS                        4                    1                 0.7979527   0.2537312   2.5094611
6-24 months                   PROBIT           BELARUS                        5                    1                 0.8998725   0.2403483   3.3691543
6-24 months                   PROBIT           BELARUS                        6                    1                 0.6420375   0.2429795   1.6964896
6-24 months                   PROBIT           BELARUS                        7                    1                 0.7002442   0.1870926   2.6208510
6-24 months                   PROBIT           BELARUS                        8                    1                 0.5628461   0.1948804   1.6255907
6-24 months                   PROBIT           BELARUS                        9                    1                 1.0613567   0.4507280   2.4992412
6-24 months                   PROBIT           BELARUS                        10                   1                 1.7300151   0.5865932   5.1022619
6-24 months                   PROBIT           BELARUS                        11                   1                 1.4404786   0.6508565   3.1880736
6-24 months                   PROBIT           BELARUS                        12                   1                 1.5567894   0.5792666   4.1838995
6-24 months                   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   SAS-CompFeed     INDIA                          2                    1                 0.7670311   0.4685115   1.2557573
6-24 months                   SAS-CompFeed     INDIA                          3                    1                 0.9285114   0.5680756   1.5176384
6-24 months                   SAS-CompFeed     INDIA                          4                    1                 1.0344828   0.6470354   1.6539350
6-24 months                   SAS-CompFeed     INDIA                          5                    1                 1.0625798   0.7042088   1.6033253
6-24 months                   SAS-CompFeed     INDIA                          6                    1                 1.0209475   0.7557620   1.3791825
6-24 months                   SAS-CompFeed     INDIA                          7                    1                 1.0468612   0.7127839   1.5375184
6-24 months                   SAS-CompFeed     INDIA                          8                    1                 1.1822660   0.7284054   1.9189216
6-24 months                   SAS-CompFeed     INDIA                          9                    1                 1.1355253   0.7865378   1.6393587
6-24 months                   SAS-CompFeed     INDIA                          10                   1                 0.9931034   0.6034900   1.6342517
6-24 months                   SAS-CompFeed     INDIA                          11                   1                 1.0866017   0.7164187   1.6480633
6-24 months                   SAS-CompFeed     INDIA                          12                   1                 0.7490561   0.4835941   1.1602397
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1689380   0.7269422   1.8796763
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.0779167   0.6722069   1.7284920
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.9913949   0.6027358   1.6306712
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.6648978   0.3835430   1.1526454
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.8500450   0.5029450   1.4366908
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.0948504   0.6795596   1.7639325
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.9893466   0.6214484   1.5750410
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 1.0937500   0.7062730   1.6938056
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.9201212   0.5795285   1.4608823
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 1.0744437   0.6892193   1.6749811
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 1.0470344   0.6712493   1.6331952
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ZVITAMBO         ZIMBABWE                       2                    1                 0.9493588   0.7195141   1.2526261
6-24 months                   ZVITAMBO         ZIMBABWE                       3                    1                 1.1805573   0.9151494   1.5229378
6-24 months                   ZVITAMBO         ZIMBABWE                       4                    1                 0.8387908   0.6285311   1.1193876
6-24 months                   ZVITAMBO         ZIMBABWE                       5                    1                 1.0819815   0.8257278   1.4177601
6-24 months                   ZVITAMBO         ZIMBABWE                       6                    1                 0.9101220   0.6916080   1.1976756
6-24 months                   ZVITAMBO         ZIMBABWE                       7                    1                 0.8579935   0.6497391   1.1329978
6-24 months                   ZVITAMBO         ZIMBABWE                       8                    1                 0.9175725   0.7005284   1.2018632
6-24 months                   ZVITAMBO         ZIMBABWE                       9                    1                 0.6603388   0.4933099   0.8839217
6-24 months                   ZVITAMBO         ZIMBABWE                       10                   1                 0.9968847   0.7573747   1.3121368
6-24 months                   ZVITAMBO         ZIMBABWE                       11                   1                 1.0054413   0.7713542   1.3105682
6-24 months                   ZVITAMBO         ZIMBABWE                       12                   1                 1.0768543   0.8375568   1.3845214


### Parameter: PAR


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    NA                -0.0846273   -0.2623957    0.0931410
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0062186   -0.0443328    0.0318956
0-24 months (no birth wast)   IRC              INDIA                          1                    NA                 0.0350681   -0.1234555    0.1935917
0-24 months (no birth wast)   Keneba           GAMBIA                         1                    NA                -0.0220837   -0.0804624    0.0362949
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     1                    NA                -0.0949439   -0.2071918    0.0173039
0-24 months (no birth wast)   PROBIT           BELARUS                        1                    NA                 0.0071513   -0.0101298    0.0244324
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                    NA                -0.0216596   -0.1164395    0.0731203
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0306117   -0.0818765    0.0206531
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0041728   -0.0198850    0.0115394
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                    NA                -0.0617989   -0.2364075    0.1128096
0-6 months (no birth wast)    Keneba           GAMBIA                         1                    NA                 0.0308463   -0.0049733    0.0666659
0-6 months (no birth wast)    PROBIT           BELARUS                        1                    NA                 0.0063348   -0.0126192    0.0252887
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                    NA                -0.0977069   -0.1409469   -0.0544670
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0407790   -0.0810935   -0.0004644
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0003599   -0.0095022    0.0087824
6-24 months                   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0016565   -0.0731319    0.0764449
6-24 months                   IRC              INDIA                          1                    NA                -0.0331010   -0.1833176    0.1171155
6-24 months                   Keneba           GAMBIA                         1                    NA                -0.0270955   -0.0865979    0.0324069
6-24 months                   NIH-Birth        BANGLADESH                     1                    NA                -0.1297190   -0.2564881   -0.0029498
6-24 months                   PROBIT           BELARUS                        1                    NA                 0.0005279   -0.0053370    0.0063929
6-24 months                   SAS-CompFeed     INDIA                          1                    NA                 0.0038922   -0.0923495    0.1001339
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0002490   -0.0487148    0.0482168
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0046786   -0.0217995    0.0124424


### Parameter: PAF


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    NA                -0.1876076   -0.6557113    0.1481536
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0730865   -0.6332431    0.2949521
0-24 months (no birth wast)   IRC              INDIA                          1                    NA                 0.0673374   -0.2926979    0.3270975
0-24 months (no birth wast)   Keneba           GAMBIA                         1                    NA                -0.0650937   -0.2518533    0.0938039
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     1                    NA                -0.3211025   -0.7611940    0.0090178
0-24 months (no birth wast)   PROBIT           BELARUS                        1                    NA                 0.1051452   -0.1929144    0.3287321
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                    NA                -0.0599129   -0.3594571    0.1736294
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1539628   -0.4427175    0.0769987
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0409090   -0.2069165    0.1022647
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                    NA                -0.2002743   -0.9233053    0.2509465
0-6 months (no birth wast)    Keneba           GAMBIA                         1                    NA                 0.2759093   -0.1251829    0.5340248
0-6 months (no birth wast)    PROBIT           BELARUS                        1                    NA                 0.1034698   -0.2729063    0.3685581
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                    NA                -0.7779585   -1.2541560   -0.4023593
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4749550   -1.0237239   -0.0749947
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0112466   -0.3414115    0.2376539
6-24 months                   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0071467   -0.3735316    0.2823189
6-24 months                   IRC              INDIA                          1                    NA                -0.1068616   -0.7154213    0.2858065
6-24 months                   Keneba           GAMBIA                         1                    NA                -0.0855681   -0.2907219    0.0869776
6-24 months                   NIH-Birth        BANGLADESH                     1                    NA                -0.4421867   -0.9470706   -0.0682215
6-24 months                   PROBIT           BELARUS                        1                    NA                 0.0630422   -0.9979342    0.5606011
6-24 months                   SAS-CompFeed     INDIA                          1                    NA                 0.0127206   -0.3573086    0.2818725
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0015510   -0.3538419    0.2590683
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0487933   -0.2434294    0.1153760
