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

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        month    ever_co   n_cell       n
------------  ---------------  -----------------------------  ------  --------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          1              0       22     373
0-24 months   CMC-V-BCS-2002   INDIA                          1              1        6     373
0-24 months   CMC-V-BCS-2002   INDIA                          2              0       17     373
0-24 months   CMC-V-BCS-2002   INDIA                          2              1        7     373
0-24 months   CMC-V-BCS-2002   INDIA                          3              0       20     373
0-24 months   CMC-V-BCS-2002   INDIA                          3              1        6     373
0-24 months   CMC-V-BCS-2002   INDIA                          4              0       24     373
0-24 months   CMC-V-BCS-2002   INDIA                          4              1        5     373
0-24 months   CMC-V-BCS-2002   INDIA                          5              0       35     373
0-24 months   CMC-V-BCS-2002   INDIA                          5              1        8     373
0-24 months   CMC-V-BCS-2002   INDIA                          6              0       29     373
0-24 months   CMC-V-BCS-2002   INDIA                          6              1        8     373
0-24 months   CMC-V-BCS-2002   INDIA                          7              0       29     373
0-24 months   CMC-V-BCS-2002   INDIA                          7              1        4     373
0-24 months   CMC-V-BCS-2002   INDIA                          8              0       32     373
0-24 months   CMC-V-BCS-2002   INDIA                          8              1        9     373
0-24 months   CMC-V-BCS-2002   INDIA                          9              0       15     373
0-24 months   CMC-V-BCS-2002   INDIA                          9              1        8     373
0-24 months   CMC-V-BCS-2002   INDIA                          10             0       17     373
0-24 months   CMC-V-BCS-2002   INDIA                          10             1        2     373
0-24 months   CMC-V-BCS-2002   INDIA                          11             0       30     373
0-24 months   CMC-V-BCS-2002   INDIA                          11             1       11     373
0-24 months   CMC-V-BCS-2002   INDIA                          12             0       17     373
0-24 months   CMC-V-BCS-2002   INDIA                          12             1       12     373
0-24 months   CMIN             BANGLADESH                     1              0       18     271
0-24 months   CMIN             BANGLADESH                     1              1       10     271
0-24 months   CMIN             BANGLADESH                     2              0       22     271
0-24 months   CMIN             BANGLADESH                     2              1       12     271
0-24 months   CMIN             BANGLADESH                     3              0       17     271
0-24 months   CMIN             BANGLADESH                     3              1        3     271
0-24 months   CMIN             BANGLADESH                     4              0       14     271
0-24 months   CMIN             BANGLADESH                     4              1        6     271
0-24 months   CMIN             BANGLADESH                     5              0       14     271
0-24 months   CMIN             BANGLADESH                     5              1        7     271
0-24 months   CMIN             BANGLADESH                     6              0       19     271
0-24 months   CMIN             BANGLADESH                     6              1        6     271
0-24 months   CMIN             BANGLADESH                     7              0        7     271
0-24 months   CMIN             BANGLADESH                     7              1        6     271
0-24 months   CMIN             BANGLADESH                     8              0       10     271
0-24 months   CMIN             BANGLADESH                     8              1        5     271
0-24 months   CMIN             BANGLADESH                     9              0       14     271
0-24 months   CMIN             BANGLADESH                     9              1        7     271
0-24 months   CMIN             BANGLADESH                     10             0       17     271
0-24 months   CMIN             BANGLADESH                     10             1        6     271
0-24 months   CMIN             BANGLADESH                     11             0        4     271
0-24 months   CMIN             BANGLADESH                     11             1        0     271
0-24 months   CMIN             BANGLADESH                     12             0       23     271
0-24 months   CMIN             BANGLADESH                     12             1       24     271
0-24 months   CONTENT          PERU                           1              0        9     215
0-24 months   CONTENT          PERU                           1              1        0     215
0-24 months   CONTENT          PERU                           2              0       13     215
0-24 months   CONTENT          PERU                           2              1        0     215
0-24 months   CONTENT          PERU                           3              0       27     215
0-24 months   CONTENT          PERU                           3              1        0     215
0-24 months   CONTENT          PERU                           4              0       18     215
0-24 months   CONTENT          PERU                           4              1        0     215
0-24 months   CONTENT          PERU                           5              0       25     215
0-24 months   CONTENT          PERU                           5              1        0     215
0-24 months   CONTENT          PERU                           6              0       14     215
0-24 months   CONTENT          PERU                           6              1        0     215
0-24 months   CONTENT          PERU                           7              0       16     215
0-24 months   CONTENT          PERU                           7              1        0     215
0-24 months   CONTENT          PERU                           8              0       26     215
0-24 months   CONTENT          PERU                           8              1        0     215
0-24 months   CONTENT          PERU                           9              0       19     215
0-24 months   CONTENT          PERU                           9              1        0     215
0-24 months   CONTENT          PERU                           10             0       23     215
0-24 months   CONTENT          PERU                           10             1        0     215
0-24 months   CONTENT          PERU                           11             0       18     215
0-24 months   CONTENT          PERU                           11             1        0     215
0-24 months   CONTENT          PERU                           12             0        7     215
0-24 months   CONTENT          PERU                           12             1        0     215
0-24 months   EE               PAKISTAN                       1              0       52     379
0-24 months   EE               PAKISTAN                       1              1       42     379
0-24 months   EE               PAKISTAN                       2              0       47     379
0-24 months   EE               PAKISTAN                       2              1       26     379
0-24 months   EE               PAKISTAN                       3              0       22     379
0-24 months   EE               PAKISTAN                       3              1       24     379
0-24 months   EE               PAKISTAN                       4              0       10     379
0-24 months   EE               PAKISTAN                       4              1       12     379
0-24 months   EE               PAKISTAN                       5              0        0     379
0-24 months   EE               PAKISTAN                       5              1        0     379
0-24 months   EE               PAKISTAN                       6              0        0     379
0-24 months   EE               PAKISTAN                       6              1        0     379
0-24 months   EE               PAKISTAN                       7              0        0     379
0-24 months   EE               PAKISTAN                       7              1        0     379
0-24 months   EE               PAKISTAN                       8              0        0     379
0-24 months   EE               PAKISTAN                       8              1        0     379
0-24 months   EE               PAKISTAN                       9              0        0     379
0-24 months   EE               PAKISTAN                       9              1        0     379
0-24 months   EE               PAKISTAN                       10             0        0     379
0-24 months   EE               PAKISTAN                       10             1        0     379
0-24 months   EE               PAKISTAN                       11             0       31     379
0-24 months   EE               PAKISTAN                       11             1       29     379
0-24 months   EE               PAKISTAN                       12             0       47     379
0-24 months   EE               PAKISTAN                       12             1       37     379
0-24 months   GMS-Nepal        NEPAL                          1              0        0     686
0-24 months   GMS-Nepal        NEPAL                          1              1        0     686
0-24 months   GMS-Nepal        NEPAL                          2              0        0     686
0-24 months   GMS-Nepal        NEPAL                          2              1        0     686
0-24 months   GMS-Nepal        NEPAL                          3              0        0     686
0-24 months   GMS-Nepal        NEPAL                          3              1        0     686
0-24 months   GMS-Nepal        NEPAL                          4              0        0     686
0-24 months   GMS-Nepal        NEPAL                          4              1        1     686
0-24 months   GMS-Nepal        NEPAL                          5              0        0     686
0-24 months   GMS-Nepal        NEPAL                          5              1        0     686
0-24 months   GMS-Nepal        NEPAL                          6              0      113     686
0-24 months   GMS-Nepal        NEPAL                          6              1       44     686
0-24 months   GMS-Nepal        NEPAL                          7              0      183     686
0-24 months   GMS-Nepal        NEPAL                          7              1       76     686
0-24 months   GMS-Nepal        NEPAL                          8              0      188     686
0-24 months   GMS-Nepal        NEPAL                          8              1       81     686
0-24 months   GMS-Nepal        NEPAL                          9              0        0     686
0-24 months   GMS-Nepal        NEPAL                          9              1        0     686
0-24 months   GMS-Nepal        NEPAL                          10             0        0     686
0-24 months   GMS-Nepal        NEPAL                          10             1        0     686
0-24 months   GMS-Nepal        NEPAL                          11             0        0     686
0-24 months   GMS-Nepal        NEPAL                          11             1        0     686
0-24 months   GMS-Nepal        NEPAL                          12             0        0     686
0-24 months   GMS-Nepal        NEPAL                          12             1        0     686
0-24 months   Guatemala BSC    GUATEMALA                      1              0       18     315
0-24 months   Guatemala BSC    GUATEMALA                      1              1        1     315
0-24 months   Guatemala BSC    GUATEMALA                      2              0       19     315
0-24 months   Guatemala BSC    GUATEMALA                      2              1        1     315
0-24 months   Guatemala BSC    GUATEMALA                      3              0       20     315
0-24 months   Guatemala BSC    GUATEMALA                      3              1        2     315
0-24 months   Guatemala BSC    GUATEMALA                      4              0       24     315
0-24 months   Guatemala BSC    GUATEMALA                      4              1        5     315
0-24 months   Guatemala BSC    GUATEMALA                      5              0       31     315
0-24 months   Guatemala BSC    GUATEMALA                      5              1        2     315
0-24 months   Guatemala BSC    GUATEMALA                      6              0       35     315
0-24 months   Guatemala BSC    GUATEMALA                      6              1        4     315
0-24 months   Guatemala BSC    GUATEMALA                      7              0       25     315
0-24 months   Guatemala BSC    GUATEMALA                      7              1        0     315
0-24 months   Guatemala BSC    GUATEMALA                      8              0       16     315
0-24 months   Guatemala BSC    GUATEMALA                      8              1        3     315
0-24 months   Guatemala BSC    GUATEMALA                      9              0       33     315
0-24 months   Guatemala BSC    GUATEMALA                      9              1        2     315
0-24 months   Guatemala BSC    GUATEMALA                      10             0       32     315
0-24 months   Guatemala BSC    GUATEMALA                      10             1        1     315
0-24 months   Guatemala BSC    GUATEMALA                      11             0       29     315
0-24 months   Guatemala BSC    GUATEMALA                      11             1        2     315
0-24 months   Guatemala BSC    GUATEMALA                      12             0       10     315
0-24 months   Guatemala BSC    GUATEMALA                      12             1        0     315
0-24 months   iLiNS-Zinc       BURKINA FASO                   1              0      214    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   1              1       25    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   2              0      179    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   2              1       29    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   3              0      184    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   3              1       30    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   4              0      159    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   4              1       24    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   5              0      221    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   5              1       36    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   6              0      321    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   6              1       45    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   7              0      362    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   7              1       49    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   8              0      315    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   8              1       46    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   9              0      256    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   9              1       39    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   10             0      336    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   10             1       36    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   11             0      173    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   11             1       24    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   12             0      138    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   12             1       24    3265
0-24 months   IRC              INDIA                          1              0       26     410
0-24 months   IRC              INDIA                          1              1        9     410
0-24 months   IRC              INDIA                          2              0       26     410
0-24 months   IRC              INDIA                          2              1        4     410
0-24 months   IRC              INDIA                          3              0       26     410
0-24 months   IRC              INDIA                          3              1        3     410
0-24 months   IRC              INDIA                          4              0       19     410
0-24 months   IRC              INDIA                          4              1        5     410
0-24 months   IRC              INDIA                          5              0       14     410
0-24 months   IRC              INDIA                          5              1        7     410
0-24 months   IRC              INDIA                          6              0       29     410
0-24 months   IRC              INDIA                          6              1        6     410
0-24 months   IRC              INDIA                          7              0       30     410
0-24 months   IRC              INDIA                          7              1        6     410
0-24 months   IRC              INDIA                          8              0       35     410
0-24 months   IRC              INDIA                          8              1        6     410
0-24 months   IRC              INDIA                          9              0       22     410
0-24 months   IRC              INDIA                          9              1        8     410
0-24 months   IRC              INDIA                          10             0       33     410
0-24 months   IRC              INDIA                          10             1        6     410
0-24 months   IRC              INDIA                          11             0       36     410
0-24 months   IRC              INDIA                          11             1        5     410
0-24 months   IRC              INDIA                          12             0       38     410
0-24 months   IRC              INDIA                          12             1       11     410
0-24 months   JiVitA-3         BANGLADESH                     1              0     2334   26923
0-24 months   JiVitA-3         BANGLADESH                     1              1      215   26923
0-24 months   JiVitA-3         BANGLADESH                     2              0     1956   26923
0-24 months   JiVitA-3         BANGLADESH                     2              1      172   26923
0-24 months   JiVitA-3         BANGLADESH                     3              0     2289   26923
0-24 months   JiVitA-3         BANGLADESH                     3              1      168   26923
0-24 months   JiVitA-3         BANGLADESH                     4              0     1678   26923
0-24 months   JiVitA-3         BANGLADESH                     4              1      169   26923
0-24 months   JiVitA-3         BANGLADESH                     5              0     1245   26923
0-24 months   JiVitA-3         BANGLADESH                     5              1      158   26923
0-24 months   JiVitA-3         BANGLADESH                     6              0     1207   26923
0-24 months   JiVitA-3         BANGLADESH                     6              1      147   26923
0-24 months   JiVitA-3         BANGLADESH                     7              0     1382   26923
0-24 months   JiVitA-3         BANGLADESH                     7              1      158   26923
0-24 months   JiVitA-3         BANGLADESH                     8              0     1823   26923
0-24 months   JiVitA-3         BANGLADESH                     8              1      172   26923
0-24 months   JiVitA-3         BANGLADESH                     9              0     2393   26923
0-24 months   JiVitA-3         BANGLADESH                     9              1      218   26923
0-24 months   JiVitA-3         BANGLADESH                     10             0     2673   26923
0-24 months   JiVitA-3         BANGLADESH                     10             1      270   26923
0-24 months   JiVitA-3         BANGLADESH                     11             0     2657   26923
0-24 months   JiVitA-3         BANGLADESH                     11             1      264   26923
0-24 months   JiVitA-3         BANGLADESH                     12             0     2894   26923
0-24 months   JiVitA-3         BANGLADESH                     12             1      281   26923
0-24 months   JiVitA-4         BANGLADESH                     1              0       51    5442
0-24 months   JiVitA-4         BANGLADESH                     1              1        7    5442
0-24 months   JiVitA-4         BANGLADESH                     2              0      325    5442
0-24 months   JiVitA-4         BANGLADESH                     2              1       40    5442
0-24 months   JiVitA-4         BANGLADESH                     3              0      396    5442
0-24 months   JiVitA-4         BANGLADESH                     3              1       76    5442
0-24 months   JiVitA-4         BANGLADESH                     4              0      750    5442
0-24 months   JiVitA-4         BANGLADESH                     4              1      182    5442
0-24 months   JiVitA-4         BANGLADESH                     5              0      513    5442
0-24 months   JiVitA-4         BANGLADESH                     5              1      112    5442
0-24 months   JiVitA-4         BANGLADESH                     6              0      379    5442
0-24 months   JiVitA-4         BANGLADESH                     6              1       81    5442
0-24 months   JiVitA-4         BANGLADESH                     7              0      725    5442
0-24 months   JiVitA-4         BANGLADESH                     7              1      166    5442
0-24 months   JiVitA-4         BANGLADESH                     8              0      466    5442
0-24 months   JiVitA-4         BANGLADESH                     8              1       67    5442
0-24 months   JiVitA-4         BANGLADESH                     9              0      442    5442
0-24 months   JiVitA-4         BANGLADESH                     9              1       73    5442
0-24 months   JiVitA-4         BANGLADESH                     10             0      296    5442
0-24 months   JiVitA-4         BANGLADESH                     10             1       37    5442
0-24 months   JiVitA-4         BANGLADESH                     11             0      145    5442
0-24 months   JiVitA-4         BANGLADESH                     11             1       26    5442
0-24 months   JiVitA-4         BANGLADESH                     12             0       76    5442
0-24 months   JiVitA-4         BANGLADESH                     12             1       11    5442
0-24 months   Keneba           GAMBIA                         1              0      200    2913
0-24 months   Keneba           GAMBIA                         1              1       37    2913
0-24 months   Keneba           GAMBIA                         2              0      224    2913
0-24 months   Keneba           GAMBIA                         2              1       54    2913
0-24 months   Keneba           GAMBIA                         3              0      199    2913
0-24 months   Keneba           GAMBIA                         3              1       33    2913
0-24 months   Keneba           GAMBIA                         4              0      265    2913
0-24 months   Keneba           GAMBIA                         4              1       50    2913
0-24 months   Keneba           GAMBIA                         5              0      285    2913
0-24 months   Keneba           GAMBIA                         5              1       32    2913
0-24 months   Keneba           GAMBIA                         6              0      209    2913
0-24 months   Keneba           GAMBIA                         6              1       25    2913
0-24 months   Keneba           GAMBIA                         7              0      146    2913
0-24 months   Keneba           GAMBIA                         7              1       36    2913
0-24 months   Keneba           GAMBIA                         8              0      147    2913
0-24 months   Keneba           GAMBIA                         8              1       32    2913
0-24 months   Keneba           GAMBIA                         9              0      164    2913
0-24 months   Keneba           GAMBIA                         9              1       32    2913
0-24 months   Keneba           GAMBIA                         10             0      188    2913
0-24 months   Keneba           GAMBIA                         10             1       38    2913
0-24 months   Keneba           GAMBIA                         11             0      266    2913
0-24 months   Keneba           GAMBIA                         11             1       42    2913
0-24 months   Keneba           GAMBIA                         12             0      188    2913
0-24 months   Keneba           GAMBIA                         12             1       21    2913
0-24 months   LCNI-5           MALAWI                         1              0       51     840
0-24 months   LCNI-5           MALAWI                         1              1        4     840
0-24 months   LCNI-5           MALAWI                         2              0      110     840
0-24 months   LCNI-5           MALAWI                         2              1        5     840
0-24 months   LCNI-5           MALAWI                         3              0       90     840
0-24 months   LCNI-5           MALAWI                         3              1        8     840
0-24 months   LCNI-5           MALAWI                         4              0      106     840
0-24 months   LCNI-5           MALAWI                         4              1        4     840
0-24 months   LCNI-5           MALAWI                         5              0      107     840
0-24 months   LCNI-5           MALAWI                         5              1        4     840
0-24 months   LCNI-5           MALAWI                         6              0       84     840
0-24 months   LCNI-5           MALAWI                         6              1        7     840
0-24 months   LCNI-5           MALAWI                         7              0       69     840
0-24 months   LCNI-5           MALAWI                         7              1        3     840
0-24 months   LCNI-5           MALAWI                         8              0       40     840
0-24 months   LCNI-5           MALAWI                         8              1        1     840
0-24 months   LCNI-5           MALAWI                         9              0       26     840
0-24 months   LCNI-5           MALAWI                         9              1        3     840
0-24 months   LCNI-5           MALAWI                         10             0       35     840
0-24 months   LCNI-5           MALAWI                         10             1        0     840
0-24 months   LCNI-5           MALAWI                         11             0       47     840
0-24 months   LCNI-5           MALAWI                         11             1        2     840
0-24 months   LCNI-5           MALAWI                         12             0       32     840
0-24 months   LCNI-5           MALAWI                         12             1        2     840
0-24 months   MAL-ED           BANGLADESH                     1              0       20     263
0-24 months   MAL-ED           BANGLADESH                     1              1        2     263
0-24 months   MAL-ED           BANGLADESH                     2              0       18     263
0-24 months   MAL-ED           BANGLADESH                     2              1        6     263
0-24 months   MAL-ED           BANGLADESH                     3              0       20     263
0-24 months   MAL-ED           BANGLADESH                     3              1        6     263
0-24 months   MAL-ED           BANGLADESH                     4              0       22     263
0-24 months   MAL-ED           BANGLADESH                     4              1        2     263
0-24 months   MAL-ED           BANGLADESH                     5              0       15     263
0-24 months   MAL-ED           BANGLADESH                     5              1        3     263
0-24 months   MAL-ED           BANGLADESH                     6              0       12     263
0-24 months   MAL-ED           BANGLADESH                     6              1        1     263
0-24 months   MAL-ED           BANGLADESH                     7              0       13     263
0-24 months   MAL-ED           BANGLADESH                     7              1        5     263
0-24 months   MAL-ED           BANGLADESH                     8              0       28     263
0-24 months   MAL-ED           BANGLADESH                     8              1        1     263
0-24 months   MAL-ED           BANGLADESH                     9              0       16     263
0-24 months   MAL-ED           BANGLADESH                     9              1        6     263
0-24 months   MAL-ED           BANGLADESH                     10             0       20     263
0-24 months   MAL-ED           BANGLADESH                     10             1        3     263
0-24 months   MAL-ED           BANGLADESH                     11             0       14     263
0-24 months   MAL-ED           BANGLADESH                     11             1        2     263
0-24 months   MAL-ED           BANGLADESH                     12             0       26     263
0-24 months   MAL-ED           BANGLADESH                     12             1        2     263
0-24 months   MAL-ED           BRAZIL                         1              0       15     233
0-24 months   MAL-ED           BRAZIL                         1              1        0     233
0-24 months   MAL-ED           BRAZIL                         2              0       25     233
0-24 months   MAL-ED           BRAZIL                         2              1        0     233
0-24 months   MAL-ED           BRAZIL                         3              0       18     233
0-24 months   MAL-ED           BRAZIL                         3              1        0     233
0-24 months   MAL-ED           BRAZIL                         4              0       14     233
0-24 months   MAL-ED           BRAZIL                         4              1        0     233
0-24 months   MAL-ED           BRAZIL                         5              0       18     233
0-24 months   MAL-ED           BRAZIL                         5              1        0     233
0-24 months   MAL-ED           BRAZIL                         6              0       16     233
0-24 months   MAL-ED           BRAZIL                         6              1        0     233
0-24 months   MAL-ED           BRAZIL                         7              0       18     233
0-24 months   MAL-ED           BRAZIL                         7              1        0     233
0-24 months   MAL-ED           BRAZIL                         8              0       17     233
0-24 months   MAL-ED           BRAZIL                         8              1        1     233
0-24 months   MAL-ED           BRAZIL                         9              0       24     233
0-24 months   MAL-ED           BRAZIL                         9              1        1     233
0-24 months   MAL-ED           BRAZIL                         10             0       27     233
0-24 months   MAL-ED           BRAZIL                         10             1        0     233
0-24 months   MAL-ED           BRAZIL                         11             0       19     233
0-24 months   MAL-ED           BRAZIL                         11             1        0     233
0-24 months   MAL-ED           BRAZIL                         12             0       19     233
0-24 months   MAL-ED           BRAZIL                         12             1        1     233
0-24 months   MAL-ED           INDIA                          1              0       14     251
0-24 months   MAL-ED           INDIA                          1              1        2     251
0-24 months   MAL-ED           INDIA                          2              0       23     251
0-24 months   MAL-ED           INDIA                          2              1        3     251
0-24 months   MAL-ED           INDIA                          3              0       19     251
0-24 months   MAL-ED           INDIA                          3              1        2     251
0-24 months   MAL-ED           INDIA                          4              0       14     251
0-24 months   MAL-ED           INDIA                          4              1        7     251
0-24 months   MAL-ED           INDIA                          5              0        5     251
0-24 months   MAL-ED           INDIA                          5              1        3     251
0-24 months   MAL-ED           INDIA                          6              0       17     251
0-24 months   MAL-ED           INDIA                          6              1        2     251
0-24 months   MAL-ED           INDIA                          7              0       15     251
0-24 months   MAL-ED           INDIA                          7              1        6     251
0-24 months   MAL-ED           INDIA                          8              0       17     251
0-24 months   MAL-ED           INDIA                          8              1        8     251
0-24 months   MAL-ED           INDIA                          9              0       18     251
0-24 months   MAL-ED           INDIA                          9              1        5     251
0-24 months   MAL-ED           INDIA                          10             0       20     251
0-24 months   MAL-ED           INDIA                          10             1        5     251
0-24 months   MAL-ED           INDIA                          11             0       16     251
0-24 months   MAL-ED           INDIA                          11             1        8     251
0-24 months   MAL-ED           INDIA                          12             0       19     251
0-24 months   MAL-ED           INDIA                          12             1        3     251
0-24 months   MAL-ED           NEPAL                          1              0       18     240
0-24 months   MAL-ED           NEPAL                          1              1        2     240
0-24 months   MAL-ED           NEPAL                          2              0       16     240
0-24 months   MAL-ED           NEPAL                          2              1        4     240
0-24 months   MAL-ED           NEPAL                          3              0       19     240
0-24 months   MAL-ED           NEPAL                          3              1        1     240
0-24 months   MAL-ED           NEPAL                          4              0       16     240
0-24 months   MAL-ED           NEPAL                          4              1        4     240
0-24 months   MAL-ED           NEPAL                          5              0       17     240
0-24 months   MAL-ED           NEPAL                          5              1        3     240
0-24 months   MAL-ED           NEPAL                          6              0       17     240
0-24 months   MAL-ED           NEPAL                          6              1        3     240
0-24 months   MAL-ED           NEPAL                          7              0       20     240
0-24 months   MAL-ED           NEPAL                          7              1        0     240
0-24 months   MAL-ED           NEPAL                          8              0       17     240
0-24 months   MAL-ED           NEPAL                          8              1        3     240
0-24 months   MAL-ED           NEPAL                          9              0       20     240
0-24 months   MAL-ED           NEPAL                          9              1        0     240
0-24 months   MAL-ED           NEPAL                          10             0       19     240
0-24 months   MAL-ED           NEPAL                          10             1        1     240
0-24 months   MAL-ED           NEPAL                          11             0       20     240
0-24 months   MAL-ED           NEPAL                          11             1        0     240
0-24 months   MAL-ED           NEPAL                          12             0       19     240
0-24 months   MAL-ED           NEPAL                          12             1        1     240
0-24 months   MAL-ED           PERU                           1              0       34     302
0-24 months   MAL-ED           PERU                           1              1        3     302
0-24 months   MAL-ED           PERU                           2              0       27     302
0-24 months   MAL-ED           PERU                           2              1        3     302
0-24 months   MAL-ED           PERU                           3              0       22     302
0-24 months   MAL-ED           PERU                           3              1        1     302
0-24 months   MAL-ED           PERU                           4              0       19     302
0-24 months   MAL-ED           PERU                           4              1        0     302
0-24 months   MAL-ED           PERU                           5              0       24     302
0-24 months   MAL-ED           PERU                           5              1        1     302
0-24 months   MAL-ED           PERU                           6              0       21     302
0-24 months   MAL-ED           PERU                           6              1        1     302
0-24 months   MAL-ED           PERU                           7              0       24     302
0-24 months   MAL-ED           PERU                           7              1        0     302
0-24 months   MAL-ED           PERU                           8              0       18     302
0-24 months   MAL-ED           PERU                           8              1        1     302
0-24 months   MAL-ED           PERU                           9              0       21     302
0-24 months   MAL-ED           PERU                           9              1        1     302
0-24 months   MAL-ED           PERU                           10             0       25     302
0-24 months   MAL-ED           PERU                           10             1        0     302
0-24 months   MAL-ED           PERU                           11             0       36     302
0-24 months   MAL-ED           PERU                           11             1        1     302
0-24 months   MAL-ED           PERU                           12             0       19     302
0-24 months   MAL-ED           PERU                           12             1        0     302
0-24 months   MAL-ED           SOUTH AFRICA                   1              0       29     312
0-24 months   MAL-ED           SOUTH AFRICA                   1              1        8     312
0-24 months   MAL-ED           SOUTH AFRICA                   2              0       39     312
0-24 months   MAL-ED           SOUTH AFRICA                   2              1        1     312
0-24 months   MAL-ED           SOUTH AFRICA                   3              0       21     312
0-24 months   MAL-ED           SOUTH AFRICA                   3              1        0     312
0-24 months   MAL-ED           SOUTH AFRICA                   4              0       12     312
0-24 months   MAL-ED           SOUTH AFRICA                   4              1        1     312
0-24 months   MAL-ED           SOUTH AFRICA                   5              0       12     312
0-24 months   MAL-ED           SOUTH AFRICA                   5              1        0     312
0-24 months   MAL-ED           SOUTH AFRICA                   6              0       24     312
0-24 months   MAL-ED           SOUTH AFRICA                   6              1        0     312
0-24 months   MAL-ED           SOUTH AFRICA                   7              0       28     312
0-24 months   MAL-ED           SOUTH AFRICA                   7              1        1     312
0-24 months   MAL-ED           SOUTH AFRICA                   8              0       12     312
0-24 months   MAL-ED           SOUTH AFRICA                   8              1        0     312
0-24 months   MAL-ED           SOUTH AFRICA                   9              0       21     312
0-24 months   MAL-ED           SOUTH AFRICA                   9              1        1     312
0-24 months   MAL-ED           SOUTH AFRICA                   10             0       26     312
0-24 months   MAL-ED           SOUTH AFRICA                   10             1        3     312
0-24 months   MAL-ED           SOUTH AFRICA                   11             0       31     312
0-24 months   MAL-ED           SOUTH AFRICA                   11             1        3     312
0-24 months   MAL-ED           SOUTH AFRICA                   12             0       34     312
0-24 months   MAL-ED           SOUTH AFRICA                   12             1        5     312
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              0       17     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1        6     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              0       23     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              1        5     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              0       22     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              1        2     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              0       10     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              1        1     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              0       16     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              1        0     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              0       15     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              1        1     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              0       28     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              1        0     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              0       11     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              1        1     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              0       19     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              1        0     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             0       21     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             1        0     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             0       25     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             1        4     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             0       31     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             1        3     261
0-24 months   NIH-Birth        BANGLADESH                     1              0       49     624
0-24 months   NIH-Birth        BANGLADESH                     1              1       19     624
0-24 months   NIH-Birth        BANGLADESH                     2              0       47     624
0-24 months   NIH-Birth        BANGLADESH                     2              1       13     624
0-24 months   NIH-Birth        BANGLADESH                     3              0       50     624
0-24 months   NIH-Birth        BANGLADESH                     3              1       11     624
0-24 months   NIH-Birth        BANGLADESH                     4              0       42     624
0-24 months   NIH-Birth        BANGLADESH                     4              1       10     624
0-24 months   NIH-Birth        BANGLADESH                     5              0       37     624
0-24 months   NIH-Birth        BANGLADESH                     5              1       10     624
0-24 months   NIH-Birth        BANGLADESH                     6              0       39     624
0-24 months   NIH-Birth        BANGLADESH                     6              1        8     624
0-24 months   NIH-Birth        BANGLADESH                     7              0       35     624
0-24 months   NIH-Birth        BANGLADESH                     7              1       13     624
0-24 months   NIH-Birth        BANGLADESH                     8              0       28     624
0-24 months   NIH-Birth        BANGLADESH                     8              1       14     624
0-24 months   NIH-Birth        BANGLADESH                     9              0       27     624
0-24 months   NIH-Birth        BANGLADESH                     9              1        6     624
0-24 months   NIH-Birth        BANGLADESH                     10             0       51     624
0-24 months   NIH-Birth        BANGLADESH                     10             1        9     624
0-24 months   NIH-Birth        BANGLADESH                     11             0       39     624
0-24 months   NIH-Birth        BANGLADESH                     11             1       13     624
0-24 months   NIH-Birth        BANGLADESH                     12             0       43     624
0-24 months   NIH-Birth        BANGLADESH                     12             1       11     624
0-24 months   PROBIT           BELARUS                        1              0     1183   16897
0-24 months   PROBIT           BELARUS                        1              1        1   16897
0-24 months   PROBIT           BELARUS                        2              0     1004   16897
0-24 months   PROBIT           BELARUS                        2              1        1   16897
0-24 months   PROBIT           BELARUS                        3              0     1185   16897
0-24 months   PROBIT           BELARUS                        3              1        0   16897
0-24 months   PROBIT           BELARUS                        4              0     1127   16897
0-24 months   PROBIT           BELARUS                        4              1        3   16897
0-24 months   PROBIT           BELARUS                        5              0     1152   16897
0-24 months   PROBIT           BELARUS                        5              1        0   16897
0-24 months   PROBIT           BELARUS                        6              0     1220   16897
0-24 months   PROBIT           BELARUS                        6              1        0   16897
0-24 months   PROBIT           BELARUS                        7              0     1473   16897
0-24 months   PROBIT           BELARUS                        7              1        1   16897
0-24 months   PROBIT           BELARUS                        8              0     1616   16897
0-24 months   PROBIT           BELARUS                        8              1        1   16897
0-24 months   PROBIT           BELARUS                        9              0     1587   16897
0-24 months   PROBIT           BELARUS                        9              1        3   16897
0-24 months   PROBIT           BELARUS                        10             0     1805   16897
0-24 months   PROBIT           BELARUS                        10             1        0   16897
0-24 months   PROBIT           BELARUS                        11             0     1706   16897
0-24 months   PROBIT           BELARUS                        11             1        3   16897
0-24 months   PROBIT           BELARUS                        12             0     1821   16897
0-24 months   PROBIT           BELARUS                        12             1        5   16897
0-24 months   ResPak           PAKISTAN                       1              0        2     284
0-24 months   ResPak           PAKISTAN                       1              1        1     284
0-24 months   ResPak           PAKISTAN                       2              0        8     284
0-24 months   ResPak           PAKISTAN                       2              1        2     284
0-24 months   ResPak           PAKISTAN                       3              0       11     284
0-24 months   ResPak           PAKISTAN                       3              1        1     284
0-24 months   ResPak           PAKISTAN                       4              0       16     284
0-24 months   ResPak           PAKISTAN                       4              1        5     284
0-24 months   ResPak           PAKISTAN                       5              0       31     284
0-24 months   ResPak           PAKISTAN                       5              1        5     284
0-24 months   ResPak           PAKISTAN                       6              0       38     284
0-24 months   ResPak           PAKISTAN                       6              1       11     284
0-24 months   ResPak           PAKISTAN                       7              0       44     284
0-24 months   ResPak           PAKISTAN                       7              1        3     284
0-24 months   ResPak           PAKISTAN                       8              0       25     284
0-24 months   ResPak           PAKISTAN                       8              1        7     284
0-24 months   ResPak           PAKISTAN                       9              0       40     284
0-24 months   ResPak           PAKISTAN                       9              1        6     284
0-24 months   ResPak           PAKISTAN                       10             0       16     284
0-24 months   ResPak           PAKISTAN                       10             1        0     284
0-24 months   ResPak           PAKISTAN                       11             0        6     284
0-24 months   ResPak           PAKISTAN                       11             1        1     284
0-24 months   ResPak           PAKISTAN                       12             0        5     284
0-24 months   ResPak           PAKISTAN                       12             1        0     284
0-24 months   SAS-CompFeed     INDIA                          1              0       82    1513
0-24 months   SAS-CompFeed     INDIA                          1              1       26    1513
0-24 months   SAS-CompFeed     INDIA                          2              0       73    1513
0-24 months   SAS-CompFeed     INDIA                          2              1       19    1513
0-24 months   SAS-CompFeed     INDIA                          3              0       71    1513
0-24 months   SAS-CompFeed     INDIA                          3              1       17    1513
0-24 months   SAS-CompFeed     INDIA                          4              0       65    1513
0-24 months   SAS-CompFeed     INDIA                          4              1       20    1513
0-24 months   SAS-CompFeed     INDIA                          5              0       65    1513
0-24 months   SAS-CompFeed     INDIA                          5              1       24    1513
0-24 months   SAS-CompFeed     INDIA                          6              0       92    1513
0-24 months   SAS-CompFeed     INDIA                          6              1       24    1513
0-24 months   SAS-CompFeed     INDIA                          7              0       93    1513
0-24 months   SAS-CompFeed     INDIA                          7              1       33    1513
0-24 months   SAS-CompFeed     INDIA                          8              0      124    1513
0-24 months   SAS-CompFeed     INDIA                          8              1       45    1513
0-24 months   SAS-CompFeed     INDIA                          9              0      142    1513
0-24 months   SAS-CompFeed     INDIA                          9              1       42    1513
0-24 months   SAS-CompFeed     INDIA                          10             0      128    1513
0-24 months   SAS-CompFeed     INDIA                          10             1       36    1513
0-24 months   SAS-CompFeed     INDIA                          11             0      104    1513
0-24 months   SAS-CompFeed     INDIA                          11             1       41    1513
0-24 months   SAS-CompFeed     INDIA                          12             0      123    1513
0-24 months   SAS-CompFeed     INDIA                          12             1       24    1513
0-24 months   SAS-FoodSuppl    INDIA                          1              0       38     418
0-24 months   SAS-FoodSuppl    INDIA                          1              1       27     418
0-24 months   SAS-FoodSuppl    INDIA                          2              0       29     418
0-24 months   SAS-FoodSuppl    INDIA                          2              1       12     418
0-24 months   SAS-FoodSuppl    INDIA                          3              0       24     418
0-24 months   SAS-FoodSuppl    INDIA                          3              1       16     418
0-24 months   SAS-FoodSuppl    INDIA                          4              0       17     418
0-24 months   SAS-FoodSuppl    INDIA                          4              1       13     418
0-24 months   SAS-FoodSuppl    INDIA                          5              0       18     418
0-24 months   SAS-FoodSuppl    INDIA                          5              1       13     418
0-24 months   SAS-FoodSuppl    INDIA                          6              0       21     418
0-24 months   SAS-FoodSuppl    INDIA                          6              1       13     418
0-24 months   SAS-FoodSuppl    INDIA                          7              0       12     418
0-24 months   SAS-FoodSuppl    INDIA                          7              1        6     418
0-24 months   SAS-FoodSuppl    INDIA                          8              0        0     418
0-24 months   SAS-FoodSuppl    INDIA                          8              1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          9              0        7     418
0-24 months   SAS-FoodSuppl    INDIA                          9              1        6     418
0-24 months   SAS-FoodSuppl    INDIA                          10             0       20     418
0-24 months   SAS-FoodSuppl    INDIA                          10             1       10     418
0-24 months   SAS-FoodSuppl    INDIA                          11             0       35     418
0-24 months   SAS-FoodSuppl    INDIA                          11             1       16     418
0-24 months   SAS-FoodSuppl    INDIA                          12             0       42     418
0-24 months   SAS-FoodSuppl    INDIA                          12             1       23     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      217    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       15    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0      150    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1        9    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              0      179    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              1        7    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              0      153    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              1        8    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              0      195    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              1        4    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              0      163    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              1       10    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              0      165    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              1        8    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              0      184    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              1       11    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              0      217    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              1       13    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             0      219    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             1       10    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             0      215    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             1       12    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             0      220    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             1       12    2396
0-24 months   ZVITAMBO         ZIMBABWE                       1              0     1298   13942
0-24 months   ZVITAMBO         ZIMBABWE                       1              1       55   13942
0-24 months   ZVITAMBO         ZIMBABWE                       2              0      996   13942
0-24 months   ZVITAMBO         ZIMBABWE                       2              1       48   13942
0-24 months   ZVITAMBO         ZIMBABWE                       3              0     1086   13942
0-24 months   ZVITAMBO         ZIMBABWE                       3              1       60   13942
0-24 months   ZVITAMBO         ZIMBABWE                       4              0      992   13942
0-24 months   ZVITAMBO         ZIMBABWE                       4              1       38   13942
0-24 months   ZVITAMBO         ZIMBABWE                       5              0      964   13942
0-24 months   ZVITAMBO         ZIMBABWE                       5              1       56   13942
0-24 months   ZVITAMBO         ZIMBABWE                       6              0     1096   13942
0-24 months   ZVITAMBO         ZIMBABWE                       6              1       50   13942
0-24 months   ZVITAMBO         ZIMBABWE                       7              0     1125   13942
0-24 months   ZVITAMBO         ZIMBABWE                       7              1       51   13942
0-24 months   ZVITAMBO         ZIMBABWE                       8              0     1191   13942
0-24 months   ZVITAMBO         ZIMBABWE                       8              1       40   13942
0-24 months   ZVITAMBO         ZIMBABWE                       9              0     1289   13942
0-24 months   ZVITAMBO         ZIMBABWE                       9              1       34   13942
0-24 months   ZVITAMBO         ZIMBABWE                       10             0     1006   13942
0-24 months   ZVITAMBO         ZIMBABWE                       10             1       48   13942
0-24 months   ZVITAMBO         ZIMBABWE                       11             0     1099   13942
0-24 months   ZVITAMBO         ZIMBABWE                       11             1       48   13942
0-24 months   ZVITAMBO         ZIMBABWE                       12             0     1209   13942
0-24 months   ZVITAMBO         ZIMBABWE                       12             1       63   13942
0-6 months    CMC-V-BCS-2002   INDIA                          1              0       23     368
0-6 months    CMC-V-BCS-2002   INDIA                          1              1        4     368
0-6 months    CMC-V-BCS-2002   INDIA                          2              0       21     368
0-6 months    CMC-V-BCS-2002   INDIA                          2              1        3     368
0-6 months    CMC-V-BCS-2002   INDIA                          3              0       23     368
0-6 months    CMC-V-BCS-2002   INDIA                          3              1        3     368
0-6 months    CMC-V-BCS-2002   INDIA                          4              0       28     368
0-6 months    CMC-V-BCS-2002   INDIA                          4              1        1     368
0-6 months    CMC-V-BCS-2002   INDIA                          5              0       40     368
0-6 months    CMC-V-BCS-2002   INDIA                          5              1        2     368
0-6 months    CMC-V-BCS-2002   INDIA                          6              0       34     368
0-6 months    CMC-V-BCS-2002   INDIA                          6              1        2     368
0-6 months    CMC-V-BCS-2002   INDIA                          7              0       32     368
0-6 months    CMC-V-BCS-2002   INDIA                          7              1        1     368
0-6 months    CMC-V-BCS-2002   INDIA                          8              0       38     368
0-6 months    CMC-V-BCS-2002   INDIA                          8              1        2     368
0-6 months    CMC-V-BCS-2002   INDIA                          9              0       17     368
0-6 months    CMC-V-BCS-2002   INDIA                          9              1        5     368
0-6 months    CMC-V-BCS-2002   INDIA                          10             0       19     368
0-6 months    CMC-V-BCS-2002   INDIA                          10             1        0     368
0-6 months    CMC-V-BCS-2002   INDIA                          11             0       37     368
0-6 months    CMC-V-BCS-2002   INDIA                          11             1        4     368
0-6 months    CMC-V-BCS-2002   INDIA                          12             0       25     368
0-6 months    CMC-V-BCS-2002   INDIA                          12             1        4     368
0-6 months    CMIN             BANGLADESH                     1              0       25     271
0-6 months    CMIN             BANGLADESH                     1              1        3     271
0-6 months    CMIN             BANGLADESH                     2              0       32     271
0-6 months    CMIN             BANGLADESH                     2              1        2     271
0-6 months    CMIN             BANGLADESH                     3              0       20     271
0-6 months    CMIN             BANGLADESH                     3              1        0     271
0-6 months    CMIN             BANGLADESH                     4              0       19     271
0-6 months    CMIN             BANGLADESH                     4              1        1     271
0-6 months    CMIN             BANGLADESH                     5              0       20     271
0-6 months    CMIN             BANGLADESH                     5              1        1     271
0-6 months    CMIN             BANGLADESH                     6              0       23     271
0-6 months    CMIN             BANGLADESH                     6              1        2     271
0-6 months    CMIN             BANGLADESH                     7              0       13     271
0-6 months    CMIN             BANGLADESH                     7              1        0     271
0-6 months    CMIN             BANGLADESH                     8              0       14     271
0-6 months    CMIN             BANGLADESH                     8              1        1     271
0-6 months    CMIN             BANGLADESH                     9              0       19     271
0-6 months    CMIN             BANGLADESH                     9              1        2     271
0-6 months    CMIN             BANGLADESH                     10             0       22     271
0-6 months    CMIN             BANGLADESH                     10             1        1     271
0-6 months    CMIN             BANGLADESH                     11             0        4     271
0-6 months    CMIN             BANGLADESH                     11             1        0     271
0-6 months    CMIN             BANGLADESH                     12             0       45     271
0-6 months    CMIN             BANGLADESH                     12             1        2     271
0-6 months    CONTENT          PERU                           1              0        9     215
0-6 months    CONTENT          PERU                           1              1        0     215
0-6 months    CONTENT          PERU                           2              0       13     215
0-6 months    CONTENT          PERU                           2              1        0     215
0-6 months    CONTENT          PERU                           3              0       27     215
0-6 months    CONTENT          PERU                           3              1        0     215
0-6 months    CONTENT          PERU                           4              0       18     215
0-6 months    CONTENT          PERU                           4              1        0     215
0-6 months    CONTENT          PERU                           5              0       25     215
0-6 months    CONTENT          PERU                           5              1        0     215
0-6 months    CONTENT          PERU                           6              0       14     215
0-6 months    CONTENT          PERU                           6              1        0     215
0-6 months    CONTENT          PERU                           7              0       16     215
0-6 months    CONTENT          PERU                           7              1        0     215
0-6 months    CONTENT          PERU                           8              0       26     215
0-6 months    CONTENT          PERU                           8              1        0     215
0-6 months    CONTENT          PERU                           9              0       19     215
0-6 months    CONTENT          PERU                           9              1        0     215
0-6 months    CONTENT          PERU                           10             0       23     215
0-6 months    CONTENT          PERU                           10             1        0     215
0-6 months    CONTENT          PERU                           11             0       18     215
0-6 months    CONTENT          PERU                           11             1        0     215
0-6 months    CONTENT          PERU                           12             0        7     215
0-6 months    CONTENT          PERU                           12             1        0     215
0-6 months    EE               PAKISTAN                       1              0       75     379
0-6 months    EE               PAKISTAN                       1              1       19     379
0-6 months    EE               PAKISTAN                       2              0       67     379
0-6 months    EE               PAKISTAN                       2              1        6     379
0-6 months    EE               PAKISTAN                       3              0       37     379
0-6 months    EE               PAKISTAN                       3              1        9     379
0-6 months    EE               PAKISTAN                       4              0       21     379
0-6 months    EE               PAKISTAN                       4              1        1     379
0-6 months    EE               PAKISTAN                       5              0        0     379
0-6 months    EE               PAKISTAN                       5              1        0     379
0-6 months    EE               PAKISTAN                       6              0        0     379
0-6 months    EE               PAKISTAN                       6              1        0     379
0-6 months    EE               PAKISTAN                       7              0        0     379
0-6 months    EE               PAKISTAN                       7              1        0     379
0-6 months    EE               PAKISTAN                       8              0        0     379
0-6 months    EE               PAKISTAN                       8              1        0     379
0-6 months    EE               PAKISTAN                       9              0        0     379
0-6 months    EE               PAKISTAN                       9              1        0     379
0-6 months    EE               PAKISTAN                       10             0        0     379
0-6 months    EE               PAKISTAN                       10             1        0     379
0-6 months    EE               PAKISTAN                       11             0       48     379
0-6 months    EE               PAKISTAN                       11             1       12     379
0-6 months    EE               PAKISTAN                       12             0       74     379
0-6 months    EE               PAKISTAN                       12             1       10     379
0-6 months    GMS-Nepal        NEPAL                          1              0        0     686
0-6 months    GMS-Nepal        NEPAL                          1              1        0     686
0-6 months    GMS-Nepal        NEPAL                          2              0        0     686
0-6 months    GMS-Nepal        NEPAL                          2              1        0     686
0-6 months    GMS-Nepal        NEPAL                          3              0        0     686
0-6 months    GMS-Nepal        NEPAL                          3              1        0     686
0-6 months    GMS-Nepal        NEPAL                          4              0        0     686
0-6 months    GMS-Nepal        NEPAL                          4              1        1     686
0-6 months    GMS-Nepal        NEPAL                          5              0        0     686
0-6 months    GMS-Nepal        NEPAL                          5              1        0     686
0-6 months    GMS-Nepal        NEPAL                          6              0      150     686
0-6 months    GMS-Nepal        NEPAL                          6              1        7     686
0-6 months    GMS-Nepal        NEPAL                          7              0      242     686
0-6 months    GMS-Nepal        NEPAL                          7              1       17     686
0-6 months    GMS-Nepal        NEPAL                          8              0      258     686
0-6 months    GMS-Nepal        NEPAL                          8              1       11     686
0-6 months    GMS-Nepal        NEPAL                          9              0        0     686
0-6 months    GMS-Nepal        NEPAL                          9              1        0     686
0-6 months    GMS-Nepal        NEPAL                          10             0        0     686
0-6 months    GMS-Nepal        NEPAL                          10             1        0     686
0-6 months    GMS-Nepal        NEPAL                          11             0        0     686
0-6 months    GMS-Nepal        NEPAL                          11             1        0     686
0-6 months    GMS-Nepal        NEPAL                          12             0        0     686
0-6 months    GMS-Nepal        NEPAL                          12             1        0     686
0-6 months    Guatemala BSC    GUATEMALA                      1              0       18     295
0-6 months    Guatemala BSC    GUATEMALA                      1              1        0     295
0-6 months    Guatemala BSC    GUATEMALA                      2              0       19     295
0-6 months    Guatemala BSC    GUATEMALA                      2              1        1     295
0-6 months    Guatemala BSC    GUATEMALA                      3              0       21     295
0-6 months    Guatemala BSC    GUATEMALA                      3              1        0     295
0-6 months    Guatemala BSC    GUATEMALA                      4              0       22     295
0-6 months    Guatemala BSC    GUATEMALA                      4              1        3     295
0-6 months    Guatemala BSC    GUATEMALA                      5              0       27     295
0-6 months    Guatemala BSC    GUATEMALA                      5              1        0     295
0-6 months    Guatemala BSC    GUATEMALA                      6              0       35     295
0-6 months    Guatemala BSC    GUATEMALA                      6              1        2     295
0-6 months    Guatemala BSC    GUATEMALA                      7              0       25     295
0-6 months    Guatemala BSC    GUATEMALA                      7              1        0     295
0-6 months    Guatemala BSC    GUATEMALA                      8              0       17     295
0-6 months    Guatemala BSC    GUATEMALA                      8              1        1     295
0-6 months    Guatemala BSC    GUATEMALA                      9              0       31     295
0-6 months    Guatemala BSC    GUATEMALA                      9              1        0     295
0-6 months    Guatemala BSC    GUATEMALA                      10             0       32     295
0-6 months    Guatemala BSC    GUATEMALA                      10             1        0     295
0-6 months    Guatemala BSC    GUATEMALA                      11             0       30     295
0-6 months    Guatemala BSC    GUATEMALA                      11             1        1     295
0-6 months    Guatemala BSC    GUATEMALA                      12             0       10     295
0-6 months    Guatemala BSC    GUATEMALA                      12             1        0     295
0-6 months    IRC              INDIA                          1              0       32     409
0-6 months    IRC              INDIA                          1              1        3     409
0-6 months    IRC              INDIA                          2              0       28     409
0-6 months    IRC              INDIA                          2              1        2     409
0-6 months    IRC              INDIA                          3              0       29     409
0-6 months    IRC              INDIA                          3              1        0     409
0-6 months    IRC              INDIA                          4              0       23     409
0-6 months    IRC              INDIA                          4              1        1     409
0-6 months    IRC              INDIA                          5              0       18     409
0-6 months    IRC              INDIA                          5              1        2     409
0-6 months    IRC              INDIA                          6              0       33     409
0-6 months    IRC              INDIA                          6              1        2     409
0-6 months    IRC              INDIA                          7              0       32     409
0-6 months    IRC              INDIA                          7              1        4     409
0-6 months    IRC              INDIA                          8              0       41     409
0-6 months    IRC              INDIA                          8              1        0     409
0-6 months    IRC              INDIA                          9              0       29     409
0-6 months    IRC              INDIA                          9              1        1     409
0-6 months    IRC              INDIA                          10             0       36     409
0-6 months    IRC              INDIA                          10             1        3     409
0-6 months    IRC              INDIA                          11             0       41     409
0-6 months    IRC              INDIA                          11             1        0     409
0-6 months    IRC              INDIA                          12             0       42     409
0-6 months    IRC              INDIA                          12             1        7     409
0-6 months    JiVitA-3         BANGLADESH                     1              0     2431   26816
0-6 months    JiVitA-3         BANGLADESH                     1              1      108   26816
0-6 months    JiVitA-3         BANGLADESH                     2              0     2037   26816
0-6 months    JiVitA-3         BANGLADESH                     2              1       85   26816
0-6 months    JiVitA-3         BANGLADESH                     3              0     2360   26816
0-6 months    JiVitA-3         BANGLADESH                     3              1       90   26816
0-6 months    JiVitA-3         BANGLADESH                     4              0     1764   26816
0-6 months    JiVitA-3         BANGLADESH                     4              1       72   26816
0-6 months    JiVitA-3         BANGLADESH                     5              0     1342   26816
0-6 months    JiVitA-3         BANGLADESH                     5              1       47   26816
0-6 months    JiVitA-3         BANGLADESH                     6              0     1305   26816
0-6 months    JiVitA-3         BANGLADESH                     6              1       40   26816
0-6 months    JiVitA-3         BANGLADESH                     7              0     1489   26816
0-6 months    JiVitA-3         BANGLADESH                     7              1       48   26816
0-6 months    JiVitA-3         BANGLADESH                     8              0     1914   26816
0-6 months    JiVitA-3         BANGLADESH                     8              1       76   26816
0-6 months    JiVitA-3         BANGLADESH                     9              0     2498   26816
0-6 months    JiVitA-3         BANGLADESH                     9              1      106   26816
0-6 months    JiVitA-3         BANGLADESH                     10             0     2802   26816
0-6 months    JiVitA-3         BANGLADESH                     10             1      129   26816
0-6 months    JiVitA-3         BANGLADESH                     11             0     2785   26816
0-6 months    JiVitA-3         BANGLADESH                     11             1      124   26816
0-6 months    JiVitA-3         BANGLADESH                     12             0     3025   26816
0-6 months    JiVitA-3         BANGLADESH                     12             1      139   26816
0-6 months    JiVitA-4         BANGLADESH                     1              0       51    5092
0-6 months    JiVitA-4         BANGLADESH                     1              1        1    5092
0-6 months    JiVitA-4         BANGLADESH                     2              0      351    5092
0-6 months    JiVitA-4         BANGLADESH                     2              1        6    5092
0-6 months    JiVitA-4         BANGLADESH                     3              0      440    5092
0-6 months    JiVitA-4         BANGLADESH                     3              1       19    5092
0-6 months    JiVitA-4         BANGLADESH                     4              0      892    5092
0-6 months    JiVitA-4         BANGLADESH                     4              1       27    5092
0-6 months    JiVitA-4         BANGLADESH                     5              0      594    5092
0-6 months    JiVitA-4         BANGLADESH                     5              1       20    5092
0-6 months    JiVitA-4         BANGLADESH                     6              0      442    5092
0-6 months    JiVitA-4         BANGLADESH                     6              1       11    5092
0-6 months    JiVitA-4         BANGLADESH                     7              0      858    5092
0-6 months    JiVitA-4         BANGLADESH                     7              1       27    5092
0-6 months    JiVitA-4         BANGLADESH                     8              0      513    5092
0-6 months    JiVitA-4         BANGLADESH                     8              1       11    5092
0-6 months    JiVitA-4         BANGLADESH                     9              0      336    5092
0-6 months    JiVitA-4         BANGLADESH                     9              1       10    5092
0-6 months    JiVitA-4         BANGLADESH                     10             0      265    5092
0-6 months    JiVitA-4         BANGLADESH                     10             1        1    5092
0-6 months    JiVitA-4         BANGLADESH                     11             0      141    5092
0-6 months    JiVitA-4         BANGLADESH                     11             1        2    5092
0-6 months    JiVitA-4         BANGLADESH                     12             0       74    5092
0-6 months    JiVitA-4         BANGLADESH                     12             1        0    5092
0-6 months    Keneba           GAMBIA                         1              0      202    2462
0-6 months    Keneba           GAMBIA                         1              1        9    2462
0-6 months    Keneba           GAMBIA                         2              0      241    2462
0-6 months    Keneba           GAMBIA                         2              1        8    2462
0-6 months    Keneba           GAMBIA                         3              0      213    2462
0-6 months    Keneba           GAMBIA                         3              1        4    2462
0-6 months    Keneba           GAMBIA                         4              0      260    2462
0-6 months    Keneba           GAMBIA                         4              1        6    2462
0-6 months    Keneba           GAMBIA                         5              0      214    2462
0-6 months    Keneba           GAMBIA                         5              1        8    2462
0-6 months    Keneba           GAMBIA                         6              0      178    2462
0-6 months    Keneba           GAMBIA                         6              1        2    2462
0-6 months    Keneba           GAMBIA                         7              0      137    2462
0-6 months    Keneba           GAMBIA                         7              1        3    2462
0-6 months    Keneba           GAMBIA                         8              0      129    2462
0-6 months    Keneba           GAMBIA                         8              1        8    2462
0-6 months    Keneba           GAMBIA                         9              0      172    2462
0-6 months    Keneba           GAMBIA                         9              1        2    2462
0-6 months    Keneba           GAMBIA                         10             0      190    2462
0-6 months    Keneba           GAMBIA                         10             1       10    2462
0-6 months    Keneba           GAMBIA                         11             0      266    2462
0-6 months    Keneba           GAMBIA                         11             1        8    2462
0-6 months    Keneba           GAMBIA                         12             0      190    2462
0-6 months    Keneba           GAMBIA                         12             1        2    2462
0-6 months    LCNI-5           MALAWI                         1              0        7     272
0-6 months    LCNI-5           MALAWI                         1              1        0     272
0-6 months    LCNI-5           MALAWI                         2              0       47     272
0-6 months    LCNI-5           MALAWI                         2              1        0     272
0-6 months    LCNI-5           MALAWI                         3              0       57     272
0-6 months    LCNI-5           MALAWI                         3              1        0     272
0-6 months    LCNI-5           MALAWI                         4              0       49     272
0-6 months    LCNI-5           MALAWI                         4              1        0     272
0-6 months    LCNI-5           MALAWI                         5              0       27     272
0-6 months    LCNI-5           MALAWI                         5              1        0     272
0-6 months    LCNI-5           MALAWI                         6              0       28     272
0-6 months    LCNI-5           MALAWI                         6              1        0     272
0-6 months    LCNI-5           MALAWI                         7              0       29     272
0-6 months    LCNI-5           MALAWI                         7              1        0     272
0-6 months    LCNI-5           MALAWI                         8              0        4     272
0-6 months    LCNI-5           MALAWI                         8              1        0     272
0-6 months    LCNI-5           MALAWI                         9              0        4     272
0-6 months    LCNI-5           MALAWI                         9              1        0     272
0-6 months    LCNI-5           MALAWI                         10             0        5     272
0-6 months    LCNI-5           MALAWI                         10             1        0     272
0-6 months    LCNI-5           MALAWI                         11             0       10     272
0-6 months    LCNI-5           MALAWI                         11             1        0     272
0-6 months    LCNI-5           MALAWI                         12             0        5     272
0-6 months    LCNI-5           MALAWI                         12             1        0     272
0-6 months    MAL-ED           BANGLADESH                     1              0       21     263
0-6 months    MAL-ED           BANGLADESH                     1              1        1     263
0-6 months    MAL-ED           BANGLADESH                     2              0       22     263
0-6 months    MAL-ED           BANGLADESH                     2              1        2     263
0-6 months    MAL-ED           BANGLADESH                     3              0       26     263
0-6 months    MAL-ED           BANGLADESH                     3              1        0     263
0-6 months    MAL-ED           BANGLADESH                     4              0       23     263
0-6 months    MAL-ED           BANGLADESH                     4              1        1     263
0-6 months    MAL-ED           BANGLADESH                     5              0       17     263
0-6 months    MAL-ED           BANGLADESH                     5              1        1     263
0-6 months    MAL-ED           BANGLADESH                     6              0       13     263
0-6 months    MAL-ED           BANGLADESH                     6              1        0     263
0-6 months    MAL-ED           BANGLADESH                     7              0       16     263
0-6 months    MAL-ED           BANGLADESH                     7              1        2     263
0-6 months    MAL-ED           BANGLADESH                     8              0       29     263
0-6 months    MAL-ED           BANGLADESH                     8              1        0     263
0-6 months    MAL-ED           BANGLADESH                     9              0       22     263
0-6 months    MAL-ED           BANGLADESH                     9              1        0     263
0-6 months    MAL-ED           BANGLADESH                     10             0       21     263
0-6 months    MAL-ED           BANGLADESH                     10             1        2     263
0-6 months    MAL-ED           BANGLADESH                     11             0       16     263
0-6 months    MAL-ED           BANGLADESH                     11             1        0     263
0-6 months    MAL-ED           BANGLADESH                     12             0       28     263
0-6 months    MAL-ED           BANGLADESH                     12             1        0     263
0-6 months    MAL-ED           BRAZIL                         1              0       15     233
0-6 months    MAL-ED           BRAZIL                         1              1        0     233
0-6 months    MAL-ED           BRAZIL                         2              0       25     233
0-6 months    MAL-ED           BRAZIL                         2              1        0     233
0-6 months    MAL-ED           BRAZIL                         3              0       18     233
0-6 months    MAL-ED           BRAZIL                         3              1        0     233
0-6 months    MAL-ED           BRAZIL                         4              0       14     233
0-6 months    MAL-ED           BRAZIL                         4              1        0     233
0-6 months    MAL-ED           BRAZIL                         5              0       18     233
0-6 months    MAL-ED           BRAZIL                         5              1        0     233
0-6 months    MAL-ED           BRAZIL                         6              0       16     233
0-6 months    MAL-ED           BRAZIL                         6              1        0     233
0-6 months    MAL-ED           BRAZIL                         7              0       18     233
0-6 months    MAL-ED           BRAZIL                         7              1        0     233
0-6 months    MAL-ED           BRAZIL                         8              0       18     233
0-6 months    MAL-ED           BRAZIL                         8              1        0     233
0-6 months    MAL-ED           BRAZIL                         9              0       25     233
0-6 months    MAL-ED           BRAZIL                         9              1        0     233
0-6 months    MAL-ED           BRAZIL                         10             0       27     233
0-6 months    MAL-ED           BRAZIL                         10             1        0     233
0-6 months    MAL-ED           BRAZIL                         11             0       19     233
0-6 months    MAL-ED           BRAZIL                         11             1        0     233
0-6 months    MAL-ED           BRAZIL                         12             0       19     233
0-6 months    MAL-ED           BRAZIL                         12             1        1     233
0-6 months    MAL-ED           INDIA                          1              0       15     251
0-6 months    MAL-ED           INDIA                          1              1        1     251
0-6 months    MAL-ED           INDIA                          2              0       26     251
0-6 months    MAL-ED           INDIA                          2              1        0     251
0-6 months    MAL-ED           INDIA                          3              0       19     251
0-6 months    MAL-ED           INDIA                          3              1        2     251
0-6 months    MAL-ED           INDIA                          4              0       19     251
0-6 months    MAL-ED           INDIA                          4              1        2     251
0-6 months    MAL-ED           INDIA                          5              0        7     251
0-6 months    MAL-ED           INDIA                          5              1        1     251
0-6 months    MAL-ED           INDIA                          6              0       18     251
0-6 months    MAL-ED           INDIA                          6              1        1     251
0-6 months    MAL-ED           INDIA                          7              0       19     251
0-6 months    MAL-ED           INDIA                          7              1        2     251
0-6 months    MAL-ED           INDIA                          8              0       21     251
0-6 months    MAL-ED           INDIA                          8              1        4     251
0-6 months    MAL-ED           INDIA                          9              0       21     251
0-6 months    MAL-ED           INDIA                          9              1        2     251
0-6 months    MAL-ED           INDIA                          10             0       23     251
0-6 months    MAL-ED           INDIA                          10             1        2     251
0-6 months    MAL-ED           INDIA                          11             0       24     251
0-6 months    MAL-ED           INDIA                          11             1        0     251
0-6 months    MAL-ED           INDIA                          12             0       20     251
0-6 months    MAL-ED           INDIA                          12             1        2     251
0-6 months    MAL-ED           NEPAL                          1              0       19     240
0-6 months    MAL-ED           NEPAL                          1              1        1     240
0-6 months    MAL-ED           NEPAL                          2              0       19     240
0-6 months    MAL-ED           NEPAL                          2              1        1     240
0-6 months    MAL-ED           NEPAL                          3              0       19     240
0-6 months    MAL-ED           NEPAL                          3              1        1     240
0-6 months    MAL-ED           NEPAL                          4              0       19     240
0-6 months    MAL-ED           NEPAL                          4              1        1     240
0-6 months    MAL-ED           NEPAL                          5              0       20     240
0-6 months    MAL-ED           NEPAL                          5              1        0     240
0-6 months    MAL-ED           NEPAL                          6              0       18     240
0-6 months    MAL-ED           NEPAL                          6              1        2     240
0-6 months    MAL-ED           NEPAL                          7              0       20     240
0-6 months    MAL-ED           NEPAL                          7              1        0     240
0-6 months    MAL-ED           NEPAL                          8              0       19     240
0-6 months    MAL-ED           NEPAL                          8              1        1     240
0-6 months    MAL-ED           NEPAL                          9              0       20     240
0-6 months    MAL-ED           NEPAL                          9              1        0     240
0-6 months    MAL-ED           NEPAL                          10             0       19     240
0-6 months    MAL-ED           NEPAL                          10             1        1     240
0-6 months    MAL-ED           NEPAL                          11             0       20     240
0-6 months    MAL-ED           NEPAL                          11             1        0     240
0-6 months    MAL-ED           NEPAL                          12             0       20     240
0-6 months    MAL-ED           NEPAL                          12             1        0     240
0-6 months    MAL-ED           PERU                           1              0       37     302
0-6 months    MAL-ED           PERU                           1              1        0     302
0-6 months    MAL-ED           PERU                           2              0       28     302
0-6 months    MAL-ED           PERU                           2              1        2     302
0-6 months    MAL-ED           PERU                           3              0       23     302
0-6 months    MAL-ED           PERU                           3              1        0     302
0-6 months    MAL-ED           PERU                           4              0       19     302
0-6 months    MAL-ED           PERU                           4              1        0     302
0-6 months    MAL-ED           PERU                           5              0       25     302
0-6 months    MAL-ED           PERU                           5              1        0     302
0-6 months    MAL-ED           PERU                           6              0       22     302
0-6 months    MAL-ED           PERU                           6              1        0     302
0-6 months    MAL-ED           PERU                           7              0       24     302
0-6 months    MAL-ED           PERU                           7              1        0     302
0-6 months    MAL-ED           PERU                           8              0       19     302
0-6 months    MAL-ED           PERU                           8              1        0     302
0-6 months    MAL-ED           PERU                           9              0       22     302
0-6 months    MAL-ED           PERU                           9              1        0     302
0-6 months    MAL-ED           PERU                           10             0       25     302
0-6 months    MAL-ED           PERU                           10             1        0     302
0-6 months    MAL-ED           PERU                           11             0       37     302
0-6 months    MAL-ED           PERU                           11             1        0     302
0-6 months    MAL-ED           PERU                           12             0       19     302
0-6 months    MAL-ED           PERU                           12             1        0     302
0-6 months    MAL-ED           SOUTH AFRICA                   1              0       37     312
0-6 months    MAL-ED           SOUTH AFRICA                   1              1        0     312
0-6 months    MAL-ED           SOUTH AFRICA                   2              0       39     312
0-6 months    MAL-ED           SOUTH AFRICA                   2              1        1     312
0-6 months    MAL-ED           SOUTH AFRICA                   3              0       21     312
0-6 months    MAL-ED           SOUTH AFRICA                   3              1        0     312
0-6 months    MAL-ED           SOUTH AFRICA                   4              0       13     312
0-6 months    MAL-ED           SOUTH AFRICA                   4              1        0     312
0-6 months    MAL-ED           SOUTH AFRICA                   5              0       12     312
0-6 months    MAL-ED           SOUTH AFRICA                   5              1        0     312
0-6 months    MAL-ED           SOUTH AFRICA                   6              0       24     312
0-6 months    MAL-ED           SOUTH AFRICA                   6              1        0     312
0-6 months    MAL-ED           SOUTH AFRICA                   7              0       29     312
0-6 months    MAL-ED           SOUTH AFRICA                   7              1        0     312
0-6 months    MAL-ED           SOUTH AFRICA                   8              0       12     312
0-6 months    MAL-ED           SOUTH AFRICA                   8              1        0     312
0-6 months    MAL-ED           SOUTH AFRICA                   9              0       22     312
0-6 months    MAL-ED           SOUTH AFRICA                   9              1        0     312
0-6 months    MAL-ED           SOUTH AFRICA                   10             0       28     312
0-6 months    MAL-ED           SOUTH AFRICA                   10             1        1     312
0-6 months    MAL-ED           SOUTH AFRICA                   11             0       32     312
0-6 months    MAL-ED           SOUTH AFRICA                   11             1        2     312
0-6 months    MAL-ED           SOUTH AFRICA                   12             0       38     312
0-6 months    MAL-ED           SOUTH AFRICA                   12             1        1     312
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              0       22     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1        1     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              0       27     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              1        1     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              0       24     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              1        0     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              0       11     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              1        0     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              0       16     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              1        0     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              0       16     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              1        0     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              0       28     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              1        0     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              0       12     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              1        0     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              0       19     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              1        0     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             0       21     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             1        0     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             0       28     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             1        1     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             0       33     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             1        1     261
0-6 months    NIH-Birth        BANGLADESH                     1              0       58     622
0-6 months    NIH-Birth        BANGLADESH                     1              1        9     622
0-6 months    NIH-Birth        BANGLADESH                     2              0       54     622
0-6 months    NIH-Birth        BANGLADESH                     2              1        6     622
0-6 months    NIH-Birth        BANGLADESH                     3              0       59     622
0-6 months    NIH-Birth        BANGLADESH                     3              1        2     622
0-6 months    NIH-Birth        BANGLADESH                     4              0       47     622
0-6 months    NIH-Birth        BANGLADESH                     4              1        4     622
0-6 months    NIH-Birth        BANGLADESH                     5              0       42     622
0-6 months    NIH-Birth        BANGLADESH                     5              1        5     622
0-6 months    NIH-Birth        BANGLADESH                     6              0       46     622
0-6 months    NIH-Birth        BANGLADESH                     6              1        1     622
0-6 months    NIH-Birth        BANGLADESH                     7              0       44     622
0-6 months    NIH-Birth        BANGLADESH                     7              1        4     622
0-6 months    NIH-Birth        BANGLADESH                     8              0       37     622
0-6 months    NIH-Birth        BANGLADESH                     8              1        5     622
0-6 months    NIH-Birth        BANGLADESH                     9              0       31     622
0-6 months    NIH-Birth        BANGLADESH                     9              1        2     622
0-6 months    NIH-Birth        BANGLADESH                     10             0       58     622
0-6 months    NIH-Birth        BANGLADESH                     10             1        2     622
0-6 months    NIH-Birth        BANGLADESH                     11             0       48     622
0-6 months    NIH-Birth        BANGLADESH                     11             1        4     622
0-6 months    NIH-Birth        BANGLADESH                     12             0       53     622
0-6 months    NIH-Birth        BANGLADESH                     12             1        1     622
0-6 months    PROBIT           BELARUS                        1              0     1183   16892
0-6 months    PROBIT           BELARUS                        1              1        1   16892
0-6 months    PROBIT           BELARUS                        2              0     1004   16892
0-6 months    PROBIT           BELARUS                        2              1        1   16892
0-6 months    PROBIT           BELARUS                        3              0     1184   16892
0-6 months    PROBIT           BELARUS                        3              1        0   16892
0-6 months    PROBIT           BELARUS                        4              0     1128   16892
0-6 months    PROBIT           BELARUS                        4              1        1   16892
0-6 months    PROBIT           BELARUS                        5              0     1152   16892
0-6 months    PROBIT           BELARUS                        5              1        0   16892
0-6 months    PROBIT           BELARUS                        6              0     1220   16892
0-6 months    PROBIT           BELARUS                        6              1        0   16892
0-6 months    PROBIT           BELARUS                        7              0     1474   16892
0-6 months    PROBIT           BELARUS                        7              1        0   16892
0-6 months    PROBIT           BELARUS                        8              0     1616   16892
0-6 months    PROBIT           BELARUS                        8              1        1   16892
0-6 months    PROBIT           BELARUS                        9              0     1587   16892
0-6 months    PROBIT           BELARUS                        9              1        2   16892
0-6 months    PROBIT           BELARUS                        10             0     1803   16892
0-6 months    PROBIT           BELARUS                        10             1        0   16892
0-6 months    PROBIT           BELARUS                        11             0     1706   16892
0-6 months    PROBIT           BELARUS                        11             1        3   16892
0-6 months    PROBIT           BELARUS                        12             0     1822   16892
0-6 months    PROBIT           BELARUS                        12             1        4   16892
0-6 months    ResPak           PAKISTAN                       1              0        3     282
0-6 months    ResPak           PAKISTAN                       1              1        0     282
0-6 months    ResPak           PAKISTAN                       2              0        8     282
0-6 months    ResPak           PAKISTAN                       2              1        1     282
0-6 months    ResPak           PAKISTAN                       3              0       11     282
0-6 months    ResPak           PAKISTAN                       3              1        0     282
0-6 months    ResPak           PAKISTAN                       4              0       19     282
0-6 months    ResPak           PAKISTAN                       4              1        2     282
0-6 months    ResPak           PAKISTAN                       5              0       34     282
0-6 months    ResPak           PAKISTAN                       5              1        2     282
0-6 months    ResPak           PAKISTAN                       6              0       45     282
0-6 months    ResPak           PAKISTAN                       6              1        4     282
0-6 months    ResPak           PAKISTAN                       7              0       46     282
0-6 months    ResPak           PAKISTAN                       7              1        1     282
0-6 months    ResPak           PAKISTAN                       8              0       29     282
0-6 months    ResPak           PAKISTAN                       8              1        3     282
0-6 months    ResPak           PAKISTAN                       9              0       42     282
0-6 months    ResPak           PAKISTAN                       9              1        4     282
0-6 months    ResPak           PAKISTAN                       10             0       16     282
0-6 months    ResPak           PAKISTAN                       10             1        0     282
0-6 months    ResPak           PAKISTAN                       11             0        7     282
0-6 months    ResPak           PAKISTAN                       11             1        0     282
0-6 months    ResPak           PAKISTAN                       12             0        5     282
0-6 months    ResPak           PAKISTAN                       12             1        0     282
0-6 months    SAS-CompFeed     INDIA                          1              0       98    1504
0-6 months    SAS-CompFeed     INDIA                          1              1        7    1504
0-6 months    SAS-CompFeed     INDIA                          2              0       86    1504
0-6 months    SAS-CompFeed     INDIA                          2              1        6    1504
0-6 months    SAS-CompFeed     INDIA                          3              0       82    1504
0-6 months    SAS-CompFeed     INDIA                          3              1        5    1504
0-6 months    SAS-CompFeed     INDIA                          4              0       79    1504
0-6 months    SAS-CompFeed     INDIA                          4              1        5    1504
0-6 months    SAS-CompFeed     INDIA                          5              0       78    1504
0-6 months    SAS-CompFeed     INDIA                          5              1       11    1504
0-6 months    SAS-CompFeed     INDIA                          6              0      108    1504
0-6 months    SAS-CompFeed     INDIA                          6              1        7    1504
0-6 months    SAS-CompFeed     INDIA                          7              0      114    1504
0-6 months    SAS-CompFeed     INDIA                          7              1       12    1504
0-6 months    SAS-CompFeed     INDIA                          8              0      157    1504
0-6 months    SAS-CompFeed     INDIA                          8              1       12    1504
0-6 months    SAS-CompFeed     INDIA                          9              0      172    1504
0-6 months    SAS-CompFeed     INDIA                          9              1       10    1504
0-6 months    SAS-CompFeed     INDIA                          10             0      153    1504
0-6 months    SAS-CompFeed     INDIA                          10             1       10    1504
0-6 months    SAS-CompFeed     INDIA                          11             0      131    1504
0-6 months    SAS-CompFeed     INDIA                          11             1       14    1504
0-6 months    SAS-CompFeed     INDIA                          12             0      140    1504
0-6 months    SAS-CompFeed     INDIA                          12             1        7    1504
0-6 months    SAS-FoodSuppl    INDIA                          1              0       57     416
0-6 months    SAS-FoodSuppl    INDIA                          1              1        7     416
0-6 months    SAS-FoodSuppl    INDIA                          2              0       36     416
0-6 months    SAS-FoodSuppl    INDIA                          2              1        4     416
0-6 months    SAS-FoodSuppl    INDIA                          3              0       35     416
0-6 months    SAS-FoodSuppl    INDIA                          3              1        5     416
0-6 months    SAS-FoodSuppl    INDIA                          4              0       29     416
0-6 months    SAS-FoodSuppl    INDIA                          4              1        1     416
0-6 months    SAS-FoodSuppl    INDIA                          5              0       30     416
0-6 months    SAS-FoodSuppl    INDIA                          5              1        1     416
0-6 months    SAS-FoodSuppl    INDIA                          6              0       32     416
0-6 months    SAS-FoodSuppl    INDIA                          6              1        2     416
0-6 months    SAS-FoodSuppl    INDIA                          7              0       17     416
0-6 months    SAS-FoodSuppl    INDIA                          7              1        1     416
0-6 months    SAS-FoodSuppl    INDIA                          8              0        0     416
0-6 months    SAS-FoodSuppl    INDIA                          8              1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          9              0       12     416
0-6 months    SAS-FoodSuppl    INDIA                          9              1        1     416
0-6 months    SAS-FoodSuppl    INDIA                          10             0       26     416
0-6 months    SAS-FoodSuppl    INDIA                          10             1        4     416
0-6 months    SAS-FoodSuppl    INDIA                          11             0       51     416
0-6 months    SAS-FoodSuppl    INDIA                          11             1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          12             0       59     416
0-6 months    SAS-FoodSuppl    INDIA                          12             1        6     416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      230    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        2    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0      159    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1        0    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              0      185    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              1        1    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              0      160    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              1        1    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              0      198    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              1        1    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              0      172    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              1        1    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              0      171    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              1        2    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              0      194    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              1        1    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              0      226    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              1        4    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             0      227    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             1        2    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             0      225    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             1        2    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             0      230    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             1        2    2396
0-6 months    ZVITAMBO         ZIMBABWE                       1              0     1320   13846
0-6 months    ZVITAMBO         ZIMBABWE                       1              1       15   13846
0-6 months    ZVITAMBO         ZIMBABWE                       2              0     1013   13846
0-6 months    ZVITAMBO         ZIMBABWE                       2              1       15   13846
0-6 months    ZVITAMBO         ZIMBABWE                       3              0     1119   13846
0-6 months    ZVITAMBO         ZIMBABWE                       3              1       19   13846
0-6 months    ZVITAMBO         ZIMBABWE                       4              0     1018   13846
0-6 months    ZVITAMBO         ZIMBABWE                       4              1       10   13846
0-6 months    ZVITAMBO         ZIMBABWE                       5              0     1002   13846
0-6 months    ZVITAMBO         ZIMBABWE                       5              1        9   13846
0-6 months    ZVITAMBO         ZIMBABWE                       6              0     1129   13846
0-6 months    ZVITAMBO         ZIMBABWE                       6              1       13   13846
0-6 months    ZVITAMBO         ZIMBABWE                       7              0     1156   13846
0-6 months    ZVITAMBO         ZIMBABWE                       7              1       18   13846
0-6 months    ZVITAMBO         ZIMBABWE                       8              0     1217   13846
0-6 months    ZVITAMBO         ZIMBABWE                       8              1       11   13846
0-6 months    ZVITAMBO         ZIMBABWE                       9              0     1303   13846
0-6 months    ZVITAMBO         ZIMBABWE                       9              1       12   13846
0-6 months    ZVITAMBO         ZIMBABWE                       10             0     1031   13846
0-6 months    ZVITAMBO         ZIMBABWE                       10             1       12   13846
0-6 months    ZVITAMBO         ZIMBABWE                       11             0     1119   13846
0-6 months    ZVITAMBO         ZIMBABWE                       11             1       17   13846
0-6 months    ZVITAMBO         ZIMBABWE                       12             0     1252   13846
0-6 months    ZVITAMBO         ZIMBABWE                       12             1       16   13846
6-24 months   CMC-V-BCS-2002   INDIA                          1              0       24     373
6-24 months   CMC-V-BCS-2002   INDIA                          1              1        4     373
6-24 months   CMC-V-BCS-2002   INDIA                          2              0       18     373
6-24 months   CMC-V-BCS-2002   INDIA                          2              1        6     373
6-24 months   CMC-V-BCS-2002   INDIA                          3              0       22     373
6-24 months   CMC-V-BCS-2002   INDIA                          3              1        4     373
6-24 months   CMC-V-BCS-2002   INDIA                          4              0       25     373
6-24 months   CMC-V-BCS-2002   INDIA                          4              1        4     373
6-24 months   CMC-V-BCS-2002   INDIA                          5              0       37     373
6-24 months   CMC-V-BCS-2002   INDIA                          5              1        6     373
6-24 months   CMC-V-BCS-2002   INDIA                          6              0       29     373
6-24 months   CMC-V-BCS-2002   INDIA                          6              1        8     373
6-24 months   CMC-V-BCS-2002   INDIA                          7              0       30     373
6-24 months   CMC-V-BCS-2002   INDIA                          7              1        3     373
6-24 months   CMC-V-BCS-2002   INDIA                          8              0       33     373
6-24 months   CMC-V-BCS-2002   INDIA                          8              1        8     373
6-24 months   CMC-V-BCS-2002   INDIA                          9              0       17     373
6-24 months   CMC-V-BCS-2002   INDIA                          9              1        6     373
6-24 months   CMC-V-BCS-2002   INDIA                          10             0       17     373
6-24 months   CMC-V-BCS-2002   INDIA                          10             1        2     373
6-24 months   CMC-V-BCS-2002   INDIA                          11             0       32     373
6-24 months   CMC-V-BCS-2002   INDIA                          11             1        9     373
6-24 months   CMC-V-BCS-2002   INDIA                          12             0       19     373
6-24 months   CMC-V-BCS-2002   INDIA                          12             1       10     373
6-24 months   CMIN             BANGLADESH                     1              0       18     251
6-24 months   CMIN             BANGLADESH                     1              1        8     251
6-24 months   CMIN             BANGLADESH                     2              0       19     251
6-24 months   CMIN             BANGLADESH                     2              1       12     251
6-24 months   CMIN             BANGLADESH                     3              0       17     251
6-24 months   CMIN             BANGLADESH                     3              1        3     251
6-24 months   CMIN             BANGLADESH                     4              0       12     251
6-24 months   CMIN             BANGLADESH                     4              1        6     251
6-24 months   CMIN             BANGLADESH                     5              0       13     251
6-24 months   CMIN             BANGLADESH                     5              1        7     251
6-24 months   CMIN             BANGLADESH                     6              0       17     251
6-24 months   CMIN             BANGLADESH                     6              1        6     251
6-24 months   CMIN             BANGLADESH                     7              0        7     251
6-24 months   CMIN             BANGLADESH                     7              1        6     251
6-24 months   CMIN             BANGLADESH                     8              0       10     251
6-24 months   CMIN             BANGLADESH                     8              1        4     251
6-24 months   CMIN             BANGLADESH                     9              0       14     251
6-24 months   CMIN             BANGLADESH                     9              1        5     251
6-24 months   CMIN             BANGLADESH                     10             0       13     251
6-24 months   CMIN             BANGLADESH                     10             1        6     251
6-24 months   CMIN             BANGLADESH                     11             0        2     251
6-24 months   CMIN             BANGLADESH                     11             1        0     251
6-24 months   CMIN             BANGLADESH                     12             0       23     251
6-24 months   CMIN             BANGLADESH                     12             1       23     251
6-24 months   CONTENT          PERU                           1              0        9     215
6-24 months   CONTENT          PERU                           1              1        0     215
6-24 months   CONTENT          PERU                           2              0       13     215
6-24 months   CONTENT          PERU                           2              1        0     215
6-24 months   CONTENT          PERU                           3              0       27     215
6-24 months   CONTENT          PERU                           3              1        0     215
6-24 months   CONTENT          PERU                           4              0       18     215
6-24 months   CONTENT          PERU                           4              1        0     215
6-24 months   CONTENT          PERU                           5              0       25     215
6-24 months   CONTENT          PERU                           5              1        0     215
6-24 months   CONTENT          PERU                           6              0       14     215
6-24 months   CONTENT          PERU                           6              1        0     215
6-24 months   CONTENT          PERU                           7              0       16     215
6-24 months   CONTENT          PERU                           7              1        0     215
6-24 months   CONTENT          PERU                           8              0       26     215
6-24 months   CONTENT          PERU                           8              1        0     215
6-24 months   CONTENT          PERU                           9              0       19     215
6-24 months   CONTENT          PERU                           9              1        0     215
6-24 months   CONTENT          PERU                           10             0       23     215
6-24 months   CONTENT          PERU                           10             1        0     215
6-24 months   CONTENT          PERU                           11             0       18     215
6-24 months   CONTENT          PERU                           11             1        0     215
6-24 months   CONTENT          PERU                           12             0        7     215
6-24 months   CONTENT          PERU                           12             1        0     215
6-24 months   EE               PAKISTAN                       1              0       56     372
6-24 months   EE               PAKISTAN                       1              1       34     372
6-24 months   EE               PAKISTAN                       2              0       47     372
6-24 months   EE               PAKISTAN                       2              1       25     372
6-24 months   EE               PAKISTAN                       3              0       21     372
6-24 months   EE               PAKISTAN                       3              1       24     372
6-24 months   EE               PAKISTAN                       4              0       10     372
6-24 months   EE               PAKISTAN                       4              1       12     372
6-24 months   EE               PAKISTAN                       5              0        0     372
6-24 months   EE               PAKISTAN                       5              1        0     372
6-24 months   EE               PAKISTAN                       6              0        0     372
6-24 months   EE               PAKISTAN                       6              1        0     372
6-24 months   EE               PAKISTAN                       7              0        0     372
6-24 months   EE               PAKISTAN                       7              1        0     372
6-24 months   EE               PAKISTAN                       8              0        0     372
6-24 months   EE               PAKISTAN                       8              1        0     372
6-24 months   EE               PAKISTAN                       9              0        0     372
6-24 months   EE               PAKISTAN                       9              1        0     372
6-24 months   EE               PAKISTAN                       10             0        0     372
6-24 months   EE               PAKISTAN                       10             1        0     372
6-24 months   EE               PAKISTAN                       11             0       32     372
6-24 months   EE               PAKISTAN                       11             1       27     372
6-24 months   EE               PAKISTAN                       12             0       50     372
6-24 months   EE               PAKISTAN                       12             1       34     372
6-24 months   GMS-Nepal        NEPAL                          1              0        0     590
6-24 months   GMS-Nepal        NEPAL                          1              1        0     590
6-24 months   GMS-Nepal        NEPAL                          2              0        0     590
6-24 months   GMS-Nepal        NEPAL                          2              1        0     590
6-24 months   GMS-Nepal        NEPAL                          3              0        0     590
6-24 months   GMS-Nepal        NEPAL                          3              1        0     590
6-24 months   GMS-Nepal        NEPAL                          4              0        0     590
6-24 months   GMS-Nepal        NEPAL                          4              1        1     590
6-24 months   GMS-Nepal        NEPAL                          5              0        0     590
6-24 months   GMS-Nepal        NEPAL                          5              1        0     590
6-24 months   GMS-Nepal        NEPAL                          6              0       77     590
6-24 months   GMS-Nepal        NEPAL                          6              1       41     590
6-24 months   GMS-Nepal        NEPAL                          7              0      155     590
6-24 months   GMS-Nepal        NEPAL                          7              1       70     590
6-24 months   GMS-Nepal        NEPAL                          8              0      166     590
6-24 months   GMS-Nepal        NEPAL                          8              1       80     590
6-24 months   GMS-Nepal        NEPAL                          9              0        0     590
6-24 months   GMS-Nepal        NEPAL                          9              1        0     590
6-24 months   GMS-Nepal        NEPAL                          10             0        0     590
6-24 months   GMS-Nepal        NEPAL                          10             1        0     590
6-24 months   GMS-Nepal        NEPAL                          11             0        0     590
6-24 months   GMS-Nepal        NEPAL                          11             1        0     590
6-24 months   GMS-Nepal        NEPAL                          12             0        0     590
6-24 months   GMS-Nepal        NEPAL                          12             1        0     590
6-24 months   Guatemala BSC    GUATEMALA                      1              0       14     277
6-24 months   Guatemala BSC    GUATEMALA                      1              1        1     277
6-24 months   Guatemala BSC    GUATEMALA                      2              0       18     277
6-24 months   Guatemala BSC    GUATEMALA                      2              1        0     277
6-24 months   Guatemala BSC    GUATEMALA                      3              0       17     277
6-24 months   Guatemala BSC    GUATEMALA                      3              1        2     277
6-24 months   Guatemala BSC    GUATEMALA                      4              0       19     277
6-24 months   Guatemala BSC    GUATEMALA                      4              1        4     277
6-24 months   Guatemala BSC    GUATEMALA                      5              0       29     277
6-24 months   Guatemala BSC    GUATEMALA                      5              1        2     277
6-24 months   Guatemala BSC    GUATEMALA                      6              0       35     277
6-24 months   Guatemala BSC    GUATEMALA                      6              1        2     277
6-24 months   Guatemala BSC    GUATEMALA                      7              0       24     277
6-24 months   Guatemala BSC    GUATEMALA                      7              1        0     277
6-24 months   Guatemala BSC    GUATEMALA                      8              0       16     277
6-24 months   Guatemala BSC    GUATEMALA                      8              1        3     277
6-24 months   Guatemala BSC    GUATEMALA                      9              0       30     277
6-24 months   Guatemala BSC    GUATEMALA                      9              1        2     277
6-24 months   Guatemala BSC    GUATEMALA                      10             0       23     277
6-24 months   Guatemala BSC    GUATEMALA                      10             1        1     277
6-24 months   Guatemala BSC    GUATEMALA                      11             0       25     277
6-24 months   Guatemala BSC    GUATEMALA                      11             1        1     277
6-24 months   Guatemala BSC    GUATEMALA                      12             0        9     277
6-24 months   Guatemala BSC    GUATEMALA                      12             1        0     277
6-24 months   iLiNS-Zinc       BURKINA FASO                   1              0      214    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   1              1       25    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   2              0      179    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   2              1       29    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   3              0      184    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   3              1       30    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   4              0      159    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   4              1       24    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   5              0      221    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   5              1       36    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   6              0      321    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   6              1       45    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   7              0      362    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   7              1       49    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   8              0      315    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   8              1       46    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   9              0      256    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   9              1       39    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   10             0      336    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   10             1       36    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   11             0      173    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   11             1       24    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   12             0      138    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   12             1       24    3265
6-24 months   IRC              INDIA                          1              0       26     410
6-24 months   IRC              INDIA                          1              1        9     410
6-24 months   IRC              INDIA                          2              0       28     410
6-24 months   IRC              INDIA                          2              1        2     410
6-24 months   IRC              INDIA                          3              0       26     410
6-24 months   IRC              INDIA                          3              1        3     410
6-24 months   IRC              INDIA                          4              0       20     410
6-24 months   IRC              INDIA                          4              1        4     410
6-24 months   IRC              INDIA                          5              0       15     410
6-24 months   IRC              INDIA                          5              1        6     410
6-24 months   IRC              INDIA                          6              0       30     410
6-24 months   IRC              INDIA                          6              1        5     410
6-24 months   IRC              INDIA                          7              0       31     410
6-24 months   IRC              INDIA                          7              1        5     410
6-24 months   IRC              INDIA                          8              0       35     410
6-24 months   IRC              INDIA                          8              1        6     410
6-24 months   IRC              INDIA                          9              0       22     410
6-24 months   IRC              INDIA                          9              1        8     410
6-24 months   IRC              INDIA                          10             0       34     410
6-24 months   IRC              INDIA                          10             1        5     410
6-24 months   IRC              INDIA                          11             0       36     410
6-24 months   IRC              INDIA                          11             1        5     410
6-24 months   IRC              INDIA                          12             0       43     410
6-24 months   IRC              INDIA                          12             1        6     410
6-24 months   JiVitA-3         BANGLADESH                     1              0     1281   17280
6-24 months   JiVitA-3         BANGLADESH                     1              1      115   17280
6-24 months   JiVitA-3         BANGLADESH                     2              0     1123   17280
6-24 months   JiVitA-3         BANGLADESH                     2              1       99   17280
6-24 months   JiVitA-3         BANGLADESH                     3              0     1370   17280
6-24 months   JiVitA-3         BANGLADESH                     3              1       92   17280
6-24 months   JiVitA-3         BANGLADESH                     4              0     1117   17280
6-24 months   JiVitA-3         BANGLADESH                     4              1      110   17280
6-24 months   JiVitA-3         BANGLADESH                     5              0     1088   17280
6-24 months   JiVitA-3         BANGLADESH                     5              1      121   17280
6-24 months   JiVitA-3         BANGLADESH                     6              0     1085   17280
6-24 months   JiVitA-3         BANGLADESH                     6              1      120   17280
6-24 months   JiVitA-3         BANGLADESH                     7              0     1157   17280
6-24 months   JiVitA-3         BANGLADESH                     7              1      129   17280
6-24 months   JiVitA-3         BANGLADESH                     8              0     1387   17280
6-24 months   JiVitA-3         BANGLADESH                     8              1      105   17280
6-24 months   JiVitA-3         BANGLADESH                     9              0     1456   17280
6-24 months   JiVitA-3         BANGLADESH                     9              1      129   17280
6-24 months   JiVitA-3         BANGLADESH                     10             0     1573   17280
6-24 months   JiVitA-3         BANGLADESH                     10             1      165   17280
6-24 months   JiVitA-3         BANGLADESH                     11             0     1541   17280
6-24 months   JiVitA-3         BANGLADESH                     11             1      158   17280
6-24 months   JiVitA-3         BANGLADESH                     12             0     1600   17280
6-24 months   JiVitA-3         BANGLADESH                     12             1      159   17280
6-24 months   JiVitA-4         BANGLADESH                     1              0       51    5429
6-24 months   JiVitA-4         BANGLADESH                     1              1        7    5429
6-24 months   JiVitA-4         BANGLADESH                     2              0      328    5429
6-24 months   JiVitA-4         BANGLADESH                     2              1       37    5429
6-24 months   JiVitA-4         BANGLADESH                     3              0      406    5429
6-24 months   JiVitA-4         BANGLADESH                     3              1       65    5429
6-24 months   JiVitA-4         BANGLADESH                     4              0      763    5429
6-24 months   JiVitA-4         BANGLADESH                     4              1      166    5429
6-24 months   JiVitA-4         BANGLADESH                     5              0      519    5429
6-24 months   JiVitA-4         BANGLADESH                     5              1      103    5429
6-24 months   JiVitA-4         BANGLADESH                     6              0      387    5429
6-24 months   JiVitA-4         BANGLADESH                     6              1       73    5429
6-24 months   JiVitA-4         BANGLADESH                     7              0      736    5429
6-24 months   JiVitA-4         BANGLADESH                     7              1      152    5429
6-24 months   JiVitA-4         BANGLADESH                     8              0      474    5429
6-24 months   JiVitA-4         BANGLADESH                     8              1       59    5429
6-24 months   JiVitA-4         BANGLADESH                     9              0      448    5429
6-24 months   JiVitA-4         BANGLADESH                     9              1       67    5429
6-24 months   JiVitA-4         BANGLADESH                     10             0      295    5429
6-24 months   JiVitA-4         BANGLADESH                     10             1       37    5429
6-24 months   JiVitA-4         BANGLADESH                     11             0      145    5429
6-24 months   JiVitA-4         BANGLADESH                     11             1       25    5429
6-24 months   JiVitA-4         BANGLADESH                     12             0       75    5429
6-24 months   JiVitA-4         BANGLADESH                     12             1       11    5429
6-24 months   Keneba           GAMBIA                         1              0      192    2735
6-24 months   Keneba           GAMBIA                         1              1       32    2735
6-24 months   Keneba           GAMBIA                         2              0      213    2735
6-24 months   Keneba           GAMBIA                         2              1       51    2735
6-24 months   Keneba           GAMBIA                         3              0      188    2735
6-24 months   Keneba           GAMBIA                         3              1       32    2735
6-24 months   Keneba           GAMBIA                         4              0      247    2735
6-24 months   Keneba           GAMBIA                         4              1       46    2735
6-24 months   Keneba           GAMBIA                         5              0      264    2735
6-24 months   Keneba           GAMBIA                         5              1       28    2735
6-24 months   Keneba           GAMBIA                         6              0      198    2735
6-24 months   Keneba           GAMBIA                         6              1       25    2735
6-24 months   Keneba           GAMBIA                         7              0      140    2735
6-24 months   Keneba           GAMBIA                         7              1       35    2735
6-24 months   Keneba           GAMBIA                         8              0      139    2735
6-24 months   Keneba           GAMBIA                         8              1       29    2735
6-24 months   Keneba           GAMBIA                         9              0      155    2735
6-24 months   Keneba           GAMBIA                         9              1       31    2735
6-24 months   Keneba           GAMBIA                         10             0      179    2735
6-24 months   Keneba           GAMBIA                         10             1       32    2735
6-24 months   Keneba           GAMBIA                         11             0      246    2735
6-24 months   Keneba           GAMBIA                         11             1       40    2735
6-24 months   Keneba           GAMBIA                         12             0      172    2735
6-24 months   Keneba           GAMBIA                         12             1       21    2735
6-24 months   LCNI-5           MALAWI                         1              0       51     826
6-24 months   LCNI-5           MALAWI                         1              1        4     826
6-24 months   LCNI-5           MALAWI                         2              0      109     826
6-24 months   LCNI-5           MALAWI                         2              1        5     826
6-24 months   LCNI-5           MALAWI                         3              0       86     826
6-24 months   LCNI-5           MALAWI                         3              1        8     826
6-24 months   LCNI-5           MALAWI                         4              0      103     826
6-24 months   LCNI-5           MALAWI                         4              1        4     826
6-24 months   LCNI-5           MALAWI                         5              0      105     826
6-24 months   LCNI-5           MALAWI                         5              1        4     826
6-24 months   LCNI-5           MALAWI                         6              0       83     826
6-24 months   LCNI-5           MALAWI                         6              1        7     826
6-24 months   LCNI-5           MALAWI                         7              0       68     826
6-24 months   LCNI-5           MALAWI                         7              1        3     826
6-24 months   LCNI-5           MALAWI                         8              0       40     826
6-24 months   LCNI-5           MALAWI                         8              1        1     826
6-24 months   LCNI-5           MALAWI                         9              0       26     826
6-24 months   LCNI-5           MALAWI                         9              1        3     826
6-24 months   LCNI-5           MALAWI                         10             0       35     826
6-24 months   LCNI-5           MALAWI                         10             1        0     826
6-24 months   LCNI-5           MALAWI                         11             0       45     826
6-24 months   LCNI-5           MALAWI                         11             1        2     826
6-24 months   LCNI-5           MALAWI                         12             0       32     826
6-24 months   LCNI-5           MALAWI                         12             1        2     826
6-24 months   MAL-ED           BANGLADESH                     1              0       19     239
6-24 months   MAL-ED           BANGLADESH                     1              1        1     239
6-24 months   MAL-ED           BANGLADESH                     2              0       15     239
6-24 months   MAL-ED           BANGLADESH                     2              1        5     239
6-24 months   MAL-ED           BANGLADESH                     3              0       17     239
6-24 months   MAL-ED           BANGLADESH                     3              1        6     239
6-24 months   MAL-ED           BANGLADESH                     4              0       22     239
6-24 months   MAL-ED           BANGLADESH                     4              1        1     239
6-24 months   MAL-ED           BANGLADESH                     5              0       14     239
6-24 months   MAL-ED           BANGLADESH                     5              1        3     239
6-24 months   MAL-ED           BANGLADESH                     6              0       11     239
6-24 months   MAL-ED           BANGLADESH                     6              1        1     239
6-24 months   MAL-ED           BANGLADESH                     7              0       12     239
6-24 months   MAL-ED           BANGLADESH                     7              1        5     239
6-24 months   MAL-ED           BANGLADESH                     8              0       24     239
6-24 months   MAL-ED           BANGLADESH                     8              1        1     239
6-24 months   MAL-ED           BANGLADESH                     9              0       14     239
6-24 months   MAL-ED           BANGLADESH                     9              1        6     239
6-24 months   MAL-ED           BANGLADESH                     10             0       19     239
6-24 months   MAL-ED           BANGLADESH                     10             1        2     239
6-24 months   MAL-ED           BANGLADESH                     11             0       12     239
6-24 months   MAL-ED           BANGLADESH                     11             1        2     239
6-24 months   MAL-ED           BANGLADESH                     12             0       25     239
6-24 months   MAL-ED           BANGLADESH                     12             1        2     239
6-24 months   MAL-ED           BRAZIL                         1              0       14     207
6-24 months   MAL-ED           BRAZIL                         1              1        0     207
6-24 months   MAL-ED           BRAZIL                         2              0       23     207
6-24 months   MAL-ED           BRAZIL                         2              1        0     207
6-24 months   MAL-ED           BRAZIL                         3              0       15     207
6-24 months   MAL-ED           BRAZIL                         3              1        0     207
6-24 months   MAL-ED           BRAZIL                         4              0       12     207
6-24 months   MAL-ED           BRAZIL                         4              1        0     207
6-24 months   MAL-ED           BRAZIL                         5              0       17     207
6-24 months   MAL-ED           BRAZIL                         5              1        0     207
6-24 months   MAL-ED           BRAZIL                         6              0       14     207
6-24 months   MAL-ED           BRAZIL                         6              1        0     207
6-24 months   MAL-ED           BRAZIL                         7              0       16     207
6-24 months   MAL-ED           BRAZIL                         7              1        0     207
6-24 months   MAL-ED           BRAZIL                         8              0       14     207
6-24 months   MAL-ED           BRAZIL                         8              1        1     207
6-24 months   MAL-ED           BRAZIL                         9              0       20     207
6-24 months   MAL-ED           BRAZIL                         9              1        1     207
6-24 months   MAL-ED           BRAZIL                         10             0       25     207
6-24 months   MAL-ED           BRAZIL                         10             1        0     207
6-24 months   MAL-ED           BRAZIL                         11             0       17     207
6-24 months   MAL-ED           BRAZIL                         11             1        0     207
6-24 months   MAL-ED           BRAZIL                         12             0       18     207
6-24 months   MAL-ED           BRAZIL                         12             1        0     207
6-24 months   MAL-ED           INDIA                          1              0       13     235
6-24 months   MAL-ED           INDIA                          1              1        2     235
6-24 months   MAL-ED           INDIA                          2              0       20     235
6-24 months   MAL-ED           INDIA                          2              1        3     235
6-24 months   MAL-ED           INDIA                          3              0       20     235
6-24 months   MAL-ED           INDIA                          3              1        1     235
6-24 months   MAL-ED           INDIA                          4              0       12     235
6-24 months   MAL-ED           INDIA                          4              1        6     235
6-24 months   MAL-ED           INDIA                          5              0        4     235
6-24 months   MAL-ED           INDIA                          5              1        3     235
6-24 months   MAL-ED           INDIA                          6              0       16     235
6-24 months   MAL-ED           INDIA                          6              1        2     235
6-24 months   MAL-ED           INDIA                          7              0       15     235
6-24 months   MAL-ED           INDIA                          7              1        6     235
6-24 months   MAL-ED           INDIA                          8              0       16     235
6-24 months   MAL-ED           INDIA                          8              1        5     235
6-24 months   MAL-ED           INDIA                          9              0       16     235
6-24 months   MAL-ED           INDIA                          9              1        5     235
6-24 months   MAL-ED           INDIA                          10             0       21     235
6-24 months   MAL-ED           INDIA                          10             1        3     235
6-24 months   MAL-ED           INDIA                          11             0       16     235
6-24 months   MAL-ED           INDIA                          11             1        8     235
6-24 months   MAL-ED           INDIA                          12             0       19     235
6-24 months   MAL-ED           INDIA                          12             1        3     235
6-24 months   MAL-ED           NEPAL                          1              0       18     235
6-24 months   MAL-ED           NEPAL                          1              1        2     235
6-24 months   MAL-ED           NEPAL                          2              0       17     235
6-24 months   MAL-ED           NEPAL                          2              1        3     235
6-24 months   MAL-ED           NEPAL                          3              0       20     235
6-24 months   MAL-ED           NEPAL                          3              1        0     235
6-24 months   MAL-ED           NEPAL                          4              0       17     235
6-24 months   MAL-ED           NEPAL                          4              1        3     235
6-24 months   MAL-ED           NEPAL                          5              0       15     235
6-24 months   MAL-ED           NEPAL                          5              1        3     235
6-24 months   MAL-ED           NEPAL                          6              0       18     235
6-24 months   MAL-ED           NEPAL                          6              1        2     235
6-24 months   MAL-ED           NEPAL                          7              0       19     235
6-24 months   MAL-ED           NEPAL                          7              1        0     235
6-24 months   MAL-ED           NEPAL                          8              0       17     235
6-24 months   MAL-ED           NEPAL                          8              1        2     235
6-24 months   MAL-ED           NEPAL                          9              0       19     235
6-24 months   MAL-ED           NEPAL                          9              1        0     235
6-24 months   MAL-ED           NEPAL                          10             0       20     235
6-24 months   MAL-ED           NEPAL                          10             1        0     235
6-24 months   MAL-ED           NEPAL                          11             0       20     235
6-24 months   MAL-ED           NEPAL                          11             1        0     235
6-24 months   MAL-ED           NEPAL                          12             0       19     235
6-24 months   MAL-ED           NEPAL                          12             1        1     235
6-24 months   MAL-ED           PERU                           1              0       30     270
6-24 months   MAL-ED           PERU                           1              1        3     270
6-24 months   MAL-ED           PERU                           2              0       24     270
6-24 months   MAL-ED           PERU                           2              1        2     270
6-24 months   MAL-ED           PERU                           3              0       21     270
6-24 months   MAL-ED           PERU                           3              1        1     270
6-24 months   MAL-ED           PERU                           4              0       18     270
6-24 months   MAL-ED           PERU                           4              1        0     270
6-24 months   MAL-ED           PERU                           5              0       21     270
6-24 months   MAL-ED           PERU                           5              1        1     270
6-24 months   MAL-ED           PERU                           6              0       19     270
6-24 months   MAL-ED           PERU                           6              1        1     270
6-24 months   MAL-ED           PERU                           7              0       22     270
6-24 months   MAL-ED           PERU                           7              1        0     270
6-24 months   MAL-ED           PERU                           8              0       15     270
6-24 months   MAL-ED           PERU                           8              1        1     270
6-24 months   MAL-ED           PERU                           9              0       21     270
6-24 months   MAL-ED           PERU                           9              1        1     270
6-24 months   MAL-ED           PERU                           10             0       19     270
6-24 months   MAL-ED           PERU                           10             1        0     270
6-24 months   MAL-ED           PERU                           11             0       33     270
6-24 months   MAL-ED           PERU                           11             1        1     270
6-24 months   MAL-ED           PERU                           12             0       16     270
6-24 months   MAL-ED           PERU                           12             1        0     270
6-24 months   MAL-ED           SOUTH AFRICA                   1              0       23     259
6-24 months   MAL-ED           SOUTH AFRICA                   1              1        8     259
6-24 months   MAL-ED           SOUTH AFRICA                   2              0       34     259
6-24 months   MAL-ED           SOUTH AFRICA                   2              1        0     259
6-24 months   MAL-ED           SOUTH AFRICA                   3              0       17     259
6-24 months   MAL-ED           SOUTH AFRICA                   3              1        0     259
6-24 months   MAL-ED           SOUTH AFRICA                   4              0       11     259
6-24 months   MAL-ED           SOUTH AFRICA                   4              1        1     259
6-24 months   MAL-ED           SOUTH AFRICA                   5              0       11     259
6-24 months   MAL-ED           SOUTH AFRICA                   5              1        0     259
6-24 months   MAL-ED           SOUTH AFRICA                   6              0       18     259
6-24 months   MAL-ED           SOUTH AFRICA                   6              1        0     259
6-24 months   MAL-ED           SOUTH AFRICA                   7              0       24     259
6-24 months   MAL-ED           SOUTH AFRICA                   7              1        1     259
6-24 months   MAL-ED           SOUTH AFRICA                   8              0        8     259
6-24 months   MAL-ED           SOUTH AFRICA                   8              1        0     259
6-24 months   MAL-ED           SOUTH AFRICA                   9              0       17     259
6-24 months   MAL-ED           SOUTH AFRICA                   9              1        1     259
6-24 months   MAL-ED           SOUTH AFRICA                   10             0       20     259
6-24 months   MAL-ED           SOUTH AFRICA                   10             1        3     259
6-24 months   MAL-ED           SOUTH AFRICA                   11             0       29     259
6-24 months   MAL-ED           SOUTH AFRICA                   11             1        2     259
6-24 months   MAL-ED           SOUTH AFRICA                   12             0       27     259
6-24 months   MAL-ED           SOUTH AFRICA                   12             1        4     259
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              0       13     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1        6     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              0       23     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              1        4     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              0       21     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              1        2     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              0        9     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              1        1     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              0       15     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              1        0     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              0       15     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              1        1     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              0       28     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              1        0     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              0       11     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              1        1     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              0       18     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              1        0     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             0       19     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             1        0     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             0       24     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             1        4     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             0       28     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             1        2     245
6-24 months   NIH-Birth        BANGLADESH                     1              0       39     542
6-24 months   NIH-Birth        BANGLADESH                     1              1       13     542
6-24 months   NIH-Birth        BANGLADESH                     2              0       38     542
6-24 months   NIH-Birth        BANGLADESH                     2              1       12     542
6-24 months   NIH-Birth        BANGLADESH                     3              0       42     542
6-24 months   NIH-Birth        BANGLADESH                     3              1        9     542
6-24 months   NIH-Birth        BANGLADESH                     4              0       36     542
6-24 months   NIH-Birth        BANGLADESH                     4              1        9     542
6-24 months   NIH-Birth        BANGLADESH                     5              0       35     542
6-24 months   NIH-Birth        BANGLADESH                     5              1        7     542
6-24 months   NIH-Birth        BANGLADESH                     6              0       33     542
6-24 months   NIH-Birth        BANGLADESH                     6              1        7     542
6-24 months   NIH-Birth        BANGLADESH                     7              0       33     542
6-24 months   NIH-Birth        BANGLADESH                     7              1       12     542
6-24 months   NIH-Birth        BANGLADESH                     8              0       27     542
6-24 months   NIH-Birth        BANGLADESH                     8              1       10     542
6-24 months   NIH-Birth        BANGLADESH                     9              0       23     542
6-24 months   NIH-Birth        BANGLADESH                     9              1        6     542
6-24 months   NIH-Birth        BANGLADESH                     10             0       46     542
6-24 months   NIH-Birth        BANGLADESH                     10             1        7     542
6-24 months   NIH-Birth        BANGLADESH                     11             0       37     542
6-24 months   NIH-Birth        BANGLADESH                     11             1       11     542
6-24 months   NIH-Birth        BANGLADESH                     12             0       39     542
6-24 months   NIH-Birth        BANGLADESH                     12             1       11     542
6-24 months   PROBIT           BELARUS                        1              0     1147   16598
6-24 months   PROBIT           BELARUS                        1              1        0   16598
6-24 months   PROBIT           BELARUS                        2              0      988   16598
6-24 months   PROBIT           BELARUS                        2              1        0   16598
6-24 months   PROBIT           BELARUS                        3              0     1169   16598
6-24 months   PROBIT           BELARUS                        3              1        0   16598
6-24 months   PROBIT           BELARUS                        4              0     1116   16598
6-24 months   PROBIT           BELARUS                        4              1        2   16598
6-24 months   PROBIT           BELARUS                        5              0     1133   16598
6-24 months   PROBIT           BELARUS                        5              1        0   16598
6-24 months   PROBIT           BELARUS                        6              0     1191   16598
6-24 months   PROBIT           BELARUS                        6              1        0   16598
6-24 months   PROBIT           BELARUS                        7              0     1455   16598
6-24 months   PROBIT           BELARUS                        7              1        1   16598
6-24 months   PROBIT           BELARUS                        8              0     1585   16598
6-24 months   PROBIT           BELARUS                        8              1        0   16598
6-24 months   PROBIT           BELARUS                        9              0     1560   16598
6-24 months   PROBIT           BELARUS                        9              1        1   16598
6-24 months   PROBIT           BELARUS                        10             0     1768   16598
6-24 months   PROBIT           BELARUS                        10             1        0   16598
6-24 months   PROBIT           BELARUS                        11             0     1681   16598
6-24 months   PROBIT           BELARUS                        11             1        0   16598
6-24 months   PROBIT           BELARUS                        12             0     1799   16598
6-24 months   PROBIT           BELARUS                        12             1        2   16598
6-24 months   ResPak           PAKISTAN                       1              0        1     236
6-24 months   ResPak           PAKISTAN                       1              1        1     236
6-24 months   ResPak           PAKISTAN                       2              0        8     236
6-24 months   ResPak           PAKISTAN                       2              1        2     236
6-24 months   ResPak           PAKISTAN                       3              0        9     236
6-24 months   ResPak           PAKISTAN                       3              1        1     236
6-24 months   ResPak           PAKISTAN                       4              0       18     236
6-24 months   ResPak           PAKISTAN                       4              1        3     236
6-24 months   ResPak           PAKISTAN                       5              0       22     236
6-24 months   ResPak           PAKISTAN                       5              1        4     236
6-24 months   ResPak           PAKISTAN                       6              0       32     236
6-24 months   ResPak           PAKISTAN                       6              1        7     236
6-24 months   ResPak           PAKISTAN                       7              0       38     236
6-24 months   ResPak           PAKISTAN                       7              1        3     236
6-24 months   ResPak           PAKISTAN                       8              0       20     236
6-24 months   ResPak           PAKISTAN                       8              1        5     236
6-24 months   ResPak           PAKISTAN                       9              0       33     236
6-24 months   ResPak           PAKISTAN                       9              1        4     236
6-24 months   ResPak           PAKISTAN                       10             0       15     236
6-24 months   ResPak           PAKISTAN                       10             1        0     236
6-24 months   ResPak           PAKISTAN                       11             0        6     236
6-24 months   ResPak           PAKISTAN                       11             1        1     236
6-24 months   ResPak           PAKISTAN                       12             0        3     236
6-24 months   ResPak           PAKISTAN                       12             1        0     236
6-24 months   SAS-CompFeed     INDIA                          1              0       72    1389
6-24 months   SAS-CompFeed     INDIA                          1              1       24    1389
6-24 months   SAS-CompFeed     INDIA                          2              0       67    1389
6-24 months   SAS-CompFeed     INDIA                          2              1       15    1389
6-24 months   SAS-CompFeed     INDIA                          3              0       65    1389
6-24 months   SAS-CompFeed     INDIA                          3              1       17    1389
6-24 months   SAS-CompFeed     INDIA                          4              0       63    1389
6-24 months   SAS-CompFeed     INDIA                          4              1       17    1389
6-24 months   SAS-CompFeed     INDIA                          5              0       63    1389
6-24 months   SAS-CompFeed     INDIA                          5              1       18    1389
6-24 months   SAS-CompFeed     INDIA                          6              0       85    1389
6-24 months   SAS-CompFeed     INDIA                          6              1       22    1389
6-24 months   SAS-CompFeed     INDIA                          7              0       90    1389
6-24 months   SAS-CompFeed     INDIA                          7              1       27    1389
6-24 months   SAS-CompFeed     INDIA                          8              0      114    1389
6-24 months   SAS-CompFeed     INDIA                          8              1       40    1389
6-24 months   SAS-CompFeed     INDIA                          9              0      131    1389
6-24 months   SAS-CompFeed     INDIA                          9              1       41    1389
6-24 months   SAS-CompFeed     INDIA                          10             0      117    1389
6-24 months   SAS-CompFeed     INDIA                          10             1       33    1389
6-24 months   SAS-CompFeed     INDIA                          11             0       94    1389
6-24 months   SAS-CompFeed     INDIA                          11             1       37    1389
6-24 months   SAS-CompFeed     INDIA                          12             0      114    1389
6-24 months   SAS-CompFeed     INDIA                          12             1       23    1389
6-24 months   SAS-FoodSuppl    INDIA                          1              0       38     401
6-24 months   SAS-FoodSuppl    INDIA                          1              1       24     401
6-24 months   SAS-FoodSuppl    INDIA                          2              0       27     401
6-24 months   SAS-FoodSuppl    INDIA                          2              1       12     401
6-24 months   SAS-FoodSuppl    INDIA                          3              0       24     401
6-24 months   SAS-FoodSuppl    INDIA                          3              1       12     401
6-24 months   SAS-FoodSuppl    INDIA                          4              0       16     401
6-24 months   SAS-FoodSuppl    INDIA                          4              1       13     401
6-24 months   SAS-FoodSuppl    INDIA                          5              0       19     401
6-24 months   SAS-FoodSuppl    INDIA                          5              1       12     401
6-24 months   SAS-FoodSuppl    INDIA                          6              0       20     401
6-24 months   SAS-FoodSuppl    INDIA                          6              1       13     401
6-24 months   SAS-FoodSuppl    INDIA                          7              0       12     401
6-24 months   SAS-FoodSuppl    INDIA                          7              1        6     401
6-24 months   SAS-FoodSuppl    INDIA                          8              0        0     401
6-24 months   SAS-FoodSuppl    INDIA                          8              1        0     401
6-24 months   SAS-FoodSuppl    INDIA                          9              0        6     401
6-24 months   SAS-FoodSuppl    INDIA                          9              1        6     401
6-24 months   SAS-FoodSuppl    INDIA                          10             0       20     401
6-24 months   SAS-FoodSuppl    INDIA                          10             1        9     401
6-24 months   SAS-FoodSuppl    INDIA                          11             0       32     401
6-24 months   SAS-FoodSuppl    INDIA                          11             1       16     401
6-24 months   SAS-FoodSuppl    INDIA                          12             0       42     401
6-24 months   SAS-FoodSuppl    INDIA                          12             1       22     401
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      183    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       15    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0      124    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1        9    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              0      143    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              1        7    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              0      130    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              1        8    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              0      155    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              1        4    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              0      129    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              1       10    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              0      135    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              1        7    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              0      166    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              1       10    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              0      188    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              1       11    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             0      188    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             1        8    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             0      179    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             1       12    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             0      184    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             1       12    2017
6-24 months   ZVITAMBO         ZIMBABWE                       1              0     1020   10813
6-24 months   ZVITAMBO         ZIMBABWE                       1              1       44   10813
6-24 months   ZVITAMBO         ZIMBABWE                       2              0      781   10813
6-24 months   ZVITAMBO         ZIMBABWE                       2              1       36   10813
6-24 months   ZVITAMBO         ZIMBABWE                       3              0      834   10813
6-24 months   ZVITAMBO         ZIMBABWE                       3              1       42   10813
6-24 months   ZVITAMBO         ZIMBABWE                       4              0      790   10813
6-24 months   ZVITAMBO         ZIMBABWE                       4              1       28   10813
6-24 months   ZVITAMBO         ZIMBABWE                       5              0      725   10813
6-24 months   ZVITAMBO         ZIMBABWE                       5              1       47   10813
6-24 months   ZVITAMBO         ZIMBABWE                       6              0      846   10813
6-24 months   ZVITAMBO         ZIMBABWE                       6              1       39   10813
6-24 months   ZVITAMBO         ZIMBABWE                       7              0      870   10813
6-24 months   ZVITAMBO         ZIMBABWE                       7              1       34   10813
6-24 months   ZVITAMBO         ZIMBABWE                       8              0      901   10813
6-24 months   ZVITAMBO         ZIMBABWE                       8              1       30   10813
6-24 months   ZVITAMBO         ZIMBABWE                       9              0     1000   10813
6-24 months   ZVITAMBO         ZIMBABWE                       9              1       24   10813
6-24 months   ZVITAMBO         ZIMBABWE                       10             0      760   10813
6-24 months   ZVITAMBO         ZIMBABWE                       10             1       37   10813
6-24 months   ZVITAMBO         ZIMBABWE                       11             0      867   10813
6-24 months   ZVITAMBO         ZIMBABWE                       11             1       33   10813
6-24 months   ZVITAMBO         ZIMBABWE                       12             0      975   10813
6-24 months   ZVITAMBO         ZIMBABWE                       12             1       50   10813


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/63da4c64-0a37-42b8-8a6e-172fa8dc9b97/c298eb74-3d52-4498-bb9d-c7541441dcbf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/63da4c64-0a37-42b8-8a6e-172fa8dc9b97/c298eb74-3d52-4498-bb9d-c7541441dcbf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/63da4c64-0a37-42b8-8a6e-172fa8dc9b97/c298eb74-3d52-4498-bb9d-c7541441dcbf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/63da4c64-0a37-42b8-8a6e-172fa8dc9b97/c298eb74-3d52-4498-bb9d-c7541441dcbf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   1                    NA                0.1046025    0.0524969   0.1567081
0-24 months   iLiNS-Zinc     BURKINA FASO   2                    NA                0.1394231    0.0771751   0.2016711
0-24 months   iLiNS-Zinc     BURKINA FASO   3                    NA                0.1401869    0.0898832   0.1904906
0-24 months   iLiNS-Zinc     BURKINA FASO   4                    NA                0.1311475    0.0231083   0.2391868
0-24 months   iLiNS-Zinc     BURKINA FASO   5                    NA                0.1400778    0.0842065   0.1959491
0-24 months   iLiNS-Zinc     BURKINA FASO   6                    NA                0.1229508    0.0504818   0.1954199
0-24 months   iLiNS-Zinc     BURKINA FASO   7                    NA                0.1192214    0.0759736   0.1624693
0-24 months   iLiNS-Zinc     BURKINA FASO   8                    NA                0.1274238    0.0862404   0.1686072
0-24 months   iLiNS-Zinc     BURKINA FASO   9                    NA                0.1322034    0.0829592   0.1814476
0-24 months   iLiNS-Zinc     BURKINA FASO   10                   NA                0.0967742    0.0372366   0.1563118
0-24 months   iLiNS-Zinc     BURKINA FASO   11                   NA                0.1218274    0.0655337   0.1781211
0-24 months   iLiNS-Zinc     BURKINA FASO   12                   NA                0.1481481    0.1007601   0.1955362
0-24 months   JiVitA-3       BANGLADESH     1                    NA                0.0843468    0.0729315   0.0957621
0-24 months   JiVitA-3       BANGLADESH     2                    NA                0.0808271    0.0692249   0.0924292
0-24 months   JiVitA-3       BANGLADESH     3                    NA                0.0683761    0.0580989   0.0786533
0-24 months   JiVitA-3       BANGLADESH     4                    NA                0.0914997    0.0778226   0.1051769
0-24 months   JiVitA-3       BANGLADESH     5                    NA                0.1126158    0.0951439   0.1300878
0-24 months   JiVitA-3       BANGLADESH     6                    NA                0.1085672    0.0921416   0.1249928
0-24 months   JiVitA-3       BANGLADESH     7                    NA                0.1025974    0.0870749   0.1181199
0-24 months   JiVitA-3       BANGLADESH     8                    NA                0.0862155    0.0736344   0.0987967
0-24 months   JiVitA-3       BANGLADESH     9                    NA                0.0834929    0.0722682   0.0947176
0-24 months   JiVitA-3       BANGLADESH     10                   NA                0.0917431    0.0801072   0.1033791
0-24 months   JiVitA-3       BANGLADESH     11                   NA                0.0903800    0.0791601   0.1015999
0-24 months   JiVitA-3       BANGLADESH     12                   NA                0.0885039    0.0783132   0.0986947
0-24 months   JiVitA-4       BANGLADESH     1                    NA                0.1206897    0.0662477   0.1751316
0-24 months   JiVitA-4       BANGLADESH     2                    NA                0.1095890    0.0710541   0.1481240
0-24 months   JiVitA-4       BANGLADESH     3                    NA                0.1610169    0.1255145   0.1965194
0-24 months   JiVitA-4       BANGLADESH     4                    NA                0.1952790    0.1671449   0.2234130
0-24 months   JiVitA-4       BANGLADESH     5                    NA                0.1792000    0.1455575   0.2128425
0-24 months   JiVitA-4       BANGLADESH     6                    NA                0.1760870    0.1357463   0.2164276
0-24 months   JiVitA-4       BANGLADESH     7                    NA                0.1863075    0.1565801   0.2160349
0-24 months   JiVitA-4       BANGLADESH     8                    NA                0.1257036    0.0965203   0.1548868
0-24 months   JiVitA-4       BANGLADESH     9                    NA                0.1417476    0.1090228   0.1744724
0-24 months   JiVitA-4       BANGLADESH     10                   NA                0.1111111    0.0747702   0.1474520
0-24 months   JiVitA-4       BANGLADESH     11                   NA                0.1520468    0.0964834   0.2076101
0-24 months   JiVitA-4       BANGLADESH     12                   NA                0.1264368    0.0842684   0.1686052
0-24 months   Keneba         GAMBIA         1                    NA                0.1561181    0.1098996   0.2023367
0-24 months   Keneba         GAMBIA         2                    NA                0.1942446    0.1477314   0.2407578
0-24 months   Keneba         GAMBIA         3                    NA                0.1422414    0.0972868   0.1871960
0-24 months   Keneba         GAMBIA         4                    NA                0.1587302    0.1183689   0.1990914
0-24 months   Keneba         GAMBIA         5                    NA                0.1009464    0.0677775   0.1341153
0-24 months   Keneba         GAMBIA         6                    NA                0.1068376    0.0672516   0.1464236
0-24 months   Keneba         GAMBIA         7                    NA                0.1978022    0.1399202   0.2556842
0-24 months   Keneba         GAMBIA         8                    NA                0.1787709    0.1226304   0.2349115
0-24 months   Keneba         GAMBIA         9                    NA                0.1632653    0.1115123   0.2150183
0-24 months   Keneba         GAMBIA         10                   NA                0.1681416    0.1193741   0.2169091
0-24 months   Keneba         GAMBIA         11                   NA                0.1363636    0.0980316   0.1746957
0-24 months   Keneba         GAMBIA         12                   NA                0.1004785    0.0597131   0.1412439
0-24 months   NIH-Birth      BANGLADESH     1                    NA                0.2794118    0.1726765   0.3861470
0-24 months   NIH-Birth      BANGLADESH     2                    NA                0.2166667    0.1123413   0.3209921
0-24 months   NIH-Birth      BANGLADESH     3                    NA                0.1803279    0.0837710   0.2768847
0-24 months   NIH-Birth      BANGLADESH     4                    NA                0.1923077    0.0851025   0.2995129
0-24 months   NIH-Birth      BANGLADESH     5                    NA                0.2127660    0.0956677   0.3298642
0-24 months   NIH-Birth      BANGLADESH     6                    NA                0.1702128    0.0626835   0.2777421
0-24 months   NIH-Birth      BANGLADESH     7                    NA                0.2708333    0.1450161   0.3966506
0-24 months   NIH-Birth      BANGLADESH     8                    NA                0.3333333    0.1906526   0.4760141
0-24 months   NIH-Birth      BANGLADESH     9                    NA                0.1818182    0.0501190   0.3135173
0-24 months   NIH-Birth      BANGLADESH     10                   NA                0.1500000    0.0595776   0.2404224
0-24 months   NIH-Birth      BANGLADESH     11                   NA                0.2500000    0.1322136   0.3677864
0-24 months   NIH-Birth      BANGLADESH     12                   NA                0.2037037    0.0961968   0.3112106
0-24 months   SAS-CompFeed   INDIA          1                    NA                0.2407407    0.1752626   0.3062189
0-24 months   SAS-CompFeed   INDIA          2                    NA                0.2065217    0.1163837   0.2966598
0-24 months   SAS-CompFeed   INDIA          3                    NA                0.1931818    0.0856080   0.3007557
0-24 months   SAS-CompFeed   INDIA          4                    NA                0.2352941    0.1455589   0.3250293
0-24 months   SAS-CompFeed   INDIA          5                    NA                0.2696629    0.1890236   0.3503022
0-24 months   SAS-CompFeed   INDIA          6                    NA                0.2068966    0.1193738   0.2944193
0-24 months   SAS-CompFeed   INDIA          7                    NA                0.2619048    0.1593920   0.3644175
0-24 months   SAS-CompFeed   INDIA          8                    NA                0.2662722    0.1637571   0.3687872
0-24 months   SAS-CompFeed   INDIA          9                    NA                0.2282609    0.1922326   0.2642891
0-24 months   SAS-CompFeed   INDIA          10                   NA                0.2195122    0.1366964   0.3023280
0-24 months   SAS-CompFeed   INDIA          11                   NA                0.2827586    0.2071966   0.3583206
0-24 months   SAS-CompFeed   INDIA          12                   NA                0.1632653    0.0919343   0.2345964
0-24 months   ZVITAMBO       ZIMBABWE       1                    NA                0.0406504    0.0301275   0.0511733
0-24 months   ZVITAMBO       ZIMBABWE       2                    NA                0.0459770    0.0332723   0.0586817
0-24 months   ZVITAMBO       ZIMBABWE       3                    NA                0.0523560    0.0394594   0.0652527
0-24 months   ZVITAMBO       ZIMBABWE       4                    NA                0.0368932    0.0253811   0.0484053
0-24 months   ZVITAMBO       ZIMBABWE       5                    NA                0.0549020    0.0409223   0.0688816
0-24 months   ZVITAMBO       ZIMBABWE       6                    NA                0.0436300    0.0318030   0.0554571
0-24 months   ZVITAMBO       ZIMBABWE       7                    NA                0.0433673    0.0317257   0.0550090
0-24 months   ZVITAMBO       ZIMBABWE       8                    NA                0.0324939    0.0225887   0.0423991
0-24 months   ZVITAMBO       ZIMBABWE       9                    NA                0.0256992    0.0171723   0.0342260
0-24 months   ZVITAMBO       ZIMBABWE       10                   NA                0.0455408    0.0329538   0.0581278
0-24 months   ZVITAMBO       ZIMBABWE       11                   NA                0.0418483    0.0302595   0.0534371
0-24 months   ZVITAMBO       ZIMBABWE       12                   NA                0.0495283    0.0376045   0.0614521
0-6 months    JiVitA-3       BANGLADESH     1                    NA                0.0425364    0.0345447   0.0505282
0-6 months    JiVitA-3       BANGLADESH     2                    NA                0.0400566    0.0315627   0.0485504
0-6 months    JiVitA-3       BANGLADESH     3                    NA                0.0367347    0.0286761   0.0447933
0-6 months    JiVitA-3       BANGLADESH     4                    NA                0.0392157    0.0298070   0.0486243
0-6 months    JiVitA-3       BANGLADESH     5                    NA                0.0338373    0.0238181   0.0438564
0-6 months    JiVitA-3       BANGLADESH     6                    NA                0.0297398    0.0201243   0.0393553
0-6 months    JiVitA-3       BANGLADESH     7                    NA                0.0312297    0.0224830   0.0399764
0-6 months    JiVitA-3       BANGLADESH     8                    NA                0.0381910    0.0295571   0.0468248
0-6 months    JiVitA-3       BANGLADESH     9                    NA                0.0407066    0.0326127   0.0488005
0-6 months    JiVitA-3       BANGLADESH     10                   NA                0.0440123    0.0363828   0.0516417
0-6 months    JiVitA-3       BANGLADESH     11                   NA                0.0426263    0.0348282   0.0504245
0-6 months    JiVitA-3       BANGLADESH     12                   NA                0.0439317    0.0366264   0.0512370
0-6 months    SAS-CompFeed   INDIA          1                    NA                0.0666667    0.0214749   0.1118585
0-6 months    SAS-CompFeed   INDIA          2                    NA                0.0652174    0.0081732   0.1222616
0-6 months    SAS-CompFeed   INDIA          3                    NA                0.0574713   -0.0070984   0.1220410
0-6 months    SAS-CompFeed   INDIA          4                    NA                0.0595238   -0.0097240   0.1287716
0-6 months    SAS-CompFeed   INDIA          5                    NA                0.1235955    0.0494117   0.1977793
0-6 months    SAS-CompFeed   INDIA          6                    NA                0.0608696    0.0161788   0.1055603
0-6 months    SAS-CompFeed   INDIA          7                    NA                0.0952381    0.0246884   0.1657878
0-6 months    SAS-CompFeed   INDIA          8                    NA                0.0710059    0.0169588   0.1250530
0-6 months    SAS-CompFeed   INDIA          9                    NA                0.0549451    0.0059364   0.1039537
0-6 months    SAS-CompFeed   INDIA          10                   NA                0.0613497    0.0166388   0.1060606
0-6 months    SAS-CompFeed   INDIA          11                   NA                0.0965517    0.0417510   0.1513525
0-6 months    SAS-CompFeed   INDIA          12                   NA                0.0476190    0.0140246   0.0812135
0-6 months    ZVITAMBO       ZIMBABWE       1                    NA                0.0112360    0.0055817   0.0168902
0-6 months    ZVITAMBO       ZIMBABWE       2                    NA                0.0145914    0.0072611   0.0219218
0-6 months    ZVITAMBO       ZIMBABWE       3                    NA                0.0166960    0.0092513   0.0241406
0-6 months    ZVITAMBO       ZIMBABWE       4                    NA                0.0097276    0.0037277   0.0157276
0-6 months    ZVITAMBO       ZIMBABWE       5                    NA                0.0089021    0.0031119   0.0146923
0-6 months    ZVITAMBO       ZIMBABWE       6                    NA                0.0113835    0.0052306   0.0175365
0-6 months    ZVITAMBO       ZIMBABWE       7                    NA                0.0153322    0.0083035   0.0223609
0-6 months    ZVITAMBO       ZIMBABWE       8                    NA                0.0089577    0.0036877   0.0142276
0-6 months    ZVITAMBO       ZIMBABWE       9                    NA                0.0091255    0.0039858   0.0142652
0-6 months    ZVITAMBO       ZIMBABWE       10                   NA                0.0115053    0.0050330   0.0179776
0-6 months    ZVITAMBO       ZIMBABWE       11                   NA                0.0149648    0.0079043   0.0220253
0-6 months    ZVITAMBO       ZIMBABWE       12                   NA                0.0126183    0.0064744   0.0187622
6-24 months   iLiNS-Zinc     BURKINA FASO   1                    NA                0.1046025    0.0524969   0.1567081
6-24 months   iLiNS-Zinc     BURKINA FASO   2                    NA                0.1394231    0.0771751   0.2016711
6-24 months   iLiNS-Zinc     BURKINA FASO   3                    NA                0.1401869    0.0898832   0.1904906
6-24 months   iLiNS-Zinc     BURKINA FASO   4                    NA                0.1311475    0.0231083   0.2391868
6-24 months   iLiNS-Zinc     BURKINA FASO   5                    NA                0.1400778    0.0842065   0.1959491
6-24 months   iLiNS-Zinc     BURKINA FASO   6                    NA                0.1229508    0.0504818   0.1954199
6-24 months   iLiNS-Zinc     BURKINA FASO   7                    NA                0.1192214    0.0759736   0.1624693
6-24 months   iLiNS-Zinc     BURKINA FASO   8                    NA                0.1274238    0.0862404   0.1686072
6-24 months   iLiNS-Zinc     BURKINA FASO   9                    NA                0.1322034    0.0829592   0.1814476
6-24 months   iLiNS-Zinc     BURKINA FASO   10                   NA                0.0967742    0.0372366   0.1563118
6-24 months   iLiNS-Zinc     BURKINA FASO   11                   NA                0.1218274    0.0655337   0.1781211
6-24 months   iLiNS-Zinc     BURKINA FASO   12                   NA                0.1481481    0.1007601   0.1955362
6-24 months   JiVitA-3       BANGLADESH     1                    NA                0.0823782    0.0668843   0.0978721
6-24 months   JiVitA-3       BANGLADESH     2                    NA                0.0810147    0.0656934   0.0963360
6-24 months   JiVitA-3       BANGLADESH     3                    NA                0.0629275    0.0502955   0.0755595
6-24 months   JiVitA-3       BANGLADESH     4                    NA                0.0896496    0.0735333   0.1057658
6-24 months   JiVitA-3       BANGLADESH     5                    NA                0.1000827    0.0819174   0.1182481
6-24 months   JiVitA-3       BANGLADESH     6                    NA                0.0995851    0.0825275   0.1166426
6-24 months   JiVitA-3       BANGLADESH     7                    NA                0.1003110    0.0832466   0.1173755
6-24 months   JiVitA-3       BANGLADESH     8                    NA                0.0703753    0.0568129   0.0839377
6-24 months   JiVitA-3       BANGLADESH     9                    NA                0.0813880    0.0674981   0.0952780
6-24 months   JiVitA-3       BANGLADESH     10                   NA                0.0949367    0.0797038   0.1101696
6-24 months   JiVitA-3       BANGLADESH     11                   NA                0.0929959    0.0787833   0.1072085
6-24 months   JiVitA-3       BANGLADESH     12                   NA                0.0903923    0.0765694   0.1042151
6-24 months   JiVitA-4       BANGLADESH     1                    NA                0.1206897    0.0662436   0.1751357
6-24 months   JiVitA-4       BANGLADESH     2                    NA                0.1013699    0.0630952   0.1396445
6-24 months   JiVitA-4       BANGLADESH     3                    NA                0.1380042    0.1037812   0.1722273
6-24 months   JiVitA-4       BANGLADESH     4                    NA                0.1786868    0.1527155   0.2046580
6-24 months   JiVitA-4       BANGLADESH     5                    NA                0.1655949    0.1328806   0.1983091
6-24 months   JiVitA-4       BANGLADESH     6                    NA                0.1586957    0.1194694   0.1979219
6-24 months   JiVitA-4       BANGLADESH     7                    NA                0.1711712    0.1431355   0.1992068
6-24 months   JiVitA-4       BANGLADESH     8                    NA                0.1106942    0.0830806   0.1383077
6-24 months   JiVitA-4       BANGLADESH     9                    NA                0.1300971    0.0984369   0.1617572
6-24 months   JiVitA-4       BANGLADESH     10                   NA                0.1114458    0.0749192   0.1479724
6-24 months   JiVitA-4       BANGLADESH     11                   NA                0.1470588    0.0917370   0.2023807
6-24 months   JiVitA-4       BANGLADESH     12                   NA                0.1279070    0.0857205   0.1700935
6-24 months   Keneba         GAMBIA         1                    NA                0.1428571    0.0970238   0.1886904
6-24 months   Keneba         GAMBIA         2                    NA                0.1931818    0.1455501   0.2408136
6-24 months   Keneba         GAMBIA         3                    NA                0.1454545    0.0988587   0.1920504
6-24 months   Keneba         GAMBIA         4                    NA                0.1569966    0.1153333   0.1986599
6-24 months   Keneba         GAMBIA         5                    NA                0.0958904    0.0621124   0.1296684
6-24 months   Keneba         GAMBIA         6                    NA                0.1121076    0.0706912   0.1535241
6-24 months   Keneba         GAMBIA         7                    NA                0.2000000    0.1407254   0.2592746
6-24 months   Keneba         GAMBIA         8                    NA                0.1726190    0.1154620   0.2297761
6-24 months   Keneba         GAMBIA         9                    NA                0.1666667    0.1130987   0.2202346
6-24 months   Keneba         GAMBIA         10                   NA                0.1516588    0.1032521   0.2000655
6-24 months   Keneba         GAMBIA         11                   NA                0.1398601    0.0996555   0.1800648
6-24 months   Keneba         GAMBIA         12                   NA                0.1088083    0.0648677   0.1527488
6-24 months   NIH-Birth      BANGLADESH     1                    NA                0.2500000    0.1321992   0.3678008
6-24 months   NIH-Birth      BANGLADESH     2                    NA                0.2400000    0.1215114   0.3584886
6-24 months   NIH-Birth      BANGLADESH     3                    NA                0.1764706    0.0717482   0.2811930
6-24 months   NIH-Birth      BANGLADESH     4                    NA                0.2000000    0.0830224   0.3169776
6-24 months   NIH-Birth      BANGLADESH     5                    NA                0.1666667    0.0538539   0.2794794
6-24 months   NIH-Birth      BANGLADESH     6                    NA                0.1750000    0.0571404   0.2928596
6-24 months   NIH-Birth      BANGLADESH     7                    NA                0.2666667    0.1373430   0.3959903
6-24 months   NIH-Birth      BANGLADESH     8                    NA                0.2702703    0.1270421   0.4134984
6-24 months   NIH-Birth      BANGLADESH     9                    NA                0.2068966    0.0593287   0.3544644
6-24 months   NIH-Birth      BANGLADESH     10                   NA                0.1320755    0.0408401   0.2233108
6-24 months   NIH-Birth      BANGLADESH     11                   NA                0.2291667    0.1101564   0.3481769
6-24 months   NIH-Birth      BANGLADESH     12                   NA                0.2200000    0.1050728   0.3349272
6-24 months   SAS-CompFeed   INDIA          1                    NA                0.2500000    0.1585168   0.3414832
6-24 months   SAS-CompFeed   INDIA          2                    NA                0.1829268    0.1071958   0.2586578
6-24 months   SAS-CompFeed   INDIA          3                    NA                0.2073171    0.0975681   0.3170661
6-24 months   SAS-CompFeed   INDIA          4                    NA                0.2125000    0.1236617   0.3013383
6-24 months   SAS-CompFeed   INDIA          5                    NA                0.2222222    0.1527820   0.2916625
6-24 months   SAS-CompFeed   INDIA          6                    NA                0.2056075    0.1185635   0.2926514
6-24 months   SAS-CompFeed   INDIA          7                    NA                0.2307692    0.1366140   0.3249244
6-24 months   SAS-CompFeed   INDIA          8                    NA                0.2597403    0.1584564   0.3610241
6-24 months   SAS-CompFeed   INDIA          9                    NA                0.2383721    0.1946494   0.2820948
6-24 months   SAS-CompFeed   INDIA          10                   NA                0.2200000    0.1468287   0.2931713
6-24 months   SAS-CompFeed   INDIA          11                   NA                0.2824427    0.2088915   0.3559940
6-24 months   SAS-CompFeed   INDIA          12                   NA                0.1678832    0.1005698   0.2351966
6-24 months   ZVITAMBO       ZIMBABWE       1                    NA                0.0413534    0.0293892   0.0533175
6-24 months   ZVITAMBO       ZIMBABWE       2                    NA                0.0440636    0.0299898   0.0581375
6-24 months   ZVITAMBO       ZIMBABWE       3                    NA                0.0479452    0.0337964   0.0620940
6-24 months   ZVITAMBO       ZIMBABWE       4                    NA                0.0342298    0.0217695   0.0466902
6-24 months   ZVITAMBO       ZIMBABWE       5                    NA                0.0608808    0.0440130   0.0777487
6-24 months   ZVITAMBO       ZIMBABWE       6                    NA                0.0440678    0.0305449   0.0575907
6-24 months   ZVITAMBO       ZIMBABWE       7                    NA                0.0376106    0.0252080   0.0500133
6-24 months   ZVITAMBO       ZIMBABWE       8                    NA                0.0322234    0.0208794   0.0435674
6-24 months   ZVITAMBO       ZIMBABWE       9                    NA                0.0234375    0.0141708   0.0327042
6-24 months   ZVITAMBO       ZIMBABWE       10                   NA                0.0464241    0.0318162   0.0610320
6-24 months   ZVITAMBO       ZIMBABWE       11                   NA                0.0366667    0.0243874   0.0489459
6-24 months   ZVITAMBO       ZIMBABWE       12                   NA                0.0487805    0.0355928   0.0619682


### Parameter: E(Y)


agecat        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   NA                   NA                0.1246554   0.1041227   0.1451882
0-24 months   JiVitA-3       BANGLADESH     NA                   NA                0.0888460   0.0849398   0.0927521
0-24 months   JiVitA-4       BANGLADESH     NA                   NA                0.1613377   0.1500062   0.1726692
0-24 months   Keneba         GAMBIA         NA                   NA                0.1483007   0.1353925   0.1612090
0-24 months   NIH-Birth      BANGLADESH     NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   SAS-CompFeed   INDIA          NA                   NA                0.2319894   0.1917264   0.2722524
0-24 months   ZVITAMBO       ZIMBABWE       NA                   NA                0.0423899   0.0390454   0.0457344
0-6 months    JiVitA-3       BANGLADESH     NA                   NA                0.0396778   0.0371765   0.0421791
0-6 months    SAS-CompFeed   INDIA          NA                   NA                0.0704787   0.0478990   0.0930584
0-6 months    ZVITAMBO       ZIMBABWE       NA                   NA                0.0120612   0.0102430   0.0138795
6-24 months   iLiNS-Zinc     BURKINA FASO   NA                   NA                0.1246554   0.1041227   0.1451882
6-24 months   JiVitA-3       BANGLADESH     NA                   NA                0.0869213   0.0822621   0.0915805
6-24 months   JiVitA-4       BANGLADESH     NA                   NA                0.1477252   0.1371297   0.1583206
6-24 months   Keneba         GAMBIA         NA                   NA                0.1469835   0.1337108   0.1602563
6-24 months   NIH-Birth      BANGLADESH     NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   SAS-CompFeed   INDIA          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   ZVITAMBO       ZIMBABWE       NA                   NA                0.0410617   0.0373214   0.0448020


### Parameter: RR


agecat        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc     BURKINA FASO   2                    1                 1.3328846   0.6796226   2.6140705
0-24 months   iLiNS-Zinc     BURKINA FASO   3                    1                 1.3401869   0.7155801   2.5099930
0-24 months   iLiNS-Zinc     BURKINA FASO   4                    1                 1.2537705   0.4460802   3.5238967
0-24 months   iLiNS-Zinc     BURKINA FASO   5                    1                 1.3391440   0.7309399   2.4534254
0-24 months   iLiNS-Zinc     BURKINA FASO   6                    1                 1.1754098   0.5149448   2.6829833
0-24 months   iLiNS-Zinc     BURKINA FASO   7                    1                 1.1397567   0.6673252   1.9466450
0-24 months   iLiNS-Zinc     BURKINA FASO   8                    1                 1.2181717   0.6670519   2.2246281
0-24 months   iLiNS-Zinc     BURKINA FASO   9                    1                 1.2638644   0.7392554   2.1607596
0-24 months   iLiNS-Zinc     BURKINA FASO   10                   1                 0.9251613   0.4234959   2.0210901
0-24 months   iLiNS-Zinc     BURKINA FASO   11                   1                 1.1646701   0.6010815   2.2566930
0-24 months   iLiNS-Zinc     BURKINA FASO   12                   1                 1.4162963   0.7854964   2.5536657
0-24 months   JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3       BANGLADESH     2                    1                 0.9582707   0.7906751   1.1613907
0-24 months   JiVitA-3       BANGLADESH     3                    1                 0.8106539   0.6631574   0.9909560
0-24 months   JiVitA-3       BANGLADESH     4                    1                 1.0848038   0.8891325   1.3235364
0-24 months   JiVitA-3       BANGLADESH     5                    1                 1.3351522   1.0868660   1.6401576
0-24 months   JiVitA-3       BANGLADESH     6                    1                 1.2871526   1.0549120   1.5705214
0-24 months   JiVitA-3       BANGLADESH     7                    1                 1.2163757   0.9831537   1.5049222
0-24 months   JiVitA-3       BANGLADESH     8                    1                 1.0221554   0.8483672   1.2315441
0-24 months   JiVitA-3       BANGLADESH     9                    1                 0.9898765   0.8177586   1.1982209
0-24 months   JiVitA-3       BANGLADESH     10                   1                 1.0876894   0.9080908   1.3028081
0-24 months   JiVitA-3       BANGLADESH     11                   1                 1.0715285   0.8950920   1.2827435
0-24 months   JiVitA-3       BANGLADESH     12                   1                 1.0492862   0.8820574   1.2482198
0-24 months   JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4       BANGLADESH     2                    1                 0.9080235   0.5086075   1.6211060
0-24 months   JiVitA-4       BANGLADESH     3                    1                 1.3341404   0.8091307   2.1998061
0-24 months   JiVitA-4       BANGLADESH     4                    1                 1.6180258   1.0102657   2.5914048
0-24 months   JiVitA-4       BANGLADESH     5                    1                 1.4848000   0.9169473   2.4043160
0-24 months   JiVitA-4       BANGLADESH     6                    1                 1.4590062   0.8875670   2.3983531
0-24 months   JiVitA-4       BANGLADESH     7                    1                 1.5436909   0.9505190   2.5070321
0-24 months   JiVitA-4       BANGLADESH     8                    1                 1.0415438   0.6276908   1.7282611
0-24 months   JiVitA-4       BANGLADESH     9                    1                 1.1744799   0.7086165   1.9466144
0-24 months   JiVitA-4       BANGLADESH     10                   1                 0.9206349   0.5580137   1.5189031
0-24 months   JiVitA-4       BANGLADESH     11                   1                 1.2598162   0.7050261   2.2511747
0-24 months   JiVitA-4       BANGLADESH     12                   1                 1.0476190   0.5978816   1.8356572
0-24 months   Keneba         GAMBIA         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   Keneba         GAMBIA         2                    1                 1.2442154   0.8502178   1.8207948
0-24 months   Keneba         GAMBIA         3                    1                 0.9111137   0.5908852   1.4048890
0-24 months   Keneba         GAMBIA         4                    1                 1.0167310   0.6882075   1.5020788
0-24 months   Keneba         GAMBIA         5                    1                 0.6466024   0.4154883   1.0062731
0-24 months   Keneba         GAMBIA         6                    1                 0.6843382   0.4258898   1.0996243
0-24 months   Keneba         GAMBIA         7                    1                 1.2670033   0.8355979   1.9211361
0-24 months   Keneba         GAMBIA         8                    1                 1.1451004   0.7437204   1.7631020
0-24 months   Keneba         GAMBIA         9                    1                 1.0457805   0.6777541   1.6136485
0-24 months   Keneba         GAMBIA         10                   1                 1.0770151   0.7115893   1.6300996
0-24 months   Keneba         GAMBIA         11                   1                 0.8734644   0.5806939   1.3138419
0-24 months   Keneba         GAMBIA         12                   1                 0.6436053   0.3894919   1.0635081
0-24 months   NIH-Birth      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth      BANGLADESH     2                    1                 0.7754386   0.4193897   1.4337621
0-24 months   NIH-Birth      BANGLADESH     3                    1                 0.6453840   0.3343197   1.2458748
0-24 months   NIH-Birth      BANGLADESH     4                    1                 0.6882591   0.3501544   1.3528333
0-24 months   NIH-Birth      BANGLADESH     5                    1                 0.7614782   0.3896776   1.4880224
0-24 months   NIH-Birth      BANGLADESH     6                    1                 0.6091825   0.2911586   1.2745744
0-24 months   NIH-Birth      BANGLADESH     7                    1                 0.9692982   0.5311940   1.7687306
0-24 months   NIH-Birth      BANGLADESH     8                    1                 1.1929825   0.6721630   2.1173541
0-24 months   NIH-Birth      BANGLADESH     9                    1                 0.6507177   0.2869116   1.4758326
0-24 months   NIH-Birth      BANGLADESH     10                   1                 0.5368421   0.2629711   1.0959360
0-24 months   NIH-Birth      BANGLADESH     11                   1                 0.8947368   0.4878365   1.6410295
0-24 months   NIH-Birth      BANGLADESH     12                   1                 0.7290448   0.3800233   1.3986151
0-24 months   SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed   INDIA          2                    1                 0.8578595   0.4915733   1.4970768
0-24 months   SAS-CompFeed   INDIA          3                    1                 0.8024476   0.4213646   1.5281828
0-24 months   SAS-CompFeed   INDIA          4                    1                 0.9773756   0.6094165   1.5675043
0-24 months   SAS-CompFeed   INDIA          5                    1                 1.1201383   0.7184143   1.7464990
0-24 months   SAS-CompFeed   INDIA          6                    1                 0.8594164   0.5939951   1.2434390
0-24 months   SAS-CompFeed   INDIA          7                    1                 1.0879121   0.7697159   1.5376488
0-24 months   SAS-CompFeed   INDIA          8                    1                 1.1060537   0.8494673   1.4401434
0-24 months   SAS-CompFeed   INDIA          9                    1                 0.9481605   0.6938978   1.2955919
0-24 months   SAS-CompFeed   INDIA          10                   1                 0.9118199   0.5671732   1.4658935
0-24 months   SAS-CompFeed   INDIA          11                   1                 1.1745358   0.7988632   1.7268719
0-24 months   SAS-CompFeed   INDIA          12                   1                 0.6781790   0.4247632   1.0827838
0-24 months   ZVITAMBO       ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO       ZIMBABWE       2                    1                 1.1310345   0.7745252   1.6516429
0-24 months   ZVITAMBO       ZIMBABWE       3                    1                 1.2879581   0.9009776   1.8411514
0-24 months   ZVITAMBO       ZIMBABWE       4                    1                 0.9075728   0.6050659   1.3613202
0-24 months   ZVITAMBO       ZIMBABWE       5                    1                 1.3505882   0.9393509   1.9418608
0-24 months   ZVITAMBO       ZIMBABWE       6                    1                 1.0732984   0.7377967   1.5613645
0-24 months   ZVITAMBO       ZIMBABWE       7                    1                 1.0668367   0.7347499   1.5490178
0-24 months   ZVITAMBO       ZIMBABWE       8                    1                 0.7993501   0.5358654   1.1923901
0-24 months   ZVITAMBO       ZIMBABWE       9                    1                 0.6321995   0.4150397   0.9629833
0-24 months   ZVITAMBO       ZIMBABWE       10                   1                 1.1203036   0.7671413   1.6360481
0-24 months   ZVITAMBO       ZIMBABWE       11                   1                 1.0294682   0.7046658   1.5039820
0-24 months   ZVITAMBO       ZIMBABWE       12                   1                 1.2183962   0.8555802   1.7350676
0-6 months    JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3       BANGLADESH     2                    1                 0.9416998   0.7152447   1.2398533
0-6 months    JiVitA-3       BANGLADESH     3                    1                 0.8636054   0.6444192   1.1573434
0-6 months    JiVitA-3       BANGLADESH     4                    1                 0.9219317   0.6829066   1.2446184
0-6 months    JiVitA-3       BANGLADESH     5                    1                 0.7954897   0.5611169   1.1277577
0-6 months    JiVitA-3       BANGLADESH     6                    1                 0.6991601   0.4814500   1.0153182
0-6 months    JiVitA-3       BANGLADESH     7                    1                 0.7341864   0.5197422   1.0371096
0-6 months    JiVitA-3       BANGLADESH     8                    1                 0.8978411   0.6680868   1.2066076
0-6 months    JiVitA-3       BANGLADESH     9                    1                 0.9569821   0.7251054   1.2630093
0-6 months    JiVitA-3       BANGLADESH     10                   1                 1.0346962   0.8042269   1.3312115
0-6 months    JiVitA-3       BANGLADESH     11                   1                 1.0021135   0.7696552   1.3047809
0-6 months    JiVitA-3       BANGLADESH     12                   1                 1.0328025   0.8139646   1.3104758
0-6 months    SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed   INDIA          2                    1                 0.9782609   0.3368686   2.8408537
0-6 months    SAS-CompFeed   INDIA          3                    1                 0.8620690   0.2238151   3.3204318
0-6 months    SAS-CompFeed   INDIA          4                    1                 0.8928571   0.2505136   3.1822378
0-6 months    SAS-CompFeed   INDIA          5                    1                 1.8539326   0.9620598   3.5726116
0-6 months    SAS-CompFeed   INDIA          6                    1                 0.9130435   0.4351940   1.9155787
0-6 months    SAS-CompFeed   INDIA          7                    1                 1.4285714   0.4802988   4.2490557
0-6 months    SAS-CompFeed   INDIA          8                    1                 1.0650888   0.3607326   3.1447506
0-6 months    SAS-CompFeed   INDIA          9                    1                 0.8241758   0.2481115   2.7377438
0-6 months    SAS-CompFeed   INDIA          10                   1                 0.9202454   0.4277212   1.9799151
0-6 months    SAS-CompFeed   INDIA          11                   1                 1.4482759   0.6415599   3.2693796
0-6 months    SAS-CompFeed   INDIA          12                   1                 0.7142857   0.3111719   1.6396215
0-6 months    ZVITAMBO       ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO       ZIMBABWE       2                    1                 1.2986381   0.6377868   2.6442393
0-6 months    ZVITAMBO       ZIMBABWE       3                    1                 1.4859402   0.7585812   2.9107213
0-6 months    ZVITAMBO       ZIMBABWE       4                    1                 0.8657588   0.3905553   1.9191604
0-6 months    ZVITAMBO       ZIMBABWE       5                    1                 0.7922849   0.3481202   1.8031569
0-6 months    ZVITAMBO       ZIMBABWE       6                    1                 1.0131349   0.4841031   2.1202968
0-6 months    ZVITAMBO       ZIMBABWE       7                    1                 1.3645656   0.6908065   2.6954569
0-6 months    ZVITAMBO       ZIMBABWE       8                    1                 0.7972313   0.3675879   1.7290496
0-6 months    ZVITAMBO       ZIMBABWE       9                    1                 0.8121673   0.3816170   1.7284757
0-6 months    ZVITAMBO       ZIMBABWE       10                   1                 1.0239693   0.4813803   2.1781391
0-6 months    ZVITAMBO       ZIMBABWE       11                   1                 1.3318662   0.6681578   2.6548634
0-6 months    ZVITAMBO       ZIMBABWE       12                   1                 1.1230284   0.5575532   2.2620132
6-24 months   iLiNS-Zinc     BURKINA FASO   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc     BURKINA FASO   2                    1                 1.3328846   0.6796226   2.6140705
6-24 months   iLiNS-Zinc     BURKINA FASO   3                    1                 1.3401869   0.7155801   2.5099930
6-24 months   iLiNS-Zinc     BURKINA FASO   4                    1                 1.2537705   0.4460802   3.5238967
6-24 months   iLiNS-Zinc     BURKINA FASO   5                    1                 1.3391440   0.7309399   2.4534254
6-24 months   iLiNS-Zinc     BURKINA FASO   6                    1                 1.1754098   0.5149448   2.6829833
6-24 months   iLiNS-Zinc     BURKINA FASO   7                    1                 1.1397567   0.6673252   1.9466450
6-24 months   iLiNS-Zinc     BURKINA FASO   8                    1                 1.2181717   0.6670519   2.2246281
6-24 months   iLiNS-Zinc     BURKINA FASO   9                    1                 1.2638644   0.7392554   2.1607596
6-24 months   iLiNS-Zinc     BURKINA FASO   10                   1                 0.9251613   0.4234959   2.0210901
6-24 months   iLiNS-Zinc     BURKINA FASO   11                   1                 1.1646701   0.6010815   2.2566930
6-24 months   iLiNS-Zinc     BURKINA FASO   12                   1                 1.4162963   0.7854964   2.5536657
6-24 months   JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3       BANGLADESH     2                    1                 0.9834484   0.7560572   1.2792296
6-24 months   JiVitA-3       BANGLADESH     3                    1                 0.7638851   0.5798882   1.0062637
6-24 months   JiVitA-3       BANGLADESH     4                    1                 1.0882676   0.8406898   1.4087554
6-24 months   JiVitA-3       BANGLADESH     5                    1                 1.2149171   0.9398097   1.5705557
6-24 months   JiVitA-3       BANGLADESH     6                    1                 1.2088761   0.9443489   1.5475015
6-24 months   JiVitA-3       BANGLADESH     7                    1                 1.2176888   0.9412095   1.5753837
6-24 months   JiVitA-3       BANGLADESH     8                    1                 0.8542954   0.6590450   1.1073912
6-24 months   JiVitA-3       BANGLADESH     9                    1                 0.9879797   0.7678460   1.2712234
6-24 months   JiVitA-3       BANGLADESH     10                   1                 1.1524491   0.9031208   1.4706105
6-24 months   JiVitA-3       BANGLADESH     11                   1                 1.1288891   0.8900307   1.4318501
6-24 months   JiVitA-3       BANGLADESH     12                   1                 1.0972835   0.8597825   1.4003904
6-24 months   JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4       BANGLADESH     2                    1                 0.8399217   0.4627589   1.5244839
6-24 months   JiVitA-4       BANGLADESH     3                    1                 1.1434638   0.6849491   1.9089147
6-24 months   JiVitA-4       BANGLADESH     4                    1                 1.4805474   0.9247480   2.3703980
6-24 months   JiVitA-4       BANGLADESH     5                    1                 1.3720717   0.8447359   2.2286026
6-24 months   JiVitA-4       BANGLADESH     6                    1                 1.3149068   0.7940507   2.1774177
6-24 months   JiVitA-4       BANGLADESH     7                    1                 1.4182754   0.8720970   2.3065155
6-24 months   JiVitA-4       BANGLADESH     8                    1                 0.9171804   0.5483292   1.5341511
6-24 months   JiVitA-4       BANGLADESH     9                    1                 1.0779473   0.6464839   1.7973694
6-24 months   JiVitA-4       BANGLADESH     10                   1                 0.9234079   0.5593364   1.5244532
6-24 months   JiVitA-4       BANGLADESH     11                   1                 1.2184874   0.6772708   2.1921976
6-24 months   JiVitA-4       BANGLADESH     12                   1                 1.0598007   0.6061562   1.8529506
6-24 months   Keneba         GAMBIA         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   Keneba         GAMBIA         2                    1                 1.3522727   0.9022657   2.0267218
6-24 months   Keneba         GAMBIA         3                    1                 1.0181818   0.6470290   1.6022375
6-24 months   Keneba         GAMBIA         4                    1                 1.0989761   0.7247092   1.6665285
6-24 months   Keneba         GAMBIA         5                    1                 0.6712329   0.4168188   1.0809340
6-24 months   Keneba         GAMBIA         6                    1                 0.7847534   0.4810966   1.2800710
6-24 months   Keneba         GAMBIA         7                    1                 1.4000000   0.9045652   2.1667868
6-24 months   Keneba         GAMBIA         8                    1                 1.2083333   0.7619963   1.9161109
6-24 months   Keneba         GAMBIA         9                    1                 1.1666667   0.7408314   1.8372751
6-24 months   Keneba         GAMBIA         10                   1                 1.0616114   0.6751825   1.6692061
6-24 months   Keneba         GAMBIA         11                   1                 0.9790210   0.6363674   1.5061773
6-24 months   Keneba         GAMBIA         12                   1                 0.7616580   0.4547420   1.2757190
6-24 months   NIH-Birth      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth      BANGLADESH     2                    1                 0.9600000   0.4851493   1.8996215
6-24 months   NIH-Birth      BANGLADESH     3                    1                 0.7058824   0.3308604   1.5059821
6-24 months   NIH-Birth      BANGLADESH     4                    1                 0.8000000   0.3774840   1.6954361
6-24 months   NIH-Birth      BANGLADESH     5                    1                 0.6666667   0.2922330   1.5208566
6-24 months   NIH-Birth      BANGLADESH     6                    1                 0.7000000   0.3076996   1.5924625
6-24 months   NIH-Birth      BANGLADESH     7                    1                 1.0666667   0.5424586   2.0974461
6-24 months   NIH-Birth      BANGLADESH     8                    1                 1.0810811   0.5319669   2.1970093
6-24 months   NIH-Birth      BANGLADESH     9                    1                 0.8275862   0.3520151   1.9456520
6-24 months   NIH-Birth      BANGLADESH     10                   1                 0.5283019   0.2289443   1.2190863
6-24 months   NIH-Birth      BANGLADESH     11                   1                 0.9166667   0.4546438   1.8482112
6-24 months   NIH-Birth      BANGLADESH     12                   1                 0.8800000   0.4354627   1.7783382
6-24 months   SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed   INDIA          2                    1                 0.7317073   0.4127271   1.2972145
6-24 months   SAS-CompFeed   INDIA          3                    1                 0.8292683   0.4117347   1.6702160
6-24 months   SAS-CompFeed   INDIA          4                    1                 0.8500000   0.4667881   1.5478116
6-24 months   SAS-CompFeed   INDIA          5                    1                 0.8888889   0.5688690   1.3889375
6-24 months   SAS-CompFeed   INDIA          6                    1                 0.8224299   0.5484713   1.2332295
6-24 months   SAS-CompFeed   INDIA          7                    1                 0.9230769   0.6204617   1.3732853
6-24 months   SAS-CompFeed   INDIA          8                    1                 1.0389610   0.7999112   1.3494499
6-24 months   SAS-CompFeed   INDIA          9                    1                 0.9534884   0.6694835   1.3579724
6-24 months   SAS-CompFeed   INDIA          10                   1                 0.8800000   0.5135246   1.5080094
6-24 months   SAS-CompFeed   INDIA          11                   1                 1.1297710   0.7214895   1.7690936
6-24 months   SAS-CompFeed   INDIA          12                   1                 0.6715328   0.3762855   1.1984420
6-24 months   ZVITAMBO       ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO       ZIMBABWE       2                    1                 1.0655391   0.6924847   1.6395649
6-24 months   ZVITAMBO       ZIMBABWE       3                    1                 1.1594022   0.7669282   1.7527242
6-24 months   ZVITAMBO       ZIMBABWE       4                    1                 0.8277395   0.5199382   1.3177578
6-24 months   ZVITAMBO       ZIMBABWE       5                    1                 1.4722091   0.9862752   2.1975609
6-24 months   ZVITAMBO       ZIMBABWE       6                    1                 1.0656394   0.6989531   1.6246976
6-24 months   ZVITAMBO       ZIMBABWE       7                    1                 0.9094932   0.5865152   1.4103263
6-24 months   ZVITAMBO       ZIMBABWE       8                    1                 0.7792208   0.4940428   1.2290129
6-24 months   ZVITAMBO       ZIMBABWE       9                    1                 0.5667614   0.3472388   0.9250649
6-24 months   ZVITAMBO       ZIMBABWE       10                   1                 1.1226189   0.7321365   1.7213637
6-24 months   ZVITAMBO       ZIMBABWE       11                   1                 0.8866667   0.5695896   1.3802530
6-24 months   ZVITAMBO       ZIMBABWE       12                   1                 1.1796009   0.7939040   1.7526783


### Parameter: PAR


agecat        studyid        country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   1                    NA                 0.0200529   -0.0310272   0.0711330
0-24 months   JiVitA-3       BANGLADESH     1                    NA                 0.0044992   -0.0061563   0.0151546
0-24 months   JiVitA-4       BANGLADESH     1                    NA                 0.0406481   -0.0129581   0.0942542
0-24 months   Keneba         GAMBIA         1                    NA                -0.0078174   -0.0520349   0.0364000
0-24 months   NIH-Birth      BANGLADESH     1                    NA                -0.0598605   -0.1596903   0.0399694
0-24 months   SAS-CompFeed   INDIA          1                    NA                -0.0087513   -0.0671061   0.0496035
0-24 months   ZVITAMBO       ZIMBABWE       1                    NA                 0.0017395   -0.0082817   0.0117607
0-6 months    JiVitA-3       BANGLADESH     1                    NA                -0.0028586   -0.0103774   0.0046601
0-6 months    SAS-CompFeed   INDIA          1                    NA                 0.0038121   -0.0391676   0.0467917
0-6 months    ZVITAMBO       ZIMBABWE       1                    NA                 0.0008253   -0.0045702   0.0062208
6-24 months   iLiNS-Zinc     BURKINA FASO   1                    NA                 0.0200529   -0.0310272   0.0711330
6-24 months   JiVitA-3       BANGLADESH     1                    NA                 0.0045431   -0.0100607   0.0191468
6-24 months   JiVitA-4       BANGLADESH     1                    NA                 0.0270355   -0.0263767   0.0804477
6-24 months   Keneba         GAMBIA         1                    NA                 0.0041264   -0.0398368   0.0480896
6-24 months   NIH-Birth      BANGLADESH     1                    NA                -0.0396679   -0.1509946   0.0716588
6-24 months   SAS-CompFeed   INDIA          1                    NA                -0.0239381   -0.1012991   0.0534229
6-24 months   ZVITAMBO       ZIMBABWE       1                    NA                -0.0002917   -0.0116478   0.0110644


### Parameter: PAF


agecat        studyid        country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   1                    NA                 0.1608668   -0.3623252   0.4831304
0-24 months   JiVitA-3       BANGLADESH     1                    NA                 0.0506401   -0.0772658   0.1633594
0-24 months   JiVitA-4       BANGLADESH     1                    NA                 0.2519441   -0.1662293   0.5201735
0-24 months   Keneba         GAMBIA         1                    NA                -0.0527133   -0.3973538   0.2069258
0-24 months   NIH-Birth      BANGLADESH     1                    NA                -0.2726492   -0.8184535   0.1093333
0-24 months   SAS-CompFeed   INDIA          1                    NA                -0.0377229   -0.3237885   0.1865250
0-24 months   ZVITAMBO       ZIMBABWE       1                    NA                 0.0410356   -0.2270340   0.2505401
0-6 months    JiVitA-3       BANGLADESH     1                    NA                -0.0720460   -0.2792307   0.1015830
0-6 months    SAS-CompFeed   INDIA          1                    NA                 0.0540881   -0.7974566   0.5022136
0-6 months    ZVITAMBO       ZIMBABWE       1                    NA                 0.0684249   -0.5056093   0.4236007
6-24 months   iLiNS-Zinc     BURKINA FASO   1                    NA                 0.1608668   -0.3623252   0.4831304
6-24 months   JiVitA-3       BANGLADESH     1                    NA                 0.0522665   -0.1317104   0.2063352
6-24 months   JiVitA-4       BANGLADESH     1                    NA                 0.1830123   -0.2721494   0.4753219
6-24 months   Keneba         GAMBIA         1                    NA                 0.0280739   -0.3221500   0.2855271
6-24 months   NIH-Birth      BANGLADESH     1                    NA                -0.1885965   -0.8548494   0.2383416
6-24 months   SAS-CompFeed   INDIA          1                    NA                -0.1058917   -0.5027486   0.1861603
6-24 months   ZVITAMBO       ZIMBABWE       1                    NA                -0.0071039   -0.3253666   0.2347338
