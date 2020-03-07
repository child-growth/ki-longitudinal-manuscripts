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

agecat      studyid          country                        month    stunted   n_cell       n
----------  ---------------  -----------------------------  ------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1              0        7      92
Birth       CMC-V-BCS-2002   INDIA                          1              1        2      92
Birth       CMC-V-BCS-2002   INDIA                          2              0        0      92
Birth       CMC-V-BCS-2002   INDIA                          2              1        1      92
Birth       CMC-V-BCS-2002   INDIA                          3              0        7      92
Birth       CMC-V-BCS-2002   INDIA                          3              1        1      92
Birth       CMC-V-BCS-2002   INDIA                          4              0        7      92
Birth       CMC-V-BCS-2002   INDIA                          4              1        2      92
Birth       CMC-V-BCS-2002   INDIA                          5              0       10      92
Birth       CMC-V-BCS-2002   INDIA                          5              1        1      92
Birth       CMC-V-BCS-2002   INDIA                          6              0        9      92
Birth       CMC-V-BCS-2002   INDIA                          6              1        1      92
Birth       CMC-V-BCS-2002   INDIA                          7              0        7      92
Birth       CMC-V-BCS-2002   INDIA                          7              1        0      92
Birth       CMC-V-BCS-2002   INDIA                          8              0        3      92
Birth       CMC-V-BCS-2002   INDIA                          8              1        1      92
Birth       CMC-V-BCS-2002   INDIA                          9              0        5      92
Birth       CMC-V-BCS-2002   INDIA                          9              1        3      92
Birth       CMC-V-BCS-2002   INDIA                          10             0        8      92
Birth       CMC-V-BCS-2002   INDIA                          10             1        2      92
Birth       CMC-V-BCS-2002   INDIA                          11             0       10      92
Birth       CMC-V-BCS-2002   INDIA                          11             1        1      92
Birth       CMC-V-BCS-2002   INDIA                          12             0        2      92
Birth       CMC-V-BCS-2002   INDIA                          12             1        2      92
Birth       CMIN             BANGLADESH                     1              0        0      26
Birth       CMIN             BANGLADESH                     1              1        1      26
Birth       CMIN             BANGLADESH                     2              0        3      26
Birth       CMIN             BANGLADESH                     2              1        3      26
Birth       CMIN             BANGLADESH                     3              0        2      26
Birth       CMIN             BANGLADESH                     3              1        0      26
Birth       CMIN             BANGLADESH                     4              0        0      26
Birth       CMIN             BANGLADESH                     4              1        1      26
Birth       CMIN             BANGLADESH                     5              0        3      26
Birth       CMIN             BANGLADESH                     5              1        0      26
Birth       CMIN             BANGLADESH                     6              0        0      26
Birth       CMIN             BANGLADESH                     6              1        0      26
Birth       CMIN             BANGLADESH                     7              0        0      26
Birth       CMIN             BANGLADESH                     7              1        0      26
Birth       CMIN             BANGLADESH                     8              0        4      26
Birth       CMIN             BANGLADESH                     8              1        3      26
Birth       CMIN             BANGLADESH                     9              0        2      26
Birth       CMIN             BANGLADESH                     9              1        0      26
Birth       CMIN             BANGLADESH                     10             0        1      26
Birth       CMIN             BANGLADESH                     10             1        0      26
Birth       CMIN             BANGLADESH                     11             0        2      26
Birth       CMIN             BANGLADESH                     11             1        1      26
Birth       CMIN             BANGLADESH                     12             0        0      26
Birth       CMIN             BANGLADESH                     12             1        0      26
Birth       CONTENT          PERU                           1              0        0       2
Birth       CONTENT          PERU                           1              1        0       2
Birth       CONTENT          PERU                           2              0        0       2
Birth       CONTENT          PERU                           2              1        0       2
Birth       CONTENT          PERU                           3              0        0       2
Birth       CONTENT          PERU                           3              1        0       2
Birth       CONTENT          PERU                           4              0        0       2
Birth       CONTENT          PERU                           4              1        0       2
Birth       CONTENT          PERU                           5              0        2       2
Birth       CONTENT          PERU                           5              1        0       2
Birth       CONTENT          PERU                           6              0        0       2
Birth       CONTENT          PERU                           6              1        0       2
Birth       CONTENT          PERU                           7              0        0       2
Birth       CONTENT          PERU                           7              1        0       2
Birth       CONTENT          PERU                           8              0        0       2
Birth       CONTENT          PERU                           8              1        0       2
Birth       CONTENT          PERU                           9              0        0       2
Birth       CONTENT          PERU                           9              1        0       2
Birth       CONTENT          PERU                           10             0        0       2
Birth       CONTENT          PERU                           10             1        0       2
Birth       CONTENT          PERU                           11             0        0       2
Birth       CONTENT          PERU                           11             1        0       2
Birth       CONTENT          PERU                           12             0        0       2
Birth       CONTENT          PERU                           12             1        0       2
Birth       EE               PAKISTAN                       1              0       23     240
Birth       EE               PAKISTAN                       1              1       34     240
Birth       EE               PAKISTAN                       2              0       33     240
Birth       EE               PAKISTAN                       2              1       17     240
Birth       EE               PAKISTAN                       3              0       18     240
Birth       EE               PAKISTAN                       3              1       11     240
Birth       EE               PAKISTAN                       4              0        5     240
Birth       EE               PAKISTAN                       4              1        6     240
Birth       EE               PAKISTAN                       5              0        0     240
Birth       EE               PAKISTAN                       5              1        0     240
Birth       EE               PAKISTAN                       6              0        0     240
Birth       EE               PAKISTAN                       6              1        0     240
Birth       EE               PAKISTAN                       7              0        0     240
Birth       EE               PAKISTAN                       7              1        0     240
Birth       EE               PAKISTAN                       8              0        0     240
Birth       EE               PAKISTAN                       8              1        0     240
Birth       EE               PAKISTAN                       9              0        0     240
Birth       EE               PAKISTAN                       9              1        0     240
Birth       EE               PAKISTAN                       10             0        0     240
Birth       EE               PAKISTAN                       10             1        0     240
Birth       EE               PAKISTAN                       11             0       31     240
Birth       EE               PAKISTAN                       11             1       13     240
Birth       EE               PAKISTAN                       12             0       30     240
Birth       EE               PAKISTAN                       12             1       19     240
Birth       GMS-Nepal        NEPAL                          1              0        0     696
Birth       GMS-Nepal        NEPAL                          1              1        0     696
Birth       GMS-Nepal        NEPAL                          2              0        0     696
Birth       GMS-Nepal        NEPAL                          2              1        0     696
Birth       GMS-Nepal        NEPAL                          3              0        0     696
Birth       GMS-Nepal        NEPAL                          3              1        0     696
Birth       GMS-Nepal        NEPAL                          4              0        1     696
Birth       GMS-Nepal        NEPAL                          4              1        0     696
Birth       GMS-Nepal        NEPAL                          5              0        0     696
Birth       GMS-Nepal        NEPAL                          5              1        0     696
Birth       GMS-Nepal        NEPAL                          6              0      132     696
Birth       GMS-Nepal        NEPAL                          6              1       28     696
Birth       GMS-Nepal        NEPAL                          7              0      213     696
Birth       GMS-Nepal        NEPAL                          7              1       52     696
Birth       GMS-Nepal        NEPAL                          8              0      228     696
Birth       GMS-Nepal        NEPAL                          8              1       42     696
Birth       GMS-Nepal        NEPAL                          9              0        0     696
Birth       GMS-Nepal        NEPAL                          9              1        0     696
Birth       GMS-Nepal        NEPAL                          10             0        0     696
Birth       GMS-Nepal        NEPAL                          10             1        0     696
Birth       GMS-Nepal        NEPAL                          11             0        0     696
Birth       GMS-Nepal        NEPAL                          11             1        0     696
Birth       GMS-Nepal        NEPAL                          12             0        0     696
Birth       GMS-Nepal        NEPAL                          12             1        0     696
Birth       IRC              INDIA                          1              0       27     388
Birth       IRC              INDIA                          1              1        7     388
Birth       IRC              INDIA                          2              0       23     388
Birth       IRC              INDIA                          2              1        2     388
Birth       IRC              INDIA                          3              0       23     388
Birth       IRC              INDIA                          3              1        4     388
Birth       IRC              INDIA                          4              0       20     388
Birth       IRC              INDIA                          4              1        2     388
Birth       IRC              INDIA                          5              0       20     388
Birth       IRC              INDIA                          5              1        1     388
Birth       IRC              INDIA                          6              0       30     388
Birth       IRC              INDIA                          6              1        4     388
Birth       IRC              INDIA                          7              0       31     388
Birth       IRC              INDIA                          7              1        4     388
Birth       IRC              INDIA                          8              0       36     388
Birth       IRC              INDIA                          8              1        3     388
Birth       IRC              INDIA                          9              0       23     388
Birth       IRC              INDIA                          9              1        2     388
Birth       IRC              INDIA                          10             0       33     388
Birth       IRC              INDIA                          10             1        4     388
Birth       IRC              INDIA                          11             0       34     388
Birth       IRC              INDIA                          11             1        6     388
Birth       IRC              INDIA                          12             0       43     388
Birth       IRC              INDIA                          12             1        6     388
Birth       JiVitA-3         BANGLADESH                     1              0     1336   22455
Birth       JiVitA-3         BANGLADESH                     1              1      776   22455
Birth       JiVitA-3         BANGLADESH                     2              0     1186   22455
Birth       JiVitA-3         BANGLADESH                     2              1      558   22455
Birth       JiVitA-3         BANGLADESH                     3              0     1453   22455
Birth       JiVitA-3         BANGLADESH                     3              1      607   22455
Birth       JiVitA-3         BANGLADESH                     4              0     1069   22455
Birth       JiVitA-3         BANGLADESH                     4              1      420   22455
Birth       JiVitA-3         BANGLADESH                     5              0      766   22455
Birth       JiVitA-3         BANGLADESH                     5              1      321   22455
Birth       JiVitA-3         BANGLADESH                     6              0      792   22455
Birth       JiVitA-3         BANGLADESH                     6              1      319   22455
Birth       JiVitA-3         BANGLADESH                     7              0      883   22455
Birth       JiVitA-3         BANGLADESH                     7              1      377   22455
Birth       JiVitA-3         BANGLADESH                     8              0     1170   22455
Birth       JiVitA-3         BANGLADESH                     8              1      545   22455
Birth       JiVitA-3         BANGLADESH                     9              0     1594   22455
Birth       JiVitA-3         BANGLADESH                     9              1      673   22455
Birth       JiVitA-3         BANGLADESH                     10             0     1589   22455
Birth       JiVitA-3         BANGLADESH                     10             1      839   22455
Birth       JiVitA-3         BANGLADESH                     11             0     1555   22455
Birth       JiVitA-3         BANGLADESH                     11             1      927   22455
Birth       JiVitA-3         BANGLADESH                     12             0     1675   22455
Birth       JiVitA-3         BANGLADESH                     12             1     1025   22455
Birth       JiVitA-4         BANGLADESH                     1              0        0    2823
Birth       JiVitA-4         BANGLADESH                     1              1        0    2823
Birth       JiVitA-4         BANGLADESH                     2              0      219    2823
Birth       JiVitA-4         BANGLADESH                     2              1      114    2823
Birth       JiVitA-4         BANGLADESH                     3              0      247    2823
Birth       JiVitA-4         BANGLADESH                     3              1      149    2823
Birth       JiVitA-4         BANGLADESH                     4              0      323    2823
Birth       JiVitA-4         BANGLADESH                     4              1      144    2823
Birth       JiVitA-4         BANGLADESH                     5              0      315    2823
Birth       JiVitA-4         BANGLADESH                     5              1      134    2823
Birth       JiVitA-4         BANGLADESH                     6              0      244    2823
Birth       JiVitA-4         BANGLADESH                     6              1      113    2823
Birth       JiVitA-4         BANGLADESH                     7              0      259    2823
Birth       JiVitA-4         BANGLADESH                     7              1       99    2823
Birth       JiVitA-4         BANGLADESH                     8              0      191    2823
Birth       JiVitA-4         BANGLADESH                     8              1       56    2823
Birth       JiVitA-4         BANGLADESH                     9              0      114    2823
Birth       JiVitA-4         BANGLADESH                     9              1       36    2823
Birth       JiVitA-4         BANGLADESH                     10             0       54    2823
Birth       JiVitA-4         BANGLADESH                     10             1       12    2823
Birth       JiVitA-4         BANGLADESH                     11             0        0    2823
Birth       JiVitA-4         BANGLADESH                     11             1        0    2823
Birth       JiVitA-4         BANGLADESH                     12             0        0    2823
Birth       JiVitA-4         BANGLADESH                     12             1        0    2823
Birth       Keneba           GAMBIA                         1              0      130    1543
Birth       Keneba           GAMBIA                         1              1        8    1543
Birth       Keneba           GAMBIA                         2              0      151    1543
Birth       Keneba           GAMBIA                         2              1       12    1543
Birth       Keneba           GAMBIA                         3              0      142    1543
Birth       Keneba           GAMBIA                         3              1        5    1543
Birth       Keneba           GAMBIA                         4              0      161    1543
Birth       Keneba           GAMBIA                         4              1        4    1543
Birth       Keneba           GAMBIA                         5              0      103    1543
Birth       Keneba           GAMBIA                         5              1        2    1543
Birth       Keneba           GAMBIA                         6              0      105    1543
Birth       Keneba           GAMBIA                         6              1        3    1543
Birth       Keneba           GAMBIA                         7              0       85    1543
Birth       Keneba           GAMBIA                         7              1        4    1543
Birth       Keneba           GAMBIA                         8              0       71    1543
Birth       Keneba           GAMBIA                         8              1        5    1543
Birth       Keneba           GAMBIA                         9              0      119    1543
Birth       Keneba           GAMBIA                         9              1        6    1543
Birth       Keneba           GAMBIA                         10             0      116    1543
Birth       Keneba           GAMBIA                         10             1        8    1543
Birth       Keneba           GAMBIA                         11             0      164    1543
Birth       Keneba           GAMBIA                         11             1       15    1543
Birth       Keneba           GAMBIA                         12             0      113    1543
Birth       Keneba           GAMBIA                         12             1       11    1543
Birth       MAL-ED           BANGLADESH                     1              0       17     231
Birth       MAL-ED           BANGLADESH                     1              1        4     231
Birth       MAL-ED           BANGLADESH                     2              0       16     231
Birth       MAL-ED           BANGLADESH                     2              1        5     231
Birth       MAL-ED           BANGLADESH                     3              0       20     231
Birth       MAL-ED           BANGLADESH                     3              1        6     231
Birth       MAL-ED           BANGLADESH                     4              0       19     231
Birth       MAL-ED           BANGLADESH                     4              1        2     231
Birth       MAL-ED           BANGLADESH                     5              0       13     231
Birth       MAL-ED           BANGLADESH                     5              1        4     231
Birth       MAL-ED           BANGLADESH                     6              0        5     231
Birth       MAL-ED           BANGLADESH                     6              1        3     231
Birth       MAL-ED           BANGLADESH                     7              0       10     231
Birth       MAL-ED           BANGLADESH                     7              1        3     231
Birth       MAL-ED           BANGLADESH                     8              0       21     231
Birth       MAL-ED           BANGLADESH                     8              1        6     231
Birth       MAL-ED           BANGLADESH                     9              0       15     231
Birth       MAL-ED           BANGLADESH                     9              1        3     231
Birth       MAL-ED           BANGLADESH                     10             0       15     231
Birth       MAL-ED           BANGLADESH                     10             1        5     231
Birth       MAL-ED           BANGLADESH                     11             0       13     231
Birth       MAL-ED           BANGLADESH                     11             1        0     231
Birth       MAL-ED           BANGLADESH                     12             0       23     231
Birth       MAL-ED           BANGLADESH                     12             1        3     231
Birth       MAL-ED           BRAZIL                         1              0        4      65
Birth       MAL-ED           BRAZIL                         1              1        1      65
Birth       MAL-ED           BRAZIL                         2              0        8      65
Birth       MAL-ED           BRAZIL                         2              1        0      65
Birth       MAL-ED           BRAZIL                         3              0        9      65
Birth       MAL-ED           BRAZIL                         3              1        0      65
Birth       MAL-ED           BRAZIL                         4              0        5      65
Birth       MAL-ED           BRAZIL                         4              1        0      65
Birth       MAL-ED           BRAZIL                         5              0        1      65
Birth       MAL-ED           BRAZIL                         5              1        1      65
Birth       MAL-ED           BRAZIL                         6              0        5      65
Birth       MAL-ED           BRAZIL                         6              1        0      65
Birth       MAL-ED           BRAZIL                         7              0        4      65
Birth       MAL-ED           BRAZIL                         7              1        1      65
Birth       MAL-ED           BRAZIL                         8              0        4      65
Birth       MAL-ED           BRAZIL                         8              1        3      65
Birth       MAL-ED           BRAZIL                         9              0        5      65
Birth       MAL-ED           BRAZIL                         9              1        2      65
Birth       MAL-ED           BRAZIL                         10             0        4      65
Birth       MAL-ED           BRAZIL                         10             1        0      65
Birth       MAL-ED           BRAZIL                         11             0        5      65
Birth       MAL-ED           BRAZIL                         11             1        0      65
Birth       MAL-ED           BRAZIL                         12             0        2      65
Birth       MAL-ED           BRAZIL                         12             1        1      65
Birth       MAL-ED           INDIA                          1              0        2      47
Birth       MAL-ED           INDIA                          1              1        0      47
Birth       MAL-ED           INDIA                          2              0        3      47
Birth       MAL-ED           INDIA                          2              1        0      47
Birth       MAL-ED           INDIA                          3              0        5      47
Birth       MAL-ED           INDIA                          3              1        0      47
Birth       MAL-ED           INDIA                          4              0        5      47
Birth       MAL-ED           INDIA                          4              1        2      47
Birth       MAL-ED           INDIA                          5              0        2      47
Birth       MAL-ED           INDIA                          5              1        0      47
Birth       MAL-ED           INDIA                          6              0        3      47
Birth       MAL-ED           INDIA                          6              1        0      47
Birth       MAL-ED           INDIA                          7              0        3      47
Birth       MAL-ED           INDIA                          7              1        0      47
Birth       MAL-ED           INDIA                          8              0        4      47
Birth       MAL-ED           INDIA                          8              1        3      47
Birth       MAL-ED           INDIA                          9              0        3      47
Birth       MAL-ED           INDIA                          9              1        1      47
Birth       MAL-ED           INDIA                          10             0        6      47
Birth       MAL-ED           INDIA                          10             1        0      47
Birth       MAL-ED           INDIA                          11             0        1      47
Birth       MAL-ED           INDIA                          11             1        3      47
Birth       MAL-ED           INDIA                          12             0        0      47
Birth       MAL-ED           INDIA                          12             1        1      47
Birth       MAL-ED           NEPAL                          1              0        1      27
Birth       MAL-ED           NEPAL                          1              1        0      27
Birth       MAL-ED           NEPAL                          2              0        3      27
Birth       MAL-ED           NEPAL                          2              1        0      27
Birth       MAL-ED           NEPAL                          3              0        1      27
Birth       MAL-ED           NEPAL                          3              1        0      27
Birth       MAL-ED           NEPAL                          4              0        2      27
Birth       MAL-ED           NEPAL                          4              1        0      27
Birth       MAL-ED           NEPAL                          5              0        2      27
Birth       MAL-ED           NEPAL                          5              1        0      27
Birth       MAL-ED           NEPAL                          6              0        2      27
Birth       MAL-ED           NEPAL                          6              1        1      27
Birth       MAL-ED           NEPAL                          7              0        1      27
Birth       MAL-ED           NEPAL                          7              1        0      27
Birth       MAL-ED           NEPAL                          8              0        1      27
Birth       MAL-ED           NEPAL                          8              1        0      27
Birth       MAL-ED           NEPAL                          9              0        3      27
Birth       MAL-ED           NEPAL                          9              1        0      27
Birth       MAL-ED           NEPAL                          10             0        3      27
Birth       MAL-ED           NEPAL                          10             1        0      27
Birth       MAL-ED           NEPAL                          11             0        4      27
Birth       MAL-ED           NEPAL                          11             1        1      27
Birth       MAL-ED           NEPAL                          12             0        2      27
Birth       MAL-ED           NEPAL                          12             1        0      27
Birth       MAL-ED           PERU                           1              0       22     233
Birth       MAL-ED           PERU                           1              1        3     233
Birth       MAL-ED           PERU                           2              0       18     233
Birth       MAL-ED           PERU                           2              1        3     233
Birth       MAL-ED           PERU                           3              0       17     233
Birth       MAL-ED           PERU                           3              1        4     233
Birth       MAL-ED           PERU                           4              0       12     233
Birth       MAL-ED           PERU                           4              1        2     233
Birth       MAL-ED           PERU                           5              0       18     233
Birth       MAL-ED           PERU                           5              1        1     233
Birth       MAL-ED           PERU                           6              0       14     233
Birth       MAL-ED           PERU                           6              1        1     233
Birth       MAL-ED           PERU                           7              0       18     233
Birth       MAL-ED           PERU                           7              1        2     233
Birth       MAL-ED           PERU                           8              0       14     233
Birth       MAL-ED           PERU                           8              1        0     233
Birth       MAL-ED           PERU                           9              0       20     233
Birth       MAL-ED           PERU                           9              1        0     233
Birth       MAL-ED           PERU                           10             0       20     233
Birth       MAL-ED           PERU                           10             1        0     233
Birth       MAL-ED           PERU                           11             0       22     233
Birth       MAL-ED           PERU                           11             1        7     233
Birth       MAL-ED           PERU                           12             0       12     233
Birth       MAL-ED           PERU                           12             1        3     233
Birth       MAL-ED           SOUTH AFRICA                   1              0        7     123
Birth       MAL-ED           SOUTH AFRICA                   1              1        1     123
Birth       MAL-ED           SOUTH AFRICA                   2              0       13     123
Birth       MAL-ED           SOUTH AFRICA                   2              1        0     123
Birth       MAL-ED           SOUTH AFRICA                   3              0       10     123
Birth       MAL-ED           SOUTH AFRICA                   3              1        1     123
Birth       MAL-ED           SOUTH AFRICA                   4              0        6     123
Birth       MAL-ED           SOUTH AFRICA                   4              1        1     123
Birth       MAL-ED           SOUTH AFRICA                   5              0        5     123
Birth       MAL-ED           SOUTH AFRICA                   5              1        0     123
Birth       MAL-ED           SOUTH AFRICA                   6              0        7     123
Birth       MAL-ED           SOUTH AFRICA                   6              1        0     123
Birth       MAL-ED           SOUTH AFRICA                   7              0       12     123
Birth       MAL-ED           SOUTH AFRICA                   7              1        2     123
Birth       MAL-ED           SOUTH AFRICA                   8              0        3     123
Birth       MAL-ED           SOUTH AFRICA                   8              1        1     123
Birth       MAL-ED           SOUTH AFRICA                   9              0       10     123
Birth       MAL-ED           SOUTH AFRICA                   9              1        0     123
Birth       MAL-ED           SOUTH AFRICA                   10             0       10     123
Birth       MAL-ED           SOUTH AFRICA                   10             1        0     123
Birth       MAL-ED           SOUTH AFRICA                   11             0       12     123
Birth       MAL-ED           SOUTH AFRICA                   11             1        3     123
Birth       MAL-ED           SOUTH AFRICA                   12             0       18     123
Birth       MAL-ED           SOUTH AFRICA                   12             1        1     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              0        7     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1        1     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              0       11     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              1        4     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              0       15     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              1        1     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              0        6     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              1        1     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              0        9     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              1        1     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              0        7     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              1        3     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              0       13     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              1        2     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              0        7     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              1        0     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              0        1     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              1        1     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             0        5     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             1        4     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             0       11     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             1        4     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             0       10     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             1        1     125
Birth       NIH-Birth        BANGLADESH                     1              0       47     608
Birth       NIH-Birth        BANGLADESH                     1              1       18     608
Birth       NIH-Birth        BANGLADESH                     2              0       47     608
Birth       NIH-Birth        BANGLADESH                     2              1       11     608
Birth       NIH-Birth        BANGLADESH                     3              0       54     608
Birth       NIH-Birth        BANGLADESH                     3              1        7     608
Birth       NIH-Birth        BANGLADESH                     4              0       43     608
Birth       NIH-Birth        BANGLADESH                     4              1        9     608
Birth       NIH-Birth        BANGLADESH                     5              0       39     608
Birth       NIH-Birth        BANGLADESH                     5              1        6     608
Birth       NIH-Birth        BANGLADESH                     6              0       38     608
Birth       NIH-Birth        BANGLADESH                     6              1        5     608
Birth       NIH-Birth        BANGLADESH                     7              0       40     608
Birth       NIH-Birth        BANGLADESH                     7              1        6     608
Birth       NIH-Birth        BANGLADESH                     8              0       37     608
Birth       NIH-Birth        BANGLADESH                     8              1        5     608
Birth       NIH-Birth        BANGLADESH                     9              0       28     608
Birth       NIH-Birth        BANGLADESH                     9              1        6     608
Birth       NIH-Birth        BANGLADESH                     10             0       49     608
Birth       NIH-Birth        BANGLADESH                     10             1       11     608
Birth       NIH-Birth        BANGLADESH                     11             0       43     608
Birth       NIH-Birth        BANGLADESH                     11             1        7     608
Birth       NIH-Birth        BANGLADESH                     12             0       46     608
Birth       NIH-Birth        BANGLADESH                     12             1        6     608
Birth       PROBIT           BELARUS                        1              0      858   13893
Birth       PROBIT           BELARUS                        1              1        1   13893
Birth       PROBIT           BELARUS                        2              0      788   13893
Birth       PROBIT           BELARUS                        2              1        3   13893
Birth       PROBIT           BELARUS                        3              0      965   13893
Birth       PROBIT           BELARUS                        3              1        4   13893
Birth       PROBIT           BELARUS                        4              0      952   13893
Birth       PROBIT           BELARUS                        4              1        4   13893
Birth       PROBIT           BELARUS                        5              0      957   13893
Birth       PROBIT           BELARUS                        5              1        0   13893
Birth       PROBIT           BELARUS                        6              0     1007   13893
Birth       PROBIT           BELARUS                        6              1        0   13893
Birth       PROBIT           BELARUS                        7              0     1278   13893
Birth       PROBIT           BELARUS                        7              1        3   13893
Birth       PROBIT           BELARUS                        8              0     1324   13893
Birth       PROBIT           BELARUS                        8              1        3   13893
Birth       PROBIT           BELARUS                        9              0     1311   13893
Birth       PROBIT           BELARUS                        9              1        4   13893
Birth       PROBIT           BELARUS                        10             0     1504   13893
Birth       PROBIT           BELARUS                        10             1        7   13893
Birth       PROBIT           BELARUS                        11             0     1394   13893
Birth       PROBIT           BELARUS                        11             1        3   13893
Birth       PROBIT           BELARUS                        12             0     1521   13893
Birth       PROBIT           BELARUS                        12             1        2   13893
Birth       ResPak           PAKISTAN                       1              0        0      42
Birth       ResPak           PAKISTAN                       1              1        0      42
Birth       ResPak           PAKISTAN                       2              0        2      42
Birth       ResPak           PAKISTAN                       2              1        0      42
Birth       ResPak           PAKISTAN                       3              0        1      42
Birth       ResPak           PAKISTAN                       3              1        0      42
Birth       ResPak           PAKISTAN                       4              0        0      42
Birth       ResPak           PAKISTAN                       4              1        1      42
Birth       ResPak           PAKISTAN                       5              0        4      42
Birth       ResPak           PAKISTAN                       5              1        4      42
Birth       ResPak           PAKISTAN                       6              0        6      42
Birth       ResPak           PAKISTAN                       6              1        1      42
Birth       ResPak           PAKISTAN                       7              0        6      42
Birth       ResPak           PAKISTAN                       7              1        3      42
Birth       ResPak           PAKISTAN                       8              0        3      42
Birth       ResPak           PAKISTAN                       8              1        5      42
Birth       ResPak           PAKISTAN                       9              0        4      42
Birth       ResPak           PAKISTAN                       9              1        0      42
Birth       ResPak           PAKISTAN                       10             0        1      42
Birth       ResPak           PAKISTAN                       10             1        0      42
Birth       ResPak           PAKISTAN                       11             0        1      42
Birth       ResPak           PAKISTAN                       11             1        0      42
Birth       ResPak           PAKISTAN                       12             0        0      42
Birth       ResPak           PAKISTAN                       12             1        0      42
Birth       SAS-CompFeed     INDIA                          1              0       55    1252
Birth       SAS-CompFeed     INDIA                          1              1       27    1252
Birth       SAS-CompFeed     INDIA                          2              0       52    1252
Birth       SAS-CompFeed     INDIA                          2              1       20    1252
Birth       SAS-CompFeed     INDIA                          3              0       53    1252
Birth       SAS-CompFeed     INDIA                          3              1       27    1252
Birth       SAS-CompFeed     INDIA                          4              0       52    1252
Birth       SAS-CompFeed     INDIA                          4              1       11    1252
Birth       SAS-CompFeed     INDIA                          5              0       56    1252
Birth       SAS-CompFeed     INDIA                          5              1       24    1252
Birth       SAS-CompFeed     INDIA                          6              0       76    1252
Birth       SAS-CompFeed     INDIA                          6              1       26    1252
Birth       SAS-CompFeed     INDIA                          7              0       69    1252
Birth       SAS-CompFeed     INDIA                          7              1       32    1252
Birth       SAS-CompFeed     INDIA                          8              0       93    1252
Birth       SAS-CompFeed     INDIA                          8              1       52    1252
Birth       SAS-CompFeed     INDIA                          9              0      116    1252
Birth       SAS-CompFeed     INDIA                          9              1       32    1252
Birth       SAS-CompFeed     INDIA                          10             0      101    1252
Birth       SAS-CompFeed     INDIA                          10             1       37    1252
Birth       SAS-CompFeed     INDIA                          11             0       94    1252
Birth       SAS-CompFeed     INDIA                          11             1       28    1252
Birth       SAS-CompFeed     INDIA                          12             0       86    1252
Birth       SAS-CompFeed     INDIA                          12             1       33    1252
Birth       ZVITAMBO         ZIMBABWE                       1              0     1173   13875
Birth       ZVITAMBO         ZIMBABWE                       1              1      176   13875
Birth       ZVITAMBO         ZIMBABWE                       2              0      887   13875
Birth       ZVITAMBO         ZIMBABWE                       2              1      154   13875
Birth       ZVITAMBO         ZIMBABWE                       3              0     1008   13875
Birth       ZVITAMBO         ZIMBABWE                       3              1      136   13875
Birth       ZVITAMBO         ZIMBABWE                       4              0      903   13875
Birth       ZVITAMBO         ZIMBABWE                       4              1      111   13875
Birth       ZVITAMBO         ZIMBABWE                       5              0      875   13875
Birth       ZVITAMBO         ZIMBABWE                       5              1      129   13875
Birth       ZVITAMBO         ZIMBABWE                       6              0     1006   13875
Birth       ZVITAMBO         ZIMBABWE                       6              1      129   13875
Birth       ZVITAMBO         ZIMBABWE                       7              0     1058   13875
Birth       ZVITAMBO         ZIMBABWE                       7              1      121   13875
Birth       ZVITAMBO         ZIMBABWE                       8              0     1141   13875
Birth       ZVITAMBO         ZIMBABWE                       8              1       91   13875
Birth       ZVITAMBO         ZIMBABWE                       9              0     1239   13875
Birth       ZVITAMBO         ZIMBABWE                       9              1       83   13875
Birth       ZVITAMBO         ZIMBABWE                       10             0      962   13875
Birth       ZVITAMBO         ZIMBABWE                       10             1       85   13875
Birth       ZVITAMBO         ZIMBABWE                       11             0     1045   13875
Birth       ZVITAMBO         ZIMBABWE                       11             1       95   13875
Birth       ZVITAMBO         ZIMBABWE                       12             0     1144   13875
Birth       ZVITAMBO         ZIMBABWE                       12             1      124   13875
6 months    CMC-V-BCS-2002   INDIA                          1              0       19     369
6 months    CMC-V-BCS-2002   INDIA                          1              1        9     369
6 months    CMC-V-BCS-2002   INDIA                          2              0       16     369
6 months    CMC-V-BCS-2002   INDIA                          2              1        8     369
6 months    CMC-V-BCS-2002   INDIA                          3              0       19     369
6 months    CMC-V-BCS-2002   INDIA                          3              1        7     369
6 months    CMC-V-BCS-2002   INDIA                          4              0       25     369
6 months    CMC-V-BCS-2002   INDIA                          4              1        4     369
6 months    CMC-V-BCS-2002   INDIA                          5              0       35     369
6 months    CMC-V-BCS-2002   INDIA                          5              1        7     369
6 months    CMC-V-BCS-2002   INDIA                          6              0       24     369
6 months    CMC-V-BCS-2002   INDIA                          6              1       13     369
6 months    CMC-V-BCS-2002   INDIA                          7              0       20     369
6 months    CMC-V-BCS-2002   INDIA                          7              1       13     369
6 months    CMC-V-BCS-2002   INDIA                          8              0       20     369
6 months    CMC-V-BCS-2002   INDIA                          8              1       21     369
6 months    CMC-V-BCS-2002   INDIA                          9              0       12     369
6 months    CMC-V-BCS-2002   INDIA                          9              1        9     369
6 months    CMC-V-BCS-2002   INDIA                          10             0       14     369
6 months    CMC-V-BCS-2002   INDIA                          10             1        5     369
6 months    CMC-V-BCS-2002   INDIA                          11             0       29     369
6 months    CMC-V-BCS-2002   INDIA                          11             1       12     369
6 months    CMC-V-BCS-2002   INDIA                          12             0       25     369
6 months    CMC-V-BCS-2002   INDIA                          12             1        3     369
6 months    CMIN             BANGLADESH                     1              0       15     243
6 months    CMIN             BANGLADESH                     1              1       12     243
6 months    CMIN             BANGLADESH                     2              0       16     243
6 months    CMIN             BANGLADESH                     2              1       14     243
6 months    CMIN             BANGLADESH                     3              0       13     243
6 months    CMIN             BANGLADESH                     3              1        5     243
6 months    CMIN             BANGLADESH                     4              0       14     243
6 months    CMIN             BANGLADESH                     4              1        3     243
6 months    CMIN             BANGLADESH                     5              0       15     243
6 months    CMIN             BANGLADESH                     5              1        5     243
6 months    CMIN             BANGLADESH                     6              0       17     243
6 months    CMIN             BANGLADESH                     6              1        6     243
6 months    CMIN             BANGLADESH                     7              0        9     243
6 months    CMIN             BANGLADESH                     7              1        3     243
6 months    CMIN             BANGLADESH                     8              0        9     243
6 months    CMIN             BANGLADESH                     8              1        4     243
6 months    CMIN             BANGLADESH                     9              0        7     243
6 months    CMIN             BANGLADESH                     9              1        9     243
6 months    CMIN             BANGLADESH                     10             0        8     243
6 months    CMIN             BANGLADESH                     10             1       12     243
6 months    CMIN             BANGLADESH                     11             0        2     243
6 months    CMIN             BANGLADESH                     11             1        0     243
6 months    CMIN             BANGLADESH                     12             0       25     243
6 months    CMIN             BANGLADESH                     12             1       20     243
6 months    CONTENT          PERU                           1              0        9     215
6 months    CONTENT          PERU                           1              1        0     215
6 months    CONTENT          PERU                           2              0       13     215
6 months    CONTENT          PERU                           2              1        0     215
6 months    CONTENT          PERU                           3              0       27     215
6 months    CONTENT          PERU                           3              1        0     215
6 months    CONTENT          PERU                           4              0       16     215
6 months    CONTENT          PERU                           4              1        2     215
6 months    CONTENT          PERU                           5              0       24     215
6 months    CONTENT          PERU                           5              1        1     215
6 months    CONTENT          PERU                           6              0       13     215
6 months    CONTENT          PERU                           6              1        1     215
6 months    CONTENT          PERU                           7              0       16     215
6 months    CONTENT          PERU                           7              1        0     215
6 months    CONTENT          PERU                           8              0       23     215
6 months    CONTENT          PERU                           8              1        3     215
6 months    CONTENT          PERU                           9              0       18     215
6 months    CONTENT          PERU                           9              1        1     215
6 months    CONTENT          PERU                           10             0       23     215
6 months    CONTENT          PERU                           10             1        0     215
6 months    CONTENT          PERU                           11             0       17     215
6 months    CONTENT          PERU                           11             1        1     215
6 months    CONTENT          PERU                           12             0        7     215
6 months    CONTENT          PERU                           12             1        0     215
6 months    EE               PAKISTAN                       1              0       43     373
6 months    EE               PAKISTAN                       1              1       47     373
6 months    EE               PAKISTAN                       2              0       41     373
6 months    EE               PAKISTAN                       2              1       31     373
6 months    EE               PAKISTAN                       3              0       24     373
6 months    EE               PAKISTAN                       3              1       22     373
6 months    EE               PAKISTAN                       4              0        8     373
6 months    EE               PAKISTAN                       4              1       14     373
6 months    EE               PAKISTAN                       5              0        0     373
6 months    EE               PAKISTAN                       5              1        0     373
6 months    EE               PAKISTAN                       6              0        0     373
6 months    EE               PAKISTAN                       6              1        0     373
6 months    EE               PAKISTAN                       7              0        0     373
6 months    EE               PAKISTAN                       7              1        0     373
6 months    EE               PAKISTAN                       8              0        0     373
6 months    EE               PAKISTAN                       8              1        0     373
6 months    EE               PAKISTAN                       9              0        0     373
6 months    EE               PAKISTAN                       9              1        0     373
6 months    EE               PAKISTAN                       10             0        0     373
6 months    EE               PAKISTAN                       10             1        0     373
6 months    EE               PAKISTAN                       11             0       31     373
6 months    EE               PAKISTAN                       11             1       29     373
6 months    EE               PAKISTAN                       12             0       43     373
6 months    EE               PAKISTAN                       12             1       40     373
6 months    GMS-Nepal        NEPAL                          1              0        0     564
6 months    GMS-Nepal        NEPAL                          1              1        0     564
6 months    GMS-Nepal        NEPAL                          2              0        0     564
6 months    GMS-Nepal        NEPAL                          2              1        0     564
6 months    GMS-Nepal        NEPAL                          3              0        0     564
6 months    GMS-Nepal        NEPAL                          3              1        0     564
6 months    GMS-Nepal        NEPAL                          4              0        0     564
6 months    GMS-Nepal        NEPAL                          4              1        1     564
6 months    GMS-Nepal        NEPAL                          5              0        0     564
6 months    GMS-Nepal        NEPAL                          5              1        0     564
6 months    GMS-Nepal        NEPAL                          6              0       91     564
6 months    GMS-Nepal        NEPAL                          6              1       24     564
6 months    GMS-Nepal        NEPAL                          7              0      160     564
6 months    GMS-Nepal        NEPAL                          7              1       51     564
6 months    GMS-Nepal        NEPAL                          8              0      191     564
6 months    GMS-Nepal        NEPAL                          8              1       46     564
6 months    GMS-Nepal        NEPAL                          9              0        0     564
6 months    GMS-Nepal        NEPAL                          9              1        0     564
6 months    GMS-Nepal        NEPAL                          10             0        0     564
6 months    GMS-Nepal        NEPAL                          10             1        0     564
6 months    GMS-Nepal        NEPAL                          11             0        0     564
6 months    GMS-Nepal        NEPAL                          11             1        0     564
6 months    GMS-Nepal        NEPAL                          12             0        0     564
6 months    GMS-Nepal        NEPAL                          12             1        0     564
6 months    Guatemala BSC    GUATEMALA                      1              0       16     299
6 months    Guatemala BSC    GUATEMALA                      1              1        2     299
6 months    Guatemala BSC    GUATEMALA                      2              0       15     299
6 months    Guatemala BSC    GUATEMALA                      2              1        4     299
6 months    Guatemala BSC    GUATEMALA                      3              0       12     299
6 months    Guatemala BSC    GUATEMALA                      3              1        9     299
6 months    Guatemala BSC    GUATEMALA                      4              0       19     299
6 months    Guatemala BSC    GUATEMALA                      4              1        8     299
6 months    Guatemala BSC    GUATEMALA                      5              0       25     299
6 months    Guatemala BSC    GUATEMALA                      5              1        6     299
6 months    Guatemala BSC    GUATEMALA                      6              0       27     299
6 months    Guatemala BSC    GUATEMALA                      6              1       12     299
6 months    Guatemala BSC    GUATEMALA                      7              0       15     299
6 months    Guatemala BSC    GUATEMALA                      7              1        9     299
6 months    Guatemala BSC    GUATEMALA                      8              0       14     299
6 months    Guatemala BSC    GUATEMALA                      8              1        5     299
6 months    Guatemala BSC    GUATEMALA                      9              0       23     299
6 months    Guatemala BSC    GUATEMALA                      9              1       11     299
6 months    Guatemala BSC    GUATEMALA                      10             0       18     299
6 months    Guatemala BSC    GUATEMALA                      10             1       11     299
6 months    Guatemala BSC    GUATEMALA                      11             0       18     299
6 months    Guatemala BSC    GUATEMALA                      11             1       10     299
6 months    Guatemala BSC    GUATEMALA                      12             0        7     299
6 months    Guatemala BSC    GUATEMALA                      12             1        3     299
6 months    IRC              INDIA                          1              0       25     407
6 months    IRC              INDIA                          1              1       10     407
6 months    IRC              INDIA                          2              0       17     407
6 months    IRC              INDIA                          2              1       12     407
6 months    IRC              INDIA                          3              0       18     407
6 months    IRC              INDIA                          3              1       11     407
6 months    IRC              INDIA                          4              0       18     407
6 months    IRC              INDIA                          4              1        6     407
6 months    IRC              INDIA                          5              0       13     407
6 months    IRC              INDIA                          5              1        7     407
6 months    IRC              INDIA                          6              0       30     407
6 months    IRC              INDIA                          6              1        5     407
6 months    IRC              INDIA                          7              0       25     407
6 months    IRC              INDIA                          7              1       11     407
6 months    IRC              INDIA                          8              0       36     407
6 months    IRC              INDIA                          8              1        5     407
6 months    IRC              INDIA                          9              0       24     407
6 months    IRC              INDIA                          9              1        6     407
6 months    IRC              INDIA                          10             0       32     407
6 months    IRC              INDIA                          10             1        6     407
6 months    IRC              INDIA                          11             0       33     407
6 months    IRC              INDIA                          11             1        8     407
6 months    IRC              INDIA                          12             0       36     407
6 months    IRC              INDIA                          12             1       13     407
6 months    JiVitA-3         BANGLADESH                     1              0     1008   16811
6 months    JiVitA-3         BANGLADESH                     1              1      357   16811
6 months    JiVitA-3         BANGLADESH                     2              0      895   16811
6 months    JiVitA-3         BANGLADESH                     2              1      289   16811
6 months    JiVitA-3         BANGLADESH                     3              0     1091   16811
6 months    JiVitA-3         BANGLADESH                     3              1      330   16811
6 months    JiVitA-3         BANGLADESH                     4              0      921   16811
6 months    JiVitA-3         BANGLADESH                     4              1      270   16811
6 months    JiVitA-3         BANGLADESH                     5              0      865   16811
6 months    JiVitA-3         BANGLADESH                     5              1      285   16811
6 months    JiVitA-3         BANGLADESH                     6              0      881   16811
6 months    JiVitA-3         BANGLADESH                     6              1      280   16811
6 months    JiVitA-3         BANGLADESH                     7              0      932   16811
6 months    JiVitA-3         BANGLADESH                     7              1      319   16811
6 months    JiVitA-3         BANGLADESH                     8              0     1120   16811
6 months    JiVitA-3         BANGLADESH                     8              1      348   16811
6 months    JiVitA-3         BANGLADESH                     9              0     1186   16811
6 months    JiVitA-3         BANGLADESH                     9              1      364   16811
6 months    JiVitA-3         BANGLADESH                     10             0     1241   16811
6 months    JiVitA-3         BANGLADESH                     10             1      453   16811
6 months    JiVitA-3         BANGLADESH                     11             0     1192   16811
6 months    JiVitA-3         BANGLADESH                     11             1      475   16811
6 months    JiVitA-3         BANGLADESH                     12             0     1253   16811
6 months    JiVitA-3         BANGLADESH                     12             1      456   16811
6 months    JiVitA-4         BANGLADESH                     1              0       40    4831
6 months    JiVitA-4         BANGLADESH                     1              1       13    4831
6 months    JiVitA-4         BANGLADESH                     2              0      134    4831
6 months    JiVitA-4         BANGLADESH                     2              1       31    4831
6 months    JiVitA-4         BANGLADESH                     3              0      324    4831
6 months    JiVitA-4         BANGLADESH                     3              1      106    4831
6 months    JiVitA-4         BANGLADESH                     4              0      616    4831
6 months    JiVitA-4         BANGLADESH                     4              1      229    4831
6 months    JiVitA-4         BANGLADESH                     5              0      437    4831
6 months    JiVitA-4         BANGLADESH                     5              1      148    4831
6 months    JiVitA-4         BANGLADESH                     6              0      331    4831
6 months    JiVitA-4         BANGLADESH                     6              1      103    4831
6 months    JiVitA-4         BANGLADESH                     7              0      592    4831
6 months    JiVitA-4         BANGLADESH                     7              1      246    4831
6 months    JiVitA-4         BANGLADESH                     8              0      402    4831
6 months    JiVitA-4         BANGLADESH                     8              1      108    4831
6 months    JiVitA-4         BANGLADESH                     9              0      330    4831
6 months    JiVitA-4         BANGLADESH                     9              1      101    4831
6 months    JiVitA-4         BANGLADESH                     10             0      225    4831
6 months    JiVitA-4         BANGLADESH                     10             1       81    4831
6 months    JiVitA-4         BANGLADESH                     11             0      122    4831
6 months    JiVitA-4         BANGLADESH                     11             1       35    4831
6 months    JiVitA-4         BANGLADESH                     12             0       57    4831
6 months    JiVitA-4         BANGLADESH                     12             1       20    4831
6 months    Keneba           GAMBIA                         1              0      159    2089
6 months    Keneba           GAMBIA                         1              1       25    2089
6 months    Keneba           GAMBIA                         2              0      183    2089
6 months    Keneba           GAMBIA                         2              1       27    2089
6 months    Keneba           GAMBIA                         3              0      165    2089
6 months    Keneba           GAMBIA                         3              1       20    2089
6 months    Keneba           GAMBIA                         4              0      194    2089
6 months    Keneba           GAMBIA                         4              1       30    2089
6 months    Keneba           GAMBIA                         5              0      166    2089
6 months    Keneba           GAMBIA                         5              1       20    2089
6 months    Keneba           GAMBIA                         6              0      129    2089
6 months    Keneba           GAMBIA                         6              1       20    2089
6 months    Keneba           GAMBIA                         7              0      106    2089
6 months    Keneba           GAMBIA                         7              1       23    2089
6 months    Keneba           GAMBIA                         8              0       97    2089
6 months    Keneba           GAMBIA                         8              1       21    2089
6 months    Keneba           GAMBIA                         9              0      128    2089
6 months    Keneba           GAMBIA                         9              1       23    2089
6 months    Keneba           GAMBIA                         10             0      140    2089
6 months    Keneba           GAMBIA                         10             1       29    2089
6 months    Keneba           GAMBIA                         11             0      190    2089
6 months    Keneba           GAMBIA                         11             1       35    2089
6 months    Keneba           GAMBIA                         12             0      137    2089
6 months    Keneba           GAMBIA                         12             1       22    2089
6 months    LCNI-5           MALAWI                         1              0       39     839
6 months    LCNI-5           MALAWI                         1              1       16     839
6 months    LCNI-5           MALAWI                         2              0       75     839
6 months    LCNI-5           MALAWI                         2              1       39     839
6 months    LCNI-5           MALAWI                         3              0       63     839
6 months    LCNI-5           MALAWI                         3              1       35     839
6 months    LCNI-5           MALAWI                         4              0       61     839
6 months    LCNI-5           MALAWI                         4              1       49     839
6 months    LCNI-5           MALAWI                         5              0       72     839
6 months    LCNI-5           MALAWI                         5              1       39     839
6 months    LCNI-5           MALAWI                         6              0       62     839
6 months    LCNI-5           MALAWI                         6              1       29     839
6 months    LCNI-5           MALAWI                         7              0       40     839
6 months    LCNI-5           MALAWI                         7              1       32     839
6 months    LCNI-5           MALAWI                         8              0       28     839
6 months    LCNI-5           MALAWI                         8              1       13     839
6 months    LCNI-5           MALAWI                         9              0       18     839
6 months    LCNI-5           MALAWI                         9              1       11     839
6 months    LCNI-5           MALAWI                         10             0       21     839
6 months    LCNI-5           MALAWI                         10             1       14     839
6 months    LCNI-5           MALAWI                         11             0       32     839
6 months    LCNI-5           MALAWI                         11             1       17     839
6 months    LCNI-5           MALAWI                         12             0       19     839
6 months    LCNI-5           MALAWI                         12             1       15     839
6 months    MAL-ED           BANGLADESH                     1              0       16     241
6 months    MAL-ED           BANGLADESH                     1              1        3     241
6 months    MAL-ED           BANGLADESH                     2              0       14     241
6 months    MAL-ED           BANGLADESH                     2              1        6     241
6 months    MAL-ED           BANGLADESH                     3              0       20     241
6 months    MAL-ED           BANGLADESH                     3              1        3     241
6 months    MAL-ED           BANGLADESH                     4              0       22     241
6 months    MAL-ED           BANGLADESH                     4              1        2     241
6 months    MAL-ED           BANGLADESH                     5              0       14     241
6 months    MAL-ED           BANGLADESH                     5              1        3     241
6 months    MAL-ED           BANGLADESH                     6              0        9     241
6 months    MAL-ED           BANGLADESH                     6              1        3     241
6 months    MAL-ED           BANGLADESH                     7              0       12     241
6 months    MAL-ED           BANGLADESH                     7              1        5     241
6 months    MAL-ED           BANGLADESH                     8              0       17     241
6 months    MAL-ED           BANGLADESH                     8              1        8     241
6 months    MAL-ED           BANGLADESH                     9              0       19     241
6 months    MAL-ED           BANGLADESH                     9              1        2     241
6 months    MAL-ED           BANGLADESH                     10             0       16     241
6 months    MAL-ED           BANGLADESH                     10             1        6     241
6 months    MAL-ED           BANGLADESH                     11             0       15     241
6 months    MAL-ED           BANGLADESH                     11             1        0     241
6 months    MAL-ED           BANGLADESH                     12             0       23     241
6 months    MAL-ED           BANGLADESH                     12             1        3     241
6 months    MAL-ED           BRAZIL                         1              0       13     209
6 months    MAL-ED           BRAZIL                         1              1        1     209
6 months    MAL-ED           BRAZIL                         2              0       23     209
6 months    MAL-ED           BRAZIL                         2              1        1     209
6 months    MAL-ED           BRAZIL                         3              0       15     209
6 months    MAL-ED           BRAZIL                         3              1        0     209
6 months    MAL-ED           BRAZIL                         4              0       12     209
6 months    MAL-ED           BRAZIL                         4              1        0     209
6 months    MAL-ED           BRAZIL                         5              0       17     209
6 months    MAL-ED           BRAZIL                         5              1        0     209
6 months    MAL-ED           BRAZIL                         6              0       13     209
6 months    MAL-ED           BRAZIL                         6              1        1     209
6 months    MAL-ED           BRAZIL                         7              0       15     209
6 months    MAL-ED           BRAZIL                         7              1        1     209
6 months    MAL-ED           BRAZIL                         8              0       15     209
6 months    MAL-ED           BRAZIL                         8              1        0     209
6 months    MAL-ED           BRAZIL                         9              0       20     209
6 months    MAL-ED           BRAZIL                         9              1        1     209
6 months    MAL-ED           BRAZIL                         10             0       26     209
6 months    MAL-ED           BRAZIL                         10             1        0     209
6 months    MAL-ED           BRAZIL                         11             0       17     209
6 months    MAL-ED           BRAZIL                         11             1        0     209
6 months    MAL-ED           BRAZIL                         12             0       17     209
6 months    MAL-ED           BRAZIL                         12             1        1     209
6 months    MAL-ED           INDIA                          1              0       12     236
6 months    MAL-ED           INDIA                          1              1        3     236
6 months    MAL-ED           INDIA                          2              0       21     236
6 months    MAL-ED           INDIA                          2              1        2     236
6 months    MAL-ED           INDIA                          3              0       18     236
6 months    MAL-ED           INDIA                          3              1        3     236
6 months    MAL-ED           INDIA                          4              0       14     236
6 months    MAL-ED           INDIA                          4              1        4     236
6 months    MAL-ED           INDIA                          5              0        5     236
6 months    MAL-ED           INDIA                          5              1        3     236
6 months    MAL-ED           INDIA                          6              0       16     236
6 months    MAL-ED           INDIA                          6              1        2     236
6 months    MAL-ED           INDIA                          7              0       17     236
6 months    MAL-ED           INDIA                          7              1        4     236
6 months    MAL-ED           INDIA                          8              0       17     236
6 months    MAL-ED           INDIA                          8              1        4     236
6 months    MAL-ED           INDIA                          9              0       17     236
6 months    MAL-ED           INDIA                          9              1        4     236
6 months    MAL-ED           INDIA                          10             0       19     236
6 months    MAL-ED           INDIA                          10             1        5     236
6 months    MAL-ED           INDIA                          11             0       16     236
6 months    MAL-ED           INDIA                          11             1        8     236
6 months    MAL-ED           INDIA                          12             0       19     236
6 months    MAL-ED           INDIA                          12             1        3     236
6 months    MAL-ED           NEPAL                          1              0       19     236
6 months    MAL-ED           NEPAL                          1              1        1     236
6 months    MAL-ED           NEPAL                          2              0       18     236
6 months    MAL-ED           NEPAL                          2              1        2     236
6 months    MAL-ED           NEPAL                          3              0       19     236
6 months    MAL-ED           NEPAL                          3              1        1     236
6 months    MAL-ED           NEPAL                          4              0       17     236
6 months    MAL-ED           NEPAL                          4              1        3     236
6 months    MAL-ED           NEPAL                          5              0       18     236
6 months    MAL-ED           NEPAL                          5              1        0     236
6 months    MAL-ED           NEPAL                          6              0       19     236
6 months    MAL-ED           NEPAL                          6              1        1     236
6 months    MAL-ED           NEPAL                          7              0       19     236
6 months    MAL-ED           NEPAL                          7              1        0     236
6 months    MAL-ED           NEPAL                          8              0       18     236
6 months    MAL-ED           NEPAL                          8              1        1     236
6 months    MAL-ED           NEPAL                          9              0       19     236
6 months    MAL-ED           NEPAL                          9              1        1     236
6 months    MAL-ED           NEPAL                          10             0       19     236
6 months    MAL-ED           NEPAL                          10             1        1     236
6 months    MAL-ED           NEPAL                          11             0       20     236
6 months    MAL-ED           NEPAL                          11             1        0     236
6 months    MAL-ED           NEPAL                          12             0       19     236
6 months    MAL-ED           NEPAL                          12             1        1     236
6 months    MAL-ED           PERU                           1              0       26     273
6 months    MAL-ED           PERU                           1              1        7     273
6 months    MAL-ED           PERU                           2              0       19     273
6 months    MAL-ED           PERU                           2              1        7     273
6 months    MAL-ED           PERU                           3              0       15     273
6 months    MAL-ED           PERU                           3              1        7     273
6 months    MAL-ED           PERU                           4              0       14     273
6 months    MAL-ED           PERU                           4              1        4     273
6 months    MAL-ED           PERU                           5              0       22     273
6 months    MAL-ED           PERU                           5              1        2     273
6 months    MAL-ED           PERU                           6              0       16     273
6 months    MAL-ED           PERU                           6              1        4     273
6 months    MAL-ED           PERU                           7              0       19     273
6 months    MAL-ED           PERU                           7              1        3     273
6 months    MAL-ED           PERU                           8              0       14     273
6 months    MAL-ED           PERU                           8              1        2     273
6 months    MAL-ED           PERU                           9              0       17     273
6 months    MAL-ED           PERU                           9              1        5     273
6 months    MAL-ED           PERU                           10             0       16     273
6 months    MAL-ED           PERU                           10             1        4     273
6 months    MAL-ED           PERU                           11             0       23     273
6 months    MAL-ED           PERU                           11             1       11     273
6 months    MAL-ED           PERU                           12             0       12     273
6 months    MAL-ED           PERU                           12             1        4     273
6 months    MAL-ED           SOUTH AFRICA                   1              0       22     254
6 months    MAL-ED           SOUTH AFRICA                   1              1       10     254
6 months    MAL-ED           SOUTH AFRICA                   2              0       28     254
6 months    MAL-ED           SOUTH AFRICA                   2              1        5     254
6 months    MAL-ED           SOUTH AFRICA                   3              0       15     254
6 months    MAL-ED           SOUTH AFRICA                   3              1        2     254
6 months    MAL-ED           SOUTH AFRICA                   4              0       12     254
6 months    MAL-ED           SOUTH AFRICA                   4              1        0     254
6 months    MAL-ED           SOUTH AFRICA                   5              0        8     254
6 months    MAL-ED           SOUTH AFRICA                   5              1        3     254
6 months    MAL-ED           SOUTH AFRICA                   6              0       18     254
6 months    MAL-ED           SOUTH AFRICA                   6              1        0     254
6 months    MAL-ED           SOUTH AFRICA                   7              0       21     254
6 months    MAL-ED           SOUTH AFRICA                   7              1        4     254
6 months    MAL-ED           SOUTH AFRICA                   8              0        4     254
6 months    MAL-ED           SOUTH AFRICA                   8              1        3     254
6 months    MAL-ED           SOUTH AFRICA                   9              0       14     254
6 months    MAL-ED           SOUTH AFRICA                   9              1        3     254
6 months    MAL-ED           SOUTH AFRICA                   10             0       19     254
6 months    MAL-ED           SOUTH AFRICA                   10             1        3     254
6 months    MAL-ED           SOUTH AFRICA                   11             0       19     254
6 months    MAL-ED           SOUTH AFRICA                   11             1       10     254
6 months    MAL-ED           SOUTH AFRICA                   12             0       24     254
6 months    MAL-ED           SOUTH AFRICA                   12             1        7     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              0       15     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1        6     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              0       24     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              1        4     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              0       14     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              1        9     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              0        7     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              1        3     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              0        9     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              1        3     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              0       14     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              1        2     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              0       23     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              1        5     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              0       10     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              1        2     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              0       12     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              1        6     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             0       15     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             1        4     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             0       20     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             1        8     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             0       25     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             1        7     247
6 months    NIH-Birth        BANGLADESH                     1              0       35     537
6 months    NIH-Birth        BANGLADESH                     1              1       15     537
6 months    NIH-Birth        BANGLADESH                     2              0       36     537
6 months    NIH-Birth        BANGLADESH                     2              1       14     537
6 months    NIH-Birth        BANGLADESH                     3              0       36     537
6 months    NIH-Birth        BANGLADESH                     3              1       14     537
6 months    NIH-Birth        BANGLADESH                     4              0       34     537
6 months    NIH-Birth        BANGLADESH                     4              1       10     537
6 months    NIH-Birth        BANGLADESH                     5              0       32     537
6 months    NIH-Birth        BANGLADESH                     5              1        8     537
6 months    NIH-Birth        BANGLADESH                     6              0       28     537
6 months    NIH-Birth        BANGLADESH                     6              1       11     537
6 months    NIH-Birth        BANGLADESH                     7              0       27     537
6 months    NIH-Birth        BANGLADESH                     7              1       18     537
6 months    NIH-Birth        BANGLADESH                     8              0       31     537
6 months    NIH-Birth        BANGLADESH                     8              1        7     537
6 months    NIH-Birth        BANGLADESH                     9              0       23     537
6 months    NIH-Birth        BANGLADESH                     9              1        7     537
6 months    NIH-Birth        BANGLADESH                     10             0       37     537
6 months    NIH-Birth        BANGLADESH                     10             1       15     537
6 months    NIH-Birth        BANGLADESH                     11             0       31     537
6 months    NIH-Birth        BANGLADESH                     11             1       18     537
6 months    NIH-Birth        BANGLADESH                     12             0       43     537
6 months    NIH-Birth        BANGLADESH                     12             1        7     537
6 months    PROBIT           BELARUS                        1              0     1050   15760
6 months    PROBIT           BELARUS                        1              1       52   15760
6 months    PROBIT           BELARUS                        2              0      898   15760
6 months    PROBIT           BELARUS                        2              1       53   15760
6 months    PROBIT           BELARUS                        3              0     1068   15760
6 months    PROBIT           BELARUS                        3              1       46   15760
6 months    PROBIT           BELARUS                        4              0     1036   15760
6 months    PROBIT           BELARUS                        4              1       33   15760
6 months    PROBIT           BELARUS                        5              0     1066   15760
6 months    PROBIT           BELARUS                        5              1       30   15760
6 months    PROBIT           BELARUS                        6              0     1075   15760
6 months    PROBIT           BELARUS                        6              1       45   15760
6 months    PROBIT           BELARUS                        7              0     1321   15760
6 months    PROBIT           BELARUS                        7              1       44   15760
6 months    PROBIT           BELARUS                        8              0     1439   15760
6 months    PROBIT           BELARUS                        8              1       59   15760
6 months    PROBIT           BELARUS                        9              0     1419   15760
6 months    PROBIT           BELARUS                        9              1       62   15760
6 months    PROBIT           BELARUS                        10             0     1597   15760
6 months    PROBIT           BELARUS                        10             1       72   15760
6 months    PROBIT           BELARUS                        11             0     1525   15760
6 months    PROBIT           BELARUS                        11             1       64   15760
6 months    PROBIT           BELARUS                        12             0     1646   15760
6 months    PROBIT           BELARUS                        12             1       60   15760
6 months    ResPak           PAKISTAN                       1              0        0     239
6 months    ResPak           PAKISTAN                       1              1        2     239
6 months    ResPak           PAKISTAN                       2              0        2     239
6 months    ResPak           PAKISTAN                       2              1        6     239
6 months    ResPak           PAKISTAN                       3              0        8     239
6 months    ResPak           PAKISTAN                       3              1        2     239
6 months    ResPak           PAKISTAN                       4              0        9     239
6 months    ResPak           PAKISTAN                       4              1       11     239
6 months    ResPak           PAKISTAN                       5              0       18     239
6 months    ResPak           PAKISTAN                       5              1       12     239
6 months    ResPak           PAKISTAN                       6              0       24     239
6 months    ResPak           PAKISTAN                       6              1       15     239
6 months    ResPak           PAKISTAN                       7              0       29     239
6 months    ResPak           PAKISTAN                       7              1       14     239
6 months    ResPak           PAKISTAN                       8              0       20     239
6 months    ResPak           PAKISTAN                       8              1        6     239
6 months    ResPak           PAKISTAN                       9              0       24     239
6 months    ResPak           PAKISTAN                       9              1       13     239
6 months    ResPak           PAKISTAN                       10             0       10     239
6 months    ResPak           PAKISTAN                       10             1        5     239
6 months    ResPak           PAKISTAN                       11             0        6     239
6 months    ResPak           PAKISTAN                       11             1        0     239
6 months    ResPak           PAKISTAN                       12             0        3     239
6 months    ResPak           PAKISTAN                       12             1        0     239
6 months    SAS-CompFeed     INDIA                          1              0       60    1336
6 months    SAS-CompFeed     INDIA                          1              1       25    1336
6 months    SAS-CompFeed     INDIA                          2              0       59    1336
6 months    SAS-CompFeed     INDIA                          2              1       22    1336
6 months    SAS-CompFeed     INDIA                          3              0       61    1336
6 months    SAS-CompFeed     INDIA                          3              1       19    1336
6 months    SAS-CompFeed     INDIA                          4              0       57    1336
6 months    SAS-CompFeed     INDIA                          4              1       20    1336
6 months    SAS-CompFeed     INDIA                          5              0       49    1336
6 months    SAS-CompFeed     INDIA                          5              1       27    1336
6 months    SAS-CompFeed     INDIA                          6              0       74    1336
6 months    SAS-CompFeed     INDIA                          6              1       28    1336
6 months    SAS-CompFeed     INDIA                          7              0       65    1336
6 months    SAS-CompFeed     INDIA                          7              1       50    1336
6 months    SAS-CompFeed     INDIA                          8              0      101    1336
6 months    SAS-CompFeed     INDIA                          8              1       51    1336
6 months    SAS-CompFeed     INDIA                          9              0      132    1336
6 months    SAS-CompFeed     INDIA                          9              1       34    1336
6 months    SAS-CompFeed     INDIA                          10             0      113    1336
6 months    SAS-CompFeed     INDIA                          10             1       35    1336
6 months    SAS-CompFeed     INDIA                          11             0       93    1336
6 months    SAS-CompFeed     INDIA                          11             1       32    1336
6 months    SAS-CompFeed     INDIA                          12             0       92    1336
6 months    SAS-CompFeed     INDIA                          12             1       37    1336
6 months    SAS-FoodSuppl    INDIA                          1              0       29     380
6 months    SAS-FoodSuppl    INDIA                          1              1       32     380
6 months    SAS-FoodSuppl    INDIA                          2              0       21     380
6 months    SAS-FoodSuppl    INDIA                          2              1       16     380
6 months    SAS-FoodSuppl    INDIA                          3              0       19     380
6 months    SAS-FoodSuppl    INDIA                          3              1       16     380
6 months    SAS-FoodSuppl    INDIA                          4              0       14     380
6 months    SAS-FoodSuppl    INDIA                          4              1       12     380
6 months    SAS-FoodSuppl    INDIA                          5              0       15     380
6 months    SAS-FoodSuppl    INDIA                          5              1       14     380
6 months    SAS-FoodSuppl    INDIA                          6              0       18     380
6 months    SAS-FoodSuppl    INDIA                          6              1       13     380
6 months    SAS-FoodSuppl    INDIA                          7              0        7     380
6 months    SAS-FoodSuppl    INDIA                          7              1       10     380
6 months    SAS-FoodSuppl    INDIA                          8              0        0     380
6 months    SAS-FoodSuppl    INDIA                          8              1        0     380
6 months    SAS-FoodSuppl    INDIA                          9              0        7     380
6 months    SAS-FoodSuppl    INDIA                          9              1        5     380
6 months    SAS-FoodSuppl    INDIA                          10             0       14     380
6 months    SAS-FoodSuppl    INDIA                          10             1       12     380
6 months    SAS-FoodSuppl    INDIA                          11             0       33     380
6 months    SAS-FoodSuppl    INDIA                          11             1       11     380
6 months    SAS-FoodSuppl    INDIA                          12             0       40     380
6 months    SAS-FoodSuppl    INDIA                          12             1       22     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      187    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       12    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0      125    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       12    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              0      140    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              1       11    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              0      125    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              1       13    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              0      148    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              1       13    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              0      124    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              1       18    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              0      126    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              1       19    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              0      157    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              1       17    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              0      172    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              1       26    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             0      178    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             1       18    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             0      162    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             1       25    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             0      188    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             1       13    2029
6 months    ZVITAMBO         ZIMBABWE                       1              0      689    8669
6 months    ZVITAMBO         ZIMBABWE                       1              1      141    8669
6 months    ZVITAMBO         ZIMBABWE                       2              0      508    8669
6 months    ZVITAMBO         ZIMBABWE                       2              1      101    8669
6 months    ZVITAMBO         ZIMBABWE                       3              0      581    8669
6 months    ZVITAMBO         ZIMBABWE                       3              1      155    8669
6 months    ZVITAMBO         ZIMBABWE                       4              0      560    8669
6 months    ZVITAMBO         ZIMBABWE                       4              1      120    8669
6 months    ZVITAMBO         ZIMBABWE                       5              0      524    8669
6 months    ZVITAMBO         ZIMBABWE                       5              1      112    8669
6 months    ZVITAMBO         ZIMBABWE                       6              0      569    8669
6 months    ZVITAMBO         ZIMBABWE                       6              1      111    8669
6 months    ZVITAMBO         ZIMBABWE                       7              0      552    8669
6 months    ZVITAMBO         ZIMBABWE                       7              1      123    8669
6 months    ZVITAMBO         ZIMBABWE                       8              0      662    8669
6 months    ZVITAMBO         ZIMBABWE                       8              1      106    8669
6 months    ZVITAMBO         ZIMBABWE                       9              0      692    8669
6 months    ZVITAMBO         ZIMBABWE                       9              1      109    8669
6 months    ZVITAMBO         ZIMBABWE                       10             0      530    8669
6 months    ZVITAMBO         ZIMBABWE                       10             1       98    8669
6 months    ZVITAMBO         ZIMBABWE                       11             0      641    8669
6 months    ZVITAMBO         ZIMBABWE                       11             1      120    8669
6 months    ZVITAMBO         ZIMBABWE                       12             0      749    8669
6 months    ZVITAMBO         ZIMBABWE                       12             1      116    8669
24 months   CMC-V-BCS-2002   INDIA                          1              0        7     371
24 months   CMC-V-BCS-2002   INDIA                          1              1       21     371
24 months   CMC-V-BCS-2002   INDIA                          2              0        9     371
24 months   CMC-V-BCS-2002   INDIA                          2              1       15     371
24 months   CMC-V-BCS-2002   INDIA                          3              0        6     371
24 months   CMC-V-BCS-2002   INDIA                          3              1       20     371
24 months   CMC-V-BCS-2002   INDIA                          4              0        8     371
24 months   CMC-V-BCS-2002   INDIA                          4              1       21     371
24 months   CMC-V-BCS-2002   INDIA                          5              0       12     371
24 months   CMC-V-BCS-2002   INDIA                          5              1       31     371
24 months   CMC-V-BCS-2002   INDIA                          6              0        8     371
24 months   CMC-V-BCS-2002   INDIA                          6              1       28     371
24 months   CMC-V-BCS-2002   INDIA                          7              0       13     371
24 months   CMC-V-BCS-2002   INDIA                          7              1       20     371
24 months   CMC-V-BCS-2002   INDIA                          8              0       11     371
24 months   CMC-V-BCS-2002   INDIA                          8              1       30     371
24 months   CMC-V-BCS-2002   INDIA                          9              0        3     371
24 months   CMC-V-BCS-2002   INDIA                          9              1       19     371
24 months   CMC-V-BCS-2002   INDIA                          10             0        5     371
24 months   CMC-V-BCS-2002   INDIA                          10             1       14     371
24 months   CMC-V-BCS-2002   INDIA                          11             0       15     371
24 months   CMC-V-BCS-2002   INDIA                          11             1       26     371
24 months   CMC-V-BCS-2002   INDIA                          12             0        8     371
24 months   CMC-V-BCS-2002   INDIA                          12             1       21     371
24 months   CMIN             BANGLADESH                     1              0        7     242
24 months   CMIN             BANGLADESH                     1              1       19     242
24 months   CMIN             BANGLADESH                     2              0        8     242
24 months   CMIN             BANGLADESH                     2              1       23     242
24 months   CMIN             BANGLADESH                     3              0        8     242
24 months   CMIN             BANGLADESH                     3              1       11     242
24 months   CMIN             BANGLADESH                     4              0        6     242
24 months   CMIN             BANGLADESH                     4              1       12     242
24 months   CMIN             BANGLADESH                     5              0       10     242
24 months   CMIN             BANGLADESH                     5              1        9     242
24 months   CMIN             BANGLADESH                     6              0        6     242
24 months   CMIN             BANGLADESH                     6              1       16     242
24 months   CMIN             BANGLADESH                     7              0        3     242
24 months   CMIN             BANGLADESH                     7              1        9     242
24 months   CMIN             BANGLADESH                     8              0        4     242
24 months   CMIN             BANGLADESH                     8              1        9     242
24 months   CMIN             BANGLADESH                     9              0        5     242
24 months   CMIN             BANGLADESH                     9              1       13     242
24 months   CMIN             BANGLADESH                     10             0        7     242
24 months   CMIN             BANGLADESH                     10             1       12     242
24 months   CMIN             BANGLADESH                     11             0        1     242
24 months   CMIN             BANGLADESH                     11             1        1     242
24 months   CMIN             BANGLADESH                     12             0       12     242
24 months   CMIN             BANGLADESH                     12             1       31     242
24 months   CONTENT          PERU                           1              0        8     164
24 months   CONTENT          PERU                           1              1        0     164
24 months   CONTENT          PERU                           2              0        9     164
24 months   CONTENT          PERU                           2              1        1     164
24 months   CONTENT          PERU                           3              0       19     164
24 months   CONTENT          PERU                           3              1        1     164
24 months   CONTENT          PERU                           4              0       11     164
24 months   CONTENT          PERU                           4              1        2     164
24 months   CONTENT          PERU                           5              0       21     164
24 months   CONTENT          PERU                           5              1        1     164
24 months   CONTENT          PERU                           6              0        9     164
24 months   CONTENT          PERU                           6              1        2     164
24 months   CONTENT          PERU                           7              0       13     164
24 months   CONTENT          PERU                           7              1        0     164
24 months   CONTENT          PERU                           8              0       21     164
24 months   CONTENT          PERU                           8              1        2     164
24 months   CONTENT          PERU                           9              0        8     164
24 months   CONTENT          PERU                           9              1        3     164
24 months   CONTENT          PERU                           10             0       12     164
24 months   CONTENT          PERU                           10             1        0     164
24 months   CONTENT          PERU                           11             0       16     164
24 months   CONTENT          PERU                           11             1        1     164
24 months   CONTENT          PERU                           12             0        4     164
24 months   CONTENT          PERU                           12             1        0     164
24 months   EE               PAKISTAN                       1              0        6     167
24 months   EE               PAKISTAN                       1              1       22     167
24 months   EE               PAKISTAN                       2              0        0     167
24 months   EE               PAKISTAN                       2              1        2     167
24 months   EE               PAKISTAN                       3              0        0     167
24 months   EE               PAKISTAN                       3              1        2     167
24 months   EE               PAKISTAN                       4              0        0     167
24 months   EE               PAKISTAN                       4              1        0     167
24 months   EE               PAKISTAN                       5              0        0     167
24 months   EE               PAKISTAN                       5              1        0     167
24 months   EE               PAKISTAN                       6              0        0     167
24 months   EE               PAKISTAN                       6              1        0     167
24 months   EE               PAKISTAN                       7              0        0     167
24 months   EE               PAKISTAN                       7              1        0     167
24 months   EE               PAKISTAN                       8              0        0     167
24 months   EE               PAKISTAN                       8              1        0     167
24 months   EE               PAKISTAN                       9              0        0     167
24 months   EE               PAKISTAN                       9              1        0     167
24 months   EE               PAKISTAN                       10             0        0     167
24 months   EE               PAKISTAN                       10             1        0     167
24 months   EE               PAKISTAN                       11             0       18     167
24 months   EE               PAKISTAN                       11             1       39     167
24 months   EE               PAKISTAN                       12             0       25     167
24 months   EE               PAKISTAN                       12             1       53     167
24 months   GMS-Nepal        NEPAL                          1              0        0     488
24 months   GMS-Nepal        NEPAL                          1              1        0     488
24 months   GMS-Nepal        NEPAL                          2              0        0     488
24 months   GMS-Nepal        NEPAL                          2              1        0     488
24 months   GMS-Nepal        NEPAL                          3              0        0     488
24 months   GMS-Nepal        NEPAL                          3              1        0     488
24 months   GMS-Nepal        NEPAL                          4              0        0     488
24 months   GMS-Nepal        NEPAL                          4              1        0     488
24 months   GMS-Nepal        NEPAL                          5              0        0     488
24 months   GMS-Nepal        NEPAL                          5              1        0     488
24 months   GMS-Nepal        NEPAL                          6              0       42     488
24 months   GMS-Nepal        NEPAL                          6              1       31     488
24 months   GMS-Nepal        NEPAL                          7              0      103     488
24 months   GMS-Nepal        NEPAL                          7              1       97     488
24 months   GMS-Nepal        NEPAL                          8              0      124     488
24 months   GMS-Nepal        NEPAL                          8              1       91     488
24 months   GMS-Nepal        NEPAL                          9              0        0     488
24 months   GMS-Nepal        NEPAL                          9              1        0     488
24 months   GMS-Nepal        NEPAL                          10             0        0     488
24 months   GMS-Nepal        NEPAL                          10             1        0     488
24 months   GMS-Nepal        NEPAL                          11             0        0     488
24 months   GMS-Nepal        NEPAL                          11             1        0     488
24 months   GMS-Nepal        NEPAL                          12             0        0     488
24 months   GMS-Nepal        NEPAL                          12             1        0     488
24 months   IRC              INDIA                          1              0       18     409
24 months   IRC              INDIA                          1              1       17     409
24 months   IRC              INDIA                          2              0       14     409
24 months   IRC              INDIA                          2              1       16     409
24 months   IRC              INDIA                          3              0       14     409
24 months   IRC              INDIA                          3              1       15     409
24 months   IRC              INDIA                          4              0        9     409
24 months   IRC              INDIA                          4              1       15     409
24 months   IRC              INDIA                          5              0        4     409
24 months   IRC              INDIA                          5              1       17     409
24 months   IRC              INDIA                          6              0       27     409
24 months   IRC              INDIA                          6              1        8     409
24 months   IRC              INDIA                          7              0       22     409
24 months   IRC              INDIA                          7              1       14     409
24 months   IRC              INDIA                          8              0       31     409
24 months   IRC              INDIA                          8              1       10     409
24 months   IRC              INDIA                          9              0       15     409
24 months   IRC              INDIA                          9              1       15     409
24 months   IRC              INDIA                          10             0       28     409
24 months   IRC              INDIA                          10             1       10     409
24 months   IRC              INDIA                          11             0       25     409
24 months   IRC              INDIA                          11             1       16     409
24 months   IRC              INDIA                          12             0       30     409
24 months   IRC              INDIA                          12             1       19     409
24 months   JiVitA-3         BANGLADESH                     1              0      317    8632
24 months   JiVitA-3         BANGLADESH                     1              1      388    8632
24 months   JiVitA-3         BANGLADESH                     2              0      295    8632
24 months   JiVitA-3         BANGLADESH                     2              1      314    8632
24 months   JiVitA-3         BANGLADESH                     3              0      375    8632
24 months   JiVitA-3         BANGLADESH                     3              1      355    8632
24 months   JiVitA-3         BANGLADESH                     4              0      295    8632
24 months   JiVitA-3         BANGLADESH                     4              1      246    8632
24 months   JiVitA-3         BANGLADESH                     5              0      211    8632
24 months   JiVitA-3         BANGLADESH                     5              1      185    8632
24 months   JiVitA-3         BANGLADESH                     6              0      281    8632
24 months   JiVitA-3         BANGLADESH                     6              1      283    8632
24 months   JiVitA-3         BANGLADESH                     7              0      370    8632
24 months   JiVitA-3         BANGLADESH                     7              1      279    8632
24 months   JiVitA-3         BANGLADESH                     8              0      355    8632
24 months   JiVitA-3         BANGLADESH                     8              1      293    8632
24 months   JiVitA-3         BANGLADESH                     9              0      380    8632
24 months   JiVitA-3         BANGLADESH                     9              1      347    8632
24 months   JiVitA-3         BANGLADESH                     10             0      463    8632
24 months   JiVitA-3         BANGLADESH                     10             1      422    8632
24 months   JiVitA-3         BANGLADESH                     11             0      456    8632
24 months   JiVitA-3         BANGLADESH                     11             1      484    8632
24 months   JiVitA-3         BANGLADESH                     12             0      595    8632
24 months   JiVitA-3         BANGLADESH                     12             1      643    8632
24 months   JiVitA-4         BANGLADESH                     1              0       28    4752
24 months   JiVitA-4         BANGLADESH                     1              1       19    4752
24 months   JiVitA-4         BANGLADESH                     2              0      187    4752
24 months   JiVitA-4         BANGLADESH                     2              1      139    4752
24 months   JiVitA-4         BANGLADESH                     3              0      227    4752
24 months   JiVitA-4         BANGLADESH                     3              1      174    4752
24 months   JiVitA-4         BANGLADESH                     4              0      449    4752
24 months   JiVitA-4         BANGLADESH                     4              1      354    4752
24 months   JiVitA-4         BANGLADESH                     5              0      346    4752
24 months   JiVitA-4         BANGLADESH                     5              1      213    4752
24 months   JiVitA-4         BANGLADESH                     6              0      253    4752
24 months   JiVitA-4         BANGLADESH                     6              1      170    4752
24 months   JiVitA-4         BANGLADESH                     7              0      447    4752
24 months   JiVitA-4         BANGLADESH                     7              1      336    4752
24 months   JiVitA-4         BANGLADESH                     8              0      308    4752
24 months   JiVitA-4         BANGLADESH                     8              1      164    4752
24 months   JiVitA-4         BANGLADESH                     9              0      277    4752
24 months   JiVitA-4         BANGLADESH                     9              1      168    4752
24 months   JiVitA-4         BANGLADESH                     10             0      186    4752
24 months   JiVitA-4         BANGLADESH                     10             1       90    4752
24 months   JiVitA-4         BANGLADESH                     11             0       90    4752
24 months   JiVitA-4         BANGLADESH                     11             1       56    4752
24 months   JiVitA-4         BANGLADESH                     12             0       49    4752
24 months   JiVitA-4         BANGLADESH                     12             1       22    4752
24 months   Keneba           GAMBIA                         1              0       99    1725
24 months   Keneba           GAMBIA                         1              1       51    1725
24 months   Keneba           GAMBIA                         2              0      110    1725
24 months   Keneba           GAMBIA                         2              1       50    1725
24 months   Keneba           GAMBIA                         3              0      113    1725
24 months   Keneba           GAMBIA                         3              1       46    1725
24 months   Keneba           GAMBIA                         4              0      114    1725
24 months   Keneba           GAMBIA                         4              1       61    1725
24 months   Keneba           GAMBIA                         5              0      122    1725
24 months   Keneba           GAMBIA                         5              1       60    1725
24 months   Keneba           GAMBIA                         6              0       84    1725
24 months   Keneba           GAMBIA                         6              1       48    1725
24 months   Keneba           GAMBIA                         7              0       60    1725
24 months   Keneba           GAMBIA                         7              1       41    1725
24 months   Keneba           GAMBIA                         8              0       56    1725
24 months   Keneba           GAMBIA                         8              1       36    1725
24 months   Keneba           GAMBIA                         9              0       97    1725
24 months   Keneba           GAMBIA                         9              1       38    1725
24 months   Keneba           GAMBIA                         10             0      107    1725
24 months   Keneba           GAMBIA                         10             1       43    1725
24 months   Keneba           GAMBIA                         11             0      108    1725
24 months   Keneba           GAMBIA                         11             1       70    1725
24 months   Keneba           GAMBIA                         12             0       74    1725
24 months   Keneba           GAMBIA                         12             1       37    1725
24 months   LCNI-5           MALAWI                         1              0       20     579
24 months   LCNI-5           MALAWI                         1              1       21     579
24 months   LCNI-5           MALAWI                         2              0       57     579
24 months   LCNI-5           MALAWI                         2              1       31     579
24 months   LCNI-5           MALAWI                         3              0       38     579
24 months   LCNI-5           MALAWI                         3              1       32     579
24 months   LCNI-5           MALAWI                         4              0       38     579
24 months   LCNI-5           MALAWI                         4              1       41     579
24 months   LCNI-5           MALAWI                         5              0       34     579
24 months   LCNI-5           MALAWI                         5              1       30     579
24 months   LCNI-5           MALAWI                         6              0       30     579
24 months   LCNI-5           MALAWI                         6              1       34     579
24 months   LCNI-5           MALAWI                         7              0       26     579
24 months   LCNI-5           MALAWI                         7              1       15     579
24 months   LCNI-5           MALAWI                         8              0       20     579
24 months   LCNI-5           MALAWI                         8              1        7     579
24 months   LCNI-5           MALAWI                         9              0       12     579
24 months   LCNI-5           MALAWI                         9              1        8     579
24 months   LCNI-5           MALAWI                         10             0       16     579
24 months   LCNI-5           MALAWI                         10             1        9     579
24 months   LCNI-5           MALAWI                         11             0       20     579
24 months   LCNI-5           MALAWI                         11             1       16     579
24 months   LCNI-5           MALAWI                         12             0       10     579
24 months   LCNI-5           MALAWI                         12             1       14     579
24 months   MAL-ED           BANGLADESH                     1              0        8     212
24 months   MAL-ED           BANGLADESH                     1              1        9     212
24 months   MAL-ED           BANGLADESH                     2              0        5     212
24 months   MAL-ED           BANGLADESH                     2              1       12     212
24 months   MAL-ED           BANGLADESH                     3              0        7     212
24 months   MAL-ED           BANGLADESH                     3              1       12     212
24 months   MAL-ED           BANGLADESH                     4              0       13     212
24 months   MAL-ED           BANGLADESH                     4              1        8     212
24 months   MAL-ED           BANGLADESH                     5              0        7     212
24 months   MAL-ED           BANGLADESH                     5              1        8     212
24 months   MAL-ED           BANGLADESH                     6              0        4     212
24 months   MAL-ED           BANGLADESH                     6              1        5     212
24 months   MAL-ED           BANGLADESH                     7              0       10     212
24 months   MAL-ED           BANGLADESH                     7              1        7     212
24 months   MAL-ED           BANGLADESH                     8              0       12     212
24 months   MAL-ED           BANGLADESH                     8              1       12     212
24 months   MAL-ED           BANGLADESH                     9              0       11     212
24 months   MAL-ED           BANGLADESH                     9              1        7     212
24 months   MAL-ED           BANGLADESH                     10             0       13     212
24 months   MAL-ED           BANGLADESH                     10             1        7     212
24 months   MAL-ED           BANGLADESH                     11             0        4     212
24 months   MAL-ED           BANGLADESH                     11             1        5     212
24 months   MAL-ED           BANGLADESH                     12             0       17     212
24 months   MAL-ED           BANGLADESH                     12             1        9     212
24 months   MAL-ED           BRAZIL                         1              0       13     169
24 months   MAL-ED           BRAZIL                         1              1        1     169
24 months   MAL-ED           BRAZIL                         2              0       18     169
24 months   MAL-ED           BRAZIL                         2              1        1     169
24 months   MAL-ED           BRAZIL                         3              0       11     169
24 months   MAL-ED           BRAZIL                         3              1        0     169
24 months   MAL-ED           BRAZIL                         4              0       11     169
24 months   MAL-ED           BRAZIL                         4              1        0     169
24 months   MAL-ED           BRAZIL                         5              0       15     169
24 months   MAL-ED           BRAZIL                         5              1        0     169
24 months   MAL-ED           BRAZIL                         6              0        9     169
24 months   MAL-ED           BRAZIL                         6              1        0     169
24 months   MAL-ED           BRAZIL                         7              0        9     169
24 months   MAL-ED           BRAZIL                         7              1        1     169
24 months   MAL-ED           BRAZIL                         8              0       11     169
24 months   MAL-ED           BRAZIL                         8              1        1     169
24 months   MAL-ED           BRAZIL                         9              0       17     169
24 months   MAL-ED           BRAZIL                         9              1        1     169
24 months   MAL-ED           BRAZIL                         10             0       20     169
24 months   MAL-ED           BRAZIL                         10             1        1     169
24 months   MAL-ED           BRAZIL                         11             0       12     169
24 months   MAL-ED           BRAZIL                         11             1        0     169
24 months   MAL-ED           BRAZIL                         12             0       16     169
24 months   MAL-ED           BRAZIL                         12             1        1     169
24 months   MAL-ED           INDIA                          1              0       10     227
24 months   MAL-ED           INDIA                          1              1        5     227
24 months   MAL-ED           INDIA                          2              0       11     227
24 months   MAL-ED           INDIA                          2              1       12     227
24 months   MAL-ED           INDIA                          3              0       13     227
24 months   MAL-ED           INDIA                          3              1        6     227
24 months   MAL-ED           INDIA                          4              0        9     227
24 months   MAL-ED           INDIA                          4              1        8     227
24 months   MAL-ED           INDIA                          5              0        4     227
24 months   MAL-ED           INDIA                          5              1        3     227
24 months   MAL-ED           INDIA                          6              0       14     227
24 months   MAL-ED           INDIA                          6              1        3     227
24 months   MAL-ED           INDIA                          7              0       12     227
24 months   MAL-ED           INDIA                          7              1        9     227
24 months   MAL-ED           INDIA                          8              0       10     227
24 months   MAL-ED           INDIA                          8              1       10     227
24 months   MAL-ED           INDIA                          9              0       10     227
24 months   MAL-ED           INDIA                          9              1       10     227
24 months   MAL-ED           INDIA                          10             0       14     227
24 months   MAL-ED           INDIA                          10             1        9     227
24 months   MAL-ED           INDIA                          11             0       10     227
24 months   MAL-ED           INDIA                          11             1       14     227
24 months   MAL-ED           INDIA                          12             0       13     227
24 months   MAL-ED           INDIA                          12             1        8     227
24 months   MAL-ED           NEPAL                          1              0       14     228
24 months   MAL-ED           NEPAL                          1              1        5     228
24 months   MAL-ED           NEPAL                          2              0       13     228
24 months   MAL-ED           NEPAL                          2              1        5     228
24 months   MAL-ED           NEPAL                          3              0       10     228
24 months   MAL-ED           NEPAL                          3              1        9     228
24 months   MAL-ED           NEPAL                          4              0       15     228
24 months   MAL-ED           NEPAL                          4              1        5     228
24 months   MAL-ED           NEPAL                          5              0       15     228
24 months   MAL-ED           NEPAL                          5              1        2     228
24 months   MAL-ED           NEPAL                          6              0       15     228
24 months   MAL-ED           NEPAL                          6              1        5     228
24 months   MAL-ED           NEPAL                          7              0       18     228
24 months   MAL-ED           NEPAL                          7              1        1     228
24 months   MAL-ED           NEPAL                          8              0       15     228
24 months   MAL-ED           NEPAL                          8              1        3     228
24 months   MAL-ED           NEPAL                          9              0       18     228
24 months   MAL-ED           NEPAL                          9              1        1     228
24 months   MAL-ED           NEPAL                          10             0       19     228
24 months   MAL-ED           NEPAL                          10             1        1     228
24 months   MAL-ED           NEPAL                          11             0       13     228
24 months   MAL-ED           NEPAL                          11             1        6     228
24 months   MAL-ED           NEPAL                          12             0       13     228
24 months   MAL-ED           NEPAL                          12             1        7     228
24 months   MAL-ED           PERU                           1              0       12     201
24 months   MAL-ED           PERU                           1              1       14     201
24 months   MAL-ED           PERU                           2              0       15     201
24 months   MAL-ED           PERU                           2              1        8     201
24 months   MAL-ED           PERU                           3              0        9     201
24 months   MAL-ED           PERU                           3              1        6     201
24 months   MAL-ED           PERU                           4              0        6     201
24 months   MAL-ED           PERU                           4              1        4     201
24 months   MAL-ED           PERU                           5              0       12     201
24 months   MAL-ED           PERU                           5              1        6     201
24 months   MAL-ED           PERU                           6              0        9     201
24 months   MAL-ED           PERU                           6              1        5     201
24 months   MAL-ED           PERU                           7              0        9     201
24 months   MAL-ED           PERU                           7              1        5     201
24 months   MAL-ED           PERU                           8              0        9     201
24 months   MAL-ED           PERU                           8              1        3     201
24 months   MAL-ED           PERU                           9              0       16     201
24 months   MAL-ED           PERU                           9              1        5     201
24 months   MAL-ED           PERU                           10             0       13     201
24 months   MAL-ED           PERU                           10             1        2     201
24 months   MAL-ED           PERU                           11             0       12     201
24 months   MAL-ED           PERU                           11             1        9     201
24 months   MAL-ED           PERU                           12             0        5     201
24 months   MAL-ED           PERU                           12             1        7     201
24 months   MAL-ED           SOUTH AFRICA                   1              0       14     238
24 months   MAL-ED           SOUTH AFRICA                   1              1       15     238
24 months   MAL-ED           SOUTH AFRICA                   2              0       18     238
24 months   MAL-ED           SOUTH AFRICA                   2              1       12     238
24 months   MAL-ED           SOUTH AFRICA                   3              0       10     238
24 months   MAL-ED           SOUTH AFRICA                   3              1        6     238
24 months   MAL-ED           SOUTH AFRICA                   4              0       11     238
24 months   MAL-ED           SOUTH AFRICA                   4              1        1     238
24 months   MAL-ED           SOUTH AFRICA                   5              0        8     238
24 months   MAL-ED           SOUTH AFRICA                   5              1        2     238
24 months   MAL-ED           SOUTH AFRICA                   6              0       12     238
24 months   MAL-ED           SOUTH AFRICA                   6              1        3     238
24 months   MAL-ED           SOUTH AFRICA                   7              0       15     238
24 months   MAL-ED           SOUTH AFRICA                   7              1       10     238
24 months   MAL-ED           SOUTH AFRICA                   8              0        4     238
24 months   MAL-ED           SOUTH AFRICA                   8              1        3     238
24 months   MAL-ED           SOUTH AFRICA                   9              0       13     238
24 months   MAL-ED           SOUTH AFRICA                   9              1        4     238
24 months   MAL-ED           SOUTH AFRICA                   10             0       16     238
24 months   MAL-ED           SOUTH AFRICA                   10             1        6     238
24 months   MAL-ED           SOUTH AFRICA                   11             0       16     238
24 months   MAL-ED           SOUTH AFRICA                   11             1       11     238
24 months   MAL-ED           SOUTH AFRICA                   12             0       17     238
24 months   MAL-ED           SOUTH AFRICA                   12             1       11     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              0        4     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1       14     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              0        5     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              1       14     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              0        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              1       19     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              0        1     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              1        7     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              0        4     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              1       10     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              0        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              1       11     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              0       11     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              1       17     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              0        5     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              1        7     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              0        4     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              1       11     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             0        5     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             1       12     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             0        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             1       18     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             0       11     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             1       15     214
24 months   NIH-Birth        BANGLADESH                     1              0       15     429
24 months   NIH-Birth        BANGLADESH                     1              1       27     429
24 months   NIH-Birth        BANGLADESH                     2              0       13     429
24 months   NIH-Birth        BANGLADESH                     2              1       23     429
24 months   NIH-Birth        BANGLADESH                     3              0       23     429
24 months   NIH-Birth        BANGLADESH                     3              1       18     429
24 months   NIH-Birth        BANGLADESH                     4              0       11     429
24 months   NIH-Birth        BANGLADESH                     4              1       23     429
24 months   NIH-Birth        BANGLADESH                     5              0       13     429
24 months   NIH-Birth        BANGLADESH                     5              1       21     429
24 months   NIH-Birth        BANGLADESH                     6              0       12     429
24 months   NIH-Birth        BANGLADESH                     6              1       18     429
24 months   NIH-Birth        BANGLADESH                     7              0       17     429
24 months   NIH-Birth        BANGLADESH                     7              1       20     429
24 months   NIH-Birth        BANGLADESH                     8              0       13     429
24 months   NIH-Birth        BANGLADESH                     8              1       17     429
24 months   NIH-Birth        BANGLADESH                     9              0       11     429
24 months   NIH-Birth        BANGLADESH                     9              1        8     429
24 months   NIH-Birth        BANGLADESH                     10             0       18     429
24 months   NIH-Birth        BANGLADESH                     10             1       22     429
24 months   NIH-Birth        BANGLADESH                     11             0       19     429
24 months   NIH-Birth        BANGLADESH                     11             1       22     429
24 months   NIH-Birth        BANGLADESH                     12             0       20     429
24 months   NIH-Birth        BANGLADESH                     12             1       25     429
24 months   PROBIT           BELARUS                        1              0      255    4035
24 months   PROBIT           BELARUS                        1              1       14    4035
24 months   PROBIT           BELARUS                        2              0      195    4035
24 months   PROBIT           BELARUS                        2              1       16    4035
24 months   PROBIT           BELARUS                        3              0      307    4035
24 months   PROBIT           BELARUS                        3              1       17    4035
24 months   PROBIT           BELARUS                        4              0      313    4035
24 months   PROBIT           BELARUS                        4              1       13    4035
24 months   PROBIT           BELARUS                        5              0      293    4035
24 months   PROBIT           BELARUS                        5              1       14    4035
24 months   PROBIT           BELARUS                        6              0      253    4035
24 months   PROBIT           BELARUS                        6              1       12    4035
24 months   PROBIT           BELARUS                        7              0      358    4035
24 months   PROBIT           BELARUS                        7              1       15    4035
24 months   PROBIT           BELARUS                        8              0      337    4035
24 months   PROBIT           BELARUS                        8              1       16    4035
24 months   PROBIT           BELARUS                        9              0      352    4035
24 months   PROBIT           BELARUS                        9              1       30    4035
24 months   PROBIT           BELARUS                        10             0      349    4035
24 months   PROBIT           BELARUS                        10             1       44    4035
24 months   PROBIT           BELARUS                        11             0      350    4035
24 months   PROBIT           BELARUS                        11             1       39    4035
24 months   PROBIT           BELARUS                        12             0      398    4035
24 months   PROBIT           BELARUS                        12             1       45    4035
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             1        0       6
24 months   ZVITAMBO         ZIMBABWE                       1              0      128    1640
24 months   ZVITAMBO         ZIMBABWE                       1              1       62    1640
24 months   ZVITAMBO         ZIMBABWE                       2              0      117    1640
24 months   ZVITAMBO         ZIMBABWE                       2              1       72    1640
24 months   ZVITAMBO         ZIMBABWE                       3              0      150    1640
24 months   ZVITAMBO         ZIMBABWE                       3              1       64    1640
24 months   ZVITAMBO         ZIMBABWE                       4              0      124    1640
24 months   ZVITAMBO         ZIMBABWE                       4              1       55    1640
24 months   ZVITAMBO         ZIMBABWE                       5              0      107    1640
24 months   ZVITAMBO         ZIMBABWE                       5              1       57    1640
24 months   ZVITAMBO         ZIMBABWE                       6              0      131    1640
24 months   ZVITAMBO         ZIMBABWE                       6              1       68    1640
24 months   ZVITAMBO         ZIMBABWE                       7              0       70    1640
24 months   ZVITAMBO         ZIMBABWE                       7              1       54    1640
24 months   ZVITAMBO         ZIMBABWE                       8              0       80    1640
24 months   ZVITAMBO         ZIMBABWE                       8              1       50    1640
24 months   ZVITAMBO         ZIMBABWE                       9              0       11    1640
24 months   ZVITAMBO         ZIMBABWE                       9              1        6    1640
24 months   ZVITAMBO         ZIMBABWE                       10             0       19    1640
24 months   ZVITAMBO         ZIMBABWE                       10             1        6    1640
24 months   ZVITAMBO         ZIMBABWE                       11             0       42    1640
24 months   ZVITAMBO         ZIMBABWE                       11             1       25    1640
24 months   ZVITAMBO         ZIMBABWE                       12             0       92    1640
24 months   ZVITAMBO         ZIMBABWE                       12             1       50    1640


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




# Results Detail

## Results Plots
![](/tmp/c4663e36-b3ec-486f-9b6b-ba0c5bb5be76/74f9dffb-94b0-47f1-842c-f4e44565541f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c4663e36-b3ec-486f-9b6b-ba0c5bb5be76/74f9dffb-94b0-47f1-842c-f4e44565541f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c4663e36-b3ec-486f-9b6b-ba0c5bb5be76/74f9dffb-94b0-47f1-842c-f4e44565541f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c4663e36-b3ec-486f-9b6b-ba0c5bb5be76/74f9dffb-94b0-47f1-842c-f4e44565541f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       JiVitA-3         BANGLADESH                     1                    NA                0.3674242    0.3461206   0.3887278
Birth       JiVitA-3         BANGLADESH                     2                    NA                0.3199541    0.2966264   0.3432818
Birth       JiVitA-3         BANGLADESH                     3                    NA                0.2946602    0.2719917   0.3173287
Birth       JiVitA-3         BANGLADESH                     4                    NA                0.2820685    0.2576475   0.3064895
Birth       JiVitA-3         BANGLADESH                     5                    NA                0.2953082    0.2666782   0.3239382
Birth       JiVitA-3         BANGLADESH                     6                    NA                0.2871287    0.2577911   0.3164663
Birth       JiVitA-3         BANGLADESH                     7                    NA                0.2992063    0.2728949   0.3255178
Birth       JiVitA-3         BANGLADESH                     8                    NA                0.3177843    0.2938590   0.3417095
Birth       JiVitA-3         BANGLADESH                     9                    NA                0.2968681    0.2775694   0.3161668
Birth       JiVitA-3         BANGLADESH                     10                   NA                0.3455519    0.3245791   0.3665247
Birth       JiVitA-3         BANGLADESH                     11                   NA                0.3734891    0.3523130   0.3946652
Birth       JiVitA-3         BANGLADESH                     12                   NA                0.3796296    0.3597306   0.3995286
Birth       NIH-Birth        BANGLADESH                     1                    NA                0.2769231    0.1680500   0.3857962
Birth       NIH-Birth        BANGLADESH                     2                    NA                0.1896552    0.0886813   0.2906290
Birth       NIH-Birth        BANGLADESH                     3                    NA                0.1147541    0.0347050   0.1948032
Birth       NIH-Birth        BANGLADESH                     4                    NA                0.1730769    0.0701673   0.2759865
Birth       NIH-Birth        BANGLADESH                     5                    NA                0.1333333    0.0339314   0.2327352
Birth       NIH-Birth        BANGLADESH                     6                    NA                0.1162791    0.0203877   0.2121705
Birth       NIH-Birth        BANGLADESH                     7                    NA                0.1304348    0.0330313   0.2278382
Birth       NIH-Birth        BANGLADESH                     8                    NA                0.1190476    0.0210270   0.2170682
Birth       NIH-Birth        BANGLADESH                     9                    NA                0.1764706    0.0482252   0.3047160
Birth       NIH-Birth        BANGLADESH                     10                   NA                0.1833333    0.0853453   0.2813214
Birth       NIH-Birth        BANGLADESH                     11                   NA                0.1400000    0.0437427   0.2362573
Birth       NIH-Birth        BANGLADESH                     12                   NA                0.1153846    0.0284776   0.2022917
Birth       SAS-CompFeed     INDIA                          1                    NA                0.3292683    0.2225822   0.4359544
Birth       SAS-CompFeed     INDIA                          2                    NA                0.2777778    0.1625089   0.3930467
Birth       SAS-CompFeed     INDIA                          3                    NA                0.3375000    0.2508382   0.4241618
Birth       SAS-CompFeed     INDIA                          4                    NA                0.1746032    0.0638137   0.2853927
Birth       SAS-CompFeed     INDIA                          5                    NA                0.3000000    0.1897606   0.4102394
Birth       SAS-CompFeed     INDIA                          6                    NA                0.2549020    0.1913523   0.3184517
Birth       SAS-CompFeed     INDIA                          7                    NA                0.3168317    0.2222655   0.4113979
Birth       SAS-CompFeed     INDIA                          8                    NA                0.3586207    0.2690571   0.4481842
Birth       SAS-CompFeed     INDIA                          9                    NA                0.2162162    0.1462510   0.2861815
Birth       SAS-CompFeed     INDIA                          10                   NA                0.2681159    0.1975360   0.3386959
Birth       SAS-CompFeed     INDIA                          11                   NA                0.2295082    0.1503240   0.3086924
Birth       SAS-CompFeed     INDIA                          12                   NA                0.2773109    0.1908828   0.3637391
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                0.1304670    0.1124927   0.1484413
Birth       ZVITAMBO         ZIMBABWE                       2                    NA                0.1479347    0.1263667   0.1695027
Birth       ZVITAMBO         ZIMBABWE                       3                    NA                0.1188811    0.1001258   0.1376364
Birth       ZVITAMBO         ZIMBABWE                       4                    NA                0.1094675    0.0902493   0.1286856
Birth       ZVITAMBO         ZIMBABWE                       5                    NA                0.1284861    0.1077865   0.1491857
Birth       ZVITAMBO         ZIMBABWE                       6                    NA                0.1136564    0.0951908   0.1321220
Birth       ZVITAMBO         ZIMBABWE                       7                    NA                0.1026293    0.0853061   0.1199526
Birth       ZVITAMBO         ZIMBABWE                       8                    NA                0.0738636    0.0592583   0.0884690
Birth       ZVITAMBO         ZIMBABWE                       9                    NA                0.0627837    0.0497072   0.0758602
Birth       ZVITAMBO         ZIMBABWE                       10                   NA                0.0811843    0.0646403   0.0977283
Birth       ZVITAMBO         ZIMBABWE                       11                   NA                0.0833333    0.0672888   0.0993778
Birth       ZVITAMBO         ZIMBABWE                       12                   NA                0.0977918    0.0814421   0.1141415
6 months    IRC              INDIA                          1                    NA                0.2857143    0.1358665   0.4355620
6 months    IRC              INDIA                          2                    NA                0.4137931    0.2343196   0.5932666
6 months    IRC              INDIA                          3                    NA                0.3793103    0.2024958   0.5561248
6 months    IRC              INDIA                          4                    NA                0.2500000    0.0765488   0.4234512
6 months    IRC              INDIA                          5                    NA                0.3500000    0.1407054   0.5592946
6 months    IRC              INDIA                          6                    NA                0.1428571    0.0267856   0.2589287
6 months    IRC              INDIA                          7                    NA                0.3055556    0.1548966   0.4562145
6 months    IRC              INDIA                          8                    NA                0.1219512    0.0216647   0.2222378
6 months    IRC              INDIA                          9                    NA                0.2000000    0.0566883   0.3433117
6 months    IRC              INDIA                          10                   NA                0.1578947    0.0418147   0.2739748
6 months    IRC              INDIA                          11                   NA                0.1951220    0.0736689   0.3165750
6 months    IRC              INDIA                          12                   NA                0.2653061    0.1415373   0.3890749
6 months    JiVitA-3         BANGLADESH                     1                    NA                0.2615385    0.2363659   0.2867110
6 months    JiVitA-3         BANGLADESH                     2                    NA                0.2440878    0.2186469   0.2695288
6 months    JiVitA-3         BANGLADESH                     3                    NA                0.2322308    0.2078426   0.2566191
6 months    JiVitA-3         BANGLADESH                     4                    NA                0.2267003    0.2009301   0.2524704
6 months    JiVitA-3         BANGLADESH                     5                    NA                0.2478261    0.2204117   0.2752404
6 months    JiVitA-3         BANGLADESH                     6                    NA                0.2411714    0.2145909   0.2677519
6 months    JiVitA-3         BANGLADESH                     7                    NA                0.2549960    0.2296281   0.2803639
6 months    JiVitA-3         BANGLADESH                     8                    NA                0.2370572    0.2140798   0.2600346
6 months    JiVitA-3         BANGLADESH                     9                    NA                0.2348387    0.2111322   0.2585452
6 months    JiVitA-3         BANGLADESH                     10                   NA                0.2674144    0.2449279   0.2899009
6 months    JiVitA-3         BANGLADESH                     11                   NA                0.2849430    0.2617184   0.3081676
6 months    JiVitA-3         BANGLADESH                     12                   NA                0.2668227    0.2455180   0.2881274
6 months    JiVitA-4         BANGLADESH                     1                    NA                0.2452830    0.1919202   0.2986458
6 months    JiVitA-4         BANGLADESH                     2                    NA                0.1878788    0.1274618   0.2482958
6 months    JiVitA-4         BANGLADESH                     3                    NA                0.2465116    0.2022798   0.2907435
6 months    JiVitA-4         BANGLADESH                     4                    NA                0.2710059    0.2355625   0.3064493
6 months    JiVitA-4         BANGLADESH                     5                    NA                0.2529915    0.2090939   0.2968890
6 months    JiVitA-4         BANGLADESH                     6                    NA                0.2373272    0.1944252   0.2802292
6 months    JiVitA-4         BANGLADESH                     7                    NA                0.2935561    0.2588328   0.3282794
6 months    JiVitA-4         BANGLADESH                     8                    NA                0.2117647    0.1706525   0.2528769
6 months    JiVitA-4         BANGLADESH                     9                    NA                0.2343387    0.1897305   0.2789470
6 months    JiVitA-4         BANGLADESH                     10                   NA                0.2647059    0.2152920   0.3141198
6 months    JiVitA-4         BANGLADESH                     11                   NA                0.2229299    0.1579290   0.2879308
6 months    JiVitA-4         BANGLADESH                     12                   NA                0.2597403    0.1936222   0.3258583
6 months    Keneba           GAMBIA                         1                    NA                0.1358696    0.0863481   0.1853911
6 months    Keneba           GAMBIA                         2                    NA                0.1285714    0.0832889   0.1738539
6 months    Keneba           GAMBIA                         3                    NA                0.1081081    0.0633521   0.1528641
6 months    Keneba           GAMBIA                         4                    NA                0.1339286    0.0893176   0.1785395
6 months    Keneba           GAMBIA                         5                    NA                0.1075269    0.0629970   0.1520568
6 months    Keneba           GAMBIA                         6                    NA                0.1342282    0.0794784   0.1889780
6 months    Keneba           GAMBIA                         7                    NA                0.1782946    0.1122276   0.2443615
6 months    Keneba           GAMBIA                         8                    NA                0.1779661    0.1089382   0.2469940
6 months    Keneba           GAMBIA                         9                    NA                0.1523179    0.0949914   0.2096444
6 months    Keneba           GAMBIA                         10                   NA                0.1715976    0.1147405   0.2284548
6 months    Keneba           GAMBIA                         11                   NA                0.1555556    0.1081871   0.2029240
6 months    Keneba           GAMBIA                         12                   NA                0.1383648    0.0846829   0.1920467
6 months    LCNI-5           MALAWI                         1                    NA                0.2909091    0.1708057   0.4110125
6 months    LCNI-5           MALAWI                         2                    NA                0.3421053    0.2549662   0.4292443
6 months    LCNI-5           MALAWI                         3                    NA                0.3571429    0.2622197   0.4520660
6 months    LCNI-5           MALAWI                         4                    NA                0.4454545    0.3525192   0.5383899
6 months    LCNI-5           MALAWI                         5                    NA                0.3513514    0.2624883   0.4402144
6 months    LCNI-5           MALAWI                         6                    NA                0.3186813    0.2228870   0.4144757
6 months    LCNI-5           MALAWI                         7                    NA                0.4444444    0.3295991   0.5592898
6 months    LCNI-5           MALAWI                         8                    NA                0.3170732    0.1745512   0.4595952
6 months    LCNI-5           MALAWI                         9                    NA                0.3793103    0.2026079   0.5560128
6 months    LCNI-5           MALAWI                         10                   NA                0.4000000    0.2376028   0.5623972
6 months    LCNI-5           MALAWI                         11                   NA                0.3469388    0.2135828   0.4802947
6 months    LCNI-5           MALAWI                         12                   NA                0.4411765    0.2741785   0.6081744
6 months    NIH-Birth        BANGLADESH                     1                    NA                0.3000000    0.1728614   0.4271386
6 months    NIH-Birth        BANGLADESH                     2                    NA                0.2800000    0.1554301   0.4045699
6 months    NIH-Birth        BANGLADESH                     3                    NA                0.2800000    0.1554301   0.4045699
6 months    NIH-Birth        BANGLADESH                     4                    NA                0.2272727    0.1033322   0.3512132
6 months    NIH-Birth        BANGLADESH                     5                    NA                0.2000000    0.0759254   0.3240746
6 months    NIH-Birth        BANGLADESH                     6                    NA                0.2820513    0.1406897   0.4234128
6 months    NIH-Birth        BANGLADESH                     7                    NA                0.4000000    0.2567310   0.5432690
6 months    NIH-Birth        BANGLADESH                     8                    NA                0.1842105    0.0608412   0.3075799
6 months    NIH-Birth        BANGLADESH                     9                    NA                0.2333333    0.0818434   0.3848233
6 months    NIH-Birth        BANGLADESH                     10                   NA                0.2884615    0.1652094   0.4117136
6 months    NIH-Birth        BANGLADESH                     11                   NA                0.3673469    0.2322406   0.5024533
6 months    NIH-Birth        BANGLADESH                     12                   NA                0.1400000    0.0437322   0.2362678
6 months    PROBIT           BELARUS                        1                    NA                0.0471869    0.0281017   0.0662722
6 months    PROBIT           BELARUS                        2                    NA                0.0557308    0.0376430   0.0738186
6 months    PROBIT           BELARUS                        3                    NA                0.0412926    0.0260726   0.0565126
6 months    PROBIT           BELARUS                        4                    NA                0.0308700    0.0158316   0.0459083
6 months    PROBIT           BELARUS                        5                    NA                0.0273723    0.0112723   0.0434723
6 months    PROBIT           BELARUS                        6                    NA                0.0401786    0.0217765   0.0585807
6 months    PROBIT           BELARUS                        7                    NA                0.0322344    0.0176374   0.0468315
6 months    PROBIT           BELARUS                        8                    NA                0.0393858    0.0195341   0.0592376
6 months    PROBIT           BELARUS                        9                    NA                0.0418636    0.0241181   0.0596091
6 months    PROBIT           BELARUS                        10                   NA                0.0431396    0.0276181   0.0586611
6 months    PROBIT           BELARUS                        11                   NA                0.0402769    0.0255320   0.0550218
6 months    PROBIT           BELARUS                        12                   NA                0.0351700    0.0200496   0.0502904
6 months    SAS-CompFeed     INDIA                          1                    NA                0.2941176    0.1847392   0.4034961
6 months    SAS-CompFeed     INDIA                          2                    NA                0.2716049    0.1654211   0.3777888
6 months    SAS-CompFeed     INDIA                          3                    NA                0.2375000    0.1158949   0.3591051
6 months    SAS-CompFeed     INDIA                          4                    NA                0.2597403    0.1603971   0.3590834
6 months    SAS-CompFeed     INDIA                          5                    NA                0.3552632    0.2609405   0.4495859
6 months    SAS-CompFeed     INDIA                          6                    NA                0.2745098    0.2390370   0.3099826
6 months    SAS-CompFeed     INDIA                          7                    NA                0.4347826    0.3351577   0.5344075
6 months    SAS-CompFeed     INDIA                          8                    NA                0.3355263    0.2446426   0.4264100
6 months    SAS-CompFeed     INDIA                          9                    NA                0.2048193    0.1397831   0.2698554
6 months    SAS-CompFeed     INDIA                          10                   NA                0.2364865    0.1736429   0.2993301
6 months    SAS-CompFeed     INDIA                          11                   NA                0.2560000    0.1906230   0.3213770
6 months    SAS-CompFeed     INDIA                          12                   NA                0.2868217    0.2090982   0.3645453
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0603015    0.0272199   0.0933831
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0875912    0.0402412   0.1349412
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0728477    0.0313857   0.1143097
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0942029    0.0454542   0.1429516
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.0807453    0.0386515   0.1228392
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1267606    0.0720250   0.1814961
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1310345    0.0760974   0.1859715
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.0977011    0.0535740   0.1418283
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.1313131    0.0842579   0.1783684
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.0918367    0.0513962   0.1322773
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.1336898    0.0849010   0.1824787
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.0646766    0.0306662   0.0986870
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.1698795    0.1443304   0.1954286
6 months    ZVITAMBO         ZIMBABWE                       2                    NA                0.1658456    0.1363037   0.1953876
6 months    ZVITAMBO         ZIMBABWE                       3                    NA                0.2105978    0.1811393   0.2400563
6 months    ZVITAMBO         ZIMBABWE                       4                    NA                0.1764706    0.1478160   0.2051252
6 months    ZVITAMBO         ZIMBABWE                       5                    NA                0.1761006    0.1464958   0.2057054
6 months    ZVITAMBO         ZIMBABWE                       6                    NA                0.1632353    0.1354556   0.1910150
6 months    ZVITAMBO         ZIMBABWE                       7                    NA                0.1822222    0.1530990   0.2113455
6 months    ZVITAMBO         ZIMBABWE                       8                    NA                0.1380208    0.1136251   0.1624165
6 months    ZVITAMBO         ZIMBABWE                       9                    NA                0.1360799    0.1123339   0.1598259
6 months    ZVITAMBO         ZIMBABWE                       10                   NA                0.1560510    0.1276662   0.1844357
6 months    ZVITAMBO         ZIMBABWE                       11                   NA                0.1576873    0.1317923   0.1835822
6 months    ZVITAMBO         ZIMBABWE                       12                   NA                0.1341040    0.1113940   0.1568141
24 months   JiVitA-3         BANGLADESH                     1                    NA                0.5503546    0.5092762   0.5914330
24 months   JiVitA-3         BANGLADESH                     2                    NA                0.5155993    0.4717781   0.5594206
24 months   JiVitA-3         BANGLADESH                     3                    NA                0.4863014    0.4479183   0.5246844
24 months   JiVitA-3         BANGLADESH                     4                    NA                0.4547135    0.4058282   0.5035988
24 months   JiVitA-3         BANGLADESH                     5                    NA                0.4671717    0.4133232   0.5210202
24 months   JiVitA-3         BANGLADESH                     6                    NA                0.5017730    0.4555663   0.5479798
24 months   JiVitA-3         BANGLADESH                     7                    NA                0.4298921    0.3874802   0.4723041
24 months   JiVitA-3         BANGLADESH                     8                    NA                0.4521605    0.4120477   0.4922733
24 months   JiVitA-3         BANGLADESH                     9                    NA                0.4773040    0.4387231   0.5158849
24 months   JiVitA-3         BANGLADESH                     10                   NA                0.4768362    0.4407024   0.5129700
24 months   JiVitA-3         BANGLADESH                     11                   NA                0.5148936    0.4805046   0.5492826
24 months   JiVitA-3         BANGLADESH                     12                   NA                0.5193861    0.4856896   0.5530826
24 months   JiVitA-4         BANGLADESH                     1                    NA                0.4042553    0.3406501   0.4678605
24 months   JiVitA-4         BANGLADESH                     2                    NA                0.4263804    0.3661116   0.4866492
24 months   JiVitA-4         BANGLADESH                     3                    NA                0.4339152    0.3823524   0.4854780
24 months   JiVitA-4         BANGLADESH                     4                    NA                0.4408468    0.4021464   0.4795473
24 months   JiVitA-4         BANGLADESH                     5                    NA                0.3810376    0.3324258   0.4296493
24 months   JiVitA-4         BANGLADESH                     6                    NA                0.4018913    0.3483820   0.4554005
24 months   JiVitA-4         BANGLADESH                     7                    NA                0.4291188    0.3887829   0.4694546
24 months   JiVitA-4         BANGLADESH                     8                    NA                0.3474576    0.2978363   0.3970789
24 months   JiVitA-4         BANGLADESH                     9                    NA                0.3775281    0.3249718   0.4300843
24 months   JiVitA-4         BANGLADESH                     10                   NA                0.3260870    0.2671994   0.3849745
24 months   JiVitA-4         BANGLADESH                     11                   NA                0.3835616    0.2871009   0.4800224
24 months   JiVitA-4         BANGLADESH                     12                   NA                0.3098592    0.2431690   0.3765493
24 months   Keneba           GAMBIA                         1                    NA                0.3400000    0.2641702   0.4158298
24 months   Keneba           GAMBIA                         2                    NA                0.3125000    0.2406585   0.3843415
24 months   Keneba           GAMBIA                         3                    NA                0.2893082    0.2188070   0.3598094
24 months   Keneba           GAMBIA                         4                    NA                0.3485714    0.2779504   0.4191925
24 months   Keneba           GAMBIA                         5                    NA                0.3296703    0.2613543   0.3979863
24 months   Keneba           GAMBIA                         6                    NA                0.3636364    0.2815496   0.4457232
24 months   Keneba           GAMBIA                         7                    NA                0.4059406    0.3101419   0.5017393
24 months   Keneba           GAMBIA                         8                    NA                0.3913043    0.2915487   0.4910600
24 months   Keneba           GAMBIA                         9                    NA                0.2814815    0.2055973   0.3573656
24 months   Keneba           GAMBIA                         10                   NA                0.2866667    0.2142792   0.3590541
24 months   Keneba           GAMBIA                         11                   NA                0.3932584    0.3214782   0.4650387
24 months   Keneba           GAMBIA                         12                   NA                0.3333333    0.2456118   0.4210549
24 months   LCNI-5           MALAWI                         1                    NA                0.5121951    0.3590609   0.6653294
24 months   LCNI-5           MALAWI                         2                    NA                0.3522727    0.2523837   0.4521617
24 months   LCNI-5           MALAWI                         3                    NA                0.4571429    0.3403428   0.5739429
24 months   LCNI-5           MALAWI                         4                    NA                0.5189873    0.4087150   0.6292597
24 months   LCNI-5           MALAWI                         5                    NA                0.4687500    0.3463860   0.5911140
24 months   LCNI-5           MALAWI                         6                    NA                0.5312500    0.4088860   0.6536140
24 months   LCNI-5           MALAWI                         7                    NA                0.3658537    0.2182898   0.5134175
24 months   LCNI-5           MALAWI                         8                    NA                0.2592593    0.0938188   0.4246998
24 months   LCNI-5           MALAWI                         9                    NA                0.4000000    0.1851111   0.6148889
24 months   LCNI-5           MALAWI                         10                   NA                0.3600000    0.1716808   0.5483192
24 months   LCNI-5           MALAWI                         11                   NA                0.4444444    0.2819851   0.6069038
24 months   LCNI-5           MALAWI                         12                   NA                0.5833333    0.3859227   0.7807440
24 months   NIH-Birth        BANGLADESH                     1                    NA                0.6428571    0.4977768   0.7879374
24 months   NIH-Birth        BANGLADESH                     2                    NA                0.6388889    0.4818032   0.7959746
24 months   NIH-Birth        BANGLADESH                     3                    NA                0.4390244    0.2869419   0.5911069
24 months   NIH-Birth        BANGLADESH                     4                    NA                0.6764706    0.5190372   0.8339039
24 months   NIH-Birth        BANGLADESH                     5                    NA                0.6176471    0.4541094   0.7811847
24 months   NIH-Birth        BANGLADESH                     6                    NA                0.6000000    0.4244908   0.7755092
24 months   NIH-Birth        BANGLADESH                     7                    NA                0.5405405    0.3797755   0.7013056
24 months   NIH-Birth        BANGLADESH                     8                    NA                0.5666667    0.3891377   0.7441956
24 months   NIH-Birth        BANGLADESH                     9                    NA                0.4210526    0.1987903   0.6433149
24 months   NIH-Birth        BANGLADESH                     10                   NA                0.5500000    0.3956479   0.7043521
24 months   NIH-Birth        BANGLADESH                     11                   NA                0.5365854    0.3837699   0.6894008
24 months   NIH-Birth        BANGLADESH                     12                   NA                0.5555556    0.4102035   0.7009076
24 months   PROBIT           BELARUS                        1                    NA                0.0520446   -0.0053254   0.1094146
24 months   PROBIT           BELARUS                        2                    NA                0.0758294    0.0065868   0.1450719
24 months   PROBIT           BELARUS                        3                    NA                0.0524691    0.0053596   0.0995787
24 months   PROBIT           BELARUS                        4                    NA                0.0398773   -0.0034455   0.0832001
24 months   PROBIT           BELARUS                        5                    NA                0.0456026    0.0285096   0.0626956
24 months   PROBIT           BELARUS                        6                    NA                0.0452830   -0.0071452   0.0977112
24 months   PROBIT           BELARUS                        7                    NA                0.0402145   -0.0046247   0.0850537
24 months   PROBIT           BELARUS                        8                    NA                0.0453258    0.0085294   0.0821221
24 months   PROBIT           BELARUS                        9                    NA                0.0785340    0.0353068   0.1217612
24 months   PROBIT           BELARUS                        10                   NA                0.1119593    0.0563717   0.1675469
24 months   PROBIT           BELARUS                        11                   NA                0.1002571    0.0273303   0.1731838
24 months   PROBIT           BELARUS                        12                   NA                0.1015801    0.0246482   0.1785120
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.3263158    0.2596273   0.3930043
24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.3809524    0.3116980   0.4502067
24 months   ZVITAMBO         ZIMBABWE                       3                    NA                0.2990654    0.2377040   0.3604269
24 months   ZVITAMBO         ZIMBABWE                       4                    NA                0.3072626    0.2396553   0.3748698
24 months   ZVITAMBO         ZIMBABWE                       5                    NA                0.3475610    0.2746582   0.4204638
24 months   ZVITAMBO         ZIMBABWE                       6                    NA                0.3417085    0.2757925   0.4076246
24 months   ZVITAMBO         ZIMBABWE                       7                    NA                0.4354839    0.3481880   0.5227798
24 months   ZVITAMBO         ZIMBABWE                       8                    NA                0.3846154    0.3009597   0.4682711
24 months   ZVITAMBO         ZIMBABWE                       9                    NA                0.3529412    0.2587209   0.4471614
24 months   ZVITAMBO         ZIMBABWE                       10                   NA                0.2400000    0.1378875   0.3421125
24 months   ZVITAMBO         ZIMBABWE                       11                   NA                0.3731343    0.2572931   0.4889755
24 months   ZVITAMBO         ZIMBABWE                       12                   NA                0.3521127    0.2735300   0.4306954


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.3289690   0.3216017   0.3363364
Birth       NIH-Birth        BANGLADESH                     NA                   NA                0.1595395   0.1304091   0.1886699
Birth       SAS-CompFeed     INDIA                          NA                   NA                0.2787540   0.2475949   0.3099131
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1033514   0.0982859   0.1084168
6 months    IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.2513830   0.2432594   0.2595066
6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.2527427   0.2386864   0.2667990
6 months    Keneba           GAMBIA                         NA                   NA                0.1412159   0.1262788   0.1561530
6 months    LCNI-5           MALAWI                         NA                   NA                0.3682956   0.3356382   0.4009530
6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    PROBIT           BELARUS                        NA                   NA                0.0393401   0.0293640   0.0493162
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0970922   0.0842059   0.1099785
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1628792   0.1551057   0.1706527
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4910797   0.4779658   0.5041936
24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.4008838   0.3839145   0.4178532
24 months   Keneba           GAMBIA                         NA                   NA                0.3368116   0.3145020   0.3591212
24 months   LCNI-5           MALAWI                         NA                   NA                0.4455959   0.4050760   0.4861157
24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5687646   0.5218455   0.6156837
24 months   PROBIT           BELARUS                        NA                   NA                0.0681537   0.0420376   0.0942697
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.3469512   0.3239068   0.3699956


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3         BANGLADESH                     2                    1                 0.8708030   0.7879406   0.9623795
Birth       JiVitA-3         BANGLADESH                     3                    1                 0.8019618   0.7294834   0.8816412
Birth       JiVitA-3         BANGLADESH                     4                    1                 0.7676916   0.6921150   0.8515209
Birth       JiVitA-3         BANGLADESH                     5                    1                 0.8037254   0.7185088   0.8990488
Birth       JiVitA-3         BANGLADESH                     6                    1                 0.7814637   0.6956727   0.8778346
Birth       JiVitA-3         BANGLADESH                     7                    1                 0.8143348   0.7343527   0.9030282
Birth       JiVitA-3         BANGLADESH                     8                    1                 0.8648974   0.7858378   0.9519107
Birth       JiVitA-3         BANGLADESH                     9                    1                 0.8079709   0.7431427   0.8784545
Birth       JiVitA-3         BANGLADESH                     10                   1                 0.9404711   0.8671038   1.0200462
Birth       JiVitA-3         BANGLADESH                     11                   1                 1.0165065   0.9422466   1.0966189
Birth       JiVitA-3         BANGLADESH                     12                   1                 1.0332188   0.9572798   1.1151819
Birth       NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       NIH-Birth        BANGLADESH                     2                    1                 0.6848659   0.3533245   1.3275084
Birth       NIH-Birth        BANGLADESH                     3                    1                 0.4143898   0.1860608   0.9229185
Birth       NIH-Birth        BANGLADESH                     4                    1                 0.6250000   0.3064138   1.2748282
Birth       NIH-Birth        BANGLADESH                     5                    1                 0.4814815   0.2072734   1.1184474
Birth       NIH-Birth        BANGLADESH                     6                    1                 0.4198966   0.1684132   1.0469084
Birth       NIH-Birth        BANGLADESH                     7                    1                 0.4710145   0.2025441   1.0953398
Birth       NIH-Birth        BANGLADESH                     8                    1                 0.4298942   0.1726243   1.0705849
Birth       NIH-Birth        BANGLADESH                     9                    1                 0.6372549   0.2789172   1.4559654
Birth       NIH-Birth        BANGLADESH                     10                   1                 0.6620370   0.3409777   1.2854011
Birth       NIH-Birth        BANGLADESH                     11                   1                 0.5055556   0.2289805   1.1161930
Birth       NIH-Birth        BANGLADESH                     12                   1                 0.4166667   0.1781555   0.9744923
Birth       SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed     INDIA                          2                    1                 0.8436214   0.5081881   1.4004599
Birth       SAS-CompFeed     INDIA                          3                    1                 1.0250000   0.6602771   1.5911880
Birth       SAS-CompFeed     INDIA                          4                    1                 0.5302763   0.2554464   1.1007906
Birth       SAS-CompFeed     INDIA                          5                    1                 0.9111111   0.4823734   1.7209146
Birth       SAS-CompFeed     INDIA                          6                    1                 0.7741467   0.4609291   1.3002066
Birth       SAS-CompFeed     INDIA                          7                    1                 0.9622296   0.6340766   1.4602111
Birth       SAS-CompFeed     INDIA                          8                    1                 1.0891443   0.7717946   1.5369832
Birth       SAS-CompFeed     INDIA                          9                    1                 0.6566567   0.4641897   0.9289262
Birth       SAS-CompFeed     INDIA                          10                   1                 0.8142780   0.6535612   1.0145168
Birth       SAS-CompFeed     INDIA                          11                   1                 0.6970249   0.4233748   1.1475500
Birth       SAS-CompFeed     INDIA                          12                   1                 0.8422035   0.4814265   1.4733440
Birth       ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO         ZIMBABWE                       2                    1                 1.1338857   0.9278001   1.3857476
Birth       ZVITAMBO         ZIMBABWE                       3                    1                 0.9111968   0.7390067   1.1235075
Birth       ZVITAMBO         ZIMBABWE                       4                    1                 0.8390432   0.6712215   1.0488244
Birth       ZVITAMBO         ZIMBABWE                       5                    1                 0.9848164   0.7966992   1.2173519
Birth       ZVITAMBO         ZIMBABWE                       6                    1                 0.8711504   0.7040134   1.0779666
Birth       ZVITAMBO         ZIMBABWE                       7                    1                 0.7866306   0.6326257   0.9781261
Birth       ZVITAMBO         ZIMBABWE                       8                    1                 0.5661480   0.4449047   0.7204319
Birth       ZVITAMBO         ZIMBABWE                       9                    1                 0.4812225   0.3748813   0.6177290
Birth       ZVITAMBO         ZIMBABWE                       10                   1                 0.6222595   0.4865666   0.7957942
Birth       ZVITAMBO         ZIMBABWE                       11                   1                 0.6387311   0.5040803   0.8093500
Birth       ZVITAMBO         ZIMBABWE                       12                   1                 0.7495519   0.6035550   0.9308647
6 months    IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA                          2                    1                 1.4482759   0.7332977   2.8603702
6 months    IRC              INDIA                          3                    1                 1.3275862   0.6581512   2.6779336
6 months    IRC              INDIA                          4                    1                 0.8750000   0.3666815   2.0879838
6 months    IRC              INDIA                          5                    1                 1.2250000   0.5529692   2.7137586
6 months    IRC              INDIA                          6                    1                 0.5000000   0.1900978   1.3151127
6 months    IRC              INDIA                          7                    1                 1.0694444   0.5206342   2.1967656
6 months    IRC              INDIA                          8                    1                 0.4268293   0.1609390   1.1320020
6 months    IRC              INDIA                          9                    1                 0.7000000   0.2880381   1.7011637
6 months    IRC              INDIA                          10                   1                 0.5526316   0.2239932   1.3634415
6 months    IRC              INDIA                          11                   1                 0.6829268   0.3026095   1.5412243
6 months    IRC              INDIA                          12                   1                 0.9285714   0.4602276   1.8735183
6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3         BANGLADESH                     2                    1                 0.9332770   0.8111159   1.0738367
6 months    JiVitA-3         BANGLADESH                     3                    1                 0.8879414   0.7705043   1.0232778
6 months    JiVitA-3         BANGLADESH                     4                    1                 0.8667951   0.7485069   1.0037766
6 months    JiVitA-3         BANGLADESH                     5                    1                 0.9475703   0.8207091   1.0940412
6 months    JiVitA-3         BANGLADESH                     6                    1                 0.9221260   0.7953173   1.0691535
6 months    JiVitA-3         BANGLADESH                     7                    1                 0.9749847   0.8514190   1.1164835
6 months    JiVitA-3         BANGLADESH                     8                    1                 0.9063953   0.7935720   1.0352587
6 months    JiVitA-3         BANGLADESH                     9                    1                 0.8979127   0.7842419   1.0280594
6 months    JiVitA-3         BANGLADESH                     10                   1                 1.0224668   0.8971400   1.1653013
6 months    JiVitA-3         BANGLADESH                     11                   1                 1.0894880   0.9631196   1.2324368
6 months    JiVitA-3         BANGLADESH                     12                   1                 1.0202045   0.8993735   1.1572690
6 months    JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-4         BANGLADESH                     2                    1                 0.7659674   0.5248217   1.1179150
6 months    JiVitA-4         BANGLADESH                     3                    1                 1.0050089   0.7556453   1.3366628
6 months    JiVitA-4         BANGLADESH                     4                    1                 1.1048703   0.8582293   1.4223919
6 months    JiVitA-4         BANGLADESH                     5                    1                 1.0314267   0.7853434   1.3546189
6 months    JiVitA-4         BANGLADESH                     6                    1                 0.9675647   0.7220616   1.2965395
6 months    JiVitA-4         BANGLADESH                     7                    1                 1.1968056   0.9341796   1.5332636
6 months    JiVitA-4         BANGLADESH                     8                    1                 0.8633484   0.6422385   1.1605821
6 months    JiVitA-4         BANGLADESH                     9                    1                 0.9553810   0.7295033   1.2511979
6 months    JiVitA-4         BANGLADESH                     10                   1                 1.0791855   0.8114415   1.4352747
6 months    JiVitA-4         BANGLADESH                     11                   1                 0.9088682   0.6388625   1.2929877
6 months    JiVitA-4         BANGLADESH                     12                   1                 1.0589411   0.7590834   1.4772503
6 months    Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    Keneba           GAMBIA                         2                    1                 0.9462857   0.5700385   1.5708705
6 months    Keneba           GAMBIA                         3                    1                 0.7956757   0.4583425   1.3812808
6 months    Keneba           GAMBIA                         4                    1                 0.9857143   0.6016096   1.6150552
6 months    Keneba           GAMBIA                         5                    1                 0.7913978   0.4558322   1.3739937
6 months    Keneba           GAMBIA                         6                    1                 0.9879195   0.5716891   1.7071952
6 months    Keneba           GAMBIA                         7                    1                 1.3122481   0.7803450   2.2067098
6 months    Keneba           GAMBIA                         8                    1                 1.3098305   0.7692413   2.2303224
6 months    Keneba           GAMBIA                         9                    1                 1.1210596   0.6638855   1.8930594
6 months    Keneba           GAMBIA                         10                   1                 1.2629586   0.7717316   2.0668640
6 months    Keneba           GAMBIA                         11                   1                 1.1448889   0.7120293   1.8408942
6 months    Keneba           GAMBIA                         12                   1                 1.0183648   0.5980235   1.7341572
6 months    LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    LCNI-5           MALAWI                         2                    1                 1.1759868   0.7239743   1.9102130
6 months    LCNI-5           MALAWI                         3                    1                 1.2276786   0.7513487   2.0059855
6 months    LCNI-5           MALAWI                         4                    1                 1.5312500   0.9641665   2.4318690
6 months    LCNI-5           MALAWI                         5                    1                 1.2077703   0.7442409   1.9599957
6 months    LCNI-5           MALAWI                         6                    1                 1.0954670   0.6573672   1.8255367
6 months    LCNI-5           MALAWI                         7                    1                 1.5277778   0.9387188   2.4864795
6 months    LCNI-5           MALAWI                         8                    1                 1.0899390   0.5920285   2.0066044
6 months    LCNI-5           MALAWI                         9                    1                 1.3038793   0.6996849   2.4298097
6 months    LCNI-5           MALAWI                         10                   1                 1.3750000   0.7706045   2.4534310
6 months    LCNI-5           MALAWI                         11                   1                 1.1926020   0.6784450   2.0964110
6 months    LCNI-5           MALAWI                         12                   1                 1.5165441   0.8661604   2.6552887
6 months    NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    NIH-Birth        BANGLADESH                     2                    1                 0.9333333   0.5048827   1.7253731
6 months    NIH-Birth        BANGLADESH                     3                    1                 0.9333333   0.5048827   1.7253731
6 months    NIH-Birth        BANGLADESH                     4                    1                 0.7575758   0.3797353   1.5113714
6 months    NIH-Birth        BANGLADESH                     5                    1                 0.6666667   0.3144991   1.4131819
6 months    NIH-Birth        BANGLADESH                     6                    1                 0.9401709   0.4877056   1.8124076
6 months    NIH-Birth        BANGLADESH                     7                    1                 1.3333333   0.7655228   2.3223056
6 months    NIH-Birth        BANGLADESH                     8                    1                 0.6140351   0.2779685   1.3564095
6 months    NIH-Birth        BANGLADESH                     9                    1                 0.7777778   0.3582111   1.6887760
6 months    NIH-Birth        BANGLADESH                     10                   1                 0.9615385   0.5267535   1.7551972
6 months    NIH-Birth        BANGLADESH                     11                   1                 1.2244898   0.6986468   2.1461135
6 months    NIH-Birth        BANGLADESH                     12                   1                 0.4666667   0.2080715   1.0466490
6 months    PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
6 months    PROBIT           BELARUS                        2                    1                 1.1810645   0.8291386   1.6823644
6 months    PROBIT           BELARUS                        3                    1                 0.8750863   0.5068178   1.5109494
6 months    PROBIT           BELARUS                        4                    1                 0.6542059   0.4179468   1.0240190
6 months    PROBIT           BELARUS                        5                    1                 0.5800814   0.2923503   1.1509974
6 months    PROBIT           BELARUS                        6                    1                 0.8514766   0.5183677   1.3986451
6 months    PROBIT           BELARUS                        7                    1                 0.6831220   0.3978496   1.1729449
6 months    PROBIT           BELARUS                        8                    1                 0.8346770   0.5129005   1.3583253
6 months    PROBIT           BELARUS                        9                    1                 0.8871864   0.5067486   1.5532353
6 months    PROBIT           BELARUS                        10                   1                 0.9142278   0.5798669   1.4413867
6 months    PROBIT           BELARUS                        11                   1                 0.8535605   0.5524483   1.3187941
6 months    PROBIT           BELARUS                        12                   1                 0.7453332   0.4743827   1.1710409
6 months    SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed     INDIA                          2                    1                 0.9234568   0.5467594   1.5596850
6 months    SAS-CompFeed     INDIA                          3                    1                 0.8075000   0.5211961   1.2510766
6 months    SAS-CompFeed     INDIA                          4                    1                 0.8831169   0.5041353   1.5469962
6 months    SAS-CompFeed     INDIA                          5                    1                 1.2078947   0.7235317   2.0165111
6 months    SAS-CompFeed     INDIA                          6                    1                 0.9333333   0.6125520   1.4221015
6 months    SAS-CompFeed     INDIA                          7                    1                 1.4782609   1.0209983   2.1403123
6 months    SAS-CompFeed     INDIA                          8                    1                 1.1407895   0.7697536   1.6906717
6 months    SAS-CompFeed     INDIA                          9                    1                 0.6963855   0.3761307   1.2893199
6 months    SAS-CompFeed     INDIA                          10                   1                 0.8040541   0.4578493   1.4120431
6 months    SAS-CompFeed     INDIA                          11                   1                 0.8704000   0.5832739   1.2988686
6 months    SAS-CompFeed     INDIA                          12                   1                 0.9751938   0.5996183   1.5860139
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.4525547   0.6724244   3.1377732
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.2080574   0.5479899   2.6631924
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.5621981   0.7348662   3.3209619
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.3390269   0.6282289   2.8540441
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 2.1021127   1.0458064   4.2253304
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 2.1729885   1.0894123   4.3343360
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.6202107   0.7960866   3.2974841
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 2.1776094   1.1308385   4.1933332
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.5229592   0.7536558   3.0775384
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 2.2170232   1.1471340   4.2847581
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 1.0725539   0.5016346   2.2932467
6 months    ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO         ZIMBABWE                       2                    1                 0.9762545   0.7732443   1.2325638
6 months    ZVITAMBO         ZIMBABWE                       3                    1                 1.2396893   1.0095154   1.5223440
6 months    ZVITAMBO         ZIMBABWE                       4                    1                 1.0387985   0.8325515   1.2961388
6 months    ZVITAMBO         ZIMBABWE                       5                    1                 1.0366207   0.8272888   1.2989206
6 months    ZVITAMBO         ZIMBABWE                       6                    1                 0.9608886   0.7656651   1.2058888
6 months    ZVITAMBO         ZIMBABWE                       7                    1                 1.0726556   0.8612926   1.3358876
6 months    ZVITAMBO         ZIMBABWE                       8                    1                 0.8124631   0.6441886   1.0246940
6 months    ZVITAMBO         ZIMBABWE                       9                    1                 0.8010377   0.6362176   1.0085566
6 months    ZVITAMBO         ZIMBABWE                       10                   1                 0.9185978   0.7254783   1.1631250
6 months    ZVITAMBO         ZIMBABWE                       11                   1                 0.9282299   0.7429287   1.1597489
6 months    ZVITAMBO         ZIMBABWE                       12                   1                 0.7894068   0.6294165   0.9900648
24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-3         BANGLADESH                     2                    1                 0.9368493   0.8388569   1.0462889
24 months   JiVitA-3         BANGLADESH                     3                    1                 0.8836146   0.7939146   0.9834493
24 months   JiVitA-3         BANGLADESH                     4                    1                 0.8262191   0.7237415   0.9432069
24 months   JiVitA-3         BANGLADESH                     5                    1                 0.8488558   0.7387075   0.9754283
24 months   JiVitA-3         BANGLADESH                     6                    1                 0.9117268   0.8107720   1.0252522
24 months   JiVitA-3         BANGLADESH                     7                    1                 0.7811185   0.6899732   0.8843040
24 months   JiVitA-3         BANGLADESH                     8                    1                 0.8215803   0.7332239   0.9205840
24 months   JiVitA-3         BANGLADESH                     9                    1                 0.8672663   0.7768301   0.9682307
24 months   JiVitA-3         BANGLADESH                     10                   1                 0.8664162   0.7813286   0.9607699
24 months   JiVitA-3         BANGLADESH                     11                   1                 0.9355670   0.8442261   1.0367906
24 months   JiVitA-3         BANGLADESH                     12                   1                 0.9437299   0.8565641   1.0397659
24 months   JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-4         BANGLADESH                     2                    1                 1.0547304   0.8574267   1.2974358
24 months   JiVitA-4         BANGLADESH                     3                    1                 1.0733692   0.8846184   1.3023937
24 months   JiVitA-4         BANGLADESH                     4                    1                 1.0905158   0.9151804   1.2994430
24 months   JiVitA-4         BANGLADESH                     5                    1                 0.9425666   0.7695744   1.1544457
24 months   JiVitA-4         BANGLADESH                     6                    1                 0.9941520   0.8071822   1.2244302
24 months   JiVitA-4         BANGLADESH                     7                    1                 1.0615043   0.8771911   1.2845451
24 months   JiVitA-4         BANGLADESH                     8                    1                 0.8595004   0.6942317   1.0641130
24 months   JiVitA-4         BANGLADESH                     9                    1                 0.9338853   0.7616143   1.1451226
24 months   JiVitA-4         BANGLADESH                     10                   1                 0.8066362   0.6371595   1.0211916
24 months   JiVitA-4         BANGLADESH                     11                   1                 0.9488104   0.7026632   1.2811844
24 months   JiVitA-4         BANGLADESH                     12                   1                 0.7664937   0.5916389   0.9930257
24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   Keneba           GAMBIA                         2                    1                 0.9191176   0.6672157   1.2661231
24 months   Keneba           GAMBIA                         3                    1                 0.8509064   0.6115274   1.1839890
24 months   Keneba           GAMBIA                         4                    1                 1.0252101   0.7584982   1.3857063
24 months   Keneba           GAMBIA                         5                    1                 0.9696186   0.7151284   1.3146733
24 months   Keneba           GAMBIA                         6                    1                 1.0695187   0.7787045   1.4689400
24 months   Keneba           GAMBIA                         7                    1                 1.1939429   0.8629101   1.6519679
24 months   Keneba           GAMBIA                         8                    1                 1.1508951   0.8202216   1.6148801
24 months   Keneba           GAMBIA                         9                    1                 0.8278867   0.5834688   1.1746924
24 months   Keneba           GAMBIA                         10                   1                 0.8431373   0.6019800   1.1809037
24 months   Keneba           GAMBIA                         11                   1                 1.1566424   0.8670347   1.5429853
24 months   Keneba           GAMBIA                         12                   1                 0.9803922   0.6943614   1.3842486
24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   LCNI-5           MALAWI                         2                    1                 0.6877706   0.4555013   1.0384787
24 months   LCNI-5           MALAWI                         3                    1                 0.8925170   0.6023074   1.3225581
24 months   LCNI-5           MALAWI                         4                    1                 1.0132610   0.7021463   1.4622277
24 months   LCNI-5           MALAWI                         5                    1                 0.9151786   0.6153666   1.3610615
24 months   LCNI-5           MALAWI                         6                    1                 1.0372024   0.7111408   1.5127649
24 months   LCNI-5           MALAWI                         7                    1                 0.7142857   0.4323417   1.1800945
24 months   LCNI-5           MALAWI                         8                    1                 0.5061728   0.2501809   1.0241029
24 months   LCNI-5           MALAWI                         9                    1                 0.7809524   0.4222939   1.4442233
24 months   LCNI-5           MALAWI                         10                   1                 0.7028571   0.3847655   1.2839201
24 months   LCNI-5           MALAWI                         11                   1                 0.8677249   0.5411217   1.3914549
24 months   LCNI-5           MALAWI                         12                   1                 1.1388889   0.7250497   1.7889365
24 months   NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   NIH-Birth        BANGLADESH                     2                    1                 0.9938272   0.7118156   1.3875678
24 months   NIH-Birth        BANGLADESH                     3                    1                 0.6829268   0.4516687   1.0325911
24 months   NIH-Birth        BANGLADESH                     4                    1                 1.0522876   0.7609290   1.4552070
24 months   NIH-Birth        BANGLADESH                     5                    1                 0.9607843   0.6784734   1.3605639
24 months   NIH-Birth        BANGLADESH                     6                    1                 0.9333333   0.6450369   1.3504825
24 months   NIH-Birth        BANGLADESH                     7                    1                 0.8408408   0.5788573   1.2213949
24 months   NIH-Birth        BANGLADESH                     8                    1                 0.8814815   0.5991400   1.2968750
24 months   NIH-Birth        BANGLADESH                     9                    1                 0.6549708   0.3688901   1.1629120
24 months   NIH-Birth        BANGLADESH                     10                   1                 0.8555556   0.5968258   1.2264472
24 months   NIH-Birth        BANGLADESH                     11                   1                 0.8346883   0.5803826   1.2004230
24 months   NIH-Birth        BANGLADESH                     12                   1                 0.8641975   0.6117243   1.2208725
24 months   PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
24 months   PROBIT           BELARUS                        2                    1                 1.4570074   0.3304074   6.4250100
24 months   PROBIT           BELARUS                        3                    1                 1.0081570   0.5042695   2.0155500
24 months   PROBIT           BELARUS                        4                    1                 0.7662138   0.1499164   3.9160740
24 months   PROBIT           BELARUS                        5                    1                 0.8762215   0.2612832   2.9384367
24 months   PROBIT           BELARUS                        6                    1                 0.8700809   0.1687149   4.4871000
24 months   PROBIT           BELARUS                        7                    1                 0.7726925   0.1629369   3.6643237
24 months   PROBIT           BELARUS                        8                    1                 0.8709025   0.2137850   3.5478214
24 months   PROBIT           BELARUS                        9                    1                 1.5089753   0.6620270   3.4394468
24 months   PROBIT           BELARUS                        10                   1                 2.1512177   0.5787869   7.9955814
24 months   PROBIT           BELARUS                        11                   1                 1.9263680   0.9439367   3.9312951
24 months   PROBIT           BELARUS                        12                   1                 1.9517897   0.5137145   7.4155654
24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO         ZIMBABWE                       2                    1                 1.1674347   0.8880615   1.5346952
24 months   ZVITAMBO         ZIMBABWE                       3                    1                 0.9164908   0.6860560   1.2243249
24 months   ZVITAMBO         ZIMBABWE                       4                    1                 0.9416111   0.6973537   1.2714229
24 months   ZVITAMBO         ZIMBABWE                       5                    1                 1.0651062   0.7947087   1.4275058
24 months   ZVITAMBO         ZIMBABWE                       6                    1                 1.0471713   0.7906213   1.3869698
24 months   ZVITAMBO         ZIMBABWE                       7                    1                 1.3345473   1.0023268   1.7768821
24 months   ZVITAMBO         ZIMBABWE                       8                    1                 1.1786600   0.8745241   1.5885664
24 months   ZVITAMBO         ZIMBABWE                       9                    1                 1.0815939   0.7727751   1.5138240
24 months   ZVITAMBO         ZIMBABWE                       10                   1                 0.7354839   0.4587577   1.1791334
24 months   ZVITAMBO         ZIMBABWE                       11                   1                 1.1434762   0.7885101   1.6582384
24 months   ZVITAMBO         ZIMBABWE                       12                   1                 1.0790550   0.7972993   1.4603796


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.0384552   -0.0584097   -0.0185007
Birth       NIH-Birth        BANGLADESH                     1                    NA                -0.1173836   -0.2182176   -0.0165496
Birth       SAS-CompFeed     INDIA                          1                    NA                -0.0505143   -0.1576857    0.0566571
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.0271157   -0.0440246   -0.0102068
6 months    IRC              INDIA                          1                    NA                -0.0400140   -0.1826534    0.1026253
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0101554   -0.0341467    0.0138358
6 months    JiVitA-4         BANGLADESH                     1                    NA                 0.0074597   -0.0458324    0.0607517
6 months    Keneba           GAMBIA                         1                    NA                 0.0053463   -0.0420191    0.0527118
6 months    LCNI-5           MALAWI                         1                    NA                 0.0773865   -0.0392330    0.1940060
6 months    NIH-Birth        BANGLADESH                     1                    NA                -0.0318436   -0.1525110    0.0888238
6 months    PROBIT           BELARUS                        1                    NA                -0.0078468   -0.0232706    0.0075770
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.0096865   -0.1145821    0.0952091
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0367907    0.0044521    0.0691292
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0070003   -0.0312529    0.0172523
24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0592749   -0.0985603   -0.0199895
24 months   JiVitA-4         BANGLADESH                     1                    NA                -0.0033715   -0.0672904    0.0605474
24 months   Keneba           GAMBIA                         1                    NA                -0.0031884   -0.0756304    0.0692536
24 months   LCNI-5           MALAWI                         1                    NA                -0.0665993   -0.2141488    0.0809503
24 months   NIH-Birth        BANGLADESH                     1                    NA                -0.0740926   -0.2123979    0.0642127
24 months   PROBIT           BELARUS                        1                    NA                 0.0161090   -0.0338612    0.0660793
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0206354   -0.0421970    0.0834679


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.1168961   -0.1792777   -0.0578143
Birth       NIH-Birth        BANGLADESH                     1                    NA                -0.7357653   -1.4911769   -0.2094208
Birth       SAS-CompFeed     INDIA                          1                    NA                -0.1812146   -0.6408627    0.1496742
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.2623639   -0.4366368   -0.1092314
6 months    IRC              INDIA                          1                    NA                -0.1628571   -0.9155012    0.2940559
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0403983   -0.1403883    0.0508246
6 months    JiVitA-4         BANGLADESH                     1                    NA                 0.0295149   -0.2057481    0.2188740
6 months    Keneba           GAMBIA                         1                    NA                 0.0378592   -0.3634225    0.3210360
6 months    LCNI-5           MALAWI                         1                    NA                 0.2101206   -0.1793339    0.4709646
6 months    NIH-Birth        BANGLADESH                     1                    NA                -0.1187500   -0.6726134    0.2517090
6 months    PROBIT           BELARUS                        1                    NA                -0.1994614   -0.6615994    0.1341429
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.0340557   -0.4766617    0.2758861
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3789251   -0.0561745    0.6347819
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0429784   -0.2030210    0.0957731
24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.1207032   -0.2037888   -0.0433522
24 months   JiVitA-4         BANGLADESH                     1                    NA                -0.0084101   -0.1812155    0.1391147
24 months   Keneba           GAMBIA                         1                    NA                -0.0094664   -0.2491792    0.1842464
24 months   LCNI-5           MALAWI                         1                    NA                -0.1494611   -0.5335293    0.1384182
24 months   NIH-Birth        BANGLADESH                     1                    NA                -0.1302693   -0.4021592    0.0888990
24 months   PROBIT           BELARUS                        1                    NA                 0.2363636   -1.0194535    0.7112385
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0594765   -0.1402328    0.2242071
