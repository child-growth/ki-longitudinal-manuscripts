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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        brthmon    stunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  --------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1                0        7      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          1                1        2      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          2                0        0      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          2                1        1      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          3                0        7      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          3                1        1      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          4                0        7      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          4                1        2      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          5                0       11      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          5                1        1      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          6                0        8      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          6                1        1      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          7                0        7      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          7                1        0      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          8                0        3      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          8                1        1      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          9                0        5      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          9                1        3      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          10               0        8      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          10               1        2      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          11               0       10      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          11               1        1      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          12               0        2      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          12               1        2      92  stunted          
Birth       CMIN             BANGLADESH                     1                0        1      26  stunted          
Birth       CMIN             BANGLADESH                     1                1        4      26  stunted          
Birth       CMIN             BANGLADESH                     2                0        4      26  stunted          
Birth       CMIN             BANGLADESH                     2                1        0      26  stunted          
Birth       CMIN             BANGLADESH                     3                0        0      26  stunted          
Birth       CMIN             BANGLADESH                     3                1        0      26  stunted          
Birth       CMIN             BANGLADESH                     4                0        2      26  stunted          
Birth       CMIN             BANGLADESH                     4                1        1      26  stunted          
Birth       CMIN             BANGLADESH                     5                0        1      26  stunted          
Birth       CMIN             BANGLADESH                     5                1        0      26  stunted          
Birth       CMIN             BANGLADESH                     6                0        0      26  stunted          
Birth       CMIN             BANGLADESH                     6                1        0      26  stunted          
Birth       CMIN             BANGLADESH                     7                0        4      26  stunted          
Birth       CMIN             BANGLADESH                     7                1        0      26  stunted          
Birth       CMIN             BANGLADESH                     8                0        1      26  stunted          
Birth       CMIN             BANGLADESH                     8                1        3      26  stunted          
Birth       CMIN             BANGLADESH                     9                0        1      26  stunted          
Birth       CMIN             BANGLADESH                     9                1        0      26  stunted          
Birth       CMIN             BANGLADESH                     10               0        1      26  stunted          
Birth       CMIN             BANGLADESH                     10               1        0      26  stunted          
Birth       CMIN             BANGLADESH                     11               0        2      26  stunted          
Birth       CMIN             BANGLADESH                     11               1        1      26  stunted          
Birth       CMIN             BANGLADESH                     12               0        0      26  stunted          
Birth       CMIN             BANGLADESH                     12               1        0      26  stunted          
Birth       CONTENT          PERU                           1                0        0       2  stunted          
Birth       CONTENT          PERU                           1                1        0       2  stunted          
Birth       CONTENT          PERU                           2                0        0       2  stunted          
Birth       CONTENT          PERU                           2                1        0       2  stunted          
Birth       CONTENT          PERU                           3                0        0       2  stunted          
Birth       CONTENT          PERU                           3                1        0       2  stunted          
Birth       CONTENT          PERU                           4                0        0       2  stunted          
Birth       CONTENT          PERU                           4                1        0       2  stunted          
Birth       CONTENT          PERU                           5                0        2       2  stunted          
Birth       CONTENT          PERU                           5                1        0       2  stunted          
Birth       CONTENT          PERU                           6                0        0       2  stunted          
Birth       CONTENT          PERU                           6                1        0       2  stunted          
Birth       CONTENT          PERU                           7                0        0       2  stunted          
Birth       CONTENT          PERU                           7                1        0       2  stunted          
Birth       CONTENT          PERU                           8                0        0       2  stunted          
Birth       CONTENT          PERU                           8                1        0       2  stunted          
Birth       CONTENT          PERU                           9                0        0       2  stunted          
Birth       CONTENT          PERU                           9                1        0       2  stunted          
Birth       CONTENT          PERU                           10               0        0       2  stunted          
Birth       CONTENT          PERU                           10               1        0       2  stunted          
Birth       CONTENT          PERU                           11               0        0       2  stunted          
Birth       CONTENT          PERU                           11               1        0       2  stunted          
Birth       CONTENT          PERU                           12               0        0       2  stunted          
Birth       CONTENT          PERU                           12               1        0       2  stunted          
Birth       EE               PAKISTAN                       1                0       26     240  stunted          
Birth       EE               PAKISTAN                       1                1       35     240  stunted          
Birth       EE               PAKISTAN                       2                0       31     240  stunted          
Birth       EE               PAKISTAN                       2                1       18     240  stunted          
Birth       EE               PAKISTAN                       3                0       15     240  stunted          
Birth       EE               PAKISTAN                       3                1        9     240  stunted          
Birth       EE               PAKISTAN                       4                0        5     240  stunted          
Birth       EE               PAKISTAN                       4                1        5     240  stunted          
Birth       EE               PAKISTAN                       5                0        0     240  stunted          
Birth       EE               PAKISTAN                       5                1        0     240  stunted          
Birth       EE               PAKISTAN                       6                0        0     240  stunted          
Birth       EE               PAKISTAN                       6                1        0     240  stunted          
Birth       EE               PAKISTAN                       7                0        0     240  stunted          
Birth       EE               PAKISTAN                       7                1        0     240  stunted          
Birth       EE               PAKISTAN                       8                0        0     240  stunted          
Birth       EE               PAKISTAN                       8                1        0     240  stunted          
Birth       EE               PAKISTAN                       9                0        0     240  stunted          
Birth       EE               PAKISTAN                       9                1        0     240  stunted          
Birth       EE               PAKISTAN                       10               0        0     240  stunted          
Birth       EE               PAKISTAN                       10               1        0     240  stunted          
Birth       EE               PAKISTAN                       11               0       33     240  stunted          
Birth       EE               PAKISTAN                       11               1       14     240  stunted          
Birth       EE               PAKISTAN                       12               0       30     240  stunted          
Birth       EE               PAKISTAN                       12               1       19     240  stunted          
Birth       GMS-Nepal        NEPAL                          1                0        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          1                1        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          2                0        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          2                1        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          3                0        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          3                1        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          4                0        1     696  stunted          
Birth       GMS-Nepal        NEPAL                          4                1        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          5                0        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          5                1        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          6                0      140     696  stunted          
Birth       GMS-Nepal        NEPAL                          6                1       32     696  stunted          
Birth       GMS-Nepal        NEPAL                          7                0      217     696  stunted          
Birth       GMS-Nepal        NEPAL                          7                1       52     696  stunted          
Birth       GMS-Nepal        NEPAL                          8                0      216     696  stunted          
Birth       GMS-Nepal        NEPAL                          8                1       38     696  stunted          
Birth       GMS-Nepal        NEPAL                          9                0        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          9                1        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          10               0        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          10               1        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          11               0        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          11               1        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          12               0        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          12               1        0     696  stunted          
Birth       IRC              INDIA                          1                0       28     388  stunted          
Birth       IRC              INDIA                          1                1        7     388  stunted          
Birth       IRC              INDIA                          2                0       24     388  stunted          
Birth       IRC              INDIA                          2                1        2     388  stunted          
Birth       IRC              INDIA                          3                0       22     388  stunted          
Birth       IRC              INDIA                          3                1        4     388  stunted          
Birth       IRC              INDIA                          4                0       19     388  stunted          
Birth       IRC              INDIA                          4                1        2     388  stunted          
Birth       IRC              INDIA                          5                0       21     388  stunted          
Birth       IRC              INDIA                          5                1        1     388  stunted          
Birth       IRC              INDIA                          6                0       30     388  stunted          
Birth       IRC              INDIA                          6                1        4     388  stunted          
Birth       IRC              INDIA                          7                0       31     388  stunted          
Birth       IRC              INDIA                          7                1        4     388  stunted          
Birth       IRC              INDIA                          8                0       35     388  stunted          
Birth       IRC              INDIA                          8                1        3     388  stunted          
Birth       IRC              INDIA                          9                0       23     388  stunted          
Birth       IRC              INDIA                          9                1        2     388  stunted          
Birth       IRC              INDIA                          10               0       34     388  stunted          
Birth       IRC              INDIA                          10               1        4     388  stunted          
Birth       IRC              INDIA                          11               0       33     388  stunted          
Birth       IRC              INDIA                          11               1        6     388  stunted          
Birth       IRC              INDIA                          12               0       43     388  stunted          
Birth       IRC              INDIA                          12               1        6     388  stunted          
Birth       JiVitA-3         BANGLADESH                     1                0     1334   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     1                1      775   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     2                0     1184   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     2                1      552   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     3                0     1450   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     3                1      591   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     4                0     1051   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     4                1      424   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     5                0      757   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     5                1      320   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     6                0      799   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     6                1      321   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     7                0      891   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     7                1      371   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     8                0     1201   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     8                1      558   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     9                0     1585   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     9                1      667   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     10               0     1591   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     10               1      848   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     11               0     1570   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     11               1      971   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     12               0     1655   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     12               1      989   22455  stunted          
Birth       JiVitA-4         BANGLADESH                     1                0        0    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     1                1        0    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     2                0      237    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     2                1      122    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     3                0      256    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     3                1      153    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     4                0      332    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     4                1      147    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     5                0      303    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     5                1      131    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     6                0      238    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     6                1      107    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     7                0      268    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     7                1       98    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     8                0      183    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     8                1       52    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     9                0      114    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     9                1       37    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     10               0       35    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     10               1       10    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     11               0        0    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     11               1        0    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     12               0        0    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     12               1        0    2823  stunted          
Birth       Keneba           GAMBIA                         1                0      151    1543  stunted          
Birth       Keneba           GAMBIA                         1                1       12    1543  stunted          
Birth       Keneba           GAMBIA                         2                0      142    1543  stunted          
Birth       Keneba           GAMBIA                         2                1        5    1543  stunted          
Birth       Keneba           GAMBIA                         3                0      161    1543  stunted          
Birth       Keneba           GAMBIA                         3                1        4    1543  stunted          
Birth       Keneba           GAMBIA                         4                0      103    1543  stunted          
Birth       Keneba           GAMBIA                         4                1        2    1543  stunted          
Birth       Keneba           GAMBIA                         5                0      105    1543  stunted          
Birth       Keneba           GAMBIA                         5                1        3    1543  stunted          
Birth       Keneba           GAMBIA                         6                0       85    1543  stunted          
Birth       Keneba           GAMBIA                         6                1        4    1543  stunted          
Birth       Keneba           GAMBIA                         7                0       71    1543  stunted          
Birth       Keneba           GAMBIA                         7                1        5    1543  stunted          
Birth       Keneba           GAMBIA                         8                0      119    1543  stunted          
Birth       Keneba           GAMBIA                         8                1        6    1543  stunted          
Birth       Keneba           GAMBIA                         9                0      116    1543  stunted          
Birth       Keneba           GAMBIA                         9                1        8    1543  stunted          
Birth       Keneba           GAMBIA                         10               0      164    1543  stunted          
Birth       Keneba           GAMBIA                         10               1       15    1543  stunted          
Birth       Keneba           GAMBIA                         11               0      113    1543  stunted          
Birth       Keneba           GAMBIA                         11               1       11    1543  stunted          
Birth       Keneba           GAMBIA                         12               0      130    1543  stunted          
Birth       Keneba           GAMBIA                         12               1        8    1543  stunted          
Birth       MAL-ED           BANGLADESH                     1                0       16     231  stunted          
Birth       MAL-ED           BANGLADESH                     1                1        4     231  stunted          
Birth       MAL-ED           BANGLADESH                     2                0       18     231  stunted          
Birth       MAL-ED           BANGLADESH                     2                1        5     231  stunted          
Birth       MAL-ED           BANGLADESH                     3                0       17     231  stunted          
Birth       MAL-ED           BANGLADESH                     3                1        7     231  stunted          
Birth       MAL-ED           BANGLADESH                     4                0       19     231  stunted          
Birth       MAL-ED           BANGLADESH                     4                1        0     231  stunted          
Birth       MAL-ED           BANGLADESH                     5                0       13     231  stunted          
Birth       MAL-ED           BANGLADESH                     5                1        5     231  stunted          
Birth       MAL-ED           BANGLADESH                     6                0        6     231  stunted          
Birth       MAL-ED           BANGLADESH                     6                1        2     231  stunted          
Birth       MAL-ED           BANGLADESH                     7                0       10     231  stunted          
Birth       MAL-ED           BANGLADESH                     7                1        4     231  stunted          
Birth       MAL-ED           BANGLADESH                     8                0       21     231  stunted          
Birth       MAL-ED           BANGLADESH                     8                1        5     231  stunted          
Birth       MAL-ED           BANGLADESH                     9                0       15     231  stunted          
Birth       MAL-ED           BANGLADESH                     9                1        3     231  stunted          
Birth       MAL-ED           BANGLADESH                     10               0       16     231  stunted          
Birth       MAL-ED           BANGLADESH                     10               1        5     231  stunted          
Birth       MAL-ED           BANGLADESH                     11               0       13     231  stunted          
Birth       MAL-ED           BANGLADESH                     11               1        2     231  stunted          
Birth       MAL-ED           BANGLADESH                     12               0       23     231  stunted          
Birth       MAL-ED           BANGLADESH                     12               1        2     231  stunted          
Birth       MAL-ED           BRAZIL                         1                0        5      65  stunted          
Birth       MAL-ED           BRAZIL                         1                1        0      65  stunted          
Birth       MAL-ED           BRAZIL                         2                0       10      65  stunted          
Birth       MAL-ED           BRAZIL                         2                1        0      65  stunted          
Birth       MAL-ED           BRAZIL                         3                0        7      65  stunted          
Birth       MAL-ED           BRAZIL                         3                1        0      65  stunted          
Birth       MAL-ED           BRAZIL                         4                0        4      65  stunted          
Birth       MAL-ED           BRAZIL                         4                1        0      65  stunted          
Birth       MAL-ED           BRAZIL                         5                0        1      65  stunted          
Birth       MAL-ED           BRAZIL                         5                1        1      65  stunted          
Birth       MAL-ED           BRAZIL                         6                0        5      65  stunted          
Birth       MAL-ED           BRAZIL                         6                1        0      65  stunted          
Birth       MAL-ED           BRAZIL                         7                0        4      65  stunted          
Birth       MAL-ED           BRAZIL                         7                1        2      65  stunted          
Birth       MAL-ED           BRAZIL                         8                0        5      65  stunted          
Birth       MAL-ED           BRAZIL                         8                1        2      65  stunted          
Birth       MAL-ED           BRAZIL                         9                0        4      65  stunted          
Birth       MAL-ED           BRAZIL                         9                1        2      65  stunted          
Birth       MAL-ED           BRAZIL                         10               0        5      65  stunted          
Birth       MAL-ED           BRAZIL                         10               1        0      65  stunted          
Birth       MAL-ED           BRAZIL                         11               0        4      65  stunted          
Birth       MAL-ED           BRAZIL                         11               1        0      65  stunted          
Birth       MAL-ED           BRAZIL                         12               0        2      65  stunted          
Birth       MAL-ED           BRAZIL                         12               1        2      65  stunted          
Birth       MAL-ED           INDIA                          1                0        2      47  stunted          
Birth       MAL-ED           INDIA                          1                1        0      47  stunted          
Birth       MAL-ED           INDIA                          2                0        6      47  stunted          
Birth       MAL-ED           INDIA                          2                1        0      47  stunted          
Birth       MAL-ED           INDIA                          3                0        3      47  stunted          
Birth       MAL-ED           INDIA                          3                1        0      47  stunted          
Birth       MAL-ED           INDIA                          4                0        4      47  stunted          
Birth       MAL-ED           INDIA                          4                1        2      47  stunted          
Birth       MAL-ED           INDIA                          5                0        4      47  stunted          
Birth       MAL-ED           INDIA                          5                1        0      47  stunted          
Birth       MAL-ED           INDIA                          6                0        2      47  stunted          
Birth       MAL-ED           INDIA                          6                1        0      47  stunted          
Birth       MAL-ED           INDIA                          7                0        3      47  stunted          
Birth       MAL-ED           INDIA                          7                1        0      47  stunted          
Birth       MAL-ED           INDIA                          8                0        5      47  stunted          
Birth       MAL-ED           INDIA                          8                1        3      47  stunted          
Birth       MAL-ED           INDIA                          9                0        3      47  stunted          
Birth       MAL-ED           INDIA                          9                1        1      47  stunted          
Birth       MAL-ED           INDIA                          10               0        4      47  stunted          
Birth       MAL-ED           INDIA                          10               1        2      47  stunted          
Birth       MAL-ED           INDIA                          11               0        1      47  stunted          
Birth       MAL-ED           INDIA                          11               1        2      47  stunted          
Birth       MAL-ED           INDIA                          12               0        0      47  stunted          
Birth       MAL-ED           INDIA                          12               1        0      47  stunted          
Birth       MAL-ED           NEPAL                          1                0        2      27  stunted          
Birth       MAL-ED           NEPAL                          1                1        0      27  stunted          
Birth       MAL-ED           NEPAL                          2                0        2      27  stunted          
Birth       MAL-ED           NEPAL                          2                1        0      27  stunted          
Birth       MAL-ED           NEPAL                          3                0        1      27  stunted          
Birth       MAL-ED           NEPAL                          3                1        0      27  stunted          
Birth       MAL-ED           NEPAL                          4                0        2      27  stunted          
Birth       MAL-ED           NEPAL                          4                1        0      27  stunted          
Birth       MAL-ED           NEPAL                          5                0        2      27  stunted          
Birth       MAL-ED           NEPAL                          5                1        1      27  stunted          
Birth       MAL-ED           NEPAL                          6                0        2      27  stunted          
Birth       MAL-ED           NEPAL                          6                1        0      27  stunted          
Birth       MAL-ED           NEPAL                          7                0        2      27  stunted          
Birth       MAL-ED           NEPAL                          7                1        0      27  stunted          
Birth       MAL-ED           NEPAL                          8                0        1      27  stunted          
Birth       MAL-ED           NEPAL                          8                1        0      27  stunted          
Birth       MAL-ED           NEPAL                          9                0        2      27  stunted          
Birth       MAL-ED           NEPAL                          9                1        0      27  stunted          
Birth       MAL-ED           NEPAL                          10               0        4      27  stunted          
Birth       MAL-ED           NEPAL                          10               1        0      27  stunted          
Birth       MAL-ED           NEPAL                          11               0        4      27  stunted          
Birth       MAL-ED           NEPAL                          11               1        1      27  stunted          
Birth       MAL-ED           NEPAL                          12               0        1      27  stunted          
Birth       MAL-ED           NEPAL                          12               1        0      27  stunted          
Birth       MAL-ED           PERU                           1                0       25     233  stunted          
Birth       MAL-ED           PERU                           1                1        5     233  stunted          
Birth       MAL-ED           PERU                           2                0       16     233  stunted          
Birth       MAL-ED           PERU                           2                1        2     233  stunted          
Birth       MAL-ED           PERU                           3                0       17     233  stunted          
Birth       MAL-ED           PERU                           3                1        3     233  stunted          
Birth       MAL-ED           PERU                           4                0       13     233  stunted          
Birth       MAL-ED           PERU                           4                1        2     233  stunted          
Birth       MAL-ED           PERU                           5                0       21     233  stunted          
Birth       MAL-ED           PERU                           5                1        1     233  stunted          
Birth       MAL-ED           PERU                           6                0       10     233  stunted          
Birth       MAL-ED           PERU                           6                1        1     233  stunted          
Birth       MAL-ED           PERU                           7                0       17     233  stunted          
Birth       MAL-ED           PERU                           7                1        2     233  stunted          
Birth       MAL-ED           PERU                           8                0       16     233  stunted          
Birth       MAL-ED           PERU                           8                1        0     233  stunted          
Birth       MAL-ED           PERU                           9                0       19     233  stunted          
Birth       MAL-ED           PERU                           9                1        0     233  stunted          
Birth       MAL-ED           PERU                           10               0       21     233  stunted          
Birth       MAL-ED           PERU                           10               1        0     233  stunted          
Birth       MAL-ED           PERU                           11               0       21     233  stunted          
Birth       MAL-ED           PERU                           11               1        7     233  stunted          
Birth       MAL-ED           PERU                           12               0       11     233  stunted          
Birth       MAL-ED           PERU                           12               1        3     233  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1                0        9     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1                1        1     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   2                0       13     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   2                1        0     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   3                0        8     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   3                1        1     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   4                0        5     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   4                1        1     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   5                0        6     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   5                1        0     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   6                0        8     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   6                1        0     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   7                0       11     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   7                1        2     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   8                0        2     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   8                1        1     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   9                0       10     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   9                1        0     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   10               0       13     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   10               1        0     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   11               0       11     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   11               1        3     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   12               0       17     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   12               1        1     123  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        9     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        1     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                0       13     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                1        3     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                0       11     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                1        1     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                0        6     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                1        2     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                0        9     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                1        1     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                0        8     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                1        3     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                0       13     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                1        1     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                0        6     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1        0     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                0        2     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                1        3     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               0        7     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               1        5     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               0       10     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               1        1     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0        8     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               1        2     125  stunted          
Birth       NIH-Birth        BANGLADESH                     1                0       51     608  stunted          
Birth       NIH-Birth        BANGLADESH                     1                1       19     608  stunted          
Birth       NIH-Birth        BANGLADESH                     2                0       48     608  stunted          
Birth       NIH-Birth        BANGLADESH                     2                1        8     608  stunted          
Birth       NIH-Birth        BANGLADESH                     3                0       52     608  stunted          
Birth       NIH-Birth        BANGLADESH                     3                1        7     608  stunted          
Birth       NIH-Birth        BANGLADESH                     4                0       40     608  stunted          
Birth       NIH-Birth        BANGLADESH                     4                1       11     608  stunted          
Birth       NIH-Birth        BANGLADESH                     5                0       42     608  stunted          
Birth       NIH-Birth        BANGLADESH                     5                1        5     608  stunted          
Birth       NIH-Birth        BANGLADESH                     6                0       40     608  stunted          
Birth       NIH-Birth        BANGLADESH                     6                1        6     608  stunted          
Birth       NIH-Birth        BANGLADESH                     7                0       36     608  stunted          
Birth       NIH-Birth        BANGLADESH                     7                1        4     608  stunted          
Birth       NIH-Birth        BANGLADESH                     8                0       35     608  stunted          
Birth       NIH-Birth        BANGLADESH                     8                1        5     608  stunted          
Birth       NIH-Birth        BANGLADESH                     9                0       37     608  stunted          
Birth       NIH-Birth        BANGLADESH                     9                1       10     608  stunted          
Birth       NIH-Birth        BANGLADESH                     10               0       41     608  stunted          
Birth       NIH-Birth        BANGLADESH                     10               1        7     608  stunted          
Birth       NIH-Birth        BANGLADESH                     11               0       44     608  stunted          
Birth       NIH-Birth        BANGLADESH                     11               1        8     608  stunted          
Birth       NIH-Birth        BANGLADESH                     12               0       45     608  stunted          
Birth       NIH-Birth        BANGLADESH                     12               1        7     608  stunted          
Birth       PROBIT           BELARUS                        1                0      825   13893  stunted          
Birth       PROBIT           BELARUS                        1                1        1   13893  stunted          
Birth       PROBIT           BELARUS                        2                0      801   13893  stunted          
Birth       PROBIT           BELARUS                        2                1        3   13893  stunted          
Birth       PROBIT           BELARUS                        3                0      943   13893  stunted          
Birth       PROBIT           BELARUS                        3                1        6   13893  stunted          
Birth       PROBIT           BELARUS                        4                0      969   13893  stunted          
Birth       PROBIT           BELARUS                        4                1        2   13893  stunted          
Birth       PROBIT           BELARUS                        5                0      950   13893  stunted          
Birth       PROBIT           BELARUS                        5                1        0   13893  stunted          
Birth       PROBIT           BELARUS                        6                0     1021   13893  stunted          
Birth       PROBIT           BELARUS                        6                1        0   13893  stunted          
Birth       PROBIT           BELARUS                        7                0     1291   13893  stunted          
Birth       PROBIT           BELARUS                        7                1        3   13893  stunted          
Birth       PROBIT           BELARUS                        8                0     1309   13893  stunted          
Birth       PROBIT           BELARUS                        8                1        3   13893  stunted          
Birth       PROBIT           BELARUS                        9                0     1322   13893  stunted          
Birth       PROBIT           BELARUS                        9                1        4   13893  stunted          
Birth       PROBIT           BELARUS                        10               0     1495   13893  stunted          
Birth       PROBIT           BELARUS                        10               1        7   13893  stunted          
Birth       PROBIT           BELARUS                        11               0     1385   13893  stunted          
Birth       PROBIT           BELARUS                        11               1        3   13893  stunted          
Birth       PROBIT           BELARUS                        12               0     1548   13893  stunted          
Birth       PROBIT           BELARUS                        12               1        2   13893  stunted          
Birth       PROVIDE          BANGLADESH                     1                0       28     539  stunted          
Birth       PROVIDE          BANGLADESH                     1                1        2     539  stunted          
Birth       PROVIDE          BANGLADESH                     2                0       19     539  stunted          
Birth       PROVIDE          BANGLADESH                     2                1        5     539  stunted          
Birth       PROVIDE          BANGLADESH                     3                0       42     539  stunted          
Birth       PROVIDE          BANGLADESH                     3                1        3     539  stunted          
Birth       PROVIDE          BANGLADESH                     4                0       27     539  stunted          
Birth       PROVIDE          BANGLADESH                     4                1        1     539  stunted          
Birth       PROVIDE          BANGLADESH                     5                0       41     539  stunted          
Birth       PROVIDE          BANGLADESH                     5                1        5     539  stunted          
Birth       PROVIDE          BANGLADESH                     6                0       65     539  stunted          
Birth       PROVIDE          BANGLADESH                     6                1       15     539  stunted          
Birth       PROVIDE          BANGLADESH                     7                0       67     539  stunted          
Birth       PROVIDE          BANGLADESH                     7                1        8     539  stunted          
Birth       PROVIDE          BANGLADESH                     8                0       51     539  stunted          
Birth       PROVIDE          BANGLADESH                     8                1        3     539  stunted          
Birth       PROVIDE          BANGLADESH                     9                0       54     539  stunted          
Birth       PROVIDE          BANGLADESH                     9                1        1     539  stunted          
Birth       PROVIDE          BANGLADESH                     10               0       52     539  stunted          
Birth       PROVIDE          BANGLADESH                     10               1        2     539  stunted          
Birth       PROVIDE          BANGLADESH                     11               0       26     539  stunted          
Birth       PROVIDE          BANGLADESH                     11               1        1     539  stunted          
Birth       PROVIDE          BANGLADESH                     12               0       19     539  stunted          
Birth       PROVIDE          BANGLADESH                     12               1        2     539  stunted          
Birth       ResPak           PAKISTAN                       1                0        2      42  stunted          
Birth       ResPak           PAKISTAN                       1                1        0      42  stunted          
Birth       ResPak           PAKISTAN                       2                0        1      42  stunted          
Birth       ResPak           PAKISTAN                       2                1        0      42  stunted          
Birth       ResPak           PAKISTAN                       3                0        0      42  stunted          
Birth       ResPak           PAKISTAN                       3                1        1      42  stunted          
Birth       ResPak           PAKISTAN                       4                0        4      42  stunted          
Birth       ResPak           PAKISTAN                       4                1        4      42  stunted          
Birth       ResPak           PAKISTAN                       5                0        6      42  stunted          
Birth       ResPak           PAKISTAN                       5                1        1      42  stunted          
Birth       ResPak           PAKISTAN                       6                0        6      42  stunted          
Birth       ResPak           PAKISTAN                       6                1        3      42  stunted          
Birth       ResPak           PAKISTAN                       7                0        3      42  stunted          
Birth       ResPak           PAKISTAN                       7                1        5      42  stunted          
Birth       ResPak           PAKISTAN                       8                0        4      42  stunted          
Birth       ResPak           PAKISTAN                       8                1        0      42  stunted          
Birth       ResPak           PAKISTAN                       9                0        1      42  stunted          
Birth       ResPak           PAKISTAN                       9                1        0      42  stunted          
Birth       ResPak           PAKISTAN                       10               0        1      42  stunted          
Birth       ResPak           PAKISTAN                       10               1        0      42  stunted          
Birth       ResPak           PAKISTAN                       11               0        0      42  stunted          
Birth       ResPak           PAKISTAN                       11               1        0      42  stunted          
Birth       ResPak           PAKISTAN                       12               0        0      42  stunted          
Birth       ResPak           PAKISTAN                       12               1        0      42  stunted          
Birth       SAS-CompFeed     INDIA                          1                0       59    1252  stunted          
Birth       SAS-CompFeed     INDIA                          1                1       27    1252  stunted          
Birth       SAS-CompFeed     INDIA                          2                0       53    1252  stunted          
Birth       SAS-CompFeed     INDIA                          2                1       24    1252  stunted          
Birth       SAS-CompFeed     INDIA                          3                0       49    1252  stunted          
Birth       SAS-CompFeed     INDIA                          3                1       20    1252  stunted          
Birth       SAS-CompFeed     INDIA                          4                0       50    1252  stunted          
Birth       SAS-CompFeed     INDIA                          4                1       12    1252  stunted          
Birth       SAS-CompFeed     INDIA                          5                0       65    1252  stunted          
Birth       SAS-CompFeed     INDIA                          5                1       23    1252  stunted          
Birth       SAS-CompFeed     INDIA                          6                0       76    1252  stunted          
Birth       SAS-CompFeed     INDIA                          6                1       28    1252  stunted          
Birth       SAS-CompFeed     INDIA                          7                0       67    1252  stunted          
Birth       SAS-CompFeed     INDIA                          7                1       33    1252  stunted          
Birth       SAS-CompFeed     INDIA                          8                0       94    1252  stunted          
Birth       SAS-CompFeed     INDIA                          8                1       50    1252  stunted          
Birth       SAS-CompFeed     INDIA                          9                0      115    1252  stunted          
Birth       SAS-CompFeed     INDIA                          9                1       32    1252  stunted          
Birth       SAS-CompFeed     INDIA                          10               0      101    1252  stunted          
Birth       SAS-CompFeed     INDIA                          10               1       41    1252  stunted          
Birth       SAS-CompFeed     INDIA                          11               0       92    1252  stunted          
Birth       SAS-CompFeed     INDIA                          11               1       27    1252  stunted          
Birth       SAS-CompFeed     INDIA                          12               0       82    1252  stunted          
Birth       SAS-CompFeed     INDIA                          12               1       32    1252  stunted          
Birth       ZVITAMBO         ZIMBABWE                       1                0     1169   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       1                1      174   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       2                0      894   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       2                1      158   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       3                0     1028   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       3                1      135   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       4                0      883   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       4                1      109   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       5                0      889   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       5                1      128   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       6                0     1007   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       6                1      130   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       7                0     1056   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       7                1      120   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       8                0     1164   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       8                1       93   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       9                0     1217   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       9                1       82   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       10               0      958   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       10               1       83   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       11               0     1073   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       11               1      110   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       12               0     1103   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       12               1      112   13875  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1                0       24     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1                1       10     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          2                0       11     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          2                1        5     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          3                0       25     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          3                1        6     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          4                0       36     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          4                1        8     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          5                0       23     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          5                1       12     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          6                0       21     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          6                1       16     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          7                0       19     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          7                1       20     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          8                0       11     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          8                1        6     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          9                0       14     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          9                1        6     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          10               0       21     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          10               1        8     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          11               0       35     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          11               1        7     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          12               0       18     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          12               1        7     369  stunted          
6 months    CMIN             BANGLADESH                     1                0       13     243  stunted          
6 months    CMIN             BANGLADESH                     1                1       13     243  stunted          
6 months    CMIN             BANGLADESH                     2                0       19     243  stunted          
6 months    CMIN             BANGLADESH                     2                1        4     243  stunted          
6 months    CMIN             BANGLADESH                     3                0       13     243  stunted          
6 months    CMIN             BANGLADESH                     3                1        4     243  stunted          
6 months    CMIN             BANGLADESH                     4                0       16     243  stunted          
6 months    CMIN             BANGLADESH                     4                1        6     243  stunted          
6 months    CMIN             BANGLADESH                     5                0       14     243  stunted          
6 months    CMIN             BANGLADESH                     5                1        3     243  stunted          
6 months    CMIN             BANGLADESH                     6                0        5     243  stunted          
6 months    CMIN             BANGLADESH                     6                1        3     243  stunted          
6 months    CMIN             BANGLADESH                     7                0       10     243  stunted          
6 months    CMIN             BANGLADESH                     7                1        5     243  stunted          
6 months    CMIN             BANGLADESH                     8                0        7     243  stunted          
6 months    CMIN             BANGLADESH                     8                1       10     243  stunted          
6 months    CMIN             BANGLADESH                     9                0       10     243  stunted          
6 months    CMIN             BANGLADESH                     9                1       10     243  stunted          
6 months    CMIN             BANGLADESH                     10               0       16     243  stunted          
6 months    CMIN             BANGLADESH                     10               1        8     243  stunted          
6 months    CMIN             BANGLADESH                     11               0       15     243  stunted          
6 months    CMIN             BANGLADESH                     11               1       12     243  stunted          
6 months    CMIN             BANGLADESH                     12               0       12     243  stunted          
6 months    CMIN             BANGLADESH                     12               1       15     243  stunted          
6 months    CONTENT          PERU                           1                0       10     215  stunted          
6 months    CONTENT          PERU                           1                1        0     215  stunted          
6 months    CONTENT          PERU                           2                0       18     215  stunted          
6 months    CONTENT          PERU                           2                1        0     215  stunted          
6 months    CONTENT          PERU                           3                0       28     215  stunted          
6 months    CONTENT          PERU                           3                1        2     215  stunted          
6 months    CONTENT          PERU                           4                0       18     215  stunted          
6 months    CONTENT          PERU                           4                1        1     215  stunted          
6 months    CONTENT          PERU                           5                0       13     215  stunted          
6 months    CONTENT          PERU                           5                1        1     215  stunted          
6 months    CONTENT          PERU                           6                0       12     215  stunted          
6 months    CONTENT          PERU                           6                1        1     215  stunted          
6 months    CONTENT          PERU                           7                0       27     215  stunted          
6 months    CONTENT          PERU                           7                1        1     215  stunted          
6 months    CONTENT          PERU                           8                0       21     215  stunted          
6 months    CONTENT          PERU                           8                1        2     215  stunted          
6 months    CONTENT          PERU                           9                0       26     215  stunted          
6 months    CONTENT          PERU                           9                1        0     215  stunted          
6 months    CONTENT          PERU                           10               0       13     215  stunted          
6 months    CONTENT          PERU                           10               1        1     215  stunted          
6 months    CONTENT          PERU                           11               0        9     215  stunted          
6 months    CONTENT          PERU                           11               1        0     215  stunted          
6 months    CONTENT          PERU                           12               0       11     215  stunted          
6 months    CONTENT          PERU                           12               1        0     215  stunted          
6 months    EE               PAKISTAN                       1                0       46     373  stunted          
6 months    EE               PAKISTAN                       1                1       45     373  stunted          
6 months    EE               PAKISTAN                       2                0       34     373  stunted          
6 months    EE               PAKISTAN                       2                1       32     373  stunted          
6 months    EE               PAKISTAN                       3                0       25     373  stunted          
6 months    EE               PAKISTAN                       3                1       17     373  stunted          
6 months    EE               PAKISTAN                       4                0        5     373  stunted          
6 months    EE               PAKISTAN                       4                1       11     373  stunted          
6 months    EE               PAKISTAN                       5                0        0     373  stunted          
6 months    EE               PAKISTAN                       5                1        0     373  stunted          
6 months    EE               PAKISTAN                       6                0        0     373  stunted          
6 months    EE               PAKISTAN                       6                1        0     373  stunted          
6 months    EE               PAKISTAN                       7                0        0     373  stunted          
6 months    EE               PAKISTAN                       7                1        0     373  stunted          
6 months    EE               PAKISTAN                       8                0        0     373  stunted          
6 months    EE               PAKISTAN                       8                1        0     373  stunted          
6 months    EE               PAKISTAN                       9                0        0     373  stunted          
6 months    EE               PAKISTAN                       9                1        0     373  stunted          
6 months    EE               PAKISTAN                       10               0        2     373  stunted          
6 months    EE               PAKISTAN                       10               1        2     373  stunted          
6 months    EE               PAKISTAN                       11               0       36     373  stunted          
6 months    EE               PAKISTAN                       11               1       35     373  stunted          
6 months    EE               PAKISTAN                       12               0       42     373  stunted          
6 months    EE               PAKISTAN                       12               1       41     373  stunted          
6 months    GMS-Nepal        NEPAL                          1                0        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          1                1        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          2                0        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          2                1        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          3                0        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          3                1        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          4                0        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          4                1        1     564  stunted          
6 months    GMS-Nepal        NEPAL                          5                0        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          5                1        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          6                0       94     564  stunted          
6 months    GMS-Nepal        NEPAL                          6                1       27     564  stunted          
6 months    GMS-Nepal        NEPAL                          7                0      168     564  stunted          
6 months    GMS-Nepal        NEPAL                          7                1       51     564  stunted          
6 months    GMS-Nepal        NEPAL                          8                0      180     564  stunted          
6 months    GMS-Nepal        NEPAL                          8                1       43     564  stunted          
6 months    GMS-Nepal        NEPAL                          9                0        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          9                1        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          10               0        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          10               1        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          11               0        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          11               1        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          12               0        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          12               1        0     564  stunted          
6 months    Guatemala BSC    GUATEMALA                      1                0       16     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      1                1       12     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      2                0       23     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      2                1        2     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      3                0       17     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      3                1       10     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      4                0       21     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      4                1       10     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      5                0       21     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      5                1       10     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      6                0       12     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      6                1       10     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      7                0       15     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      7                1        6     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      8                0       12     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      8                1        2     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      9                0       11     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      9                1        5     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      10               0       25     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      10               1        4     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      11               0       16     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      11               1        8     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      12               0       20     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      12               1       11     299  stunted          
6 months    IRC              INDIA                          1                0       27     407  stunted          
6 months    IRC              INDIA                          1                1       11     407  stunted          
6 months    IRC              INDIA                          2                0       15     407  stunted          
6 months    IRC              INDIA                          2                1       13     407  stunted          
6 months    IRC              INDIA                          3                0       19     407  stunted          
6 months    IRC              INDIA                          3                1        8     407  stunted          
6 months    IRC              INDIA                          4                0       15     407  stunted          
6 months    IRC              INDIA                          4                1        6     407  stunted          
6 months    IRC              INDIA                          5                0       14     407  stunted          
6 months    IRC              INDIA                          5                1        7     407  stunted          
6 months    IRC              INDIA                          6                0       32     407  stunted          
6 months    IRC              INDIA                          6                1        5     407  stunted          
6 months    IRC              INDIA                          7                0       25     407  stunted          
6 months    IRC              INDIA                          7                1       11     407  stunted          
6 months    IRC              INDIA                          8                0       38     407  stunted          
6 months    IRC              INDIA                          8                1        6     407  stunted          
6 months    IRC              INDIA                          9                0       20     407  stunted          
6 months    IRC              INDIA                          9                1        7     407  stunted          
6 months    IRC              INDIA                          10               0       32     407  stunted          
6 months    IRC              INDIA                          10               1        5     407  stunted          
6 months    IRC              INDIA                          11               0       33     407  stunted          
6 months    IRC              INDIA                          11               1        7     407  stunted          
6 months    IRC              INDIA                          12               0       37     407  stunted          
6 months    IRC              INDIA                          12               1       14     407  stunted          
6 months    JiVitA-3         BANGLADESH                     1                0     1003   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     1                1      337   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     2                0      868   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     2                1      291   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     3                0     1081   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     3                1      330   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     4                0      904   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     4                1      274   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     5                0      834   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     5                1      279   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     6                0      928   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     6                1      278   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     7                0      944   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     7                1      315   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     8                0     1148   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     8                1      372   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     9                0     1251   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     9                1      369   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     10               0     1218   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     10               1      447   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     11               0     1248   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     11               1      511   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     12               0     1158   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     12               1      423   16811  stunted          
6 months    JiVitA-4         BANGLADESH                     1                0        0    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     1                1        0    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     2                0      407    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     2                1      137    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     3                0      717    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     3                1      245    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     4                0      531    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     4                1      202    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     5                0      453    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     5                1      147    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     6                0      334    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     6                1      105    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     7                0      367    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     7                1      151    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     8                0      397    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     8                1      124    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     9                0      300    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     9                1       86    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     10               0      104    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     10               1       24    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     11               0        0    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     11               1        0    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     12               0        0    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     12               1        0    4831  stunted          
6 months    Keneba           GAMBIA                         1                0      183    2089  stunted          
6 months    Keneba           GAMBIA                         1                1       27    2089  stunted          
6 months    Keneba           GAMBIA                         2                0      166    2089  stunted          
6 months    Keneba           GAMBIA                         2                1       21    2089  stunted          
6 months    Keneba           GAMBIA                         3                0      190    2089  stunted          
6 months    Keneba           GAMBIA                         3                1       31    2089  stunted          
6 months    Keneba           GAMBIA                         4                0      128    2089  stunted          
6 months    Keneba           GAMBIA                         4                1       15    2089  stunted          
6 months    Keneba           GAMBIA                         5                0      123    2089  stunted          
6 months    Keneba           GAMBIA                         5                1       20    2089  stunted          
6 months    Keneba           GAMBIA                         6                0       96    2089  stunted          
6 months    Keneba           GAMBIA                         6                1       22    2089  stunted          
6 months    Keneba           GAMBIA                         7                0       73    2089  stunted          
6 months    Keneba           GAMBIA                         7                1       19    2089  stunted          
6 months    Keneba           GAMBIA                         8                0      149    2089  stunted          
6 months    Keneba           GAMBIA                         8                1       25    2089  stunted          
6 months    Keneba           GAMBIA                         9                0      146    2089  stunted          
6 months    Keneba           GAMBIA                         9                1       28    2089  stunted          
6 months    Keneba           GAMBIA                         10               0      208    2089  stunted          
6 months    Keneba           GAMBIA                         10               1       40    2089  stunted          
6 months    Keneba           GAMBIA                         11               0      163    2089  stunted          
6 months    Keneba           GAMBIA                         11               1       24    2089  stunted          
6 months    Keneba           GAMBIA                         12               0      169    2089  stunted          
6 months    Keneba           GAMBIA                         12               1       23    2089  stunted          
6 months    LCNI-5           MALAWI                         1                0       38     839  stunted          
6 months    LCNI-5           MALAWI                         1                1       30     839  stunted          
6 months    LCNI-5           MALAWI                         2                0       33     839  stunted          
6 months    LCNI-5           MALAWI                         2                1       13     839  stunted          
6 months    LCNI-5           MALAWI                         3                0       15     839  stunted          
6 months    LCNI-5           MALAWI                         3                1       11     839  stunted          
6 months    LCNI-5           MALAWI                         4                0       23     839  stunted          
6 months    LCNI-5           MALAWI                         4                1       16     839  stunted          
6 months    LCNI-5           MALAWI                         5                0       28     839  stunted          
6 months    LCNI-5           MALAWI                         5                1       16     839  stunted          
6 months    LCNI-5           MALAWI                         6                0       19     839  stunted          
6 months    LCNI-5           MALAWI                         6                1       15     839  stunted          
6 months    LCNI-5           MALAWI                         7                0       41     839  stunted          
6 months    LCNI-5           MALAWI                         7                1       20     839  stunted          
6 months    LCNI-5           MALAWI                         8                0       66     839  stunted          
6 months    LCNI-5           MALAWI                         8                1       27     839  stunted          
6 months    LCNI-5           MALAWI                         9                0       59     839  stunted          
6 months    LCNI-5           MALAWI                         9                1       34     839  stunted          
6 months    LCNI-5           MALAWI                         10               0       74     839  stunted          
6 months    LCNI-5           MALAWI                         10               1       61     839  stunted          
6 months    LCNI-5           MALAWI                         11               0       70     839  stunted          
6 months    LCNI-5           MALAWI                         11               1       35     839  stunted          
6 months    LCNI-5           MALAWI                         12               0       64     839  stunted          
6 months    LCNI-5           MALAWI                         12               1       31     839  stunted          
6 months    MAL-ED           BANGLADESH                     1                0       14     241  stunted          
6 months    MAL-ED           BANGLADESH                     1                1        4     241  stunted          
6 months    MAL-ED           BANGLADESH                     2                0       14     241  stunted          
6 months    MAL-ED           BANGLADESH                     2                1        6     241  stunted          
6 months    MAL-ED           BANGLADESH                     3                0       20     241  stunted          
6 months    MAL-ED           BANGLADESH                     3                1        3     241  stunted          
6 months    MAL-ED           BANGLADESH                     4                0       21     241  stunted          
6 months    MAL-ED           BANGLADESH                     4                1        1     241  stunted          
6 months    MAL-ED           BANGLADESH                     5                0       17     241  stunted          
6 months    MAL-ED           BANGLADESH                     5                1        4     241  stunted          
6 months    MAL-ED           BANGLADESH                     6                0        8     241  stunted          
6 months    MAL-ED           BANGLADESH                     6                1        2     241  stunted          
6 months    MAL-ED           BANGLADESH                     7                0       11     241  stunted          
6 months    MAL-ED           BANGLADESH                     7                1        7     241  stunted          
6 months    MAL-ED           BANGLADESH                     8                0       17     241  stunted          
6 months    MAL-ED           BANGLADESH                     8                1        6     241  stunted          
6 months    MAL-ED           BANGLADESH                     9                0       20     241  stunted          
6 months    MAL-ED           BANGLADESH                     9                1        2     241  stunted          
6 months    MAL-ED           BANGLADESH                     10               0       16     241  stunted          
6 months    MAL-ED           BANGLADESH                     10               1        6     241  stunted          
6 months    MAL-ED           BANGLADESH                     11               0       15     241  stunted          
6 months    MAL-ED           BANGLADESH                     11               1        1     241  stunted          
6 months    MAL-ED           BANGLADESH                     12               0       24     241  stunted          
6 months    MAL-ED           BANGLADESH                     12               1        2     241  stunted          
6 months    MAL-ED           BRAZIL                         1                0       14     209  stunted          
6 months    MAL-ED           BRAZIL                         1                1        1     209  stunted          
6 months    MAL-ED           BRAZIL                         2                0       22     209  stunted          
6 months    MAL-ED           BRAZIL                         2                1        1     209  stunted          
6 months    MAL-ED           BRAZIL                         3                0       16     209  stunted          
6 months    MAL-ED           BRAZIL                         3                1        0     209  stunted          
6 months    MAL-ED           BRAZIL                         4                0       11     209  stunted          
6 months    MAL-ED           BRAZIL                         4                1        0     209  stunted          
6 months    MAL-ED           BRAZIL                         5                0       20     209  stunted          
6 months    MAL-ED           BRAZIL                         5                1        1     209  stunted          
6 months    MAL-ED           BRAZIL                         6                0        8     209  stunted          
6 months    MAL-ED           BRAZIL                         6                1        0     209  stunted          
6 months    MAL-ED           BRAZIL                         7                0       15     209  stunted          
6 months    MAL-ED           BRAZIL                         7                1        1     209  stunted          
6 months    MAL-ED           BRAZIL                         8                0       16     209  stunted          
6 months    MAL-ED           BRAZIL                         8                1        0     209  stunted          
6 months    MAL-ED           BRAZIL                         9                0       29     209  stunted          
6 months    MAL-ED           BRAZIL                         9                1        1     209  stunted          
6 months    MAL-ED           BRAZIL                         10               0       20     209  stunted          
6 months    MAL-ED           BRAZIL                         10               1        0     209  stunted          
6 months    MAL-ED           BRAZIL                         11               0       20     209  stunted          
6 months    MAL-ED           BRAZIL                         11               1        1     209  stunted          
6 months    MAL-ED           BRAZIL                         12               0       12     209  stunted          
6 months    MAL-ED           BRAZIL                         12               1        0     209  stunted          
6 months    MAL-ED           INDIA                          1                0       15     236  stunted          
6 months    MAL-ED           INDIA                          1                1        4     236  stunted          
6 months    MAL-ED           INDIA                          2                0       17     236  stunted          
6 months    MAL-ED           INDIA                          2                1        1     236  stunted          
6 months    MAL-ED           INDIA                          3                0       18     236  stunted          
6 months    MAL-ED           INDIA                          3                1        4     236  stunted          
6 months    MAL-ED           INDIA                          4                0       10     236  stunted          
6 months    MAL-ED           INDIA                          4                1        5     236  stunted          
6 months    MAL-ED           INDIA                          5                0        7     236  stunted          
6 months    MAL-ED           INDIA                          5                1        1     236  stunted          
6 months    MAL-ED           INDIA                          6                0       17     236  stunted          
6 months    MAL-ED           INDIA                          6                1        2     236  stunted          
6 months    MAL-ED           INDIA                          7                0       17     236  stunted          
6 months    MAL-ED           INDIA                          7                1        6     236  stunted          
6 months    MAL-ED           INDIA                          8                0       19     236  stunted          
6 months    MAL-ED           INDIA                          8                1        3     236  stunted          
6 months    MAL-ED           INDIA                          9                0       17     236  stunted          
6 months    MAL-ED           INDIA                          9                1        3     236  stunted          
6 months    MAL-ED           INDIA                          10               0       19     236  stunted          
6 months    MAL-ED           INDIA                          10               1        7     236  stunted          
6 months    MAL-ED           INDIA                          11               0       19     236  stunted          
6 months    MAL-ED           INDIA                          11               1        6     236  stunted          
6 months    MAL-ED           INDIA                          12               0       16     236  stunted          
6 months    MAL-ED           INDIA                          12               1        3     236  stunted          
6 months    MAL-ED           NEPAL                          1                0       19     236  stunted          
6 months    MAL-ED           NEPAL                          1                1        1     236  stunted          
6 months    MAL-ED           NEPAL                          2                0       16     236  stunted          
6 months    MAL-ED           NEPAL                          2                1        3     236  stunted          
6 months    MAL-ED           NEPAL                          3                0       15     236  stunted          
6 months    MAL-ED           NEPAL                          3                1        2     236  stunted          
6 months    MAL-ED           NEPAL                          4                0       21     236  stunted          
6 months    MAL-ED           NEPAL                          4                1        1     236  stunted          
6 months    MAL-ED           NEPAL                          5                0       19     236  stunted          
6 months    MAL-ED           NEPAL                          5                1        1     236  stunted          
6 months    MAL-ED           NEPAL                          6                0       18     236  stunted          
6 months    MAL-ED           NEPAL                          6                1        0     236  stunted          
6 months    MAL-ED           NEPAL                          7                0       17     236  stunted          
6 months    MAL-ED           NEPAL                          7                1        1     236  stunted          
6 months    MAL-ED           NEPAL                          8                0       24     236  stunted          
6 months    MAL-ED           NEPAL                          8                1        0     236  stunted          
6 months    MAL-ED           NEPAL                          9                0       14     236  stunted          
6 months    MAL-ED           NEPAL                          9                1        2     236  stunted          
6 months    MAL-ED           NEPAL                          10               0       21     236  stunted          
6 months    MAL-ED           NEPAL                          10               1        0     236  stunted          
6 months    MAL-ED           NEPAL                          11               0       23     236  stunted          
6 months    MAL-ED           NEPAL                          11               1        1     236  stunted          
6 months    MAL-ED           NEPAL                          12               0       17     236  stunted          
6 months    MAL-ED           NEPAL                          12               1        0     236  stunted          
6 months    MAL-ED           PERU                           1                0       28     273  stunted          
6 months    MAL-ED           PERU                           1                1       10     273  stunted          
6 months    MAL-ED           PERU                           2                0       15     273  stunted          
6 months    MAL-ED           PERU                           2                1        4     273  stunted          
6 months    MAL-ED           PERU                           3                0       15     273  stunted          
6 months    MAL-ED           PERU                           3                1        7     273  stunted          
6 months    MAL-ED           PERU                           4                0       16     273  stunted          
6 months    MAL-ED           PERU                           4                1        4     273  stunted          
6 months    MAL-ED           PERU                           5                0       24     273  stunted          
6 months    MAL-ED           PERU                           5                1        3     273  stunted          
6 months    MAL-ED           PERU                           6                0       12     273  stunted          
6 months    MAL-ED           PERU                           6                1        3     273  stunted          
6 months    MAL-ED           PERU                           7                0       19     273  stunted          
6 months    MAL-ED           PERU                           7                1        3     273  stunted          
6 months    MAL-ED           PERU                           8                0       13     273  stunted          
6 months    MAL-ED           PERU                           8                1        3     273  stunted          
6 months    MAL-ED           PERU                           9                0       18     273  stunted          
6 months    MAL-ED           PERU                           9                1        5     273  stunted          
6 months    MAL-ED           PERU                           10               0       16     273  stunted          
6 months    MAL-ED           PERU                           10               1        4     273  stunted          
6 months    MAL-ED           PERU                           11               0       22     273  stunted          
6 months    MAL-ED           PERU                           11               1       10     273  stunted          
6 months    MAL-ED           PERU                           12               0       15     273  stunted          
6 months    MAL-ED           PERU                           12               1        4     273  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1                0       29     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1                1        9     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   2                0       21     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   2                1        2     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   3                0       13     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   3                1        2     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   4                0       12     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   4                1        1     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   5                0       11     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   5                1        2     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   6                0       18     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   6                1        0     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   7                0       16     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   7                1        6     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   8                0        7     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   8                1        2     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   9                0       16     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   9                1        2     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   10               0       22     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   10               1        4     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   11               0       15     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   11               1        9     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   12               0       24     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   12               1       11     254  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0       17     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        3     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                0       23     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                1        7     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                0       12     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                1        6     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                0        5     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                1        4     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                0       13     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                1        3     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                0       19     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                1        0     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                0       17     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                1        6     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                0       10     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1        2     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                0       16     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                1        5     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               0       16     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               1        6     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               0       20     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               1        7     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0       20     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               1       10     247  stunted          
6 months    NIH-Birth        BANGLADESH                     1                0       37     537  stunted          
6 months    NIH-Birth        BANGLADESH                     1                1       15     537  stunted          
6 months    NIH-Birth        BANGLADESH                     2                0       35     537  stunted          
6 months    NIH-Birth        BANGLADESH                     2                1       14     537  stunted          
6 months    NIH-Birth        BANGLADESH                     3                0       38     537  stunted          
6 months    NIH-Birth        BANGLADESH                     3                1       12     537  stunted          
6 months    NIH-Birth        BANGLADESH                     4                0       32     537  stunted          
6 months    NIH-Birth        BANGLADESH                     4                1       10     537  stunted          
6 months    NIH-Birth        BANGLADESH                     5                0       33     537  stunted          
6 months    NIH-Birth        BANGLADESH                     5                1        9     537  stunted          
6 months    NIH-Birth        BANGLADESH                     6                0       27     537  stunted          
6 months    NIH-Birth        BANGLADESH                     6                1       16     537  stunted          
6 months    NIH-Birth        BANGLADESH                     7                0       28     537  stunted          
6 months    NIH-Birth        BANGLADESH                     7                1       11     537  stunted          
6 months    NIH-Birth        BANGLADESH                     8                0       28     537  stunted          
6 months    NIH-Birth        BANGLADESH                     8                1        7     537  stunted          
6 months    NIH-Birth        BANGLADESH                     9                0       29     537  stunted          
6 months    NIH-Birth        BANGLADESH                     9                1       13     537  stunted          
6 months    NIH-Birth        BANGLADESH                     10               0       32     537  stunted          
6 months    NIH-Birth        BANGLADESH                     10               1       10     537  stunted          
6 months    NIH-Birth        BANGLADESH                     11               0       33     537  stunted          
6 months    NIH-Birth        BANGLADESH                     11               1       17     537  stunted          
6 months    NIH-Birth        BANGLADESH                     12               0       41     537  stunted          
6 months    NIH-Birth        BANGLADESH                     12               1       10     537  stunted          
6 months    PROBIT           BELARUS                        1                0      927   15760  stunted          
6 months    PROBIT           BELARUS                        1                1       49   15760  stunted          
6 months    PROBIT           BELARUS                        2                0      884   15760  stunted          
6 months    PROBIT           BELARUS                        2                1       49   15760  stunted          
6 months    PROBIT           BELARUS                        3                0     1025   15760  stunted          
6 months    PROBIT           BELARUS                        3                1       41   15760  stunted          
6 months    PROBIT           BELARUS                        4                0     1061   15760  stunted          
6 months    PROBIT           BELARUS                        4                1       36   15760  stunted          
6 months    PROBIT           BELARUS                        5                0     1082   15760  stunted          
6 months    PROBIT           BELARUS                        5                1       29   15760  stunted          
6 months    PROBIT           BELARUS                        6                0     1068   15760  stunted          
6 months    PROBIT           BELARUS                        6                1       47   15760  stunted          
6 months    PROBIT           BELARUS                        7                0     1410   15760  stunted          
6 months    PROBIT           BELARUS                        7                1       53   15760  stunted          
6 months    PROBIT           BELARUS                        8                0     1421   15760  stunted          
6 months    PROBIT           BELARUS                        8                1       52   15760  stunted          
6 months    PROBIT           BELARUS                        9                0     1437   15760  stunted          
6 months    PROBIT           BELARUS                        9                1       72   15760  stunted          
6 months    PROBIT           BELARUS                        10               0     1624   15760  stunted          
6 months    PROBIT           BELARUS                        10               1       65   15760  stunted          
6 months    PROBIT           BELARUS                        11               0     1522   15760  stunted          
6 months    PROBIT           BELARUS                        11               1       67   15760  stunted          
6 months    PROBIT           BELARUS                        12               0     1679   15760  stunted          
6 months    PROBIT           BELARUS                        12               1       60   15760  stunted          
6 months    PROVIDE          BANGLADESH                     1                0       33     604  stunted          
6 months    PROVIDE          BANGLADESH                     1                1        2     604  stunted          
6 months    PROVIDE          BANGLADESH                     2                0       23     604  stunted          
6 months    PROVIDE          BANGLADESH                     2                1        9     604  stunted          
6 months    PROVIDE          BANGLADESH                     3                0       37     604  stunted          
6 months    PROVIDE          BANGLADESH                     3                1        6     604  stunted          
6 months    PROVIDE          BANGLADESH                     4                0       33     604  stunted          
6 months    PROVIDE          BANGLADESH                     4                1        3     604  stunted          
6 months    PROVIDE          BANGLADESH                     5                0       37     604  stunted          
6 months    PROVIDE          BANGLADESH                     5                1        3     604  stunted          
6 months    PROVIDE          BANGLADESH                     6                0       57     604  stunted          
6 months    PROVIDE          BANGLADESH                     6                1       20     604  stunted          
6 months    PROVIDE          BANGLADESH                     7                0       64     604  stunted          
6 months    PROVIDE          BANGLADESH                     7                1       12     604  stunted          
6 months    PROVIDE          BANGLADESH                     8                0       45     604  stunted          
6 months    PROVIDE          BANGLADESH                     8                1       16     604  stunted          
6 months    PROVIDE          BANGLADESH                     9                0       57     604  stunted          
6 months    PROVIDE          BANGLADESH                     9                1       10     604  stunted          
6 months    PROVIDE          BANGLADESH                     10               0       60     604  stunted          
6 months    PROVIDE          BANGLADESH                     10               1        7     604  stunted          
6 months    PROVIDE          BANGLADESH                     11               0       35     604  stunted          
6 months    PROVIDE          BANGLADESH                     11               1        6     604  stunted          
6 months    PROVIDE          BANGLADESH                     12               0       27     604  stunted          
6 months    PROVIDE          BANGLADESH                     12               1        2     604  stunted          
6 months    ResPak           PAKISTAN                       1                0        4     239  stunted          
6 months    ResPak           PAKISTAN                       1                1        7     239  stunted          
6 months    ResPak           PAKISTAN                       2                0        8     239  stunted          
6 months    ResPak           PAKISTAN                       2                1        2     239  stunted          
6 months    ResPak           PAKISTAN                       3                0       12     239  stunted          
6 months    ResPak           PAKISTAN                       3                1       13     239  stunted          
6 months    ResPak           PAKISTAN                       4                0       14     239  stunted          
6 months    ResPak           PAKISTAN                       4                1       10     239  stunted          
6 months    ResPak           PAKISTAN                       5                0       29     239  stunted          
6 months    ResPak           PAKISTAN                       5                1       16     239  stunted          
6 months    ResPak           PAKISTAN                       6                0       28     239  stunted          
6 months    ResPak           PAKISTAN                       6                1       13     239  stunted          
6 months    ResPak           PAKISTAN                       7                0       16     239  stunted          
6 months    ResPak           PAKISTAN                       7                1        8     239  stunted          
6 months    ResPak           PAKISTAN                       8                0       24     239  stunted          
6 months    ResPak           PAKISTAN                       8                1       10     239  stunted          
6 months    ResPak           PAKISTAN                       9                0       12     239  stunted          
6 months    ResPak           PAKISTAN                       9                1        4     239  stunted          
6 months    ResPak           PAKISTAN                       10               0        4     239  stunted          
6 months    ResPak           PAKISTAN                       10               1        0     239  stunted          
6 months    ResPak           PAKISTAN                       11               0        2     239  stunted          
6 months    ResPak           PAKISTAN                       11               1        0     239  stunted          
6 months    ResPak           PAKISTAN                       12               0        0     239  stunted          
6 months    ResPak           PAKISTAN                       12               1        3     239  stunted          
6 months    SAS-CompFeed     INDIA                          1                0       58    1336  stunted          
6 months    SAS-CompFeed     INDIA                          1                1       29    1336  stunted          
6 months    SAS-CompFeed     INDIA                          2                0       62    1336  stunted          
6 months    SAS-CompFeed     INDIA                          2                1       21    1336  stunted          
6 months    SAS-CompFeed     INDIA                          3                0       52    1336  stunted          
6 months    SAS-CompFeed     INDIA                          3                1       22    1336  stunted          
6 months    SAS-CompFeed     INDIA                          4                0       52    1336  stunted          
6 months    SAS-CompFeed     INDIA                          4                1       14    1336  stunted          
6 months    SAS-CompFeed     INDIA                          5                0       61    1336  stunted          
6 months    SAS-CompFeed     INDIA                          5                1       26    1336  stunted          
6 months    SAS-CompFeed     INDIA                          6                0       64    1336  stunted          
6 months    SAS-CompFeed     INDIA                          6                1       32    1336  stunted          
6 months    SAS-CompFeed     INDIA                          7                0       71    1336  stunted          
6 months    SAS-CompFeed     INDIA                          7                1       51    1336  stunted          
6 months    SAS-CompFeed     INDIA                          8                0      111    1336  stunted          
6 months    SAS-CompFeed     INDIA                          8                1       51    1336  stunted          
6 months    SAS-CompFeed     INDIA                          9                0      143    1336  stunted          
6 months    SAS-CompFeed     INDIA                          9                1       31    1336  stunted          
6 months    SAS-CompFeed     INDIA                          10               0      108    1336  stunted          
6 months    SAS-CompFeed     INDIA                          10               1       41    1336  stunted          
6 months    SAS-CompFeed     INDIA                          11               0       86    1336  stunted          
6 months    SAS-CompFeed     INDIA                          11               1       32    1336  stunted          
6 months    SAS-CompFeed     INDIA                          12               0       88    1336  stunted          
6 months    SAS-CompFeed     INDIA                          12               1       30    1336  stunted          
6 months    SAS-FoodSuppl    INDIA                          1                0       14     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          1                1       10     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          2                0       19     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          2                1       14     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          3                0        7     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          3                1       13     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          4                0        2     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          4                1        2     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          5                0        8     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          5                1        4     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          6                0       10     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          6                1       11     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          7                0       24     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          7                1        9     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          8                0       43     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          8                1       20     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          9                0       31     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          9                1       31     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          10               0       25     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          10               1       22     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          11               0       15     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          11               1       12     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          12               0       19     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          12               1       15     380  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      126    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       16    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      137    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1       12    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      128    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1       12    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      139    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1       14    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      130    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1       19    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      126    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1       17    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      175    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1       20    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      171    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1       28    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      170    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1       14    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      184    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1       24    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      182    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1       13    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      164    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1        8    2029  stunted          
6 months    ZVITAMBO         ZIMBABWE                       1                0      683    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       1                1      141    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       2                0      515    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       2                1      105    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       3                0      603    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       3                1      164    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       4                0      542    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       4                1      115    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       5                0      535    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       5                1      107    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       6                0      561    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       6                1      111    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       7                0      551    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       7                1      123    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       8                0      676    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       8                1      108    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       9                0      679    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       9                1      101    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       10               0      525    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       10               1      101    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       11               0      672    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       11               1      123    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       12               0      715    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       12               1      113    8669  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1                0       15     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1                1       19     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          2                0        4     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          2                1       12     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          3                0        6     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          3                1       25     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          4                0       15     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          4                1       29     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          5                0        8     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          5                1       27     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          6                0       10     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          6                1       27     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          7                0       10     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          7                1       29     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          8                0        5     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          8                1       12     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          9                0        7     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          9                1       14     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          10               0        9     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          10               1       20     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          11               0       12     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          11               1       31     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          12               0        4     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          12               1       21     371  stunted          
24 months   CMIN             BANGLADESH                     1                0        8     242  stunted          
24 months   CMIN             BANGLADESH                     1                1       18     242  stunted          
24 months   CMIN             BANGLADESH                     2                0        8     242  stunted          
24 months   CMIN             BANGLADESH                     2                1       16     242  stunted          
24 months   CMIN             BANGLADESH                     3                0        9     242  stunted          
24 months   CMIN             BANGLADESH                     3                1        9     242  stunted          
24 months   CMIN             BANGLADESH                     4                0        7     242  stunted          
24 months   CMIN             BANGLADESH                     4                1       15     242  stunted          
24 months   CMIN             BANGLADESH                     5                0        5     242  stunted          
24 months   CMIN             BANGLADESH                     5                1       11     242  stunted          
24 months   CMIN             BANGLADESH                     6                0        2     242  stunted          
24 months   CMIN             BANGLADESH                     6                1        6     242  stunted          
24 months   CMIN             BANGLADESH                     7                0        7     242  stunted          
24 months   CMIN             BANGLADESH                     7                1        8     242  stunted          
24 months   CMIN             BANGLADESH                     8                0        4     242  stunted          
24 months   CMIN             BANGLADESH                     8                1       14     242  stunted          
24 months   CMIN             BANGLADESH                     9                0        8     242  stunted          
24 months   CMIN             BANGLADESH                     9                1       12     242  stunted          
24 months   CMIN             BANGLADESH                     10               0        6     242  stunted          
24 months   CMIN             BANGLADESH                     10               1       18     242  stunted          
24 months   CMIN             BANGLADESH                     11               0        8     242  stunted          
24 months   CMIN             BANGLADESH                     11               1       17     242  stunted          
24 months   CMIN             BANGLADESH                     12               0        5     242  stunted          
24 months   CMIN             BANGLADESH                     12               1       21     242  stunted          
24 months   CONTENT          PERU                           1                0        7     164  stunted          
24 months   CONTENT          PERU                           1                1        0     164  stunted          
24 months   CONTENT          PERU                           2                0       13     164  stunted          
24 months   CONTENT          PERU                           2                1        1     164  stunted          
24 months   CONTENT          PERU                           3                0       20     164  stunted          
24 months   CONTENT          PERU                           3                1        2     164  stunted          
24 months   CONTENT          PERU                           4                0       13     164  stunted          
24 months   CONTENT          PERU                           4                1        2     164  stunted          
24 months   CONTENT          PERU                           5                0       12     164  stunted          
24 months   CONTENT          PERU                           5                1        2     164  stunted          
24 months   CONTENT          PERU                           6                0       11     164  stunted          
24 months   CONTENT          PERU                           6                1        0     164  stunted          
24 months   CONTENT          PERU                           7                0       20     164  stunted          
24 months   CONTENT          PERU                           7                1        3     164  stunted          
24 months   CONTENT          PERU                           8                0       12     164  stunted          
24 months   CONTENT          PERU                           8                1        2     164  stunted          
24 months   CONTENT          PERU                           9                0       17     164  stunted          
24 months   CONTENT          PERU                           9                1        0     164  stunted          
24 months   CONTENT          PERU                           10               0       11     164  stunted          
24 months   CONTENT          PERU                           10               1        0     164  stunted          
24 months   CONTENT          PERU                           11               0        5     164  stunted          
24 months   CONTENT          PERU                           11               1        1     164  stunted          
24 months   CONTENT          PERU                           12               0       10     164  stunted          
24 months   CONTENT          PERU                           12               1        0     164  stunted          
24 months   EE               PAKISTAN                       1                0        4     167  stunted          
24 months   EE               PAKISTAN                       1                1        9     167  stunted          
24 months   EE               PAKISTAN                       2                0        0     167  stunted          
24 months   EE               PAKISTAN                       2                1        4     167  stunted          
24 months   EE               PAKISTAN                       3                0        0     167  stunted          
24 months   EE               PAKISTAN                       3                1        0     167  stunted          
24 months   EE               PAKISTAN                       4                0        0     167  stunted          
24 months   EE               PAKISTAN                       4                1        0     167  stunted          
24 months   EE               PAKISTAN                       5                0        0     167  stunted          
24 months   EE               PAKISTAN                       5                1        0     167  stunted          
24 months   EE               PAKISTAN                       6                0        0     167  stunted          
24 months   EE               PAKISTAN                       6                1        0     167  stunted          
24 months   EE               PAKISTAN                       7                0        0     167  stunted          
24 months   EE               PAKISTAN                       7                1        0     167  stunted          
24 months   EE               PAKISTAN                       8                0        0     167  stunted          
24 months   EE               PAKISTAN                       8                1        0     167  stunted          
24 months   EE               PAKISTAN                       9                0        0     167  stunted          
24 months   EE               PAKISTAN                       9                1        0     167  stunted          
24 months   EE               PAKISTAN                       10               0        1     167  stunted          
24 months   EE               PAKISTAN                       10               1        3     167  stunted          
24 months   EE               PAKISTAN                       11               0       22     167  stunted          
24 months   EE               PAKISTAN                       11               1       44     167  stunted          
24 months   EE               PAKISTAN                       12               0       22     167  stunted          
24 months   EE               PAKISTAN                       12               1       58     167  stunted          
24 months   GMS-Nepal        NEPAL                          1                0        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          1                1        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          2                0        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          2                1        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          3                0        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          3                1        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          4                0        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          4                1        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          5                0        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          5                1        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          6                0       43     488  stunted          
24 months   GMS-Nepal        NEPAL                          6                1       37     488  stunted          
24 months   GMS-Nepal        NEPAL                          7                0      109     488  stunted          
24 months   GMS-Nepal        NEPAL                          7                1       97     488  stunted          
24 months   GMS-Nepal        NEPAL                          8                0      117     488  stunted          
24 months   GMS-Nepal        NEPAL                          8                1       85     488  stunted          
24 months   GMS-Nepal        NEPAL                          9                0        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          9                1        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          10               0        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          10               1        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          11               0        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          11               1        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          12               0        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          12               1        0     488  stunted          
24 months   IRC              INDIA                          1                0       18     409  stunted          
24 months   IRC              INDIA                          1                1       20     409  stunted          
24 months   IRC              INDIA                          2                0       12     409  stunted          
24 months   IRC              INDIA                          2                1       16     409  stunted          
24 months   IRC              INDIA                          3                0       15     409  stunted          
24 months   IRC              INDIA                          3                1       12     409  stunted          
24 months   IRC              INDIA                          4                0        8     409  stunted          
24 months   IRC              INDIA                          4                1       13     409  stunted          
24 months   IRC              INDIA                          5                0        5     409  stunted          
24 months   IRC              INDIA                          5                1       17     409  stunted          
24 months   IRC              INDIA                          6                0       29     409  stunted          
24 months   IRC              INDIA                          6                1        8     409  stunted          
24 months   IRC              INDIA                          7                0       21     409  stunted          
24 months   IRC              INDIA                          7                1       15     409  stunted          
24 months   IRC              INDIA                          8                0       32     409  stunted          
24 months   IRC              INDIA                          8                1       12     409  stunted          
24 months   IRC              INDIA                          9                0       13     409  stunted          
24 months   IRC              INDIA                          9                1       14     409  stunted          
24 months   IRC              INDIA                          10               0       28     409  stunted          
24 months   IRC              INDIA                          10               1        9     409  stunted          
24 months   IRC              INDIA                          11               0       25     409  stunted          
24 months   IRC              INDIA                          11               1       15     409  stunted          
24 months   IRC              INDIA                          12               0       31     409  stunted          
24 months   IRC              INDIA                          12               1       21     409  stunted          
24 months   JiVitA-3         BANGLADESH                     1                0      302    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     1                1      364    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     2                0      266    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     2                1      295    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     3                0      372    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     3                1      346    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     4                0      275    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     4                1      230    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     5                0      193    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     5                1      174    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     6                0      319    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     6                1      294    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     7                0      382    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     7                1      289    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     8                0      333    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     8                1      287    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     9                0      428    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     9                1      373    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     10               0      452    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     10               1      421    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     11               0      507    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     11               1      534    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     12               0      564    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     12               1      632    8632  stunted          
24 months   JiVitA-4         BANGLADESH                     1                0        0    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     1                1        0    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     2                0      433    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     2                1      357    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     3                0      495    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     3                1      360    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     4                0      380    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     4                1      273    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     5                0      362    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     5                1      201    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     6                0      247    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     6                1      172    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     7                0      291    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     7                1      193    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     8                0      319    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     8                1      184    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     9                0      238    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     9                1      126    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     10               0       82    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     10               1       39    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     11               0        0    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     11               1        0    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     12               0        0    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     12               1        0    4752  stunted          
24 months   Keneba           GAMBIA                         1                0      114    1725  stunted          
24 months   Keneba           GAMBIA                         1                1       57    1725  stunted          
24 months   Keneba           GAMBIA                         2                0      117    1725  stunted          
24 months   Keneba           GAMBIA                         2                1       50    1725  stunted          
24 months   Keneba           GAMBIA                         3                0      120    1725  stunted          
24 months   Keneba           GAMBIA                         3                1       50    1725  stunted          
24 months   Keneba           GAMBIA                         4                0       75    1725  stunted          
24 months   Keneba           GAMBIA                         4                1       39    1725  stunted          
24 months   Keneba           GAMBIA                         5                0       75    1725  stunted          
24 months   Keneba           GAMBIA                         5                1       47    1725  stunted          
24 months   Keneba           GAMBIA                         6                0       61    1725  stunted          
24 months   Keneba           GAMBIA                         6                1       31    1725  stunted          
24 months   Keneba           GAMBIA                         7                0       45    1725  stunted          
24 months   Keneba           GAMBIA                         7                1       36    1725  stunted          
24 months   Keneba           GAMBIA                         8                0      114    1725  stunted          
24 months   Keneba           GAMBIA                         8                1       44    1725  stunted          
24 months   Keneba           GAMBIA                         9                0      109    1725  stunted          
24 months   Keneba           GAMBIA                         9                1       50    1725  stunted          
24 months   Keneba           GAMBIA                         10               0      122    1725  stunted          
24 months   Keneba           GAMBIA                         10               1       78    1725  stunted          
24 months   Keneba           GAMBIA                         11               0       95    1725  stunted          
24 months   Keneba           GAMBIA                         11               1       46    1725  stunted          
24 months   Keneba           GAMBIA                         12               0       97    1725  stunted          
24 months   Keneba           GAMBIA                         12               1       53    1725  stunted          
24 months   LCNI-5           MALAWI                         1                0       26     579  stunted          
24 months   LCNI-5           MALAWI                         1                1       15     579  stunted          
24 months   LCNI-5           MALAWI                         2                0       23     579  stunted          
24 months   LCNI-5           MALAWI                         2                1        7     579  stunted          
24 months   LCNI-5           MALAWI                         3                0       10     579  stunted          
24 months   LCNI-5           MALAWI                         3                1        9     579  stunted          
24 months   LCNI-5           MALAWI                         4                0       17     579  stunted          
24 months   LCNI-5           MALAWI                         4                1       11     579  stunted          
24 months   LCNI-5           MALAWI                         5                0       18     579  stunted          
24 months   LCNI-5           MALAWI                         5                1       13     579  stunted          
24 months   LCNI-5           MALAWI                         6                0       10     579  stunted          
24 months   LCNI-5           MALAWI                         6                1       14     579  stunted          
24 months   LCNI-5           MALAWI                         7                0       23     579  stunted          
24 months   LCNI-5           MALAWI                         7                1       24     579  stunted          
24 months   LCNI-5           MALAWI                         8                0       47     579  stunted          
24 months   LCNI-5           MALAWI                         8                1       24     579  stunted          
24 months   LCNI-5           MALAWI                         9                0       40     579  stunted          
24 months   LCNI-5           MALAWI                         9                1       27     579  stunted          
24 months   LCNI-5           MALAWI                         10               0       44     579  stunted          
24 months   LCNI-5           MALAWI                         10               1       49     579  stunted          
24 months   LCNI-5           MALAWI                         11               0       33     579  stunted          
24 months   LCNI-5           MALAWI                         11               1       31     579  stunted          
24 months   LCNI-5           MALAWI                         12               0       30     579  stunted          
24 months   LCNI-5           MALAWI                         12               1       34     579  stunted          
24 months   MAL-ED           BANGLADESH                     1                0        7     212  stunted          
24 months   MAL-ED           BANGLADESH                     1                1        7     212  stunted          
24 months   MAL-ED           BANGLADESH                     2                0        5     212  stunted          
24 months   MAL-ED           BANGLADESH                     2                1       12     212  stunted          
24 months   MAL-ED           BANGLADESH                     3                0        7     212  stunted          
24 months   MAL-ED           BANGLADESH                     3                1       12     212  stunted          
24 months   MAL-ED           BANGLADESH                     4                0       13     212  stunted          
24 months   MAL-ED           BANGLADESH                     4                1        7     212  stunted          
24 months   MAL-ED           BANGLADESH                     5                0        9     212  stunted          
24 months   MAL-ED           BANGLADESH                     5                1       10     212  stunted          
24 months   MAL-ED           BANGLADESH                     6                0        4     212  stunted          
24 months   MAL-ED           BANGLADESH                     6                1        3     212  stunted          
24 months   MAL-ED           BANGLADESH                     7                0        9     212  stunted          
24 months   MAL-ED           BANGLADESH                     7                1        9     212  stunted          
24 months   MAL-ED           BANGLADESH                     8                0       12     212  stunted          
24 months   MAL-ED           BANGLADESH                     8                1       10     212  stunted          
24 months   MAL-ED           BANGLADESH                     9                0       11     212  stunted          
24 months   MAL-ED           BANGLADESH                     9                1        7     212  stunted          
24 months   MAL-ED           BANGLADESH                     10               0       13     212  stunted          
24 months   MAL-ED           BANGLADESH                     10               1        7     212  stunted          
24 months   MAL-ED           BANGLADESH                     11               0        5     212  stunted          
24 months   MAL-ED           BANGLADESH                     11               1        6     212  stunted          
24 months   MAL-ED           BANGLADESH                     12               0       16     212  stunted          
24 months   MAL-ED           BANGLADESH                     12               1       11     212  stunted          
24 months   MAL-ED           BRAZIL                         1                0       14     169  stunted          
24 months   MAL-ED           BRAZIL                         1                1        1     169  stunted          
24 months   MAL-ED           BRAZIL                         2                0       15     169  stunted          
24 months   MAL-ED           BRAZIL                         2                1        1     169  stunted          
24 months   MAL-ED           BRAZIL                         3                0       14     169  stunted          
24 months   MAL-ED           BRAZIL                         3                1        0     169  stunted          
24 months   MAL-ED           BRAZIL                         4                0       10     169  stunted          
24 months   MAL-ED           BRAZIL                         4                1        0     169  stunted          
24 months   MAL-ED           BRAZIL                         5                0       15     169  stunted          
24 months   MAL-ED           BRAZIL                         5                1        0     169  stunted          
24 months   MAL-ED           BRAZIL                         6                0        6     169  stunted          
24 months   MAL-ED           BRAZIL                         6                1        0     169  stunted          
24 months   MAL-ED           BRAZIL                         7                0        9     169  stunted          
24 months   MAL-ED           BRAZIL                         7                1        1     169  stunted          
24 months   MAL-ED           BRAZIL                         8                0       12     169  stunted          
24 months   MAL-ED           BRAZIL                         8                1        1     169  stunted          
24 months   MAL-ED           BRAZIL                         9                0       26     169  stunted          
24 months   MAL-ED           BRAZIL                         9                1        1     169  stunted          
24 months   MAL-ED           BRAZIL                         10               0       13     169  stunted          
24 months   MAL-ED           BRAZIL                         10               1        1     169  stunted          
24 months   MAL-ED           BRAZIL                         11               0       17     169  stunted          
24 months   MAL-ED           BRAZIL                         11               1        1     169  stunted          
24 months   MAL-ED           BRAZIL                         12               0       11     169  stunted          
24 months   MAL-ED           BRAZIL                         12               1        0     169  stunted          
24 months   MAL-ED           INDIA                          1                0        6     227  stunted          
24 months   MAL-ED           INDIA                          1                1       13     227  stunted          
24 months   MAL-ED           INDIA                          2                0       14     227  stunted          
24 months   MAL-ED           INDIA                          2                1        4     227  stunted          
24 months   MAL-ED           INDIA                          3                0       12     227  stunted          
24 months   MAL-ED           INDIA                          3                1        7     227  stunted          
24 months   MAL-ED           INDIA                          4                0        7     227  stunted          
24 months   MAL-ED           INDIA                          4                1        7     227  stunted          
24 months   MAL-ED           INDIA                          5                0        5     227  stunted          
24 months   MAL-ED           INDIA                          5                1        3     227  stunted          
24 months   MAL-ED           INDIA                          6                0       13     227  stunted          
24 months   MAL-ED           INDIA                          6                1        5     227  stunted          
24 months   MAL-ED           INDIA                          7                0       11     227  stunted          
24 months   MAL-ED           INDIA                          7                1       12     227  stunted          
24 months   MAL-ED           INDIA                          8                0       11     227  stunted          
24 months   MAL-ED           INDIA                          8                1       10     227  stunted          
24 months   MAL-ED           INDIA                          9                0       12     227  stunted          
24 months   MAL-ED           INDIA                          9                1        6     227  stunted          
24 months   MAL-ED           INDIA                          10               0       12     227  stunted          
24 months   MAL-ED           INDIA                          10               1       14     227  stunted          
24 months   MAL-ED           INDIA                          11               0       14     227  stunted          
24 months   MAL-ED           INDIA                          11               1       10     227  stunted          
24 months   MAL-ED           INDIA                          12               0       13     227  stunted          
24 months   MAL-ED           INDIA                          12               1        6     227  stunted          
24 months   MAL-ED           NEPAL                          1                0       15     228  stunted          
24 months   MAL-ED           NEPAL                          1                1        4     228  stunted          
24 months   MAL-ED           NEPAL                          2                0       11     228  stunted          
24 months   MAL-ED           NEPAL                          2                1        6     228  stunted          
24 months   MAL-ED           NEPAL                          3                0        8     228  stunted          
24 months   MAL-ED           NEPAL                          3                1        9     228  stunted          
24 months   MAL-ED           NEPAL                          4                0       19     228  stunted          
24 months   MAL-ED           NEPAL                          4                1        3     228  stunted          
24 months   MAL-ED           NEPAL                          5                0       13     228  stunted          
24 months   MAL-ED           NEPAL                          5                1        6     228  stunted          
24 months   MAL-ED           NEPAL                          6                0       17     228  stunted          
24 months   MAL-ED           NEPAL                          6                1        1     228  stunted          
24 months   MAL-ED           NEPAL                          7                0       15     228  stunted          
24 months   MAL-ED           NEPAL                          7                1        2     228  stunted          
24 months   MAL-ED           NEPAL                          8                0       22     228  stunted          
24 months   MAL-ED           NEPAL                          8                1        2     228  stunted          
24 months   MAL-ED           NEPAL                          9                0       13     228  stunted          
24 months   MAL-ED           NEPAL                          9                1        2     228  stunted          
24 months   MAL-ED           NEPAL                          10               0       17     228  stunted          
24 months   MAL-ED           NEPAL                          10               1        3     228  stunted          
24 months   MAL-ED           NEPAL                          11               0       15     228  stunted          
24 months   MAL-ED           NEPAL                          11               1        9     228  stunted          
24 months   MAL-ED           NEPAL                          12               0       13     228  stunted          
24 months   MAL-ED           NEPAL                          12               1        3     228  stunted          
24 months   MAL-ED           PERU                           1                0       15     201  stunted          
24 months   MAL-ED           PERU                           1                1       15     201  stunted          
24 months   MAL-ED           PERU                           2                0       11     201  stunted          
24 months   MAL-ED           PERU                           2                1        6     201  stunted          
24 months   MAL-ED           PERU                           3                0        8     201  stunted          
24 months   MAL-ED           PERU                           3                1        7     201  stunted          
24 months   MAL-ED           PERU                           4                0        7     201  stunted          
24 months   MAL-ED           PERU                           4                1        4     201  stunted          
24 months   MAL-ED           PERU                           5                0       11     201  stunted          
24 months   MAL-ED           PERU                           5                1        8     201  stunted          
24 months   MAL-ED           PERU                           6                0        8     201  stunted          
24 months   MAL-ED           PERU                           6                1        3     201  stunted          
24 months   MAL-ED           PERU                           7                0       11     201  stunted          
24 months   MAL-ED           PERU                           7                1        4     201  stunted          
24 months   MAL-ED           PERU                           8                0        8     201  stunted          
24 months   MAL-ED           PERU                           8                1        4     201  stunted          
24 months   MAL-ED           PERU                           9                0       17     201  stunted          
24 months   MAL-ED           PERU                           9                1        4     201  stunted          
24 months   MAL-ED           PERU                           10               0       11     201  stunted          
24 months   MAL-ED           PERU                           10               1        3     201  stunted          
24 months   MAL-ED           PERU                           11               0       13     201  stunted          
24 months   MAL-ED           PERU                           11               1        8     201  stunted          
24 months   MAL-ED           PERU                           12               0        7     201  stunted          
24 months   MAL-ED           PERU                           12               1        8     201  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1                0       21     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1                1       13     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   2                0       11     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   2                1       11     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   3                0       10     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   3                1        4     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   4                0       11     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   4                1        1     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   5                0       10     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   5                1        2     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   6                0        9     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   6                1        7     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   7                0       14     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   7                1        8     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   8                0        7     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   8                1        1     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   9                0       14     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   9                1        5     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   10               0       18     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   10               1        7     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   11               0       11     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   11               1       12     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   12               0       18     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   12               1       13     238  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        6     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        9     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                0        3     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                1       19     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                0        4     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                1       14     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                0        0     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                1        6     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                0        4     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                1       14     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                0        7     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                1       11     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                0        8     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                1       15     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                0        4     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1        7     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                0        6     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                1       12     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               0        3     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               1       12     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               0        7     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               1       17     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0        7     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               1       19     214  stunted          
24 months   NIH-Birth        BANGLADESH                     1                0       14     429  stunted          
24 months   NIH-Birth        BANGLADESH                     1                1       29     429  stunted          
24 months   NIH-Birth        BANGLADESH                     2                0       13     429  stunted          
24 months   NIH-Birth        BANGLADESH                     2                1       23     429  stunted          
24 months   NIH-Birth        BANGLADESH                     3                0       22     429  stunted          
24 months   NIH-Birth        BANGLADESH                     3                1       17     429  stunted          
24 months   NIH-Birth        BANGLADESH                     4                0       11     429  stunted          
24 months   NIH-Birth        BANGLADESH                     4                1       23     429  stunted          
24 months   NIH-Birth        BANGLADESH                     5                0       12     429  stunted          
24 months   NIH-Birth        BANGLADESH                     5                1       23     429  stunted          
24 months   NIH-Birth        BANGLADESH                     6                0       15     429  stunted          
24 months   NIH-Birth        BANGLADESH                     6                1       18     429  stunted          
24 months   NIH-Birth        BANGLADESH                     7                0       16     429  stunted          
24 months   NIH-Birth        BANGLADESH                     7                1       18     429  stunted          
24 months   NIH-Birth        BANGLADESH                     8                0       13     429  stunted          
24 months   NIH-Birth        BANGLADESH                     8                1       14     429  stunted          
24 months   NIH-Birth        BANGLADESH                     9                0       13     429  stunted          
24 months   NIH-Birth        BANGLADESH                     9                1       13     429  stunted          
24 months   NIH-Birth        BANGLADESH                     10               0       15     429  stunted          
24 months   NIH-Birth        BANGLADESH                     10               1       18     429  stunted          
24 months   NIH-Birth        BANGLADESH                     11               0       20     429  stunted          
24 months   NIH-Birth        BANGLADESH                     11               1       23     429  stunted          
24 months   NIH-Birth        BANGLADESH                     12               0       21     429  stunted          
24 months   NIH-Birth        BANGLADESH                     12               1       25     429  stunted          
24 months   PROBIT           BELARUS                        1                0      237    4035  stunted          
24 months   PROBIT           BELARUS                        1                1       15    4035  stunted          
24 months   PROBIT           BELARUS                        2                0      198    4035  stunted          
24 months   PROBIT           BELARUS                        2                1       16    4035  stunted          
24 months   PROBIT           BELARUS                        3                0      302    4035  stunted          
24 months   PROBIT           BELARUS                        3                1       15    4035  stunted          
24 months   PROBIT           BELARUS                        4                0      322    4035  stunted          
24 months   PROBIT           BELARUS                        4                1       13    4035  stunted          
24 months   PROBIT           BELARUS                        5                0      288    4035  stunted          
24 months   PROBIT           BELARUS                        5                1       14    4035  stunted          
24 months   PROBIT           BELARUS                        6                0      257    4035  stunted          
24 months   PROBIT           BELARUS                        6                1       12    4035  stunted          
24 months   PROBIT           BELARUS                        7                0      362    4035  stunted          
24 months   PROBIT           BELARUS                        7                1       17    4035  stunted          
24 months   PROBIT           BELARUS                        8                0      330    4035  stunted          
24 months   PROBIT           BELARUS                        8                1       14    4035  stunted          
24 months   PROBIT           BELARUS                        9                0      354    4035  stunted          
24 months   PROBIT           BELARUS                        9                1       33    4035  stunted          
24 months   PROBIT           BELARUS                        10               0      352    4035  stunted          
24 months   PROBIT           BELARUS                        10               1       43    4035  stunted          
24 months   PROBIT           BELARUS                        11               0      342    4035  stunted          
24 months   PROBIT           BELARUS                        11               1       37    4035  stunted          
24 months   PROBIT           BELARUS                        12               0      416    4035  stunted          
24 months   PROBIT           BELARUS                        12               1       46    4035  stunted          
24 months   PROVIDE          BANGLADESH                     1                0       19     578  stunted          
24 months   PROVIDE          BANGLADESH                     1                1       13     578  stunted          
24 months   PROVIDE          BANGLADESH                     2                0       17     578  stunted          
24 months   PROVIDE          BANGLADESH                     2                1       13     578  stunted          
24 months   PROVIDE          BANGLADESH                     3                0       33     578  stunted          
24 months   PROVIDE          BANGLADESH                     3                1        7     578  stunted          
24 months   PROVIDE          BANGLADESH                     4                0       23     578  stunted          
24 months   PROVIDE          BANGLADESH                     4                1       10     578  stunted          
24 months   PROVIDE          BANGLADESH                     5                0       32     578  stunted          
24 months   PROVIDE          BANGLADESH                     5                1       10     578  stunted          
24 months   PROVIDE          BANGLADESH                     6                0       42     578  stunted          
24 months   PROVIDE          BANGLADESH                     6                1       33     578  stunted          
24 months   PROVIDE          BANGLADESH                     7                0       45     578  stunted          
24 months   PROVIDE          BANGLADESH                     7                1       25     578  stunted          
24 months   PROVIDE          BANGLADESH                     8                0       44     578  stunted          
24 months   PROVIDE          BANGLADESH                     8                1       16     578  stunted          
24 months   PROVIDE          BANGLADESH                     9                0       45     578  stunted          
24 months   PROVIDE          BANGLADESH                     9                1       21     578  stunted          
24 months   PROVIDE          BANGLADESH                     10               0       44     578  stunted          
24 months   PROVIDE          BANGLADESH                     10               1       20     578  stunted          
24 months   PROVIDE          BANGLADESH                     11               0       28     578  stunted          
24 months   PROVIDE          BANGLADESH                     11               1       10     578  stunted          
24 months   PROVIDE          BANGLADESH                     12               0       16     578  stunted          
24 months   PROVIDE          BANGLADESH                     12               1       12     578  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0        2       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1        0       6  stunted          
24 months   ZVITAMBO         ZIMBABWE                       1                0      127    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       1                1       63    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       2                0      123    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       2                1       74    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       3                0      160    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       3                1       68    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       4                0      116    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       4                1       54    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       5                0      110    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       5                1       58    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       6                0      124    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       6                1       72    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       7                0       71    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       7                1       49    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       8                0       79    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       8                1       48    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       9                0        9    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       9                1        4    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       10               0       18    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       10               1        6    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       11               0       45    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       11               1       27    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       12               0       89    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       12               1       46    1640  stunted          


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
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
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
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
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
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
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
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
