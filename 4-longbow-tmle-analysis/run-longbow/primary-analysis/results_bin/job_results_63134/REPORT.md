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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        brthmon    sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  --------  ---------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1                 0        9      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          1                 1        0      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          2                 0        1      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          2                 1        0      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          3                 0        7      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          3                 1        1      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          4                 0        9      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          4                 1        0      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          5                 0       12      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          5                 1        0      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          6                 0        9      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          6                 1        0      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          7                 0        7      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          7                 1        0      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          8                 0        4      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          8                 1        0      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          9                 0        7      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          9                 1        1      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          10                0        9      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          10                1        1      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          11                0       11      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          11                1        0      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          12                0        3      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          12                1        1      92  sstunted         
Birth       CMIN             BANGLADESH                     1                 0        3      26  sstunted         
Birth       CMIN             BANGLADESH                     1                 1        2      26  sstunted         
Birth       CMIN             BANGLADESH                     2                 0        4      26  sstunted         
Birth       CMIN             BANGLADESH                     2                 1        0      26  sstunted         
Birth       CMIN             BANGLADESH                     3                 0        0      26  sstunted         
Birth       CMIN             BANGLADESH                     3                 1        0      26  sstunted         
Birth       CMIN             BANGLADESH                     4                 0        2      26  sstunted         
Birth       CMIN             BANGLADESH                     4                 1        1      26  sstunted         
Birth       CMIN             BANGLADESH                     5                 0        1      26  sstunted         
Birth       CMIN             BANGLADESH                     5                 1        0      26  sstunted         
Birth       CMIN             BANGLADESH                     6                 0        0      26  sstunted         
Birth       CMIN             BANGLADESH                     6                 1        0      26  sstunted         
Birth       CMIN             BANGLADESH                     7                 0        4      26  sstunted         
Birth       CMIN             BANGLADESH                     7                 1        0      26  sstunted         
Birth       CMIN             BANGLADESH                     8                 0        2      26  sstunted         
Birth       CMIN             BANGLADESH                     8                 1        2      26  sstunted         
Birth       CMIN             BANGLADESH                     9                 0        1      26  sstunted         
Birth       CMIN             BANGLADESH                     9                 1        0      26  sstunted         
Birth       CMIN             BANGLADESH                     10                0        1      26  sstunted         
Birth       CMIN             BANGLADESH                     10                1        0      26  sstunted         
Birth       CMIN             BANGLADESH                     11                0        2      26  sstunted         
Birth       CMIN             BANGLADESH                     11                1        1      26  sstunted         
Birth       CMIN             BANGLADESH                     12                0        0      26  sstunted         
Birth       CMIN             BANGLADESH                     12                1        0      26  sstunted         
Birth       CONTENT          PERU                           1                 0        0       2  sstunted         
Birth       CONTENT          PERU                           1                 1        0       2  sstunted         
Birth       CONTENT          PERU                           2                 0        0       2  sstunted         
Birth       CONTENT          PERU                           2                 1        0       2  sstunted         
Birth       CONTENT          PERU                           3                 0        0       2  sstunted         
Birth       CONTENT          PERU                           3                 1        0       2  sstunted         
Birth       CONTENT          PERU                           4                 0        0       2  sstunted         
Birth       CONTENT          PERU                           4                 1        0       2  sstunted         
Birth       CONTENT          PERU                           5                 0        2       2  sstunted         
Birth       CONTENT          PERU                           5                 1        0       2  sstunted         
Birth       CONTENT          PERU                           6                 0        0       2  sstunted         
Birth       CONTENT          PERU                           6                 1        0       2  sstunted         
Birth       CONTENT          PERU                           7                 0        0       2  sstunted         
Birth       CONTENT          PERU                           7                 1        0       2  sstunted         
Birth       CONTENT          PERU                           8                 0        0       2  sstunted         
Birth       CONTENT          PERU                           8                 1        0       2  sstunted         
Birth       CONTENT          PERU                           9                 0        0       2  sstunted         
Birth       CONTENT          PERU                           9                 1        0       2  sstunted         
Birth       CONTENT          PERU                           10                0        0       2  sstunted         
Birth       CONTENT          PERU                           10                1        0       2  sstunted         
Birth       CONTENT          PERU                           11                0        0       2  sstunted         
Birth       CONTENT          PERU                           11                1        0       2  sstunted         
Birth       CONTENT          PERU                           12                0        0       2  sstunted         
Birth       CONTENT          PERU                           12                1        0       2  sstunted         
Birth       EE               PAKISTAN                       1                 0       47     240  sstunted         
Birth       EE               PAKISTAN                       1                 1       14     240  sstunted         
Birth       EE               PAKISTAN                       2                 0       38     240  sstunted         
Birth       EE               PAKISTAN                       2                 1       11     240  sstunted         
Birth       EE               PAKISTAN                       3                 0       20     240  sstunted         
Birth       EE               PAKISTAN                       3                 1        4     240  sstunted         
Birth       EE               PAKISTAN                       4                 0        7     240  sstunted         
Birth       EE               PAKISTAN                       4                 1        3     240  sstunted         
Birth       EE               PAKISTAN                       5                 0        0     240  sstunted         
Birth       EE               PAKISTAN                       5                 1        0     240  sstunted         
Birth       EE               PAKISTAN                       6                 0        0     240  sstunted         
Birth       EE               PAKISTAN                       6                 1        0     240  sstunted         
Birth       EE               PAKISTAN                       7                 0        0     240  sstunted         
Birth       EE               PAKISTAN                       7                 1        0     240  sstunted         
Birth       EE               PAKISTAN                       8                 0        0     240  sstunted         
Birth       EE               PAKISTAN                       8                 1        0     240  sstunted         
Birth       EE               PAKISTAN                       9                 0        0     240  sstunted         
Birth       EE               PAKISTAN                       9                 1        0     240  sstunted         
Birth       EE               PAKISTAN                       10                0        0     240  sstunted         
Birth       EE               PAKISTAN                       10                1        0     240  sstunted         
Birth       EE               PAKISTAN                       11                0       41     240  sstunted         
Birth       EE               PAKISTAN                       11                1        6     240  sstunted         
Birth       EE               PAKISTAN                       12                0       39     240  sstunted         
Birth       EE               PAKISTAN                       12                1       10     240  sstunted         
Birth       GMS-Nepal        NEPAL                          1                 0        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          1                 1        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          2                 0        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          2                 1        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          3                 0        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          3                 1        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          4                 0        1     696  sstunted         
Birth       GMS-Nepal        NEPAL                          4                 1        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          5                 0        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          5                 1        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          6                 0      166     696  sstunted         
Birth       GMS-Nepal        NEPAL                          6                 1        6     696  sstunted         
Birth       GMS-Nepal        NEPAL                          7                 0      252     696  sstunted         
Birth       GMS-Nepal        NEPAL                          7                 1       17     696  sstunted         
Birth       GMS-Nepal        NEPAL                          8                 0      246     696  sstunted         
Birth       GMS-Nepal        NEPAL                          8                 1        8     696  sstunted         
Birth       GMS-Nepal        NEPAL                          9                 0        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          9                 1        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          10                0        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          10                1        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          11                0        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          11                1        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          12                0        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          12                1        0     696  sstunted         
Birth       IRC              INDIA                          1                 0       32     388  sstunted         
Birth       IRC              INDIA                          1                 1        3     388  sstunted         
Birth       IRC              INDIA                          2                 0       25     388  sstunted         
Birth       IRC              INDIA                          2                 1        1     388  sstunted         
Birth       IRC              INDIA                          3                 0       26     388  sstunted         
Birth       IRC              INDIA                          3                 1        0     388  sstunted         
Birth       IRC              INDIA                          4                 0       21     388  sstunted         
Birth       IRC              INDIA                          4                 1        0     388  sstunted         
Birth       IRC              INDIA                          5                 0       21     388  sstunted         
Birth       IRC              INDIA                          5                 1        1     388  sstunted         
Birth       IRC              INDIA                          6                 0       31     388  sstunted         
Birth       IRC              INDIA                          6                 1        3     388  sstunted         
Birth       IRC              INDIA                          7                 0       34     388  sstunted         
Birth       IRC              INDIA                          7                 1        1     388  sstunted         
Birth       IRC              INDIA                          8                 0       38     388  sstunted         
Birth       IRC              INDIA                          8                 1        0     388  sstunted         
Birth       IRC              INDIA                          9                 0       24     388  sstunted         
Birth       IRC              INDIA                          9                 1        1     388  sstunted         
Birth       IRC              INDIA                          10                0       36     388  sstunted         
Birth       IRC              INDIA                          10                1        2     388  sstunted         
Birth       IRC              INDIA                          11                0       38     388  sstunted         
Birth       IRC              INDIA                          11                1        1     388  sstunted         
Birth       IRC              INDIA                          12                0       46     388  sstunted         
Birth       IRC              INDIA                          12                1        3     388  sstunted         
Birth       JiVitA-3         BANGLADESH                     1                 0     1827   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     1                 1      282   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     2                 0     1555   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     2                 1      181   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     3                 0     1867   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     3                 1      174   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     4                 0     1375   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     4                 1      100   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     5                 0      968   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     5                 1      109   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     6                 0     1015   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     6                 1      105   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     7                 0     1143   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     7                 1      119   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     8                 0     1564   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     8                 1      195   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     9                 0     2040   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     9                 1      212   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     10                0     2141   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     10                1      298   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     11                0     2200   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     11                1      341   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     12                0     2312   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     12                1      332   22455  sstunted         
Birth       JiVitA-4         BANGLADESH                     1                 0        0    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     1                 1        0    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     2                 0      332    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     2                 1       27    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     3                 0      365    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     3                 1       44    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     4                 0      430    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     4                 1       49    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     5                 0      399    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     5                 1       35    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     6                 0      311    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     6                 1       34    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     7                 0      341    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     7                 1       25    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     8                 0      226    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     8                 1        9    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     9                 0      144    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     9                 1        7    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     10                0       42    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     10                1        3    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     11                0        0    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     11                1        0    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     12                0        0    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     12                1        0    2823  sstunted         
Birth       Keneba           GAMBIA                         1                 0      156    1543  sstunted         
Birth       Keneba           GAMBIA                         1                 1        7    1543  sstunted         
Birth       Keneba           GAMBIA                         2                 0      143    1543  sstunted         
Birth       Keneba           GAMBIA                         2                 1        4    1543  sstunted         
Birth       Keneba           GAMBIA                         3                 0      163    1543  sstunted         
Birth       Keneba           GAMBIA                         3                 1        2    1543  sstunted         
Birth       Keneba           GAMBIA                         4                 0      104    1543  sstunted         
Birth       Keneba           GAMBIA                         4                 1        1    1543  sstunted         
Birth       Keneba           GAMBIA                         5                 0      106    1543  sstunted         
Birth       Keneba           GAMBIA                         5                 1        2    1543  sstunted         
Birth       Keneba           GAMBIA                         6                 0       88    1543  sstunted         
Birth       Keneba           GAMBIA                         6                 1        1    1543  sstunted         
Birth       Keneba           GAMBIA                         7                 0       75    1543  sstunted         
Birth       Keneba           GAMBIA                         7                 1        1    1543  sstunted         
Birth       Keneba           GAMBIA                         8                 0      124    1543  sstunted         
Birth       Keneba           GAMBIA                         8                 1        1    1543  sstunted         
Birth       Keneba           GAMBIA                         9                 0      122    1543  sstunted         
Birth       Keneba           GAMBIA                         9                 1        2    1543  sstunted         
Birth       Keneba           GAMBIA                         10                0      175    1543  sstunted         
Birth       Keneba           GAMBIA                         10                1        4    1543  sstunted         
Birth       Keneba           GAMBIA                         11                0      122    1543  sstunted         
Birth       Keneba           GAMBIA                         11                1        2    1543  sstunted         
Birth       Keneba           GAMBIA                         12                0      136    1543  sstunted         
Birth       Keneba           GAMBIA                         12                1        2    1543  sstunted         
Birth       MAL-ED           BANGLADESH                     1                 0       20     231  sstunted         
Birth       MAL-ED           BANGLADESH                     1                 1        0     231  sstunted         
Birth       MAL-ED           BANGLADESH                     2                 0       22     231  sstunted         
Birth       MAL-ED           BANGLADESH                     2                 1        1     231  sstunted         
Birth       MAL-ED           BANGLADESH                     3                 0       24     231  sstunted         
Birth       MAL-ED           BANGLADESH                     3                 1        0     231  sstunted         
Birth       MAL-ED           BANGLADESH                     4                 0       19     231  sstunted         
Birth       MAL-ED           BANGLADESH                     4                 1        0     231  sstunted         
Birth       MAL-ED           BANGLADESH                     5                 0       16     231  sstunted         
Birth       MAL-ED           BANGLADESH                     5                 1        2     231  sstunted         
Birth       MAL-ED           BANGLADESH                     6                 0        8     231  sstunted         
Birth       MAL-ED           BANGLADESH                     6                 1        0     231  sstunted         
Birth       MAL-ED           BANGLADESH                     7                 0       13     231  sstunted         
Birth       MAL-ED           BANGLADESH                     7                 1        1     231  sstunted         
Birth       MAL-ED           BANGLADESH                     8                 0       23     231  sstunted         
Birth       MAL-ED           BANGLADESH                     8                 1        3     231  sstunted         
Birth       MAL-ED           BANGLADESH                     9                 0       17     231  sstunted         
Birth       MAL-ED           BANGLADESH                     9                 1        1     231  sstunted         
Birth       MAL-ED           BANGLADESH                     10                0       21     231  sstunted         
Birth       MAL-ED           BANGLADESH                     10                1        0     231  sstunted         
Birth       MAL-ED           BANGLADESH                     11                0       15     231  sstunted         
Birth       MAL-ED           BANGLADESH                     11                1        0     231  sstunted         
Birth       MAL-ED           BANGLADESH                     12                0       24     231  sstunted         
Birth       MAL-ED           BANGLADESH                     12                1        1     231  sstunted         
Birth       MAL-ED           BRAZIL                         1                 0        5      65  sstunted         
Birth       MAL-ED           BRAZIL                         1                 1        0      65  sstunted         
Birth       MAL-ED           BRAZIL                         2                 0       10      65  sstunted         
Birth       MAL-ED           BRAZIL                         2                 1        0      65  sstunted         
Birth       MAL-ED           BRAZIL                         3                 0        7      65  sstunted         
Birth       MAL-ED           BRAZIL                         3                 1        0      65  sstunted         
Birth       MAL-ED           BRAZIL                         4                 0        4      65  sstunted         
Birth       MAL-ED           BRAZIL                         4                 1        0      65  sstunted         
Birth       MAL-ED           BRAZIL                         5                 0        1      65  sstunted         
Birth       MAL-ED           BRAZIL                         5                 1        1      65  sstunted         
Birth       MAL-ED           BRAZIL                         6                 0        5      65  sstunted         
Birth       MAL-ED           BRAZIL                         6                 1        0      65  sstunted         
Birth       MAL-ED           BRAZIL                         7                 0        5      65  sstunted         
Birth       MAL-ED           BRAZIL                         7                 1        1      65  sstunted         
Birth       MAL-ED           BRAZIL                         8                 0        7      65  sstunted         
Birth       MAL-ED           BRAZIL                         8                 1        0      65  sstunted         
Birth       MAL-ED           BRAZIL                         9                 0        5      65  sstunted         
Birth       MAL-ED           BRAZIL                         9                 1        1      65  sstunted         
Birth       MAL-ED           BRAZIL                         10                0        5      65  sstunted         
Birth       MAL-ED           BRAZIL                         10                1        0      65  sstunted         
Birth       MAL-ED           BRAZIL                         11                0        4      65  sstunted         
Birth       MAL-ED           BRAZIL                         11                1        0      65  sstunted         
Birth       MAL-ED           BRAZIL                         12                0        4      65  sstunted         
Birth       MAL-ED           BRAZIL                         12                1        0      65  sstunted         
Birth       MAL-ED           INDIA                          1                 0        2      47  sstunted         
Birth       MAL-ED           INDIA                          1                 1        0      47  sstunted         
Birth       MAL-ED           INDIA                          2                 0        6      47  sstunted         
Birth       MAL-ED           INDIA                          2                 1        0      47  sstunted         
Birth       MAL-ED           INDIA                          3                 0        3      47  sstunted         
Birth       MAL-ED           INDIA                          3                 1        0      47  sstunted         
Birth       MAL-ED           INDIA                          4                 0        5      47  sstunted         
Birth       MAL-ED           INDIA                          4                 1        1      47  sstunted         
Birth       MAL-ED           INDIA                          5                 0        4      47  sstunted         
Birth       MAL-ED           INDIA                          5                 1        0      47  sstunted         
Birth       MAL-ED           INDIA                          6                 0        2      47  sstunted         
Birth       MAL-ED           INDIA                          6                 1        0      47  sstunted         
Birth       MAL-ED           INDIA                          7                 0        3      47  sstunted         
Birth       MAL-ED           INDIA                          7                 1        0      47  sstunted         
Birth       MAL-ED           INDIA                          8                 0        8      47  sstunted         
Birth       MAL-ED           INDIA                          8                 1        0      47  sstunted         
Birth       MAL-ED           INDIA                          9                 0        4      47  sstunted         
Birth       MAL-ED           INDIA                          9                 1        0      47  sstunted         
Birth       MAL-ED           INDIA                          10                0        5      47  sstunted         
Birth       MAL-ED           INDIA                          10                1        1      47  sstunted         
Birth       MAL-ED           INDIA                          11                0        3      47  sstunted         
Birth       MAL-ED           INDIA                          11                1        0      47  sstunted         
Birth       MAL-ED           INDIA                          12                0        0      47  sstunted         
Birth       MAL-ED           INDIA                          12                1        0      47  sstunted         
Birth       MAL-ED           NEPAL                          1                 0        2      27  sstunted         
Birth       MAL-ED           NEPAL                          1                 1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          2                 0        2      27  sstunted         
Birth       MAL-ED           NEPAL                          2                 1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          3                 0        1      27  sstunted         
Birth       MAL-ED           NEPAL                          3                 1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          4                 0        2      27  sstunted         
Birth       MAL-ED           NEPAL                          4                 1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          5                 0        3      27  sstunted         
Birth       MAL-ED           NEPAL                          5                 1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          6                 0        2      27  sstunted         
Birth       MAL-ED           NEPAL                          6                 1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          7                 0        2      27  sstunted         
Birth       MAL-ED           NEPAL                          7                 1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          8                 0        1      27  sstunted         
Birth       MAL-ED           NEPAL                          8                 1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          9                 0        2      27  sstunted         
Birth       MAL-ED           NEPAL                          9                 1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          10                0        4      27  sstunted         
Birth       MAL-ED           NEPAL                          10                1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          11                0        4      27  sstunted         
Birth       MAL-ED           NEPAL                          11                1        1      27  sstunted         
Birth       MAL-ED           NEPAL                          12                0        1      27  sstunted         
Birth       MAL-ED           NEPAL                          12                1        0      27  sstunted         
Birth       MAL-ED           PERU                           1                 0       29     233  sstunted         
Birth       MAL-ED           PERU                           1                 1        1     233  sstunted         
Birth       MAL-ED           PERU                           2                 0       18     233  sstunted         
Birth       MAL-ED           PERU                           2                 1        0     233  sstunted         
Birth       MAL-ED           PERU                           3                 0       20     233  sstunted         
Birth       MAL-ED           PERU                           3                 1        0     233  sstunted         
Birth       MAL-ED           PERU                           4                 0       14     233  sstunted         
Birth       MAL-ED           PERU                           4                 1        1     233  sstunted         
Birth       MAL-ED           PERU                           5                 0       22     233  sstunted         
Birth       MAL-ED           PERU                           5                 1        0     233  sstunted         
Birth       MAL-ED           PERU                           6                 0       11     233  sstunted         
Birth       MAL-ED           PERU                           6                 1        0     233  sstunted         
Birth       MAL-ED           PERU                           7                 0       19     233  sstunted         
Birth       MAL-ED           PERU                           7                 1        0     233  sstunted         
Birth       MAL-ED           PERU                           8                 0       16     233  sstunted         
Birth       MAL-ED           PERU                           8                 1        0     233  sstunted         
Birth       MAL-ED           PERU                           9                 0       19     233  sstunted         
Birth       MAL-ED           PERU                           9                 1        0     233  sstunted         
Birth       MAL-ED           PERU                           10                0       21     233  sstunted         
Birth       MAL-ED           PERU                           10                1        0     233  sstunted         
Birth       MAL-ED           PERU                           11                0       27     233  sstunted         
Birth       MAL-ED           PERU                           11                1        1     233  sstunted         
Birth       MAL-ED           PERU                           12                0       13     233  sstunted         
Birth       MAL-ED           PERU                           12                1        1     233  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                 0        9     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                 1        1     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   2                 0       13     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   2                 1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   3                 0        9     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   3                 1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   4                 0        6     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   4                 1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   5                 0        6     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   5                 1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   6                 0        8     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   6                 1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   7                 0       13     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   7                 1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   8                 0        3     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   8                 1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   9                 0       10     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   9                 1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   10                0       13     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   10                1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   11                0       14     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   11                1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   12                0       17     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   12                1        1     123  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       10     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 0       15     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 1        1     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 0       11     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 1        1     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 0        8     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 1        0     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 0        9     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 1        1     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 0       10     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 1        1     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 0       14     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 1        0     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 0        6     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 1        0     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 0        2     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 1        3     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                0       11     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                1        1     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                0       10     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                1        1     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                0        9     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                1        1     125  sstunted         
Birth       NIH-Birth        BANGLADESH                     1                 0       63     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     1                 1        7     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     2                 0       56     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     2                 1        0     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     3                 0       56     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     3                 1        3     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     4                 0       49     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     4                 1        2     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     5                 0       46     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     5                 1        1     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     6                 0       46     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     6                 1        0     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     7                 0       39     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     7                 1        1     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     8                 0       39     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     8                 1        1     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     9                 0       46     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     9                 1        1     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     10                0       48     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     10                1        0     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     11                0       51     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     11                1        1     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     12                0       50     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     12                1        2     608  sstunted         
Birth       PROBIT           BELARUS                        1                 0      826   13893  sstunted         
Birth       PROBIT           BELARUS                        1                 1        0   13893  sstunted         
Birth       PROBIT           BELARUS                        2                 0      804   13893  sstunted         
Birth       PROBIT           BELARUS                        2                 1        0   13893  sstunted         
Birth       PROBIT           BELARUS                        3                 0      947   13893  sstunted         
Birth       PROBIT           BELARUS                        3                 1        2   13893  sstunted         
Birth       PROBIT           BELARUS                        4                 0      971   13893  sstunted         
Birth       PROBIT           BELARUS                        4                 1        0   13893  sstunted         
Birth       PROBIT           BELARUS                        5                 0      950   13893  sstunted         
Birth       PROBIT           BELARUS                        5                 1        0   13893  sstunted         
Birth       PROBIT           BELARUS                        6                 0     1021   13893  sstunted         
Birth       PROBIT           BELARUS                        6                 1        0   13893  sstunted         
Birth       PROBIT           BELARUS                        7                 0     1294   13893  sstunted         
Birth       PROBIT           BELARUS                        7                 1        0   13893  sstunted         
Birth       PROBIT           BELARUS                        8                 0     1312   13893  sstunted         
Birth       PROBIT           BELARUS                        8                 1        0   13893  sstunted         
Birth       PROBIT           BELARUS                        9                 0     1326   13893  sstunted         
Birth       PROBIT           BELARUS                        9                 1        0   13893  sstunted         
Birth       PROBIT           BELARUS                        10                0     1500   13893  sstunted         
Birth       PROBIT           BELARUS                        10                1        2   13893  sstunted         
Birth       PROBIT           BELARUS                        11                0     1387   13893  sstunted         
Birth       PROBIT           BELARUS                        11                1        1   13893  sstunted         
Birth       PROBIT           BELARUS                        12                0     1550   13893  sstunted         
Birth       PROBIT           BELARUS                        12                1        0   13893  sstunted         
Birth       PROVIDE          BANGLADESH                     1                 0       30     539  sstunted         
Birth       PROVIDE          BANGLADESH                     1                 1        0     539  sstunted         
Birth       PROVIDE          BANGLADESH                     2                 0       24     539  sstunted         
Birth       PROVIDE          BANGLADESH                     2                 1        0     539  sstunted         
Birth       PROVIDE          BANGLADESH                     3                 0       45     539  sstunted         
Birth       PROVIDE          BANGLADESH                     3                 1        0     539  sstunted         
Birth       PROVIDE          BANGLADESH                     4                 0       28     539  sstunted         
Birth       PROVIDE          BANGLADESH                     4                 1        0     539  sstunted         
Birth       PROVIDE          BANGLADESH                     5                 0       46     539  sstunted         
Birth       PROVIDE          BANGLADESH                     5                 1        0     539  sstunted         
Birth       PROVIDE          BANGLADESH                     6                 0       76     539  sstunted         
Birth       PROVIDE          BANGLADESH                     6                 1        4     539  sstunted         
Birth       PROVIDE          BANGLADESH                     7                 0       75     539  sstunted         
Birth       PROVIDE          BANGLADESH                     7                 1        0     539  sstunted         
Birth       PROVIDE          BANGLADESH                     8                 0       54     539  sstunted         
Birth       PROVIDE          BANGLADESH                     8                 1        0     539  sstunted         
Birth       PROVIDE          BANGLADESH                     9                 0       55     539  sstunted         
Birth       PROVIDE          BANGLADESH                     9                 1        0     539  sstunted         
Birth       PROVIDE          BANGLADESH                     10                0       54     539  sstunted         
Birth       PROVIDE          BANGLADESH                     10                1        0     539  sstunted         
Birth       PROVIDE          BANGLADESH                     11                0       27     539  sstunted         
Birth       PROVIDE          BANGLADESH                     11                1        0     539  sstunted         
Birth       PROVIDE          BANGLADESH                     12                0       21     539  sstunted         
Birth       PROVIDE          BANGLADESH                     12                1        0     539  sstunted         
Birth       ResPak           PAKISTAN                       1                 0        2      42  sstunted         
Birth       ResPak           PAKISTAN                       1                 1        0      42  sstunted         
Birth       ResPak           PAKISTAN                       2                 0        1      42  sstunted         
Birth       ResPak           PAKISTAN                       2                 1        0      42  sstunted         
Birth       ResPak           PAKISTAN                       3                 0        1      42  sstunted         
Birth       ResPak           PAKISTAN                       3                 1        0      42  sstunted         
Birth       ResPak           PAKISTAN                       4                 0        8      42  sstunted         
Birth       ResPak           PAKISTAN                       4                 1        0      42  sstunted         
Birth       ResPak           PAKISTAN                       5                 0        7      42  sstunted         
Birth       ResPak           PAKISTAN                       5                 1        0      42  sstunted         
Birth       ResPak           PAKISTAN                       6                 0        8      42  sstunted         
Birth       ResPak           PAKISTAN                       6                 1        1      42  sstunted         
Birth       ResPak           PAKISTAN                       7                 0        7      42  sstunted         
Birth       ResPak           PAKISTAN                       7                 1        1      42  sstunted         
Birth       ResPak           PAKISTAN                       8                 0        4      42  sstunted         
Birth       ResPak           PAKISTAN                       8                 1        0      42  sstunted         
Birth       ResPak           PAKISTAN                       9                 0        1      42  sstunted         
Birth       ResPak           PAKISTAN                       9                 1        0      42  sstunted         
Birth       ResPak           PAKISTAN                       10                0        1      42  sstunted         
Birth       ResPak           PAKISTAN                       10                1        0      42  sstunted         
Birth       ResPak           PAKISTAN                       11                0        0      42  sstunted         
Birth       ResPak           PAKISTAN                       11                1        0      42  sstunted         
Birth       ResPak           PAKISTAN                       12                0        0      42  sstunted         
Birth       ResPak           PAKISTAN                       12                1        0      42  sstunted         
Birth       SAS-CompFeed     INDIA                          1                 0       78    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          1                 1        8    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          2                 0       71    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          2                 1        6    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          3                 0       62    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          3                 1        7    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          4                 0       59    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          4                 1        3    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          5                 0       76    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          5                 1       12    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          6                 0       98    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          6                 1        6    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          7                 0       94    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          7                 1        6    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          8                 0      133    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          8                 1       11    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          9                 0      138    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          9                 1        9    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          10                0      132    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          10                1       10    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          11                0      113    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          11                1        6    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          12                0      107    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          12                1        7    1252  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       1                 0     1287   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       1                 1       56   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       2                 0     1007   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       2                 1       45   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       3                 0     1121   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       3                 1       42   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       4                 0      957   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       4                 1       35   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       5                 0      983   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       5                 1       34   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       6                 0     1092   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       6                 1       45   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       7                 0     1132   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       7                 1       44   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       8                 0     1232   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       8                 1       25   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       9                 0     1278   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       9                 1       21   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       10                0     1007   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       10                1       34   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       11                0     1146   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       11                1       37   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       12                0     1191   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       12                1       24   13875  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                 0       31     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                 1        3     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          2                 0       14     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          2                 1        2     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          3                 0       31     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          3                 1        0     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          4                 0       40     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          4                 1        4     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          5                 0       29     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          5                 1        6     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          6                 0       31     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          6                 1        6     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          7                 0       28     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          7                 1       11     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          8                 0       17     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          8                 1        0     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          9                 0       18     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          9                 1        2     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          10                0       27     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          10                1        2     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          11                0       41     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          11                1        1     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          12                0       20     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          12                1        5     369  sstunted         
6 months    CMIN             BANGLADESH                     1                 0       24     243  sstunted         
6 months    CMIN             BANGLADESH                     1                 1        2     243  sstunted         
6 months    CMIN             BANGLADESH                     2                 0       23     243  sstunted         
6 months    CMIN             BANGLADESH                     2                 1        0     243  sstunted         
6 months    CMIN             BANGLADESH                     3                 0       16     243  sstunted         
6 months    CMIN             BANGLADESH                     3                 1        1     243  sstunted         
6 months    CMIN             BANGLADESH                     4                 0       21     243  sstunted         
6 months    CMIN             BANGLADESH                     4                 1        1     243  sstunted         
6 months    CMIN             BANGLADESH                     5                 0       17     243  sstunted         
6 months    CMIN             BANGLADESH                     5                 1        0     243  sstunted         
6 months    CMIN             BANGLADESH                     6                 0        5     243  sstunted         
6 months    CMIN             BANGLADESH                     6                 1        3     243  sstunted         
6 months    CMIN             BANGLADESH                     7                 0       13     243  sstunted         
6 months    CMIN             BANGLADESH                     7                 1        2     243  sstunted         
6 months    CMIN             BANGLADESH                     8                 0       11     243  sstunted         
6 months    CMIN             BANGLADESH                     8                 1        6     243  sstunted         
6 months    CMIN             BANGLADESH                     9                 0       18     243  sstunted         
6 months    CMIN             BANGLADESH                     9                 1        2     243  sstunted         
6 months    CMIN             BANGLADESH                     10                0       22     243  sstunted         
6 months    CMIN             BANGLADESH                     10                1        2     243  sstunted         
6 months    CMIN             BANGLADESH                     11                0       23     243  sstunted         
6 months    CMIN             BANGLADESH                     11                1        4     243  sstunted         
6 months    CMIN             BANGLADESH                     12                0       22     243  sstunted         
6 months    CMIN             BANGLADESH                     12                1        5     243  sstunted         
6 months    CONTENT          PERU                           1                 0       10     215  sstunted         
6 months    CONTENT          PERU                           1                 1        0     215  sstunted         
6 months    CONTENT          PERU                           2                 0       18     215  sstunted         
6 months    CONTENT          PERU                           2                 1        0     215  sstunted         
6 months    CONTENT          PERU                           3                 0       29     215  sstunted         
6 months    CONTENT          PERU                           3                 1        1     215  sstunted         
6 months    CONTENT          PERU                           4                 0       19     215  sstunted         
6 months    CONTENT          PERU                           4                 1        0     215  sstunted         
6 months    CONTENT          PERU                           5                 0       14     215  sstunted         
6 months    CONTENT          PERU                           5                 1        0     215  sstunted         
6 months    CONTENT          PERU                           6                 0       13     215  sstunted         
6 months    CONTENT          PERU                           6                 1        0     215  sstunted         
6 months    CONTENT          PERU                           7                 0       28     215  sstunted         
6 months    CONTENT          PERU                           7                 1        0     215  sstunted         
6 months    CONTENT          PERU                           8                 0       23     215  sstunted         
6 months    CONTENT          PERU                           8                 1        0     215  sstunted         
6 months    CONTENT          PERU                           9                 0       26     215  sstunted         
6 months    CONTENT          PERU                           9                 1        0     215  sstunted         
6 months    CONTENT          PERU                           10                0       14     215  sstunted         
6 months    CONTENT          PERU                           10                1        0     215  sstunted         
6 months    CONTENT          PERU                           11                0        9     215  sstunted         
6 months    CONTENT          PERU                           11                1        0     215  sstunted         
6 months    CONTENT          PERU                           12                0       11     215  sstunted         
6 months    CONTENT          PERU                           12                1        0     215  sstunted         
6 months    EE               PAKISTAN                       1                 0       64     373  sstunted         
6 months    EE               PAKISTAN                       1                 1       27     373  sstunted         
6 months    EE               PAKISTAN                       2                 0       52     373  sstunted         
6 months    EE               PAKISTAN                       2                 1       14     373  sstunted         
6 months    EE               PAKISTAN                       3                 0       36     373  sstunted         
6 months    EE               PAKISTAN                       3                 1        6     373  sstunted         
6 months    EE               PAKISTAN                       4                 0       11     373  sstunted         
6 months    EE               PAKISTAN                       4                 1        5     373  sstunted         
6 months    EE               PAKISTAN                       5                 0        0     373  sstunted         
6 months    EE               PAKISTAN                       5                 1        0     373  sstunted         
6 months    EE               PAKISTAN                       6                 0        0     373  sstunted         
6 months    EE               PAKISTAN                       6                 1        0     373  sstunted         
6 months    EE               PAKISTAN                       7                 0        0     373  sstunted         
6 months    EE               PAKISTAN                       7                 1        0     373  sstunted         
6 months    EE               PAKISTAN                       8                 0        0     373  sstunted         
6 months    EE               PAKISTAN                       8                 1        0     373  sstunted         
6 months    EE               PAKISTAN                       9                 0        0     373  sstunted         
6 months    EE               PAKISTAN                       9                 1        0     373  sstunted         
6 months    EE               PAKISTAN                       10                0        3     373  sstunted         
6 months    EE               PAKISTAN                       10                1        1     373  sstunted         
6 months    EE               PAKISTAN                       11                0       56     373  sstunted         
6 months    EE               PAKISTAN                       11                1       15     373  sstunted         
6 months    EE               PAKISTAN                       12                0       70     373  sstunted         
6 months    EE               PAKISTAN                       12                1       13     373  sstunted         
6 months    GMS-Nepal        NEPAL                          1                 0        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          1                 1        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          2                 0        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          2                 1        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          3                 0        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          3                 1        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          4                 0        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          4                 1        1     564  sstunted         
6 months    GMS-Nepal        NEPAL                          5                 0        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          5                 1        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          6                 0      115     564  sstunted         
6 months    GMS-Nepal        NEPAL                          6                 1        6     564  sstunted         
6 months    GMS-Nepal        NEPAL                          7                 0      213     564  sstunted         
6 months    GMS-Nepal        NEPAL                          7                 1        6     564  sstunted         
6 months    GMS-Nepal        NEPAL                          8                 0      215     564  sstunted         
6 months    GMS-Nepal        NEPAL                          8                 1        8     564  sstunted         
6 months    GMS-Nepal        NEPAL                          9                 0        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          9                 1        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          10                0        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          10                1        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          11                0        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          11                1        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          12                0        0     564  sstunted         
6 months    GMS-Nepal        NEPAL                          12                1        0     564  sstunted         
6 months    Guatemala BSC    GUATEMALA                      1                 0       23     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      1                 1        5     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      2                 0       23     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      2                 1        2     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      3                 0       23     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      3                 1        4     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      4                 0       28     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      4                 1        3     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      5                 0       26     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      5                 1        5     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      6                 0       19     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      6                 1        3     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      7                 0       20     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      7                 1        1     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      8                 0       13     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      8                 1        1     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      9                 0       15     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      9                 1        1     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      10                0       28     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      10                1        1     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      11                0       24     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      11                1        0     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      12                0       30     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      12                1        1     299  sstunted         
6 months    IRC              INDIA                          1                 0       34     407  sstunted         
6 months    IRC              INDIA                          1                 1        4     407  sstunted         
6 months    IRC              INDIA                          2                 0       23     407  sstunted         
6 months    IRC              INDIA                          2                 1        5     407  sstunted         
6 months    IRC              INDIA                          3                 0       27     407  sstunted         
6 months    IRC              INDIA                          3                 1        0     407  sstunted         
6 months    IRC              INDIA                          4                 0       17     407  sstunted         
6 months    IRC              INDIA                          4                 1        4     407  sstunted         
6 months    IRC              INDIA                          5                 0       18     407  sstunted         
6 months    IRC              INDIA                          5                 1        3     407  sstunted         
6 months    IRC              INDIA                          6                 0       36     407  sstunted         
6 months    IRC              INDIA                          6                 1        1     407  sstunted         
6 months    IRC              INDIA                          7                 0       35     407  sstunted         
6 months    IRC              INDIA                          7                 1        1     407  sstunted         
6 months    IRC              INDIA                          8                 0       43     407  sstunted         
6 months    IRC              INDIA                          8                 1        1     407  sstunted         
6 months    IRC              INDIA                          9                 0       26     407  sstunted         
6 months    IRC              INDIA                          9                 1        1     407  sstunted         
6 months    IRC              INDIA                          10                0       37     407  sstunted         
6 months    IRC              INDIA                          10                1        0     407  sstunted         
6 months    IRC              INDIA                          11                0       35     407  sstunted         
6 months    IRC              INDIA                          11                1        5     407  sstunted         
6 months    IRC              INDIA                          12                0       47     407  sstunted         
6 months    IRC              INDIA                          12                1        4     407  sstunted         
6 months    JiVitA-3         BANGLADESH                     1                 0     1266   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     1                 1       74   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     2                 0     1100   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     2                 1       59   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     3                 0     1329   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     3                 1       82   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     4                 0     1108   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     4                 1       70   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     5                 0     1036   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     5                 1       77   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     6                 0     1146   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     6                 1       60   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     7                 0     1194   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     7                 1       65   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     8                 0     1438   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     8                 1       82   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     9                 0     1510   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     9                 1      110   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     10                0     1544   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     10                1      121   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     11                0     1638   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     11                1      121   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     12                0     1482   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     12                1       99   16811  sstunted         
6 months    JiVitA-4         BANGLADESH                     1                 0        0    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     1                 1        0    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     2                 0      514    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     2                 1       30    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     3                 0      903    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     3                 1       59    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     4                 0      685    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     4                 1       48    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     5                 0      568    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     5                 1       32    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     6                 0      413    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     6                 1       26    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     7                 0      485    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     7                 1       33    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     8                 0      500    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     8                 1       21    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     9                 0      369    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     9                 1       17    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     10                0      123    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     10                1        5    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     11                0        0    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     11                1        0    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     12                0        0    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     12                1        0    4831  sstunted         
6 months    Keneba           GAMBIA                         1                 0      203    2089  sstunted         
6 months    Keneba           GAMBIA                         1                 1        7    2089  sstunted         
6 months    Keneba           GAMBIA                         2                 0      178    2089  sstunted         
6 months    Keneba           GAMBIA                         2                 1        9    2089  sstunted         
6 months    Keneba           GAMBIA                         3                 0      211    2089  sstunted         
6 months    Keneba           GAMBIA                         3                 1       10    2089  sstunted         
6 months    Keneba           GAMBIA                         4                 0      141    2089  sstunted         
6 months    Keneba           GAMBIA                         4                 1        2    2089  sstunted         
6 months    Keneba           GAMBIA                         5                 0      139    2089  sstunted         
6 months    Keneba           GAMBIA                         5                 1        4    2089  sstunted         
6 months    Keneba           GAMBIA                         6                 0      111    2089  sstunted         
6 months    Keneba           GAMBIA                         6                 1        7    2089  sstunted         
6 months    Keneba           GAMBIA                         7                 0       87    2089  sstunted         
6 months    Keneba           GAMBIA                         7                 1        5    2089  sstunted         
6 months    Keneba           GAMBIA                         8                 0      169    2089  sstunted         
6 months    Keneba           GAMBIA                         8                 1        5    2089  sstunted         
6 months    Keneba           GAMBIA                         9                 0      169    2089  sstunted         
6 months    Keneba           GAMBIA                         9                 1        5    2089  sstunted         
6 months    Keneba           GAMBIA                         10                0      242    2089  sstunted         
6 months    Keneba           GAMBIA                         10                1        6    2089  sstunted         
6 months    Keneba           GAMBIA                         11                0      183    2089  sstunted         
6 months    Keneba           GAMBIA                         11                1        4    2089  sstunted         
6 months    Keneba           GAMBIA                         12                0      186    2089  sstunted         
6 months    Keneba           GAMBIA                         12                1        6    2089  sstunted         
6 months    LCNI-5           MALAWI                         1                 0       59     839  sstunted         
6 months    LCNI-5           MALAWI                         1                 1        9     839  sstunted         
6 months    LCNI-5           MALAWI                         2                 0       44     839  sstunted         
6 months    LCNI-5           MALAWI                         2                 1        2     839  sstunted         
6 months    LCNI-5           MALAWI                         3                 0       23     839  sstunted         
6 months    LCNI-5           MALAWI                         3                 1        3     839  sstunted         
6 months    LCNI-5           MALAWI                         4                 0       38     839  sstunted         
6 months    LCNI-5           MALAWI                         4                 1        1     839  sstunted         
6 months    LCNI-5           MALAWI                         5                 0       38     839  sstunted         
6 months    LCNI-5           MALAWI                         5                 1        6     839  sstunted         
6 months    LCNI-5           MALAWI                         6                 0       28     839  sstunted         
6 months    LCNI-5           MALAWI                         6                 1        6     839  sstunted         
6 months    LCNI-5           MALAWI                         7                 0       57     839  sstunted         
6 months    LCNI-5           MALAWI                         7                 1        4     839  sstunted         
6 months    LCNI-5           MALAWI                         8                 0       89     839  sstunted         
6 months    LCNI-5           MALAWI                         8                 1        4     839  sstunted         
6 months    LCNI-5           MALAWI                         9                 0       88     839  sstunted         
6 months    LCNI-5           MALAWI                         9                 1        5     839  sstunted         
6 months    LCNI-5           MALAWI                         10                0      117     839  sstunted         
6 months    LCNI-5           MALAWI                         10                1       18     839  sstunted         
6 months    LCNI-5           MALAWI                         11                0       96     839  sstunted         
6 months    LCNI-5           MALAWI                         11                1        9     839  sstunted         
6 months    LCNI-5           MALAWI                         12                0       91     839  sstunted         
6 months    LCNI-5           MALAWI                         12                1        4     839  sstunted         
6 months    MAL-ED           BANGLADESH                     1                 0       17     241  sstunted         
6 months    MAL-ED           BANGLADESH                     1                 1        1     241  sstunted         
6 months    MAL-ED           BANGLADESH                     2                 0       20     241  sstunted         
6 months    MAL-ED           BANGLADESH                     2                 1        0     241  sstunted         
6 months    MAL-ED           BANGLADESH                     3                 0       22     241  sstunted         
6 months    MAL-ED           BANGLADESH                     3                 1        1     241  sstunted         
6 months    MAL-ED           BANGLADESH                     4                 0       22     241  sstunted         
6 months    MAL-ED           BANGLADESH                     4                 1        0     241  sstunted         
6 months    MAL-ED           BANGLADESH                     5                 0       20     241  sstunted         
6 months    MAL-ED           BANGLADESH                     5                 1        1     241  sstunted         
6 months    MAL-ED           BANGLADESH                     6                 0       10     241  sstunted         
6 months    MAL-ED           BANGLADESH                     6                 1        0     241  sstunted         
6 months    MAL-ED           BANGLADESH                     7                 0       17     241  sstunted         
6 months    MAL-ED           BANGLADESH                     7                 1        1     241  sstunted         
6 months    MAL-ED           BANGLADESH                     8                 0       21     241  sstunted         
6 months    MAL-ED           BANGLADESH                     8                 1        2     241  sstunted         
6 months    MAL-ED           BANGLADESH                     9                 0       22     241  sstunted         
6 months    MAL-ED           BANGLADESH                     9                 1        0     241  sstunted         
6 months    MAL-ED           BANGLADESH                     10                0       20     241  sstunted         
6 months    MAL-ED           BANGLADESH                     10                1        2     241  sstunted         
6 months    MAL-ED           BANGLADESH                     11                0       16     241  sstunted         
6 months    MAL-ED           BANGLADESH                     11                1        0     241  sstunted         
6 months    MAL-ED           BANGLADESH                     12                0       26     241  sstunted         
6 months    MAL-ED           BANGLADESH                     12                1        0     241  sstunted         
6 months    MAL-ED           BRAZIL                         1                 0       15     209  sstunted         
6 months    MAL-ED           BRAZIL                         1                 1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         2                 0       23     209  sstunted         
6 months    MAL-ED           BRAZIL                         2                 1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         3                 0       16     209  sstunted         
6 months    MAL-ED           BRAZIL                         3                 1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         4                 0       11     209  sstunted         
6 months    MAL-ED           BRAZIL                         4                 1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         5                 0       21     209  sstunted         
6 months    MAL-ED           BRAZIL                         5                 1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         6                 0        8     209  sstunted         
6 months    MAL-ED           BRAZIL                         6                 1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         7                 0       16     209  sstunted         
6 months    MAL-ED           BRAZIL                         7                 1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         8                 0       16     209  sstunted         
6 months    MAL-ED           BRAZIL                         8                 1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         9                 0       30     209  sstunted         
6 months    MAL-ED           BRAZIL                         9                 1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         10                0       20     209  sstunted         
6 months    MAL-ED           BRAZIL                         10                1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         11                0       21     209  sstunted         
6 months    MAL-ED           BRAZIL                         11                1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         12                0       12     209  sstunted         
6 months    MAL-ED           BRAZIL                         12                1        0     209  sstunted         
6 months    MAL-ED           INDIA                          1                 0       18     236  sstunted         
6 months    MAL-ED           INDIA                          1                 1        1     236  sstunted         
6 months    MAL-ED           INDIA                          2                 0       18     236  sstunted         
6 months    MAL-ED           INDIA                          2                 1        0     236  sstunted         
6 months    MAL-ED           INDIA                          3                 0       22     236  sstunted         
6 months    MAL-ED           INDIA                          3                 1        0     236  sstunted         
6 months    MAL-ED           INDIA                          4                 0       15     236  sstunted         
6 months    MAL-ED           INDIA                          4                 1        0     236  sstunted         
6 months    MAL-ED           INDIA                          5                 0        8     236  sstunted         
6 months    MAL-ED           INDIA                          5                 1        0     236  sstunted         
6 months    MAL-ED           INDIA                          6                 0       19     236  sstunted         
6 months    MAL-ED           INDIA                          6                 1        0     236  sstunted         
6 months    MAL-ED           INDIA                          7                 0       20     236  sstunted         
6 months    MAL-ED           INDIA                          7                 1        3     236  sstunted         
6 months    MAL-ED           INDIA                          8                 0       21     236  sstunted         
6 months    MAL-ED           INDIA                          8                 1        1     236  sstunted         
6 months    MAL-ED           INDIA                          9                 0       19     236  sstunted         
6 months    MAL-ED           INDIA                          9                 1        1     236  sstunted         
6 months    MAL-ED           INDIA                          10                0       24     236  sstunted         
6 months    MAL-ED           INDIA                          10                1        2     236  sstunted         
6 months    MAL-ED           INDIA                          11                0       25     236  sstunted         
6 months    MAL-ED           INDIA                          11                1        0     236  sstunted         
6 months    MAL-ED           INDIA                          12                0       18     236  sstunted         
6 months    MAL-ED           INDIA                          12                1        1     236  sstunted         
6 months    MAL-ED           NEPAL                          1                 0       20     236  sstunted         
6 months    MAL-ED           NEPAL                          1                 1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          2                 0       18     236  sstunted         
6 months    MAL-ED           NEPAL                          2                 1        1     236  sstunted         
6 months    MAL-ED           NEPAL                          3                 0       17     236  sstunted         
6 months    MAL-ED           NEPAL                          3                 1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          4                 0       22     236  sstunted         
6 months    MAL-ED           NEPAL                          4                 1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          5                 0       20     236  sstunted         
6 months    MAL-ED           NEPAL                          5                 1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          6                 0       18     236  sstunted         
6 months    MAL-ED           NEPAL                          6                 1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          7                 0       18     236  sstunted         
6 months    MAL-ED           NEPAL                          7                 1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          8                 0       24     236  sstunted         
6 months    MAL-ED           NEPAL                          8                 1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          9                 0       16     236  sstunted         
6 months    MAL-ED           NEPAL                          9                 1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          10                0       21     236  sstunted         
6 months    MAL-ED           NEPAL                          10                1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          11                0       24     236  sstunted         
6 months    MAL-ED           NEPAL                          11                1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          12                0       17     236  sstunted         
6 months    MAL-ED           NEPAL                          12                1        0     236  sstunted         
6 months    MAL-ED           PERU                           1                 0       36     273  sstunted         
6 months    MAL-ED           PERU                           1                 1        2     273  sstunted         
6 months    MAL-ED           PERU                           2                 0       18     273  sstunted         
6 months    MAL-ED           PERU                           2                 1        1     273  sstunted         
6 months    MAL-ED           PERU                           3                 0       21     273  sstunted         
6 months    MAL-ED           PERU                           3                 1        1     273  sstunted         
6 months    MAL-ED           PERU                           4                 0       19     273  sstunted         
6 months    MAL-ED           PERU                           4                 1        1     273  sstunted         
6 months    MAL-ED           PERU                           5                 0       27     273  sstunted         
6 months    MAL-ED           PERU                           5                 1        0     273  sstunted         
6 months    MAL-ED           PERU                           6                 0       14     273  sstunted         
6 months    MAL-ED           PERU                           6                 1        1     273  sstunted         
6 months    MAL-ED           PERU                           7                 0       22     273  sstunted         
6 months    MAL-ED           PERU                           7                 1        0     273  sstunted         
6 months    MAL-ED           PERU                           8                 0       16     273  sstunted         
6 months    MAL-ED           PERU                           8                 1        0     273  sstunted         
6 months    MAL-ED           PERU                           9                 0       23     273  sstunted         
6 months    MAL-ED           PERU                           9                 1        0     273  sstunted         
6 months    MAL-ED           PERU                           10                0       20     273  sstunted         
6 months    MAL-ED           PERU                           10                1        0     273  sstunted         
6 months    MAL-ED           PERU                           11                0       28     273  sstunted         
6 months    MAL-ED           PERU                           11                1        4     273  sstunted         
6 months    MAL-ED           PERU                           12                0       19     273  sstunted         
6 months    MAL-ED           PERU                           12                1        0     273  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                 0       36     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                 1        2     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   2                 0       23     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   2                 1        0     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   3                 0       15     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   3                 1        0     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   4                 0       13     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   4                 1        0     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   5                 0       12     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   5                 1        1     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   6                 0       18     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   6                 1        0     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   7                 0       22     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   7                 1        0     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   8                 0        9     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   8                 1        0     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   9                 0       18     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   9                 1        0     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   10                0       25     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   10                1        1     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   11                0       23     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   11                1        1     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   12                0       34     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   12                1        1     254  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       18     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        2     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 0       29     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 1        1     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 0       16     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 1        2     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 0        9     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 1        0     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 0       15     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 1        1     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 0       19     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 1        0     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 0       21     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 1        2     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 0       11     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 1        1     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 0       21     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 1        0     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                0       20     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                1        2     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                0       25     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                1        2     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                0       29     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                1        1     247  sstunted         
6 months    NIH-Birth        BANGLADESH                     1                 0       48     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     1                 1        4     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     2                 0       47     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     2                 1        2     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     3                 0       46     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     3                 1        4     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     4                 0       40     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     4                 1        2     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     5                 0       40     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     5                 1        2     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     6                 0       38     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     6                 1        5     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     7                 0       38     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     7                 1        1     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     8                 0       33     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     8                 1        2     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     9                 0       40     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     9                 1        2     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     10                0       38     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     10                1        4     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     11                0       45     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     11                1        5     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     12                0       49     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     12                1        2     537  sstunted         
6 months    PROBIT           BELARUS                        1                 0      960   15760  sstunted         
6 months    PROBIT           BELARUS                        1                 1       16   15760  sstunted         
6 months    PROBIT           BELARUS                        2                 0      924   15760  sstunted         
6 months    PROBIT           BELARUS                        2                 1        9   15760  sstunted         
6 months    PROBIT           BELARUS                        3                 0     1051   15760  sstunted         
6 months    PROBIT           BELARUS                        3                 1       15   15760  sstunted         
6 months    PROBIT           BELARUS                        4                 0     1079   15760  sstunted         
6 months    PROBIT           BELARUS                        4                 1       18   15760  sstunted         
6 months    PROBIT           BELARUS                        5                 0     1104   15760  sstunted         
6 months    PROBIT           BELARUS                        5                 1        7   15760  sstunted         
6 months    PROBIT           BELARUS                        6                 0     1101   15760  sstunted         
6 months    PROBIT           BELARUS                        6                 1       14   15760  sstunted         
6 months    PROBIT           BELARUS                        7                 0     1448   15760  sstunted         
6 months    PROBIT           BELARUS                        7                 1       15   15760  sstunted         
6 months    PROBIT           BELARUS                        8                 0     1459   15760  sstunted         
6 months    PROBIT           BELARUS                        8                 1       14   15760  sstunted         
6 months    PROBIT           BELARUS                        9                 0     1495   15760  sstunted         
6 months    PROBIT           BELARUS                        9                 1       14   15760  sstunted         
6 months    PROBIT           BELARUS                        10                0     1671   15760  sstunted         
6 months    PROBIT           BELARUS                        10                1       18   15760  sstunted         
6 months    PROBIT           BELARUS                        11                0     1570   15760  sstunted         
6 months    PROBIT           BELARUS                        11                1       19   15760  sstunted         
6 months    PROBIT           BELARUS                        12                0     1721   15760  sstunted         
6 months    PROBIT           BELARUS                        12                1       18   15760  sstunted         
6 months    PROVIDE          BANGLADESH                     1                 0       35     604  sstunted         
6 months    PROVIDE          BANGLADESH                     1                 1        0     604  sstunted         
6 months    PROVIDE          BANGLADESH                     2                 0       32     604  sstunted         
6 months    PROVIDE          BANGLADESH                     2                 1        0     604  sstunted         
6 months    PROVIDE          BANGLADESH                     3                 0       42     604  sstunted         
6 months    PROVIDE          BANGLADESH                     3                 1        1     604  sstunted         
6 months    PROVIDE          BANGLADESH                     4                 0       35     604  sstunted         
6 months    PROVIDE          BANGLADESH                     4                 1        1     604  sstunted         
6 months    PROVIDE          BANGLADESH                     5                 0       40     604  sstunted         
6 months    PROVIDE          BANGLADESH                     5                 1        0     604  sstunted         
6 months    PROVIDE          BANGLADESH                     6                 0       73     604  sstunted         
6 months    PROVIDE          BANGLADESH                     6                 1        4     604  sstunted         
6 months    PROVIDE          BANGLADESH                     7                 0       74     604  sstunted         
6 months    PROVIDE          BANGLADESH                     7                 1        2     604  sstunted         
6 months    PROVIDE          BANGLADESH                     8                 0       59     604  sstunted         
6 months    PROVIDE          BANGLADESH                     8                 1        2     604  sstunted         
6 months    PROVIDE          BANGLADESH                     9                 0       64     604  sstunted         
6 months    PROVIDE          BANGLADESH                     9                 1        3     604  sstunted         
6 months    PROVIDE          BANGLADESH                     10                0       67     604  sstunted         
6 months    PROVIDE          BANGLADESH                     10                1        0     604  sstunted         
6 months    PROVIDE          BANGLADESH                     11                0       40     604  sstunted         
6 months    PROVIDE          BANGLADESH                     11                1        1     604  sstunted         
6 months    PROVIDE          BANGLADESH                     12                0       29     604  sstunted         
6 months    PROVIDE          BANGLADESH                     12                1        0     604  sstunted         
6 months    ResPak           PAKISTAN                       1                 0       10     239  sstunted         
6 months    ResPak           PAKISTAN                       1                 1        1     239  sstunted         
6 months    ResPak           PAKISTAN                       2                 0       10     239  sstunted         
6 months    ResPak           PAKISTAN                       2                 1        0     239  sstunted         
6 months    ResPak           PAKISTAN                       3                 0       14     239  sstunted         
6 months    ResPak           PAKISTAN                       3                 1       11     239  sstunted         
6 months    ResPak           PAKISTAN                       4                 0       17     239  sstunted         
6 months    ResPak           PAKISTAN                       4                 1        7     239  sstunted         
6 months    ResPak           PAKISTAN                       5                 0       35     239  sstunted         
6 months    ResPak           PAKISTAN                       5                 1       10     239  sstunted         
6 months    ResPak           PAKISTAN                       6                 0       37     239  sstunted         
6 months    ResPak           PAKISTAN                       6                 1        4     239  sstunted         
6 months    ResPak           PAKISTAN                       7                 0       20     239  sstunted         
6 months    ResPak           PAKISTAN                       7                 1        4     239  sstunted         
6 months    ResPak           PAKISTAN                       8                 0       28     239  sstunted         
6 months    ResPak           PAKISTAN                       8                 1        6     239  sstunted         
6 months    ResPak           PAKISTAN                       9                 0       14     239  sstunted         
6 months    ResPak           PAKISTAN                       9                 1        2     239  sstunted         
6 months    ResPak           PAKISTAN                       10                0        4     239  sstunted         
6 months    ResPak           PAKISTAN                       10                1        0     239  sstunted         
6 months    ResPak           PAKISTAN                       11                0        2     239  sstunted         
6 months    ResPak           PAKISTAN                       11                1        0     239  sstunted         
6 months    ResPak           PAKISTAN                       12                0        1     239  sstunted         
6 months    ResPak           PAKISTAN                       12                1        2     239  sstunted         
6 months    SAS-CompFeed     INDIA                          1                 0       77    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          1                 1       10    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          2                 0       77    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          2                 1        6    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          3                 0       67    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          3                 1        7    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          4                 0       64    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          4                 1        2    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          5                 0       78    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          5                 1        9    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          6                 0       82    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          6                 1       14    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          7                 0      105    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          7                 1       17    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          8                 0      144    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          8                 1       18    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          9                 0      162    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          9                 1       12    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          10                0      138    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          10                1       11    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          11                0      109    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          11                1        9    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          12                0      105    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          12                1       13    1336  sstunted         
6 months    SAS-FoodSuppl    INDIA                          1                 0       21     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          1                 1        3     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          2                 0       26     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          2                 1        7     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          3                 0       19     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          3                 1        1     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          4                 0        4     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          4                 1        0     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          5                 0       11     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          5                 1        1     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          6                 0       16     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          6                 1        5     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          7                 0       30     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          7                 1        3     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          8                 0       57     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          8                 1        6     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          9                 0       51     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          9                 1       11     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          10                0       39     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          10                1        8     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          11                0       23     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          11                1        4     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          12                0       29     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          12                1        5     380  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      140    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        2    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      148    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1        1    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 0      138    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 1        2    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 0      153    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 1        0    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 0      148    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 1        1    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 0      142    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 1        1    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 0      193    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 1        2    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 0      196    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 1        3    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 0      183    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 1        1    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                0      203    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                1        5    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                0      194    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                1        1    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                0      172    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                1        0    2029  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       1                 0      795    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       1                 1       29    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       2                 0      599    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       2                 1       21    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       3                 0      720    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       3                 1       47    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       4                 0      632    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       4                 1       25    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       5                 0      618    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       5                 1       24    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       6                 0      639    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       6                 1       33    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       7                 0      638    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       7                 1       36    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       8                 0      762    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       8                 1       22    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       9                 0      754    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       9                 1       26    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       10                0      602    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       10                1       24    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       11                0      764    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       11                1       31    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       12                0      795    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       12                1       33    8669  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                 0       26     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                 1        8     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          2                 0        9     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          2                 1        7     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          3                 0       18     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          3                 1       13     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          4                 0       28     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          4                 1       16     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          5                 0       21     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          5                 1       14     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          6                 0       26     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          6                 1       11     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          7                 0       29     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          7                 1       10     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          8                 0       12     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          8                 1        5     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          9                 0       18     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          9                 1        3     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          10                0       20     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          10                1        9     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          11                0       28     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          11                1       15     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          12                0       11     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          12                1       14     371  sstunted         
24 months   CMIN             BANGLADESH                     1                 0       17     242  sstunted         
24 months   CMIN             BANGLADESH                     1                 1        9     242  sstunted         
24 months   CMIN             BANGLADESH                     2                 0       19     242  sstunted         
24 months   CMIN             BANGLADESH                     2                 1        5     242  sstunted         
24 months   CMIN             BANGLADESH                     3                 0       16     242  sstunted         
24 months   CMIN             BANGLADESH                     3                 1        2     242  sstunted         
24 months   CMIN             BANGLADESH                     4                 0       16     242  sstunted         
24 months   CMIN             BANGLADESH                     4                 1        6     242  sstunted         
24 months   CMIN             BANGLADESH                     5                 0       15     242  sstunted         
24 months   CMIN             BANGLADESH                     5                 1        1     242  sstunted         
24 months   CMIN             BANGLADESH                     6                 0        3     242  sstunted         
24 months   CMIN             BANGLADESH                     6                 1        5     242  sstunted         
24 months   CMIN             BANGLADESH                     7                 0       13     242  sstunted         
24 months   CMIN             BANGLADESH                     7                 1        2     242  sstunted         
24 months   CMIN             BANGLADESH                     8                 0        9     242  sstunted         
24 months   CMIN             BANGLADESH                     8                 1        9     242  sstunted         
24 months   CMIN             BANGLADESH                     9                 0       16     242  sstunted         
24 months   CMIN             BANGLADESH                     9                 1        4     242  sstunted         
24 months   CMIN             BANGLADESH                     10                0       14     242  sstunted         
24 months   CMIN             BANGLADESH                     10                1       10     242  sstunted         
24 months   CMIN             BANGLADESH                     11                0       18     242  sstunted         
24 months   CMIN             BANGLADESH                     11                1        7     242  sstunted         
24 months   CMIN             BANGLADESH                     12                0       18     242  sstunted         
24 months   CMIN             BANGLADESH                     12                1        8     242  sstunted         
24 months   CONTENT          PERU                           1                 0        7     164  sstunted         
24 months   CONTENT          PERU                           1                 1        0     164  sstunted         
24 months   CONTENT          PERU                           2                 0       14     164  sstunted         
24 months   CONTENT          PERU                           2                 1        0     164  sstunted         
24 months   CONTENT          PERU                           3                 0       22     164  sstunted         
24 months   CONTENT          PERU                           3                 1        0     164  sstunted         
24 months   CONTENT          PERU                           4                 0       15     164  sstunted         
24 months   CONTENT          PERU                           4                 1        0     164  sstunted         
24 months   CONTENT          PERU                           5                 0       14     164  sstunted         
24 months   CONTENT          PERU                           5                 1        0     164  sstunted         
24 months   CONTENT          PERU                           6                 0       11     164  sstunted         
24 months   CONTENT          PERU                           6                 1        0     164  sstunted         
24 months   CONTENT          PERU                           7                 0       23     164  sstunted         
24 months   CONTENT          PERU                           7                 1        0     164  sstunted         
24 months   CONTENT          PERU                           8                 0       13     164  sstunted         
24 months   CONTENT          PERU                           8                 1        1     164  sstunted         
24 months   CONTENT          PERU                           9                 0       17     164  sstunted         
24 months   CONTENT          PERU                           9                 1        0     164  sstunted         
24 months   CONTENT          PERU                           10                0       11     164  sstunted         
24 months   CONTENT          PERU                           10                1        0     164  sstunted         
24 months   CONTENT          PERU                           11                0        6     164  sstunted         
24 months   CONTENT          PERU                           11                1        0     164  sstunted         
24 months   CONTENT          PERU                           12                0       10     164  sstunted         
24 months   CONTENT          PERU                           12                1        0     164  sstunted         
24 months   EE               PAKISTAN                       1                 0       10     167  sstunted         
24 months   EE               PAKISTAN                       1                 1        3     167  sstunted         
24 months   EE               PAKISTAN                       2                 0        1     167  sstunted         
24 months   EE               PAKISTAN                       2                 1        3     167  sstunted         
24 months   EE               PAKISTAN                       3                 0        0     167  sstunted         
24 months   EE               PAKISTAN                       3                 1        0     167  sstunted         
24 months   EE               PAKISTAN                       4                 0        0     167  sstunted         
24 months   EE               PAKISTAN                       4                 1        0     167  sstunted         
24 months   EE               PAKISTAN                       5                 0        0     167  sstunted         
24 months   EE               PAKISTAN                       5                 1        0     167  sstunted         
24 months   EE               PAKISTAN                       6                 0        0     167  sstunted         
24 months   EE               PAKISTAN                       6                 1        0     167  sstunted         
24 months   EE               PAKISTAN                       7                 0        0     167  sstunted         
24 months   EE               PAKISTAN                       7                 1        0     167  sstunted         
24 months   EE               PAKISTAN                       8                 0        0     167  sstunted         
24 months   EE               PAKISTAN                       8                 1        0     167  sstunted         
24 months   EE               PAKISTAN                       9                 0        0     167  sstunted         
24 months   EE               PAKISTAN                       9                 1        0     167  sstunted         
24 months   EE               PAKISTAN                       10                0        3     167  sstunted         
24 months   EE               PAKISTAN                       10                1        1     167  sstunted         
24 months   EE               PAKISTAN                       11                0       45     167  sstunted         
24 months   EE               PAKISTAN                       11                1       21     167  sstunted         
24 months   EE               PAKISTAN                       12                0       49     167  sstunted         
24 months   EE               PAKISTAN                       12                1       31     167  sstunted         
24 months   GMS-Nepal        NEPAL                          1                 0        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          1                 1        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          2                 0        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          2                 1        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          3                 0        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          3                 1        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          4                 0        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          4                 1        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          5                 0        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          5                 1        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          6                 0       71     488  sstunted         
24 months   GMS-Nepal        NEPAL                          6                 1        9     488  sstunted         
24 months   GMS-Nepal        NEPAL                          7                 0      183     488  sstunted         
24 months   GMS-Nepal        NEPAL                          7                 1       23     488  sstunted         
24 months   GMS-Nepal        NEPAL                          8                 0      181     488  sstunted         
24 months   GMS-Nepal        NEPAL                          8                 1       21     488  sstunted         
24 months   GMS-Nepal        NEPAL                          9                 0        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          9                 1        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          10                0        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          10                1        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          11                0        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          11                1        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          12                0        0     488  sstunted         
24 months   GMS-Nepal        NEPAL                          12                1        0     488  sstunted         
24 months   IRC              INDIA                          1                 0       33     409  sstunted         
24 months   IRC              INDIA                          1                 1        5     409  sstunted         
24 months   IRC              INDIA                          2                 0       24     409  sstunted         
24 months   IRC              INDIA                          2                 1        4     409  sstunted         
24 months   IRC              INDIA                          3                 0       23     409  sstunted         
24 months   IRC              INDIA                          3                 1        4     409  sstunted         
24 months   IRC              INDIA                          4                 0       18     409  sstunted         
24 months   IRC              INDIA                          4                 1        3     409  sstunted         
24 months   IRC              INDIA                          5                 0       16     409  sstunted         
24 months   IRC              INDIA                          5                 1        6     409  sstunted         
24 months   IRC              INDIA                          6                 0       36     409  sstunted         
24 months   IRC              INDIA                          6                 1        1     409  sstunted         
24 months   IRC              INDIA                          7                 0       36     409  sstunted         
24 months   IRC              INDIA                          7                 1        0     409  sstunted         
24 months   IRC              INDIA                          8                 0       40     409  sstunted         
24 months   IRC              INDIA                          8                 1        4     409  sstunted         
24 months   IRC              INDIA                          9                 0       24     409  sstunted         
24 months   IRC              INDIA                          9                 1        3     409  sstunted         
24 months   IRC              INDIA                          10                0       36     409  sstunted         
24 months   IRC              INDIA                          10                1        1     409  sstunted         
24 months   IRC              INDIA                          11                0       38     409  sstunted         
24 months   IRC              INDIA                          11                1        2     409  sstunted         
24 months   IRC              INDIA                          12                0       44     409  sstunted         
24 months   IRC              INDIA                          12                1        8     409  sstunted         
24 months   JiVitA-3         BANGLADESH                     1                 0      550    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     1                 1      116    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     2                 0      453    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     2                 1      108    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     3                 0      613    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     3                 1      105    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     4                 0      442    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     4                 1       63    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     5                 0      305    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     5                 1       62    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     6                 0      532    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     6                 1       81    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     7                 0      586    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     7                 1       85    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     8                 0      537    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     8                 1       83    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     9                 0      704    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     9                 1       97    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     10                0      743    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     10                1      130    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     11                0      841    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     11                1      200    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     12                0      979    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     12                1      217    8632  sstunted         
24 months   JiVitA-4         BANGLADESH                     1                 0        0    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     1                 1        0    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     2                 0      692    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     2                 1       98    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     3                 0      760    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     3                 1       95    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     4                 0      572    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     4                 1       81    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     5                 0      513    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     5                 1       50    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     6                 0      388    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     6                 1       31    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     7                 0      447    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     7                 1       37    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     8                 0      472    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     8                 1       31    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     9                 0      339    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     9                 1       25    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     10                0      116    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     10                1        5    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     11                0        0    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     11                1        0    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     12                0        0    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     12                1        0    4752  sstunted         
24 months   Keneba           GAMBIA                         1                 0      159    1725  sstunted         
24 months   Keneba           GAMBIA                         1                 1       12    1725  sstunted         
24 months   Keneba           GAMBIA                         2                 0      148    1725  sstunted         
24 months   Keneba           GAMBIA                         2                 1       19    1725  sstunted         
24 months   Keneba           GAMBIA                         3                 0      158    1725  sstunted         
24 months   Keneba           GAMBIA                         3                 1       12    1725  sstunted         
24 months   Keneba           GAMBIA                         4                 0      105    1725  sstunted         
24 months   Keneba           GAMBIA                         4                 1        9    1725  sstunted         
24 months   Keneba           GAMBIA                         5                 0      117    1725  sstunted         
24 months   Keneba           GAMBIA                         5                 1        5    1725  sstunted         
24 months   Keneba           GAMBIA                         6                 0       85    1725  sstunted         
24 months   Keneba           GAMBIA                         6                 1        7    1725  sstunted         
24 months   Keneba           GAMBIA                         7                 0       75    1725  sstunted         
24 months   Keneba           GAMBIA                         7                 1        6    1725  sstunted         
24 months   Keneba           GAMBIA                         8                 0      149    1725  sstunted         
24 months   Keneba           GAMBIA                         8                 1        9    1725  sstunted         
24 months   Keneba           GAMBIA                         9                 0      143    1725  sstunted         
24 months   Keneba           GAMBIA                         9                 1       16    1725  sstunted         
24 months   Keneba           GAMBIA                         10                0      187    1725  sstunted         
24 months   Keneba           GAMBIA                         10                1       13    1725  sstunted         
24 months   Keneba           GAMBIA                         11                0      127    1725  sstunted         
24 months   Keneba           GAMBIA                         11                1       14    1725  sstunted         
24 months   Keneba           GAMBIA                         12                0      132    1725  sstunted         
24 months   Keneba           GAMBIA                         12                1       18    1725  sstunted         
24 months   LCNI-5           MALAWI                         1                 0       36     579  sstunted         
24 months   LCNI-5           MALAWI                         1                 1        5     579  sstunted         
24 months   LCNI-5           MALAWI                         2                 0       30     579  sstunted         
24 months   LCNI-5           MALAWI                         2                 1        0     579  sstunted         
24 months   LCNI-5           MALAWI                         3                 0       18     579  sstunted         
24 months   LCNI-5           MALAWI                         3                 1        1     579  sstunted         
24 months   LCNI-5           MALAWI                         4                 0       27     579  sstunted         
24 months   LCNI-5           MALAWI                         4                 1        1     579  sstunted         
24 months   LCNI-5           MALAWI                         5                 0       25     579  sstunted         
24 months   LCNI-5           MALAWI                         5                 1        6     579  sstunted         
24 months   LCNI-5           MALAWI                         6                 0       19     579  sstunted         
24 months   LCNI-5           MALAWI                         6                 1        5     579  sstunted         
24 months   LCNI-5           MALAWI                         7                 0       41     579  sstunted         
24 months   LCNI-5           MALAWI                         7                 1        6     579  sstunted         
24 months   LCNI-5           MALAWI                         8                 0       67     579  sstunted         
24 months   LCNI-5           MALAWI                         8                 1        4     579  sstunted         
24 months   LCNI-5           MALAWI                         9                 0       63     579  sstunted         
24 months   LCNI-5           MALAWI                         9                 1        4     579  sstunted         
24 months   LCNI-5           MALAWI                         10                0       75     579  sstunted         
24 months   LCNI-5           MALAWI                         10                1       18     579  sstunted         
24 months   LCNI-5           MALAWI                         11                0       57     579  sstunted         
24 months   LCNI-5           MALAWI                         11                1        7     579  sstunted         
24 months   LCNI-5           MALAWI                         12                0       51     579  sstunted         
24 months   LCNI-5           MALAWI                         12                1       13     579  sstunted         
24 months   MAL-ED           BANGLADESH                     1                 0       13     212  sstunted         
24 months   MAL-ED           BANGLADESH                     1                 1        1     212  sstunted         
24 months   MAL-ED           BANGLADESH                     2                 0       12     212  sstunted         
24 months   MAL-ED           BANGLADESH                     2                 1        5     212  sstunted         
24 months   MAL-ED           BANGLADESH                     3                 0       18     212  sstunted         
24 months   MAL-ED           BANGLADESH                     3                 1        1     212  sstunted         
24 months   MAL-ED           BANGLADESH                     4                 0       19     212  sstunted         
24 months   MAL-ED           BANGLADESH                     4                 1        1     212  sstunted         
24 months   MAL-ED           BANGLADESH                     5                 0       14     212  sstunted         
24 months   MAL-ED           BANGLADESH                     5                 1        5     212  sstunted         
24 months   MAL-ED           BANGLADESH                     6                 0        7     212  sstunted         
24 months   MAL-ED           BANGLADESH                     6                 1        0     212  sstunted         
24 months   MAL-ED           BANGLADESH                     7                 0       16     212  sstunted         
24 months   MAL-ED           BANGLADESH                     7                 1        2     212  sstunted         
24 months   MAL-ED           BANGLADESH                     8                 0       15     212  sstunted         
24 months   MAL-ED           BANGLADESH                     8                 1        7     212  sstunted         
24 months   MAL-ED           BANGLADESH                     9                 0       17     212  sstunted         
24 months   MAL-ED           BANGLADESH                     9                 1        1     212  sstunted         
24 months   MAL-ED           BANGLADESH                     10                0       16     212  sstunted         
24 months   MAL-ED           BANGLADESH                     10                1        4     212  sstunted         
24 months   MAL-ED           BANGLADESH                     11                0       10     212  sstunted         
24 months   MAL-ED           BANGLADESH                     11                1        1     212  sstunted         
24 months   MAL-ED           BANGLADESH                     12                0       27     212  sstunted         
24 months   MAL-ED           BANGLADESH                     12                1        0     212  sstunted         
24 months   MAL-ED           BRAZIL                         1                 0       15     169  sstunted         
24 months   MAL-ED           BRAZIL                         1                 1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         2                 0       16     169  sstunted         
24 months   MAL-ED           BRAZIL                         2                 1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         3                 0       14     169  sstunted         
24 months   MAL-ED           BRAZIL                         3                 1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         4                 0       10     169  sstunted         
24 months   MAL-ED           BRAZIL                         4                 1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         5                 0       15     169  sstunted         
24 months   MAL-ED           BRAZIL                         5                 1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         6                 0        6     169  sstunted         
24 months   MAL-ED           BRAZIL                         6                 1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         7                 0        9     169  sstunted         
24 months   MAL-ED           BRAZIL                         7                 1        1     169  sstunted         
24 months   MAL-ED           BRAZIL                         8                 0       13     169  sstunted         
24 months   MAL-ED           BRAZIL                         8                 1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         9                 0       27     169  sstunted         
24 months   MAL-ED           BRAZIL                         9                 1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         10                0       14     169  sstunted         
24 months   MAL-ED           BRAZIL                         10                1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         11                0       18     169  sstunted         
24 months   MAL-ED           BRAZIL                         11                1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         12                0       11     169  sstunted         
24 months   MAL-ED           BRAZIL                         12                1        0     169  sstunted         
24 months   MAL-ED           INDIA                          1                 0       15     227  sstunted         
24 months   MAL-ED           INDIA                          1                 1        4     227  sstunted         
24 months   MAL-ED           INDIA                          2                 0       17     227  sstunted         
24 months   MAL-ED           INDIA                          2                 1        1     227  sstunted         
24 months   MAL-ED           INDIA                          3                 0       18     227  sstunted         
24 months   MAL-ED           INDIA                          3                 1        1     227  sstunted         
24 months   MAL-ED           INDIA                          4                 0       11     227  sstunted         
24 months   MAL-ED           INDIA                          4                 1        3     227  sstunted         
24 months   MAL-ED           INDIA                          5                 0        7     227  sstunted         
24 months   MAL-ED           INDIA                          5                 1        1     227  sstunted         
24 months   MAL-ED           INDIA                          6                 0       18     227  sstunted         
24 months   MAL-ED           INDIA                          6                 1        0     227  sstunted         
24 months   MAL-ED           INDIA                          7                 0       19     227  sstunted         
24 months   MAL-ED           INDIA                          7                 1        4     227  sstunted         
24 months   MAL-ED           INDIA                          8                 0       18     227  sstunted         
24 months   MAL-ED           INDIA                          8                 1        3     227  sstunted         
24 months   MAL-ED           INDIA                          9                 0       15     227  sstunted         
24 months   MAL-ED           INDIA                          9                 1        3     227  sstunted         
24 months   MAL-ED           INDIA                          10                0       22     227  sstunted         
24 months   MAL-ED           INDIA                          10                1        4     227  sstunted         
24 months   MAL-ED           INDIA                          11                0       20     227  sstunted         
24 months   MAL-ED           INDIA                          11                1        4     227  sstunted         
24 months   MAL-ED           INDIA                          12                0       17     227  sstunted         
24 months   MAL-ED           INDIA                          12                1        2     227  sstunted         
24 months   MAL-ED           NEPAL                          1                 0       18     228  sstunted         
24 months   MAL-ED           NEPAL                          1                 1        1     228  sstunted         
24 months   MAL-ED           NEPAL                          2                 0       16     228  sstunted         
24 months   MAL-ED           NEPAL                          2                 1        1     228  sstunted         
24 months   MAL-ED           NEPAL                          3                 0       14     228  sstunted         
24 months   MAL-ED           NEPAL                          3                 1        3     228  sstunted         
24 months   MAL-ED           NEPAL                          4                 0       22     228  sstunted         
24 months   MAL-ED           NEPAL                          4                 1        0     228  sstunted         
24 months   MAL-ED           NEPAL                          5                 0       18     228  sstunted         
24 months   MAL-ED           NEPAL                          5                 1        1     228  sstunted         
24 months   MAL-ED           NEPAL                          6                 0       18     228  sstunted         
24 months   MAL-ED           NEPAL                          6                 1        0     228  sstunted         
24 months   MAL-ED           NEPAL                          7                 0       17     228  sstunted         
24 months   MAL-ED           NEPAL                          7                 1        0     228  sstunted         
24 months   MAL-ED           NEPAL                          8                 0       24     228  sstunted         
24 months   MAL-ED           NEPAL                          8                 1        0     228  sstunted         
24 months   MAL-ED           NEPAL                          9                 0       14     228  sstunted         
24 months   MAL-ED           NEPAL                          9                 1        1     228  sstunted         
24 months   MAL-ED           NEPAL                          10                0       20     228  sstunted         
24 months   MAL-ED           NEPAL                          10                1        0     228  sstunted         
24 months   MAL-ED           NEPAL                          11                0       24     228  sstunted         
24 months   MAL-ED           NEPAL                          11                1        0     228  sstunted         
24 months   MAL-ED           NEPAL                          12                0       16     228  sstunted         
24 months   MAL-ED           NEPAL                          12                1        0     228  sstunted         
24 months   MAL-ED           PERU                           1                 0       26     201  sstunted         
24 months   MAL-ED           PERU                           1                 1        4     201  sstunted         
24 months   MAL-ED           PERU                           2                 0       16     201  sstunted         
24 months   MAL-ED           PERU                           2                 1        1     201  sstunted         
24 months   MAL-ED           PERU                           3                 0       15     201  sstunted         
24 months   MAL-ED           PERU                           3                 1        0     201  sstunted         
24 months   MAL-ED           PERU                           4                 0        9     201  sstunted         
24 months   MAL-ED           PERU                           4                 1        2     201  sstunted         
24 months   MAL-ED           PERU                           5                 0       17     201  sstunted         
24 months   MAL-ED           PERU                           5                 1        2     201  sstunted         
24 months   MAL-ED           PERU                           6                 0       10     201  sstunted         
24 months   MAL-ED           PERU                           6                 1        1     201  sstunted         
24 months   MAL-ED           PERU                           7                 0       15     201  sstunted         
24 months   MAL-ED           PERU                           7                 1        0     201  sstunted         
24 months   MAL-ED           PERU                           8                 0       11     201  sstunted         
24 months   MAL-ED           PERU                           8                 1        1     201  sstunted         
24 months   MAL-ED           PERU                           9                 0       21     201  sstunted         
24 months   MAL-ED           PERU                           9                 1        0     201  sstunted         
24 months   MAL-ED           PERU                           10                0       14     201  sstunted         
24 months   MAL-ED           PERU                           10                1        0     201  sstunted         
24 months   MAL-ED           PERU                           11                0       18     201  sstunted         
24 months   MAL-ED           PERU                           11                1        3     201  sstunted         
24 months   MAL-ED           PERU                           12                0       14     201  sstunted         
24 months   MAL-ED           PERU                           12                1        1     201  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                 0       27     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                 1        7     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   2                 0       18     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   2                 1        4     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   3                 0       12     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   3                 1        2     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   4                 0       11     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   4                 1        1     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   5                 0       12     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   5                 1        0     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   6                 0       15     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   6                 1        1     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   7                 0       20     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   7                 1        2     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   8                 0        8     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   8                 1        0     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   9                 0       19     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   9                 1        0     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   10                0       22     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   10                1        3     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   11                0       19     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   11                1        4     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   12                0       28     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   12                1        3     238  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       12     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        3     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 0       14     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 1        8     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 0        9     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 1        9     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 0        3     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 1        3     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 0       14     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 1        4     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 0       15     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 1        3     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 0       16     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 1        7     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 0        8     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 1        3     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 0       13     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 1        5     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                0        8     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                1        7     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                0       15     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                1        9     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                0       17     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                1        9     214  sstunted         
24 months   NIH-Birth        BANGLADESH                     1                 0       34     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     1                 1        9     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     2                 0       32     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     2                 1        4     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     3                 0       33     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     3                 1        6     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     4                 0       24     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     4                 1       10     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     5                 0       26     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     5                 1        9     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     6                 0       26     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     6                 1        7     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     7                 0       29     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     7                 1        5     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     8                 0       19     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     8                 1        8     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     9                 0       21     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     9                 1        5     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     10                0       24     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     10                1        9     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     11                0       30     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     11                1       13     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     12                0       36     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     12                1       10     429  sstunted         
24 months   PROBIT           BELARUS                        1                 0      249    4035  sstunted         
24 months   PROBIT           BELARUS                        1                 1        3    4035  sstunted         
24 months   PROBIT           BELARUS                        2                 0      212    4035  sstunted         
24 months   PROBIT           BELARUS                        2                 1        2    4035  sstunted         
24 months   PROBIT           BELARUS                        3                 0      316    4035  sstunted         
24 months   PROBIT           BELARUS                        3                 1        1    4035  sstunted         
24 months   PROBIT           BELARUS                        4                 0      331    4035  sstunted         
24 months   PROBIT           BELARUS                        4                 1        4    4035  sstunted         
24 months   PROBIT           BELARUS                        5                 0      300    4035  sstunted         
24 months   PROBIT           BELARUS                        5                 1        2    4035  sstunted         
24 months   PROBIT           BELARUS                        6                 0      266    4035  sstunted         
24 months   PROBIT           BELARUS                        6                 1        3    4035  sstunted         
24 months   PROBIT           BELARUS                        7                 0      375    4035  sstunted         
24 months   PROBIT           BELARUS                        7                 1        4    4035  sstunted         
24 months   PROBIT           BELARUS                        8                 0      341    4035  sstunted         
24 months   PROBIT           BELARUS                        8                 1        3    4035  sstunted         
24 months   PROBIT           BELARUS                        9                 0      381    4035  sstunted         
24 months   PROBIT           BELARUS                        9                 1        6    4035  sstunted         
24 months   PROBIT           BELARUS                        10                0      383    4035  sstunted         
24 months   PROBIT           BELARUS                        10                1       12    4035  sstunted         
24 months   PROBIT           BELARUS                        11                0      369    4035  sstunted         
24 months   PROBIT           BELARUS                        11                1       10    4035  sstunted         
24 months   PROBIT           BELARUS                        12                0      447    4035  sstunted         
24 months   PROBIT           BELARUS                        12                1       15    4035  sstunted         
24 months   PROVIDE          BANGLADESH                     1                 0       29     578  sstunted         
24 months   PROVIDE          BANGLADESH                     1                 1        3     578  sstunted         
24 months   PROVIDE          BANGLADESH                     2                 0       26     578  sstunted         
24 months   PROVIDE          BANGLADESH                     2                 1        4     578  sstunted         
24 months   PROVIDE          BANGLADESH                     3                 0       38     578  sstunted         
24 months   PROVIDE          BANGLADESH                     3                 1        2     578  sstunted         
24 months   PROVIDE          BANGLADESH                     4                 0       29     578  sstunted         
24 months   PROVIDE          BANGLADESH                     4                 1        4     578  sstunted         
24 months   PROVIDE          BANGLADESH                     5                 0       41     578  sstunted         
24 months   PROVIDE          BANGLADESH                     5                 1        1     578  sstunted         
24 months   PROVIDE          BANGLADESH                     6                 0       62     578  sstunted         
24 months   PROVIDE          BANGLADESH                     6                 1       13     578  sstunted         
24 months   PROVIDE          BANGLADESH                     7                 0       66     578  sstunted         
24 months   PROVIDE          BANGLADESH                     7                 1        4     578  sstunted         
24 months   PROVIDE          BANGLADESH                     8                 0       54     578  sstunted         
24 months   PROVIDE          BANGLADESH                     8                 1        6     578  sstunted         
24 months   PROVIDE          BANGLADESH                     9                 0       62     578  sstunted         
24 months   PROVIDE          BANGLADESH                     9                 1        4     578  sstunted         
24 months   PROVIDE          BANGLADESH                     10                0       60     578  sstunted         
24 months   PROVIDE          BANGLADESH                     10                1        4     578  sstunted         
24 months   PROVIDE          BANGLADESH                     11                0       33     578  sstunted         
24 months   PROVIDE          BANGLADESH                     11                1        5     578  sstunted         
24 months   PROVIDE          BANGLADESH                     12                0       26     578  sstunted         
24 months   PROVIDE          BANGLADESH                     12                1        2     578  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 0        2       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 0        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 0        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 1        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 0        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                1        0       6  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       1                 0      173    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       1                 1       17    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       2                 0      173    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       2                 1       24    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       3                 0      202    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       3                 1       26    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       4                 0      153    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       4                 1       17    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       5                 0      149    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       5                 1       19    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       6                 0      177    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       6                 1       19    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       7                 0       97    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       7                 1       23    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       8                 0      117    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       8                 1       10    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       9                 0       12    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       9                 1        1    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       10                0       22    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       10                1        2    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       11                0       64    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       11                1        8    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       12                0      123    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       12                1       12    1640  sstunted         


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
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
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
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
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
