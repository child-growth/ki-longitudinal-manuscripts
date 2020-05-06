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

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        month    stunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1              0        7      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          1              1        2      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          2              0        0      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          2              1        1      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          3              0        7      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          3              1        1      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          4              0        7      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          4              1        2      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          5              0       10      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          5              1        1      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          6              0        9      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          6              1        1      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          7              0        7      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          7              1        0      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          8              0        3      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          8              1        1      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          9              0        5      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          9              1        3      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          10             0        8      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          10             1        2      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          11             0       10      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          11             1        1      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          12             0        2      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          12             1        2      92  stunted          
Birth       CMIN             BANGLADESH                     1              0        0      26  stunted          
Birth       CMIN             BANGLADESH                     1              1        1      26  stunted          
Birth       CMIN             BANGLADESH                     2              0        3      26  stunted          
Birth       CMIN             BANGLADESH                     2              1        3      26  stunted          
Birth       CMIN             BANGLADESH                     3              0        2      26  stunted          
Birth       CMIN             BANGLADESH                     3              1        0      26  stunted          
Birth       CMIN             BANGLADESH                     4              0        0      26  stunted          
Birth       CMIN             BANGLADESH                     4              1        1      26  stunted          
Birth       CMIN             BANGLADESH                     5              0        3      26  stunted          
Birth       CMIN             BANGLADESH                     5              1        0      26  stunted          
Birth       CMIN             BANGLADESH                     6              0        0      26  stunted          
Birth       CMIN             BANGLADESH                     6              1        0      26  stunted          
Birth       CMIN             BANGLADESH                     7              0        0      26  stunted          
Birth       CMIN             BANGLADESH                     7              1        0      26  stunted          
Birth       CMIN             BANGLADESH                     8              0        4      26  stunted          
Birth       CMIN             BANGLADESH                     8              1        3      26  stunted          
Birth       CMIN             BANGLADESH                     9              0        2      26  stunted          
Birth       CMIN             BANGLADESH                     9              1        0      26  stunted          
Birth       CMIN             BANGLADESH                     10             0        1      26  stunted          
Birth       CMIN             BANGLADESH                     10             1        0      26  stunted          
Birth       CMIN             BANGLADESH                     11             0        2      26  stunted          
Birth       CMIN             BANGLADESH                     11             1        1      26  stunted          
Birth       CMIN             BANGLADESH                     12             0        0      26  stunted          
Birth       CMIN             BANGLADESH                     12             1        0      26  stunted          
Birth       CONTENT          PERU                           1              0        0       2  stunted          
Birth       CONTENT          PERU                           1              1        0       2  stunted          
Birth       CONTENT          PERU                           2              0        0       2  stunted          
Birth       CONTENT          PERU                           2              1        0       2  stunted          
Birth       CONTENT          PERU                           3              0        0       2  stunted          
Birth       CONTENT          PERU                           3              1        0       2  stunted          
Birth       CONTENT          PERU                           4              0        0       2  stunted          
Birth       CONTENT          PERU                           4              1        0       2  stunted          
Birth       CONTENT          PERU                           5              0        2       2  stunted          
Birth       CONTENT          PERU                           5              1        0       2  stunted          
Birth       CONTENT          PERU                           6              0        0       2  stunted          
Birth       CONTENT          PERU                           6              1        0       2  stunted          
Birth       CONTENT          PERU                           7              0        0       2  stunted          
Birth       CONTENT          PERU                           7              1        0       2  stunted          
Birth       CONTENT          PERU                           8              0        0       2  stunted          
Birth       CONTENT          PERU                           8              1        0       2  stunted          
Birth       CONTENT          PERU                           9              0        0       2  stunted          
Birth       CONTENT          PERU                           9              1        0       2  stunted          
Birth       CONTENT          PERU                           10             0        0       2  stunted          
Birth       CONTENT          PERU                           10             1        0       2  stunted          
Birth       CONTENT          PERU                           11             0        0       2  stunted          
Birth       CONTENT          PERU                           11             1        0       2  stunted          
Birth       CONTENT          PERU                           12             0        0       2  stunted          
Birth       CONTENT          PERU                           12             1        0       2  stunted          
Birth       EE               PAKISTAN                       1              0       23     240  stunted          
Birth       EE               PAKISTAN                       1              1       34     240  stunted          
Birth       EE               PAKISTAN                       2              0       33     240  stunted          
Birth       EE               PAKISTAN                       2              1       17     240  stunted          
Birth       EE               PAKISTAN                       3              0       18     240  stunted          
Birth       EE               PAKISTAN                       3              1       11     240  stunted          
Birth       EE               PAKISTAN                       4              0        5     240  stunted          
Birth       EE               PAKISTAN                       4              1        6     240  stunted          
Birth       EE               PAKISTAN                       5              0        0     240  stunted          
Birth       EE               PAKISTAN                       5              1        0     240  stunted          
Birth       EE               PAKISTAN                       6              0        0     240  stunted          
Birth       EE               PAKISTAN                       6              1        0     240  stunted          
Birth       EE               PAKISTAN                       7              0        0     240  stunted          
Birth       EE               PAKISTAN                       7              1        0     240  stunted          
Birth       EE               PAKISTAN                       8              0        0     240  stunted          
Birth       EE               PAKISTAN                       8              1        0     240  stunted          
Birth       EE               PAKISTAN                       9              0        0     240  stunted          
Birth       EE               PAKISTAN                       9              1        0     240  stunted          
Birth       EE               PAKISTAN                       10             0        0     240  stunted          
Birth       EE               PAKISTAN                       10             1        0     240  stunted          
Birth       EE               PAKISTAN                       11             0       31     240  stunted          
Birth       EE               PAKISTAN                       11             1       13     240  stunted          
Birth       EE               PAKISTAN                       12             0       30     240  stunted          
Birth       EE               PAKISTAN                       12             1       19     240  stunted          
Birth       GMS-Nepal        NEPAL                          1              0        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          1              1        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          2              0        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          2              1        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          3              0        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          3              1        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          4              0        1     696  stunted          
Birth       GMS-Nepal        NEPAL                          4              1        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          5              0        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          5              1        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          6              0      132     696  stunted          
Birth       GMS-Nepal        NEPAL                          6              1       28     696  stunted          
Birth       GMS-Nepal        NEPAL                          7              0      213     696  stunted          
Birth       GMS-Nepal        NEPAL                          7              1       52     696  stunted          
Birth       GMS-Nepal        NEPAL                          8              0      228     696  stunted          
Birth       GMS-Nepal        NEPAL                          8              1       42     696  stunted          
Birth       GMS-Nepal        NEPAL                          9              0        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          9              1        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          10             0        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          10             1        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          11             0        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          11             1        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          12             0        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          12             1        0     696  stunted          
Birth       IRC              INDIA                          1              0       27     388  stunted          
Birth       IRC              INDIA                          1              1        7     388  stunted          
Birth       IRC              INDIA                          2              0       23     388  stunted          
Birth       IRC              INDIA                          2              1        2     388  stunted          
Birth       IRC              INDIA                          3              0       23     388  stunted          
Birth       IRC              INDIA                          3              1        4     388  stunted          
Birth       IRC              INDIA                          4              0       20     388  stunted          
Birth       IRC              INDIA                          4              1        2     388  stunted          
Birth       IRC              INDIA                          5              0       20     388  stunted          
Birth       IRC              INDIA                          5              1        1     388  stunted          
Birth       IRC              INDIA                          6              0       30     388  stunted          
Birth       IRC              INDIA                          6              1        4     388  stunted          
Birth       IRC              INDIA                          7              0       31     388  stunted          
Birth       IRC              INDIA                          7              1        4     388  stunted          
Birth       IRC              INDIA                          8              0       36     388  stunted          
Birth       IRC              INDIA                          8              1        3     388  stunted          
Birth       IRC              INDIA                          9              0       23     388  stunted          
Birth       IRC              INDIA                          9              1        2     388  stunted          
Birth       IRC              INDIA                          10             0       33     388  stunted          
Birth       IRC              INDIA                          10             1        4     388  stunted          
Birth       IRC              INDIA                          11             0       34     388  stunted          
Birth       IRC              INDIA                          11             1        6     388  stunted          
Birth       IRC              INDIA                          12             0       43     388  stunted          
Birth       IRC              INDIA                          12             1        6     388  stunted          
Birth       JiVitA-3         BANGLADESH                     1              0     1336   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     1              1      776   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     2              0     1186   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     2              1      558   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     3              0     1453   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     3              1      607   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     4              0     1069   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     4              1      420   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     5              0      766   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     5              1      321   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     6              0      792   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     6              1      319   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     7              0      883   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     7              1      377   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     8              0     1170   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     8              1      545   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     9              0     1594   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     9              1      673   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     10             0     1589   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     10             1      839   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     11             0     1555   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     11             1      927   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     12             0     1675   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     12             1     1025   22455  stunted          
Birth       JiVitA-4         BANGLADESH                     1              0        0    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     1              1        0    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     2              0      219    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     2              1      114    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     3              0      247    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     3              1      149    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     4              0      323    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     4              1      144    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     5              0      315    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     5              1      134    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     6              0      244    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     6              1      113    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     7              0      259    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     7              1       99    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     8              0      191    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     8              1       56    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     9              0      114    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     9              1       36    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     10             0       54    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     10             1       12    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     11             0        0    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     11             1        0    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     12             0        0    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     12             1        0    2823  stunted          
Birth       Keneba           GAMBIA                         1              0      130    1543  stunted          
Birth       Keneba           GAMBIA                         1              1        8    1543  stunted          
Birth       Keneba           GAMBIA                         2              0      151    1543  stunted          
Birth       Keneba           GAMBIA                         2              1       12    1543  stunted          
Birth       Keneba           GAMBIA                         3              0      142    1543  stunted          
Birth       Keneba           GAMBIA                         3              1        5    1543  stunted          
Birth       Keneba           GAMBIA                         4              0      161    1543  stunted          
Birth       Keneba           GAMBIA                         4              1        4    1543  stunted          
Birth       Keneba           GAMBIA                         5              0      103    1543  stunted          
Birth       Keneba           GAMBIA                         5              1        2    1543  stunted          
Birth       Keneba           GAMBIA                         6              0      105    1543  stunted          
Birth       Keneba           GAMBIA                         6              1        3    1543  stunted          
Birth       Keneba           GAMBIA                         7              0       85    1543  stunted          
Birth       Keneba           GAMBIA                         7              1        4    1543  stunted          
Birth       Keneba           GAMBIA                         8              0       71    1543  stunted          
Birth       Keneba           GAMBIA                         8              1        5    1543  stunted          
Birth       Keneba           GAMBIA                         9              0      119    1543  stunted          
Birth       Keneba           GAMBIA                         9              1        6    1543  stunted          
Birth       Keneba           GAMBIA                         10             0      116    1543  stunted          
Birth       Keneba           GAMBIA                         10             1        8    1543  stunted          
Birth       Keneba           GAMBIA                         11             0      164    1543  stunted          
Birth       Keneba           GAMBIA                         11             1       15    1543  stunted          
Birth       Keneba           GAMBIA                         12             0      113    1543  stunted          
Birth       Keneba           GAMBIA                         12             1       11    1543  stunted          
Birth       MAL-ED           BANGLADESH                     1              0       17     231  stunted          
Birth       MAL-ED           BANGLADESH                     1              1        4     231  stunted          
Birth       MAL-ED           BANGLADESH                     2              0       16     231  stunted          
Birth       MAL-ED           BANGLADESH                     2              1        5     231  stunted          
Birth       MAL-ED           BANGLADESH                     3              0       20     231  stunted          
Birth       MAL-ED           BANGLADESH                     3              1        6     231  stunted          
Birth       MAL-ED           BANGLADESH                     4              0       19     231  stunted          
Birth       MAL-ED           BANGLADESH                     4              1        2     231  stunted          
Birth       MAL-ED           BANGLADESH                     5              0       13     231  stunted          
Birth       MAL-ED           BANGLADESH                     5              1        4     231  stunted          
Birth       MAL-ED           BANGLADESH                     6              0        5     231  stunted          
Birth       MAL-ED           BANGLADESH                     6              1        3     231  stunted          
Birth       MAL-ED           BANGLADESH                     7              0       10     231  stunted          
Birth       MAL-ED           BANGLADESH                     7              1        3     231  stunted          
Birth       MAL-ED           BANGLADESH                     8              0       21     231  stunted          
Birth       MAL-ED           BANGLADESH                     8              1        6     231  stunted          
Birth       MAL-ED           BANGLADESH                     9              0       15     231  stunted          
Birth       MAL-ED           BANGLADESH                     9              1        3     231  stunted          
Birth       MAL-ED           BANGLADESH                     10             0       15     231  stunted          
Birth       MAL-ED           BANGLADESH                     10             1        5     231  stunted          
Birth       MAL-ED           BANGLADESH                     11             0       13     231  stunted          
Birth       MAL-ED           BANGLADESH                     11             1        0     231  stunted          
Birth       MAL-ED           BANGLADESH                     12             0       23     231  stunted          
Birth       MAL-ED           BANGLADESH                     12             1        3     231  stunted          
Birth       MAL-ED           BRAZIL                         1              0        4      65  stunted          
Birth       MAL-ED           BRAZIL                         1              1        1      65  stunted          
Birth       MAL-ED           BRAZIL                         2              0        8      65  stunted          
Birth       MAL-ED           BRAZIL                         2              1        0      65  stunted          
Birth       MAL-ED           BRAZIL                         3              0        9      65  stunted          
Birth       MAL-ED           BRAZIL                         3              1        0      65  stunted          
Birth       MAL-ED           BRAZIL                         4              0        5      65  stunted          
Birth       MAL-ED           BRAZIL                         4              1        0      65  stunted          
Birth       MAL-ED           BRAZIL                         5              0        1      65  stunted          
Birth       MAL-ED           BRAZIL                         5              1        1      65  stunted          
Birth       MAL-ED           BRAZIL                         6              0        5      65  stunted          
Birth       MAL-ED           BRAZIL                         6              1        0      65  stunted          
Birth       MAL-ED           BRAZIL                         7              0        4      65  stunted          
Birth       MAL-ED           BRAZIL                         7              1        1      65  stunted          
Birth       MAL-ED           BRAZIL                         8              0        4      65  stunted          
Birth       MAL-ED           BRAZIL                         8              1        3      65  stunted          
Birth       MAL-ED           BRAZIL                         9              0        5      65  stunted          
Birth       MAL-ED           BRAZIL                         9              1        2      65  stunted          
Birth       MAL-ED           BRAZIL                         10             0        4      65  stunted          
Birth       MAL-ED           BRAZIL                         10             1        0      65  stunted          
Birth       MAL-ED           BRAZIL                         11             0        5      65  stunted          
Birth       MAL-ED           BRAZIL                         11             1        0      65  stunted          
Birth       MAL-ED           BRAZIL                         12             0        2      65  stunted          
Birth       MAL-ED           BRAZIL                         12             1        1      65  stunted          
Birth       MAL-ED           INDIA                          1              0        2      47  stunted          
Birth       MAL-ED           INDIA                          1              1        0      47  stunted          
Birth       MAL-ED           INDIA                          2              0        3      47  stunted          
Birth       MAL-ED           INDIA                          2              1        0      47  stunted          
Birth       MAL-ED           INDIA                          3              0        5      47  stunted          
Birth       MAL-ED           INDIA                          3              1        0      47  stunted          
Birth       MAL-ED           INDIA                          4              0        5      47  stunted          
Birth       MAL-ED           INDIA                          4              1        2      47  stunted          
Birth       MAL-ED           INDIA                          5              0        2      47  stunted          
Birth       MAL-ED           INDIA                          5              1        0      47  stunted          
Birth       MAL-ED           INDIA                          6              0        3      47  stunted          
Birth       MAL-ED           INDIA                          6              1        0      47  stunted          
Birth       MAL-ED           INDIA                          7              0        3      47  stunted          
Birth       MAL-ED           INDIA                          7              1        0      47  stunted          
Birth       MAL-ED           INDIA                          8              0        4      47  stunted          
Birth       MAL-ED           INDIA                          8              1        3      47  stunted          
Birth       MAL-ED           INDIA                          9              0        3      47  stunted          
Birth       MAL-ED           INDIA                          9              1        1      47  stunted          
Birth       MAL-ED           INDIA                          10             0        6      47  stunted          
Birth       MAL-ED           INDIA                          10             1        0      47  stunted          
Birth       MAL-ED           INDIA                          11             0        1      47  stunted          
Birth       MAL-ED           INDIA                          11             1        3      47  stunted          
Birth       MAL-ED           INDIA                          12             0        0      47  stunted          
Birth       MAL-ED           INDIA                          12             1        1      47  stunted          
Birth       MAL-ED           NEPAL                          1              0        1      27  stunted          
Birth       MAL-ED           NEPAL                          1              1        0      27  stunted          
Birth       MAL-ED           NEPAL                          2              0        3      27  stunted          
Birth       MAL-ED           NEPAL                          2              1        0      27  stunted          
Birth       MAL-ED           NEPAL                          3              0        1      27  stunted          
Birth       MAL-ED           NEPAL                          3              1        0      27  stunted          
Birth       MAL-ED           NEPAL                          4              0        2      27  stunted          
Birth       MAL-ED           NEPAL                          4              1        0      27  stunted          
Birth       MAL-ED           NEPAL                          5              0        2      27  stunted          
Birth       MAL-ED           NEPAL                          5              1        0      27  stunted          
Birth       MAL-ED           NEPAL                          6              0        2      27  stunted          
Birth       MAL-ED           NEPAL                          6              1        1      27  stunted          
Birth       MAL-ED           NEPAL                          7              0        1      27  stunted          
Birth       MAL-ED           NEPAL                          7              1        0      27  stunted          
Birth       MAL-ED           NEPAL                          8              0        1      27  stunted          
Birth       MAL-ED           NEPAL                          8              1        0      27  stunted          
Birth       MAL-ED           NEPAL                          9              0        3      27  stunted          
Birth       MAL-ED           NEPAL                          9              1        0      27  stunted          
Birth       MAL-ED           NEPAL                          10             0        3      27  stunted          
Birth       MAL-ED           NEPAL                          10             1        0      27  stunted          
Birth       MAL-ED           NEPAL                          11             0        4      27  stunted          
Birth       MAL-ED           NEPAL                          11             1        1      27  stunted          
Birth       MAL-ED           NEPAL                          12             0        2      27  stunted          
Birth       MAL-ED           NEPAL                          12             1        0      27  stunted          
Birth       MAL-ED           PERU                           1              0       22     233  stunted          
Birth       MAL-ED           PERU                           1              1        3     233  stunted          
Birth       MAL-ED           PERU                           2              0       18     233  stunted          
Birth       MAL-ED           PERU                           2              1        3     233  stunted          
Birth       MAL-ED           PERU                           3              0       17     233  stunted          
Birth       MAL-ED           PERU                           3              1        4     233  stunted          
Birth       MAL-ED           PERU                           4              0       12     233  stunted          
Birth       MAL-ED           PERU                           4              1        2     233  stunted          
Birth       MAL-ED           PERU                           5              0       18     233  stunted          
Birth       MAL-ED           PERU                           5              1        1     233  stunted          
Birth       MAL-ED           PERU                           6              0       14     233  stunted          
Birth       MAL-ED           PERU                           6              1        1     233  stunted          
Birth       MAL-ED           PERU                           7              0       18     233  stunted          
Birth       MAL-ED           PERU                           7              1        2     233  stunted          
Birth       MAL-ED           PERU                           8              0       14     233  stunted          
Birth       MAL-ED           PERU                           8              1        0     233  stunted          
Birth       MAL-ED           PERU                           9              0       20     233  stunted          
Birth       MAL-ED           PERU                           9              1        0     233  stunted          
Birth       MAL-ED           PERU                           10             0       20     233  stunted          
Birth       MAL-ED           PERU                           10             1        0     233  stunted          
Birth       MAL-ED           PERU                           11             0       22     233  stunted          
Birth       MAL-ED           PERU                           11             1        7     233  stunted          
Birth       MAL-ED           PERU                           12             0       12     233  stunted          
Birth       MAL-ED           PERU                           12             1        3     233  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1              0        7     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1              1        1     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   2              0       13     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   2              1        0     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   3              0       10     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   3              1        1     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   4              0        6     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   4              1        1     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   5              0        5     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   5              1        0     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   6              0        7     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   6              1        0     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   7              0       12     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   7              1        2     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   8              0        3     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   8              1        1     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   9              0       10     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   9              1        0     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   10             0       10     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   10             1        0     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   11             0       12     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   11             1        3     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   12             0       18     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   12             1        1     123  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              0        7     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1        1     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              0       11     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              1        4     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              0       15     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              1        1     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              0        6     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              1        1     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              0        9     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              1        1     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              0        7     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              1        3     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              0       13     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              1        2     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              0        7     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              1        0     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              0        1     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              1        1     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             0        5     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             1        4     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             0       11     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             1        4     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             0       10     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             1        1     125  stunted          
Birth       NIH-Birth        BANGLADESH                     1              0       47     608  stunted          
Birth       NIH-Birth        BANGLADESH                     1              1       18     608  stunted          
Birth       NIH-Birth        BANGLADESH                     2              0       47     608  stunted          
Birth       NIH-Birth        BANGLADESH                     2              1       11     608  stunted          
Birth       NIH-Birth        BANGLADESH                     3              0       54     608  stunted          
Birth       NIH-Birth        BANGLADESH                     3              1        7     608  stunted          
Birth       NIH-Birth        BANGLADESH                     4              0       43     608  stunted          
Birth       NIH-Birth        BANGLADESH                     4              1        9     608  stunted          
Birth       NIH-Birth        BANGLADESH                     5              0       39     608  stunted          
Birth       NIH-Birth        BANGLADESH                     5              1        6     608  stunted          
Birth       NIH-Birth        BANGLADESH                     6              0       38     608  stunted          
Birth       NIH-Birth        BANGLADESH                     6              1        5     608  stunted          
Birth       NIH-Birth        BANGLADESH                     7              0       40     608  stunted          
Birth       NIH-Birth        BANGLADESH                     7              1        6     608  stunted          
Birth       NIH-Birth        BANGLADESH                     8              0       37     608  stunted          
Birth       NIH-Birth        BANGLADESH                     8              1        5     608  stunted          
Birth       NIH-Birth        BANGLADESH                     9              0       28     608  stunted          
Birth       NIH-Birth        BANGLADESH                     9              1        6     608  stunted          
Birth       NIH-Birth        BANGLADESH                     10             0       49     608  stunted          
Birth       NIH-Birth        BANGLADESH                     10             1       11     608  stunted          
Birth       NIH-Birth        BANGLADESH                     11             0       43     608  stunted          
Birth       NIH-Birth        BANGLADESH                     11             1        7     608  stunted          
Birth       NIH-Birth        BANGLADESH                     12             0       46     608  stunted          
Birth       NIH-Birth        BANGLADESH                     12             1        6     608  stunted          
Birth       PROBIT           BELARUS                        1              0      858   13893  stunted          
Birth       PROBIT           BELARUS                        1              1        1   13893  stunted          
Birth       PROBIT           BELARUS                        2              0      788   13893  stunted          
Birth       PROBIT           BELARUS                        2              1        3   13893  stunted          
Birth       PROBIT           BELARUS                        3              0      965   13893  stunted          
Birth       PROBIT           BELARUS                        3              1        4   13893  stunted          
Birth       PROBIT           BELARUS                        4              0      952   13893  stunted          
Birth       PROBIT           BELARUS                        4              1        4   13893  stunted          
Birth       PROBIT           BELARUS                        5              0      957   13893  stunted          
Birth       PROBIT           BELARUS                        5              1        0   13893  stunted          
Birth       PROBIT           BELARUS                        6              0     1007   13893  stunted          
Birth       PROBIT           BELARUS                        6              1        0   13893  stunted          
Birth       PROBIT           BELARUS                        7              0     1278   13893  stunted          
Birth       PROBIT           BELARUS                        7              1        3   13893  stunted          
Birth       PROBIT           BELARUS                        8              0     1324   13893  stunted          
Birth       PROBIT           BELARUS                        8              1        3   13893  stunted          
Birth       PROBIT           BELARUS                        9              0     1311   13893  stunted          
Birth       PROBIT           BELARUS                        9              1        4   13893  stunted          
Birth       PROBIT           BELARUS                        10             0     1504   13893  stunted          
Birth       PROBIT           BELARUS                        10             1        7   13893  stunted          
Birth       PROBIT           BELARUS                        11             0     1394   13893  stunted          
Birth       PROBIT           BELARUS                        11             1        3   13893  stunted          
Birth       PROBIT           BELARUS                        12             0     1521   13893  stunted          
Birth       PROBIT           BELARUS                        12             1        2   13893  stunted          
Birth       ResPak           PAKISTAN                       1              0        0      42  stunted          
Birth       ResPak           PAKISTAN                       1              1        0      42  stunted          
Birth       ResPak           PAKISTAN                       2              0        2      42  stunted          
Birth       ResPak           PAKISTAN                       2              1        0      42  stunted          
Birth       ResPak           PAKISTAN                       3              0        1      42  stunted          
Birth       ResPak           PAKISTAN                       3              1        0      42  stunted          
Birth       ResPak           PAKISTAN                       4              0        0      42  stunted          
Birth       ResPak           PAKISTAN                       4              1        1      42  stunted          
Birth       ResPak           PAKISTAN                       5              0        4      42  stunted          
Birth       ResPak           PAKISTAN                       5              1        4      42  stunted          
Birth       ResPak           PAKISTAN                       6              0        6      42  stunted          
Birth       ResPak           PAKISTAN                       6              1        1      42  stunted          
Birth       ResPak           PAKISTAN                       7              0        6      42  stunted          
Birth       ResPak           PAKISTAN                       7              1        3      42  stunted          
Birth       ResPak           PAKISTAN                       8              0        3      42  stunted          
Birth       ResPak           PAKISTAN                       8              1        5      42  stunted          
Birth       ResPak           PAKISTAN                       9              0        4      42  stunted          
Birth       ResPak           PAKISTAN                       9              1        0      42  stunted          
Birth       ResPak           PAKISTAN                       10             0        1      42  stunted          
Birth       ResPak           PAKISTAN                       10             1        0      42  stunted          
Birth       ResPak           PAKISTAN                       11             0        1      42  stunted          
Birth       ResPak           PAKISTAN                       11             1        0      42  stunted          
Birth       ResPak           PAKISTAN                       12             0        0      42  stunted          
Birth       ResPak           PAKISTAN                       12             1        0      42  stunted          
Birth       SAS-CompFeed     INDIA                          1              0       55    1252  stunted          
Birth       SAS-CompFeed     INDIA                          1              1       27    1252  stunted          
Birth       SAS-CompFeed     INDIA                          2              0       52    1252  stunted          
Birth       SAS-CompFeed     INDIA                          2              1       20    1252  stunted          
Birth       SAS-CompFeed     INDIA                          3              0       53    1252  stunted          
Birth       SAS-CompFeed     INDIA                          3              1       27    1252  stunted          
Birth       SAS-CompFeed     INDIA                          4              0       52    1252  stunted          
Birth       SAS-CompFeed     INDIA                          4              1       11    1252  stunted          
Birth       SAS-CompFeed     INDIA                          5              0       56    1252  stunted          
Birth       SAS-CompFeed     INDIA                          5              1       24    1252  stunted          
Birth       SAS-CompFeed     INDIA                          6              0       76    1252  stunted          
Birth       SAS-CompFeed     INDIA                          6              1       26    1252  stunted          
Birth       SAS-CompFeed     INDIA                          7              0       69    1252  stunted          
Birth       SAS-CompFeed     INDIA                          7              1       32    1252  stunted          
Birth       SAS-CompFeed     INDIA                          8              0       93    1252  stunted          
Birth       SAS-CompFeed     INDIA                          8              1       52    1252  stunted          
Birth       SAS-CompFeed     INDIA                          9              0      116    1252  stunted          
Birth       SAS-CompFeed     INDIA                          9              1       32    1252  stunted          
Birth       SAS-CompFeed     INDIA                          10             0      101    1252  stunted          
Birth       SAS-CompFeed     INDIA                          10             1       37    1252  stunted          
Birth       SAS-CompFeed     INDIA                          11             0       94    1252  stunted          
Birth       SAS-CompFeed     INDIA                          11             1       28    1252  stunted          
Birth       SAS-CompFeed     INDIA                          12             0       86    1252  stunted          
Birth       SAS-CompFeed     INDIA                          12             1       33    1252  stunted          
Birth       ZVITAMBO         ZIMBABWE                       1              0     1173   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       1              1      176   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       2              0      887   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       2              1      154   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       3              0     1008   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       3              1      136   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       4              0      903   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       4              1      111   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       5              0      875   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       5              1      129   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       6              0     1006   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       6              1      129   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       7              0     1058   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       7              1      121   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       8              0     1141   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       8              1       91   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       9              0     1239   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       9              1       83   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       10             0      962   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       10             1       85   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       11             0     1045   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       11             1       95   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       12             0     1144   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       12             1      124   13875  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1              0       19     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1              1        9     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          2              0       16     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          2              1        8     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          3              0       19     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          3              1        7     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          4              0       25     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          4              1        4     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          5              0       35     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          5              1        7     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          6              0       24     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          6              1       13     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          7              0       20     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          7              1       13     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          8              0       20     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          8              1       21     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          9              0       12     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          9              1        9     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          10             0       14     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          10             1        5     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          11             0       29     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          11             1       12     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          12             0       25     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          12             1        3     369  stunted          
6 months    CMIN             BANGLADESH                     1              0       15     243  stunted          
6 months    CMIN             BANGLADESH                     1              1       12     243  stunted          
6 months    CMIN             BANGLADESH                     2              0       16     243  stunted          
6 months    CMIN             BANGLADESH                     2              1       14     243  stunted          
6 months    CMIN             BANGLADESH                     3              0       13     243  stunted          
6 months    CMIN             BANGLADESH                     3              1        5     243  stunted          
6 months    CMIN             BANGLADESH                     4              0       14     243  stunted          
6 months    CMIN             BANGLADESH                     4              1        3     243  stunted          
6 months    CMIN             BANGLADESH                     5              0       15     243  stunted          
6 months    CMIN             BANGLADESH                     5              1        5     243  stunted          
6 months    CMIN             BANGLADESH                     6              0       17     243  stunted          
6 months    CMIN             BANGLADESH                     6              1        6     243  stunted          
6 months    CMIN             BANGLADESH                     7              0        9     243  stunted          
6 months    CMIN             BANGLADESH                     7              1        3     243  stunted          
6 months    CMIN             BANGLADESH                     8              0        9     243  stunted          
6 months    CMIN             BANGLADESH                     8              1        4     243  stunted          
6 months    CMIN             BANGLADESH                     9              0        7     243  stunted          
6 months    CMIN             BANGLADESH                     9              1        9     243  stunted          
6 months    CMIN             BANGLADESH                     10             0        8     243  stunted          
6 months    CMIN             BANGLADESH                     10             1       12     243  stunted          
6 months    CMIN             BANGLADESH                     11             0        2     243  stunted          
6 months    CMIN             BANGLADESH                     11             1        0     243  stunted          
6 months    CMIN             BANGLADESH                     12             0       25     243  stunted          
6 months    CMIN             BANGLADESH                     12             1       20     243  stunted          
6 months    CONTENT          PERU                           1              0        9     215  stunted          
6 months    CONTENT          PERU                           1              1        0     215  stunted          
6 months    CONTENT          PERU                           2              0       13     215  stunted          
6 months    CONTENT          PERU                           2              1        0     215  stunted          
6 months    CONTENT          PERU                           3              0       27     215  stunted          
6 months    CONTENT          PERU                           3              1        0     215  stunted          
6 months    CONTENT          PERU                           4              0       16     215  stunted          
6 months    CONTENT          PERU                           4              1        2     215  stunted          
6 months    CONTENT          PERU                           5              0       24     215  stunted          
6 months    CONTENT          PERU                           5              1        1     215  stunted          
6 months    CONTENT          PERU                           6              0       13     215  stunted          
6 months    CONTENT          PERU                           6              1        1     215  stunted          
6 months    CONTENT          PERU                           7              0       16     215  stunted          
6 months    CONTENT          PERU                           7              1        0     215  stunted          
6 months    CONTENT          PERU                           8              0       23     215  stunted          
6 months    CONTENT          PERU                           8              1        3     215  stunted          
6 months    CONTENT          PERU                           9              0       18     215  stunted          
6 months    CONTENT          PERU                           9              1        1     215  stunted          
6 months    CONTENT          PERU                           10             0       23     215  stunted          
6 months    CONTENT          PERU                           10             1        0     215  stunted          
6 months    CONTENT          PERU                           11             0       17     215  stunted          
6 months    CONTENT          PERU                           11             1        1     215  stunted          
6 months    CONTENT          PERU                           12             0        7     215  stunted          
6 months    CONTENT          PERU                           12             1        0     215  stunted          
6 months    EE               PAKISTAN                       1              0       43     373  stunted          
6 months    EE               PAKISTAN                       1              1       47     373  stunted          
6 months    EE               PAKISTAN                       2              0       41     373  stunted          
6 months    EE               PAKISTAN                       2              1       31     373  stunted          
6 months    EE               PAKISTAN                       3              0       24     373  stunted          
6 months    EE               PAKISTAN                       3              1       22     373  stunted          
6 months    EE               PAKISTAN                       4              0        8     373  stunted          
6 months    EE               PAKISTAN                       4              1       14     373  stunted          
6 months    EE               PAKISTAN                       5              0        0     373  stunted          
6 months    EE               PAKISTAN                       5              1        0     373  stunted          
6 months    EE               PAKISTAN                       6              0        0     373  stunted          
6 months    EE               PAKISTAN                       6              1        0     373  stunted          
6 months    EE               PAKISTAN                       7              0        0     373  stunted          
6 months    EE               PAKISTAN                       7              1        0     373  stunted          
6 months    EE               PAKISTAN                       8              0        0     373  stunted          
6 months    EE               PAKISTAN                       8              1        0     373  stunted          
6 months    EE               PAKISTAN                       9              0        0     373  stunted          
6 months    EE               PAKISTAN                       9              1        0     373  stunted          
6 months    EE               PAKISTAN                       10             0        0     373  stunted          
6 months    EE               PAKISTAN                       10             1        0     373  stunted          
6 months    EE               PAKISTAN                       11             0       31     373  stunted          
6 months    EE               PAKISTAN                       11             1       29     373  stunted          
6 months    EE               PAKISTAN                       12             0       43     373  stunted          
6 months    EE               PAKISTAN                       12             1       40     373  stunted          
6 months    GMS-Nepal        NEPAL                          1              0        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          1              1        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          2              0        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          2              1        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          3              0        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          3              1        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          4              0        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          4              1        1     564  stunted          
6 months    GMS-Nepal        NEPAL                          5              0        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          5              1        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          6              0       91     564  stunted          
6 months    GMS-Nepal        NEPAL                          6              1       24     564  stunted          
6 months    GMS-Nepal        NEPAL                          7              0      160     564  stunted          
6 months    GMS-Nepal        NEPAL                          7              1       51     564  stunted          
6 months    GMS-Nepal        NEPAL                          8              0      191     564  stunted          
6 months    GMS-Nepal        NEPAL                          8              1       46     564  stunted          
6 months    GMS-Nepal        NEPAL                          9              0        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          9              1        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          10             0        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          10             1        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          11             0        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          11             1        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          12             0        0     564  stunted          
6 months    GMS-Nepal        NEPAL                          12             1        0     564  stunted          
6 months    Guatemala BSC    GUATEMALA                      1              0       16     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      1              1        2     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      2              0       15     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      2              1        4     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      3              0       12     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      3              1        9     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      4              0       19     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      4              1        8     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      5              0       25     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      5              1        6     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      6              0       27     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      6              1       12     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      7              0       15     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      7              1        9     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      8              0       14     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      8              1        5     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      9              0       23     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      9              1       11     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      10             0       18     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      10             1       11     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      11             0       18     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      11             1       10     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      12             0        7     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      12             1        3     299  stunted          
6 months    IRC              INDIA                          1              0       25     407  stunted          
6 months    IRC              INDIA                          1              1       10     407  stunted          
6 months    IRC              INDIA                          2              0       17     407  stunted          
6 months    IRC              INDIA                          2              1       12     407  stunted          
6 months    IRC              INDIA                          3              0       18     407  stunted          
6 months    IRC              INDIA                          3              1       11     407  stunted          
6 months    IRC              INDIA                          4              0       18     407  stunted          
6 months    IRC              INDIA                          4              1        6     407  stunted          
6 months    IRC              INDIA                          5              0       13     407  stunted          
6 months    IRC              INDIA                          5              1        7     407  stunted          
6 months    IRC              INDIA                          6              0       30     407  stunted          
6 months    IRC              INDIA                          6              1        5     407  stunted          
6 months    IRC              INDIA                          7              0       25     407  stunted          
6 months    IRC              INDIA                          7              1       11     407  stunted          
6 months    IRC              INDIA                          8              0       36     407  stunted          
6 months    IRC              INDIA                          8              1        5     407  stunted          
6 months    IRC              INDIA                          9              0       24     407  stunted          
6 months    IRC              INDIA                          9              1        6     407  stunted          
6 months    IRC              INDIA                          10             0       32     407  stunted          
6 months    IRC              INDIA                          10             1        6     407  stunted          
6 months    IRC              INDIA                          11             0       33     407  stunted          
6 months    IRC              INDIA                          11             1        8     407  stunted          
6 months    IRC              INDIA                          12             0       36     407  stunted          
6 months    IRC              INDIA                          12             1       13     407  stunted          
6 months    JiVitA-3         BANGLADESH                     1              0     1008   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     1              1      357   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     2              0      895   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     2              1      289   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     3              0     1091   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     3              1      330   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     4              0      921   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     4              1      270   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     5              0      865   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     5              1      285   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     6              0      881   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     6              1      280   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     7              0      932   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     7              1      319   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     8              0     1120   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     8              1      348   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     9              0     1186   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     9              1      364   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     10             0     1241   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     10             1      453   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     11             0     1192   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     11             1      475   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     12             0     1253   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     12             1      456   16811  stunted          
6 months    JiVitA-4         BANGLADESH                     1              0       40    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     1              1       13    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     2              0      134    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     2              1       31    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     3              0      324    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     3              1      106    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     4              0      616    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     4              1      229    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     5              0      437    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     5              1      148    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     6              0      331    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     6              1      103    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     7              0      592    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     7              1      246    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     8              0      402    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     8              1      108    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     9              0      330    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     9              1      101    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     10             0      225    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     10             1       81    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     11             0      122    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     11             1       35    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     12             0       57    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     12             1       20    4831  stunted          
6 months    Keneba           GAMBIA                         1              0      159    2089  stunted          
6 months    Keneba           GAMBIA                         1              1       25    2089  stunted          
6 months    Keneba           GAMBIA                         2              0      183    2089  stunted          
6 months    Keneba           GAMBIA                         2              1       27    2089  stunted          
6 months    Keneba           GAMBIA                         3              0      165    2089  stunted          
6 months    Keneba           GAMBIA                         3              1       20    2089  stunted          
6 months    Keneba           GAMBIA                         4              0      194    2089  stunted          
6 months    Keneba           GAMBIA                         4              1       30    2089  stunted          
6 months    Keneba           GAMBIA                         5              0      166    2089  stunted          
6 months    Keneba           GAMBIA                         5              1       20    2089  stunted          
6 months    Keneba           GAMBIA                         6              0      129    2089  stunted          
6 months    Keneba           GAMBIA                         6              1       20    2089  stunted          
6 months    Keneba           GAMBIA                         7              0      106    2089  stunted          
6 months    Keneba           GAMBIA                         7              1       23    2089  stunted          
6 months    Keneba           GAMBIA                         8              0       97    2089  stunted          
6 months    Keneba           GAMBIA                         8              1       21    2089  stunted          
6 months    Keneba           GAMBIA                         9              0      128    2089  stunted          
6 months    Keneba           GAMBIA                         9              1       23    2089  stunted          
6 months    Keneba           GAMBIA                         10             0      140    2089  stunted          
6 months    Keneba           GAMBIA                         10             1       29    2089  stunted          
6 months    Keneba           GAMBIA                         11             0      190    2089  stunted          
6 months    Keneba           GAMBIA                         11             1       35    2089  stunted          
6 months    Keneba           GAMBIA                         12             0      137    2089  stunted          
6 months    Keneba           GAMBIA                         12             1       22    2089  stunted          
6 months    LCNI-5           MALAWI                         1              0       39     839  stunted          
6 months    LCNI-5           MALAWI                         1              1       16     839  stunted          
6 months    LCNI-5           MALAWI                         2              0       75     839  stunted          
6 months    LCNI-5           MALAWI                         2              1       39     839  stunted          
6 months    LCNI-5           MALAWI                         3              0       63     839  stunted          
6 months    LCNI-5           MALAWI                         3              1       35     839  stunted          
6 months    LCNI-5           MALAWI                         4              0       61     839  stunted          
6 months    LCNI-5           MALAWI                         4              1       49     839  stunted          
6 months    LCNI-5           MALAWI                         5              0       72     839  stunted          
6 months    LCNI-5           MALAWI                         5              1       39     839  stunted          
6 months    LCNI-5           MALAWI                         6              0       62     839  stunted          
6 months    LCNI-5           MALAWI                         6              1       29     839  stunted          
6 months    LCNI-5           MALAWI                         7              0       40     839  stunted          
6 months    LCNI-5           MALAWI                         7              1       32     839  stunted          
6 months    LCNI-5           MALAWI                         8              0       28     839  stunted          
6 months    LCNI-5           MALAWI                         8              1       13     839  stunted          
6 months    LCNI-5           MALAWI                         9              0       18     839  stunted          
6 months    LCNI-5           MALAWI                         9              1       11     839  stunted          
6 months    LCNI-5           MALAWI                         10             0       21     839  stunted          
6 months    LCNI-5           MALAWI                         10             1       14     839  stunted          
6 months    LCNI-5           MALAWI                         11             0       32     839  stunted          
6 months    LCNI-5           MALAWI                         11             1       17     839  stunted          
6 months    LCNI-5           MALAWI                         12             0       19     839  stunted          
6 months    LCNI-5           MALAWI                         12             1       15     839  stunted          
6 months    MAL-ED           BANGLADESH                     1              0       16     241  stunted          
6 months    MAL-ED           BANGLADESH                     1              1        3     241  stunted          
6 months    MAL-ED           BANGLADESH                     2              0       14     241  stunted          
6 months    MAL-ED           BANGLADESH                     2              1        6     241  stunted          
6 months    MAL-ED           BANGLADESH                     3              0       20     241  stunted          
6 months    MAL-ED           BANGLADESH                     3              1        3     241  stunted          
6 months    MAL-ED           BANGLADESH                     4              0       22     241  stunted          
6 months    MAL-ED           BANGLADESH                     4              1        2     241  stunted          
6 months    MAL-ED           BANGLADESH                     5              0       14     241  stunted          
6 months    MAL-ED           BANGLADESH                     5              1        3     241  stunted          
6 months    MAL-ED           BANGLADESH                     6              0        9     241  stunted          
6 months    MAL-ED           BANGLADESH                     6              1        3     241  stunted          
6 months    MAL-ED           BANGLADESH                     7              0       12     241  stunted          
6 months    MAL-ED           BANGLADESH                     7              1        5     241  stunted          
6 months    MAL-ED           BANGLADESH                     8              0       17     241  stunted          
6 months    MAL-ED           BANGLADESH                     8              1        8     241  stunted          
6 months    MAL-ED           BANGLADESH                     9              0       19     241  stunted          
6 months    MAL-ED           BANGLADESH                     9              1        2     241  stunted          
6 months    MAL-ED           BANGLADESH                     10             0       16     241  stunted          
6 months    MAL-ED           BANGLADESH                     10             1        6     241  stunted          
6 months    MAL-ED           BANGLADESH                     11             0       15     241  stunted          
6 months    MAL-ED           BANGLADESH                     11             1        0     241  stunted          
6 months    MAL-ED           BANGLADESH                     12             0       23     241  stunted          
6 months    MAL-ED           BANGLADESH                     12             1        3     241  stunted          
6 months    MAL-ED           BRAZIL                         1              0       13     209  stunted          
6 months    MAL-ED           BRAZIL                         1              1        1     209  stunted          
6 months    MAL-ED           BRAZIL                         2              0       23     209  stunted          
6 months    MAL-ED           BRAZIL                         2              1        1     209  stunted          
6 months    MAL-ED           BRAZIL                         3              0       15     209  stunted          
6 months    MAL-ED           BRAZIL                         3              1        0     209  stunted          
6 months    MAL-ED           BRAZIL                         4              0       12     209  stunted          
6 months    MAL-ED           BRAZIL                         4              1        0     209  stunted          
6 months    MAL-ED           BRAZIL                         5              0       17     209  stunted          
6 months    MAL-ED           BRAZIL                         5              1        0     209  stunted          
6 months    MAL-ED           BRAZIL                         6              0       13     209  stunted          
6 months    MAL-ED           BRAZIL                         6              1        1     209  stunted          
6 months    MAL-ED           BRAZIL                         7              0       15     209  stunted          
6 months    MAL-ED           BRAZIL                         7              1        1     209  stunted          
6 months    MAL-ED           BRAZIL                         8              0       15     209  stunted          
6 months    MAL-ED           BRAZIL                         8              1        0     209  stunted          
6 months    MAL-ED           BRAZIL                         9              0       20     209  stunted          
6 months    MAL-ED           BRAZIL                         9              1        1     209  stunted          
6 months    MAL-ED           BRAZIL                         10             0       26     209  stunted          
6 months    MAL-ED           BRAZIL                         10             1        0     209  stunted          
6 months    MAL-ED           BRAZIL                         11             0       17     209  stunted          
6 months    MAL-ED           BRAZIL                         11             1        0     209  stunted          
6 months    MAL-ED           BRAZIL                         12             0       17     209  stunted          
6 months    MAL-ED           BRAZIL                         12             1        1     209  stunted          
6 months    MAL-ED           INDIA                          1              0       12     236  stunted          
6 months    MAL-ED           INDIA                          1              1        3     236  stunted          
6 months    MAL-ED           INDIA                          2              0       21     236  stunted          
6 months    MAL-ED           INDIA                          2              1        2     236  stunted          
6 months    MAL-ED           INDIA                          3              0       18     236  stunted          
6 months    MAL-ED           INDIA                          3              1        3     236  stunted          
6 months    MAL-ED           INDIA                          4              0       14     236  stunted          
6 months    MAL-ED           INDIA                          4              1        4     236  stunted          
6 months    MAL-ED           INDIA                          5              0        5     236  stunted          
6 months    MAL-ED           INDIA                          5              1        3     236  stunted          
6 months    MAL-ED           INDIA                          6              0       16     236  stunted          
6 months    MAL-ED           INDIA                          6              1        2     236  stunted          
6 months    MAL-ED           INDIA                          7              0       17     236  stunted          
6 months    MAL-ED           INDIA                          7              1        4     236  stunted          
6 months    MAL-ED           INDIA                          8              0       17     236  stunted          
6 months    MAL-ED           INDIA                          8              1        4     236  stunted          
6 months    MAL-ED           INDIA                          9              0       17     236  stunted          
6 months    MAL-ED           INDIA                          9              1        4     236  stunted          
6 months    MAL-ED           INDIA                          10             0       19     236  stunted          
6 months    MAL-ED           INDIA                          10             1        5     236  stunted          
6 months    MAL-ED           INDIA                          11             0       16     236  stunted          
6 months    MAL-ED           INDIA                          11             1        8     236  stunted          
6 months    MAL-ED           INDIA                          12             0       19     236  stunted          
6 months    MAL-ED           INDIA                          12             1        3     236  stunted          
6 months    MAL-ED           NEPAL                          1              0       19     236  stunted          
6 months    MAL-ED           NEPAL                          1              1        1     236  stunted          
6 months    MAL-ED           NEPAL                          2              0       18     236  stunted          
6 months    MAL-ED           NEPAL                          2              1        2     236  stunted          
6 months    MAL-ED           NEPAL                          3              0       19     236  stunted          
6 months    MAL-ED           NEPAL                          3              1        1     236  stunted          
6 months    MAL-ED           NEPAL                          4              0       17     236  stunted          
6 months    MAL-ED           NEPAL                          4              1        3     236  stunted          
6 months    MAL-ED           NEPAL                          5              0       18     236  stunted          
6 months    MAL-ED           NEPAL                          5              1        0     236  stunted          
6 months    MAL-ED           NEPAL                          6              0       19     236  stunted          
6 months    MAL-ED           NEPAL                          6              1        1     236  stunted          
6 months    MAL-ED           NEPAL                          7              0       19     236  stunted          
6 months    MAL-ED           NEPAL                          7              1        0     236  stunted          
6 months    MAL-ED           NEPAL                          8              0       18     236  stunted          
6 months    MAL-ED           NEPAL                          8              1        1     236  stunted          
6 months    MAL-ED           NEPAL                          9              0       19     236  stunted          
6 months    MAL-ED           NEPAL                          9              1        1     236  stunted          
6 months    MAL-ED           NEPAL                          10             0       19     236  stunted          
6 months    MAL-ED           NEPAL                          10             1        1     236  stunted          
6 months    MAL-ED           NEPAL                          11             0       20     236  stunted          
6 months    MAL-ED           NEPAL                          11             1        0     236  stunted          
6 months    MAL-ED           NEPAL                          12             0       19     236  stunted          
6 months    MAL-ED           NEPAL                          12             1        1     236  stunted          
6 months    MAL-ED           PERU                           1              0       26     273  stunted          
6 months    MAL-ED           PERU                           1              1        7     273  stunted          
6 months    MAL-ED           PERU                           2              0       19     273  stunted          
6 months    MAL-ED           PERU                           2              1        7     273  stunted          
6 months    MAL-ED           PERU                           3              0       15     273  stunted          
6 months    MAL-ED           PERU                           3              1        7     273  stunted          
6 months    MAL-ED           PERU                           4              0       14     273  stunted          
6 months    MAL-ED           PERU                           4              1        4     273  stunted          
6 months    MAL-ED           PERU                           5              0       22     273  stunted          
6 months    MAL-ED           PERU                           5              1        2     273  stunted          
6 months    MAL-ED           PERU                           6              0       16     273  stunted          
6 months    MAL-ED           PERU                           6              1        4     273  stunted          
6 months    MAL-ED           PERU                           7              0       19     273  stunted          
6 months    MAL-ED           PERU                           7              1        3     273  stunted          
6 months    MAL-ED           PERU                           8              0       14     273  stunted          
6 months    MAL-ED           PERU                           8              1        2     273  stunted          
6 months    MAL-ED           PERU                           9              0       17     273  stunted          
6 months    MAL-ED           PERU                           9              1        5     273  stunted          
6 months    MAL-ED           PERU                           10             0       16     273  stunted          
6 months    MAL-ED           PERU                           10             1        4     273  stunted          
6 months    MAL-ED           PERU                           11             0       23     273  stunted          
6 months    MAL-ED           PERU                           11             1       11     273  stunted          
6 months    MAL-ED           PERU                           12             0       12     273  stunted          
6 months    MAL-ED           PERU                           12             1        4     273  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1              0       22     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1              1       10     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   2              0       28     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   2              1        5     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   3              0       15     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   3              1        2     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   4              0       12     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   4              1        0     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   5              0        8     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   5              1        3     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   6              0       18     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   6              1        0     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   7              0       21     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   7              1        4     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   8              0        4     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   8              1        3     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   9              0       14     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   9              1        3     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   10             0       19     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   10             1        3     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   11             0       19     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   11             1       10     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   12             0       24     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   12             1        7     254  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              0       15     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1        6     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              0       24     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              1        4     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              0       14     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              1        9     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              0        7     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              1        3     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              0        9     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              1        3     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              0       14     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              1        2     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              0       23     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              1        5     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              0       10     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              1        2     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              0       12     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              1        6     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             0       15     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             1        4     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             0       20     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             1        8     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             0       25     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             1        7     247  stunted          
6 months    NIH-Birth        BANGLADESH                     1              0       35     537  stunted          
6 months    NIH-Birth        BANGLADESH                     1              1       15     537  stunted          
6 months    NIH-Birth        BANGLADESH                     2              0       36     537  stunted          
6 months    NIH-Birth        BANGLADESH                     2              1       14     537  stunted          
6 months    NIH-Birth        BANGLADESH                     3              0       36     537  stunted          
6 months    NIH-Birth        BANGLADESH                     3              1       14     537  stunted          
6 months    NIH-Birth        BANGLADESH                     4              0       34     537  stunted          
6 months    NIH-Birth        BANGLADESH                     4              1       10     537  stunted          
6 months    NIH-Birth        BANGLADESH                     5              0       32     537  stunted          
6 months    NIH-Birth        BANGLADESH                     5              1        8     537  stunted          
6 months    NIH-Birth        BANGLADESH                     6              0       28     537  stunted          
6 months    NIH-Birth        BANGLADESH                     6              1       11     537  stunted          
6 months    NIH-Birth        BANGLADESH                     7              0       27     537  stunted          
6 months    NIH-Birth        BANGLADESH                     7              1       18     537  stunted          
6 months    NIH-Birth        BANGLADESH                     8              0       31     537  stunted          
6 months    NIH-Birth        BANGLADESH                     8              1        7     537  stunted          
6 months    NIH-Birth        BANGLADESH                     9              0       23     537  stunted          
6 months    NIH-Birth        BANGLADESH                     9              1        7     537  stunted          
6 months    NIH-Birth        BANGLADESH                     10             0       37     537  stunted          
6 months    NIH-Birth        BANGLADESH                     10             1       15     537  stunted          
6 months    NIH-Birth        BANGLADESH                     11             0       31     537  stunted          
6 months    NIH-Birth        BANGLADESH                     11             1       18     537  stunted          
6 months    NIH-Birth        BANGLADESH                     12             0       43     537  stunted          
6 months    NIH-Birth        BANGLADESH                     12             1        7     537  stunted          
6 months    PROBIT           BELARUS                        1              0     1050   15760  stunted          
6 months    PROBIT           BELARUS                        1              1       52   15760  stunted          
6 months    PROBIT           BELARUS                        2              0      898   15760  stunted          
6 months    PROBIT           BELARUS                        2              1       53   15760  stunted          
6 months    PROBIT           BELARUS                        3              0     1068   15760  stunted          
6 months    PROBIT           BELARUS                        3              1       46   15760  stunted          
6 months    PROBIT           BELARUS                        4              0     1036   15760  stunted          
6 months    PROBIT           BELARUS                        4              1       33   15760  stunted          
6 months    PROBIT           BELARUS                        5              0     1066   15760  stunted          
6 months    PROBIT           BELARUS                        5              1       30   15760  stunted          
6 months    PROBIT           BELARUS                        6              0     1075   15760  stunted          
6 months    PROBIT           BELARUS                        6              1       45   15760  stunted          
6 months    PROBIT           BELARUS                        7              0     1321   15760  stunted          
6 months    PROBIT           BELARUS                        7              1       44   15760  stunted          
6 months    PROBIT           BELARUS                        8              0     1439   15760  stunted          
6 months    PROBIT           BELARUS                        8              1       59   15760  stunted          
6 months    PROBIT           BELARUS                        9              0     1419   15760  stunted          
6 months    PROBIT           BELARUS                        9              1       62   15760  stunted          
6 months    PROBIT           BELARUS                        10             0     1597   15760  stunted          
6 months    PROBIT           BELARUS                        10             1       72   15760  stunted          
6 months    PROBIT           BELARUS                        11             0     1525   15760  stunted          
6 months    PROBIT           BELARUS                        11             1       64   15760  stunted          
6 months    PROBIT           BELARUS                        12             0     1646   15760  stunted          
6 months    PROBIT           BELARUS                        12             1       60   15760  stunted          
6 months    ResPak           PAKISTAN                       1              0        0     239  stunted          
6 months    ResPak           PAKISTAN                       1              1        2     239  stunted          
6 months    ResPak           PAKISTAN                       2              0        2     239  stunted          
6 months    ResPak           PAKISTAN                       2              1        6     239  stunted          
6 months    ResPak           PAKISTAN                       3              0        8     239  stunted          
6 months    ResPak           PAKISTAN                       3              1        2     239  stunted          
6 months    ResPak           PAKISTAN                       4              0        9     239  stunted          
6 months    ResPak           PAKISTAN                       4              1       11     239  stunted          
6 months    ResPak           PAKISTAN                       5              0       18     239  stunted          
6 months    ResPak           PAKISTAN                       5              1       12     239  stunted          
6 months    ResPak           PAKISTAN                       6              0       24     239  stunted          
6 months    ResPak           PAKISTAN                       6              1       15     239  stunted          
6 months    ResPak           PAKISTAN                       7              0       29     239  stunted          
6 months    ResPak           PAKISTAN                       7              1       14     239  stunted          
6 months    ResPak           PAKISTAN                       8              0       20     239  stunted          
6 months    ResPak           PAKISTAN                       8              1        6     239  stunted          
6 months    ResPak           PAKISTAN                       9              0       24     239  stunted          
6 months    ResPak           PAKISTAN                       9              1       13     239  stunted          
6 months    ResPak           PAKISTAN                       10             0       10     239  stunted          
6 months    ResPak           PAKISTAN                       10             1        5     239  stunted          
6 months    ResPak           PAKISTAN                       11             0        6     239  stunted          
6 months    ResPak           PAKISTAN                       11             1        0     239  stunted          
6 months    ResPak           PAKISTAN                       12             0        3     239  stunted          
6 months    ResPak           PAKISTAN                       12             1        0     239  stunted          
6 months    SAS-CompFeed     INDIA                          1              0       60    1336  stunted          
6 months    SAS-CompFeed     INDIA                          1              1       25    1336  stunted          
6 months    SAS-CompFeed     INDIA                          2              0       59    1336  stunted          
6 months    SAS-CompFeed     INDIA                          2              1       22    1336  stunted          
6 months    SAS-CompFeed     INDIA                          3              0       61    1336  stunted          
6 months    SAS-CompFeed     INDIA                          3              1       19    1336  stunted          
6 months    SAS-CompFeed     INDIA                          4              0       57    1336  stunted          
6 months    SAS-CompFeed     INDIA                          4              1       20    1336  stunted          
6 months    SAS-CompFeed     INDIA                          5              0       49    1336  stunted          
6 months    SAS-CompFeed     INDIA                          5              1       27    1336  stunted          
6 months    SAS-CompFeed     INDIA                          6              0       74    1336  stunted          
6 months    SAS-CompFeed     INDIA                          6              1       28    1336  stunted          
6 months    SAS-CompFeed     INDIA                          7              0       65    1336  stunted          
6 months    SAS-CompFeed     INDIA                          7              1       50    1336  stunted          
6 months    SAS-CompFeed     INDIA                          8              0      101    1336  stunted          
6 months    SAS-CompFeed     INDIA                          8              1       51    1336  stunted          
6 months    SAS-CompFeed     INDIA                          9              0      132    1336  stunted          
6 months    SAS-CompFeed     INDIA                          9              1       34    1336  stunted          
6 months    SAS-CompFeed     INDIA                          10             0      113    1336  stunted          
6 months    SAS-CompFeed     INDIA                          10             1       35    1336  stunted          
6 months    SAS-CompFeed     INDIA                          11             0       93    1336  stunted          
6 months    SAS-CompFeed     INDIA                          11             1       32    1336  stunted          
6 months    SAS-CompFeed     INDIA                          12             0       92    1336  stunted          
6 months    SAS-CompFeed     INDIA                          12             1       37    1336  stunted          
6 months    SAS-FoodSuppl    INDIA                          1              0       29     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          1              1       32     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          2              0       21     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          2              1       16     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          3              0       19     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          3              1       16     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          4              0       14     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          4              1       12     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          5              0       15     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          5              1       14     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          6              0       18     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          6              1       13     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          7              0        7     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          7              1       10     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          8              0        0     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          8              1        0     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          9              0        7     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          9              1        5     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          10             0       14     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          10             1       12     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          11             0       33     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          11             1       11     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          12             0       40     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          12             1       22     380  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      187    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       12    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0      125    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       12    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              0      140    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              1       11    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              0      125    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              1       13    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              0      148    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              1       13    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              0      124    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              1       18    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              0      126    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              1       19    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              0      157    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              1       17    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              0      172    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              1       26    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             0      178    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             1       18    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             0      162    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             1       25    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             0      188    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             1       13    2029  stunted          
6 months    ZVITAMBO         ZIMBABWE                       1              0      689    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       1              1      141    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       2              0      508    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       2              1      101    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       3              0      581    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       3              1      155    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       4              0      560    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       4              1      120    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       5              0      524    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       5              1      112    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       6              0      569    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       6              1      111    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       7              0      552    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       7              1      123    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       8              0      662    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       8              1      106    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       9              0      692    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       9              1      109    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       10             0      530    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       10             1       98    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       11             0      641    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       11             1      120    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       12             0      749    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       12             1      116    8669  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1              0        7     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1              1       21     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          2              0        9     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          2              1       15     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          3              0        6     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          3              1       20     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          4              0        8     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          4              1       21     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          5              0       12     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          5              1       31     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          6              0        8     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          6              1       28     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          7              0       13     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          7              1       20     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          8              0       11     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          8              1       30     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          9              0        3     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          9              1       19     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          10             0        5     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          10             1       14     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          11             0       15     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          11             1       26     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          12             0        8     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          12             1       21     371  stunted          
24 months   CMIN             BANGLADESH                     1              0        7     242  stunted          
24 months   CMIN             BANGLADESH                     1              1       19     242  stunted          
24 months   CMIN             BANGLADESH                     2              0        8     242  stunted          
24 months   CMIN             BANGLADESH                     2              1       23     242  stunted          
24 months   CMIN             BANGLADESH                     3              0        8     242  stunted          
24 months   CMIN             BANGLADESH                     3              1       11     242  stunted          
24 months   CMIN             BANGLADESH                     4              0        6     242  stunted          
24 months   CMIN             BANGLADESH                     4              1       12     242  stunted          
24 months   CMIN             BANGLADESH                     5              0       10     242  stunted          
24 months   CMIN             BANGLADESH                     5              1        9     242  stunted          
24 months   CMIN             BANGLADESH                     6              0        6     242  stunted          
24 months   CMIN             BANGLADESH                     6              1       16     242  stunted          
24 months   CMIN             BANGLADESH                     7              0        3     242  stunted          
24 months   CMIN             BANGLADESH                     7              1        9     242  stunted          
24 months   CMIN             BANGLADESH                     8              0        4     242  stunted          
24 months   CMIN             BANGLADESH                     8              1        9     242  stunted          
24 months   CMIN             BANGLADESH                     9              0        5     242  stunted          
24 months   CMIN             BANGLADESH                     9              1       13     242  stunted          
24 months   CMIN             BANGLADESH                     10             0        7     242  stunted          
24 months   CMIN             BANGLADESH                     10             1       12     242  stunted          
24 months   CMIN             BANGLADESH                     11             0        1     242  stunted          
24 months   CMIN             BANGLADESH                     11             1        1     242  stunted          
24 months   CMIN             BANGLADESH                     12             0       12     242  stunted          
24 months   CMIN             BANGLADESH                     12             1       31     242  stunted          
24 months   CONTENT          PERU                           1              0        8     164  stunted          
24 months   CONTENT          PERU                           1              1        0     164  stunted          
24 months   CONTENT          PERU                           2              0        9     164  stunted          
24 months   CONTENT          PERU                           2              1        1     164  stunted          
24 months   CONTENT          PERU                           3              0       19     164  stunted          
24 months   CONTENT          PERU                           3              1        1     164  stunted          
24 months   CONTENT          PERU                           4              0       11     164  stunted          
24 months   CONTENT          PERU                           4              1        2     164  stunted          
24 months   CONTENT          PERU                           5              0       21     164  stunted          
24 months   CONTENT          PERU                           5              1        1     164  stunted          
24 months   CONTENT          PERU                           6              0        9     164  stunted          
24 months   CONTENT          PERU                           6              1        2     164  stunted          
24 months   CONTENT          PERU                           7              0       13     164  stunted          
24 months   CONTENT          PERU                           7              1        0     164  stunted          
24 months   CONTENT          PERU                           8              0       21     164  stunted          
24 months   CONTENT          PERU                           8              1        2     164  stunted          
24 months   CONTENT          PERU                           9              0        8     164  stunted          
24 months   CONTENT          PERU                           9              1        3     164  stunted          
24 months   CONTENT          PERU                           10             0       12     164  stunted          
24 months   CONTENT          PERU                           10             1        0     164  stunted          
24 months   CONTENT          PERU                           11             0       16     164  stunted          
24 months   CONTENT          PERU                           11             1        1     164  stunted          
24 months   CONTENT          PERU                           12             0        4     164  stunted          
24 months   CONTENT          PERU                           12             1        0     164  stunted          
24 months   EE               PAKISTAN                       1              0        6     167  stunted          
24 months   EE               PAKISTAN                       1              1       22     167  stunted          
24 months   EE               PAKISTAN                       2              0        0     167  stunted          
24 months   EE               PAKISTAN                       2              1        2     167  stunted          
24 months   EE               PAKISTAN                       3              0        0     167  stunted          
24 months   EE               PAKISTAN                       3              1        2     167  stunted          
24 months   EE               PAKISTAN                       4              0        0     167  stunted          
24 months   EE               PAKISTAN                       4              1        0     167  stunted          
24 months   EE               PAKISTAN                       5              0        0     167  stunted          
24 months   EE               PAKISTAN                       5              1        0     167  stunted          
24 months   EE               PAKISTAN                       6              0        0     167  stunted          
24 months   EE               PAKISTAN                       6              1        0     167  stunted          
24 months   EE               PAKISTAN                       7              0        0     167  stunted          
24 months   EE               PAKISTAN                       7              1        0     167  stunted          
24 months   EE               PAKISTAN                       8              0        0     167  stunted          
24 months   EE               PAKISTAN                       8              1        0     167  stunted          
24 months   EE               PAKISTAN                       9              0        0     167  stunted          
24 months   EE               PAKISTAN                       9              1        0     167  stunted          
24 months   EE               PAKISTAN                       10             0        0     167  stunted          
24 months   EE               PAKISTAN                       10             1        0     167  stunted          
24 months   EE               PAKISTAN                       11             0       18     167  stunted          
24 months   EE               PAKISTAN                       11             1       39     167  stunted          
24 months   EE               PAKISTAN                       12             0       25     167  stunted          
24 months   EE               PAKISTAN                       12             1       53     167  stunted          
24 months   GMS-Nepal        NEPAL                          1              0        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          1              1        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          2              0        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          2              1        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          3              0        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          3              1        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          4              0        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          4              1        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          5              0        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          5              1        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          6              0       42     488  stunted          
24 months   GMS-Nepal        NEPAL                          6              1       31     488  stunted          
24 months   GMS-Nepal        NEPAL                          7              0      103     488  stunted          
24 months   GMS-Nepal        NEPAL                          7              1       97     488  stunted          
24 months   GMS-Nepal        NEPAL                          8              0      124     488  stunted          
24 months   GMS-Nepal        NEPAL                          8              1       91     488  stunted          
24 months   GMS-Nepal        NEPAL                          9              0        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          9              1        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          10             0        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          10             1        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          11             0        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          11             1        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          12             0        0     488  stunted          
24 months   GMS-Nepal        NEPAL                          12             1        0     488  stunted          
24 months   IRC              INDIA                          1              0       18     409  stunted          
24 months   IRC              INDIA                          1              1       17     409  stunted          
24 months   IRC              INDIA                          2              0       14     409  stunted          
24 months   IRC              INDIA                          2              1       16     409  stunted          
24 months   IRC              INDIA                          3              0       14     409  stunted          
24 months   IRC              INDIA                          3              1       15     409  stunted          
24 months   IRC              INDIA                          4              0        9     409  stunted          
24 months   IRC              INDIA                          4              1       15     409  stunted          
24 months   IRC              INDIA                          5              0        4     409  stunted          
24 months   IRC              INDIA                          5              1       17     409  stunted          
24 months   IRC              INDIA                          6              0       27     409  stunted          
24 months   IRC              INDIA                          6              1        8     409  stunted          
24 months   IRC              INDIA                          7              0       22     409  stunted          
24 months   IRC              INDIA                          7              1       14     409  stunted          
24 months   IRC              INDIA                          8              0       31     409  stunted          
24 months   IRC              INDIA                          8              1       10     409  stunted          
24 months   IRC              INDIA                          9              0       15     409  stunted          
24 months   IRC              INDIA                          9              1       15     409  stunted          
24 months   IRC              INDIA                          10             0       28     409  stunted          
24 months   IRC              INDIA                          10             1       10     409  stunted          
24 months   IRC              INDIA                          11             0       25     409  stunted          
24 months   IRC              INDIA                          11             1       16     409  stunted          
24 months   IRC              INDIA                          12             0       30     409  stunted          
24 months   IRC              INDIA                          12             1       19     409  stunted          
24 months   JiVitA-3         BANGLADESH                     1              0      317    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     1              1      388    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     2              0      295    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     2              1      314    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     3              0      375    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     3              1      355    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     4              0      295    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     4              1      246    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     5              0      211    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     5              1      185    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     6              0      281    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     6              1      283    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     7              0      370    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     7              1      279    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     8              0      355    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     8              1      293    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     9              0      380    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     9              1      347    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     10             0      463    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     10             1      422    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     11             0      456    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     11             1      484    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     12             0      595    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     12             1      643    8632  stunted          
24 months   JiVitA-4         BANGLADESH                     1              0       28    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     1              1       19    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     2              0      187    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     2              1      139    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     3              0      227    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     3              1      174    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     4              0      449    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     4              1      354    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     5              0      346    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     5              1      213    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     6              0      253    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     6              1      170    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     7              0      447    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     7              1      336    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     8              0      308    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     8              1      164    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     9              0      277    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     9              1      168    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     10             0      186    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     10             1       90    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     11             0       90    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     11             1       56    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     12             0       49    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     12             1       22    4752  stunted          
24 months   Keneba           GAMBIA                         1              0       99    1725  stunted          
24 months   Keneba           GAMBIA                         1              1       51    1725  stunted          
24 months   Keneba           GAMBIA                         2              0      110    1725  stunted          
24 months   Keneba           GAMBIA                         2              1       50    1725  stunted          
24 months   Keneba           GAMBIA                         3              0      113    1725  stunted          
24 months   Keneba           GAMBIA                         3              1       46    1725  stunted          
24 months   Keneba           GAMBIA                         4              0      114    1725  stunted          
24 months   Keneba           GAMBIA                         4              1       61    1725  stunted          
24 months   Keneba           GAMBIA                         5              0      122    1725  stunted          
24 months   Keneba           GAMBIA                         5              1       60    1725  stunted          
24 months   Keneba           GAMBIA                         6              0       84    1725  stunted          
24 months   Keneba           GAMBIA                         6              1       48    1725  stunted          
24 months   Keneba           GAMBIA                         7              0       60    1725  stunted          
24 months   Keneba           GAMBIA                         7              1       41    1725  stunted          
24 months   Keneba           GAMBIA                         8              0       56    1725  stunted          
24 months   Keneba           GAMBIA                         8              1       36    1725  stunted          
24 months   Keneba           GAMBIA                         9              0       97    1725  stunted          
24 months   Keneba           GAMBIA                         9              1       38    1725  stunted          
24 months   Keneba           GAMBIA                         10             0      107    1725  stunted          
24 months   Keneba           GAMBIA                         10             1       43    1725  stunted          
24 months   Keneba           GAMBIA                         11             0      108    1725  stunted          
24 months   Keneba           GAMBIA                         11             1       70    1725  stunted          
24 months   Keneba           GAMBIA                         12             0       74    1725  stunted          
24 months   Keneba           GAMBIA                         12             1       37    1725  stunted          
24 months   LCNI-5           MALAWI                         1              0       20     579  stunted          
24 months   LCNI-5           MALAWI                         1              1       21     579  stunted          
24 months   LCNI-5           MALAWI                         2              0       57     579  stunted          
24 months   LCNI-5           MALAWI                         2              1       31     579  stunted          
24 months   LCNI-5           MALAWI                         3              0       38     579  stunted          
24 months   LCNI-5           MALAWI                         3              1       32     579  stunted          
24 months   LCNI-5           MALAWI                         4              0       38     579  stunted          
24 months   LCNI-5           MALAWI                         4              1       41     579  stunted          
24 months   LCNI-5           MALAWI                         5              0       34     579  stunted          
24 months   LCNI-5           MALAWI                         5              1       30     579  stunted          
24 months   LCNI-5           MALAWI                         6              0       30     579  stunted          
24 months   LCNI-5           MALAWI                         6              1       34     579  stunted          
24 months   LCNI-5           MALAWI                         7              0       26     579  stunted          
24 months   LCNI-5           MALAWI                         7              1       15     579  stunted          
24 months   LCNI-5           MALAWI                         8              0       20     579  stunted          
24 months   LCNI-5           MALAWI                         8              1        7     579  stunted          
24 months   LCNI-5           MALAWI                         9              0       12     579  stunted          
24 months   LCNI-5           MALAWI                         9              1        8     579  stunted          
24 months   LCNI-5           MALAWI                         10             0       16     579  stunted          
24 months   LCNI-5           MALAWI                         10             1        9     579  stunted          
24 months   LCNI-5           MALAWI                         11             0       20     579  stunted          
24 months   LCNI-5           MALAWI                         11             1       16     579  stunted          
24 months   LCNI-5           MALAWI                         12             0       10     579  stunted          
24 months   LCNI-5           MALAWI                         12             1       14     579  stunted          
24 months   MAL-ED           BANGLADESH                     1              0        8     212  stunted          
24 months   MAL-ED           BANGLADESH                     1              1        9     212  stunted          
24 months   MAL-ED           BANGLADESH                     2              0        5     212  stunted          
24 months   MAL-ED           BANGLADESH                     2              1       12     212  stunted          
24 months   MAL-ED           BANGLADESH                     3              0        7     212  stunted          
24 months   MAL-ED           BANGLADESH                     3              1       12     212  stunted          
24 months   MAL-ED           BANGLADESH                     4              0       13     212  stunted          
24 months   MAL-ED           BANGLADESH                     4              1        8     212  stunted          
24 months   MAL-ED           BANGLADESH                     5              0        7     212  stunted          
24 months   MAL-ED           BANGLADESH                     5              1        8     212  stunted          
24 months   MAL-ED           BANGLADESH                     6              0        4     212  stunted          
24 months   MAL-ED           BANGLADESH                     6              1        5     212  stunted          
24 months   MAL-ED           BANGLADESH                     7              0       10     212  stunted          
24 months   MAL-ED           BANGLADESH                     7              1        7     212  stunted          
24 months   MAL-ED           BANGLADESH                     8              0       12     212  stunted          
24 months   MAL-ED           BANGLADESH                     8              1       12     212  stunted          
24 months   MAL-ED           BANGLADESH                     9              0       11     212  stunted          
24 months   MAL-ED           BANGLADESH                     9              1        7     212  stunted          
24 months   MAL-ED           BANGLADESH                     10             0       13     212  stunted          
24 months   MAL-ED           BANGLADESH                     10             1        7     212  stunted          
24 months   MAL-ED           BANGLADESH                     11             0        4     212  stunted          
24 months   MAL-ED           BANGLADESH                     11             1        5     212  stunted          
24 months   MAL-ED           BANGLADESH                     12             0       17     212  stunted          
24 months   MAL-ED           BANGLADESH                     12             1        9     212  stunted          
24 months   MAL-ED           BRAZIL                         1              0       13     169  stunted          
24 months   MAL-ED           BRAZIL                         1              1        1     169  stunted          
24 months   MAL-ED           BRAZIL                         2              0       18     169  stunted          
24 months   MAL-ED           BRAZIL                         2              1        1     169  stunted          
24 months   MAL-ED           BRAZIL                         3              0       11     169  stunted          
24 months   MAL-ED           BRAZIL                         3              1        0     169  stunted          
24 months   MAL-ED           BRAZIL                         4              0       11     169  stunted          
24 months   MAL-ED           BRAZIL                         4              1        0     169  stunted          
24 months   MAL-ED           BRAZIL                         5              0       15     169  stunted          
24 months   MAL-ED           BRAZIL                         5              1        0     169  stunted          
24 months   MAL-ED           BRAZIL                         6              0        9     169  stunted          
24 months   MAL-ED           BRAZIL                         6              1        0     169  stunted          
24 months   MAL-ED           BRAZIL                         7              0        9     169  stunted          
24 months   MAL-ED           BRAZIL                         7              1        1     169  stunted          
24 months   MAL-ED           BRAZIL                         8              0       11     169  stunted          
24 months   MAL-ED           BRAZIL                         8              1        1     169  stunted          
24 months   MAL-ED           BRAZIL                         9              0       17     169  stunted          
24 months   MAL-ED           BRAZIL                         9              1        1     169  stunted          
24 months   MAL-ED           BRAZIL                         10             0       20     169  stunted          
24 months   MAL-ED           BRAZIL                         10             1        1     169  stunted          
24 months   MAL-ED           BRAZIL                         11             0       12     169  stunted          
24 months   MAL-ED           BRAZIL                         11             1        0     169  stunted          
24 months   MAL-ED           BRAZIL                         12             0       16     169  stunted          
24 months   MAL-ED           BRAZIL                         12             1        1     169  stunted          
24 months   MAL-ED           INDIA                          1              0       10     227  stunted          
24 months   MAL-ED           INDIA                          1              1        5     227  stunted          
24 months   MAL-ED           INDIA                          2              0       11     227  stunted          
24 months   MAL-ED           INDIA                          2              1       12     227  stunted          
24 months   MAL-ED           INDIA                          3              0       13     227  stunted          
24 months   MAL-ED           INDIA                          3              1        6     227  stunted          
24 months   MAL-ED           INDIA                          4              0        9     227  stunted          
24 months   MAL-ED           INDIA                          4              1        8     227  stunted          
24 months   MAL-ED           INDIA                          5              0        4     227  stunted          
24 months   MAL-ED           INDIA                          5              1        3     227  stunted          
24 months   MAL-ED           INDIA                          6              0       14     227  stunted          
24 months   MAL-ED           INDIA                          6              1        3     227  stunted          
24 months   MAL-ED           INDIA                          7              0       12     227  stunted          
24 months   MAL-ED           INDIA                          7              1        9     227  stunted          
24 months   MAL-ED           INDIA                          8              0       10     227  stunted          
24 months   MAL-ED           INDIA                          8              1       10     227  stunted          
24 months   MAL-ED           INDIA                          9              0       10     227  stunted          
24 months   MAL-ED           INDIA                          9              1       10     227  stunted          
24 months   MAL-ED           INDIA                          10             0       14     227  stunted          
24 months   MAL-ED           INDIA                          10             1        9     227  stunted          
24 months   MAL-ED           INDIA                          11             0       10     227  stunted          
24 months   MAL-ED           INDIA                          11             1       14     227  stunted          
24 months   MAL-ED           INDIA                          12             0       13     227  stunted          
24 months   MAL-ED           INDIA                          12             1        8     227  stunted          
24 months   MAL-ED           NEPAL                          1              0       14     228  stunted          
24 months   MAL-ED           NEPAL                          1              1        5     228  stunted          
24 months   MAL-ED           NEPAL                          2              0       13     228  stunted          
24 months   MAL-ED           NEPAL                          2              1        5     228  stunted          
24 months   MAL-ED           NEPAL                          3              0       10     228  stunted          
24 months   MAL-ED           NEPAL                          3              1        9     228  stunted          
24 months   MAL-ED           NEPAL                          4              0       15     228  stunted          
24 months   MAL-ED           NEPAL                          4              1        5     228  stunted          
24 months   MAL-ED           NEPAL                          5              0       15     228  stunted          
24 months   MAL-ED           NEPAL                          5              1        2     228  stunted          
24 months   MAL-ED           NEPAL                          6              0       15     228  stunted          
24 months   MAL-ED           NEPAL                          6              1        5     228  stunted          
24 months   MAL-ED           NEPAL                          7              0       18     228  stunted          
24 months   MAL-ED           NEPAL                          7              1        1     228  stunted          
24 months   MAL-ED           NEPAL                          8              0       15     228  stunted          
24 months   MAL-ED           NEPAL                          8              1        3     228  stunted          
24 months   MAL-ED           NEPAL                          9              0       18     228  stunted          
24 months   MAL-ED           NEPAL                          9              1        1     228  stunted          
24 months   MAL-ED           NEPAL                          10             0       19     228  stunted          
24 months   MAL-ED           NEPAL                          10             1        1     228  stunted          
24 months   MAL-ED           NEPAL                          11             0       13     228  stunted          
24 months   MAL-ED           NEPAL                          11             1        6     228  stunted          
24 months   MAL-ED           NEPAL                          12             0       13     228  stunted          
24 months   MAL-ED           NEPAL                          12             1        7     228  stunted          
24 months   MAL-ED           PERU                           1              0       12     201  stunted          
24 months   MAL-ED           PERU                           1              1       14     201  stunted          
24 months   MAL-ED           PERU                           2              0       15     201  stunted          
24 months   MAL-ED           PERU                           2              1        8     201  stunted          
24 months   MAL-ED           PERU                           3              0        9     201  stunted          
24 months   MAL-ED           PERU                           3              1        6     201  stunted          
24 months   MAL-ED           PERU                           4              0        6     201  stunted          
24 months   MAL-ED           PERU                           4              1        4     201  stunted          
24 months   MAL-ED           PERU                           5              0       12     201  stunted          
24 months   MAL-ED           PERU                           5              1        6     201  stunted          
24 months   MAL-ED           PERU                           6              0        9     201  stunted          
24 months   MAL-ED           PERU                           6              1        5     201  stunted          
24 months   MAL-ED           PERU                           7              0        9     201  stunted          
24 months   MAL-ED           PERU                           7              1        5     201  stunted          
24 months   MAL-ED           PERU                           8              0        9     201  stunted          
24 months   MAL-ED           PERU                           8              1        3     201  stunted          
24 months   MAL-ED           PERU                           9              0       16     201  stunted          
24 months   MAL-ED           PERU                           9              1        5     201  stunted          
24 months   MAL-ED           PERU                           10             0       13     201  stunted          
24 months   MAL-ED           PERU                           10             1        2     201  stunted          
24 months   MAL-ED           PERU                           11             0       12     201  stunted          
24 months   MAL-ED           PERU                           11             1        9     201  stunted          
24 months   MAL-ED           PERU                           12             0        5     201  stunted          
24 months   MAL-ED           PERU                           12             1        7     201  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1              0       14     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1              1       15     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   2              0       18     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   2              1       12     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   3              0       10     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   3              1        6     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   4              0       11     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   4              1        1     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   5              0        8     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   5              1        2     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   6              0       12     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   6              1        3     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   7              0       15     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   7              1       10     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   8              0        4     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   8              1        3     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   9              0       13     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   9              1        4     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   10             0       16     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   10             1        6     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   11             0       16     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   11             1       11     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   12             0       17     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   12             1       11     238  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              0        4     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1       14     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              0        5     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              1       14     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              0        3     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              1       19     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              0        1     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              1        7     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              0        4     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              1       10     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              0        3     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              1       11     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              0       11     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              1       17     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              0        5     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              1        7     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              0        4     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              1       11     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             0        5     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             1       12     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             0        3     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             1       18     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             0       11     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             1       15     214  stunted          
24 months   NIH-Birth        BANGLADESH                     1              0       15     429  stunted          
24 months   NIH-Birth        BANGLADESH                     1              1       27     429  stunted          
24 months   NIH-Birth        BANGLADESH                     2              0       13     429  stunted          
24 months   NIH-Birth        BANGLADESH                     2              1       23     429  stunted          
24 months   NIH-Birth        BANGLADESH                     3              0       23     429  stunted          
24 months   NIH-Birth        BANGLADESH                     3              1       18     429  stunted          
24 months   NIH-Birth        BANGLADESH                     4              0       11     429  stunted          
24 months   NIH-Birth        BANGLADESH                     4              1       23     429  stunted          
24 months   NIH-Birth        BANGLADESH                     5              0       13     429  stunted          
24 months   NIH-Birth        BANGLADESH                     5              1       21     429  stunted          
24 months   NIH-Birth        BANGLADESH                     6              0       12     429  stunted          
24 months   NIH-Birth        BANGLADESH                     6              1       18     429  stunted          
24 months   NIH-Birth        BANGLADESH                     7              0       17     429  stunted          
24 months   NIH-Birth        BANGLADESH                     7              1       20     429  stunted          
24 months   NIH-Birth        BANGLADESH                     8              0       13     429  stunted          
24 months   NIH-Birth        BANGLADESH                     8              1       17     429  stunted          
24 months   NIH-Birth        BANGLADESH                     9              0       11     429  stunted          
24 months   NIH-Birth        BANGLADESH                     9              1        8     429  stunted          
24 months   NIH-Birth        BANGLADESH                     10             0       18     429  stunted          
24 months   NIH-Birth        BANGLADESH                     10             1       22     429  stunted          
24 months   NIH-Birth        BANGLADESH                     11             0       19     429  stunted          
24 months   NIH-Birth        BANGLADESH                     11             1       22     429  stunted          
24 months   NIH-Birth        BANGLADESH                     12             0       20     429  stunted          
24 months   NIH-Birth        BANGLADESH                     12             1       25     429  stunted          
24 months   PROBIT           BELARUS                        1              0      255    4035  stunted          
24 months   PROBIT           BELARUS                        1              1       14    4035  stunted          
24 months   PROBIT           BELARUS                        2              0      195    4035  stunted          
24 months   PROBIT           BELARUS                        2              1       16    4035  stunted          
24 months   PROBIT           BELARUS                        3              0      307    4035  stunted          
24 months   PROBIT           BELARUS                        3              1       17    4035  stunted          
24 months   PROBIT           BELARUS                        4              0      313    4035  stunted          
24 months   PROBIT           BELARUS                        4              1       13    4035  stunted          
24 months   PROBIT           BELARUS                        5              0      293    4035  stunted          
24 months   PROBIT           BELARUS                        5              1       14    4035  stunted          
24 months   PROBIT           BELARUS                        6              0      253    4035  stunted          
24 months   PROBIT           BELARUS                        6              1       12    4035  stunted          
24 months   PROBIT           BELARUS                        7              0      358    4035  stunted          
24 months   PROBIT           BELARUS                        7              1       15    4035  stunted          
24 months   PROBIT           BELARUS                        8              0      337    4035  stunted          
24 months   PROBIT           BELARUS                        8              1       16    4035  stunted          
24 months   PROBIT           BELARUS                        9              0      352    4035  stunted          
24 months   PROBIT           BELARUS                        9              1       30    4035  stunted          
24 months   PROBIT           BELARUS                        10             0      349    4035  stunted          
24 months   PROBIT           BELARUS                        10             1       44    4035  stunted          
24 months   PROBIT           BELARUS                        11             0      350    4035  stunted          
24 months   PROBIT           BELARUS                        11             1       39    4035  stunted          
24 months   PROBIT           BELARUS                        12             0      398    4035  stunted          
24 months   PROBIT           BELARUS                        12             1       45    4035  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              0        3       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              0        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              0        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              1        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             1        0       6  stunted          
24 months   ZVITAMBO         ZIMBABWE                       1              0      128    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       1              1       62    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       2              0      117    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       2              1       72    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       3              0      150    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       3              1       64    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       4              0      124    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       4              1       55    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       5              0      107    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       5              1       57    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       6              0      131    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       6              1       68    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       7              0       70    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       7              1       54    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       8              0       80    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       8              1       50    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       9              0       11    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       9              1        6    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       10             0       19    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       10             1        6    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       11             0       42    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       11             1       25    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       12             0       92    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       12             1       50    1640  stunted          


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
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
