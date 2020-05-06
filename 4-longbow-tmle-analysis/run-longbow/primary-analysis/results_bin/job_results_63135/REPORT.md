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

**Outcome Variable:** sstunted

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

agecat      studyid          country                        month    sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ------  ---------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1               0        9      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          1               1        0      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          2               0        1      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          2               1        0      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          3               0        7      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          3               1        1      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          4               0        9      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          4               1        0      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          5               0       11      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          5               1        0      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          6               0       10      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          6               1        0      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          7               0        7      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          7               1        0      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          8               0        4      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          8               1        0      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          9               0        7      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          9               1        1      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          10              0        9      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          10              1        1      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          11              0       11      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          11              1        0      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          12              0        3      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          12              1        1      92  sstunted         
Birth       CMIN             BANGLADESH                     1               0        0      26  sstunted         
Birth       CMIN             BANGLADESH                     1               1        1      26  sstunted         
Birth       CMIN             BANGLADESH                     2               0        5      26  sstunted         
Birth       CMIN             BANGLADESH                     2               1        1      26  sstunted         
Birth       CMIN             BANGLADESH                     3               0        2      26  sstunted         
Birth       CMIN             BANGLADESH                     3               1        0      26  sstunted         
Birth       CMIN             BANGLADESH                     4               0        0      26  sstunted         
Birth       CMIN             BANGLADESH                     4               1        1      26  sstunted         
Birth       CMIN             BANGLADESH                     5               0        3      26  sstunted         
Birth       CMIN             BANGLADESH                     5               1        0      26  sstunted         
Birth       CMIN             BANGLADESH                     6               0        0      26  sstunted         
Birth       CMIN             BANGLADESH                     6               1        0      26  sstunted         
Birth       CMIN             BANGLADESH                     7               0        0      26  sstunted         
Birth       CMIN             BANGLADESH                     7               1        0      26  sstunted         
Birth       CMIN             BANGLADESH                     8               0        5      26  sstunted         
Birth       CMIN             BANGLADESH                     8               1        2      26  sstunted         
Birth       CMIN             BANGLADESH                     9               0        2      26  sstunted         
Birth       CMIN             BANGLADESH                     9               1        0      26  sstunted         
Birth       CMIN             BANGLADESH                     10              0        1      26  sstunted         
Birth       CMIN             BANGLADESH                     10              1        0      26  sstunted         
Birth       CMIN             BANGLADESH                     11              0        2      26  sstunted         
Birth       CMIN             BANGLADESH                     11              1        1      26  sstunted         
Birth       CMIN             BANGLADESH                     12              0        0      26  sstunted         
Birth       CMIN             BANGLADESH                     12              1        0      26  sstunted         
Birth       CONTENT          PERU                           1               0        0       2  sstunted         
Birth       CONTENT          PERU                           1               1        0       2  sstunted         
Birth       CONTENT          PERU                           2               0        0       2  sstunted         
Birth       CONTENT          PERU                           2               1        0       2  sstunted         
Birth       CONTENT          PERU                           3               0        0       2  sstunted         
Birth       CONTENT          PERU                           3               1        0       2  sstunted         
Birth       CONTENT          PERU                           4               0        0       2  sstunted         
Birth       CONTENT          PERU                           4               1        0       2  sstunted         
Birth       CONTENT          PERU                           5               0        2       2  sstunted         
Birth       CONTENT          PERU                           5               1        0       2  sstunted         
Birth       CONTENT          PERU                           6               0        0       2  sstunted         
Birth       CONTENT          PERU                           6               1        0       2  sstunted         
Birth       CONTENT          PERU                           7               0        0       2  sstunted         
Birth       CONTENT          PERU                           7               1        0       2  sstunted         
Birth       CONTENT          PERU                           8               0        0       2  sstunted         
Birth       CONTENT          PERU                           8               1        0       2  sstunted         
Birth       CONTENT          PERU                           9               0        0       2  sstunted         
Birth       CONTENT          PERU                           9               1        0       2  sstunted         
Birth       CONTENT          PERU                           10              0        0       2  sstunted         
Birth       CONTENT          PERU                           10              1        0       2  sstunted         
Birth       CONTENT          PERU                           11              0        0       2  sstunted         
Birth       CONTENT          PERU                           11              1        0       2  sstunted         
Birth       CONTENT          PERU                           12              0        0       2  sstunted         
Birth       CONTENT          PERU                           12              1        0       2  sstunted         
Birth       EE               PAKISTAN                       1               0       42     240  sstunted         
Birth       EE               PAKISTAN                       1               1       15     240  sstunted         
Birth       EE               PAKISTAN                       2               0       42     240  sstunted         
Birth       EE               PAKISTAN                       2               1        8     240  sstunted         
Birth       EE               PAKISTAN                       3               0       22     240  sstunted         
Birth       EE               PAKISTAN                       3               1        7     240  sstunted         
Birth       EE               PAKISTAN                       4               0        8     240  sstunted         
Birth       EE               PAKISTAN                       4               1        3     240  sstunted         
Birth       EE               PAKISTAN                       5               0        0     240  sstunted         
Birth       EE               PAKISTAN                       5               1        0     240  sstunted         
Birth       EE               PAKISTAN                       6               0        0     240  sstunted         
Birth       EE               PAKISTAN                       6               1        0     240  sstunted         
Birth       EE               PAKISTAN                       7               0        0     240  sstunted         
Birth       EE               PAKISTAN                       7               1        0     240  sstunted         
Birth       EE               PAKISTAN                       8               0        0     240  sstunted         
Birth       EE               PAKISTAN                       8               1        0     240  sstunted         
Birth       EE               PAKISTAN                       9               0        0     240  sstunted         
Birth       EE               PAKISTAN                       9               1        0     240  sstunted         
Birth       EE               PAKISTAN                       10              0        0     240  sstunted         
Birth       EE               PAKISTAN                       10              1        0     240  sstunted         
Birth       EE               PAKISTAN                       11              0       38     240  sstunted         
Birth       EE               PAKISTAN                       11              1        6     240  sstunted         
Birth       EE               PAKISTAN                       12              0       40     240  sstunted         
Birth       EE               PAKISTAN                       12              1        9     240  sstunted         
Birth       GMS-Nepal        NEPAL                          1               0        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          1               1        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          2               0        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          2               1        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          3               0        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          3               1        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          4               0        1     696  sstunted         
Birth       GMS-Nepal        NEPAL                          4               1        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          5               0        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          5               1        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          6               0      155     696  sstunted         
Birth       GMS-Nepal        NEPAL                          6               1        5     696  sstunted         
Birth       GMS-Nepal        NEPAL                          7               0      248     696  sstunted         
Birth       GMS-Nepal        NEPAL                          7               1       17     696  sstunted         
Birth       GMS-Nepal        NEPAL                          8               0      261     696  sstunted         
Birth       GMS-Nepal        NEPAL                          8               1        9     696  sstunted         
Birth       GMS-Nepal        NEPAL                          9               0        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          9               1        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          10              0        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          10              1        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          11              0        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          11              1        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          12              0        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          12              1        0     696  sstunted         
Birth       IRC              INDIA                          1               0       31     388  sstunted         
Birth       IRC              INDIA                          1               1        3     388  sstunted         
Birth       IRC              INDIA                          2               0       24     388  sstunted         
Birth       IRC              INDIA                          2               1        1     388  sstunted         
Birth       IRC              INDIA                          3               0       27     388  sstunted         
Birth       IRC              INDIA                          3               1        0     388  sstunted         
Birth       IRC              INDIA                          4               0       22     388  sstunted         
Birth       IRC              INDIA                          4               1        0     388  sstunted         
Birth       IRC              INDIA                          5               0       20     388  sstunted         
Birth       IRC              INDIA                          5               1        1     388  sstunted         
Birth       IRC              INDIA                          6               0       31     388  sstunted         
Birth       IRC              INDIA                          6               1        3     388  sstunted         
Birth       IRC              INDIA                          7               0       34     388  sstunted         
Birth       IRC              INDIA                          7               1        1     388  sstunted         
Birth       IRC              INDIA                          8               0       39     388  sstunted         
Birth       IRC              INDIA                          8               1        0     388  sstunted         
Birth       IRC              INDIA                          9               0       24     388  sstunted         
Birth       IRC              INDIA                          9               1        1     388  sstunted         
Birth       IRC              INDIA                          10              0       35     388  sstunted         
Birth       IRC              INDIA                          10              1        2     388  sstunted         
Birth       IRC              INDIA                          11              0       39     388  sstunted         
Birth       IRC              INDIA                          11              1        1     388  sstunted         
Birth       IRC              INDIA                          12              0       46     388  sstunted         
Birth       IRC              INDIA                          12              1        3     388  sstunted         
Birth       JiVitA-3         BANGLADESH                     1               0     1834   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     1               1      278   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     2               0     1557   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     2               1      187   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     3               0     1882   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     3               1      178   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     4               0     1388   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     4               1      101   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     5               0      980   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     5               1      107   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     6               0     1008   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     6               1      103   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     7               0     1134   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     7               1      126   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     8               0     1530   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     8               1      185   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     9               0     2047   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     9               1      220   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     10              0     2138   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     10              1      290   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     11              0     2155   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     11              1      327   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     12              0     2354   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     12              1      346   22455  sstunted         
Birth       JiVitA-4         BANGLADESH                     1               0        0    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     1               1        0    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     2               0      309    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     2               1       24    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     3               0      352    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     3               1       44    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     4               0      422    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     4               1       45    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     5               0      408    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     5               1       41    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     6               0      323    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     6               1       34    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     7               0      334    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     7               1       24    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     8               0      236    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     8               1       11    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     9               0      144    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     9               1        6    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     10              0       62    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     10              1        4    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     11              0        0    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     11              1        0    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     12              0        0    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     12              1        0    2823  sstunted         
Birth       Keneba           GAMBIA                         1               0      136    1543  sstunted         
Birth       Keneba           GAMBIA                         1               1        2    1543  sstunted         
Birth       Keneba           GAMBIA                         2               0      156    1543  sstunted         
Birth       Keneba           GAMBIA                         2               1        7    1543  sstunted         
Birth       Keneba           GAMBIA                         3               0      143    1543  sstunted         
Birth       Keneba           GAMBIA                         3               1        4    1543  sstunted         
Birth       Keneba           GAMBIA                         4               0      163    1543  sstunted         
Birth       Keneba           GAMBIA                         4               1        2    1543  sstunted         
Birth       Keneba           GAMBIA                         5               0      104    1543  sstunted         
Birth       Keneba           GAMBIA                         5               1        1    1543  sstunted         
Birth       Keneba           GAMBIA                         6               0      106    1543  sstunted         
Birth       Keneba           GAMBIA                         6               1        2    1543  sstunted         
Birth       Keneba           GAMBIA                         7               0       88    1543  sstunted         
Birth       Keneba           GAMBIA                         7               1        1    1543  sstunted         
Birth       Keneba           GAMBIA                         8               0       75    1543  sstunted         
Birth       Keneba           GAMBIA                         8               1        1    1543  sstunted         
Birth       Keneba           GAMBIA                         9               0      124    1543  sstunted         
Birth       Keneba           GAMBIA                         9               1        1    1543  sstunted         
Birth       Keneba           GAMBIA                         10              0      122    1543  sstunted         
Birth       Keneba           GAMBIA                         10              1        2    1543  sstunted         
Birth       Keneba           GAMBIA                         11              0      175    1543  sstunted         
Birth       Keneba           GAMBIA                         11              1        4    1543  sstunted         
Birth       Keneba           GAMBIA                         12              0      122    1543  sstunted         
Birth       Keneba           GAMBIA                         12              1        2    1543  sstunted         
Birth       MAL-ED           BANGLADESH                     1               0       20     231  sstunted         
Birth       MAL-ED           BANGLADESH                     1               1        1     231  sstunted         
Birth       MAL-ED           BANGLADESH                     2               0       20     231  sstunted         
Birth       MAL-ED           BANGLADESH                     2               1        1     231  sstunted         
Birth       MAL-ED           BANGLADESH                     3               0       26     231  sstunted         
Birth       MAL-ED           BANGLADESH                     3               1        0     231  sstunted         
Birth       MAL-ED           BANGLADESH                     4               0       21     231  sstunted         
Birth       MAL-ED           BANGLADESH                     4               1        0     231  sstunted         
Birth       MAL-ED           BANGLADESH                     5               0       16     231  sstunted         
Birth       MAL-ED           BANGLADESH                     5               1        1     231  sstunted         
Birth       MAL-ED           BANGLADESH                     6               0        7     231  sstunted         
Birth       MAL-ED           BANGLADESH                     6               1        1     231  sstunted         
Birth       MAL-ED           BANGLADESH                     7               0       12     231  sstunted         
Birth       MAL-ED           BANGLADESH                     7               1        1     231  sstunted         
Birth       MAL-ED           BANGLADESH                     8               0       24     231  sstunted         
Birth       MAL-ED           BANGLADESH                     8               1        3     231  sstunted         
Birth       MAL-ED           BANGLADESH                     9               0       17     231  sstunted         
Birth       MAL-ED           BANGLADESH                     9               1        1     231  sstunted         
Birth       MAL-ED           BANGLADESH                     10              0       20     231  sstunted         
Birth       MAL-ED           BANGLADESH                     10              1        0     231  sstunted         
Birth       MAL-ED           BANGLADESH                     11              0       13     231  sstunted         
Birth       MAL-ED           BANGLADESH                     11              1        0     231  sstunted         
Birth       MAL-ED           BANGLADESH                     12              0       26     231  sstunted         
Birth       MAL-ED           BANGLADESH                     12              1        0     231  sstunted         
Birth       MAL-ED           BRAZIL                         1               0        5      65  sstunted         
Birth       MAL-ED           BRAZIL                         1               1        0      65  sstunted         
Birth       MAL-ED           BRAZIL                         2               0        8      65  sstunted         
Birth       MAL-ED           BRAZIL                         2               1        0      65  sstunted         
Birth       MAL-ED           BRAZIL                         3               0        9      65  sstunted         
Birth       MAL-ED           BRAZIL                         3               1        0      65  sstunted         
Birth       MAL-ED           BRAZIL                         4               0        5      65  sstunted         
Birth       MAL-ED           BRAZIL                         4               1        0      65  sstunted         
Birth       MAL-ED           BRAZIL                         5               0        1      65  sstunted         
Birth       MAL-ED           BRAZIL                         5               1        1      65  sstunted         
Birth       MAL-ED           BRAZIL                         6               0        5      65  sstunted         
Birth       MAL-ED           BRAZIL                         6               1        0      65  sstunted         
Birth       MAL-ED           BRAZIL                         7               0        4      65  sstunted         
Birth       MAL-ED           BRAZIL                         7               1        1      65  sstunted         
Birth       MAL-ED           BRAZIL                         8               0        7      65  sstunted         
Birth       MAL-ED           BRAZIL                         8               1        0      65  sstunted         
Birth       MAL-ED           BRAZIL                         9               0        6      65  sstunted         
Birth       MAL-ED           BRAZIL                         9               1        1      65  sstunted         
Birth       MAL-ED           BRAZIL                         10              0        4      65  sstunted         
Birth       MAL-ED           BRAZIL                         10              1        0      65  sstunted         
Birth       MAL-ED           BRAZIL                         11              0        5      65  sstunted         
Birth       MAL-ED           BRAZIL                         11              1        0      65  sstunted         
Birth       MAL-ED           BRAZIL                         12              0        3      65  sstunted         
Birth       MAL-ED           BRAZIL                         12              1        0      65  sstunted         
Birth       MAL-ED           INDIA                          1               0        2      47  sstunted         
Birth       MAL-ED           INDIA                          1               1        0      47  sstunted         
Birth       MAL-ED           INDIA                          2               0        3      47  sstunted         
Birth       MAL-ED           INDIA                          2               1        0      47  sstunted         
Birth       MAL-ED           INDIA                          3               0        5      47  sstunted         
Birth       MAL-ED           INDIA                          3               1        0      47  sstunted         
Birth       MAL-ED           INDIA                          4               0        6      47  sstunted         
Birth       MAL-ED           INDIA                          4               1        1      47  sstunted         
Birth       MAL-ED           INDIA                          5               0        2      47  sstunted         
Birth       MAL-ED           INDIA                          5               1        0      47  sstunted         
Birth       MAL-ED           INDIA                          6               0        3      47  sstunted         
Birth       MAL-ED           INDIA                          6               1        0      47  sstunted         
Birth       MAL-ED           INDIA                          7               0        3      47  sstunted         
Birth       MAL-ED           INDIA                          7               1        0      47  sstunted         
Birth       MAL-ED           INDIA                          8               0        7      47  sstunted         
Birth       MAL-ED           INDIA                          8               1        0      47  sstunted         
Birth       MAL-ED           INDIA                          9               0        4      47  sstunted         
Birth       MAL-ED           INDIA                          9               1        0      47  sstunted         
Birth       MAL-ED           INDIA                          10              0        6      47  sstunted         
Birth       MAL-ED           INDIA                          10              1        0      47  sstunted         
Birth       MAL-ED           INDIA                          11              0        3      47  sstunted         
Birth       MAL-ED           INDIA                          11              1        1      47  sstunted         
Birth       MAL-ED           INDIA                          12              0        1      47  sstunted         
Birth       MAL-ED           INDIA                          12              1        0      47  sstunted         
Birth       MAL-ED           NEPAL                          1               0        1      27  sstunted         
Birth       MAL-ED           NEPAL                          1               1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          2               0        3      27  sstunted         
Birth       MAL-ED           NEPAL                          2               1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          3               0        1      27  sstunted         
Birth       MAL-ED           NEPAL                          3               1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          4               0        2      27  sstunted         
Birth       MAL-ED           NEPAL                          4               1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          5               0        2      27  sstunted         
Birth       MAL-ED           NEPAL                          5               1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          6               0        3      27  sstunted         
Birth       MAL-ED           NEPAL                          6               1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          7               0        1      27  sstunted         
Birth       MAL-ED           NEPAL                          7               1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          8               0        1      27  sstunted         
Birth       MAL-ED           NEPAL                          8               1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          9               0        3      27  sstunted         
Birth       MAL-ED           NEPAL                          9               1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          10              0        3      27  sstunted         
Birth       MAL-ED           NEPAL                          10              1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          11              0        4      27  sstunted         
Birth       MAL-ED           NEPAL                          11              1        1      27  sstunted         
Birth       MAL-ED           NEPAL                          12              0        2      27  sstunted         
Birth       MAL-ED           NEPAL                          12              1        0      27  sstunted         
Birth       MAL-ED           PERU                           1               0       24     233  sstunted         
Birth       MAL-ED           PERU                           1               1        1     233  sstunted         
Birth       MAL-ED           PERU                           2               0       21     233  sstunted         
Birth       MAL-ED           PERU                           2               1        0     233  sstunted         
Birth       MAL-ED           PERU                           3               0       21     233  sstunted         
Birth       MAL-ED           PERU                           3               1        0     233  sstunted         
Birth       MAL-ED           PERU                           4               0       13     233  sstunted         
Birth       MAL-ED           PERU                           4               1        1     233  sstunted         
Birth       MAL-ED           PERU                           5               0       19     233  sstunted         
Birth       MAL-ED           PERU                           5               1        0     233  sstunted         
Birth       MAL-ED           PERU                           6               0       15     233  sstunted         
Birth       MAL-ED           PERU                           6               1        0     233  sstunted         
Birth       MAL-ED           PERU                           7               0       20     233  sstunted         
Birth       MAL-ED           PERU                           7               1        0     233  sstunted         
Birth       MAL-ED           PERU                           8               0       14     233  sstunted         
Birth       MAL-ED           PERU                           8               1        0     233  sstunted         
Birth       MAL-ED           PERU                           9               0       20     233  sstunted         
Birth       MAL-ED           PERU                           9               1        0     233  sstunted         
Birth       MAL-ED           PERU                           10              0       20     233  sstunted         
Birth       MAL-ED           PERU                           10              1        0     233  sstunted         
Birth       MAL-ED           PERU                           11              0       28     233  sstunted         
Birth       MAL-ED           PERU                           11              1        1     233  sstunted         
Birth       MAL-ED           PERU                           12              0       14     233  sstunted         
Birth       MAL-ED           PERU                           12              1        1     233  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1               0        7     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1               1        1     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   2               0       13     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   2               1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   3               0       11     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   3               1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   4               0        7     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   4               1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   5               0        5     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   5               1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   6               0        7     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   6               1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   7               0       14     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   7               1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   8               0        4     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   8               1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   9               0       10     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   9               1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   10              0       10     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   10              1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   11              0       15     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   11              1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   12              0       18     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   12              1        1     123  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        8     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        0     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               0       14     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               1        1     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               0       15     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               1        1     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               0        7     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               1        0     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5               0       10     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5               1        0     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6               0        8     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6               1        2     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7               0       15     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7               1        0     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8               0        7     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8               1        0     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9               0        1     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9               1        1     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10              0        6     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10              1        3     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11              0       14     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11              1        1     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12              0       10     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12              1        1     125  sstunted         
Birth       NIH-Birth        BANGLADESH                     1               0       58     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     1               1        7     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     2               0       57     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     2               1        1     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     3               0       58     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     3               1        3     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     4               0       50     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     4               1        2     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     5               0       45     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     5               1        0     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     6               0       42     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     6               1        1     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     7               0       45     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     7               1        1     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     8               0       41     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     8               1        1     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     9               0       33     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     9               1        1     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     10              0       60     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     10              1        0     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     11              0       49     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     11              1        1     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     12              0       51     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     12              1        1     608  sstunted         
Birth       PROBIT           BELARUS                        1               0      859   13893  sstunted         
Birth       PROBIT           BELARUS                        1               1        0   13893  sstunted         
Birth       PROBIT           BELARUS                        2               0      791   13893  sstunted         
Birth       PROBIT           BELARUS                        2               1        0   13893  sstunted         
Birth       PROBIT           BELARUS                        3               0      967   13893  sstunted         
Birth       PROBIT           BELARUS                        3               1        2   13893  sstunted         
Birth       PROBIT           BELARUS                        4               0      956   13893  sstunted         
Birth       PROBIT           BELARUS                        4               1        0   13893  sstunted         
Birth       PROBIT           BELARUS                        5               0      957   13893  sstunted         
Birth       PROBIT           BELARUS                        5               1        0   13893  sstunted         
Birth       PROBIT           BELARUS                        6               0     1007   13893  sstunted         
Birth       PROBIT           BELARUS                        6               1        0   13893  sstunted         
Birth       PROBIT           BELARUS                        7               0     1281   13893  sstunted         
Birth       PROBIT           BELARUS                        7               1        0   13893  sstunted         
Birth       PROBIT           BELARUS                        8               0     1327   13893  sstunted         
Birth       PROBIT           BELARUS                        8               1        0   13893  sstunted         
Birth       PROBIT           BELARUS                        9               0     1315   13893  sstunted         
Birth       PROBIT           BELARUS                        9               1        0   13893  sstunted         
Birth       PROBIT           BELARUS                        10              0     1509   13893  sstunted         
Birth       PROBIT           BELARUS                        10              1        2   13893  sstunted         
Birth       PROBIT           BELARUS                        11              0     1396   13893  sstunted         
Birth       PROBIT           BELARUS                        11              1        1   13893  sstunted         
Birth       PROBIT           BELARUS                        12              0     1523   13893  sstunted         
Birth       PROBIT           BELARUS                        12              1        0   13893  sstunted         
Birth       ResPak           PAKISTAN                       1               0        0      42  sstunted         
Birth       ResPak           PAKISTAN                       1               1        0      42  sstunted         
Birth       ResPak           PAKISTAN                       2               0        2      42  sstunted         
Birth       ResPak           PAKISTAN                       2               1        0      42  sstunted         
Birth       ResPak           PAKISTAN                       3               0        1      42  sstunted         
Birth       ResPak           PAKISTAN                       3               1        0      42  sstunted         
Birth       ResPak           PAKISTAN                       4               0        1      42  sstunted         
Birth       ResPak           PAKISTAN                       4               1        0      42  sstunted         
Birth       ResPak           PAKISTAN                       5               0        8      42  sstunted         
Birth       ResPak           PAKISTAN                       5               1        0      42  sstunted         
Birth       ResPak           PAKISTAN                       6               0        7      42  sstunted         
Birth       ResPak           PAKISTAN                       6               1        0      42  sstunted         
Birth       ResPak           PAKISTAN                       7               0        8      42  sstunted         
Birth       ResPak           PAKISTAN                       7               1        1      42  sstunted         
Birth       ResPak           PAKISTAN                       8               0        7      42  sstunted         
Birth       ResPak           PAKISTAN                       8               1        1      42  sstunted         
Birth       ResPak           PAKISTAN                       9               0        4      42  sstunted         
Birth       ResPak           PAKISTAN                       9               1        0      42  sstunted         
Birth       ResPak           PAKISTAN                       10              0        1      42  sstunted         
Birth       ResPak           PAKISTAN                       10              1        0      42  sstunted         
Birth       ResPak           PAKISTAN                       11              0        1      42  sstunted         
Birth       ResPak           PAKISTAN                       11              1        0      42  sstunted         
Birth       ResPak           PAKISTAN                       12              0        0      42  sstunted         
Birth       ResPak           PAKISTAN                       12              1        0      42  sstunted         
Birth       SAS-CompFeed     INDIA                          1               0       75    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          1               1        7    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          2               0       67    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          2               1        5    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          3               0       71    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          3               1        9    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          4               0       61    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          4               1        2    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          5               0       67    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          5               1       13    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          6               0       96    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          6               1        6    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          7               0       96    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          7               1        5    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          8               0      133    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          8               1       12    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          9               0      139    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          9               1        9    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          10              0      129    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          10              1        9    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          11              0      116    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          11              1        6    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          12              0      111    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          12              1        8    1252  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       1               0     1292   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       1               1       57   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       2               0      997   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       2               1       44   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       3               0     1103   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       3               1       41   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       4               0      978   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       4               1       36   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       5               0      969   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       5               1       35   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       6               0     1091   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       6               1       44   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       7               0     1134   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       7               1       45   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       8               0     1207   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       8               1       25   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       9               0     1302   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       9               1       20   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       10              0     1012   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       10              1       35   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       11              0     1108   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       11              1       32   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       12              0     1240   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       12              1       28   13875  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1               0       24     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1               1        4     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          2               0       20     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          2               1        4     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          3               0       25     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          3               1        1     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          4               0       28     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          4               1        1     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          5               0       38     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          5               1        4     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          6               0       32     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          6               1        5     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          7               0       28     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          7               1        5     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          8               0       30     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          8               1       11     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          9               0       19     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          9               1        2     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          10              0       18     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          10              1        1     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          11              0       39     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          11              1        2     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          12              0       26     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          12              1        2     369  sstunted         
6 months    CMIN             BANGLADESH                     1               0       22     243  sstunted         
6 months    CMIN             BANGLADESH                     1               1        5     243  sstunted         
6 months    CMIN             BANGLADESH                     2               0       27     243  sstunted         
6 months    CMIN             BANGLADESH                     2               1        3     243  sstunted         
6 months    CMIN             BANGLADESH                     3               0       18     243  sstunted         
6 months    CMIN             BANGLADESH                     3               1        0     243  sstunted         
6 months    CMIN             BANGLADESH                     4               0       16     243  sstunted         
6 months    CMIN             BANGLADESH                     4               1        1     243  sstunted         
6 months    CMIN             BANGLADESH                     5               0       20     243  sstunted         
6 months    CMIN             BANGLADESH                     5               1        0     243  sstunted         
6 months    CMIN             BANGLADESH                     6               0       22     243  sstunted         
6 months    CMIN             BANGLADESH                     6               1        1     243  sstunted         
6 months    CMIN             BANGLADESH                     7               0       10     243  sstunted         
6 months    CMIN             BANGLADESH                     7               1        2     243  sstunted         
6 months    CMIN             BANGLADESH                     8               0       12     243  sstunted         
6 months    CMIN             BANGLADESH                     8               1        1     243  sstunted         
6 months    CMIN             BANGLADESH                     9               0       10     243  sstunted         
6 months    CMIN             BANGLADESH                     9               1        6     243  sstunted         
6 months    CMIN             BANGLADESH                     10              0       17     243  sstunted         
6 months    CMIN             BANGLADESH                     10              1        3     243  sstunted         
6 months    CMIN             BANGLADESH                     11              0        2     243  sstunted         
6 months    CMIN             BANGLADESH                     11              1        0     243  sstunted         
6 months    CMIN             BANGLADESH                     12              0       39     243  sstunted         
6 months    CMIN             BANGLADESH                     12              1        6     243  sstunted         
6 months    CONTENT          PERU                           1               0        9     215  sstunted         
6 months    CONTENT          PERU                           1               1        0     215  sstunted         
6 months    CONTENT          PERU                           2               0       13     215  sstunted         
6 months    CONTENT          PERU                           2               1        0     215  sstunted         
6 months    CONTENT          PERU                           3               0       27     215  sstunted         
6 months    CONTENT          PERU                           3               1        0     215  sstunted         
6 months    CONTENT          PERU                           4               0       17     215  sstunted         
6 months    CONTENT          PERU                           4               1        1     215  sstunted         
6 months    CONTENT          PERU                           5               0       25     215  sstunted         
6 months    CONTENT          PERU                           5               1        0     215  sstunted         
6 months    CONTENT          PERU                           6               0       14     215  sstunted         
6 months    CONTENT          PERU                           6               1        0     215  sstunted         
6 months    CONTENT          PERU                           7               0       16     215  sstunted         
6 months    CONTENT          PERU                           7               1        0     215  sstunted         
6 months    CONTENT          PERU                           8               0       26     215  sstunted         
6 months    CONTENT          PERU                           8               1        0     215  sstunted         
6 months    CONTENT          PERU                           9               0       19     215  sstunted         
6 months    CONTENT          PERU                           9               1        0     215  sstunted         
6 months    CONTENT          PERU                           10              0       23     215  sstunted         
6 months    CONTENT          PERU                           10              1        0     215  sstunted         
6 months    CONTENT          PERU                           11              0       18     215  sstunted         
6 months    CONTENT          PERU                           11              1        0     215  sstunted         
6 months    CONTENT          PERU                           12              0        7     215  sstunted         
6 months    CONTENT          PERU                           12              1        0     215  sstunted         
6 months    EE               PAKISTAN                       1               0       62     373  sstunted         
6 months    EE               PAKISTAN                       1               1       28     373  sstunted         
6 months    EE               PAKISTAN                       2               0       58     373  sstunted         
6 months    EE               PAKISTAN                       2               1       14     373  sstunted         
6 months    EE               PAKISTAN                       3               0       38     373  sstunted         
6 months    EE               PAKISTAN                       3               1        8     373  sstunted         
6 months    EE               PAKISTAN                       4               0       16     373  sstunted         
6 months    EE               PAKISTAN                       4               1        6     373  sstunted         
6 months    EE               PAKISTAN                       5               0        0     373  sstunted         
6 months    EE               PAKISTAN                       5               1        0     373  sstunted         
6 months    EE               PAKISTAN                       6               0        0     373  sstunted         
6 months    EE               PAKISTAN                       6               1        0     373  sstunted         
6 months    EE               PAKISTAN                       7               0        0     373  sstunted         
6 months    EE               PAKISTAN                       7               1        0     373  sstunted         
6 months    EE               PAKISTAN                       8               0        0     373  sstunted         
6 months    EE               PAKISTAN                       8               1        0     373  sstunted         
6 months    EE               PAKISTAN                       9               0        0     373  sstunted         
6 months    EE               PAKISTAN                       9               1        0     373  sstunted         
6 months    EE               PAKISTAN                       10              0        0     373  sstunted         
6 months    EE               PAKISTAN                       10              1        0     373  sstunted         
6 months    EE               PAKISTAN                       11              0       49     373  sstunted         
6 months    EE               PAKISTAN                       11              1       11     373  sstunted         
6 months    EE               PAKISTAN                       12              0       69     373  sstunted         
6 months    EE               PAKISTAN                       12              1       14     373  sstunted         
6 months    GMS-Nepal        NEPAL                          1               0        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          1               1        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          2               0        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          2               1        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          3               0        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          3               1        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          4               0        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          4               1        1     564  sstunted         
6 months    GMS-Nepal        NEPAL                          5               0        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          5               1        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          6               0      110     564  sstunted         
6 months    GMS-Nepal        NEPAL                          6               1        5     564  sstunted         
6 months    GMS-Nepal        NEPAL                          7               0      204     564  sstunted         
6 months    GMS-Nepal        NEPAL                          7               1        7     564  sstunted         
6 months    GMS-Nepal        NEPAL                          8               0      229     564  sstunted         
6 months    GMS-Nepal        NEPAL                          8               1        8     564  sstunted         
6 months    GMS-Nepal        NEPAL                          9               0        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          9               1        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          10              0        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          10              1        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          11              0        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          11              1        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          12              0        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          12              1        0     564  sstunted         
6 months    Guatemala BSC    GUATEMALA                      1               0       17     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      1               1        1     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      2               0       19     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      2               1        0     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      3               0       21     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      3               1        0     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      4               0       25     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      4               1        2     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      5               0       30     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      5               1        1     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      6               0       35     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      6               1        4     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      7               0       20     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      7               1        4     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      8               0       16     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      8               1        3     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      9               0       32     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      9               1        2     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      10              0       23     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      10              1        6     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      11              0       25     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      11              1        3     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      12              0        9     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      12              1        1     299  sstunted         
6 months    IRC              INDIA                          1               0       31     407  sstunted         
6 months    IRC              INDIA                          1               1        4     407  sstunted         
6 months    IRC              INDIA                          2               0       26     407  sstunted         
6 months    IRC              INDIA                          2               1        3     407  sstunted         
6 months    IRC              INDIA                          3               0       27     407  sstunted         
6 months    IRC              INDIA                          3               1        2     407  sstunted         
6 months    IRC              INDIA                          4               0       20     407  sstunted         
6 months    IRC              INDIA                          4               1        4     407  sstunted         
6 months    IRC              INDIA                          5               0       17     407  sstunted         
6 months    IRC              INDIA                          5               1        3     407  sstunted         
6 months    IRC              INDIA                          6               0       34     407  sstunted         
6 months    IRC              INDIA                          6               1        1     407  sstunted         
6 months    IRC              INDIA                          7               0       35     407  sstunted         
6 months    IRC              INDIA                          7               1        1     407  sstunted         
6 months    IRC              INDIA                          8               0       40     407  sstunted         
6 months    IRC              INDIA                          8               1        1     407  sstunted         
6 months    IRC              INDIA                          9               0       29     407  sstunted         
6 months    IRC              INDIA                          9               1        1     407  sstunted         
6 months    IRC              INDIA                          10              0       38     407  sstunted         
6 months    IRC              INDIA                          10              1        0     407  sstunted         
6 months    IRC              INDIA                          11              0       36     407  sstunted         
6 months    IRC              INDIA                          11              1        5     407  sstunted         
6 months    IRC              INDIA                          12              0       45     407  sstunted         
6 months    IRC              INDIA                          12              1        4     407  sstunted         
6 months    JiVitA-3         BANGLADESH                     1               0     1281   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     1               1       84   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     2               0     1127   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     2               1       57   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     3               0     1344   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     3               1       77   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     4               0     1128   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     4               1       63   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     5               0     1069   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     5               1       81   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     6               0     1101   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     6               1       60   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     7               0     1177   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     7               1       74   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     8               0     1389   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     8               1       79   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     9               0     1448   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     9               1      102   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     10              0     1575   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     10              1      119   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     11              0     1548   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     11              1      119   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     12              0     1604   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     12              1      105   16811  sstunted         
6 months    JiVitA-4         BANGLADESH                     1               0       51    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     1               1        2    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     2               0      163    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     2               1        2    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     3               0      405    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     3               1       25    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     4               0      798    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     4               1       47    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     5               0      552    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     5               1       33    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     6               0      405    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     6               1       29    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     7               0      775    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     7               1       63    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     8               0      488    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     8               1       22    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     9               0      415    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     9               1       16    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     10              0      287    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     10              1       19    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     11              0      149    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     11              1        8    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     12              0       72    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     12              1        5    4831  sstunted         
6 months    Keneba           GAMBIA                         1               0      176    2089  sstunted         
6 months    Keneba           GAMBIA                         1               1        8    2089  sstunted         
6 months    Keneba           GAMBIA                         2               0      203    2089  sstunted         
6 months    Keneba           GAMBIA                         2               1        7    2089  sstunted         
6 months    Keneba           GAMBIA                         3               0      179    2089  sstunted         
6 months    Keneba           GAMBIA                         3               1        6    2089  sstunted         
6 months    Keneba           GAMBIA                         4               0      212    2089  sstunted         
6 months    Keneba           GAMBIA                         4               1       12    2089  sstunted         
6 months    Keneba           GAMBIA                         5               0      183    2089  sstunted         
6 months    Keneba           GAMBIA                         5               1        3    2089  sstunted         
6 months    Keneba           GAMBIA                         6               0      147    2089  sstunted         
6 months    Keneba           GAMBIA                         6               1        2    2089  sstunted         
6 months    Keneba           GAMBIA                         7               0      120    2089  sstunted         
6 months    Keneba           GAMBIA                         7               1        9    2089  sstunted         
6 months    Keneba           GAMBIA                         8               0      113    2089  sstunted         
6 months    Keneba           GAMBIA                         8               1        5    2089  sstunted         
6 months    Keneba           GAMBIA                         9               0      148    2089  sstunted         
6 months    Keneba           GAMBIA                         9               1        3    2089  sstunted         
6 months    Keneba           GAMBIA                         10              0      160    2089  sstunted         
6 months    Keneba           GAMBIA                         10              1        9    2089  sstunted         
6 months    Keneba           GAMBIA                         11              0      221    2089  sstunted         
6 months    Keneba           GAMBIA                         11              1        4    2089  sstunted         
6 months    Keneba           GAMBIA                         12              0      157    2089  sstunted         
6 months    Keneba           GAMBIA                         12              1        2    2089  sstunted         
6 months    LCNI-5           MALAWI                         1               0       51     839  sstunted         
6 months    LCNI-5           MALAWI                         1               1        4     839  sstunted         
6 months    LCNI-5           MALAWI                         2               0      111     839  sstunted         
6 months    LCNI-5           MALAWI                         2               1        3     839  sstunted         
6 months    LCNI-5           MALAWI                         3               0       89     839  sstunted         
6 months    LCNI-5           MALAWI                         3               1        9     839  sstunted         
6 months    LCNI-5           MALAWI                         4               0       95     839  sstunted         
6 months    LCNI-5           MALAWI                         4               1       15     839  sstunted         
6 months    LCNI-5           MALAWI                         5               0      102     839  sstunted         
6 months    LCNI-5           MALAWI                         5               1        9     839  sstunted         
6 months    LCNI-5           MALAWI                         6               0       87     839  sstunted         
6 months    LCNI-5           MALAWI                         6               1        4     839  sstunted         
6 months    LCNI-5           MALAWI                         7               0       63     839  sstunted         
6 months    LCNI-5           MALAWI                         7               1        9     839  sstunted         
6 months    LCNI-5           MALAWI                         8               0       39     839  sstunted         
6 months    LCNI-5           MALAWI                         8               1        2     839  sstunted         
6 months    LCNI-5           MALAWI                         9               0       26     839  sstunted         
6 months    LCNI-5           MALAWI                         9               1        3     839  sstunted         
6 months    LCNI-5           MALAWI                         10              0       34     839  sstunted         
6 months    LCNI-5           MALAWI                         10              1        1     839  sstunted         
6 months    LCNI-5           MALAWI                         11              0       43     839  sstunted         
6 months    LCNI-5           MALAWI                         11              1        6     839  sstunted         
6 months    LCNI-5           MALAWI                         12              0       28     839  sstunted         
6 months    LCNI-5           MALAWI                         12              1        6     839  sstunted         
6 months    MAL-ED           BANGLADESH                     1               0       18     241  sstunted         
6 months    MAL-ED           BANGLADESH                     1               1        1     241  sstunted         
6 months    MAL-ED           BANGLADESH                     2               0       20     241  sstunted         
6 months    MAL-ED           BANGLADESH                     2               1        0     241  sstunted         
6 months    MAL-ED           BANGLADESH                     3               0       23     241  sstunted         
6 months    MAL-ED           BANGLADESH                     3               1        0     241  sstunted         
6 months    MAL-ED           BANGLADESH                     4               0       23     241  sstunted         
6 months    MAL-ED           BANGLADESH                     4               1        1     241  sstunted         
6 months    MAL-ED           BANGLADESH                     5               0       16     241  sstunted         
6 months    MAL-ED           BANGLADESH                     5               1        1     241  sstunted         
6 months    MAL-ED           BANGLADESH                     6               0       12     241  sstunted         
6 months    MAL-ED           BANGLADESH                     6               1        0     241  sstunted         
6 months    MAL-ED           BANGLADESH                     7               0       16     241  sstunted         
6 months    MAL-ED           BANGLADESH                     7               1        1     241  sstunted         
6 months    MAL-ED           BANGLADESH                     8               0       23     241  sstunted         
6 months    MAL-ED           BANGLADESH                     8               1        2     241  sstunted         
6 months    MAL-ED           BANGLADESH                     9               0       21     241  sstunted         
6 months    MAL-ED           BANGLADESH                     9               1        0     241  sstunted         
6 months    MAL-ED           BANGLADESH                     10              0       20     241  sstunted         
6 months    MAL-ED           BANGLADESH                     10              1        2     241  sstunted         
6 months    MAL-ED           BANGLADESH                     11              0       15     241  sstunted         
6 months    MAL-ED           BANGLADESH                     11              1        0     241  sstunted         
6 months    MAL-ED           BANGLADESH                     12              0       26     241  sstunted         
6 months    MAL-ED           BANGLADESH                     12              1        0     241  sstunted         
6 months    MAL-ED           BRAZIL                         1               0       14     209  sstunted         
6 months    MAL-ED           BRAZIL                         1               1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         2               0       24     209  sstunted         
6 months    MAL-ED           BRAZIL                         2               1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         3               0       15     209  sstunted         
6 months    MAL-ED           BRAZIL                         3               1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         4               0       12     209  sstunted         
6 months    MAL-ED           BRAZIL                         4               1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         5               0       17     209  sstunted         
6 months    MAL-ED           BRAZIL                         5               1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         6               0       14     209  sstunted         
6 months    MAL-ED           BRAZIL                         6               1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         7               0       16     209  sstunted         
6 months    MAL-ED           BRAZIL                         7               1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         8               0       15     209  sstunted         
6 months    MAL-ED           BRAZIL                         8               1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         9               0       21     209  sstunted         
6 months    MAL-ED           BRAZIL                         9               1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         10              0       26     209  sstunted         
6 months    MAL-ED           BRAZIL                         10              1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         11              0       17     209  sstunted         
6 months    MAL-ED           BRAZIL                         11              1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         12              0       18     209  sstunted         
6 months    MAL-ED           BRAZIL                         12              1        0     209  sstunted         
6 months    MAL-ED           INDIA                          1               0       14     236  sstunted         
6 months    MAL-ED           INDIA                          1               1        1     236  sstunted         
6 months    MAL-ED           INDIA                          2               0       23     236  sstunted         
6 months    MAL-ED           INDIA                          2               1        0     236  sstunted         
6 months    MAL-ED           INDIA                          3               0       21     236  sstunted         
6 months    MAL-ED           INDIA                          3               1        0     236  sstunted         
6 months    MAL-ED           INDIA                          4               0       18     236  sstunted         
6 months    MAL-ED           INDIA                          4               1        0     236  sstunted         
6 months    MAL-ED           INDIA                          5               0        8     236  sstunted         
6 months    MAL-ED           INDIA                          5               1        0     236  sstunted         
6 months    MAL-ED           INDIA                          6               0       18     236  sstunted         
6 months    MAL-ED           INDIA                          6               1        0     236  sstunted         
6 months    MAL-ED           INDIA                          7               0       18     236  sstunted         
6 months    MAL-ED           INDIA                          7               1        3     236  sstunted         
6 months    MAL-ED           INDIA                          8               0       20     236  sstunted         
6 months    MAL-ED           INDIA                          8               1        1     236  sstunted         
6 months    MAL-ED           INDIA                          9               0       20     236  sstunted         
6 months    MAL-ED           INDIA                          9               1        1     236  sstunted         
6 months    MAL-ED           INDIA                          10              0       23     236  sstunted         
6 months    MAL-ED           INDIA                          10              1        1     236  sstunted         
6 months    MAL-ED           INDIA                          11              0       23     236  sstunted         
6 months    MAL-ED           INDIA                          11              1        1     236  sstunted         
6 months    MAL-ED           INDIA                          12              0       21     236  sstunted         
6 months    MAL-ED           INDIA                          12              1        1     236  sstunted         
6 months    MAL-ED           NEPAL                          1               0       20     236  sstunted         
6 months    MAL-ED           NEPAL                          1               1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          2               0       20     236  sstunted         
6 months    MAL-ED           NEPAL                          2               1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          3               0       19     236  sstunted         
6 months    MAL-ED           NEPAL                          3               1        1     236  sstunted         
6 months    MAL-ED           NEPAL                          4               0       20     236  sstunted         
6 months    MAL-ED           NEPAL                          4               1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          5               0       18     236  sstunted         
6 months    MAL-ED           NEPAL                          5               1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          6               0       20     236  sstunted         
6 months    MAL-ED           NEPAL                          6               1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          7               0       19     236  sstunted         
6 months    MAL-ED           NEPAL                          7               1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          8               0       19     236  sstunted         
6 months    MAL-ED           NEPAL                          8               1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          9               0       20     236  sstunted         
6 months    MAL-ED           NEPAL                          9               1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          10              0       20     236  sstunted         
6 months    MAL-ED           NEPAL                          10              1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          11              0       20     236  sstunted         
6 months    MAL-ED           NEPAL                          11              1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          12              0       20     236  sstunted         
6 months    MAL-ED           NEPAL                          12              1        0     236  sstunted         
6 months    MAL-ED           PERU                           1               0       33     273  sstunted         
6 months    MAL-ED           PERU                           1               1        0     273  sstunted         
6 months    MAL-ED           PERU                           2               0       23     273  sstunted         
6 months    MAL-ED           PERU                           2               1        3     273  sstunted         
6 months    MAL-ED           PERU                           3               0       21     273  sstunted         
6 months    MAL-ED           PERU                           3               1        1     273  sstunted         
6 months    MAL-ED           PERU                           4               0       17     273  sstunted         
6 months    MAL-ED           PERU                           4               1        1     273  sstunted         
6 months    MAL-ED           PERU                           5               0       24     273  sstunted         
6 months    MAL-ED           PERU                           5               1        0     273  sstunted         
6 months    MAL-ED           PERU                           6               0       19     273  sstunted         
6 months    MAL-ED           PERU                           6               1        1     273  sstunted         
6 months    MAL-ED           PERU                           7               0       22     273  sstunted         
6 months    MAL-ED           PERU                           7               1        0     273  sstunted         
6 months    MAL-ED           PERU                           8               0       16     273  sstunted         
6 months    MAL-ED           PERU                           8               1        0     273  sstunted         
6 months    MAL-ED           PERU                           9               0       22     273  sstunted         
6 months    MAL-ED           PERU                           9               1        0     273  sstunted         
6 months    MAL-ED           PERU                           10              0       20     273  sstunted         
6 months    MAL-ED           PERU                           10              1        0     273  sstunted         
6 months    MAL-ED           PERU                           11              0       30     273  sstunted         
6 months    MAL-ED           PERU                           11              1        4     273  sstunted         
6 months    MAL-ED           PERU                           12              0       16     273  sstunted         
6 months    MAL-ED           PERU                           12              1        0     273  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1               0       31     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1               1        1     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   2               0       32     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   2               1        1     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   3               0       17     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   3               1        0     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   4               0       12     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   4               1        0     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   5               0       10     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   5               1        1     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   6               0       18     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   6               1        0     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   7               0       25     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   7               1        0     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   8               0        7     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   8               1        0     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   9               0       17     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   9               1        0     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   10              0       21     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   10              1        1     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   11              0       28     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   11              1        1     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   12              0       30     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   12              1        1     254  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0       18     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        3     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               0       27     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               1        1     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               0       21     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               1        2     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               0       10     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               1        0     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5               0       12     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5               1        0     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6               0       15     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6               1        1     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7               0       27     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7               1        1     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8               0       11     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8               1        1     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9               0       17     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9               1        1     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10              0       18     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10              1        1     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11              0       26     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11              1        2     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12              0       31     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12              1        1     247  sstunted         
6 months    NIH-Birth        BANGLADESH                     1               0       46     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     1               1        4     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     2               0       47     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     2               1        3     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     3               0       46     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     3               1        4     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     4               0       42     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     4               1        2     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     5               0       39     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     5               1        1     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     6               0       35     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     6               1        4     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     7               0       42     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     7               1        3     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     8               0       36     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     8               1        2     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     9               0       28     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     9               1        2     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     10              0       48     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     10              1        4     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     11              0       44     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     11              1        5     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     12              0       49     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     12              1        1     537  sstunted         
6 months    PROBIT           BELARUS                        1               0     1087   15760  sstunted         
6 months    PROBIT           BELARUS                        1               1       15   15760  sstunted         
6 months    PROBIT           BELARUS                        2               0      937   15760  sstunted         
6 months    PROBIT           BELARUS                        2               1       14   15760  sstunted         
6 months    PROBIT           BELARUS                        3               0     1098   15760  sstunted         
6 months    PROBIT           BELARUS                        3               1       16   15760  sstunted         
6 months    PROBIT           BELARUS                        4               0     1056   15760  sstunted         
6 months    PROBIT           BELARUS                        4               1       13   15760  sstunted         
6 months    PROBIT           BELARUS                        5               0     1087   15760  sstunted         
6 months    PROBIT           BELARUS                        5               1        9   15760  sstunted         
6 months    PROBIT           BELARUS                        6               0     1106   15760  sstunted         
6 months    PROBIT           BELARUS                        6               1       14   15760  sstunted         
6 months    PROBIT           BELARUS                        7               0     1351   15760  sstunted         
6 months    PROBIT           BELARUS                        7               1       14   15760  sstunted         
6 months    PROBIT           BELARUS                        8               0     1483   15760  sstunted         
6 months    PROBIT           BELARUS                        8               1       15   15760  sstunted         
6 months    PROBIT           BELARUS                        9               0     1468   15760  sstunted         
6 months    PROBIT           BELARUS                        9               1       13   15760  sstunted         
6 months    PROBIT           BELARUS                        10              0     1652   15760  sstunted         
6 months    PROBIT           BELARUS                        10              1       17   15760  sstunted         
6 months    PROBIT           BELARUS                        11              0     1566   15760  sstunted         
6 months    PROBIT           BELARUS                        11              1       23   15760  sstunted         
6 months    PROBIT           BELARUS                        12              0     1692   15760  sstunted         
6 months    PROBIT           BELARUS                        12              1       14   15760  sstunted         
6 months    ResPak           PAKISTAN                       1               0        0     239  sstunted         
6 months    ResPak           PAKISTAN                       1               1        2     239  sstunted         
6 months    ResPak           PAKISTAN                       2               0        7     239  sstunted         
6 months    ResPak           PAKISTAN                       2               1        1     239  sstunted         
6 months    ResPak           PAKISTAN                       3               0       10     239  sstunted         
6 months    ResPak           PAKISTAN                       3               1        0     239  sstunted         
6 months    ResPak           PAKISTAN                       4               0       12     239  sstunted         
6 months    ResPak           PAKISTAN                       4               1        8     239  sstunted         
6 months    ResPak           PAKISTAN                       5               0       22     239  sstunted         
6 months    ResPak           PAKISTAN                       5               1        8     239  sstunted         
6 months    ResPak           PAKISTAN                       6               0       28     239  sstunted         
6 months    ResPak           PAKISTAN                       6               1       11     239  sstunted         
6 months    ResPak           PAKISTAN                       7               0       38     239  sstunted         
6 months    ResPak           PAKISTAN                       7               1        5     239  sstunted         
6 months    ResPak           PAKISTAN                       8               0       24     239  sstunted         
6 months    ResPak           PAKISTAN                       8               1        2     239  sstunted         
6 months    ResPak           PAKISTAN                       9               0       30     239  sstunted         
6 months    ResPak           PAKISTAN                       9               1        7     239  sstunted         
6 months    ResPak           PAKISTAN                       10              0       12     239  sstunted         
6 months    ResPak           PAKISTAN                       10              1        3     239  sstunted         
6 months    ResPak           PAKISTAN                       11              0        6     239  sstunted         
6 months    ResPak           PAKISTAN                       11              1        0     239  sstunted         
6 months    ResPak           PAKISTAN                       12              0        3     239  sstunted         
6 months    ResPak           PAKISTAN                       12              1        0     239  sstunted         
6 months    SAS-CompFeed     INDIA                          1               0       77    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          1               1        8    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          2               0       74    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          2               1        7    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          3               0       73    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          3               1        7    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          4               0       73    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          4               1        4    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          5               0       67    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          5               1        9    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          6               0       91    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          6               1       11    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          7               0       98    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          7               1       17    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          8               0      136    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          8               1       16    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          9               0      152    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          9               1       14    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          10              0      139    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          10              1        9    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          11              0      114    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          11              1       11    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          12              0      114    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          12              1       15    1336  sstunted         
6 months    SAS-FoodSuppl    INDIA                          1               0       49     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          1               1       12     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          2               0       29     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          2               1        8     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          3               0       30     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          3               1        5     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          4               0       22     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          4               1        4     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          5               0       25     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          5               1        4     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          6               0       26     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          6               1        5     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          7               0       16     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          7               1        1     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          8               0        0     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          8               1        0     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          9               0       11     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          9               1        1     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          10              0       20     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          10              1        6     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          11              0       41     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          11              1        3     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          12              0       57     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          12              1        5     380  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      198    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        1    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      135    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        2    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               0      150    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               1        1    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               0      137    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               1        1    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               0      160    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               1        1    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               0      141    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               1        1    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               0      144    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               1        1    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               0      173    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               1        1    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               0      195    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               1        3    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              0      195    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              1        1    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              0      182    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              1        5    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              0      200    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              1        1    2029  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       1               0      802    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       1               1       28    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       2               0      589    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       2               1       20    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       3               0      689    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       3               1       47    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       4               0      655    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       4               1       25    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       5               0      609    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       5               1       27    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       6               0      648    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       6               1       32    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       7               0      639    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       7               1       36    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       8               0      745    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       8               1       23    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       9               0      775    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       9               1       26    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       10              0      606    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       10              1       22    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       11              0      731    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       11              1       30    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       12              0      830    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       12              1       35    8669  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1               0       16     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1               1       12     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          2               0       17     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          2               1        7     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          3               0       12     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          3               1       14     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          4               0       22     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          4               1        7     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          5               0       27     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          5               1       16     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          6               0       17     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          6               1       19     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          7               0       27     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          7               1        6     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          8               0       31     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          8               1       10     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          9               0       13     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          9               1        9     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          10              0       15     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          10              1        4     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          11              0       32     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          11              1        9     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          12              0       17     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          12              1       12     371  sstunted         
24 months   CMIN             BANGLADESH                     1               0       21     242  sstunted         
24 months   CMIN             BANGLADESH                     1               1        5     242  sstunted         
24 months   CMIN             BANGLADESH                     2               0       20     242  sstunted         
24 months   CMIN             BANGLADESH                     2               1       11     242  sstunted         
24 months   CMIN             BANGLADESH                     3               0       15     242  sstunted         
24 months   CMIN             BANGLADESH                     3               1        4     242  sstunted         
24 months   CMIN             BANGLADESH                     4               0       14     242  sstunted         
24 months   CMIN             BANGLADESH                     4               1        4     242  sstunted         
24 months   CMIN             BANGLADESH                     5               0       16     242  sstunted         
24 months   CMIN             BANGLADESH                     5               1        3     242  sstunted         
24 months   CMIN             BANGLADESH                     6               0       19     242  sstunted         
24 months   CMIN             BANGLADESH                     6               1        3     242  sstunted         
24 months   CMIN             BANGLADESH                     7               0        7     242  sstunted         
24 months   CMIN             BANGLADESH                     7               1        5     242  sstunted         
24 months   CMIN             BANGLADESH                     8               0       11     242  sstunted         
24 months   CMIN             BANGLADESH                     8               1        2     242  sstunted         
24 months   CMIN             BANGLADESH                     9               0        9     242  sstunted         
24 months   CMIN             BANGLADESH                     9               1        9     242  sstunted         
24 months   CMIN             BANGLADESH                     10              0       15     242  sstunted         
24 months   CMIN             BANGLADESH                     10              1        4     242  sstunted         
24 months   CMIN             BANGLADESH                     11              0        1     242  sstunted         
24 months   CMIN             BANGLADESH                     11              1        1     242  sstunted         
24 months   CMIN             BANGLADESH                     12              0       26     242  sstunted         
24 months   CMIN             BANGLADESH                     12              1       17     242  sstunted         
24 months   CONTENT          PERU                           1               0        8     164  sstunted         
24 months   CONTENT          PERU                           1               1        0     164  sstunted         
24 months   CONTENT          PERU                           2               0       10     164  sstunted         
24 months   CONTENT          PERU                           2               1        0     164  sstunted         
24 months   CONTENT          PERU                           3               0       20     164  sstunted         
24 months   CONTENT          PERU                           3               1        0     164  sstunted         
24 months   CONTENT          PERU                           4               0       13     164  sstunted         
24 months   CONTENT          PERU                           4               1        0     164  sstunted         
24 months   CONTENT          PERU                           5               0       22     164  sstunted         
24 months   CONTENT          PERU                           5               1        0     164  sstunted         
24 months   CONTENT          PERU                           6               0       11     164  sstunted         
24 months   CONTENT          PERU                           6               1        0     164  sstunted         
24 months   CONTENT          PERU                           7               0       13     164  sstunted         
24 months   CONTENT          PERU                           7               1        0     164  sstunted         
24 months   CONTENT          PERU                           8               0       23     164  sstunted         
24 months   CONTENT          PERU                           8               1        0     164  sstunted         
24 months   CONTENT          PERU                           9               0       10     164  sstunted         
24 months   CONTENT          PERU                           9               1        1     164  sstunted         
24 months   CONTENT          PERU                           10              0       12     164  sstunted         
24 months   CONTENT          PERU                           10              1        0     164  sstunted         
24 months   CONTENT          PERU                           11              0       17     164  sstunted         
24 months   CONTENT          PERU                           11              1        0     164  sstunted         
24 months   CONTENT          PERU                           12              0        4     164  sstunted         
24 months   CONTENT          PERU                           12              1        0     164  sstunted         
24 months   EE               PAKISTAN                       1               0       18     167  sstunted         
24 months   EE               PAKISTAN                       1               1       10     167  sstunted         
24 months   EE               PAKISTAN                       2               0        1     167  sstunted         
24 months   EE               PAKISTAN                       2               1        1     167  sstunted         
24 months   EE               PAKISTAN                       3               0        0     167  sstunted         
24 months   EE               PAKISTAN                       3               1        2     167  sstunted         
24 months   EE               PAKISTAN                       4               0        0     167  sstunted         
24 months   EE               PAKISTAN                       4               1        0     167  sstunted         
24 months   EE               PAKISTAN                       5               0        0     167  sstunted         
24 months   EE               PAKISTAN                       5               1        0     167  sstunted         
24 months   EE               PAKISTAN                       6               0        0     167  sstunted         
24 months   EE               PAKISTAN                       6               1        0     167  sstunted         
24 months   EE               PAKISTAN                       7               0        0     167  sstunted         
24 months   EE               PAKISTAN                       7               1        0     167  sstunted         
24 months   EE               PAKISTAN                       8               0        0     167  sstunted         
24 months   EE               PAKISTAN                       8               1        0     167  sstunted         
24 months   EE               PAKISTAN                       9               0        0     167  sstunted         
24 months   EE               PAKISTAN                       9               1        0     167  sstunted         
24 months   EE               PAKISTAN                       10              0        0     167  sstunted         
24 months   EE               PAKISTAN                       10              1        0     167  sstunted         
24 months   EE               PAKISTAN                       11              0       38     167  sstunted         
24 months   EE               PAKISTAN                       11              1       19     167  sstunted         
24 months   EE               PAKISTAN                       12              0       51     167  sstunted         
24 months   EE               PAKISTAN                       12              1       27     167  sstunted         
24 months   GMS-Nepal        NEPAL                          1               0        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          1               1        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          2               0        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          2               1        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          3               0        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          3               1        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          4               0        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          4               1        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          5               0        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          5               1        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          6               0       66     488  sstunted         
24 months   GMS-Nepal        NEPAL                          6               1        7     488  sstunted         
24 months   GMS-Nepal        NEPAL                          7               0      176     488  sstunted         
24 months   GMS-Nepal        NEPAL                          7               1       24     488  sstunted         
24 months   GMS-Nepal        NEPAL                          8               0      193     488  sstunted         
24 months   GMS-Nepal        NEPAL                          8               1       22     488  sstunted         
24 months   GMS-Nepal        NEPAL                          9               0        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          9               1        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          10              0        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          10              1        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          11              0        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          11              1        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          12              0        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          12              1        0     488  sstunted         
24 months   IRC              INDIA                          1               0       30     409  sstunted         
24 months   IRC              INDIA                          1               1        5     409  sstunted         
24 months   IRC              INDIA                          2               0       27     409  sstunted         
24 months   IRC              INDIA                          2               1        3     409  sstunted         
24 months   IRC              INDIA                          3               0       23     409  sstunted         
24 months   IRC              INDIA                          3               1        6     409  sstunted         
24 months   IRC              INDIA                          4               0       21     409  sstunted         
24 months   IRC              INDIA                          4               1        3     409  sstunted         
24 months   IRC              INDIA                          5               0       15     409  sstunted         
24 months   IRC              INDIA                          5               1        6     409  sstunted         
24 months   IRC              INDIA                          6               0       34     409  sstunted         
24 months   IRC              INDIA                          6               1        1     409  sstunted         
24 months   IRC              INDIA                          7               0       36     409  sstunted         
24 months   IRC              INDIA                          7               1        0     409  sstunted         
24 months   IRC              INDIA                          8               0       37     409  sstunted         
24 months   IRC              INDIA                          8               1        4     409  sstunted         
24 months   IRC              INDIA                          9               0       27     409  sstunted         
24 months   IRC              INDIA                          9               1        3     409  sstunted         
24 months   IRC              INDIA                          10              0       37     409  sstunted         
24 months   IRC              INDIA                          10              1        1     409  sstunted         
24 months   IRC              INDIA                          11              0       39     409  sstunted         
24 months   IRC              INDIA                          11              1        2     409  sstunted         
24 months   IRC              INDIA                          12              0       42     409  sstunted         
24 months   IRC              INDIA                          12              1        7     409  sstunted         
24 months   JiVitA-3         BANGLADESH                     1               0      589    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     1               1      116    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     2               0      495    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     2               1      114    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     3               0      620    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     3               1      110    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     4               0      477    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     4               1       64    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     5               0      331    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     5               1       65    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     6               0      485    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     6               1       79    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     7               0      565    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     7               1       84    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     8               0      562    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     8               1       86    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     9               0      636    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     9               1       91    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     10              0      759    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     10              1      126    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     11              0      758    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     11              1      182    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     12              0     1008    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     12              1      230    8632  sstunted         
24 months   JiVitA-4         BANGLADESH                     1               0       45    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     1               1        2    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     2               0      294    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     2               1       32    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     3               0      358    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     3               1       43    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     4               0      706    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     4               1       97    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     5               0      496    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     5               1       63    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     6               0      391    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     6               1       32    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     7               0      696    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     7               1       87    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     8               0      445    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     8               1       27    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     9               0      405    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     9               1       40    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     10              0      259    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     10              1       17    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     11              0      138    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     11              1        8    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     12              0       66    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     12              1        5    4752  sstunted         
24 months   Keneba           GAMBIA                         1               0      133    1725  sstunted         
24 months   Keneba           GAMBIA                         1               1       17    1725  sstunted         
24 months   Keneba           GAMBIA                         2               0      147    1725  sstunted         
24 months   Keneba           GAMBIA                         2               1       13    1725  sstunted         
24 months   Keneba           GAMBIA                         3               0      143    1725  sstunted         
24 months   Keneba           GAMBIA                         3               1       16    1725  sstunted         
24 months   Keneba           GAMBIA                         4               0      156    1725  sstunted         
24 months   Keneba           GAMBIA                         4               1       19    1725  sstunted         
24 months   Keneba           GAMBIA                         5               0      170    1725  sstunted         
24 months   Keneba           GAMBIA                         5               1       12    1725  sstunted         
24 months   Keneba           GAMBIA                         6               0      124    1725  sstunted         
24 months   Keneba           GAMBIA                         6               1        8    1725  sstunted         
24 months   Keneba           GAMBIA                         7               0       95    1725  sstunted         
24 months   Keneba           GAMBIA                         7               1        6    1725  sstunted         
24 months   Keneba           GAMBIA                         8               0       86    1725  sstunted         
24 months   Keneba           GAMBIA                         8               1        6    1725  sstunted         
24 months   Keneba           GAMBIA                         9               0      129    1725  sstunted         
24 months   Keneba           GAMBIA                         9               1        6    1725  sstunted         
24 months   Keneba           GAMBIA                         10              0      134    1725  sstunted         
24 months   Keneba           GAMBIA                         10              1       16    1725  sstunted         
24 months   Keneba           GAMBIA                         11              0      167    1725  sstunted         
24 months   Keneba           GAMBIA                         11              1       11    1725  sstunted         
24 months   Keneba           GAMBIA                         12              0      101    1725  sstunted         
24 months   Keneba           GAMBIA                         12              1       10    1725  sstunted         
24 months   LCNI-5           MALAWI                         1               0       35     579  sstunted         
24 months   LCNI-5           MALAWI                         1               1        6     579  sstunted         
24 months   LCNI-5           MALAWI                         2               0       83     579  sstunted         
24 months   LCNI-5           MALAWI                         2               1        5     579  sstunted         
24 months   LCNI-5           MALAWI                         3               0       65     579  sstunted         
24 months   LCNI-5           MALAWI                         3               1        5     579  sstunted         
24 months   LCNI-5           MALAWI                         4               0       62     579  sstunted         
24 months   LCNI-5           MALAWI                         4               1       17     579  sstunted         
24 months   LCNI-5           MALAWI                         5               0       58     579  sstunted         
24 months   LCNI-5           MALAWI                         5               1        6     579  sstunted         
24 months   LCNI-5           MALAWI                         6               0       51     579  sstunted         
24 months   LCNI-5           MALAWI                         6               1       13     579  sstunted         
24 months   LCNI-5           MALAWI                         7               0       36     579  sstunted         
24 months   LCNI-5           MALAWI                         7               1        5     579  sstunted         
24 months   LCNI-5           MALAWI                         8               0       27     579  sstunted         
24 months   LCNI-5           MALAWI                         8               1        0     579  sstunted         
24 months   LCNI-5           MALAWI                         9               0       19     579  sstunted         
24 months   LCNI-5           MALAWI                         9               1        1     579  sstunted         
24 months   LCNI-5           MALAWI                         10              0       24     579  sstunted         
24 months   LCNI-5           MALAWI                         10              1        1     579  sstunted         
24 months   LCNI-5           MALAWI                         11              0       30     579  sstunted         
24 months   LCNI-5           MALAWI                         11              1        6     579  sstunted         
24 months   LCNI-5           MALAWI                         12              0       19     579  sstunted         
24 months   LCNI-5           MALAWI                         12              1        5     579  sstunted         
24 months   MAL-ED           BANGLADESH                     1               0       17     212  sstunted         
24 months   MAL-ED           BANGLADESH                     1               1        0     212  sstunted         
24 months   MAL-ED           BANGLADESH                     2               0       12     212  sstunted         
24 months   MAL-ED           BANGLADESH                     2               1        5     212  sstunted         
24 months   MAL-ED           BANGLADESH                     3               0       17     212  sstunted         
24 months   MAL-ED           BANGLADESH                     3               1        2     212  sstunted         
24 months   MAL-ED           BANGLADESH                     4               0       20     212  sstunted         
24 months   MAL-ED           BANGLADESH                     4               1        1     212  sstunted         
24 months   MAL-ED           BANGLADESH                     5               0       11     212  sstunted         
24 months   MAL-ED           BANGLADESH                     5               1        4     212  sstunted         
24 months   MAL-ED           BANGLADESH                     6               0        8     212  sstunted         
24 months   MAL-ED           BANGLADESH                     6               1        1     212  sstunted         
24 months   MAL-ED           BANGLADESH                     7               0       15     212  sstunted         
24 months   MAL-ED           BANGLADESH                     7               1        2     212  sstunted         
24 months   MAL-ED           BANGLADESH                     8               0       17     212  sstunted         
24 months   MAL-ED           BANGLADESH                     8               1        7     212  sstunted         
24 months   MAL-ED           BANGLADESH                     9               0       17     212  sstunted         
24 months   MAL-ED           BANGLADESH                     9               1        1     212  sstunted         
24 months   MAL-ED           BANGLADESH                     10              0       16     212  sstunted         
24 months   MAL-ED           BANGLADESH                     10              1        4     212  sstunted         
24 months   MAL-ED           BANGLADESH                     11              0        8     212  sstunted         
24 months   MAL-ED           BANGLADESH                     11              1        1     212  sstunted         
24 months   MAL-ED           BANGLADESH                     12              0       26     212  sstunted         
24 months   MAL-ED           BANGLADESH                     12              1        0     212  sstunted         
24 months   MAL-ED           BRAZIL                         1               0       14     169  sstunted         
24 months   MAL-ED           BRAZIL                         1               1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         2               0       19     169  sstunted         
24 months   MAL-ED           BRAZIL                         2               1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         3               0       11     169  sstunted         
24 months   MAL-ED           BRAZIL                         3               1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         4               0       11     169  sstunted         
24 months   MAL-ED           BRAZIL                         4               1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         5               0       15     169  sstunted         
24 months   MAL-ED           BRAZIL                         5               1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         6               0        9     169  sstunted         
24 months   MAL-ED           BRAZIL                         6               1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         7               0        9     169  sstunted         
24 months   MAL-ED           BRAZIL                         7               1        1     169  sstunted         
24 months   MAL-ED           BRAZIL                         8               0       12     169  sstunted         
24 months   MAL-ED           BRAZIL                         8               1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         9               0       18     169  sstunted         
24 months   MAL-ED           BRAZIL                         9               1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         10              0       21     169  sstunted         
24 months   MAL-ED           BRAZIL                         10              1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         11              0       12     169  sstunted         
24 months   MAL-ED           BRAZIL                         11              1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         12              0       17     169  sstunted         
24 months   MAL-ED           BRAZIL                         12              1        0     169  sstunted         
24 months   MAL-ED           INDIA                          1               0       14     227  sstunted         
24 months   MAL-ED           INDIA                          1               1        1     227  sstunted         
24 months   MAL-ED           INDIA                          2               0       19     227  sstunted         
24 months   MAL-ED           INDIA                          2               1        4     227  sstunted         
24 months   MAL-ED           INDIA                          3               0       19     227  sstunted         
24 months   MAL-ED           INDIA                          3               1        0     227  sstunted         
24 months   MAL-ED           INDIA                          4               0       14     227  sstunted         
24 months   MAL-ED           INDIA                          4               1        3     227  sstunted         
24 months   MAL-ED           INDIA                          5               0        5     227  sstunted         
24 months   MAL-ED           INDIA                          5               1        2     227  sstunted         
24 months   MAL-ED           INDIA                          6               0       17     227  sstunted         
24 months   MAL-ED           INDIA                          6               1        0     227  sstunted         
24 months   MAL-ED           INDIA                          7               0       19     227  sstunted         
24 months   MAL-ED           INDIA                          7               1        2     227  sstunted         
24 months   MAL-ED           INDIA                          8               0       17     227  sstunted         
24 months   MAL-ED           INDIA                          8               1        3     227  sstunted         
24 months   MAL-ED           INDIA                          9               0       15     227  sstunted         
24 months   MAL-ED           INDIA                          9               1        5     227  sstunted         
24 months   MAL-ED           INDIA                          10              0       19     227  sstunted         
24 months   MAL-ED           INDIA                          10              1        4     227  sstunted         
24 months   MAL-ED           INDIA                          11              0       20     227  sstunted         
24 months   MAL-ED           INDIA                          11              1        4     227  sstunted         
24 months   MAL-ED           INDIA                          12              0       19     227  sstunted         
24 months   MAL-ED           INDIA                          12              1        2     227  sstunted         
24 months   MAL-ED           NEPAL                          1               0       18     228  sstunted         
24 months   MAL-ED           NEPAL                          1               1        1     228  sstunted         
24 months   MAL-ED           NEPAL                          2               0       17     228  sstunted         
24 months   MAL-ED           NEPAL                          2               1        1     228  sstunted         
24 months   MAL-ED           NEPAL                          3               0       18     228  sstunted         
24 months   MAL-ED           NEPAL                          3               1        1     228  sstunted         
24 months   MAL-ED           NEPAL                          4               0       18     228  sstunted         
24 months   MAL-ED           NEPAL                          4               1        2     228  sstunted         
24 months   MAL-ED           NEPAL                          5               0       17     228  sstunted         
24 months   MAL-ED           NEPAL                          5               1        0     228  sstunted         
24 months   MAL-ED           NEPAL                          6               0       19     228  sstunted         
24 months   MAL-ED           NEPAL                          6               1        1     228  sstunted         
24 months   MAL-ED           NEPAL                          7               0       19     228  sstunted         
24 months   MAL-ED           NEPAL                          7               1        0     228  sstunted         
24 months   MAL-ED           NEPAL                          8               0       18     228  sstunted         
24 months   MAL-ED           NEPAL                          8               1        0     228  sstunted         
24 months   MAL-ED           NEPAL                          9               0       19     228  sstunted         
24 months   MAL-ED           NEPAL                          9               1        0     228  sstunted         
24 months   MAL-ED           NEPAL                          10              0       19     228  sstunted         
24 months   MAL-ED           NEPAL                          10              1        1     228  sstunted         
24 months   MAL-ED           NEPAL                          11              0       19     228  sstunted         
24 months   MAL-ED           NEPAL                          11              1        0     228  sstunted         
24 months   MAL-ED           NEPAL                          12              0       20     228  sstunted         
24 months   MAL-ED           NEPAL                          12              1        0     228  sstunted         
24 months   MAL-ED           PERU                           1               0       23     201  sstunted         
24 months   MAL-ED           PERU                           1               1        3     201  sstunted         
24 months   MAL-ED           PERU                           2               0       21     201  sstunted         
24 months   MAL-ED           PERU                           2               1        2     201  sstunted         
24 months   MAL-ED           PERU                           3               0       15     201  sstunted         
24 months   MAL-ED           PERU                           3               1        0     201  sstunted         
24 months   MAL-ED           PERU                           4               0        8     201  sstunted         
24 months   MAL-ED           PERU                           4               1        2     201  sstunted         
24 months   MAL-ED           PERU                           5               0       17     201  sstunted         
24 months   MAL-ED           PERU                           5               1        1     201  sstunted         
24 months   MAL-ED           PERU                           6               0       12     201  sstunted         
24 months   MAL-ED           PERU                           6               1        2     201  sstunted         
24 months   MAL-ED           PERU                           7               0       14     201  sstunted         
24 months   MAL-ED           PERU                           7               1        0     201  sstunted         
24 months   MAL-ED           PERU                           8               0       11     201  sstunted         
24 months   MAL-ED           PERU                           8               1        1     201  sstunted         
24 months   MAL-ED           PERU                           9               0       21     201  sstunted         
24 months   MAL-ED           PERU                           9               1        0     201  sstunted         
24 months   MAL-ED           PERU                           10              0       15     201  sstunted         
24 months   MAL-ED           PERU                           10              1        0     201  sstunted         
24 months   MAL-ED           PERU                           11              0       18     201  sstunted         
24 months   MAL-ED           PERU                           11              1        3     201  sstunted         
24 months   MAL-ED           PERU                           12              0       11     201  sstunted         
24 months   MAL-ED           PERU                           12              1        1     201  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1               0       23     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1               1        6     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   2               0       25     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   2               1        5     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   3               0       14     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   3               1        2     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   4               0       11     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   4               1        1     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   5               0       10     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   5               1        0     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   6               0       15     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   6               1        0     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   7               0       23     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   7               1        2     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   8               0        6     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   8               1        1     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   9               0       17     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   9               1        0     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   10              0       20     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   10              1        2     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   11              0       22     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   11              1        5     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   12              0       25     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   12              1        3     238  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0       12     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        6     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               0       14     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               1        5     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               0       11     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               1       11     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               0        5     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               1        3     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5               0       11     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5               1        3     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6               0       11     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6               1        3     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7               0       20     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7               1        8     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8               0        9     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8               1        3     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9               0       11     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9               1        4     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10              0       10     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10              1        7     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11              0       13     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11              1        8     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12              0       17     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12              1        9     214  sstunted         
24 months   NIH-Birth        BANGLADESH                     1               0       35     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     1               1        7     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     2               0       32     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     2               1        4     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     3               0       35     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     3               1        6     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     4               0       24     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     4               1       10     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     5               0       25     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     5               1        9     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     6               0       25     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     6               1        5     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     7               0       29     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     7               1        8     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     8               0       21     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     8               1        9     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     9               0       15     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     9               1        4     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     10              0       30     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     10              1       10     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     11              0       28     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     11              1       13     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     12              0       35     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     12              1       10     429  sstunted         
24 months   PROBIT           BELARUS                        1               0      266    4035  sstunted         
24 months   PROBIT           BELARUS                        1               1        3    4035  sstunted         
24 months   PROBIT           BELARUS                        2               0      208    4035  sstunted         
24 months   PROBIT           BELARUS                        2               1        3    4035  sstunted         
24 months   PROBIT           BELARUS                        3               0      323    4035  sstunted         
24 months   PROBIT           BELARUS                        3               1        1    4035  sstunted         
24 months   PROBIT           BELARUS                        4               0      322    4035  sstunted         
24 months   PROBIT           BELARUS                        4               1        4    4035  sstunted         
24 months   PROBIT           BELARUS                        5               0      305    4035  sstunted         
24 months   PROBIT           BELARUS                        5               1        2    4035  sstunted         
24 months   PROBIT           BELARUS                        6               0      262    4035  sstunted         
24 months   PROBIT           BELARUS                        6               1        3    4035  sstunted         
24 months   PROBIT           BELARUS                        7               0      369    4035  sstunted         
24 months   PROBIT           BELARUS                        7               1        4    4035  sstunted         
24 months   PROBIT           BELARUS                        8               0      350    4035  sstunted         
24 months   PROBIT           BELARUS                        8               1        3    4035  sstunted         
24 months   PROBIT           BELARUS                        9               0      376    4035  sstunted         
24 months   PROBIT           BELARUS                        9               1        6    4035  sstunted         
24 months   PROBIT           BELARUS                        10              0      381    4035  sstunted         
24 months   PROBIT           BELARUS                        10              1       12    4035  sstunted         
24 months   PROBIT           BELARUS                        11              0      379    4035  sstunted         
24 months   PROBIT           BELARUS                        11              1       10    4035  sstunted         
24 months   PROBIT           BELARUS                        12              0      429    4035  sstunted         
24 months   PROBIT           BELARUS                        12              1       14    4035  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               0        3       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               0        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               0        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               1        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              1        0       6  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       1               0      172    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       1               1       18    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       2               0      167    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       2               1       22    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       3               0      188    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       3               1       26    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       4               0      163    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       4               1       16    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       5               0      146    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       5               1       18    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       6               0      181    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       6               1       18    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       7               0       99    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       7               1       25    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       8               0      120    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       8               1       10    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       9               0       15    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       9               1        2    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       10              0       23    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       10              1        2    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       11              0       61    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       11              1        6    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       12              0      127    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       12              1       15    1640  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
