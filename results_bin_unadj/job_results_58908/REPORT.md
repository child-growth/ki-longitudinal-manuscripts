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

agecat      studyid          country                        month    sstunted   n_cell       n
----------  ---------------  -----------------------------  ------  ---------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1               0        9      92
Birth       CMC-V-BCS-2002   INDIA                          1               1        0      92
Birth       CMC-V-BCS-2002   INDIA                          2               0        1      92
Birth       CMC-V-BCS-2002   INDIA                          2               1        0      92
Birth       CMC-V-BCS-2002   INDIA                          3               0        7      92
Birth       CMC-V-BCS-2002   INDIA                          3               1        1      92
Birth       CMC-V-BCS-2002   INDIA                          4               0        9      92
Birth       CMC-V-BCS-2002   INDIA                          4               1        0      92
Birth       CMC-V-BCS-2002   INDIA                          5               0       11      92
Birth       CMC-V-BCS-2002   INDIA                          5               1        0      92
Birth       CMC-V-BCS-2002   INDIA                          6               0       10      92
Birth       CMC-V-BCS-2002   INDIA                          6               1        0      92
Birth       CMC-V-BCS-2002   INDIA                          7               0        7      92
Birth       CMC-V-BCS-2002   INDIA                          7               1        0      92
Birth       CMC-V-BCS-2002   INDIA                          8               0        4      92
Birth       CMC-V-BCS-2002   INDIA                          8               1        0      92
Birth       CMC-V-BCS-2002   INDIA                          9               0        7      92
Birth       CMC-V-BCS-2002   INDIA                          9               1        1      92
Birth       CMC-V-BCS-2002   INDIA                          10              0        9      92
Birth       CMC-V-BCS-2002   INDIA                          10              1        1      92
Birth       CMC-V-BCS-2002   INDIA                          11              0       11      92
Birth       CMC-V-BCS-2002   INDIA                          11              1        0      92
Birth       CMC-V-BCS-2002   INDIA                          12              0        3      92
Birth       CMC-V-BCS-2002   INDIA                          12              1        1      92
Birth       CMIN             BANGLADESH                     1               0        0      26
Birth       CMIN             BANGLADESH                     1               1        1      26
Birth       CMIN             BANGLADESH                     2               0        5      26
Birth       CMIN             BANGLADESH                     2               1        1      26
Birth       CMIN             BANGLADESH                     3               0        2      26
Birth       CMIN             BANGLADESH                     3               1        0      26
Birth       CMIN             BANGLADESH                     4               0        0      26
Birth       CMIN             BANGLADESH                     4               1        1      26
Birth       CMIN             BANGLADESH                     5               0        3      26
Birth       CMIN             BANGLADESH                     5               1        0      26
Birth       CMIN             BANGLADESH                     6               0        0      26
Birth       CMIN             BANGLADESH                     6               1        0      26
Birth       CMIN             BANGLADESH                     7               0        0      26
Birth       CMIN             BANGLADESH                     7               1        0      26
Birth       CMIN             BANGLADESH                     8               0        5      26
Birth       CMIN             BANGLADESH                     8               1        2      26
Birth       CMIN             BANGLADESH                     9               0        2      26
Birth       CMIN             BANGLADESH                     9               1        0      26
Birth       CMIN             BANGLADESH                     10              0        1      26
Birth       CMIN             BANGLADESH                     10              1        0      26
Birth       CMIN             BANGLADESH                     11              0        2      26
Birth       CMIN             BANGLADESH                     11              1        1      26
Birth       CMIN             BANGLADESH                     12              0        0      26
Birth       CMIN             BANGLADESH                     12              1        0      26
Birth       CONTENT          PERU                           1               0        0       2
Birth       CONTENT          PERU                           1               1        0       2
Birth       CONTENT          PERU                           2               0        0       2
Birth       CONTENT          PERU                           2               1        0       2
Birth       CONTENT          PERU                           3               0        0       2
Birth       CONTENT          PERU                           3               1        0       2
Birth       CONTENT          PERU                           4               0        0       2
Birth       CONTENT          PERU                           4               1        0       2
Birth       CONTENT          PERU                           5               0        2       2
Birth       CONTENT          PERU                           5               1        0       2
Birth       CONTENT          PERU                           6               0        0       2
Birth       CONTENT          PERU                           6               1        0       2
Birth       CONTENT          PERU                           7               0        0       2
Birth       CONTENT          PERU                           7               1        0       2
Birth       CONTENT          PERU                           8               0        0       2
Birth       CONTENT          PERU                           8               1        0       2
Birth       CONTENT          PERU                           9               0        0       2
Birth       CONTENT          PERU                           9               1        0       2
Birth       CONTENT          PERU                           10              0        0       2
Birth       CONTENT          PERU                           10              1        0       2
Birth       CONTENT          PERU                           11              0        0       2
Birth       CONTENT          PERU                           11              1        0       2
Birth       CONTENT          PERU                           12              0        0       2
Birth       CONTENT          PERU                           12              1        0       2
Birth       EE               PAKISTAN                       1               0       42     240
Birth       EE               PAKISTAN                       1               1       15     240
Birth       EE               PAKISTAN                       2               0       42     240
Birth       EE               PAKISTAN                       2               1        8     240
Birth       EE               PAKISTAN                       3               0       22     240
Birth       EE               PAKISTAN                       3               1        7     240
Birth       EE               PAKISTAN                       4               0        8     240
Birth       EE               PAKISTAN                       4               1        3     240
Birth       EE               PAKISTAN                       5               0        0     240
Birth       EE               PAKISTAN                       5               1        0     240
Birth       EE               PAKISTAN                       6               0        0     240
Birth       EE               PAKISTAN                       6               1        0     240
Birth       EE               PAKISTAN                       7               0        0     240
Birth       EE               PAKISTAN                       7               1        0     240
Birth       EE               PAKISTAN                       8               0        0     240
Birth       EE               PAKISTAN                       8               1        0     240
Birth       EE               PAKISTAN                       9               0        0     240
Birth       EE               PAKISTAN                       9               1        0     240
Birth       EE               PAKISTAN                       10              0        0     240
Birth       EE               PAKISTAN                       10              1        0     240
Birth       EE               PAKISTAN                       11              0       38     240
Birth       EE               PAKISTAN                       11              1        6     240
Birth       EE               PAKISTAN                       12              0       40     240
Birth       EE               PAKISTAN                       12              1        9     240
Birth       GMS-Nepal        NEPAL                          1               0        0     696
Birth       GMS-Nepal        NEPAL                          1               1        0     696
Birth       GMS-Nepal        NEPAL                          2               0        0     696
Birth       GMS-Nepal        NEPAL                          2               1        0     696
Birth       GMS-Nepal        NEPAL                          3               0        0     696
Birth       GMS-Nepal        NEPAL                          3               1        0     696
Birth       GMS-Nepal        NEPAL                          4               0        1     696
Birth       GMS-Nepal        NEPAL                          4               1        0     696
Birth       GMS-Nepal        NEPAL                          5               0        0     696
Birth       GMS-Nepal        NEPAL                          5               1        0     696
Birth       GMS-Nepal        NEPAL                          6               0      155     696
Birth       GMS-Nepal        NEPAL                          6               1        5     696
Birth       GMS-Nepal        NEPAL                          7               0      248     696
Birth       GMS-Nepal        NEPAL                          7               1       17     696
Birth       GMS-Nepal        NEPAL                          8               0      261     696
Birth       GMS-Nepal        NEPAL                          8               1        9     696
Birth       GMS-Nepal        NEPAL                          9               0        0     696
Birth       GMS-Nepal        NEPAL                          9               1        0     696
Birth       GMS-Nepal        NEPAL                          10              0        0     696
Birth       GMS-Nepal        NEPAL                          10              1        0     696
Birth       GMS-Nepal        NEPAL                          11              0        0     696
Birth       GMS-Nepal        NEPAL                          11              1        0     696
Birth       GMS-Nepal        NEPAL                          12              0        0     696
Birth       GMS-Nepal        NEPAL                          12              1        0     696
Birth       IRC              INDIA                          1               0       31     388
Birth       IRC              INDIA                          1               1        3     388
Birth       IRC              INDIA                          2               0       24     388
Birth       IRC              INDIA                          2               1        1     388
Birth       IRC              INDIA                          3               0       27     388
Birth       IRC              INDIA                          3               1        0     388
Birth       IRC              INDIA                          4               0       22     388
Birth       IRC              INDIA                          4               1        0     388
Birth       IRC              INDIA                          5               0       20     388
Birth       IRC              INDIA                          5               1        1     388
Birth       IRC              INDIA                          6               0       31     388
Birth       IRC              INDIA                          6               1        3     388
Birth       IRC              INDIA                          7               0       34     388
Birth       IRC              INDIA                          7               1        1     388
Birth       IRC              INDIA                          8               0       39     388
Birth       IRC              INDIA                          8               1        0     388
Birth       IRC              INDIA                          9               0       24     388
Birth       IRC              INDIA                          9               1        1     388
Birth       IRC              INDIA                          10              0       35     388
Birth       IRC              INDIA                          10              1        2     388
Birth       IRC              INDIA                          11              0       39     388
Birth       IRC              INDIA                          11              1        1     388
Birth       IRC              INDIA                          12              0       46     388
Birth       IRC              INDIA                          12              1        3     388
Birth       JiVitA-3         BANGLADESH                     1               0     1834   22455
Birth       JiVitA-3         BANGLADESH                     1               1      278   22455
Birth       JiVitA-3         BANGLADESH                     2               0     1557   22455
Birth       JiVitA-3         BANGLADESH                     2               1      187   22455
Birth       JiVitA-3         BANGLADESH                     3               0     1882   22455
Birth       JiVitA-3         BANGLADESH                     3               1      178   22455
Birth       JiVitA-3         BANGLADESH                     4               0     1388   22455
Birth       JiVitA-3         BANGLADESH                     4               1      101   22455
Birth       JiVitA-3         BANGLADESH                     5               0      980   22455
Birth       JiVitA-3         BANGLADESH                     5               1      107   22455
Birth       JiVitA-3         BANGLADESH                     6               0     1008   22455
Birth       JiVitA-3         BANGLADESH                     6               1      103   22455
Birth       JiVitA-3         BANGLADESH                     7               0     1134   22455
Birth       JiVitA-3         BANGLADESH                     7               1      126   22455
Birth       JiVitA-3         BANGLADESH                     8               0     1530   22455
Birth       JiVitA-3         BANGLADESH                     8               1      185   22455
Birth       JiVitA-3         BANGLADESH                     9               0     2047   22455
Birth       JiVitA-3         BANGLADESH                     9               1      220   22455
Birth       JiVitA-3         BANGLADESH                     10              0     2138   22455
Birth       JiVitA-3         BANGLADESH                     10              1      290   22455
Birth       JiVitA-3         BANGLADESH                     11              0     2155   22455
Birth       JiVitA-3         BANGLADESH                     11              1      327   22455
Birth       JiVitA-3         BANGLADESH                     12              0     2354   22455
Birth       JiVitA-3         BANGLADESH                     12              1      346   22455
Birth       JiVitA-4         BANGLADESH                     1               0        0    2823
Birth       JiVitA-4         BANGLADESH                     1               1        0    2823
Birth       JiVitA-4         BANGLADESH                     2               0      309    2823
Birth       JiVitA-4         BANGLADESH                     2               1       24    2823
Birth       JiVitA-4         BANGLADESH                     3               0      352    2823
Birth       JiVitA-4         BANGLADESH                     3               1       44    2823
Birth       JiVitA-4         BANGLADESH                     4               0      422    2823
Birth       JiVitA-4         BANGLADESH                     4               1       45    2823
Birth       JiVitA-4         BANGLADESH                     5               0      408    2823
Birth       JiVitA-4         BANGLADESH                     5               1       41    2823
Birth       JiVitA-4         BANGLADESH                     6               0      323    2823
Birth       JiVitA-4         BANGLADESH                     6               1       34    2823
Birth       JiVitA-4         BANGLADESH                     7               0      334    2823
Birth       JiVitA-4         BANGLADESH                     7               1       24    2823
Birth       JiVitA-4         BANGLADESH                     8               0      236    2823
Birth       JiVitA-4         BANGLADESH                     8               1       11    2823
Birth       JiVitA-4         BANGLADESH                     9               0      144    2823
Birth       JiVitA-4         BANGLADESH                     9               1        6    2823
Birth       JiVitA-4         BANGLADESH                     10              0       62    2823
Birth       JiVitA-4         BANGLADESH                     10              1        4    2823
Birth       JiVitA-4         BANGLADESH                     11              0        0    2823
Birth       JiVitA-4         BANGLADESH                     11              1        0    2823
Birth       JiVitA-4         BANGLADESH                     12              0        0    2823
Birth       JiVitA-4         BANGLADESH                     12              1        0    2823
Birth       Keneba           GAMBIA                         1               0      136    1543
Birth       Keneba           GAMBIA                         1               1        2    1543
Birth       Keneba           GAMBIA                         2               0      156    1543
Birth       Keneba           GAMBIA                         2               1        7    1543
Birth       Keneba           GAMBIA                         3               0      143    1543
Birth       Keneba           GAMBIA                         3               1        4    1543
Birth       Keneba           GAMBIA                         4               0      163    1543
Birth       Keneba           GAMBIA                         4               1        2    1543
Birth       Keneba           GAMBIA                         5               0      104    1543
Birth       Keneba           GAMBIA                         5               1        1    1543
Birth       Keneba           GAMBIA                         6               0      106    1543
Birth       Keneba           GAMBIA                         6               1        2    1543
Birth       Keneba           GAMBIA                         7               0       88    1543
Birth       Keneba           GAMBIA                         7               1        1    1543
Birth       Keneba           GAMBIA                         8               0       75    1543
Birth       Keneba           GAMBIA                         8               1        1    1543
Birth       Keneba           GAMBIA                         9               0      124    1543
Birth       Keneba           GAMBIA                         9               1        1    1543
Birth       Keneba           GAMBIA                         10              0      122    1543
Birth       Keneba           GAMBIA                         10              1        2    1543
Birth       Keneba           GAMBIA                         11              0      175    1543
Birth       Keneba           GAMBIA                         11              1        4    1543
Birth       Keneba           GAMBIA                         12              0      122    1543
Birth       Keneba           GAMBIA                         12              1        2    1543
Birth       MAL-ED           BANGLADESH                     1               0       20     231
Birth       MAL-ED           BANGLADESH                     1               1        1     231
Birth       MAL-ED           BANGLADESH                     2               0       20     231
Birth       MAL-ED           BANGLADESH                     2               1        1     231
Birth       MAL-ED           BANGLADESH                     3               0       26     231
Birth       MAL-ED           BANGLADESH                     3               1        0     231
Birth       MAL-ED           BANGLADESH                     4               0       21     231
Birth       MAL-ED           BANGLADESH                     4               1        0     231
Birth       MAL-ED           BANGLADESH                     5               0       16     231
Birth       MAL-ED           BANGLADESH                     5               1        1     231
Birth       MAL-ED           BANGLADESH                     6               0        7     231
Birth       MAL-ED           BANGLADESH                     6               1        1     231
Birth       MAL-ED           BANGLADESH                     7               0       12     231
Birth       MAL-ED           BANGLADESH                     7               1        1     231
Birth       MAL-ED           BANGLADESH                     8               0       24     231
Birth       MAL-ED           BANGLADESH                     8               1        3     231
Birth       MAL-ED           BANGLADESH                     9               0       17     231
Birth       MAL-ED           BANGLADESH                     9               1        1     231
Birth       MAL-ED           BANGLADESH                     10              0       20     231
Birth       MAL-ED           BANGLADESH                     10              1        0     231
Birth       MAL-ED           BANGLADESH                     11              0       13     231
Birth       MAL-ED           BANGLADESH                     11              1        0     231
Birth       MAL-ED           BANGLADESH                     12              0       26     231
Birth       MAL-ED           BANGLADESH                     12              1        0     231
Birth       MAL-ED           BRAZIL                         1               0        5      65
Birth       MAL-ED           BRAZIL                         1               1        0      65
Birth       MAL-ED           BRAZIL                         2               0        8      65
Birth       MAL-ED           BRAZIL                         2               1        0      65
Birth       MAL-ED           BRAZIL                         3               0        9      65
Birth       MAL-ED           BRAZIL                         3               1        0      65
Birth       MAL-ED           BRAZIL                         4               0        5      65
Birth       MAL-ED           BRAZIL                         4               1        0      65
Birth       MAL-ED           BRAZIL                         5               0        1      65
Birth       MAL-ED           BRAZIL                         5               1        1      65
Birth       MAL-ED           BRAZIL                         6               0        5      65
Birth       MAL-ED           BRAZIL                         6               1        0      65
Birth       MAL-ED           BRAZIL                         7               0        4      65
Birth       MAL-ED           BRAZIL                         7               1        1      65
Birth       MAL-ED           BRAZIL                         8               0        7      65
Birth       MAL-ED           BRAZIL                         8               1        0      65
Birth       MAL-ED           BRAZIL                         9               0        6      65
Birth       MAL-ED           BRAZIL                         9               1        1      65
Birth       MAL-ED           BRAZIL                         10              0        4      65
Birth       MAL-ED           BRAZIL                         10              1        0      65
Birth       MAL-ED           BRAZIL                         11              0        5      65
Birth       MAL-ED           BRAZIL                         11              1        0      65
Birth       MAL-ED           BRAZIL                         12              0        3      65
Birth       MAL-ED           BRAZIL                         12              1        0      65
Birth       MAL-ED           INDIA                          1               0        2      47
Birth       MAL-ED           INDIA                          1               1        0      47
Birth       MAL-ED           INDIA                          2               0        3      47
Birth       MAL-ED           INDIA                          2               1        0      47
Birth       MAL-ED           INDIA                          3               0        5      47
Birth       MAL-ED           INDIA                          3               1        0      47
Birth       MAL-ED           INDIA                          4               0        6      47
Birth       MAL-ED           INDIA                          4               1        1      47
Birth       MAL-ED           INDIA                          5               0        2      47
Birth       MAL-ED           INDIA                          5               1        0      47
Birth       MAL-ED           INDIA                          6               0        3      47
Birth       MAL-ED           INDIA                          6               1        0      47
Birth       MAL-ED           INDIA                          7               0        3      47
Birth       MAL-ED           INDIA                          7               1        0      47
Birth       MAL-ED           INDIA                          8               0        7      47
Birth       MAL-ED           INDIA                          8               1        0      47
Birth       MAL-ED           INDIA                          9               0        4      47
Birth       MAL-ED           INDIA                          9               1        0      47
Birth       MAL-ED           INDIA                          10              0        6      47
Birth       MAL-ED           INDIA                          10              1        0      47
Birth       MAL-ED           INDIA                          11              0        3      47
Birth       MAL-ED           INDIA                          11              1        1      47
Birth       MAL-ED           INDIA                          12              0        1      47
Birth       MAL-ED           INDIA                          12              1        0      47
Birth       MAL-ED           NEPAL                          1               0        1      27
Birth       MAL-ED           NEPAL                          1               1        0      27
Birth       MAL-ED           NEPAL                          2               0        3      27
Birth       MAL-ED           NEPAL                          2               1        0      27
Birth       MAL-ED           NEPAL                          3               0        1      27
Birth       MAL-ED           NEPAL                          3               1        0      27
Birth       MAL-ED           NEPAL                          4               0        2      27
Birth       MAL-ED           NEPAL                          4               1        0      27
Birth       MAL-ED           NEPAL                          5               0        2      27
Birth       MAL-ED           NEPAL                          5               1        0      27
Birth       MAL-ED           NEPAL                          6               0        3      27
Birth       MAL-ED           NEPAL                          6               1        0      27
Birth       MAL-ED           NEPAL                          7               0        1      27
Birth       MAL-ED           NEPAL                          7               1        0      27
Birth       MAL-ED           NEPAL                          8               0        1      27
Birth       MAL-ED           NEPAL                          8               1        0      27
Birth       MAL-ED           NEPAL                          9               0        3      27
Birth       MAL-ED           NEPAL                          9               1        0      27
Birth       MAL-ED           NEPAL                          10              0        3      27
Birth       MAL-ED           NEPAL                          10              1        0      27
Birth       MAL-ED           NEPAL                          11              0        4      27
Birth       MAL-ED           NEPAL                          11              1        1      27
Birth       MAL-ED           NEPAL                          12              0        2      27
Birth       MAL-ED           NEPAL                          12              1        0      27
Birth       MAL-ED           PERU                           1               0       24     233
Birth       MAL-ED           PERU                           1               1        1     233
Birth       MAL-ED           PERU                           2               0       21     233
Birth       MAL-ED           PERU                           2               1        0     233
Birth       MAL-ED           PERU                           3               0       21     233
Birth       MAL-ED           PERU                           3               1        0     233
Birth       MAL-ED           PERU                           4               0       13     233
Birth       MAL-ED           PERU                           4               1        1     233
Birth       MAL-ED           PERU                           5               0       19     233
Birth       MAL-ED           PERU                           5               1        0     233
Birth       MAL-ED           PERU                           6               0       15     233
Birth       MAL-ED           PERU                           6               1        0     233
Birth       MAL-ED           PERU                           7               0       20     233
Birth       MAL-ED           PERU                           7               1        0     233
Birth       MAL-ED           PERU                           8               0       14     233
Birth       MAL-ED           PERU                           8               1        0     233
Birth       MAL-ED           PERU                           9               0       20     233
Birth       MAL-ED           PERU                           9               1        0     233
Birth       MAL-ED           PERU                           10              0       20     233
Birth       MAL-ED           PERU                           10              1        0     233
Birth       MAL-ED           PERU                           11              0       28     233
Birth       MAL-ED           PERU                           11              1        1     233
Birth       MAL-ED           PERU                           12              0       14     233
Birth       MAL-ED           PERU                           12              1        1     233
Birth       MAL-ED           SOUTH AFRICA                   1               0        7     123
Birth       MAL-ED           SOUTH AFRICA                   1               1        1     123
Birth       MAL-ED           SOUTH AFRICA                   2               0       13     123
Birth       MAL-ED           SOUTH AFRICA                   2               1        0     123
Birth       MAL-ED           SOUTH AFRICA                   3               0       11     123
Birth       MAL-ED           SOUTH AFRICA                   3               1        0     123
Birth       MAL-ED           SOUTH AFRICA                   4               0        7     123
Birth       MAL-ED           SOUTH AFRICA                   4               1        0     123
Birth       MAL-ED           SOUTH AFRICA                   5               0        5     123
Birth       MAL-ED           SOUTH AFRICA                   5               1        0     123
Birth       MAL-ED           SOUTH AFRICA                   6               0        7     123
Birth       MAL-ED           SOUTH AFRICA                   6               1        0     123
Birth       MAL-ED           SOUTH AFRICA                   7               0       14     123
Birth       MAL-ED           SOUTH AFRICA                   7               1        0     123
Birth       MAL-ED           SOUTH AFRICA                   8               0        4     123
Birth       MAL-ED           SOUTH AFRICA                   8               1        0     123
Birth       MAL-ED           SOUTH AFRICA                   9               0       10     123
Birth       MAL-ED           SOUTH AFRICA                   9               1        0     123
Birth       MAL-ED           SOUTH AFRICA                   10              0       10     123
Birth       MAL-ED           SOUTH AFRICA                   10              1        0     123
Birth       MAL-ED           SOUTH AFRICA                   11              0       15     123
Birth       MAL-ED           SOUTH AFRICA                   11              1        0     123
Birth       MAL-ED           SOUTH AFRICA                   12              0       18     123
Birth       MAL-ED           SOUTH AFRICA                   12              1        1     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        8     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        0     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               0       14     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               1        1     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               0       15     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               1        1     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               0        7     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               1        0     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5               0       10     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5               1        0     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6               0        8     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6               1        2     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7               0       15     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7               1        0     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8               0        7     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8               1        0     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9               0        1     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9               1        1     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10              0        6     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10              1        3     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11              0       14     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11              1        1     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12              0       10     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12              1        1     125
Birth       NIH-Birth        BANGLADESH                     1               0       58     608
Birth       NIH-Birth        BANGLADESH                     1               1        7     608
Birth       NIH-Birth        BANGLADESH                     2               0       57     608
Birth       NIH-Birth        BANGLADESH                     2               1        1     608
Birth       NIH-Birth        BANGLADESH                     3               0       58     608
Birth       NIH-Birth        BANGLADESH                     3               1        3     608
Birth       NIH-Birth        BANGLADESH                     4               0       50     608
Birth       NIH-Birth        BANGLADESH                     4               1        2     608
Birth       NIH-Birth        BANGLADESH                     5               0       45     608
Birth       NIH-Birth        BANGLADESH                     5               1        0     608
Birth       NIH-Birth        BANGLADESH                     6               0       42     608
Birth       NIH-Birth        BANGLADESH                     6               1        1     608
Birth       NIH-Birth        BANGLADESH                     7               0       45     608
Birth       NIH-Birth        BANGLADESH                     7               1        1     608
Birth       NIH-Birth        BANGLADESH                     8               0       41     608
Birth       NIH-Birth        BANGLADESH                     8               1        1     608
Birth       NIH-Birth        BANGLADESH                     9               0       33     608
Birth       NIH-Birth        BANGLADESH                     9               1        1     608
Birth       NIH-Birth        BANGLADESH                     10              0       60     608
Birth       NIH-Birth        BANGLADESH                     10              1        0     608
Birth       NIH-Birth        BANGLADESH                     11              0       49     608
Birth       NIH-Birth        BANGLADESH                     11              1        1     608
Birth       NIH-Birth        BANGLADESH                     12              0       51     608
Birth       NIH-Birth        BANGLADESH                     12              1        1     608
Birth       PROBIT           BELARUS                        1               0      859   13893
Birth       PROBIT           BELARUS                        1               1        0   13893
Birth       PROBIT           BELARUS                        2               0      791   13893
Birth       PROBIT           BELARUS                        2               1        0   13893
Birth       PROBIT           BELARUS                        3               0      967   13893
Birth       PROBIT           BELARUS                        3               1        2   13893
Birth       PROBIT           BELARUS                        4               0      956   13893
Birth       PROBIT           BELARUS                        4               1        0   13893
Birth       PROBIT           BELARUS                        5               0      957   13893
Birth       PROBIT           BELARUS                        5               1        0   13893
Birth       PROBIT           BELARUS                        6               0     1007   13893
Birth       PROBIT           BELARUS                        6               1        0   13893
Birth       PROBIT           BELARUS                        7               0     1281   13893
Birth       PROBIT           BELARUS                        7               1        0   13893
Birth       PROBIT           BELARUS                        8               0     1327   13893
Birth       PROBIT           BELARUS                        8               1        0   13893
Birth       PROBIT           BELARUS                        9               0     1315   13893
Birth       PROBIT           BELARUS                        9               1        0   13893
Birth       PROBIT           BELARUS                        10              0     1509   13893
Birth       PROBIT           BELARUS                        10              1        2   13893
Birth       PROBIT           BELARUS                        11              0     1396   13893
Birth       PROBIT           BELARUS                        11              1        1   13893
Birth       PROBIT           BELARUS                        12              0     1523   13893
Birth       PROBIT           BELARUS                        12              1        0   13893
Birth       ResPak           PAKISTAN                       1               0        0      42
Birth       ResPak           PAKISTAN                       1               1        0      42
Birth       ResPak           PAKISTAN                       2               0        2      42
Birth       ResPak           PAKISTAN                       2               1        0      42
Birth       ResPak           PAKISTAN                       3               0        1      42
Birth       ResPak           PAKISTAN                       3               1        0      42
Birth       ResPak           PAKISTAN                       4               0        1      42
Birth       ResPak           PAKISTAN                       4               1        0      42
Birth       ResPak           PAKISTAN                       5               0        8      42
Birth       ResPak           PAKISTAN                       5               1        0      42
Birth       ResPak           PAKISTAN                       6               0        7      42
Birth       ResPak           PAKISTAN                       6               1        0      42
Birth       ResPak           PAKISTAN                       7               0        8      42
Birth       ResPak           PAKISTAN                       7               1        1      42
Birth       ResPak           PAKISTAN                       8               0        7      42
Birth       ResPak           PAKISTAN                       8               1        1      42
Birth       ResPak           PAKISTAN                       9               0        4      42
Birth       ResPak           PAKISTAN                       9               1        0      42
Birth       ResPak           PAKISTAN                       10              0        1      42
Birth       ResPak           PAKISTAN                       10              1        0      42
Birth       ResPak           PAKISTAN                       11              0        1      42
Birth       ResPak           PAKISTAN                       11              1        0      42
Birth       ResPak           PAKISTAN                       12              0        0      42
Birth       ResPak           PAKISTAN                       12              1        0      42
Birth       SAS-CompFeed     INDIA                          1               0       75    1252
Birth       SAS-CompFeed     INDIA                          1               1        7    1252
Birth       SAS-CompFeed     INDIA                          2               0       67    1252
Birth       SAS-CompFeed     INDIA                          2               1        5    1252
Birth       SAS-CompFeed     INDIA                          3               0       71    1252
Birth       SAS-CompFeed     INDIA                          3               1        9    1252
Birth       SAS-CompFeed     INDIA                          4               0       61    1252
Birth       SAS-CompFeed     INDIA                          4               1        2    1252
Birth       SAS-CompFeed     INDIA                          5               0       67    1252
Birth       SAS-CompFeed     INDIA                          5               1       13    1252
Birth       SAS-CompFeed     INDIA                          6               0       96    1252
Birth       SAS-CompFeed     INDIA                          6               1        6    1252
Birth       SAS-CompFeed     INDIA                          7               0       96    1252
Birth       SAS-CompFeed     INDIA                          7               1        5    1252
Birth       SAS-CompFeed     INDIA                          8               0      133    1252
Birth       SAS-CompFeed     INDIA                          8               1       12    1252
Birth       SAS-CompFeed     INDIA                          9               0      139    1252
Birth       SAS-CompFeed     INDIA                          9               1        9    1252
Birth       SAS-CompFeed     INDIA                          10              0      129    1252
Birth       SAS-CompFeed     INDIA                          10              1        9    1252
Birth       SAS-CompFeed     INDIA                          11              0      116    1252
Birth       SAS-CompFeed     INDIA                          11              1        6    1252
Birth       SAS-CompFeed     INDIA                          12              0      111    1252
Birth       SAS-CompFeed     INDIA                          12              1        8    1252
Birth       ZVITAMBO         ZIMBABWE                       1               0     1292   13875
Birth       ZVITAMBO         ZIMBABWE                       1               1       57   13875
Birth       ZVITAMBO         ZIMBABWE                       2               0      997   13875
Birth       ZVITAMBO         ZIMBABWE                       2               1       44   13875
Birth       ZVITAMBO         ZIMBABWE                       3               0     1103   13875
Birth       ZVITAMBO         ZIMBABWE                       3               1       41   13875
Birth       ZVITAMBO         ZIMBABWE                       4               0      978   13875
Birth       ZVITAMBO         ZIMBABWE                       4               1       36   13875
Birth       ZVITAMBO         ZIMBABWE                       5               0      969   13875
Birth       ZVITAMBO         ZIMBABWE                       5               1       35   13875
Birth       ZVITAMBO         ZIMBABWE                       6               0     1091   13875
Birth       ZVITAMBO         ZIMBABWE                       6               1       44   13875
Birth       ZVITAMBO         ZIMBABWE                       7               0     1134   13875
Birth       ZVITAMBO         ZIMBABWE                       7               1       45   13875
Birth       ZVITAMBO         ZIMBABWE                       8               0     1207   13875
Birth       ZVITAMBO         ZIMBABWE                       8               1       25   13875
Birth       ZVITAMBO         ZIMBABWE                       9               0     1302   13875
Birth       ZVITAMBO         ZIMBABWE                       9               1       20   13875
Birth       ZVITAMBO         ZIMBABWE                       10              0     1012   13875
Birth       ZVITAMBO         ZIMBABWE                       10              1       35   13875
Birth       ZVITAMBO         ZIMBABWE                       11              0     1108   13875
Birth       ZVITAMBO         ZIMBABWE                       11              1       32   13875
Birth       ZVITAMBO         ZIMBABWE                       12              0     1240   13875
Birth       ZVITAMBO         ZIMBABWE                       12              1       28   13875
6 months    CMC-V-BCS-2002   INDIA                          1               0       24     369
6 months    CMC-V-BCS-2002   INDIA                          1               1        4     369
6 months    CMC-V-BCS-2002   INDIA                          2               0       20     369
6 months    CMC-V-BCS-2002   INDIA                          2               1        4     369
6 months    CMC-V-BCS-2002   INDIA                          3               0       25     369
6 months    CMC-V-BCS-2002   INDIA                          3               1        1     369
6 months    CMC-V-BCS-2002   INDIA                          4               0       28     369
6 months    CMC-V-BCS-2002   INDIA                          4               1        1     369
6 months    CMC-V-BCS-2002   INDIA                          5               0       38     369
6 months    CMC-V-BCS-2002   INDIA                          5               1        4     369
6 months    CMC-V-BCS-2002   INDIA                          6               0       32     369
6 months    CMC-V-BCS-2002   INDIA                          6               1        5     369
6 months    CMC-V-BCS-2002   INDIA                          7               0       28     369
6 months    CMC-V-BCS-2002   INDIA                          7               1        5     369
6 months    CMC-V-BCS-2002   INDIA                          8               0       30     369
6 months    CMC-V-BCS-2002   INDIA                          8               1       11     369
6 months    CMC-V-BCS-2002   INDIA                          9               0       19     369
6 months    CMC-V-BCS-2002   INDIA                          9               1        2     369
6 months    CMC-V-BCS-2002   INDIA                          10              0       18     369
6 months    CMC-V-BCS-2002   INDIA                          10              1        1     369
6 months    CMC-V-BCS-2002   INDIA                          11              0       39     369
6 months    CMC-V-BCS-2002   INDIA                          11              1        2     369
6 months    CMC-V-BCS-2002   INDIA                          12              0       26     369
6 months    CMC-V-BCS-2002   INDIA                          12              1        2     369
6 months    CMIN             BANGLADESH                     1               0       22     243
6 months    CMIN             BANGLADESH                     1               1        5     243
6 months    CMIN             BANGLADESH                     2               0       27     243
6 months    CMIN             BANGLADESH                     2               1        3     243
6 months    CMIN             BANGLADESH                     3               0       18     243
6 months    CMIN             BANGLADESH                     3               1        0     243
6 months    CMIN             BANGLADESH                     4               0       16     243
6 months    CMIN             BANGLADESH                     4               1        1     243
6 months    CMIN             BANGLADESH                     5               0       20     243
6 months    CMIN             BANGLADESH                     5               1        0     243
6 months    CMIN             BANGLADESH                     6               0       22     243
6 months    CMIN             BANGLADESH                     6               1        1     243
6 months    CMIN             BANGLADESH                     7               0       10     243
6 months    CMIN             BANGLADESH                     7               1        2     243
6 months    CMIN             BANGLADESH                     8               0       12     243
6 months    CMIN             BANGLADESH                     8               1        1     243
6 months    CMIN             BANGLADESH                     9               0       10     243
6 months    CMIN             BANGLADESH                     9               1        6     243
6 months    CMIN             BANGLADESH                     10              0       17     243
6 months    CMIN             BANGLADESH                     10              1        3     243
6 months    CMIN             BANGLADESH                     11              0        2     243
6 months    CMIN             BANGLADESH                     11              1        0     243
6 months    CMIN             BANGLADESH                     12              0       39     243
6 months    CMIN             BANGLADESH                     12              1        6     243
6 months    CONTENT          PERU                           1               0        9     215
6 months    CONTENT          PERU                           1               1        0     215
6 months    CONTENT          PERU                           2               0       13     215
6 months    CONTENT          PERU                           2               1        0     215
6 months    CONTENT          PERU                           3               0       27     215
6 months    CONTENT          PERU                           3               1        0     215
6 months    CONTENT          PERU                           4               0       17     215
6 months    CONTENT          PERU                           4               1        1     215
6 months    CONTENT          PERU                           5               0       25     215
6 months    CONTENT          PERU                           5               1        0     215
6 months    CONTENT          PERU                           6               0       14     215
6 months    CONTENT          PERU                           6               1        0     215
6 months    CONTENT          PERU                           7               0       16     215
6 months    CONTENT          PERU                           7               1        0     215
6 months    CONTENT          PERU                           8               0       26     215
6 months    CONTENT          PERU                           8               1        0     215
6 months    CONTENT          PERU                           9               0       19     215
6 months    CONTENT          PERU                           9               1        0     215
6 months    CONTENT          PERU                           10              0       23     215
6 months    CONTENT          PERU                           10              1        0     215
6 months    CONTENT          PERU                           11              0       18     215
6 months    CONTENT          PERU                           11              1        0     215
6 months    CONTENT          PERU                           12              0        7     215
6 months    CONTENT          PERU                           12              1        0     215
6 months    EE               PAKISTAN                       1               0       62     373
6 months    EE               PAKISTAN                       1               1       28     373
6 months    EE               PAKISTAN                       2               0       58     373
6 months    EE               PAKISTAN                       2               1       14     373
6 months    EE               PAKISTAN                       3               0       38     373
6 months    EE               PAKISTAN                       3               1        8     373
6 months    EE               PAKISTAN                       4               0       16     373
6 months    EE               PAKISTAN                       4               1        6     373
6 months    EE               PAKISTAN                       5               0        0     373
6 months    EE               PAKISTAN                       5               1        0     373
6 months    EE               PAKISTAN                       6               0        0     373
6 months    EE               PAKISTAN                       6               1        0     373
6 months    EE               PAKISTAN                       7               0        0     373
6 months    EE               PAKISTAN                       7               1        0     373
6 months    EE               PAKISTAN                       8               0        0     373
6 months    EE               PAKISTAN                       8               1        0     373
6 months    EE               PAKISTAN                       9               0        0     373
6 months    EE               PAKISTAN                       9               1        0     373
6 months    EE               PAKISTAN                       10              0        0     373
6 months    EE               PAKISTAN                       10              1        0     373
6 months    EE               PAKISTAN                       11              0       49     373
6 months    EE               PAKISTAN                       11              1       11     373
6 months    EE               PAKISTAN                       12              0       69     373
6 months    EE               PAKISTAN                       12              1       14     373
6 months    GMS-Nepal        NEPAL                          1               0        0     564
6 months    GMS-Nepal        NEPAL                          1               1        0     564
6 months    GMS-Nepal        NEPAL                          2               0        0     564
6 months    GMS-Nepal        NEPAL                          2               1        0     564
6 months    GMS-Nepal        NEPAL                          3               0        0     564
6 months    GMS-Nepal        NEPAL                          3               1        0     564
6 months    GMS-Nepal        NEPAL                          4               0        0     564
6 months    GMS-Nepal        NEPAL                          4               1        1     564
6 months    GMS-Nepal        NEPAL                          5               0        0     564
6 months    GMS-Nepal        NEPAL                          5               1        0     564
6 months    GMS-Nepal        NEPAL                          6               0      110     564
6 months    GMS-Nepal        NEPAL                          6               1        5     564
6 months    GMS-Nepal        NEPAL                          7               0      204     564
6 months    GMS-Nepal        NEPAL                          7               1        7     564
6 months    GMS-Nepal        NEPAL                          8               0      229     564
6 months    GMS-Nepal        NEPAL                          8               1        8     564
6 months    GMS-Nepal        NEPAL                          9               0        0     564
6 months    GMS-Nepal        NEPAL                          9               1        0     564
6 months    GMS-Nepal        NEPAL                          10              0        0     564
6 months    GMS-Nepal        NEPAL                          10              1        0     564
6 months    GMS-Nepal        NEPAL                          11              0        0     564
6 months    GMS-Nepal        NEPAL                          11              1        0     564
6 months    GMS-Nepal        NEPAL                          12              0        0     564
6 months    GMS-Nepal        NEPAL                          12              1        0     564
6 months    Guatemala BSC    GUATEMALA                      1               0       17     299
6 months    Guatemala BSC    GUATEMALA                      1               1        1     299
6 months    Guatemala BSC    GUATEMALA                      2               0       19     299
6 months    Guatemala BSC    GUATEMALA                      2               1        0     299
6 months    Guatemala BSC    GUATEMALA                      3               0       21     299
6 months    Guatemala BSC    GUATEMALA                      3               1        0     299
6 months    Guatemala BSC    GUATEMALA                      4               0       25     299
6 months    Guatemala BSC    GUATEMALA                      4               1        2     299
6 months    Guatemala BSC    GUATEMALA                      5               0       30     299
6 months    Guatemala BSC    GUATEMALA                      5               1        1     299
6 months    Guatemala BSC    GUATEMALA                      6               0       35     299
6 months    Guatemala BSC    GUATEMALA                      6               1        4     299
6 months    Guatemala BSC    GUATEMALA                      7               0       20     299
6 months    Guatemala BSC    GUATEMALA                      7               1        4     299
6 months    Guatemala BSC    GUATEMALA                      8               0       16     299
6 months    Guatemala BSC    GUATEMALA                      8               1        3     299
6 months    Guatemala BSC    GUATEMALA                      9               0       32     299
6 months    Guatemala BSC    GUATEMALA                      9               1        2     299
6 months    Guatemala BSC    GUATEMALA                      10              0       23     299
6 months    Guatemala BSC    GUATEMALA                      10              1        6     299
6 months    Guatemala BSC    GUATEMALA                      11              0       25     299
6 months    Guatemala BSC    GUATEMALA                      11              1        3     299
6 months    Guatemala BSC    GUATEMALA                      12              0        9     299
6 months    Guatemala BSC    GUATEMALA                      12              1        1     299
6 months    IRC              INDIA                          1               0       31     407
6 months    IRC              INDIA                          1               1        4     407
6 months    IRC              INDIA                          2               0       26     407
6 months    IRC              INDIA                          2               1        3     407
6 months    IRC              INDIA                          3               0       27     407
6 months    IRC              INDIA                          3               1        2     407
6 months    IRC              INDIA                          4               0       20     407
6 months    IRC              INDIA                          4               1        4     407
6 months    IRC              INDIA                          5               0       17     407
6 months    IRC              INDIA                          5               1        3     407
6 months    IRC              INDIA                          6               0       34     407
6 months    IRC              INDIA                          6               1        1     407
6 months    IRC              INDIA                          7               0       35     407
6 months    IRC              INDIA                          7               1        1     407
6 months    IRC              INDIA                          8               0       40     407
6 months    IRC              INDIA                          8               1        1     407
6 months    IRC              INDIA                          9               0       29     407
6 months    IRC              INDIA                          9               1        1     407
6 months    IRC              INDIA                          10              0       38     407
6 months    IRC              INDIA                          10              1        0     407
6 months    IRC              INDIA                          11              0       36     407
6 months    IRC              INDIA                          11              1        5     407
6 months    IRC              INDIA                          12              0       45     407
6 months    IRC              INDIA                          12              1        4     407
6 months    JiVitA-3         BANGLADESH                     1               0     1281   16811
6 months    JiVitA-3         BANGLADESH                     1               1       84   16811
6 months    JiVitA-3         BANGLADESH                     2               0     1127   16811
6 months    JiVitA-3         BANGLADESH                     2               1       57   16811
6 months    JiVitA-3         BANGLADESH                     3               0     1344   16811
6 months    JiVitA-3         BANGLADESH                     3               1       77   16811
6 months    JiVitA-3         BANGLADESH                     4               0     1128   16811
6 months    JiVitA-3         BANGLADESH                     4               1       63   16811
6 months    JiVitA-3         BANGLADESH                     5               0     1069   16811
6 months    JiVitA-3         BANGLADESH                     5               1       81   16811
6 months    JiVitA-3         BANGLADESH                     6               0     1101   16811
6 months    JiVitA-3         BANGLADESH                     6               1       60   16811
6 months    JiVitA-3         BANGLADESH                     7               0     1177   16811
6 months    JiVitA-3         BANGLADESH                     7               1       74   16811
6 months    JiVitA-3         BANGLADESH                     8               0     1389   16811
6 months    JiVitA-3         BANGLADESH                     8               1       79   16811
6 months    JiVitA-3         BANGLADESH                     9               0     1448   16811
6 months    JiVitA-3         BANGLADESH                     9               1      102   16811
6 months    JiVitA-3         BANGLADESH                     10              0     1575   16811
6 months    JiVitA-3         BANGLADESH                     10              1      119   16811
6 months    JiVitA-3         BANGLADESH                     11              0     1548   16811
6 months    JiVitA-3         BANGLADESH                     11              1      119   16811
6 months    JiVitA-3         BANGLADESH                     12              0     1604   16811
6 months    JiVitA-3         BANGLADESH                     12              1      105   16811
6 months    JiVitA-4         BANGLADESH                     1               0       51    4831
6 months    JiVitA-4         BANGLADESH                     1               1        2    4831
6 months    JiVitA-4         BANGLADESH                     2               0      163    4831
6 months    JiVitA-4         BANGLADESH                     2               1        2    4831
6 months    JiVitA-4         BANGLADESH                     3               0      405    4831
6 months    JiVitA-4         BANGLADESH                     3               1       25    4831
6 months    JiVitA-4         BANGLADESH                     4               0      798    4831
6 months    JiVitA-4         BANGLADESH                     4               1       47    4831
6 months    JiVitA-4         BANGLADESH                     5               0      552    4831
6 months    JiVitA-4         BANGLADESH                     5               1       33    4831
6 months    JiVitA-4         BANGLADESH                     6               0      405    4831
6 months    JiVitA-4         BANGLADESH                     6               1       29    4831
6 months    JiVitA-4         BANGLADESH                     7               0      775    4831
6 months    JiVitA-4         BANGLADESH                     7               1       63    4831
6 months    JiVitA-4         BANGLADESH                     8               0      488    4831
6 months    JiVitA-4         BANGLADESH                     8               1       22    4831
6 months    JiVitA-4         BANGLADESH                     9               0      415    4831
6 months    JiVitA-4         BANGLADESH                     9               1       16    4831
6 months    JiVitA-4         BANGLADESH                     10              0      287    4831
6 months    JiVitA-4         BANGLADESH                     10              1       19    4831
6 months    JiVitA-4         BANGLADESH                     11              0      149    4831
6 months    JiVitA-4         BANGLADESH                     11              1        8    4831
6 months    JiVitA-4         BANGLADESH                     12              0       72    4831
6 months    JiVitA-4         BANGLADESH                     12              1        5    4831
6 months    Keneba           GAMBIA                         1               0      176    2089
6 months    Keneba           GAMBIA                         1               1        8    2089
6 months    Keneba           GAMBIA                         2               0      203    2089
6 months    Keneba           GAMBIA                         2               1        7    2089
6 months    Keneba           GAMBIA                         3               0      179    2089
6 months    Keneba           GAMBIA                         3               1        6    2089
6 months    Keneba           GAMBIA                         4               0      212    2089
6 months    Keneba           GAMBIA                         4               1       12    2089
6 months    Keneba           GAMBIA                         5               0      183    2089
6 months    Keneba           GAMBIA                         5               1        3    2089
6 months    Keneba           GAMBIA                         6               0      147    2089
6 months    Keneba           GAMBIA                         6               1        2    2089
6 months    Keneba           GAMBIA                         7               0      120    2089
6 months    Keneba           GAMBIA                         7               1        9    2089
6 months    Keneba           GAMBIA                         8               0      113    2089
6 months    Keneba           GAMBIA                         8               1        5    2089
6 months    Keneba           GAMBIA                         9               0      148    2089
6 months    Keneba           GAMBIA                         9               1        3    2089
6 months    Keneba           GAMBIA                         10              0      160    2089
6 months    Keneba           GAMBIA                         10              1        9    2089
6 months    Keneba           GAMBIA                         11              0      221    2089
6 months    Keneba           GAMBIA                         11              1        4    2089
6 months    Keneba           GAMBIA                         12              0      157    2089
6 months    Keneba           GAMBIA                         12              1        2    2089
6 months    LCNI-5           MALAWI                         1               0       51     839
6 months    LCNI-5           MALAWI                         1               1        4     839
6 months    LCNI-5           MALAWI                         2               0      111     839
6 months    LCNI-5           MALAWI                         2               1        3     839
6 months    LCNI-5           MALAWI                         3               0       89     839
6 months    LCNI-5           MALAWI                         3               1        9     839
6 months    LCNI-5           MALAWI                         4               0       95     839
6 months    LCNI-5           MALAWI                         4               1       15     839
6 months    LCNI-5           MALAWI                         5               0      102     839
6 months    LCNI-5           MALAWI                         5               1        9     839
6 months    LCNI-5           MALAWI                         6               0       87     839
6 months    LCNI-5           MALAWI                         6               1        4     839
6 months    LCNI-5           MALAWI                         7               0       63     839
6 months    LCNI-5           MALAWI                         7               1        9     839
6 months    LCNI-5           MALAWI                         8               0       39     839
6 months    LCNI-5           MALAWI                         8               1        2     839
6 months    LCNI-5           MALAWI                         9               0       26     839
6 months    LCNI-5           MALAWI                         9               1        3     839
6 months    LCNI-5           MALAWI                         10              0       34     839
6 months    LCNI-5           MALAWI                         10              1        1     839
6 months    LCNI-5           MALAWI                         11              0       43     839
6 months    LCNI-5           MALAWI                         11              1        6     839
6 months    LCNI-5           MALAWI                         12              0       28     839
6 months    LCNI-5           MALAWI                         12              1        6     839
6 months    MAL-ED           BANGLADESH                     1               0       18     241
6 months    MAL-ED           BANGLADESH                     1               1        1     241
6 months    MAL-ED           BANGLADESH                     2               0       20     241
6 months    MAL-ED           BANGLADESH                     2               1        0     241
6 months    MAL-ED           BANGLADESH                     3               0       23     241
6 months    MAL-ED           BANGLADESH                     3               1        0     241
6 months    MAL-ED           BANGLADESH                     4               0       23     241
6 months    MAL-ED           BANGLADESH                     4               1        1     241
6 months    MAL-ED           BANGLADESH                     5               0       16     241
6 months    MAL-ED           BANGLADESH                     5               1        1     241
6 months    MAL-ED           BANGLADESH                     6               0       12     241
6 months    MAL-ED           BANGLADESH                     6               1        0     241
6 months    MAL-ED           BANGLADESH                     7               0       16     241
6 months    MAL-ED           BANGLADESH                     7               1        1     241
6 months    MAL-ED           BANGLADESH                     8               0       23     241
6 months    MAL-ED           BANGLADESH                     8               1        2     241
6 months    MAL-ED           BANGLADESH                     9               0       21     241
6 months    MAL-ED           BANGLADESH                     9               1        0     241
6 months    MAL-ED           BANGLADESH                     10              0       20     241
6 months    MAL-ED           BANGLADESH                     10              1        2     241
6 months    MAL-ED           BANGLADESH                     11              0       15     241
6 months    MAL-ED           BANGLADESH                     11              1        0     241
6 months    MAL-ED           BANGLADESH                     12              0       26     241
6 months    MAL-ED           BANGLADESH                     12              1        0     241
6 months    MAL-ED           BRAZIL                         1               0       14     209
6 months    MAL-ED           BRAZIL                         1               1        0     209
6 months    MAL-ED           BRAZIL                         2               0       24     209
6 months    MAL-ED           BRAZIL                         2               1        0     209
6 months    MAL-ED           BRAZIL                         3               0       15     209
6 months    MAL-ED           BRAZIL                         3               1        0     209
6 months    MAL-ED           BRAZIL                         4               0       12     209
6 months    MAL-ED           BRAZIL                         4               1        0     209
6 months    MAL-ED           BRAZIL                         5               0       17     209
6 months    MAL-ED           BRAZIL                         5               1        0     209
6 months    MAL-ED           BRAZIL                         6               0       14     209
6 months    MAL-ED           BRAZIL                         6               1        0     209
6 months    MAL-ED           BRAZIL                         7               0       16     209
6 months    MAL-ED           BRAZIL                         7               1        0     209
6 months    MAL-ED           BRAZIL                         8               0       15     209
6 months    MAL-ED           BRAZIL                         8               1        0     209
6 months    MAL-ED           BRAZIL                         9               0       21     209
6 months    MAL-ED           BRAZIL                         9               1        0     209
6 months    MAL-ED           BRAZIL                         10              0       26     209
6 months    MAL-ED           BRAZIL                         10              1        0     209
6 months    MAL-ED           BRAZIL                         11              0       17     209
6 months    MAL-ED           BRAZIL                         11              1        0     209
6 months    MAL-ED           BRAZIL                         12              0       18     209
6 months    MAL-ED           BRAZIL                         12              1        0     209
6 months    MAL-ED           INDIA                          1               0       14     236
6 months    MAL-ED           INDIA                          1               1        1     236
6 months    MAL-ED           INDIA                          2               0       23     236
6 months    MAL-ED           INDIA                          2               1        0     236
6 months    MAL-ED           INDIA                          3               0       21     236
6 months    MAL-ED           INDIA                          3               1        0     236
6 months    MAL-ED           INDIA                          4               0       18     236
6 months    MAL-ED           INDIA                          4               1        0     236
6 months    MAL-ED           INDIA                          5               0        8     236
6 months    MAL-ED           INDIA                          5               1        0     236
6 months    MAL-ED           INDIA                          6               0       18     236
6 months    MAL-ED           INDIA                          6               1        0     236
6 months    MAL-ED           INDIA                          7               0       18     236
6 months    MAL-ED           INDIA                          7               1        3     236
6 months    MAL-ED           INDIA                          8               0       20     236
6 months    MAL-ED           INDIA                          8               1        1     236
6 months    MAL-ED           INDIA                          9               0       20     236
6 months    MAL-ED           INDIA                          9               1        1     236
6 months    MAL-ED           INDIA                          10              0       23     236
6 months    MAL-ED           INDIA                          10              1        1     236
6 months    MAL-ED           INDIA                          11              0       23     236
6 months    MAL-ED           INDIA                          11              1        1     236
6 months    MAL-ED           INDIA                          12              0       21     236
6 months    MAL-ED           INDIA                          12              1        1     236
6 months    MAL-ED           NEPAL                          1               0       20     236
6 months    MAL-ED           NEPAL                          1               1        0     236
6 months    MAL-ED           NEPAL                          2               0       20     236
6 months    MAL-ED           NEPAL                          2               1        0     236
6 months    MAL-ED           NEPAL                          3               0       19     236
6 months    MAL-ED           NEPAL                          3               1        1     236
6 months    MAL-ED           NEPAL                          4               0       20     236
6 months    MAL-ED           NEPAL                          4               1        0     236
6 months    MAL-ED           NEPAL                          5               0       18     236
6 months    MAL-ED           NEPAL                          5               1        0     236
6 months    MAL-ED           NEPAL                          6               0       20     236
6 months    MAL-ED           NEPAL                          6               1        0     236
6 months    MAL-ED           NEPAL                          7               0       19     236
6 months    MAL-ED           NEPAL                          7               1        0     236
6 months    MAL-ED           NEPAL                          8               0       19     236
6 months    MAL-ED           NEPAL                          8               1        0     236
6 months    MAL-ED           NEPAL                          9               0       20     236
6 months    MAL-ED           NEPAL                          9               1        0     236
6 months    MAL-ED           NEPAL                          10              0       20     236
6 months    MAL-ED           NEPAL                          10              1        0     236
6 months    MAL-ED           NEPAL                          11              0       20     236
6 months    MAL-ED           NEPAL                          11              1        0     236
6 months    MAL-ED           NEPAL                          12              0       20     236
6 months    MAL-ED           NEPAL                          12              1        0     236
6 months    MAL-ED           PERU                           1               0       33     273
6 months    MAL-ED           PERU                           1               1        0     273
6 months    MAL-ED           PERU                           2               0       23     273
6 months    MAL-ED           PERU                           2               1        3     273
6 months    MAL-ED           PERU                           3               0       21     273
6 months    MAL-ED           PERU                           3               1        1     273
6 months    MAL-ED           PERU                           4               0       17     273
6 months    MAL-ED           PERU                           4               1        1     273
6 months    MAL-ED           PERU                           5               0       24     273
6 months    MAL-ED           PERU                           5               1        0     273
6 months    MAL-ED           PERU                           6               0       19     273
6 months    MAL-ED           PERU                           6               1        1     273
6 months    MAL-ED           PERU                           7               0       22     273
6 months    MAL-ED           PERU                           7               1        0     273
6 months    MAL-ED           PERU                           8               0       16     273
6 months    MAL-ED           PERU                           8               1        0     273
6 months    MAL-ED           PERU                           9               0       22     273
6 months    MAL-ED           PERU                           9               1        0     273
6 months    MAL-ED           PERU                           10              0       20     273
6 months    MAL-ED           PERU                           10              1        0     273
6 months    MAL-ED           PERU                           11              0       30     273
6 months    MAL-ED           PERU                           11              1        4     273
6 months    MAL-ED           PERU                           12              0       16     273
6 months    MAL-ED           PERU                           12              1        0     273
6 months    MAL-ED           SOUTH AFRICA                   1               0       31     254
6 months    MAL-ED           SOUTH AFRICA                   1               1        1     254
6 months    MAL-ED           SOUTH AFRICA                   2               0       32     254
6 months    MAL-ED           SOUTH AFRICA                   2               1        1     254
6 months    MAL-ED           SOUTH AFRICA                   3               0       17     254
6 months    MAL-ED           SOUTH AFRICA                   3               1        0     254
6 months    MAL-ED           SOUTH AFRICA                   4               0       12     254
6 months    MAL-ED           SOUTH AFRICA                   4               1        0     254
6 months    MAL-ED           SOUTH AFRICA                   5               0       10     254
6 months    MAL-ED           SOUTH AFRICA                   5               1        1     254
6 months    MAL-ED           SOUTH AFRICA                   6               0       18     254
6 months    MAL-ED           SOUTH AFRICA                   6               1        0     254
6 months    MAL-ED           SOUTH AFRICA                   7               0       25     254
6 months    MAL-ED           SOUTH AFRICA                   7               1        0     254
6 months    MAL-ED           SOUTH AFRICA                   8               0        7     254
6 months    MAL-ED           SOUTH AFRICA                   8               1        0     254
6 months    MAL-ED           SOUTH AFRICA                   9               0       17     254
6 months    MAL-ED           SOUTH AFRICA                   9               1        0     254
6 months    MAL-ED           SOUTH AFRICA                   10              0       21     254
6 months    MAL-ED           SOUTH AFRICA                   10              1        1     254
6 months    MAL-ED           SOUTH AFRICA                   11              0       28     254
6 months    MAL-ED           SOUTH AFRICA                   11              1        1     254
6 months    MAL-ED           SOUTH AFRICA                   12              0       30     254
6 months    MAL-ED           SOUTH AFRICA                   12              1        1     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0       18     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        3     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               0       27     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               1        1     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               0       21     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               1        2     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               0       10     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5               0       12     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5               1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6               0       15     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6               1        1     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7               0       27     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7               1        1     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8               0       11     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8               1        1     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9               0       17     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9               1        1     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10              0       18     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10              1        1     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11              0       26     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11              1        2     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12              0       31     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12              1        1     247
6 months    NIH-Birth        BANGLADESH                     1               0       46     537
6 months    NIH-Birth        BANGLADESH                     1               1        4     537
6 months    NIH-Birth        BANGLADESH                     2               0       47     537
6 months    NIH-Birth        BANGLADESH                     2               1        3     537
6 months    NIH-Birth        BANGLADESH                     3               0       46     537
6 months    NIH-Birth        BANGLADESH                     3               1        4     537
6 months    NIH-Birth        BANGLADESH                     4               0       42     537
6 months    NIH-Birth        BANGLADESH                     4               1        2     537
6 months    NIH-Birth        BANGLADESH                     5               0       39     537
6 months    NIH-Birth        BANGLADESH                     5               1        1     537
6 months    NIH-Birth        BANGLADESH                     6               0       35     537
6 months    NIH-Birth        BANGLADESH                     6               1        4     537
6 months    NIH-Birth        BANGLADESH                     7               0       42     537
6 months    NIH-Birth        BANGLADESH                     7               1        3     537
6 months    NIH-Birth        BANGLADESH                     8               0       36     537
6 months    NIH-Birth        BANGLADESH                     8               1        2     537
6 months    NIH-Birth        BANGLADESH                     9               0       28     537
6 months    NIH-Birth        BANGLADESH                     9               1        2     537
6 months    NIH-Birth        BANGLADESH                     10              0       48     537
6 months    NIH-Birth        BANGLADESH                     10              1        4     537
6 months    NIH-Birth        BANGLADESH                     11              0       44     537
6 months    NIH-Birth        BANGLADESH                     11              1        5     537
6 months    NIH-Birth        BANGLADESH                     12              0       49     537
6 months    NIH-Birth        BANGLADESH                     12              1        1     537
6 months    PROBIT           BELARUS                        1               0     1087   15760
6 months    PROBIT           BELARUS                        1               1       15   15760
6 months    PROBIT           BELARUS                        2               0      937   15760
6 months    PROBIT           BELARUS                        2               1       14   15760
6 months    PROBIT           BELARUS                        3               0     1098   15760
6 months    PROBIT           BELARUS                        3               1       16   15760
6 months    PROBIT           BELARUS                        4               0     1056   15760
6 months    PROBIT           BELARUS                        4               1       13   15760
6 months    PROBIT           BELARUS                        5               0     1087   15760
6 months    PROBIT           BELARUS                        5               1        9   15760
6 months    PROBIT           BELARUS                        6               0     1106   15760
6 months    PROBIT           BELARUS                        6               1       14   15760
6 months    PROBIT           BELARUS                        7               0     1351   15760
6 months    PROBIT           BELARUS                        7               1       14   15760
6 months    PROBIT           BELARUS                        8               0     1483   15760
6 months    PROBIT           BELARUS                        8               1       15   15760
6 months    PROBIT           BELARUS                        9               0     1468   15760
6 months    PROBIT           BELARUS                        9               1       13   15760
6 months    PROBIT           BELARUS                        10              0     1652   15760
6 months    PROBIT           BELARUS                        10              1       17   15760
6 months    PROBIT           BELARUS                        11              0     1566   15760
6 months    PROBIT           BELARUS                        11              1       23   15760
6 months    PROBIT           BELARUS                        12              0     1692   15760
6 months    PROBIT           BELARUS                        12              1       14   15760
6 months    ResPak           PAKISTAN                       1               0        0     239
6 months    ResPak           PAKISTAN                       1               1        2     239
6 months    ResPak           PAKISTAN                       2               0        7     239
6 months    ResPak           PAKISTAN                       2               1        1     239
6 months    ResPak           PAKISTAN                       3               0       10     239
6 months    ResPak           PAKISTAN                       3               1        0     239
6 months    ResPak           PAKISTAN                       4               0       12     239
6 months    ResPak           PAKISTAN                       4               1        8     239
6 months    ResPak           PAKISTAN                       5               0       22     239
6 months    ResPak           PAKISTAN                       5               1        8     239
6 months    ResPak           PAKISTAN                       6               0       28     239
6 months    ResPak           PAKISTAN                       6               1       11     239
6 months    ResPak           PAKISTAN                       7               0       38     239
6 months    ResPak           PAKISTAN                       7               1        5     239
6 months    ResPak           PAKISTAN                       8               0       24     239
6 months    ResPak           PAKISTAN                       8               1        2     239
6 months    ResPak           PAKISTAN                       9               0       30     239
6 months    ResPak           PAKISTAN                       9               1        7     239
6 months    ResPak           PAKISTAN                       10              0       12     239
6 months    ResPak           PAKISTAN                       10              1        3     239
6 months    ResPak           PAKISTAN                       11              0        6     239
6 months    ResPak           PAKISTAN                       11              1        0     239
6 months    ResPak           PAKISTAN                       12              0        3     239
6 months    ResPak           PAKISTAN                       12              1        0     239
6 months    SAS-CompFeed     INDIA                          1               0       77    1336
6 months    SAS-CompFeed     INDIA                          1               1        8    1336
6 months    SAS-CompFeed     INDIA                          2               0       74    1336
6 months    SAS-CompFeed     INDIA                          2               1        7    1336
6 months    SAS-CompFeed     INDIA                          3               0       73    1336
6 months    SAS-CompFeed     INDIA                          3               1        7    1336
6 months    SAS-CompFeed     INDIA                          4               0       73    1336
6 months    SAS-CompFeed     INDIA                          4               1        4    1336
6 months    SAS-CompFeed     INDIA                          5               0       67    1336
6 months    SAS-CompFeed     INDIA                          5               1        9    1336
6 months    SAS-CompFeed     INDIA                          6               0       91    1336
6 months    SAS-CompFeed     INDIA                          6               1       11    1336
6 months    SAS-CompFeed     INDIA                          7               0       98    1336
6 months    SAS-CompFeed     INDIA                          7               1       17    1336
6 months    SAS-CompFeed     INDIA                          8               0      136    1336
6 months    SAS-CompFeed     INDIA                          8               1       16    1336
6 months    SAS-CompFeed     INDIA                          9               0      152    1336
6 months    SAS-CompFeed     INDIA                          9               1       14    1336
6 months    SAS-CompFeed     INDIA                          10              0      139    1336
6 months    SAS-CompFeed     INDIA                          10              1        9    1336
6 months    SAS-CompFeed     INDIA                          11              0      114    1336
6 months    SAS-CompFeed     INDIA                          11              1       11    1336
6 months    SAS-CompFeed     INDIA                          12              0      114    1336
6 months    SAS-CompFeed     INDIA                          12              1       15    1336
6 months    SAS-FoodSuppl    INDIA                          1               0       49     380
6 months    SAS-FoodSuppl    INDIA                          1               1       12     380
6 months    SAS-FoodSuppl    INDIA                          2               0       29     380
6 months    SAS-FoodSuppl    INDIA                          2               1        8     380
6 months    SAS-FoodSuppl    INDIA                          3               0       30     380
6 months    SAS-FoodSuppl    INDIA                          3               1        5     380
6 months    SAS-FoodSuppl    INDIA                          4               0       22     380
6 months    SAS-FoodSuppl    INDIA                          4               1        4     380
6 months    SAS-FoodSuppl    INDIA                          5               0       25     380
6 months    SAS-FoodSuppl    INDIA                          5               1        4     380
6 months    SAS-FoodSuppl    INDIA                          6               0       26     380
6 months    SAS-FoodSuppl    INDIA                          6               1        5     380
6 months    SAS-FoodSuppl    INDIA                          7               0       16     380
6 months    SAS-FoodSuppl    INDIA                          7               1        1     380
6 months    SAS-FoodSuppl    INDIA                          8               0        0     380
6 months    SAS-FoodSuppl    INDIA                          8               1        0     380
6 months    SAS-FoodSuppl    INDIA                          9               0       11     380
6 months    SAS-FoodSuppl    INDIA                          9               1        1     380
6 months    SAS-FoodSuppl    INDIA                          10              0       20     380
6 months    SAS-FoodSuppl    INDIA                          10              1        6     380
6 months    SAS-FoodSuppl    INDIA                          11              0       41     380
6 months    SAS-FoodSuppl    INDIA                          11              1        3     380
6 months    SAS-FoodSuppl    INDIA                          12              0       57     380
6 months    SAS-FoodSuppl    INDIA                          12              1        5     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      198    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        1    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      135    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        2    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               0      150    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               1        1    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               0      137    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               1        1    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               0      160    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               1        1    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               0      141    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               1        1    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               0      144    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               1        1    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               0      173    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               1        1    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               0      195    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               1        3    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              0      195    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              1        1    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              0      182    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              1        5    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              0      200    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              1        1    2029
6 months    ZVITAMBO         ZIMBABWE                       1               0      802    8669
6 months    ZVITAMBO         ZIMBABWE                       1               1       28    8669
6 months    ZVITAMBO         ZIMBABWE                       2               0      589    8669
6 months    ZVITAMBO         ZIMBABWE                       2               1       20    8669
6 months    ZVITAMBO         ZIMBABWE                       3               0      689    8669
6 months    ZVITAMBO         ZIMBABWE                       3               1       47    8669
6 months    ZVITAMBO         ZIMBABWE                       4               0      655    8669
6 months    ZVITAMBO         ZIMBABWE                       4               1       25    8669
6 months    ZVITAMBO         ZIMBABWE                       5               0      609    8669
6 months    ZVITAMBO         ZIMBABWE                       5               1       27    8669
6 months    ZVITAMBO         ZIMBABWE                       6               0      648    8669
6 months    ZVITAMBO         ZIMBABWE                       6               1       32    8669
6 months    ZVITAMBO         ZIMBABWE                       7               0      639    8669
6 months    ZVITAMBO         ZIMBABWE                       7               1       36    8669
6 months    ZVITAMBO         ZIMBABWE                       8               0      745    8669
6 months    ZVITAMBO         ZIMBABWE                       8               1       23    8669
6 months    ZVITAMBO         ZIMBABWE                       9               0      775    8669
6 months    ZVITAMBO         ZIMBABWE                       9               1       26    8669
6 months    ZVITAMBO         ZIMBABWE                       10              0      606    8669
6 months    ZVITAMBO         ZIMBABWE                       10              1       22    8669
6 months    ZVITAMBO         ZIMBABWE                       11              0      731    8669
6 months    ZVITAMBO         ZIMBABWE                       11              1       30    8669
6 months    ZVITAMBO         ZIMBABWE                       12              0      830    8669
6 months    ZVITAMBO         ZIMBABWE                       12              1       35    8669
24 months   CMC-V-BCS-2002   INDIA                          1               0       16     371
24 months   CMC-V-BCS-2002   INDIA                          1               1       12     371
24 months   CMC-V-BCS-2002   INDIA                          2               0       17     371
24 months   CMC-V-BCS-2002   INDIA                          2               1        7     371
24 months   CMC-V-BCS-2002   INDIA                          3               0       12     371
24 months   CMC-V-BCS-2002   INDIA                          3               1       14     371
24 months   CMC-V-BCS-2002   INDIA                          4               0       22     371
24 months   CMC-V-BCS-2002   INDIA                          4               1        7     371
24 months   CMC-V-BCS-2002   INDIA                          5               0       27     371
24 months   CMC-V-BCS-2002   INDIA                          5               1       16     371
24 months   CMC-V-BCS-2002   INDIA                          6               0       17     371
24 months   CMC-V-BCS-2002   INDIA                          6               1       19     371
24 months   CMC-V-BCS-2002   INDIA                          7               0       27     371
24 months   CMC-V-BCS-2002   INDIA                          7               1        6     371
24 months   CMC-V-BCS-2002   INDIA                          8               0       31     371
24 months   CMC-V-BCS-2002   INDIA                          8               1       10     371
24 months   CMC-V-BCS-2002   INDIA                          9               0       13     371
24 months   CMC-V-BCS-2002   INDIA                          9               1        9     371
24 months   CMC-V-BCS-2002   INDIA                          10              0       15     371
24 months   CMC-V-BCS-2002   INDIA                          10              1        4     371
24 months   CMC-V-BCS-2002   INDIA                          11              0       32     371
24 months   CMC-V-BCS-2002   INDIA                          11              1        9     371
24 months   CMC-V-BCS-2002   INDIA                          12              0       17     371
24 months   CMC-V-BCS-2002   INDIA                          12              1       12     371
24 months   CMIN             BANGLADESH                     1               0       21     242
24 months   CMIN             BANGLADESH                     1               1        5     242
24 months   CMIN             BANGLADESH                     2               0       20     242
24 months   CMIN             BANGLADESH                     2               1       11     242
24 months   CMIN             BANGLADESH                     3               0       15     242
24 months   CMIN             BANGLADESH                     3               1        4     242
24 months   CMIN             BANGLADESH                     4               0       14     242
24 months   CMIN             BANGLADESH                     4               1        4     242
24 months   CMIN             BANGLADESH                     5               0       16     242
24 months   CMIN             BANGLADESH                     5               1        3     242
24 months   CMIN             BANGLADESH                     6               0       19     242
24 months   CMIN             BANGLADESH                     6               1        3     242
24 months   CMIN             BANGLADESH                     7               0        7     242
24 months   CMIN             BANGLADESH                     7               1        5     242
24 months   CMIN             BANGLADESH                     8               0       11     242
24 months   CMIN             BANGLADESH                     8               1        2     242
24 months   CMIN             BANGLADESH                     9               0        9     242
24 months   CMIN             BANGLADESH                     9               1        9     242
24 months   CMIN             BANGLADESH                     10              0       15     242
24 months   CMIN             BANGLADESH                     10              1        4     242
24 months   CMIN             BANGLADESH                     11              0        1     242
24 months   CMIN             BANGLADESH                     11              1        1     242
24 months   CMIN             BANGLADESH                     12              0       26     242
24 months   CMIN             BANGLADESH                     12              1       17     242
24 months   CONTENT          PERU                           1               0        8     164
24 months   CONTENT          PERU                           1               1        0     164
24 months   CONTENT          PERU                           2               0       10     164
24 months   CONTENT          PERU                           2               1        0     164
24 months   CONTENT          PERU                           3               0       20     164
24 months   CONTENT          PERU                           3               1        0     164
24 months   CONTENT          PERU                           4               0       13     164
24 months   CONTENT          PERU                           4               1        0     164
24 months   CONTENT          PERU                           5               0       22     164
24 months   CONTENT          PERU                           5               1        0     164
24 months   CONTENT          PERU                           6               0       11     164
24 months   CONTENT          PERU                           6               1        0     164
24 months   CONTENT          PERU                           7               0       13     164
24 months   CONTENT          PERU                           7               1        0     164
24 months   CONTENT          PERU                           8               0       23     164
24 months   CONTENT          PERU                           8               1        0     164
24 months   CONTENT          PERU                           9               0       10     164
24 months   CONTENT          PERU                           9               1        1     164
24 months   CONTENT          PERU                           10              0       12     164
24 months   CONTENT          PERU                           10              1        0     164
24 months   CONTENT          PERU                           11              0       17     164
24 months   CONTENT          PERU                           11              1        0     164
24 months   CONTENT          PERU                           12              0        4     164
24 months   CONTENT          PERU                           12              1        0     164
24 months   EE               PAKISTAN                       1               0       18     167
24 months   EE               PAKISTAN                       1               1       10     167
24 months   EE               PAKISTAN                       2               0        1     167
24 months   EE               PAKISTAN                       2               1        1     167
24 months   EE               PAKISTAN                       3               0        0     167
24 months   EE               PAKISTAN                       3               1        2     167
24 months   EE               PAKISTAN                       4               0        0     167
24 months   EE               PAKISTAN                       4               1        0     167
24 months   EE               PAKISTAN                       5               0        0     167
24 months   EE               PAKISTAN                       5               1        0     167
24 months   EE               PAKISTAN                       6               0        0     167
24 months   EE               PAKISTAN                       6               1        0     167
24 months   EE               PAKISTAN                       7               0        0     167
24 months   EE               PAKISTAN                       7               1        0     167
24 months   EE               PAKISTAN                       8               0        0     167
24 months   EE               PAKISTAN                       8               1        0     167
24 months   EE               PAKISTAN                       9               0        0     167
24 months   EE               PAKISTAN                       9               1        0     167
24 months   EE               PAKISTAN                       10              0        0     167
24 months   EE               PAKISTAN                       10              1        0     167
24 months   EE               PAKISTAN                       11              0       38     167
24 months   EE               PAKISTAN                       11              1       19     167
24 months   EE               PAKISTAN                       12              0       51     167
24 months   EE               PAKISTAN                       12              1       27     167
24 months   GMS-Nepal        NEPAL                          1               0        0     488
24 months   GMS-Nepal        NEPAL                          1               1        0     488
24 months   GMS-Nepal        NEPAL                          2               0        0     488
24 months   GMS-Nepal        NEPAL                          2               1        0     488
24 months   GMS-Nepal        NEPAL                          3               0        0     488
24 months   GMS-Nepal        NEPAL                          3               1        0     488
24 months   GMS-Nepal        NEPAL                          4               0        0     488
24 months   GMS-Nepal        NEPAL                          4               1        0     488
24 months   GMS-Nepal        NEPAL                          5               0        0     488
24 months   GMS-Nepal        NEPAL                          5               1        0     488
24 months   GMS-Nepal        NEPAL                          6               0       66     488
24 months   GMS-Nepal        NEPAL                          6               1        7     488
24 months   GMS-Nepal        NEPAL                          7               0      176     488
24 months   GMS-Nepal        NEPAL                          7               1       24     488
24 months   GMS-Nepal        NEPAL                          8               0      193     488
24 months   GMS-Nepal        NEPAL                          8               1       22     488
24 months   GMS-Nepal        NEPAL                          9               0        0     488
24 months   GMS-Nepal        NEPAL                          9               1        0     488
24 months   GMS-Nepal        NEPAL                          10              0        0     488
24 months   GMS-Nepal        NEPAL                          10              1        0     488
24 months   GMS-Nepal        NEPAL                          11              0        0     488
24 months   GMS-Nepal        NEPAL                          11              1        0     488
24 months   GMS-Nepal        NEPAL                          12              0        0     488
24 months   GMS-Nepal        NEPAL                          12              1        0     488
24 months   IRC              INDIA                          1               0       30     409
24 months   IRC              INDIA                          1               1        5     409
24 months   IRC              INDIA                          2               0       27     409
24 months   IRC              INDIA                          2               1        3     409
24 months   IRC              INDIA                          3               0       23     409
24 months   IRC              INDIA                          3               1        6     409
24 months   IRC              INDIA                          4               0       21     409
24 months   IRC              INDIA                          4               1        3     409
24 months   IRC              INDIA                          5               0       15     409
24 months   IRC              INDIA                          5               1        6     409
24 months   IRC              INDIA                          6               0       34     409
24 months   IRC              INDIA                          6               1        1     409
24 months   IRC              INDIA                          7               0       36     409
24 months   IRC              INDIA                          7               1        0     409
24 months   IRC              INDIA                          8               0       37     409
24 months   IRC              INDIA                          8               1        4     409
24 months   IRC              INDIA                          9               0       27     409
24 months   IRC              INDIA                          9               1        3     409
24 months   IRC              INDIA                          10              0       37     409
24 months   IRC              INDIA                          10              1        1     409
24 months   IRC              INDIA                          11              0       39     409
24 months   IRC              INDIA                          11              1        2     409
24 months   IRC              INDIA                          12              0       42     409
24 months   IRC              INDIA                          12              1        7     409
24 months   JiVitA-3         BANGLADESH                     1               0      589    8632
24 months   JiVitA-3         BANGLADESH                     1               1      116    8632
24 months   JiVitA-3         BANGLADESH                     2               0      495    8632
24 months   JiVitA-3         BANGLADESH                     2               1      114    8632
24 months   JiVitA-3         BANGLADESH                     3               0      620    8632
24 months   JiVitA-3         BANGLADESH                     3               1      110    8632
24 months   JiVitA-3         BANGLADESH                     4               0      477    8632
24 months   JiVitA-3         BANGLADESH                     4               1       64    8632
24 months   JiVitA-3         BANGLADESH                     5               0      331    8632
24 months   JiVitA-3         BANGLADESH                     5               1       65    8632
24 months   JiVitA-3         BANGLADESH                     6               0      485    8632
24 months   JiVitA-3         BANGLADESH                     6               1       79    8632
24 months   JiVitA-3         BANGLADESH                     7               0      565    8632
24 months   JiVitA-3         BANGLADESH                     7               1       84    8632
24 months   JiVitA-3         BANGLADESH                     8               0      562    8632
24 months   JiVitA-3         BANGLADESH                     8               1       86    8632
24 months   JiVitA-3         BANGLADESH                     9               0      636    8632
24 months   JiVitA-3         BANGLADESH                     9               1       91    8632
24 months   JiVitA-3         BANGLADESH                     10              0      759    8632
24 months   JiVitA-3         BANGLADESH                     10              1      126    8632
24 months   JiVitA-3         BANGLADESH                     11              0      758    8632
24 months   JiVitA-3         BANGLADESH                     11              1      182    8632
24 months   JiVitA-3         BANGLADESH                     12              0     1008    8632
24 months   JiVitA-3         BANGLADESH                     12              1      230    8632
24 months   JiVitA-4         BANGLADESH                     1               0       45    4752
24 months   JiVitA-4         BANGLADESH                     1               1        2    4752
24 months   JiVitA-4         BANGLADESH                     2               0      294    4752
24 months   JiVitA-4         BANGLADESH                     2               1       32    4752
24 months   JiVitA-4         BANGLADESH                     3               0      358    4752
24 months   JiVitA-4         BANGLADESH                     3               1       43    4752
24 months   JiVitA-4         BANGLADESH                     4               0      706    4752
24 months   JiVitA-4         BANGLADESH                     4               1       97    4752
24 months   JiVitA-4         BANGLADESH                     5               0      496    4752
24 months   JiVitA-4         BANGLADESH                     5               1       63    4752
24 months   JiVitA-4         BANGLADESH                     6               0      391    4752
24 months   JiVitA-4         BANGLADESH                     6               1       32    4752
24 months   JiVitA-4         BANGLADESH                     7               0      696    4752
24 months   JiVitA-4         BANGLADESH                     7               1       87    4752
24 months   JiVitA-4         BANGLADESH                     8               0      445    4752
24 months   JiVitA-4         BANGLADESH                     8               1       27    4752
24 months   JiVitA-4         BANGLADESH                     9               0      405    4752
24 months   JiVitA-4         BANGLADESH                     9               1       40    4752
24 months   JiVitA-4         BANGLADESH                     10              0      259    4752
24 months   JiVitA-4         BANGLADESH                     10              1       17    4752
24 months   JiVitA-4         BANGLADESH                     11              0      138    4752
24 months   JiVitA-4         BANGLADESH                     11              1        8    4752
24 months   JiVitA-4         BANGLADESH                     12              0       66    4752
24 months   JiVitA-4         BANGLADESH                     12              1        5    4752
24 months   Keneba           GAMBIA                         1               0      133    1725
24 months   Keneba           GAMBIA                         1               1       17    1725
24 months   Keneba           GAMBIA                         2               0      147    1725
24 months   Keneba           GAMBIA                         2               1       13    1725
24 months   Keneba           GAMBIA                         3               0      143    1725
24 months   Keneba           GAMBIA                         3               1       16    1725
24 months   Keneba           GAMBIA                         4               0      156    1725
24 months   Keneba           GAMBIA                         4               1       19    1725
24 months   Keneba           GAMBIA                         5               0      170    1725
24 months   Keneba           GAMBIA                         5               1       12    1725
24 months   Keneba           GAMBIA                         6               0      124    1725
24 months   Keneba           GAMBIA                         6               1        8    1725
24 months   Keneba           GAMBIA                         7               0       95    1725
24 months   Keneba           GAMBIA                         7               1        6    1725
24 months   Keneba           GAMBIA                         8               0       86    1725
24 months   Keneba           GAMBIA                         8               1        6    1725
24 months   Keneba           GAMBIA                         9               0      129    1725
24 months   Keneba           GAMBIA                         9               1        6    1725
24 months   Keneba           GAMBIA                         10              0      134    1725
24 months   Keneba           GAMBIA                         10              1       16    1725
24 months   Keneba           GAMBIA                         11              0      167    1725
24 months   Keneba           GAMBIA                         11              1       11    1725
24 months   Keneba           GAMBIA                         12              0      101    1725
24 months   Keneba           GAMBIA                         12              1       10    1725
24 months   LCNI-5           MALAWI                         1               0       35     579
24 months   LCNI-5           MALAWI                         1               1        6     579
24 months   LCNI-5           MALAWI                         2               0       83     579
24 months   LCNI-5           MALAWI                         2               1        5     579
24 months   LCNI-5           MALAWI                         3               0       65     579
24 months   LCNI-5           MALAWI                         3               1        5     579
24 months   LCNI-5           MALAWI                         4               0       62     579
24 months   LCNI-5           MALAWI                         4               1       17     579
24 months   LCNI-5           MALAWI                         5               0       58     579
24 months   LCNI-5           MALAWI                         5               1        6     579
24 months   LCNI-5           MALAWI                         6               0       51     579
24 months   LCNI-5           MALAWI                         6               1       13     579
24 months   LCNI-5           MALAWI                         7               0       36     579
24 months   LCNI-5           MALAWI                         7               1        5     579
24 months   LCNI-5           MALAWI                         8               0       27     579
24 months   LCNI-5           MALAWI                         8               1        0     579
24 months   LCNI-5           MALAWI                         9               0       19     579
24 months   LCNI-5           MALAWI                         9               1        1     579
24 months   LCNI-5           MALAWI                         10              0       24     579
24 months   LCNI-5           MALAWI                         10              1        1     579
24 months   LCNI-5           MALAWI                         11              0       30     579
24 months   LCNI-5           MALAWI                         11              1        6     579
24 months   LCNI-5           MALAWI                         12              0       19     579
24 months   LCNI-5           MALAWI                         12              1        5     579
24 months   MAL-ED           BANGLADESH                     1               0       17     212
24 months   MAL-ED           BANGLADESH                     1               1        0     212
24 months   MAL-ED           BANGLADESH                     2               0       12     212
24 months   MAL-ED           BANGLADESH                     2               1        5     212
24 months   MAL-ED           BANGLADESH                     3               0       17     212
24 months   MAL-ED           BANGLADESH                     3               1        2     212
24 months   MAL-ED           BANGLADESH                     4               0       20     212
24 months   MAL-ED           BANGLADESH                     4               1        1     212
24 months   MAL-ED           BANGLADESH                     5               0       11     212
24 months   MAL-ED           BANGLADESH                     5               1        4     212
24 months   MAL-ED           BANGLADESH                     6               0        8     212
24 months   MAL-ED           BANGLADESH                     6               1        1     212
24 months   MAL-ED           BANGLADESH                     7               0       15     212
24 months   MAL-ED           BANGLADESH                     7               1        2     212
24 months   MAL-ED           BANGLADESH                     8               0       17     212
24 months   MAL-ED           BANGLADESH                     8               1        7     212
24 months   MAL-ED           BANGLADESH                     9               0       17     212
24 months   MAL-ED           BANGLADESH                     9               1        1     212
24 months   MAL-ED           BANGLADESH                     10              0       16     212
24 months   MAL-ED           BANGLADESH                     10              1        4     212
24 months   MAL-ED           BANGLADESH                     11              0        8     212
24 months   MAL-ED           BANGLADESH                     11              1        1     212
24 months   MAL-ED           BANGLADESH                     12              0       26     212
24 months   MAL-ED           BANGLADESH                     12              1        0     212
24 months   MAL-ED           BRAZIL                         1               0       14     169
24 months   MAL-ED           BRAZIL                         1               1        0     169
24 months   MAL-ED           BRAZIL                         2               0       19     169
24 months   MAL-ED           BRAZIL                         2               1        0     169
24 months   MAL-ED           BRAZIL                         3               0       11     169
24 months   MAL-ED           BRAZIL                         3               1        0     169
24 months   MAL-ED           BRAZIL                         4               0       11     169
24 months   MAL-ED           BRAZIL                         4               1        0     169
24 months   MAL-ED           BRAZIL                         5               0       15     169
24 months   MAL-ED           BRAZIL                         5               1        0     169
24 months   MAL-ED           BRAZIL                         6               0        9     169
24 months   MAL-ED           BRAZIL                         6               1        0     169
24 months   MAL-ED           BRAZIL                         7               0        9     169
24 months   MAL-ED           BRAZIL                         7               1        1     169
24 months   MAL-ED           BRAZIL                         8               0       12     169
24 months   MAL-ED           BRAZIL                         8               1        0     169
24 months   MAL-ED           BRAZIL                         9               0       18     169
24 months   MAL-ED           BRAZIL                         9               1        0     169
24 months   MAL-ED           BRAZIL                         10              0       21     169
24 months   MAL-ED           BRAZIL                         10              1        0     169
24 months   MAL-ED           BRAZIL                         11              0       12     169
24 months   MAL-ED           BRAZIL                         11              1        0     169
24 months   MAL-ED           BRAZIL                         12              0       17     169
24 months   MAL-ED           BRAZIL                         12              1        0     169
24 months   MAL-ED           INDIA                          1               0       14     227
24 months   MAL-ED           INDIA                          1               1        1     227
24 months   MAL-ED           INDIA                          2               0       19     227
24 months   MAL-ED           INDIA                          2               1        4     227
24 months   MAL-ED           INDIA                          3               0       19     227
24 months   MAL-ED           INDIA                          3               1        0     227
24 months   MAL-ED           INDIA                          4               0       14     227
24 months   MAL-ED           INDIA                          4               1        3     227
24 months   MAL-ED           INDIA                          5               0        5     227
24 months   MAL-ED           INDIA                          5               1        2     227
24 months   MAL-ED           INDIA                          6               0       17     227
24 months   MAL-ED           INDIA                          6               1        0     227
24 months   MAL-ED           INDIA                          7               0       19     227
24 months   MAL-ED           INDIA                          7               1        2     227
24 months   MAL-ED           INDIA                          8               0       17     227
24 months   MAL-ED           INDIA                          8               1        3     227
24 months   MAL-ED           INDIA                          9               0       15     227
24 months   MAL-ED           INDIA                          9               1        5     227
24 months   MAL-ED           INDIA                          10              0       19     227
24 months   MAL-ED           INDIA                          10              1        4     227
24 months   MAL-ED           INDIA                          11              0       20     227
24 months   MAL-ED           INDIA                          11              1        4     227
24 months   MAL-ED           INDIA                          12              0       19     227
24 months   MAL-ED           INDIA                          12              1        2     227
24 months   MAL-ED           NEPAL                          1               0       18     228
24 months   MAL-ED           NEPAL                          1               1        1     228
24 months   MAL-ED           NEPAL                          2               0       17     228
24 months   MAL-ED           NEPAL                          2               1        1     228
24 months   MAL-ED           NEPAL                          3               0       18     228
24 months   MAL-ED           NEPAL                          3               1        1     228
24 months   MAL-ED           NEPAL                          4               0       18     228
24 months   MAL-ED           NEPAL                          4               1        2     228
24 months   MAL-ED           NEPAL                          5               0       17     228
24 months   MAL-ED           NEPAL                          5               1        0     228
24 months   MAL-ED           NEPAL                          6               0       19     228
24 months   MAL-ED           NEPAL                          6               1        1     228
24 months   MAL-ED           NEPAL                          7               0       19     228
24 months   MAL-ED           NEPAL                          7               1        0     228
24 months   MAL-ED           NEPAL                          8               0       18     228
24 months   MAL-ED           NEPAL                          8               1        0     228
24 months   MAL-ED           NEPAL                          9               0       19     228
24 months   MAL-ED           NEPAL                          9               1        0     228
24 months   MAL-ED           NEPAL                          10              0       19     228
24 months   MAL-ED           NEPAL                          10              1        1     228
24 months   MAL-ED           NEPAL                          11              0       19     228
24 months   MAL-ED           NEPAL                          11              1        0     228
24 months   MAL-ED           NEPAL                          12              0       20     228
24 months   MAL-ED           NEPAL                          12              1        0     228
24 months   MAL-ED           PERU                           1               0       23     201
24 months   MAL-ED           PERU                           1               1        3     201
24 months   MAL-ED           PERU                           2               0       21     201
24 months   MAL-ED           PERU                           2               1        2     201
24 months   MAL-ED           PERU                           3               0       15     201
24 months   MAL-ED           PERU                           3               1        0     201
24 months   MAL-ED           PERU                           4               0        8     201
24 months   MAL-ED           PERU                           4               1        2     201
24 months   MAL-ED           PERU                           5               0       17     201
24 months   MAL-ED           PERU                           5               1        1     201
24 months   MAL-ED           PERU                           6               0       12     201
24 months   MAL-ED           PERU                           6               1        2     201
24 months   MAL-ED           PERU                           7               0       14     201
24 months   MAL-ED           PERU                           7               1        0     201
24 months   MAL-ED           PERU                           8               0       11     201
24 months   MAL-ED           PERU                           8               1        1     201
24 months   MAL-ED           PERU                           9               0       21     201
24 months   MAL-ED           PERU                           9               1        0     201
24 months   MAL-ED           PERU                           10              0       15     201
24 months   MAL-ED           PERU                           10              1        0     201
24 months   MAL-ED           PERU                           11              0       18     201
24 months   MAL-ED           PERU                           11              1        3     201
24 months   MAL-ED           PERU                           12              0       11     201
24 months   MAL-ED           PERU                           12              1        1     201
24 months   MAL-ED           SOUTH AFRICA                   1               0       23     238
24 months   MAL-ED           SOUTH AFRICA                   1               1        6     238
24 months   MAL-ED           SOUTH AFRICA                   2               0       25     238
24 months   MAL-ED           SOUTH AFRICA                   2               1        5     238
24 months   MAL-ED           SOUTH AFRICA                   3               0       14     238
24 months   MAL-ED           SOUTH AFRICA                   3               1        2     238
24 months   MAL-ED           SOUTH AFRICA                   4               0       11     238
24 months   MAL-ED           SOUTH AFRICA                   4               1        1     238
24 months   MAL-ED           SOUTH AFRICA                   5               0       10     238
24 months   MAL-ED           SOUTH AFRICA                   5               1        0     238
24 months   MAL-ED           SOUTH AFRICA                   6               0       15     238
24 months   MAL-ED           SOUTH AFRICA                   6               1        0     238
24 months   MAL-ED           SOUTH AFRICA                   7               0       23     238
24 months   MAL-ED           SOUTH AFRICA                   7               1        2     238
24 months   MAL-ED           SOUTH AFRICA                   8               0        6     238
24 months   MAL-ED           SOUTH AFRICA                   8               1        1     238
24 months   MAL-ED           SOUTH AFRICA                   9               0       17     238
24 months   MAL-ED           SOUTH AFRICA                   9               1        0     238
24 months   MAL-ED           SOUTH AFRICA                   10              0       20     238
24 months   MAL-ED           SOUTH AFRICA                   10              1        2     238
24 months   MAL-ED           SOUTH AFRICA                   11              0       22     238
24 months   MAL-ED           SOUTH AFRICA                   11              1        5     238
24 months   MAL-ED           SOUTH AFRICA                   12              0       25     238
24 months   MAL-ED           SOUTH AFRICA                   12              1        3     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0       12     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        6     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               0       14     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               1        5     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               0       11     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               1       11     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               0        5     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               1        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5               0       11     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5               1        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6               0       11     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6               1        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7               0       20     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7               1        8     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8               0        9     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8               1        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9               0       11     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9               1        4     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10              0       10     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10              1        7     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11              0       13     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11              1        8     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12              0       17     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12              1        9     214
24 months   NIH-Birth        BANGLADESH                     1               0       35     429
24 months   NIH-Birth        BANGLADESH                     1               1        7     429
24 months   NIH-Birth        BANGLADESH                     2               0       32     429
24 months   NIH-Birth        BANGLADESH                     2               1        4     429
24 months   NIH-Birth        BANGLADESH                     3               0       35     429
24 months   NIH-Birth        BANGLADESH                     3               1        6     429
24 months   NIH-Birth        BANGLADESH                     4               0       24     429
24 months   NIH-Birth        BANGLADESH                     4               1       10     429
24 months   NIH-Birth        BANGLADESH                     5               0       25     429
24 months   NIH-Birth        BANGLADESH                     5               1        9     429
24 months   NIH-Birth        BANGLADESH                     6               0       25     429
24 months   NIH-Birth        BANGLADESH                     6               1        5     429
24 months   NIH-Birth        BANGLADESH                     7               0       29     429
24 months   NIH-Birth        BANGLADESH                     7               1        8     429
24 months   NIH-Birth        BANGLADESH                     8               0       21     429
24 months   NIH-Birth        BANGLADESH                     8               1        9     429
24 months   NIH-Birth        BANGLADESH                     9               0       15     429
24 months   NIH-Birth        BANGLADESH                     9               1        4     429
24 months   NIH-Birth        BANGLADESH                     10              0       30     429
24 months   NIH-Birth        BANGLADESH                     10              1       10     429
24 months   NIH-Birth        BANGLADESH                     11              0       28     429
24 months   NIH-Birth        BANGLADESH                     11              1       13     429
24 months   NIH-Birth        BANGLADESH                     12              0       35     429
24 months   NIH-Birth        BANGLADESH                     12              1       10     429
24 months   PROBIT           BELARUS                        1               0      266    4035
24 months   PROBIT           BELARUS                        1               1        3    4035
24 months   PROBIT           BELARUS                        2               0      208    4035
24 months   PROBIT           BELARUS                        2               1        3    4035
24 months   PROBIT           BELARUS                        3               0      323    4035
24 months   PROBIT           BELARUS                        3               1        1    4035
24 months   PROBIT           BELARUS                        4               0      322    4035
24 months   PROBIT           BELARUS                        4               1        4    4035
24 months   PROBIT           BELARUS                        5               0      305    4035
24 months   PROBIT           BELARUS                        5               1        2    4035
24 months   PROBIT           BELARUS                        6               0      262    4035
24 months   PROBIT           BELARUS                        6               1        3    4035
24 months   PROBIT           BELARUS                        7               0      369    4035
24 months   PROBIT           BELARUS                        7               1        4    4035
24 months   PROBIT           BELARUS                        8               0      350    4035
24 months   PROBIT           BELARUS                        8               1        3    4035
24 months   PROBIT           BELARUS                        9               0      376    4035
24 months   PROBIT           BELARUS                        9               1        6    4035
24 months   PROBIT           BELARUS                        10              0      381    4035
24 months   PROBIT           BELARUS                        10              1       12    4035
24 months   PROBIT           BELARUS                        11              0      379    4035
24 months   PROBIT           BELARUS                        11              1       10    4035
24 months   PROBIT           BELARUS                        12              0      429    4035
24 months   PROBIT           BELARUS                        12              1       14    4035
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              1        0       6
24 months   ZVITAMBO         ZIMBABWE                       1               0      172    1640
24 months   ZVITAMBO         ZIMBABWE                       1               1       18    1640
24 months   ZVITAMBO         ZIMBABWE                       2               0      167    1640
24 months   ZVITAMBO         ZIMBABWE                       2               1       22    1640
24 months   ZVITAMBO         ZIMBABWE                       3               0      188    1640
24 months   ZVITAMBO         ZIMBABWE                       3               1       26    1640
24 months   ZVITAMBO         ZIMBABWE                       4               0      163    1640
24 months   ZVITAMBO         ZIMBABWE                       4               1       16    1640
24 months   ZVITAMBO         ZIMBABWE                       5               0      146    1640
24 months   ZVITAMBO         ZIMBABWE                       5               1       18    1640
24 months   ZVITAMBO         ZIMBABWE                       6               0      181    1640
24 months   ZVITAMBO         ZIMBABWE                       6               1       18    1640
24 months   ZVITAMBO         ZIMBABWE                       7               0       99    1640
24 months   ZVITAMBO         ZIMBABWE                       7               1       25    1640
24 months   ZVITAMBO         ZIMBABWE                       8               0      120    1640
24 months   ZVITAMBO         ZIMBABWE                       8               1       10    1640
24 months   ZVITAMBO         ZIMBABWE                       9               0       15    1640
24 months   ZVITAMBO         ZIMBABWE                       9               1        2    1640
24 months   ZVITAMBO         ZIMBABWE                       10              0       23    1640
24 months   ZVITAMBO         ZIMBABWE                       10              1        2    1640
24 months   ZVITAMBO         ZIMBABWE                       11              0       61    1640
24 months   ZVITAMBO         ZIMBABWE                       11              1        6    1640
24 months   ZVITAMBO         ZIMBABWE                       12              0      127    1640
24 months   ZVITAMBO         ZIMBABWE                       12              1       15    1640


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




# Results Detail

## Results Plots
![](/tmp/67172403-986c-43a5-9bec-8c96894c9f0f/4b0904c5-78dd-46cd-9702-b3cac7ed07c0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/67172403-986c-43a5-9bec-8c96894c9f0f/4b0904c5-78dd-46cd-9702-b3cac7ed07c0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/67172403-986c-43a5-9bec-8c96894c9f0f/4b0904c5-78dd-46cd-9702-b3cac7ed07c0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/67172403-986c-43a5-9bec-8c96894c9f0f/4b0904c5-78dd-46cd-9702-b3cac7ed07c0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       JiVitA-3   BANGLADESH   1                    NA                0.1316288    0.1161609   0.1470967
Birth       JiVitA-3   BANGLADESH   2                    NA                0.1072248    0.0913274   0.1231221
Birth       JiVitA-3   BANGLADESH   3                    NA                0.0864078    0.0729427   0.0998728
Birth       JiVitA-3   BANGLADESH   4                    NA                0.0678308    0.0546504   0.0810111
Birth       JiVitA-3   BANGLADESH   5                    NA                0.0984361    0.0785934   0.1182787
Birth       JiVitA-3   BANGLADESH   6                    NA                0.0927093    0.0719655   0.1134530
Birth       JiVitA-3   BANGLADESH   7                    NA                0.1000000    0.0822809   0.1177191
Birth       JiVitA-3   BANGLADESH   8                    NA                0.1078717    0.0920646   0.1236788
Birth       JiVitA-3   BANGLADESH   9                    NA                0.0970446    0.0843008   0.1097883
Birth       JiVitA-3   BANGLADESH   10                   NA                0.1194399    0.1057957   0.1330840
Birth       JiVitA-3   BANGLADESH   11                   NA                0.1317486    0.1177266   0.1457705
Birth       JiVitA-3   BANGLADESH   12                   NA                0.1281481    0.1140973   0.1421990
Birth       ZVITAMBO   ZIMBABWE     1                    NA                0.0422535    0.0315182   0.0529888
Birth       ZVITAMBO   ZIMBABWE     2                    NA                0.0422671    0.0300445   0.0544896
Birth       ZVITAMBO   ZIMBABWE     3                    NA                0.0358392    0.0250670   0.0466114
Birth       ZVITAMBO   ZIMBABWE     4                    NA                0.0355030    0.0241129   0.0468931
Birth       ZVITAMBO   ZIMBABWE     5                    NA                0.0348606    0.0235141   0.0462070
Birth       ZVITAMBO   ZIMBABWE     6                    NA                0.0387665    0.0275358   0.0499973
Birth       ZVITAMBO   ZIMBABWE     7                    NA                0.0381679    0.0272307   0.0491051
Birth       ZVITAMBO   ZIMBABWE     8                    NA                0.0202922    0.0124186   0.0281658
Birth       ZVITAMBO   ZIMBABWE     9                    NA                0.0151286    0.0085484   0.0217088
Birth       ZVITAMBO   ZIMBABWE     10                   NA                0.0334288    0.0225403   0.0443173
Birth       ZVITAMBO   ZIMBABWE     11                   NA                0.0280702    0.0184817   0.0376587
Birth       ZVITAMBO   ZIMBABWE     12                   NA                0.0220820    0.0139934   0.0301706
6 months    JiVitA-3   BANGLADESH   1                    NA                0.0615385    0.0482632   0.0748137
6 months    JiVitA-3   BANGLADESH   2                    NA                0.0481419    0.0351596   0.0611242
6 months    JiVitA-3   BANGLADESH   3                    NA                0.0541872    0.0414923   0.0668820
6 months    JiVitA-3   BANGLADESH   4                    NA                0.0528967    0.0394477   0.0663458
6 months    JiVitA-3   BANGLADESH   5                    NA                0.0704348    0.0554510   0.0854185
6 months    JiVitA-3   BANGLADESH   6                    NA                0.0516796    0.0388430   0.0645162
6 months    JiVitA-3   BANGLADESH   7                    NA                0.0591527    0.0462450   0.0720604
6 months    JiVitA-3   BANGLADESH   8                    NA                0.0538147    0.0421072   0.0655222
6 months    JiVitA-3   BANGLADESH   9                    NA                0.0658065    0.0511590   0.0804539
6 months    JiVitA-3   BANGLADESH   10                   NA                0.0702479    0.0573396   0.0831563
6 months    JiVitA-3   BANGLADESH   11                   NA                0.0713857    0.0584768   0.0842946
6 months    JiVitA-3   BANGLADESH   12                   NA                0.0614394    0.0496656   0.0732133
6 months    PROBIT     BELARUS      1                    NA                0.0136116    0.0048996   0.0223236
6 months    PROBIT     BELARUS      2                    NA                0.0147213    0.0052151   0.0242276
6 months    PROBIT     BELARUS      3                    NA                0.0143627    0.0046679   0.0240574
6 months    PROBIT     BELARUS      4                    NA                0.0121609    0.0006440   0.0236778
6 months    PROBIT     BELARUS      5                    NA                0.0082117   -0.0022912   0.0187145
6 months    PROBIT     BELARUS      6                    NA                0.0125000    0.0013346   0.0236654
6 months    PROBIT     BELARUS      7                    NA                0.0102564   -0.0010911   0.0216039
6 months    PROBIT     BELARUS      8                    NA                0.0100134    0.0008811   0.0191456
6 months    PROBIT     BELARUS      9                    NA                0.0087779    0.0033644   0.0141913
6 months    PROBIT     BELARUS      10                   NA                0.0101857    0.0010305   0.0193410
6 months    PROBIT     BELARUS      11                   NA                0.0144745    0.0065769   0.0223721
6 months    PROBIT     BELARUS      12                   NA                0.0082063    0.0003388   0.0160739
6 months    ZVITAMBO   ZIMBABWE     1                    NA                0.0337349    0.0214514   0.0460184
6 months    ZVITAMBO   ZIMBABWE     2                    NA                0.0328407    0.0186854   0.0469960
6 months    ZVITAMBO   ZIMBABWE     3                    NA                0.0638587    0.0461936   0.0815237
6 months    ZVITAMBO   ZIMBABWE     4                    NA                0.0367647    0.0226198   0.0509096
6 months    ZVITAMBO   ZIMBABWE     5                    NA                0.0424528    0.0267825   0.0581232
6 months    ZVITAMBO   ZIMBABWE     6                    NA                0.0470588    0.0311414   0.0629762
6 months    ZVITAMBO   ZIMBABWE     7                    NA                0.0533333    0.0363814   0.0702853
6 months    ZVITAMBO   ZIMBABWE     8                    NA                0.0299479    0.0178927   0.0420031
6 months    ZVITAMBO   ZIMBABWE     9                    NA                0.0324594    0.0201861   0.0447327
6 months    ZVITAMBO   ZIMBABWE     10                   NA                0.0350318    0.0206511   0.0494126
6 months    ZVITAMBO   ZIMBABWE     11                   NA                0.0394218    0.0255952   0.0532484
6 months    ZVITAMBO   ZIMBABWE     12                   NA                0.0404624    0.0273307   0.0535942
24 months   JiVitA-3   BANGLADESH   1                    NA                0.1645390    0.1342531   0.1948249
24 months   JiVitA-3   BANGLADESH   2                    NA                0.1871921    0.1543524   0.2200318
24 months   JiVitA-3   BANGLADESH   3                    NA                0.1506849    0.1241057   0.1772642
24 months   JiVitA-3   BANGLADESH   4                    NA                0.1182994    0.0869376   0.1496613
24 months   JiVitA-3   BANGLADESH   5                    NA                0.1641414    0.1247646   0.2035183
24 months   JiVitA-3   BANGLADESH   6                    NA                0.1400709    0.1099774   0.1701645
24 months   JiVitA-3   BANGLADESH   7                    NA                0.1294299    0.1024151   0.1564447
24 months   JiVitA-3   BANGLADESH   8                    NA                0.1327160    0.1063806   0.1590515
24 months   JiVitA-3   BANGLADESH   9                    NA                0.1251719    0.0994774   0.1508665
24 months   JiVitA-3   BANGLADESH   10                   NA                0.1423729    0.1189227   0.1658231
24 months   JiVitA-3   BANGLADESH   11                   NA                0.1936170    0.1684307   0.2188034
24 months   JiVitA-3   BANGLADESH   12                   NA                0.1857835    0.1616065   0.2099606
24 months   Keneba     GAMBIA       1                    NA                0.1133333    0.0625890   0.1640776
24 months   Keneba     GAMBIA       2                    NA                0.0812500    0.0389028   0.1235972
24 months   Keneba     GAMBIA       3                    NA                0.1006289    0.0538547   0.1474031
24 months   Keneba     GAMBIA       4                    NA                0.1085714    0.0624656   0.1546773
24 months   Keneba     GAMBIA       5                    NA                0.0659341    0.0298694   0.1019987
24 months   Keneba     GAMBIA       6                    NA                0.0606061    0.0198897   0.1013224
24 months   Keneba     GAMBIA       7                    NA                0.0594059    0.0132923   0.1055196
24 months   Keneba     GAMBIA       8                    NA                0.0652174    0.0147493   0.1156855
24 months   Keneba     GAMBIA       9                    NA                0.0444444    0.0096713   0.0792176
24 months   Keneba     GAMBIA       10                   NA                0.1066667    0.0572527   0.1560806
24 months   Keneba     GAMBIA       11                   NA                0.0617978    0.0264144   0.0971811
24 months   Keneba     GAMBIA       12                   NA                0.0900901    0.0368118   0.1433684


### Parameter: E(Y)


agecat      studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3   BANGLADESH   NA                   NA                0.1090180   0.1044666   0.1135695
Birth       ZVITAMBO   ZIMBABWE     NA                   NA                0.0318559   0.0289336   0.0347781
6 months    JiVitA-3   BANGLADESH   NA                   NA                0.0606746   0.0568229   0.0645262
6 months    PROBIT     BELARUS      NA                   NA                0.0112310   0.0054733   0.0169886
6 months    ZVITAMBO   ZIMBABWE     NA                   NA                0.0404891   0.0363397   0.0446385
24 months   JiVitA-3   BANGLADESH   NA                   NA                0.1560473   0.1472898   0.1648047
24 months   Keneba     GAMBIA       NA                   NA                0.0811594   0.0682689   0.0940499


### Parameter: RR


agecat      studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3   BANGLADESH   2                    1                 0.8145997   0.6717145   0.9878790
Birth       JiVitA-3   BANGLADESH   3                    1                 0.6564504   0.5404977   0.7972784
Birth       JiVitA-3   BANGLADESH   4                    1                 0.5153186   0.4115897   0.6451893
Birth       JiVitA-3   BANGLADESH   5                    1                 0.7478308   0.5947039   0.9403854
Birth       JiVitA-3   BANGLADESH   6                    1                 0.7043237   0.5467040   0.9073865
Birth       JiVitA-3   BANGLADESH   7                    1                 0.7597122   0.6135526   0.9406899
Birth       JiVitA-3   BANGLADESH   8                    1                 0.8195147   0.6761919   0.9932155
Birth       JiVitA-3   BANGLADESH   9                    1                 0.7372593   0.6233007   0.8720532
Birth       JiVitA-3   BANGLADESH   10                   1                 0.9073993   0.7737910   1.0640773
Birth       JiVitA-3   BANGLADESH   11                   1                 1.0009102   0.8559643   1.1704006
Birth       JiVitA-3   BANGLADESH   12                   1                 0.9735572   0.8249064   1.1489953
Birth       ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO   ZIMBABWE     2                    1                 1.0003202   0.6807147   1.4699852
Birth       ZVITAMBO   ZIMBABWE     3                    1                 0.8481935   0.5722313   1.2572401
Birth       ZVITAMBO   ZIMBABWE     4                    1                 0.8402367   0.5580474   1.2651215
Birth       ZVITAMBO   ZIMBABWE     5                    1                 0.8250332   0.5459466   1.2467883
Birth       ZVITAMBO   ZIMBABWE     6                    1                 0.9174743   0.6240906   1.3487770
Birth       ZVITAMBO   ZIMBABWE     7                    1                 0.9033079   0.6159067   1.3248194
Birth       ZVITAMBO   ZIMBABWE     8                    1                 0.4802489   0.3020261   0.7636394
Birth       ZVITAMBO   ZIMBABWE     9                    1                 0.3580434   0.2163584   0.5925126
Birth       ZVITAMBO   ZIMBABWE     10                   1                 0.7911493   0.5234251   1.1958105
Birth       ZVITAMBO   ZIMBABWE     11                   1                 0.6643275   0.4340058   1.0168782
Birth       ZVITAMBO   ZIMBABWE     12                   1                 0.5226078   0.3346363   0.8161665
6 months    JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3   BANGLADESH   2                    1                 0.7823057   0.5548893   1.1029268
6 months    JiVitA-3   BANGLADESH   3                    1                 0.8805419   0.6371710   1.2168695
6 months    JiVitA-3   BANGLADESH   4                    1                 0.8595718   0.6145712   1.2022425
6 months    JiVitA-3   BANGLADESH   5                    1                 1.1445652   0.8403779   1.5588576
6 months    JiVitA-3   BANGLADESH   6                    1                 0.8397933   0.6050156   1.1656770
6 months    JiVitA-3   BANGLADESH   7                    1                 0.9612310   0.7082232   1.3046240
6 months    JiVitA-3   BANGLADESH   8                    1                 0.8744891   0.6441231   1.1872439
6 months    JiVitA-3   BANGLADESH   9                    1                 1.0693548   0.7894693   1.4484665
6 months    JiVitA-3   BANGLADESH   10                   1                 1.1415289   0.8551549   1.5238038
6 months    JiVitA-3   BANGLADESH   11                   1                 1.1600180   0.8695470   1.5475204
6 months    JiVitA-3   BANGLADESH   12                   1                 0.9983909   0.7488244   1.3311322
6 months    PROBIT     BELARUS      1                    1                 1.0000000   1.0000000   1.0000000
6 months    PROBIT     BELARUS      2                    1                 1.0815282   0.5453671   2.1448000
6 months    PROBIT     BELARUS      3                    1                 1.0551765   0.5436692   2.0479318
6 months    PROBIT     BELARUS      4                    1                 0.8934206   0.3107871   2.5683193
6 months    PROBIT     BELARUS      5                    1                 0.6032847   0.1869350   1.9469458
6 months    PROBIT     BELARUS      6                    1                 0.9183333   0.3255295   2.5906598
6 months    PROBIT     BELARUS      7                    1                 0.7535043   0.2126356   2.6701485
6 months    PROBIT     BELARUS      8                    1                 0.7356475   0.2793967   1.9369493
6 months    PROBIT     BELARUS      9                    1                 0.6448796   0.3207742   1.2964562
6 months    PROBIT     BELARUS      10                   1                 0.7483124   0.3242502   1.7269732
6 months    PROBIT     BELARUS      11                   1                 1.0633942   0.5738726   1.9704847
6 months    PROBIT     BELARUS      12                   1                 0.6028918   0.2653008   1.3700620
6 months    ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO   ZIMBABWE     2                    1                 0.9734928   0.5537143   1.7115113
6 months    ZVITAMBO   ZIMBABWE     3                    1                 1.8929542   1.1982463   2.9904332
6 months    ZVITAMBO   ZIMBABWE     4                    1                 1.0898109   0.6416448   1.8510053
6 months    ZVITAMBO   ZIMBABWE     5                    1                 1.2584232   0.7492875   2.1135130
6 months    ZVITAMBO   ZIMBABWE     6                    1                 1.3949580   0.8486417   2.2929673
6 months    ZVITAMBO   ZIMBABWE     7                    1                 1.5809524   0.9750130   2.5634638
6 months    ZVITAMBO   ZIMBABWE     8                    1                 0.8877418   0.5158897   1.5276240
6 months    ZVITAMBO   ZIMBABWE     9                    1                 0.9621901   0.5692288   1.6264283
6 months    ZVITAMBO   ZIMBABWE     10                   1                 1.0384440   0.5998961   1.7975881
6 months    ZVITAMBO   ZIMBABWE     11                   1                 1.1685752   0.7048426   1.9374083
6 months    ZVITAMBO   ZIMBABWE     12                   1                 1.1994220   0.7364459   1.9534539
24 months   JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-3   BANGLADESH   2                    1                 1.1376762   0.8882093   1.4572097
24 months   JiVitA-3   BANGLADESH   3                    1                 0.9158007   0.7104702   1.1804729
24 months   JiVitA-3   BANGLADESH   4                    1                 0.7189751   0.5200822   0.9939298
24 months   JiVitA-3   BANGLADESH   5                    1                 0.9975836   0.7349504   1.3540683
24 months   JiVitA-3   BANGLADESH   6                    1                 0.8512931   0.6415660   1.1295798
24 months   JiVitA-3   BANGLADESH   7                    1                 0.7866213   0.5953690   1.0393102
24 months   JiVitA-3   BANGLADESH   8                    1                 0.8065932   0.6156164   1.0568151
24 months   JiVitA-3   BANGLADESH   9                    1                 0.7607433   0.5770110   1.0029797
24 months   JiVitA-3   BANGLADESH   10                   1                 0.8652835   0.6785652   1.1033803
24 months   JiVitA-3   BANGLADESH   11                   1                 1.1767241   0.9450955   1.4651214
24 months   JiVitA-3   BANGLADESH   12                   1                 1.1291154   0.8981292   1.4195079
24 months   Keneba     GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
24 months   Keneba     GAMBIA       2                    1                 0.7169118   0.3606266   1.4251930
24 months   Keneba     GAMBIA       3                    1                 0.8879023   0.4656665   1.6929940
24 months   Keneba     GAMBIA       4                    1                 0.9579832   0.5168394   1.7756615
24 months   Keneba     GAMBIA       5                    1                 0.5817712   0.2869216   1.1796174
24 months   Keneba     GAMBIA       6                    1                 0.5347594   0.2385229   1.1989105
24 months   Keneba     GAMBIA       7                    1                 0.5241701   0.2139399   1.2842590
24 months   Keneba     GAMBIA       8                    1                 0.5754476   0.2353578   1.4069640
24 months   Keneba     GAMBIA       9                    1                 0.3921569   0.1592076   0.9659527
24 months   Keneba     GAMBIA       10                   1                 0.9411765   0.4941619   1.7925565
24 months   Keneba     GAMBIA       11                   1                 0.5452743   0.2636023   1.1279265
24 months   Keneba     GAMBIA       12                   1                 0.7949126   0.3785950   1.6690290


### Parameter: PAR


agecat      studyid    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3   BANGLADESH   1                    NA                -0.0226108   -0.0371965   -0.0080250
Birth       ZVITAMBO   ZIMBABWE     1                    NA                -0.0103977   -0.0204662   -0.0003291
6 months    JiVitA-3   BANGLADESH   1                    NA                -0.0008639   -0.0137205    0.0119927
6 months    PROBIT     BELARUS      1                    NA                -0.0023807   -0.0094222    0.0046609
6 months    ZVITAMBO   ZIMBABWE     1                    NA                 0.0067542   -0.0050445    0.0185529
24 months   JiVitA-3   BANGLADESH   1                    NA                -0.0084917   -0.0373182    0.0203347
24 months   Keneba     GAMBIA       1                    NA                -0.0321739   -0.0800626    0.0157148


### Parameter: PAF


agecat      studyid    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3   BANGLADESH   1                    NA                -0.2074038   -0.3487813   -0.0808452
Birth       ZVITAMBO   ZIMBABWE     1                    NA                -0.3263973   -0.6816549   -0.0461895
6 months    JiVitA-3   BANGLADESH   1                    NA                -0.0142383   -0.2499392    0.1770165
6 months    PROBIT     BELARUS      1                    NA                -0.2119721   -1.0640577    0.2883550
6 months    ZVITAMBO   ZIMBABWE     1                    NA                 0.1668143   -0.1813862    0.4123865
24 months   JiVitA-3   BANGLADESH   1                    NA                -0.0544177   -0.2562774    0.1150069
24 months   Keneba     GAMBIA       1                    NA                -0.3964286   -1.1268649    0.0831516
