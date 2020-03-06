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

agecat      studyid          country                        brthmon    stunted   n_cell       n
----------  ---------------  -----------------------------  --------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                0        7      92
Birth       CMC-V-BCS-2002   INDIA                          1                1        2      92
Birth       CMC-V-BCS-2002   INDIA                          2                0        0      92
Birth       CMC-V-BCS-2002   INDIA                          2                1        1      92
Birth       CMC-V-BCS-2002   INDIA                          3                0        7      92
Birth       CMC-V-BCS-2002   INDIA                          3                1        1      92
Birth       CMC-V-BCS-2002   INDIA                          4                0        7      92
Birth       CMC-V-BCS-2002   INDIA                          4                1        2      92
Birth       CMC-V-BCS-2002   INDIA                          5                0       11      92
Birth       CMC-V-BCS-2002   INDIA                          5                1        1      92
Birth       CMC-V-BCS-2002   INDIA                          6                0        8      92
Birth       CMC-V-BCS-2002   INDIA                          6                1        1      92
Birth       CMC-V-BCS-2002   INDIA                          7                0        7      92
Birth       CMC-V-BCS-2002   INDIA                          7                1        0      92
Birth       CMC-V-BCS-2002   INDIA                          8                0        3      92
Birth       CMC-V-BCS-2002   INDIA                          8                1        1      92
Birth       CMC-V-BCS-2002   INDIA                          9                0        5      92
Birth       CMC-V-BCS-2002   INDIA                          9                1        3      92
Birth       CMC-V-BCS-2002   INDIA                          10               0        8      92
Birth       CMC-V-BCS-2002   INDIA                          10               1        2      92
Birth       CMC-V-BCS-2002   INDIA                          11               0       10      92
Birth       CMC-V-BCS-2002   INDIA                          11               1        1      92
Birth       CMC-V-BCS-2002   INDIA                          12               0        2      92
Birth       CMC-V-BCS-2002   INDIA                          12               1        2      92
Birth       CMIN             BANGLADESH                     1                0        1      26
Birth       CMIN             BANGLADESH                     1                1        4      26
Birth       CMIN             BANGLADESH                     2                0        4      26
Birth       CMIN             BANGLADESH                     2                1        0      26
Birth       CMIN             BANGLADESH                     3                0        0      26
Birth       CMIN             BANGLADESH                     3                1        0      26
Birth       CMIN             BANGLADESH                     4                0        2      26
Birth       CMIN             BANGLADESH                     4                1        1      26
Birth       CMIN             BANGLADESH                     5                0        1      26
Birth       CMIN             BANGLADESH                     5                1        0      26
Birth       CMIN             BANGLADESH                     6                0        0      26
Birth       CMIN             BANGLADESH                     6                1        0      26
Birth       CMIN             BANGLADESH                     7                0        4      26
Birth       CMIN             BANGLADESH                     7                1        0      26
Birth       CMIN             BANGLADESH                     8                0        1      26
Birth       CMIN             BANGLADESH                     8                1        3      26
Birth       CMIN             BANGLADESH                     9                0        1      26
Birth       CMIN             BANGLADESH                     9                1        0      26
Birth       CMIN             BANGLADESH                     10               0        1      26
Birth       CMIN             BANGLADESH                     10               1        0      26
Birth       CMIN             BANGLADESH                     11               0        2      26
Birth       CMIN             BANGLADESH                     11               1        1      26
Birth       CMIN             BANGLADESH                     12               0        0      26
Birth       CMIN             BANGLADESH                     12               1        0      26
Birth       CONTENT          PERU                           1                0        0       2
Birth       CONTENT          PERU                           1                1        0       2
Birth       CONTENT          PERU                           2                0        0       2
Birth       CONTENT          PERU                           2                1        0       2
Birth       CONTENT          PERU                           3                0        0       2
Birth       CONTENT          PERU                           3                1        0       2
Birth       CONTENT          PERU                           4                0        0       2
Birth       CONTENT          PERU                           4                1        0       2
Birth       CONTENT          PERU                           5                0        2       2
Birth       CONTENT          PERU                           5                1        0       2
Birth       CONTENT          PERU                           6                0        0       2
Birth       CONTENT          PERU                           6                1        0       2
Birth       CONTENT          PERU                           7                0        0       2
Birth       CONTENT          PERU                           7                1        0       2
Birth       CONTENT          PERU                           8                0        0       2
Birth       CONTENT          PERU                           8                1        0       2
Birth       CONTENT          PERU                           9                0        0       2
Birth       CONTENT          PERU                           9                1        0       2
Birth       CONTENT          PERU                           10               0        0       2
Birth       CONTENT          PERU                           10               1        0       2
Birth       CONTENT          PERU                           11               0        0       2
Birth       CONTENT          PERU                           11               1        0       2
Birth       CONTENT          PERU                           12               0        0       2
Birth       CONTENT          PERU                           12               1        0       2
Birth       EE               PAKISTAN                       1                0       26     240
Birth       EE               PAKISTAN                       1                1       35     240
Birth       EE               PAKISTAN                       2                0       31     240
Birth       EE               PAKISTAN                       2                1       18     240
Birth       EE               PAKISTAN                       3                0       15     240
Birth       EE               PAKISTAN                       3                1        9     240
Birth       EE               PAKISTAN                       4                0        5     240
Birth       EE               PAKISTAN                       4                1        5     240
Birth       EE               PAKISTAN                       5                0        0     240
Birth       EE               PAKISTAN                       5                1        0     240
Birth       EE               PAKISTAN                       6                0        0     240
Birth       EE               PAKISTAN                       6                1        0     240
Birth       EE               PAKISTAN                       7                0        0     240
Birth       EE               PAKISTAN                       7                1        0     240
Birth       EE               PAKISTAN                       8                0        0     240
Birth       EE               PAKISTAN                       8                1        0     240
Birth       EE               PAKISTAN                       9                0        0     240
Birth       EE               PAKISTAN                       9                1        0     240
Birth       EE               PAKISTAN                       10               0        0     240
Birth       EE               PAKISTAN                       10               1        0     240
Birth       EE               PAKISTAN                       11               0       33     240
Birth       EE               PAKISTAN                       11               1       14     240
Birth       EE               PAKISTAN                       12               0       30     240
Birth       EE               PAKISTAN                       12               1       19     240
Birth       GMS-Nepal        NEPAL                          1                0        0     696
Birth       GMS-Nepal        NEPAL                          1                1        0     696
Birth       GMS-Nepal        NEPAL                          2                0        0     696
Birth       GMS-Nepal        NEPAL                          2                1        0     696
Birth       GMS-Nepal        NEPAL                          3                0        0     696
Birth       GMS-Nepal        NEPAL                          3                1        0     696
Birth       GMS-Nepal        NEPAL                          4                0        1     696
Birth       GMS-Nepal        NEPAL                          4                1        0     696
Birth       GMS-Nepal        NEPAL                          5                0        0     696
Birth       GMS-Nepal        NEPAL                          5                1        0     696
Birth       GMS-Nepal        NEPAL                          6                0      140     696
Birth       GMS-Nepal        NEPAL                          6                1       32     696
Birth       GMS-Nepal        NEPAL                          7                0      217     696
Birth       GMS-Nepal        NEPAL                          7                1       52     696
Birth       GMS-Nepal        NEPAL                          8                0      216     696
Birth       GMS-Nepal        NEPAL                          8                1       38     696
Birth       GMS-Nepal        NEPAL                          9                0        0     696
Birth       GMS-Nepal        NEPAL                          9                1        0     696
Birth       GMS-Nepal        NEPAL                          10               0        0     696
Birth       GMS-Nepal        NEPAL                          10               1        0     696
Birth       GMS-Nepal        NEPAL                          11               0        0     696
Birth       GMS-Nepal        NEPAL                          11               1        0     696
Birth       GMS-Nepal        NEPAL                          12               0        0     696
Birth       GMS-Nepal        NEPAL                          12               1        0     696
Birth       IRC              INDIA                          1                0       28     388
Birth       IRC              INDIA                          1                1        7     388
Birth       IRC              INDIA                          2                0       24     388
Birth       IRC              INDIA                          2                1        2     388
Birth       IRC              INDIA                          3                0       22     388
Birth       IRC              INDIA                          3                1        4     388
Birth       IRC              INDIA                          4                0       19     388
Birth       IRC              INDIA                          4                1        2     388
Birth       IRC              INDIA                          5                0       21     388
Birth       IRC              INDIA                          5                1        1     388
Birth       IRC              INDIA                          6                0       30     388
Birth       IRC              INDIA                          6                1        4     388
Birth       IRC              INDIA                          7                0       31     388
Birth       IRC              INDIA                          7                1        4     388
Birth       IRC              INDIA                          8                0       35     388
Birth       IRC              INDIA                          8                1        3     388
Birth       IRC              INDIA                          9                0       23     388
Birth       IRC              INDIA                          9                1        2     388
Birth       IRC              INDIA                          10               0       34     388
Birth       IRC              INDIA                          10               1        4     388
Birth       IRC              INDIA                          11               0       33     388
Birth       IRC              INDIA                          11               1        6     388
Birth       IRC              INDIA                          12               0       43     388
Birth       IRC              INDIA                          12               1        6     388
Birth       Keneba           GAMBIA                         1                0      151    1543
Birth       Keneba           GAMBIA                         1                1       12    1543
Birth       Keneba           GAMBIA                         2                0      142    1543
Birth       Keneba           GAMBIA                         2                1        5    1543
Birth       Keneba           GAMBIA                         3                0      161    1543
Birth       Keneba           GAMBIA                         3                1        4    1543
Birth       Keneba           GAMBIA                         4                0      103    1543
Birth       Keneba           GAMBIA                         4                1        2    1543
Birth       Keneba           GAMBIA                         5                0      105    1543
Birth       Keneba           GAMBIA                         5                1        3    1543
Birth       Keneba           GAMBIA                         6                0       85    1543
Birth       Keneba           GAMBIA                         6                1        4    1543
Birth       Keneba           GAMBIA                         7                0       71    1543
Birth       Keneba           GAMBIA                         7                1        5    1543
Birth       Keneba           GAMBIA                         8                0      119    1543
Birth       Keneba           GAMBIA                         8                1        6    1543
Birth       Keneba           GAMBIA                         9                0      116    1543
Birth       Keneba           GAMBIA                         9                1        8    1543
Birth       Keneba           GAMBIA                         10               0      164    1543
Birth       Keneba           GAMBIA                         10               1       15    1543
Birth       Keneba           GAMBIA                         11               0      113    1543
Birth       Keneba           GAMBIA                         11               1       11    1543
Birth       Keneba           GAMBIA                         12               0      130    1543
Birth       Keneba           GAMBIA                         12               1        8    1543
Birth       MAL-ED           BANGLADESH                     1                0       16     231
Birth       MAL-ED           BANGLADESH                     1                1        4     231
Birth       MAL-ED           BANGLADESH                     2                0       18     231
Birth       MAL-ED           BANGLADESH                     2                1        5     231
Birth       MAL-ED           BANGLADESH                     3                0       17     231
Birth       MAL-ED           BANGLADESH                     3                1        7     231
Birth       MAL-ED           BANGLADESH                     4                0       19     231
Birth       MAL-ED           BANGLADESH                     4                1        0     231
Birth       MAL-ED           BANGLADESH                     5                0       13     231
Birth       MAL-ED           BANGLADESH                     5                1        5     231
Birth       MAL-ED           BANGLADESH                     6                0        6     231
Birth       MAL-ED           BANGLADESH                     6                1        2     231
Birth       MAL-ED           BANGLADESH                     7                0       10     231
Birth       MAL-ED           BANGLADESH                     7                1        4     231
Birth       MAL-ED           BANGLADESH                     8                0       21     231
Birth       MAL-ED           BANGLADESH                     8                1        5     231
Birth       MAL-ED           BANGLADESH                     9                0       15     231
Birth       MAL-ED           BANGLADESH                     9                1        3     231
Birth       MAL-ED           BANGLADESH                     10               0       16     231
Birth       MAL-ED           BANGLADESH                     10               1        5     231
Birth       MAL-ED           BANGLADESH                     11               0       13     231
Birth       MAL-ED           BANGLADESH                     11               1        2     231
Birth       MAL-ED           BANGLADESH                     12               0       23     231
Birth       MAL-ED           BANGLADESH                     12               1        2     231
Birth       MAL-ED           BRAZIL                         1                0        5      65
Birth       MAL-ED           BRAZIL                         1                1        0      65
Birth       MAL-ED           BRAZIL                         2                0       10      65
Birth       MAL-ED           BRAZIL                         2                1        0      65
Birth       MAL-ED           BRAZIL                         3                0        7      65
Birth       MAL-ED           BRAZIL                         3                1        0      65
Birth       MAL-ED           BRAZIL                         4                0        4      65
Birth       MAL-ED           BRAZIL                         4                1        0      65
Birth       MAL-ED           BRAZIL                         5                0        1      65
Birth       MAL-ED           BRAZIL                         5                1        1      65
Birth       MAL-ED           BRAZIL                         6                0        5      65
Birth       MAL-ED           BRAZIL                         6                1        0      65
Birth       MAL-ED           BRAZIL                         7                0        4      65
Birth       MAL-ED           BRAZIL                         7                1        2      65
Birth       MAL-ED           BRAZIL                         8                0        5      65
Birth       MAL-ED           BRAZIL                         8                1        2      65
Birth       MAL-ED           BRAZIL                         9                0        4      65
Birth       MAL-ED           BRAZIL                         9                1        2      65
Birth       MAL-ED           BRAZIL                         10               0        5      65
Birth       MAL-ED           BRAZIL                         10               1        0      65
Birth       MAL-ED           BRAZIL                         11               0        4      65
Birth       MAL-ED           BRAZIL                         11               1        0      65
Birth       MAL-ED           BRAZIL                         12               0        2      65
Birth       MAL-ED           BRAZIL                         12               1        2      65
Birth       MAL-ED           INDIA                          1                0        2      47
Birth       MAL-ED           INDIA                          1                1        0      47
Birth       MAL-ED           INDIA                          2                0        6      47
Birth       MAL-ED           INDIA                          2                1        0      47
Birth       MAL-ED           INDIA                          3                0        3      47
Birth       MAL-ED           INDIA                          3                1        0      47
Birth       MAL-ED           INDIA                          4                0        4      47
Birth       MAL-ED           INDIA                          4                1        2      47
Birth       MAL-ED           INDIA                          5                0        4      47
Birth       MAL-ED           INDIA                          5                1        0      47
Birth       MAL-ED           INDIA                          6                0        2      47
Birth       MAL-ED           INDIA                          6                1        0      47
Birth       MAL-ED           INDIA                          7                0        3      47
Birth       MAL-ED           INDIA                          7                1        0      47
Birth       MAL-ED           INDIA                          8                0        5      47
Birth       MAL-ED           INDIA                          8                1        3      47
Birth       MAL-ED           INDIA                          9                0        3      47
Birth       MAL-ED           INDIA                          9                1        1      47
Birth       MAL-ED           INDIA                          10               0        4      47
Birth       MAL-ED           INDIA                          10               1        2      47
Birth       MAL-ED           INDIA                          11               0        1      47
Birth       MAL-ED           INDIA                          11               1        2      47
Birth       MAL-ED           INDIA                          12               0        0      47
Birth       MAL-ED           INDIA                          12               1        0      47
Birth       MAL-ED           NEPAL                          1                0        2      27
Birth       MAL-ED           NEPAL                          1                1        0      27
Birth       MAL-ED           NEPAL                          2                0        2      27
Birth       MAL-ED           NEPAL                          2                1        0      27
Birth       MAL-ED           NEPAL                          3                0        1      27
Birth       MAL-ED           NEPAL                          3                1        0      27
Birth       MAL-ED           NEPAL                          4                0        2      27
Birth       MAL-ED           NEPAL                          4                1        0      27
Birth       MAL-ED           NEPAL                          5                0        2      27
Birth       MAL-ED           NEPAL                          5                1        1      27
Birth       MAL-ED           NEPAL                          6                0        2      27
Birth       MAL-ED           NEPAL                          6                1        0      27
Birth       MAL-ED           NEPAL                          7                0        2      27
Birth       MAL-ED           NEPAL                          7                1        0      27
Birth       MAL-ED           NEPAL                          8                0        1      27
Birth       MAL-ED           NEPAL                          8                1        0      27
Birth       MAL-ED           NEPAL                          9                0        2      27
Birth       MAL-ED           NEPAL                          9                1        0      27
Birth       MAL-ED           NEPAL                          10               0        4      27
Birth       MAL-ED           NEPAL                          10               1        0      27
Birth       MAL-ED           NEPAL                          11               0        4      27
Birth       MAL-ED           NEPAL                          11               1        1      27
Birth       MAL-ED           NEPAL                          12               0        1      27
Birth       MAL-ED           NEPAL                          12               1        0      27
Birth       MAL-ED           PERU                           1                0       25     233
Birth       MAL-ED           PERU                           1                1        5     233
Birth       MAL-ED           PERU                           2                0       16     233
Birth       MAL-ED           PERU                           2                1        2     233
Birth       MAL-ED           PERU                           3                0       17     233
Birth       MAL-ED           PERU                           3                1        3     233
Birth       MAL-ED           PERU                           4                0       13     233
Birth       MAL-ED           PERU                           4                1        2     233
Birth       MAL-ED           PERU                           5                0       21     233
Birth       MAL-ED           PERU                           5                1        1     233
Birth       MAL-ED           PERU                           6                0       10     233
Birth       MAL-ED           PERU                           6                1        1     233
Birth       MAL-ED           PERU                           7                0       17     233
Birth       MAL-ED           PERU                           7                1        2     233
Birth       MAL-ED           PERU                           8                0       16     233
Birth       MAL-ED           PERU                           8                1        0     233
Birth       MAL-ED           PERU                           9                0       19     233
Birth       MAL-ED           PERU                           9                1        0     233
Birth       MAL-ED           PERU                           10               0       21     233
Birth       MAL-ED           PERU                           10               1        0     233
Birth       MAL-ED           PERU                           11               0       21     233
Birth       MAL-ED           PERU                           11               1        7     233
Birth       MAL-ED           PERU                           12               0       11     233
Birth       MAL-ED           PERU                           12               1        3     233
Birth       MAL-ED           SOUTH AFRICA                   1                0        9     123
Birth       MAL-ED           SOUTH AFRICA                   1                1        1     123
Birth       MAL-ED           SOUTH AFRICA                   2                0       13     123
Birth       MAL-ED           SOUTH AFRICA                   2                1        0     123
Birth       MAL-ED           SOUTH AFRICA                   3                0        8     123
Birth       MAL-ED           SOUTH AFRICA                   3                1        1     123
Birth       MAL-ED           SOUTH AFRICA                   4                0        5     123
Birth       MAL-ED           SOUTH AFRICA                   4                1        1     123
Birth       MAL-ED           SOUTH AFRICA                   5                0        6     123
Birth       MAL-ED           SOUTH AFRICA                   5                1        0     123
Birth       MAL-ED           SOUTH AFRICA                   6                0        8     123
Birth       MAL-ED           SOUTH AFRICA                   6                1        0     123
Birth       MAL-ED           SOUTH AFRICA                   7                0       11     123
Birth       MAL-ED           SOUTH AFRICA                   7                1        2     123
Birth       MAL-ED           SOUTH AFRICA                   8                0        2     123
Birth       MAL-ED           SOUTH AFRICA                   8                1        1     123
Birth       MAL-ED           SOUTH AFRICA                   9                0       10     123
Birth       MAL-ED           SOUTH AFRICA                   9                1        0     123
Birth       MAL-ED           SOUTH AFRICA                   10               0       13     123
Birth       MAL-ED           SOUTH AFRICA                   10               1        0     123
Birth       MAL-ED           SOUTH AFRICA                   11               0       11     123
Birth       MAL-ED           SOUTH AFRICA                   11               1        3     123
Birth       MAL-ED           SOUTH AFRICA                   12               0       17     123
Birth       MAL-ED           SOUTH AFRICA                   12               1        1     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        9     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        1     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                0       13     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                1        3     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                0       11     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                1        1     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                0        6     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                1        2     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                0        9     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                1        1     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                0        8     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                1        3     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                0       13     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                1        1     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                0        6     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1        0     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                0        2     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                1        3     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               0        7     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               1        5     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               0       10     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               1        1     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0        8     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               1        2     125
Birth       NIH-Birth        BANGLADESH                     1                0       51     608
Birth       NIH-Birth        BANGLADESH                     1                1       19     608
Birth       NIH-Birth        BANGLADESH                     2                0       48     608
Birth       NIH-Birth        BANGLADESH                     2                1        8     608
Birth       NIH-Birth        BANGLADESH                     3                0       52     608
Birth       NIH-Birth        BANGLADESH                     3                1        7     608
Birth       NIH-Birth        BANGLADESH                     4                0       40     608
Birth       NIH-Birth        BANGLADESH                     4                1       11     608
Birth       NIH-Birth        BANGLADESH                     5                0       42     608
Birth       NIH-Birth        BANGLADESH                     5                1        5     608
Birth       NIH-Birth        BANGLADESH                     6                0       40     608
Birth       NIH-Birth        BANGLADESH                     6                1        6     608
Birth       NIH-Birth        BANGLADESH                     7                0       36     608
Birth       NIH-Birth        BANGLADESH                     7                1        4     608
Birth       NIH-Birth        BANGLADESH                     8                0       35     608
Birth       NIH-Birth        BANGLADESH                     8                1        5     608
Birth       NIH-Birth        BANGLADESH                     9                0       37     608
Birth       NIH-Birth        BANGLADESH                     9                1       10     608
Birth       NIH-Birth        BANGLADESH                     10               0       41     608
Birth       NIH-Birth        BANGLADESH                     10               1        7     608
Birth       NIH-Birth        BANGLADESH                     11               0       44     608
Birth       NIH-Birth        BANGLADESH                     11               1        8     608
Birth       NIH-Birth        BANGLADESH                     12               0       45     608
Birth       NIH-Birth        BANGLADESH                     12               1        7     608
Birth       PROBIT           BELARUS                        1                0      825   13893
Birth       PROBIT           BELARUS                        1                1        1   13893
Birth       PROBIT           BELARUS                        2                0      801   13893
Birth       PROBIT           BELARUS                        2                1        3   13893
Birth       PROBIT           BELARUS                        3                0      943   13893
Birth       PROBIT           BELARUS                        3                1        6   13893
Birth       PROBIT           BELARUS                        4                0      969   13893
Birth       PROBIT           BELARUS                        4                1        2   13893
Birth       PROBIT           BELARUS                        5                0      950   13893
Birth       PROBIT           BELARUS                        5                1        0   13893
Birth       PROBIT           BELARUS                        6                0     1021   13893
Birth       PROBIT           BELARUS                        6                1        0   13893
Birth       PROBIT           BELARUS                        7                0     1291   13893
Birth       PROBIT           BELARUS                        7                1        3   13893
Birth       PROBIT           BELARUS                        8                0     1309   13893
Birth       PROBIT           BELARUS                        8                1        3   13893
Birth       PROBIT           BELARUS                        9                0     1322   13893
Birth       PROBIT           BELARUS                        9                1        4   13893
Birth       PROBIT           BELARUS                        10               0     1495   13893
Birth       PROBIT           BELARUS                        10               1        7   13893
Birth       PROBIT           BELARUS                        11               0     1385   13893
Birth       PROBIT           BELARUS                        11               1        3   13893
Birth       PROBIT           BELARUS                        12               0     1548   13893
Birth       PROBIT           BELARUS                        12               1        2   13893
Birth       PROVIDE          BANGLADESH                     1                0       28     539
Birth       PROVIDE          BANGLADESH                     1                1        2     539
Birth       PROVIDE          BANGLADESH                     2                0       19     539
Birth       PROVIDE          BANGLADESH                     2                1        5     539
Birth       PROVIDE          BANGLADESH                     3                0       42     539
Birth       PROVIDE          BANGLADESH                     3                1        3     539
Birth       PROVIDE          BANGLADESH                     4                0       27     539
Birth       PROVIDE          BANGLADESH                     4                1        1     539
Birth       PROVIDE          BANGLADESH                     5                0       41     539
Birth       PROVIDE          BANGLADESH                     5                1        5     539
Birth       PROVIDE          BANGLADESH                     6                0       65     539
Birth       PROVIDE          BANGLADESH                     6                1       15     539
Birth       PROVIDE          BANGLADESH                     7                0       67     539
Birth       PROVIDE          BANGLADESH                     7                1        8     539
Birth       PROVIDE          BANGLADESH                     8                0       51     539
Birth       PROVIDE          BANGLADESH                     8                1        3     539
Birth       PROVIDE          BANGLADESH                     9                0       54     539
Birth       PROVIDE          BANGLADESH                     9                1        1     539
Birth       PROVIDE          BANGLADESH                     10               0       52     539
Birth       PROVIDE          BANGLADESH                     10               1        2     539
Birth       PROVIDE          BANGLADESH                     11               0       26     539
Birth       PROVIDE          BANGLADESH                     11               1        1     539
Birth       PROVIDE          BANGLADESH                     12               0       19     539
Birth       PROVIDE          BANGLADESH                     12               1        2     539
Birth       ResPak           PAKISTAN                       1                0        2      42
Birth       ResPak           PAKISTAN                       1                1        0      42
Birth       ResPak           PAKISTAN                       2                0        1      42
Birth       ResPak           PAKISTAN                       2                1        0      42
Birth       ResPak           PAKISTAN                       3                0        0      42
Birth       ResPak           PAKISTAN                       3                1        1      42
Birth       ResPak           PAKISTAN                       4                0        4      42
Birth       ResPak           PAKISTAN                       4                1        4      42
Birth       ResPak           PAKISTAN                       5                0        6      42
Birth       ResPak           PAKISTAN                       5                1        1      42
Birth       ResPak           PAKISTAN                       6                0        6      42
Birth       ResPak           PAKISTAN                       6                1        3      42
Birth       ResPak           PAKISTAN                       7                0        3      42
Birth       ResPak           PAKISTAN                       7                1        5      42
Birth       ResPak           PAKISTAN                       8                0        4      42
Birth       ResPak           PAKISTAN                       8                1        0      42
Birth       ResPak           PAKISTAN                       9                0        1      42
Birth       ResPak           PAKISTAN                       9                1        0      42
Birth       ResPak           PAKISTAN                       10               0        1      42
Birth       ResPak           PAKISTAN                       10               1        0      42
Birth       ResPak           PAKISTAN                       11               0        0      42
Birth       ResPak           PAKISTAN                       11               1        0      42
Birth       ResPak           PAKISTAN                       12               0        0      42
Birth       ResPak           PAKISTAN                       12               1        0      42
Birth       SAS-CompFeed     INDIA                          1                0       59    1252
Birth       SAS-CompFeed     INDIA                          1                1       27    1252
Birth       SAS-CompFeed     INDIA                          2                0       53    1252
Birth       SAS-CompFeed     INDIA                          2                1       24    1252
Birth       SAS-CompFeed     INDIA                          3                0       49    1252
Birth       SAS-CompFeed     INDIA                          3                1       20    1252
Birth       SAS-CompFeed     INDIA                          4                0       50    1252
Birth       SAS-CompFeed     INDIA                          4                1       12    1252
Birth       SAS-CompFeed     INDIA                          5                0       65    1252
Birth       SAS-CompFeed     INDIA                          5                1       23    1252
Birth       SAS-CompFeed     INDIA                          6                0       76    1252
Birth       SAS-CompFeed     INDIA                          6                1       28    1252
Birth       SAS-CompFeed     INDIA                          7                0       67    1252
Birth       SAS-CompFeed     INDIA                          7                1       33    1252
Birth       SAS-CompFeed     INDIA                          8                0       94    1252
Birth       SAS-CompFeed     INDIA                          8                1       50    1252
Birth       SAS-CompFeed     INDIA                          9                0      115    1252
Birth       SAS-CompFeed     INDIA                          9                1       32    1252
Birth       SAS-CompFeed     INDIA                          10               0      101    1252
Birth       SAS-CompFeed     INDIA                          10               1       41    1252
Birth       SAS-CompFeed     INDIA                          11               0       92    1252
Birth       SAS-CompFeed     INDIA                          11               1       27    1252
Birth       SAS-CompFeed     INDIA                          12               0       82    1252
Birth       SAS-CompFeed     INDIA                          12               1       32    1252
Birth       ZVITAMBO         ZIMBABWE                       1                0     1169   13875
Birth       ZVITAMBO         ZIMBABWE                       1                1      174   13875
Birth       ZVITAMBO         ZIMBABWE                       2                0      894   13875
Birth       ZVITAMBO         ZIMBABWE                       2                1      158   13875
Birth       ZVITAMBO         ZIMBABWE                       3                0     1028   13875
Birth       ZVITAMBO         ZIMBABWE                       3                1      135   13875
Birth       ZVITAMBO         ZIMBABWE                       4                0      883   13875
Birth       ZVITAMBO         ZIMBABWE                       4                1      109   13875
Birth       ZVITAMBO         ZIMBABWE                       5                0      889   13875
Birth       ZVITAMBO         ZIMBABWE                       5                1      128   13875
Birth       ZVITAMBO         ZIMBABWE                       6                0     1007   13875
Birth       ZVITAMBO         ZIMBABWE                       6                1      130   13875
Birth       ZVITAMBO         ZIMBABWE                       7                0     1056   13875
Birth       ZVITAMBO         ZIMBABWE                       7                1      120   13875
Birth       ZVITAMBO         ZIMBABWE                       8                0     1164   13875
Birth       ZVITAMBO         ZIMBABWE                       8                1       93   13875
Birth       ZVITAMBO         ZIMBABWE                       9                0     1217   13875
Birth       ZVITAMBO         ZIMBABWE                       9                1       82   13875
Birth       ZVITAMBO         ZIMBABWE                       10               0      958   13875
Birth       ZVITAMBO         ZIMBABWE                       10               1       83   13875
Birth       ZVITAMBO         ZIMBABWE                       11               0     1073   13875
Birth       ZVITAMBO         ZIMBABWE                       11               1      110   13875
Birth       ZVITAMBO         ZIMBABWE                       12               0     1103   13875
Birth       ZVITAMBO         ZIMBABWE                       12               1      112   13875
6 months    CMC-V-BCS-2002   INDIA                          1                0       24     369
6 months    CMC-V-BCS-2002   INDIA                          1                1       10     369
6 months    CMC-V-BCS-2002   INDIA                          2                0       11     369
6 months    CMC-V-BCS-2002   INDIA                          2                1        5     369
6 months    CMC-V-BCS-2002   INDIA                          3                0       25     369
6 months    CMC-V-BCS-2002   INDIA                          3                1        6     369
6 months    CMC-V-BCS-2002   INDIA                          4                0       36     369
6 months    CMC-V-BCS-2002   INDIA                          4                1        8     369
6 months    CMC-V-BCS-2002   INDIA                          5                0       23     369
6 months    CMC-V-BCS-2002   INDIA                          5                1       12     369
6 months    CMC-V-BCS-2002   INDIA                          6                0       21     369
6 months    CMC-V-BCS-2002   INDIA                          6                1       16     369
6 months    CMC-V-BCS-2002   INDIA                          7                0       19     369
6 months    CMC-V-BCS-2002   INDIA                          7                1       20     369
6 months    CMC-V-BCS-2002   INDIA                          8                0       11     369
6 months    CMC-V-BCS-2002   INDIA                          8                1        6     369
6 months    CMC-V-BCS-2002   INDIA                          9                0       14     369
6 months    CMC-V-BCS-2002   INDIA                          9                1        6     369
6 months    CMC-V-BCS-2002   INDIA                          10               0       21     369
6 months    CMC-V-BCS-2002   INDIA                          10               1        8     369
6 months    CMC-V-BCS-2002   INDIA                          11               0       35     369
6 months    CMC-V-BCS-2002   INDIA                          11               1        7     369
6 months    CMC-V-BCS-2002   INDIA                          12               0       18     369
6 months    CMC-V-BCS-2002   INDIA                          12               1        7     369
6 months    CMIN             BANGLADESH                     1                0       13     243
6 months    CMIN             BANGLADESH                     1                1       13     243
6 months    CMIN             BANGLADESH                     2                0       19     243
6 months    CMIN             BANGLADESH                     2                1        4     243
6 months    CMIN             BANGLADESH                     3                0       13     243
6 months    CMIN             BANGLADESH                     3                1        4     243
6 months    CMIN             BANGLADESH                     4                0       16     243
6 months    CMIN             BANGLADESH                     4                1        6     243
6 months    CMIN             BANGLADESH                     5                0       14     243
6 months    CMIN             BANGLADESH                     5                1        3     243
6 months    CMIN             BANGLADESH                     6                0        5     243
6 months    CMIN             BANGLADESH                     6                1        3     243
6 months    CMIN             BANGLADESH                     7                0       10     243
6 months    CMIN             BANGLADESH                     7                1        5     243
6 months    CMIN             BANGLADESH                     8                0        7     243
6 months    CMIN             BANGLADESH                     8                1       10     243
6 months    CMIN             BANGLADESH                     9                0       10     243
6 months    CMIN             BANGLADESH                     9                1       10     243
6 months    CMIN             BANGLADESH                     10               0       16     243
6 months    CMIN             BANGLADESH                     10               1        8     243
6 months    CMIN             BANGLADESH                     11               0       15     243
6 months    CMIN             BANGLADESH                     11               1       12     243
6 months    CMIN             BANGLADESH                     12               0       12     243
6 months    CMIN             BANGLADESH                     12               1       15     243
6 months    CONTENT          PERU                           1                0       10     215
6 months    CONTENT          PERU                           1                1        0     215
6 months    CONTENT          PERU                           2                0       18     215
6 months    CONTENT          PERU                           2                1        0     215
6 months    CONTENT          PERU                           3                0       28     215
6 months    CONTENT          PERU                           3                1        2     215
6 months    CONTENT          PERU                           4                0       18     215
6 months    CONTENT          PERU                           4                1        1     215
6 months    CONTENT          PERU                           5                0       13     215
6 months    CONTENT          PERU                           5                1        1     215
6 months    CONTENT          PERU                           6                0       12     215
6 months    CONTENT          PERU                           6                1        1     215
6 months    CONTENT          PERU                           7                0       27     215
6 months    CONTENT          PERU                           7                1        1     215
6 months    CONTENT          PERU                           8                0       21     215
6 months    CONTENT          PERU                           8                1        2     215
6 months    CONTENT          PERU                           9                0       26     215
6 months    CONTENT          PERU                           9                1        0     215
6 months    CONTENT          PERU                           10               0       13     215
6 months    CONTENT          PERU                           10               1        1     215
6 months    CONTENT          PERU                           11               0        9     215
6 months    CONTENT          PERU                           11               1        0     215
6 months    CONTENT          PERU                           12               0       11     215
6 months    CONTENT          PERU                           12               1        0     215
6 months    EE               PAKISTAN                       1                0       46     373
6 months    EE               PAKISTAN                       1                1       45     373
6 months    EE               PAKISTAN                       2                0       34     373
6 months    EE               PAKISTAN                       2                1       32     373
6 months    EE               PAKISTAN                       3                0       25     373
6 months    EE               PAKISTAN                       3                1       17     373
6 months    EE               PAKISTAN                       4                0        5     373
6 months    EE               PAKISTAN                       4                1       11     373
6 months    EE               PAKISTAN                       5                0        0     373
6 months    EE               PAKISTAN                       5                1        0     373
6 months    EE               PAKISTAN                       6                0        0     373
6 months    EE               PAKISTAN                       6                1        0     373
6 months    EE               PAKISTAN                       7                0        0     373
6 months    EE               PAKISTAN                       7                1        0     373
6 months    EE               PAKISTAN                       8                0        0     373
6 months    EE               PAKISTAN                       8                1        0     373
6 months    EE               PAKISTAN                       9                0        0     373
6 months    EE               PAKISTAN                       9                1        0     373
6 months    EE               PAKISTAN                       10               0        2     373
6 months    EE               PAKISTAN                       10               1        2     373
6 months    EE               PAKISTAN                       11               0       36     373
6 months    EE               PAKISTAN                       11               1       35     373
6 months    EE               PAKISTAN                       12               0       42     373
6 months    EE               PAKISTAN                       12               1       41     373
6 months    GMS-Nepal        NEPAL                          1                0        0     564
6 months    GMS-Nepal        NEPAL                          1                1        0     564
6 months    GMS-Nepal        NEPAL                          2                0        0     564
6 months    GMS-Nepal        NEPAL                          2                1        0     564
6 months    GMS-Nepal        NEPAL                          3                0        0     564
6 months    GMS-Nepal        NEPAL                          3                1        0     564
6 months    GMS-Nepal        NEPAL                          4                0        0     564
6 months    GMS-Nepal        NEPAL                          4                1        1     564
6 months    GMS-Nepal        NEPAL                          5                0        0     564
6 months    GMS-Nepal        NEPAL                          5                1        0     564
6 months    GMS-Nepal        NEPAL                          6                0       94     564
6 months    GMS-Nepal        NEPAL                          6                1       27     564
6 months    GMS-Nepal        NEPAL                          7                0      168     564
6 months    GMS-Nepal        NEPAL                          7                1       51     564
6 months    GMS-Nepal        NEPAL                          8                0      180     564
6 months    GMS-Nepal        NEPAL                          8                1       43     564
6 months    GMS-Nepal        NEPAL                          9                0        0     564
6 months    GMS-Nepal        NEPAL                          9                1        0     564
6 months    GMS-Nepal        NEPAL                          10               0        0     564
6 months    GMS-Nepal        NEPAL                          10               1        0     564
6 months    GMS-Nepal        NEPAL                          11               0        0     564
6 months    GMS-Nepal        NEPAL                          11               1        0     564
6 months    GMS-Nepal        NEPAL                          12               0        0     564
6 months    GMS-Nepal        NEPAL                          12               1        0     564
6 months    Guatemala BSC    GUATEMALA                      1                0       16     299
6 months    Guatemala BSC    GUATEMALA                      1                1       12     299
6 months    Guatemala BSC    GUATEMALA                      2                0       23     299
6 months    Guatemala BSC    GUATEMALA                      2                1        2     299
6 months    Guatemala BSC    GUATEMALA                      3                0       17     299
6 months    Guatemala BSC    GUATEMALA                      3                1       10     299
6 months    Guatemala BSC    GUATEMALA                      4                0       21     299
6 months    Guatemala BSC    GUATEMALA                      4                1       10     299
6 months    Guatemala BSC    GUATEMALA                      5                0       21     299
6 months    Guatemala BSC    GUATEMALA                      5                1       10     299
6 months    Guatemala BSC    GUATEMALA                      6                0       12     299
6 months    Guatemala BSC    GUATEMALA                      6                1       10     299
6 months    Guatemala BSC    GUATEMALA                      7                0       15     299
6 months    Guatemala BSC    GUATEMALA                      7                1        6     299
6 months    Guatemala BSC    GUATEMALA                      8                0       12     299
6 months    Guatemala BSC    GUATEMALA                      8                1        2     299
6 months    Guatemala BSC    GUATEMALA                      9                0       11     299
6 months    Guatemala BSC    GUATEMALA                      9                1        5     299
6 months    Guatemala BSC    GUATEMALA                      10               0       25     299
6 months    Guatemala BSC    GUATEMALA                      10               1        4     299
6 months    Guatemala BSC    GUATEMALA                      11               0       16     299
6 months    Guatemala BSC    GUATEMALA                      11               1        8     299
6 months    Guatemala BSC    GUATEMALA                      12               0       20     299
6 months    Guatemala BSC    GUATEMALA                      12               1       11     299
6 months    IRC              INDIA                          1                0       27     407
6 months    IRC              INDIA                          1                1       11     407
6 months    IRC              INDIA                          2                0       15     407
6 months    IRC              INDIA                          2                1       13     407
6 months    IRC              INDIA                          3                0       19     407
6 months    IRC              INDIA                          3                1        8     407
6 months    IRC              INDIA                          4                0       15     407
6 months    IRC              INDIA                          4                1        6     407
6 months    IRC              INDIA                          5                0       14     407
6 months    IRC              INDIA                          5                1        7     407
6 months    IRC              INDIA                          6                0       32     407
6 months    IRC              INDIA                          6                1        5     407
6 months    IRC              INDIA                          7                0       25     407
6 months    IRC              INDIA                          7                1       11     407
6 months    IRC              INDIA                          8                0       38     407
6 months    IRC              INDIA                          8                1        6     407
6 months    IRC              INDIA                          9                0       20     407
6 months    IRC              INDIA                          9                1        7     407
6 months    IRC              INDIA                          10               0       32     407
6 months    IRC              INDIA                          10               1        5     407
6 months    IRC              INDIA                          11               0       33     407
6 months    IRC              INDIA                          11               1        7     407
6 months    IRC              INDIA                          12               0       37     407
6 months    IRC              INDIA                          12               1       14     407
6 months    Keneba           GAMBIA                         1                0      183    2089
6 months    Keneba           GAMBIA                         1                1       27    2089
6 months    Keneba           GAMBIA                         2                0      166    2089
6 months    Keneba           GAMBIA                         2                1       21    2089
6 months    Keneba           GAMBIA                         3                0      190    2089
6 months    Keneba           GAMBIA                         3                1       31    2089
6 months    Keneba           GAMBIA                         4                0      128    2089
6 months    Keneba           GAMBIA                         4                1       15    2089
6 months    Keneba           GAMBIA                         5                0      123    2089
6 months    Keneba           GAMBIA                         5                1       20    2089
6 months    Keneba           GAMBIA                         6                0       96    2089
6 months    Keneba           GAMBIA                         6                1       22    2089
6 months    Keneba           GAMBIA                         7                0       73    2089
6 months    Keneba           GAMBIA                         7                1       19    2089
6 months    Keneba           GAMBIA                         8                0      149    2089
6 months    Keneba           GAMBIA                         8                1       25    2089
6 months    Keneba           GAMBIA                         9                0      146    2089
6 months    Keneba           GAMBIA                         9                1       28    2089
6 months    Keneba           GAMBIA                         10               0      208    2089
6 months    Keneba           GAMBIA                         10               1       40    2089
6 months    Keneba           GAMBIA                         11               0      163    2089
6 months    Keneba           GAMBIA                         11               1       24    2089
6 months    Keneba           GAMBIA                         12               0      169    2089
6 months    Keneba           GAMBIA                         12               1       23    2089
6 months    LCNI-5           MALAWI                         1                0       38     839
6 months    LCNI-5           MALAWI                         1                1       30     839
6 months    LCNI-5           MALAWI                         2                0       33     839
6 months    LCNI-5           MALAWI                         2                1       13     839
6 months    LCNI-5           MALAWI                         3                0       15     839
6 months    LCNI-5           MALAWI                         3                1       11     839
6 months    LCNI-5           MALAWI                         4                0       23     839
6 months    LCNI-5           MALAWI                         4                1       16     839
6 months    LCNI-5           MALAWI                         5                0       28     839
6 months    LCNI-5           MALAWI                         5                1       16     839
6 months    LCNI-5           MALAWI                         6                0       19     839
6 months    LCNI-5           MALAWI                         6                1       15     839
6 months    LCNI-5           MALAWI                         7                0       41     839
6 months    LCNI-5           MALAWI                         7                1       20     839
6 months    LCNI-5           MALAWI                         8                0       66     839
6 months    LCNI-5           MALAWI                         8                1       27     839
6 months    LCNI-5           MALAWI                         9                0       59     839
6 months    LCNI-5           MALAWI                         9                1       34     839
6 months    LCNI-5           MALAWI                         10               0       74     839
6 months    LCNI-5           MALAWI                         10               1       61     839
6 months    LCNI-5           MALAWI                         11               0       70     839
6 months    LCNI-5           MALAWI                         11               1       35     839
6 months    LCNI-5           MALAWI                         12               0       64     839
6 months    LCNI-5           MALAWI                         12               1       31     839
6 months    MAL-ED           BANGLADESH                     1                0       14     241
6 months    MAL-ED           BANGLADESH                     1                1        4     241
6 months    MAL-ED           BANGLADESH                     2                0       14     241
6 months    MAL-ED           BANGLADESH                     2                1        6     241
6 months    MAL-ED           BANGLADESH                     3                0       20     241
6 months    MAL-ED           BANGLADESH                     3                1        3     241
6 months    MAL-ED           BANGLADESH                     4                0       21     241
6 months    MAL-ED           BANGLADESH                     4                1        1     241
6 months    MAL-ED           BANGLADESH                     5                0       17     241
6 months    MAL-ED           BANGLADESH                     5                1        4     241
6 months    MAL-ED           BANGLADESH                     6                0        8     241
6 months    MAL-ED           BANGLADESH                     6                1        2     241
6 months    MAL-ED           BANGLADESH                     7                0       11     241
6 months    MAL-ED           BANGLADESH                     7                1        7     241
6 months    MAL-ED           BANGLADESH                     8                0       17     241
6 months    MAL-ED           BANGLADESH                     8                1        6     241
6 months    MAL-ED           BANGLADESH                     9                0       20     241
6 months    MAL-ED           BANGLADESH                     9                1        2     241
6 months    MAL-ED           BANGLADESH                     10               0       16     241
6 months    MAL-ED           BANGLADESH                     10               1        6     241
6 months    MAL-ED           BANGLADESH                     11               0       15     241
6 months    MAL-ED           BANGLADESH                     11               1        1     241
6 months    MAL-ED           BANGLADESH                     12               0       24     241
6 months    MAL-ED           BANGLADESH                     12               1        2     241
6 months    MAL-ED           BRAZIL                         1                0       14     209
6 months    MAL-ED           BRAZIL                         1                1        1     209
6 months    MAL-ED           BRAZIL                         2                0       22     209
6 months    MAL-ED           BRAZIL                         2                1        1     209
6 months    MAL-ED           BRAZIL                         3                0       16     209
6 months    MAL-ED           BRAZIL                         3                1        0     209
6 months    MAL-ED           BRAZIL                         4                0       11     209
6 months    MAL-ED           BRAZIL                         4                1        0     209
6 months    MAL-ED           BRAZIL                         5                0       20     209
6 months    MAL-ED           BRAZIL                         5                1        1     209
6 months    MAL-ED           BRAZIL                         6                0        8     209
6 months    MAL-ED           BRAZIL                         6                1        0     209
6 months    MAL-ED           BRAZIL                         7                0       15     209
6 months    MAL-ED           BRAZIL                         7                1        1     209
6 months    MAL-ED           BRAZIL                         8                0       16     209
6 months    MAL-ED           BRAZIL                         8                1        0     209
6 months    MAL-ED           BRAZIL                         9                0       29     209
6 months    MAL-ED           BRAZIL                         9                1        1     209
6 months    MAL-ED           BRAZIL                         10               0       20     209
6 months    MAL-ED           BRAZIL                         10               1        0     209
6 months    MAL-ED           BRAZIL                         11               0       20     209
6 months    MAL-ED           BRAZIL                         11               1        1     209
6 months    MAL-ED           BRAZIL                         12               0       12     209
6 months    MAL-ED           BRAZIL                         12               1        0     209
6 months    MAL-ED           INDIA                          1                0       15     236
6 months    MAL-ED           INDIA                          1                1        4     236
6 months    MAL-ED           INDIA                          2                0       17     236
6 months    MAL-ED           INDIA                          2                1        1     236
6 months    MAL-ED           INDIA                          3                0       18     236
6 months    MAL-ED           INDIA                          3                1        4     236
6 months    MAL-ED           INDIA                          4                0       10     236
6 months    MAL-ED           INDIA                          4                1        5     236
6 months    MAL-ED           INDIA                          5                0        7     236
6 months    MAL-ED           INDIA                          5                1        1     236
6 months    MAL-ED           INDIA                          6                0       17     236
6 months    MAL-ED           INDIA                          6                1        2     236
6 months    MAL-ED           INDIA                          7                0       17     236
6 months    MAL-ED           INDIA                          7                1        6     236
6 months    MAL-ED           INDIA                          8                0       19     236
6 months    MAL-ED           INDIA                          8                1        3     236
6 months    MAL-ED           INDIA                          9                0       17     236
6 months    MAL-ED           INDIA                          9                1        3     236
6 months    MAL-ED           INDIA                          10               0       19     236
6 months    MAL-ED           INDIA                          10               1        7     236
6 months    MAL-ED           INDIA                          11               0       19     236
6 months    MAL-ED           INDIA                          11               1        6     236
6 months    MAL-ED           INDIA                          12               0       16     236
6 months    MAL-ED           INDIA                          12               1        3     236
6 months    MAL-ED           NEPAL                          1                0       19     236
6 months    MAL-ED           NEPAL                          1                1        1     236
6 months    MAL-ED           NEPAL                          2                0       16     236
6 months    MAL-ED           NEPAL                          2                1        3     236
6 months    MAL-ED           NEPAL                          3                0       15     236
6 months    MAL-ED           NEPAL                          3                1        2     236
6 months    MAL-ED           NEPAL                          4                0       21     236
6 months    MAL-ED           NEPAL                          4                1        1     236
6 months    MAL-ED           NEPAL                          5                0       19     236
6 months    MAL-ED           NEPAL                          5                1        1     236
6 months    MAL-ED           NEPAL                          6                0       18     236
6 months    MAL-ED           NEPAL                          6                1        0     236
6 months    MAL-ED           NEPAL                          7                0       17     236
6 months    MAL-ED           NEPAL                          7                1        1     236
6 months    MAL-ED           NEPAL                          8                0       24     236
6 months    MAL-ED           NEPAL                          8                1        0     236
6 months    MAL-ED           NEPAL                          9                0       14     236
6 months    MAL-ED           NEPAL                          9                1        2     236
6 months    MAL-ED           NEPAL                          10               0       21     236
6 months    MAL-ED           NEPAL                          10               1        0     236
6 months    MAL-ED           NEPAL                          11               0       23     236
6 months    MAL-ED           NEPAL                          11               1        1     236
6 months    MAL-ED           NEPAL                          12               0       17     236
6 months    MAL-ED           NEPAL                          12               1        0     236
6 months    MAL-ED           PERU                           1                0       28     273
6 months    MAL-ED           PERU                           1                1       10     273
6 months    MAL-ED           PERU                           2                0       15     273
6 months    MAL-ED           PERU                           2                1        4     273
6 months    MAL-ED           PERU                           3                0       15     273
6 months    MAL-ED           PERU                           3                1        7     273
6 months    MAL-ED           PERU                           4                0       16     273
6 months    MAL-ED           PERU                           4                1        4     273
6 months    MAL-ED           PERU                           5                0       24     273
6 months    MAL-ED           PERU                           5                1        3     273
6 months    MAL-ED           PERU                           6                0       12     273
6 months    MAL-ED           PERU                           6                1        3     273
6 months    MAL-ED           PERU                           7                0       19     273
6 months    MAL-ED           PERU                           7                1        3     273
6 months    MAL-ED           PERU                           8                0       13     273
6 months    MAL-ED           PERU                           8                1        3     273
6 months    MAL-ED           PERU                           9                0       18     273
6 months    MAL-ED           PERU                           9                1        5     273
6 months    MAL-ED           PERU                           10               0       16     273
6 months    MAL-ED           PERU                           10               1        4     273
6 months    MAL-ED           PERU                           11               0       22     273
6 months    MAL-ED           PERU                           11               1       10     273
6 months    MAL-ED           PERU                           12               0       15     273
6 months    MAL-ED           PERU                           12               1        4     273
6 months    MAL-ED           SOUTH AFRICA                   1                0       29     254
6 months    MAL-ED           SOUTH AFRICA                   1                1        9     254
6 months    MAL-ED           SOUTH AFRICA                   2                0       21     254
6 months    MAL-ED           SOUTH AFRICA                   2                1        2     254
6 months    MAL-ED           SOUTH AFRICA                   3                0       13     254
6 months    MAL-ED           SOUTH AFRICA                   3                1        2     254
6 months    MAL-ED           SOUTH AFRICA                   4                0       12     254
6 months    MAL-ED           SOUTH AFRICA                   4                1        1     254
6 months    MAL-ED           SOUTH AFRICA                   5                0       11     254
6 months    MAL-ED           SOUTH AFRICA                   5                1        2     254
6 months    MAL-ED           SOUTH AFRICA                   6                0       18     254
6 months    MAL-ED           SOUTH AFRICA                   6                1        0     254
6 months    MAL-ED           SOUTH AFRICA                   7                0       16     254
6 months    MAL-ED           SOUTH AFRICA                   7                1        6     254
6 months    MAL-ED           SOUTH AFRICA                   8                0        7     254
6 months    MAL-ED           SOUTH AFRICA                   8                1        2     254
6 months    MAL-ED           SOUTH AFRICA                   9                0       16     254
6 months    MAL-ED           SOUTH AFRICA                   9                1        2     254
6 months    MAL-ED           SOUTH AFRICA                   10               0       22     254
6 months    MAL-ED           SOUTH AFRICA                   10               1        4     254
6 months    MAL-ED           SOUTH AFRICA                   11               0       15     254
6 months    MAL-ED           SOUTH AFRICA                   11               1        9     254
6 months    MAL-ED           SOUTH AFRICA                   12               0       24     254
6 months    MAL-ED           SOUTH AFRICA                   12               1       11     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0       17     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        3     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                0       23     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                1        7     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                0       12     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                1        6     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                0        5     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                1        4     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                0       13     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                1        3     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                0       19     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                0       17     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                1        6     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                0       10     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1        2     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                0       16     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                1        5     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               0       16     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               1        6     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               0       20     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               1        7     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0       20     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               1       10     247
6 months    NIH-Birth        BANGLADESH                     1                0       37     537
6 months    NIH-Birth        BANGLADESH                     1                1       15     537
6 months    NIH-Birth        BANGLADESH                     2                0       35     537
6 months    NIH-Birth        BANGLADESH                     2                1       14     537
6 months    NIH-Birth        BANGLADESH                     3                0       38     537
6 months    NIH-Birth        BANGLADESH                     3                1       12     537
6 months    NIH-Birth        BANGLADESH                     4                0       32     537
6 months    NIH-Birth        BANGLADESH                     4                1       10     537
6 months    NIH-Birth        BANGLADESH                     5                0       33     537
6 months    NIH-Birth        BANGLADESH                     5                1        9     537
6 months    NIH-Birth        BANGLADESH                     6                0       27     537
6 months    NIH-Birth        BANGLADESH                     6                1       16     537
6 months    NIH-Birth        BANGLADESH                     7                0       28     537
6 months    NIH-Birth        BANGLADESH                     7                1       11     537
6 months    NIH-Birth        BANGLADESH                     8                0       28     537
6 months    NIH-Birth        BANGLADESH                     8                1        7     537
6 months    NIH-Birth        BANGLADESH                     9                0       29     537
6 months    NIH-Birth        BANGLADESH                     9                1       13     537
6 months    NIH-Birth        BANGLADESH                     10               0       32     537
6 months    NIH-Birth        BANGLADESH                     10               1       10     537
6 months    NIH-Birth        BANGLADESH                     11               0       33     537
6 months    NIH-Birth        BANGLADESH                     11               1       17     537
6 months    NIH-Birth        BANGLADESH                     12               0       41     537
6 months    NIH-Birth        BANGLADESH                     12               1       10     537
6 months    PROBIT           BELARUS                        1                0      927   15760
6 months    PROBIT           BELARUS                        1                1       49   15760
6 months    PROBIT           BELARUS                        2                0      884   15760
6 months    PROBIT           BELARUS                        2                1       49   15760
6 months    PROBIT           BELARUS                        3                0     1025   15760
6 months    PROBIT           BELARUS                        3                1       41   15760
6 months    PROBIT           BELARUS                        4                0     1061   15760
6 months    PROBIT           BELARUS                        4                1       36   15760
6 months    PROBIT           BELARUS                        5                0     1082   15760
6 months    PROBIT           BELARUS                        5                1       29   15760
6 months    PROBIT           BELARUS                        6                0     1068   15760
6 months    PROBIT           BELARUS                        6                1       47   15760
6 months    PROBIT           BELARUS                        7                0     1410   15760
6 months    PROBIT           BELARUS                        7                1       53   15760
6 months    PROBIT           BELARUS                        8                0     1421   15760
6 months    PROBIT           BELARUS                        8                1       52   15760
6 months    PROBIT           BELARUS                        9                0     1437   15760
6 months    PROBIT           BELARUS                        9                1       72   15760
6 months    PROBIT           BELARUS                        10               0     1624   15760
6 months    PROBIT           BELARUS                        10               1       65   15760
6 months    PROBIT           BELARUS                        11               0     1522   15760
6 months    PROBIT           BELARUS                        11               1       67   15760
6 months    PROBIT           BELARUS                        12               0     1679   15760
6 months    PROBIT           BELARUS                        12               1       60   15760
6 months    PROVIDE          BANGLADESH                     1                0       33     604
6 months    PROVIDE          BANGLADESH                     1                1        2     604
6 months    PROVIDE          BANGLADESH                     2                0       23     604
6 months    PROVIDE          BANGLADESH                     2                1        9     604
6 months    PROVIDE          BANGLADESH                     3                0       37     604
6 months    PROVIDE          BANGLADESH                     3                1        6     604
6 months    PROVIDE          BANGLADESH                     4                0       33     604
6 months    PROVIDE          BANGLADESH                     4                1        3     604
6 months    PROVIDE          BANGLADESH                     5                0       37     604
6 months    PROVIDE          BANGLADESH                     5                1        3     604
6 months    PROVIDE          BANGLADESH                     6                0       57     604
6 months    PROVIDE          BANGLADESH                     6                1       20     604
6 months    PROVIDE          BANGLADESH                     7                0       64     604
6 months    PROVIDE          BANGLADESH                     7                1       12     604
6 months    PROVIDE          BANGLADESH                     8                0       45     604
6 months    PROVIDE          BANGLADESH                     8                1       16     604
6 months    PROVIDE          BANGLADESH                     9                0       57     604
6 months    PROVIDE          BANGLADESH                     9                1       10     604
6 months    PROVIDE          BANGLADESH                     10               0       60     604
6 months    PROVIDE          BANGLADESH                     10               1        7     604
6 months    PROVIDE          BANGLADESH                     11               0       35     604
6 months    PROVIDE          BANGLADESH                     11               1        6     604
6 months    PROVIDE          BANGLADESH                     12               0       27     604
6 months    PROVIDE          BANGLADESH                     12               1        2     604
6 months    ResPak           PAKISTAN                       1                0        4     239
6 months    ResPak           PAKISTAN                       1                1        7     239
6 months    ResPak           PAKISTAN                       2                0        8     239
6 months    ResPak           PAKISTAN                       2                1        2     239
6 months    ResPak           PAKISTAN                       3                0       12     239
6 months    ResPak           PAKISTAN                       3                1       13     239
6 months    ResPak           PAKISTAN                       4                0       14     239
6 months    ResPak           PAKISTAN                       4                1       10     239
6 months    ResPak           PAKISTAN                       5                0       29     239
6 months    ResPak           PAKISTAN                       5                1       16     239
6 months    ResPak           PAKISTAN                       6                0       28     239
6 months    ResPak           PAKISTAN                       6                1       13     239
6 months    ResPak           PAKISTAN                       7                0       16     239
6 months    ResPak           PAKISTAN                       7                1        8     239
6 months    ResPak           PAKISTAN                       8                0       24     239
6 months    ResPak           PAKISTAN                       8                1       10     239
6 months    ResPak           PAKISTAN                       9                0       12     239
6 months    ResPak           PAKISTAN                       9                1        4     239
6 months    ResPak           PAKISTAN                       10               0        4     239
6 months    ResPak           PAKISTAN                       10               1        0     239
6 months    ResPak           PAKISTAN                       11               0        2     239
6 months    ResPak           PAKISTAN                       11               1        0     239
6 months    ResPak           PAKISTAN                       12               0        0     239
6 months    ResPak           PAKISTAN                       12               1        3     239
6 months    SAS-CompFeed     INDIA                          1                0       58    1336
6 months    SAS-CompFeed     INDIA                          1                1       29    1336
6 months    SAS-CompFeed     INDIA                          2                0       62    1336
6 months    SAS-CompFeed     INDIA                          2                1       21    1336
6 months    SAS-CompFeed     INDIA                          3                0       52    1336
6 months    SAS-CompFeed     INDIA                          3                1       22    1336
6 months    SAS-CompFeed     INDIA                          4                0       52    1336
6 months    SAS-CompFeed     INDIA                          4                1       14    1336
6 months    SAS-CompFeed     INDIA                          5                0       61    1336
6 months    SAS-CompFeed     INDIA                          5                1       26    1336
6 months    SAS-CompFeed     INDIA                          6                0       64    1336
6 months    SAS-CompFeed     INDIA                          6                1       32    1336
6 months    SAS-CompFeed     INDIA                          7                0       71    1336
6 months    SAS-CompFeed     INDIA                          7                1       51    1336
6 months    SAS-CompFeed     INDIA                          8                0      111    1336
6 months    SAS-CompFeed     INDIA                          8                1       51    1336
6 months    SAS-CompFeed     INDIA                          9                0      143    1336
6 months    SAS-CompFeed     INDIA                          9                1       31    1336
6 months    SAS-CompFeed     INDIA                          10               0      108    1336
6 months    SAS-CompFeed     INDIA                          10               1       41    1336
6 months    SAS-CompFeed     INDIA                          11               0       86    1336
6 months    SAS-CompFeed     INDIA                          11               1       32    1336
6 months    SAS-CompFeed     INDIA                          12               0       88    1336
6 months    SAS-CompFeed     INDIA                          12               1       30    1336
6 months    SAS-FoodSuppl    INDIA                          1                0       14     380
6 months    SAS-FoodSuppl    INDIA                          1                1       10     380
6 months    SAS-FoodSuppl    INDIA                          2                0       19     380
6 months    SAS-FoodSuppl    INDIA                          2                1       14     380
6 months    SAS-FoodSuppl    INDIA                          3                0        7     380
6 months    SAS-FoodSuppl    INDIA                          3                1       13     380
6 months    SAS-FoodSuppl    INDIA                          4                0        2     380
6 months    SAS-FoodSuppl    INDIA                          4                1        2     380
6 months    SAS-FoodSuppl    INDIA                          5                0        8     380
6 months    SAS-FoodSuppl    INDIA                          5                1        4     380
6 months    SAS-FoodSuppl    INDIA                          6                0       10     380
6 months    SAS-FoodSuppl    INDIA                          6                1       11     380
6 months    SAS-FoodSuppl    INDIA                          7                0       24     380
6 months    SAS-FoodSuppl    INDIA                          7                1        9     380
6 months    SAS-FoodSuppl    INDIA                          8                0       43     380
6 months    SAS-FoodSuppl    INDIA                          8                1       20     380
6 months    SAS-FoodSuppl    INDIA                          9                0       31     380
6 months    SAS-FoodSuppl    INDIA                          9                1       31     380
6 months    SAS-FoodSuppl    INDIA                          10               0       25     380
6 months    SAS-FoodSuppl    INDIA                          10               1       22     380
6 months    SAS-FoodSuppl    INDIA                          11               0       15     380
6 months    SAS-FoodSuppl    INDIA                          11               1       12     380
6 months    SAS-FoodSuppl    INDIA                          12               0       19     380
6 months    SAS-FoodSuppl    INDIA                          12               1       15     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      126    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       16    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      137    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1       12    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      128    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1       12    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      139    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1       14    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      130    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1       19    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      126    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1       17    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      175    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1       20    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      171    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1       28    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      170    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1       14    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      184    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1       24    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      182    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1       13    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      164    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1        8    2029
6 months    ZVITAMBO         ZIMBABWE                       1                0      683    8669
6 months    ZVITAMBO         ZIMBABWE                       1                1      141    8669
6 months    ZVITAMBO         ZIMBABWE                       2                0      515    8669
6 months    ZVITAMBO         ZIMBABWE                       2                1      105    8669
6 months    ZVITAMBO         ZIMBABWE                       3                0      603    8669
6 months    ZVITAMBO         ZIMBABWE                       3                1      164    8669
6 months    ZVITAMBO         ZIMBABWE                       4                0      542    8669
6 months    ZVITAMBO         ZIMBABWE                       4                1      115    8669
6 months    ZVITAMBO         ZIMBABWE                       5                0      535    8669
6 months    ZVITAMBO         ZIMBABWE                       5                1      107    8669
6 months    ZVITAMBO         ZIMBABWE                       6                0      561    8669
6 months    ZVITAMBO         ZIMBABWE                       6                1      111    8669
6 months    ZVITAMBO         ZIMBABWE                       7                0      551    8669
6 months    ZVITAMBO         ZIMBABWE                       7                1      123    8669
6 months    ZVITAMBO         ZIMBABWE                       8                0      676    8669
6 months    ZVITAMBO         ZIMBABWE                       8                1      108    8669
6 months    ZVITAMBO         ZIMBABWE                       9                0      679    8669
6 months    ZVITAMBO         ZIMBABWE                       9                1      101    8669
6 months    ZVITAMBO         ZIMBABWE                       10               0      525    8669
6 months    ZVITAMBO         ZIMBABWE                       10               1      101    8669
6 months    ZVITAMBO         ZIMBABWE                       11               0      672    8669
6 months    ZVITAMBO         ZIMBABWE                       11               1      123    8669
6 months    ZVITAMBO         ZIMBABWE                       12               0      715    8669
6 months    ZVITAMBO         ZIMBABWE                       12               1      113    8669
24 months   CMC-V-BCS-2002   INDIA                          1                0       15     371
24 months   CMC-V-BCS-2002   INDIA                          1                1       19     371
24 months   CMC-V-BCS-2002   INDIA                          2                0        4     371
24 months   CMC-V-BCS-2002   INDIA                          2                1       12     371
24 months   CMC-V-BCS-2002   INDIA                          3                0        6     371
24 months   CMC-V-BCS-2002   INDIA                          3                1       25     371
24 months   CMC-V-BCS-2002   INDIA                          4                0       15     371
24 months   CMC-V-BCS-2002   INDIA                          4                1       29     371
24 months   CMC-V-BCS-2002   INDIA                          5                0        8     371
24 months   CMC-V-BCS-2002   INDIA                          5                1       27     371
24 months   CMC-V-BCS-2002   INDIA                          6                0       10     371
24 months   CMC-V-BCS-2002   INDIA                          6                1       27     371
24 months   CMC-V-BCS-2002   INDIA                          7                0       10     371
24 months   CMC-V-BCS-2002   INDIA                          7                1       29     371
24 months   CMC-V-BCS-2002   INDIA                          8                0        5     371
24 months   CMC-V-BCS-2002   INDIA                          8                1       12     371
24 months   CMC-V-BCS-2002   INDIA                          9                0        7     371
24 months   CMC-V-BCS-2002   INDIA                          9                1       14     371
24 months   CMC-V-BCS-2002   INDIA                          10               0        9     371
24 months   CMC-V-BCS-2002   INDIA                          10               1       20     371
24 months   CMC-V-BCS-2002   INDIA                          11               0       12     371
24 months   CMC-V-BCS-2002   INDIA                          11               1       31     371
24 months   CMC-V-BCS-2002   INDIA                          12               0        4     371
24 months   CMC-V-BCS-2002   INDIA                          12               1       21     371
24 months   CMIN             BANGLADESH                     1                0        8     242
24 months   CMIN             BANGLADESH                     1                1       18     242
24 months   CMIN             BANGLADESH                     2                0        8     242
24 months   CMIN             BANGLADESH                     2                1       16     242
24 months   CMIN             BANGLADESH                     3                0        9     242
24 months   CMIN             BANGLADESH                     3                1        9     242
24 months   CMIN             BANGLADESH                     4                0        7     242
24 months   CMIN             BANGLADESH                     4                1       15     242
24 months   CMIN             BANGLADESH                     5                0        5     242
24 months   CMIN             BANGLADESH                     5                1       11     242
24 months   CMIN             BANGLADESH                     6                0        2     242
24 months   CMIN             BANGLADESH                     6                1        6     242
24 months   CMIN             BANGLADESH                     7                0        7     242
24 months   CMIN             BANGLADESH                     7                1        8     242
24 months   CMIN             BANGLADESH                     8                0        4     242
24 months   CMIN             BANGLADESH                     8                1       14     242
24 months   CMIN             BANGLADESH                     9                0        8     242
24 months   CMIN             BANGLADESH                     9                1       12     242
24 months   CMIN             BANGLADESH                     10               0        6     242
24 months   CMIN             BANGLADESH                     10               1       18     242
24 months   CMIN             BANGLADESH                     11               0        8     242
24 months   CMIN             BANGLADESH                     11               1       17     242
24 months   CMIN             BANGLADESH                     12               0        5     242
24 months   CMIN             BANGLADESH                     12               1       21     242
24 months   CONTENT          PERU                           1                0        7     164
24 months   CONTENT          PERU                           1                1        0     164
24 months   CONTENT          PERU                           2                0       13     164
24 months   CONTENT          PERU                           2                1        1     164
24 months   CONTENT          PERU                           3                0       20     164
24 months   CONTENT          PERU                           3                1        2     164
24 months   CONTENT          PERU                           4                0       13     164
24 months   CONTENT          PERU                           4                1        2     164
24 months   CONTENT          PERU                           5                0       12     164
24 months   CONTENT          PERU                           5                1        2     164
24 months   CONTENT          PERU                           6                0       11     164
24 months   CONTENT          PERU                           6                1        0     164
24 months   CONTENT          PERU                           7                0       20     164
24 months   CONTENT          PERU                           7                1        3     164
24 months   CONTENT          PERU                           8                0       12     164
24 months   CONTENT          PERU                           8                1        2     164
24 months   CONTENT          PERU                           9                0       17     164
24 months   CONTENT          PERU                           9                1        0     164
24 months   CONTENT          PERU                           10               0       11     164
24 months   CONTENT          PERU                           10               1        0     164
24 months   CONTENT          PERU                           11               0        5     164
24 months   CONTENT          PERU                           11               1        1     164
24 months   CONTENT          PERU                           12               0       10     164
24 months   CONTENT          PERU                           12               1        0     164
24 months   EE               PAKISTAN                       1                0        4     167
24 months   EE               PAKISTAN                       1                1        9     167
24 months   EE               PAKISTAN                       2                0        0     167
24 months   EE               PAKISTAN                       2                1        4     167
24 months   EE               PAKISTAN                       3                0        0     167
24 months   EE               PAKISTAN                       3                1        0     167
24 months   EE               PAKISTAN                       4                0        0     167
24 months   EE               PAKISTAN                       4                1        0     167
24 months   EE               PAKISTAN                       5                0        0     167
24 months   EE               PAKISTAN                       5                1        0     167
24 months   EE               PAKISTAN                       6                0        0     167
24 months   EE               PAKISTAN                       6                1        0     167
24 months   EE               PAKISTAN                       7                0        0     167
24 months   EE               PAKISTAN                       7                1        0     167
24 months   EE               PAKISTAN                       8                0        0     167
24 months   EE               PAKISTAN                       8                1        0     167
24 months   EE               PAKISTAN                       9                0        0     167
24 months   EE               PAKISTAN                       9                1        0     167
24 months   EE               PAKISTAN                       10               0        1     167
24 months   EE               PAKISTAN                       10               1        3     167
24 months   EE               PAKISTAN                       11               0       22     167
24 months   EE               PAKISTAN                       11               1       44     167
24 months   EE               PAKISTAN                       12               0       22     167
24 months   EE               PAKISTAN                       12               1       58     167
24 months   GMS-Nepal        NEPAL                          1                0        0     488
24 months   GMS-Nepal        NEPAL                          1                1        0     488
24 months   GMS-Nepal        NEPAL                          2                0        0     488
24 months   GMS-Nepal        NEPAL                          2                1        0     488
24 months   GMS-Nepal        NEPAL                          3                0        0     488
24 months   GMS-Nepal        NEPAL                          3                1        0     488
24 months   GMS-Nepal        NEPAL                          4                0        0     488
24 months   GMS-Nepal        NEPAL                          4                1        0     488
24 months   GMS-Nepal        NEPAL                          5                0        0     488
24 months   GMS-Nepal        NEPAL                          5                1        0     488
24 months   GMS-Nepal        NEPAL                          6                0       43     488
24 months   GMS-Nepal        NEPAL                          6                1       37     488
24 months   GMS-Nepal        NEPAL                          7                0      109     488
24 months   GMS-Nepal        NEPAL                          7                1       97     488
24 months   GMS-Nepal        NEPAL                          8                0      117     488
24 months   GMS-Nepal        NEPAL                          8                1       85     488
24 months   GMS-Nepal        NEPAL                          9                0        0     488
24 months   GMS-Nepal        NEPAL                          9                1        0     488
24 months   GMS-Nepal        NEPAL                          10               0        0     488
24 months   GMS-Nepal        NEPAL                          10               1        0     488
24 months   GMS-Nepal        NEPAL                          11               0        0     488
24 months   GMS-Nepal        NEPAL                          11               1        0     488
24 months   GMS-Nepal        NEPAL                          12               0        0     488
24 months   GMS-Nepal        NEPAL                          12               1        0     488
24 months   IRC              INDIA                          1                0       18     409
24 months   IRC              INDIA                          1                1       20     409
24 months   IRC              INDIA                          2                0       12     409
24 months   IRC              INDIA                          2                1       16     409
24 months   IRC              INDIA                          3                0       15     409
24 months   IRC              INDIA                          3                1       12     409
24 months   IRC              INDIA                          4                0        8     409
24 months   IRC              INDIA                          4                1       13     409
24 months   IRC              INDIA                          5                0        5     409
24 months   IRC              INDIA                          5                1       17     409
24 months   IRC              INDIA                          6                0       29     409
24 months   IRC              INDIA                          6                1        8     409
24 months   IRC              INDIA                          7                0       21     409
24 months   IRC              INDIA                          7                1       15     409
24 months   IRC              INDIA                          8                0       32     409
24 months   IRC              INDIA                          8                1       12     409
24 months   IRC              INDIA                          9                0       13     409
24 months   IRC              INDIA                          9                1       14     409
24 months   IRC              INDIA                          10               0       28     409
24 months   IRC              INDIA                          10               1        9     409
24 months   IRC              INDIA                          11               0       25     409
24 months   IRC              INDIA                          11               1       15     409
24 months   IRC              INDIA                          12               0       31     409
24 months   IRC              INDIA                          12               1       21     409
24 months   Keneba           GAMBIA                         1                0      114    1725
24 months   Keneba           GAMBIA                         1                1       57    1725
24 months   Keneba           GAMBIA                         2                0      117    1725
24 months   Keneba           GAMBIA                         2                1       50    1725
24 months   Keneba           GAMBIA                         3                0      120    1725
24 months   Keneba           GAMBIA                         3                1       50    1725
24 months   Keneba           GAMBIA                         4                0       75    1725
24 months   Keneba           GAMBIA                         4                1       39    1725
24 months   Keneba           GAMBIA                         5                0       75    1725
24 months   Keneba           GAMBIA                         5                1       47    1725
24 months   Keneba           GAMBIA                         6                0       61    1725
24 months   Keneba           GAMBIA                         6                1       31    1725
24 months   Keneba           GAMBIA                         7                0       45    1725
24 months   Keneba           GAMBIA                         7                1       36    1725
24 months   Keneba           GAMBIA                         8                0      114    1725
24 months   Keneba           GAMBIA                         8                1       44    1725
24 months   Keneba           GAMBIA                         9                0      109    1725
24 months   Keneba           GAMBIA                         9                1       50    1725
24 months   Keneba           GAMBIA                         10               0      122    1725
24 months   Keneba           GAMBIA                         10               1       78    1725
24 months   Keneba           GAMBIA                         11               0       95    1725
24 months   Keneba           GAMBIA                         11               1       46    1725
24 months   Keneba           GAMBIA                         12               0       97    1725
24 months   Keneba           GAMBIA                         12               1       53    1725
24 months   LCNI-5           MALAWI                         1                0       26     579
24 months   LCNI-5           MALAWI                         1                1       15     579
24 months   LCNI-5           MALAWI                         2                0       23     579
24 months   LCNI-5           MALAWI                         2                1        7     579
24 months   LCNI-5           MALAWI                         3                0       10     579
24 months   LCNI-5           MALAWI                         3                1        9     579
24 months   LCNI-5           MALAWI                         4                0       17     579
24 months   LCNI-5           MALAWI                         4                1       11     579
24 months   LCNI-5           MALAWI                         5                0       18     579
24 months   LCNI-5           MALAWI                         5                1       13     579
24 months   LCNI-5           MALAWI                         6                0       10     579
24 months   LCNI-5           MALAWI                         6                1       14     579
24 months   LCNI-5           MALAWI                         7                0       23     579
24 months   LCNI-5           MALAWI                         7                1       24     579
24 months   LCNI-5           MALAWI                         8                0       47     579
24 months   LCNI-5           MALAWI                         8                1       24     579
24 months   LCNI-5           MALAWI                         9                0       40     579
24 months   LCNI-5           MALAWI                         9                1       27     579
24 months   LCNI-5           MALAWI                         10               0       44     579
24 months   LCNI-5           MALAWI                         10               1       49     579
24 months   LCNI-5           MALAWI                         11               0       33     579
24 months   LCNI-5           MALAWI                         11               1       31     579
24 months   LCNI-5           MALAWI                         12               0       30     579
24 months   LCNI-5           MALAWI                         12               1       34     579
24 months   MAL-ED           BANGLADESH                     1                0        7     212
24 months   MAL-ED           BANGLADESH                     1                1        7     212
24 months   MAL-ED           BANGLADESH                     2                0        5     212
24 months   MAL-ED           BANGLADESH                     2                1       12     212
24 months   MAL-ED           BANGLADESH                     3                0        7     212
24 months   MAL-ED           BANGLADESH                     3                1       12     212
24 months   MAL-ED           BANGLADESH                     4                0       13     212
24 months   MAL-ED           BANGLADESH                     4                1        7     212
24 months   MAL-ED           BANGLADESH                     5                0        9     212
24 months   MAL-ED           BANGLADESH                     5                1       10     212
24 months   MAL-ED           BANGLADESH                     6                0        4     212
24 months   MAL-ED           BANGLADESH                     6                1        3     212
24 months   MAL-ED           BANGLADESH                     7                0        9     212
24 months   MAL-ED           BANGLADESH                     7                1        9     212
24 months   MAL-ED           BANGLADESH                     8                0       12     212
24 months   MAL-ED           BANGLADESH                     8                1       10     212
24 months   MAL-ED           BANGLADESH                     9                0       11     212
24 months   MAL-ED           BANGLADESH                     9                1        7     212
24 months   MAL-ED           BANGLADESH                     10               0       13     212
24 months   MAL-ED           BANGLADESH                     10               1        7     212
24 months   MAL-ED           BANGLADESH                     11               0        5     212
24 months   MAL-ED           BANGLADESH                     11               1        6     212
24 months   MAL-ED           BANGLADESH                     12               0       16     212
24 months   MAL-ED           BANGLADESH                     12               1       11     212
24 months   MAL-ED           BRAZIL                         1                0       14     169
24 months   MAL-ED           BRAZIL                         1                1        1     169
24 months   MAL-ED           BRAZIL                         2                0       15     169
24 months   MAL-ED           BRAZIL                         2                1        1     169
24 months   MAL-ED           BRAZIL                         3                0       14     169
24 months   MAL-ED           BRAZIL                         3                1        0     169
24 months   MAL-ED           BRAZIL                         4                0       10     169
24 months   MAL-ED           BRAZIL                         4                1        0     169
24 months   MAL-ED           BRAZIL                         5                0       15     169
24 months   MAL-ED           BRAZIL                         5                1        0     169
24 months   MAL-ED           BRAZIL                         6                0        6     169
24 months   MAL-ED           BRAZIL                         6                1        0     169
24 months   MAL-ED           BRAZIL                         7                0        9     169
24 months   MAL-ED           BRAZIL                         7                1        1     169
24 months   MAL-ED           BRAZIL                         8                0       12     169
24 months   MAL-ED           BRAZIL                         8                1        1     169
24 months   MAL-ED           BRAZIL                         9                0       26     169
24 months   MAL-ED           BRAZIL                         9                1        1     169
24 months   MAL-ED           BRAZIL                         10               0       13     169
24 months   MAL-ED           BRAZIL                         10               1        1     169
24 months   MAL-ED           BRAZIL                         11               0       17     169
24 months   MAL-ED           BRAZIL                         11               1        1     169
24 months   MAL-ED           BRAZIL                         12               0       11     169
24 months   MAL-ED           BRAZIL                         12               1        0     169
24 months   MAL-ED           INDIA                          1                0        6     227
24 months   MAL-ED           INDIA                          1                1       13     227
24 months   MAL-ED           INDIA                          2                0       14     227
24 months   MAL-ED           INDIA                          2                1        4     227
24 months   MAL-ED           INDIA                          3                0       12     227
24 months   MAL-ED           INDIA                          3                1        7     227
24 months   MAL-ED           INDIA                          4                0        7     227
24 months   MAL-ED           INDIA                          4                1        7     227
24 months   MAL-ED           INDIA                          5                0        5     227
24 months   MAL-ED           INDIA                          5                1        3     227
24 months   MAL-ED           INDIA                          6                0       13     227
24 months   MAL-ED           INDIA                          6                1        5     227
24 months   MAL-ED           INDIA                          7                0       11     227
24 months   MAL-ED           INDIA                          7                1       12     227
24 months   MAL-ED           INDIA                          8                0       11     227
24 months   MAL-ED           INDIA                          8                1       10     227
24 months   MAL-ED           INDIA                          9                0       12     227
24 months   MAL-ED           INDIA                          9                1        6     227
24 months   MAL-ED           INDIA                          10               0       12     227
24 months   MAL-ED           INDIA                          10               1       14     227
24 months   MAL-ED           INDIA                          11               0       14     227
24 months   MAL-ED           INDIA                          11               1       10     227
24 months   MAL-ED           INDIA                          12               0       13     227
24 months   MAL-ED           INDIA                          12               1        6     227
24 months   MAL-ED           NEPAL                          1                0       15     228
24 months   MAL-ED           NEPAL                          1                1        4     228
24 months   MAL-ED           NEPAL                          2                0       11     228
24 months   MAL-ED           NEPAL                          2                1        6     228
24 months   MAL-ED           NEPAL                          3                0        8     228
24 months   MAL-ED           NEPAL                          3                1        9     228
24 months   MAL-ED           NEPAL                          4                0       19     228
24 months   MAL-ED           NEPAL                          4                1        3     228
24 months   MAL-ED           NEPAL                          5                0       13     228
24 months   MAL-ED           NEPAL                          5                1        6     228
24 months   MAL-ED           NEPAL                          6                0       17     228
24 months   MAL-ED           NEPAL                          6                1        1     228
24 months   MAL-ED           NEPAL                          7                0       15     228
24 months   MAL-ED           NEPAL                          7                1        2     228
24 months   MAL-ED           NEPAL                          8                0       22     228
24 months   MAL-ED           NEPAL                          8                1        2     228
24 months   MAL-ED           NEPAL                          9                0       13     228
24 months   MAL-ED           NEPAL                          9                1        2     228
24 months   MAL-ED           NEPAL                          10               0       17     228
24 months   MAL-ED           NEPAL                          10               1        3     228
24 months   MAL-ED           NEPAL                          11               0       15     228
24 months   MAL-ED           NEPAL                          11               1        9     228
24 months   MAL-ED           NEPAL                          12               0       13     228
24 months   MAL-ED           NEPAL                          12               1        3     228
24 months   MAL-ED           PERU                           1                0       15     201
24 months   MAL-ED           PERU                           1                1       15     201
24 months   MAL-ED           PERU                           2                0       11     201
24 months   MAL-ED           PERU                           2                1        6     201
24 months   MAL-ED           PERU                           3                0        8     201
24 months   MAL-ED           PERU                           3                1        7     201
24 months   MAL-ED           PERU                           4                0        7     201
24 months   MAL-ED           PERU                           4                1        4     201
24 months   MAL-ED           PERU                           5                0       11     201
24 months   MAL-ED           PERU                           5                1        8     201
24 months   MAL-ED           PERU                           6                0        8     201
24 months   MAL-ED           PERU                           6                1        3     201
24 months   MAL-ED           PERU                           7                0       11     201
24 months   MAL-ED           PERU                           7                1        4     201
24 months   MAL-ED           PERU                           8                0        8     201
24 months   MAL-ED           PERU                           8                1        4     201
24 months   MAL-ED           PERU                           9                0       17     201
24 months   MAL-ED           PERU                           9                1        4     201
24 months   MAL-ED           PERU                           10               0       11     201
24 months   MAL-ED           PERU                           10               1        3     201
24 months   MAL-ED           PERU                           11               0       13     201
24 months   MAL-ED           PERU                           11               1        8     201
24 months   MAL-ED           PERU                           12               0        7     201
24 months   MAL-ED           PERU                           12               1        8     201
24 months   MAL-ED           SOUTH AFRICA                   1                0       21     238
24 months   MAL-ED           SOUTH AFRICA                   1                1       13     238
24 months   MAL-ED           SOUTH AFRICA                   2                0       11     238
24 months   MAL-ED           SOUTH AFRICA                   2                1       11     238
24 months   MAL-ED           SOUTH AFRICA                   3                0       10     238
24 months   MAL-ED           SOUTH AFRICA                   3                1        4     238
24 months   MAL-ED           SOUTH AFRICA                   4                0       11     238
24 months   MAL-ED           SOUTH AFRICA                   4                1        1     238
24 months   MAL-ED           SOUTH AFRICA                   5                0       10     238
24 months   MAL-ED           SOUTH AFRICA                   5                1        2     238
24 months   MAL-ED           SOUTH AFRICA                   6                0        9     238
24 months   MAL-ED           SOUTH AFRICA                   6                1        7     238
24 months   MAL-ED           SOUTH AFRICA                   7                0       14     238
24 months   MAL-ED           SOUTH AFRICA                   7                1        8     238
24 months   MAL-ED           SOUTH AFRICA                   8                0        7     238
24 months   MAL-ED           SOUTH AFRICA                   8                1        1     238
24 months   MAL-ED           SOUTH AFRICA                   9                0       14     238
24 months   MAL-ED           SOUTH AFRICA                   9                1        5     238
24 months   MAL-ED           SOUTH AFRICA                   10               0       18     238
24 months   MAL-ED           SOUTH AFRICA                   10               1        7     238
24 months   MAL-ED           SOUTH AFRICA                   11               0       11     238
24 months   MAL-ED           SOUTH AFRICA                   11               1       12     238
24 months   MAL-ED           SOUTH AFRICA                   12               0       18     238
24 months   MAL-ED           SOUTH AFRICA                   12               1       13     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        6     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        9     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                0        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                1       19     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                0        4     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                1       14     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                0        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                1        6     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                0        4     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                1       14     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                0        7     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                1       11     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                0        8     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                1       15     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                0        4     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1        7     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                0        6     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                1       12     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               0        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               1       12     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               0        7     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               1       17     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0        7     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               1       19     214
24 months   NIH-Birth        BANGLADESH                     1                0       14     429
24 months   NIH-Birth        BANGLADESH                     1                1       29     429
24 months   NIH-Birth        BANGLADESH                     2                0       13     429
24 months   NIH-Birth        BANGLADESH                     2                1       23     429
24 months   NIH-Birth        BANGLADESH                     3                0       22     429
24 months   NIH-Birth        BANGLADESH                     3                1       17     429
24 months   NIH-Birth        BANGLADESH                     4                0       11     429
24 months   NIH-Birth        BANGLADESH                     4                1       23     429
24 months   NIH-Birth        BANGLADESH                     5                0       12     429
24 months   NIH-Birth        BANGLADESH                     5                1       23     429
24 months   NIH-Birth        BANGLADESH                     6                0       15     429
24 months   NIH-Birth        BANGLADESH                     6                1       18     429
24 months   NIH-Birth        BANGLADESH                     7                0       16     429
24 months   NIH-Birth        BANGLADESH                     7                1       18     429
24 months   NIH-Birth        BANGLADESH                     8                0       13     429
24 months   NIH-Birth        BANGLADESH                     8                1       14     429
24 months   NIH-Birth        BANGLADESH                     9                0       13     429
24 months   NIH-Birth        BANGLADESH                     9                1       13     429
24 months   NIH-Birth        BANGLADESH                     10               0       15     429
24 months   NIH-Birth        BANGLADESH                     10               1       18     429
24 months   NIH-Birth        BANGLADESH                     11               0       20     429
24 months   NIH-Birth        BANGLADESH                     11               1       23     429
24 months   NIH-Birth        BANGLADESH                     12               0       21     429
24 months   NIH-Birth        BANGLADESH                     12               1       25     429
24 months   PROBIT           BELARUS                        1                0      237    4035
24 months   PROBIT           BELARUS                        1                1       15    4035
24 months   PROBIT           BELARUS                        2                0      198    4035
24 months   PROBIT           BELARUS                        2                1       16    4035
24 months   PROBIT           BELARUS                        3                0      302    4035
24 months   PROBIT           BELARUS                        3                1       15    4035
24 months   PROBIT           BELARUS                        4                0      322    4035
24 months   PROBIT           BELARUS                        4                1       13    4035
24 months   PROBIT           BELARUS                        5                0      288    4035
24 months   PROBIT           BELARUS                        5                1       14    4035
24 months   PROBIT           BELARUS                        6                0      257    4035
24 months   PROBIT           BELARUS                        6                1       12    4035
24 months   PROBIT           BELARUS                        7                0      362    4035
24 months   PROBIT           BELARUS                        7                1       17    4035
24 months   PROBIT           BELARUS                        8                0      330    4035
24 months   PROBIT           BELARUS                        8                1       14    4035
24 months   PROBIT           BELARUS                        9                0      354    4035
24 months   PROBIT           BELARUS                        9                1       33    4035
24 months   PROBIT           BELARUS                        10               0      352    4035
24 months   PROBIT           BELARUS                        10               1       43    4035
24 months   PROBIT           BELARUS                        11               0      342    4035
24 months   PROBIT           BELARUS                        11               1       37    4035
24 months   PROBIT           BELARUS                        12               0      416    4035
24 months   PROBIT           BELARUS                        12               1       46    4035
24 months   PROVIDE          BANGLADESH                     1                0       19     578
24 months   PROVIDE          BANGLADESH                     1                1       13     578
24 months   PROVIDE          BANGLADESH                     2                0       17     578
24 months   PROVIDE          BANGLADESH                     2                1       13     578
24 months   PROVIDE          BANGLADESH                     3                0       33     578
24 months   PROVIDE          BANGLADESH                     3                1        7     578
24 months   PROVIDE          BANGLADESH                     4                0       23     578
24 months   PROVIDE          BANGLADESH                     4                1       10     578
24 months   PROVIDE          BANGLADESH                     5                0       32     578
24 months   PROVIDE          BANGLADESH                     5                1       10     578
24 months   PROVIDE          BANGLADESH                     6                0       42     578
24 months   PROVIDE          BANGLADESH                     6                1       33     578
24 months   PROVIDE          BANGLADESH                     7                0       45     578
24 months   PROVIDE          BANGLADESH                     7                1       25     578
24 months   PROVIDE          BANGLADESH                     8                0       44     578
24 months   PROVIDE          BANGLADESH                     8                1       16     578
24 months   PROVIDE          BANGLADESH                     9                0       45     578
24 months   PROVIDE          BANGLADESH                     9                1       21     578
24 months   PROVIDE          BANGLADESH                     10               0       44     578
24 months   PROVIDE          BANGLADESH                     10               1       20     578
24 months   PROVIDE          BANGLADESH                     11               0       28     578
24 months   PROVIDE          BANGLADESH                     11               1       10     578
24 months   PROVIDE          BANGLADESH                     12               0       16     578
24 months   PROVIDE          BANGLADESH                     12               1       12     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1        0       6
24 months   ZVITAMBO         ZIMBABWE                       1                0      127    1640
24 months   ZVITAMBO         ZIMBABWE                       1                1       63    1640
24 months   ZVITAMBO         ZIMBABWE                       2                0      123    1640
24 months   ZVITAMBO         ZIMBABWE                       2                1       74    1640
24 months   ZVITAMBO         ZIMBABWE                       3                0      160    1640
24 months   ZVITAMBO         ZIMBABWE                       3                1       68    1640
24 months   ZVITAMBO         ZIMBABWE                       4                0      116    1640
24 months   ZVITAMBO         ZIMBABWE                       4                1       54    1640
24 months   ZVITAMBO         ZIMBABWE                       5                0      110    1640
24 months   ZVITAMBO         ZIMBABWE                       5                1       58    1640
24 months   ZVITAMBO         ZIMBABWE                       6                0      124    1640
24 months   ZVITAMBO         ZIMBABWE                       6                1       72    1640
24 months   ZVITAMBO         ZIMBABWE                       7                0       71    1640
24 months   ZVITAMBO         ZIMBABWE                       7                1       49    1640
24 months   ZVITAMBO         ZIMBABWE                       8                0       79    1640
24 months   ZVITAMBO         ZIMBABWE                       8                1       48    1640
24 months   ZVITAMBO         ZIMBABWE                       9                0        9    1640
24 months   ZVITAMBO         ZIMBABWE                       9                1        4    1640
24 months   ZVITAMBO         ZIMBABWE                       10               0       18    1640
24 months   ZVITAMBO         ZIMBABWE                       10               1        6    1640
24 months   ZVITAMBO         ZIMBABWE                       11               0       45    1640
24 months   ZVITAMBO         ZIMBABWE                       11               1       27    1640
24 months   ZVITAMBO         ZIMBABWE                       12               0       89    1640
24 months   ZVITAMBO         ZIMBABWE                       12               1       46    1640


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/836572ad-081b-46a3-84a5-69a6805851a0/8a0e330e-e93c-4726-a55f-af71fd3b2ae1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/836572ad-081b-46a3-84a5-69a6805851a0/8a0e330e-e93c-4726-a55f-af71fd3b2ae1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/836572ad-081b-46a3-84a5-69a6805851a0/8a0e330e-e93c-4726-a55f-af71fd3b2ae1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/836572ad-081b-46a3-84a5-69a6805851a0/8a0e330e-e93c-4726-a55f-af71fd3b2ae1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       SAS-CompFeed     INDIA                          1                    NA                0.3139535    0.2229282   0.4049787
Birth       SAS-CompFeed     INDIA                          2                    NA                0.3116883    0.2055705   0.4178061
Birth       SAS-CompFeed     INDIA                          3                    NA                0.2898551    0.2118669   0.3678433
Birth       SAS-CompFeed     INDIA                          4                    NA                0.1935484    0.0898960   0.2972008
Birth       SAS-CompFeed     INDIA                          5                    NA                0.2613636    0.1671305   0.3555968
Birth       SAS-CompFeed     INDIA                          6                    NA                0.2692308    0.1908875   0.3475740
Birth       SAS-CompFeed     INDIA                          7                    NA                0.3300000    0.2253702   0.4346298
Birth       SAS-CompFeed     INDIA                          8                    NA                0.3472222    0.2710994   0.4233451
Birth       SAS-CompFeed     INDIA                          9                    NA                0.2176871    0.1539752   0.2813989
Birth       SAS-CompFeed     INDIA                          10                   NA                0.2887324    0.2055003   0.3719645
Birth       SAS-CompFeed     INDIA                          11                   NA                0.2268908    0.1786385   0.2751430
Birth       SAS-CompFeed     INDIA                          12                   NA                0.2807018    0.1874759   0.3739276
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                0.1295607    0.1115996   0.1475217
Birth       ZVITAMBO         ZIMBABWE                       2                    NA                0.1501901    0.1286009   0.1717794
Birth       ZVITAMBO         ZIMBABWE                       3                    NA                0.1160791    0.0976689   0.1344893
Birth       ZVITAMBO         ZIMBABWE                       4                    NA                0.1098790    0.0904169   0.1293411
Birth       ZVITAMBO         ZIMBABWE                       5                    NA                0.1258604    0.1054741   0.1462467
Birth       ZVITAMBO         ZIMBABWE                       6                    NA                0.1143360    0.0958386   0.1328333
Birth       ZVITAMBO         ZIMBABWE                       7                    NA                0.1020408    0.0847397   0.1193420
Birth       ZVITAMBO         ZIMBABWE                       8                    NA                0.0739857    0.0595153   0.0884560
Birth       ZVITAMBO         ZIMBABWE                       9                    NA                0.0631255    0.0499003   0.0763507
Birth       ZVITAMBO         ZIMBABWE                       10                   NA                0.0797310    0.0632756   0.0961865
Birth       ZVITAMBO         ZIMBABWE                       11                   NA                0.0929839    0.0764345   0.1095334
Birth       ZVITAMBO         ZIMBABWE                       12                   NA                0.0921811    0.0759145   0.1084476
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.2941176    0.1407532   0.4474821
6 months    CMC-V-BCS-2002   INDIA                          2                    NA                0.3125000    0.0850747   0.5399253
6 months    CMC-V-BCS-2002   INDIA                          3                    NA                0.1935484    0.0542839   0.3328129
6 months    CMC-V-BCS-2002   INDIA                          4                    NA                0.1818182    0.0677001   0.2959363
6 months    CMC-V-BCS-2002   INDIA                          5                    NA                0.3428571    0.1853900   0.5003242
6 months    CMC-V-BCS-2002   INDIA                          6                    NA                0.4324324    0.2725855   0.5922794
6 months    CMC-V-BCS-2002   INDIA                          7                    NA                0.5128205    0.3557364   0.6699046
6 months    CMC-V-BCS-2002   INDIA                          8                    NA                0.3529412    0.1254650   0.5804174
6 months    CMC-V-BCS-2002   INDIA                          9                    NA                0.3000000    0.0988908   0.5011092
6 months    CMC-V-BCS-2002   INDIA                          10                   NA                0.2758621    0.1129718   0.4387523
6 months    CMC-V-BCS-2002   INDIA                          11                   NA                0.1666667    0.0538050   0.2795283
6 months    CMC-V-BCS-2002   INDIA                          12                   NA                0.2800000    0.1037567   0.4562433
6 months    IRC              INDIA                          1                    NA                0.2894737    0.1451010   0.4338464
6 months    IRC              INDIA                          2                    NA                0.4642857    0.2793322   0.6492392
6 months    IRC              INDIA                          3                    NA                0.2962963    0.1238482   0.4687444
6 months    IRC              INDIA                          4                    NA                0.2857143    0.0922617   0.4791669
6 months    IRC              INDIA                          5                    NA                0.3333333    0.1314658   0.5352008
6 months    IRC              INDIA                          6                    NA                0.1351351    0.0248442   0.2454260
6 months    IRC              INDIA                          7                    NA                0.3055556    0.1548966   0.4562145
6 months    IRC              INDIA                          8                    NA                0.1363636    0.0348392   0.2378881
6 months    IRC              INDIA                          9                    NA                0.2592593    0.0937582   0.4247603
6 months    IRC              INDIA                          10                   NA                0.1351351    0.0248442   0.2454260
6 months    IRC              INDIA                          11                   NA                0.1750000    0.0571042   0.2928958
6 months    IRC              INDIA                          12                   NA                0.2745098    0.1518812   0.3971384
6 months    Keneba           GAMBIA                         1                    NA                0.1285714    0.0832889   0.1738539
6 months    Keneba           GAMBIA                         2                    NA                0.1122995    0.0670354   0.1575635
6 months    Keneba           GAMBIA                         3                    NA                0.1402715    0.0944762   0.1860668
6 months    Keneba           GAMBIA                         4                    NA                0.1048951    0.0546610   0.1551292
6 months    Keneba           GAMBIA                         5                    NA                0.1398601    0.0829990   0.1967213
6 months    Keneba           GAMBIA                         6                    NA                0.1864407    0.1161535   0.2567278
6 months    Keneba           GAMBIA                         7                    NA                0.2065217    0.1237831   0.2892604
6 months    Keneba           GAMBIA                         8                    NA                0.1436782    0.0915477   0.1958086
6 months    Keneba           GAMBIA                         9                    NA                0.1609195    0.1063081   0.2155310
6 months    Keneba           GAMBIA                         10                   NA                0.1612903    0.1155040   0.2070767
6 months    Keneba           GAMBIA                         11                   NA                0.1283422    0.0803922   0.1762923
6 months    Keneba           GAMBIA                         12                   NA                0.1197917    0.0738499   0.1657334
6 months    LCNI-5           MALAWI                         1                    NA                0.4411765    0.3230911   0.5592618
6 months    LCNI-5           MALAWI                         2                    NA                0.2826087    0.1524123   0.4128051
6 months    LCNI-5           MALAWI                         3                    NA                0.4230769    0.2330614   0.6130924
6 months    LCNI-5           MALAWI                         4                    NA                0.4102564    0.2557900   0.5647228
6 months    LCNI-5           MALAWI                         5                    NA                0.3636364    0.2214143   0.5058585
6 months    LCNI-5           MALAWI                         6                    NA                0.4411765    0.2741785   0.6081744
6 months    LCNI-5           MALAWI                         7                    NA                0.3278689    0.2099945   0.4457432
6 months    LCNI-5           MALAWI                         8                    NA                0.2903226    0.1980152   0.3826300
6 months    LCNI-5           MALAWI                         9                    NA                0.3655914    0.2676541   0.4635287
6 months    LCNI-5           MALAWI                         10                   NA                0.4518519    0.3678503   0.5358534
6 months    LCNI-5           MALAWI                         11                   NA                0.3333333    0.2431126   0.4235540
6 months    LCNI-5           MALAWI                         12                   NA                0.3263158    0.2319765   0.4206551
6 months    NIH-Birth        BANGLADESH                     1                    NA                0.2884615    0.1652094   0.4117136
6 months    NIH-Birth        BANGLADESH                     2                    NA                0.2857143    0.1591076   0.4123210
6 months    NIH-Birth        BANGLADESH                     3                    NA                0.2400000    0.1215104   0.3584896
6 months    NIH-Birth        BANGLADESH                     4                    NA                0.2380952    0.1091653   0.3670252
6 months    NIH-Birth        BANGLADESH                     5                    NA                0.2142857    0.0900756   0.3384959
6 months    NIH-Birth        BANGLADESH                     6                    NA                0.3720930    0.2274851   0.5167009
6 months    NIH-Birth        BANGLADESH                     7                    NA                0.2820513    0.1406897   0.4234128
6 months    NIH-Birth        BANGLADESH                     8                    NA                0.2000000    0.0673587   0.3326413
6 months    NIH-Birth        BANGLADESH                     9                    NA                0.3095238    0.1695813   0.4494663
6 months    NIH-Birth        BANGLADESH                     10                   NA                0.2380952    0.1091653   0.3670252
6 months    NIH-Birth        BANGLADESH                     11                   NA                0.3400000    0.2085746   0.4714254
6 months    NIH-Birth        BANGLADESH                     12                   NA                0.1960784    0.0870124   0.3051445
6 months    PROBIT           BELARUS                        1                    NA                0.0502049    0.0301995   0.0702103
6 months    PROBIT           BELARUS                        2                    NA                0.0525188    0.0375749   0.0674626
6 months    PROBIT           BELARUS                        3                    NA                0.0384615    0.0248669   0.0520562
6 months    PROBIT           BELARUS                        4                    NA                0.0328168    0.0170440   0.0485896
6 months    PROBIT           BELARUS                        5                    NA                0.0261026    0.0139893   0.0382159
6 months    PROBIT           BELARUS                        6                    NA                0.0421525    0.0232355   0.0610694
6 months    PROBIT           BELARUS                        7                    NA                0.0362269    0.0204971   0.0519568
6 months    PROBIT           BELARUS                        8                    NA                0.0353021    0.0201170   0.0504873
6 months    PROBIT           BELARUS                        9                    NA                0.0477137    0.0280055   0.0674219
6 months    PROBIT           BELARUS                        10                   NA                0.0384843    0.0231074   0.0538612
6 months    PROBIT           BELARUS                        11                   NA                0.0421649    0.0253509   0.0589789
6 months    PROBIT           BELARUS                        12                   NA                0.0345026    0.0197810   0.0492242
6 months    SAS-CompFeed     INDIA                          1                    NA                0.3333333    0.2480594   0.4186073
6 months    SAS-CompFeed     INDIA                          2                    NA                0.2530120    0.1456608   0.3603632
6 months    SAS-CompFeed     INDIA                          3                    NA                0.2972973    0.1298673   0.4647273
6 months    SAS-CompFeed     INDIA                          4                    NA                0.2121212    0.1087220   0.3155205
6 months    SAS-CompFeed     INDIA                          5                    NA                0.2988506    0.2178324   0.3798687
6 months    SAS-CompFeed     INDIA                          6                    NA                0.3333333    0.2743385   0.3923282
6 months    SAS-CompFeed     INDIA                          7                    NA                0.4180328    0.3207141   0.5153515
6 months    SAS-CompFeed     INDIA                          8                    NA                0.3148148    0.2459016   0.3837280
6 months    SAS-CompFeed     INDIA                          9                    NA                0.1781609    0.1262272   0.2300946
6 months    SAS-CompFeed     INDIA                          10                   NA                0.2751678    0.2044808   0.3458548
6 months    SAS-CompFeed     INDIA                          11                   NA                0.2711864    0.2139494   0.3284235
6 months    SAS-CompFeed     INDIA                          12                   NA                0.2542373    0.1538596   0.3546149
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1126761    0.0606564   0.1646958
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0805369    0.0368324   0.1242415
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0857143    0.0393313   0.1320973
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0915033    0.0458061   0.1372004
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1275168    0.0739465   0.1810871
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1188811    0.0658219   0.1719403
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1025641    0.0599712   0.1451570
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.1407035    0.0923807   0.1890264
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0760870    0.0377677   0.1144062
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1153846    0.0719561   0.1588131
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.0666667    0.0316471   0.1016862
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.0465116    0.0150320   0.0779912
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.1711165    0.1454006   0.1968324
6 months    ZVITAMBO         ZIMBABWE                       2                    NA                0.1693548    0.1398302   0.1988794
6 months    ZVITAMBO         ZIMBABWE                       3                    NA                0.2138201    0.1848025   0.2428376
6 months    ZVITAMBO         ZIMBABWE                       4                    NA                0.1750381    0.1459795   0.2040966
6 months    ZVITAMBO         ZIMBABWE                       5                    NA                0.1666667    0.1378370   0.1954963
6 months    ZVITAMBO         ZIMBABWE                       6                    NA                0.1651786    0.1371008   0.1932563
6 months    ZVITAMBO         ZIMBABWE                       7                    NA                0.1824926    0.1533310   0.2116542
6 months    ZVITAMBO         ZIMBABWE                       8                    NA                0.1377551    0.1136292   0.1618810
6 months    ZVITAMBO         ZIMBABWE                       9                    NA                0.1294872    0.1059244   0.1530500
6 months    ZVITAMBO         ZIMBABWE                       10                   NA                0.1613419    0.1325246   0.1901591
6 months    ZVITAMBO         ZIMBABWE                       11                   NA                0.1547170    0.1295773   0.1798567
6 months    ZVITAMBO         ZIMBABWE                       12                   NA                0.1364734    0.1130894   0.1598575
24 months   IRC              INDIA                          1                    NA                0.5263158    0.3673676   0.6852640
24 months   IRC              INDIA                          2                    NA                0.5714286    0.3879044   0.7549527
24 months   IRC              INDIA                          3                    NA                0.4444444    0.2567851   0.6321038
24 months   IRC              INDIA                          4                    NA                0.6190476    0.4110936   0.8270017
24 months   IRC              INDIA                          5                    NA                0.7727273    0.5973977   0.9480568
24 months   IRC              INDIA                          6                    NA                0.2162162    0.0834092   0.3490232
24 months   IRC              INDIA                          7                    NA                0.4166667    0.2554235   0.5779098
24 months   IRC              INDIA                          8                    NA                0.2727273    0.1409725   0.4044820
24 months   IRC              INDIA                          9                    NA                0.5185185    0.3298195   0.7072176
24 months   IRC              INDIA                          10                   NA                0.2432432    0.1048301   0.3816564
24 months   IRC              INDIA                          11                   NA                0.3750000    0.2247878   0.5252122
24 months   IRC              INDIA                          12                   NA                0.4038462    0.2703204   0.5373719
24 months   Keneba           GAMBIA                         1                    NA                0.3333333    0.2626577   0.4040090
24 months   Keneba           GAMBIA                         2                    NA                0.2994012    0.2299184   0.3688840
24 months   Keneba           GAMBIA                         3                    NA                0.2941176    0.2256041   0.3626312
24 months   Keneba           GAMBIA                         4                    NA                0.3421053    0.2549929   0.4292176
24 months   Keneba           GAMBIA                         5                    NA                0.3852459    0.2988658   0.4716260
24 months   Keneba           GAMBIA                         6                    NA                0.3369565    0.2403430   0.4335701
24 months   Keneba           GAMBIA                         7                    NA                0.4444444    0.3362004   0.5526885
24 months   Keneba           GAMBIA                         8                    NA                0.2784810    0.2085665   0.3483955
24 months   Keneba           GAMBIA                         9                    NA                0.3144654    0.2422755   0.3866553
24 months   Keneba           GAMBIA                         10                   NA                0.3900000    0.3223829   0.4576171
24 months   Keneba           GAMBIA                         11                   NA                0.3262411    0.2488331   0.4036492
24 months   Keneba           GAMBIA                         12                   NA                0.3533333    0.2768158   0.4298509
24 months   LCNI-5           MALAWI                         1                    NA                0.3658537    0.2182898   0.5134175
24 months   LCNI-5           MALAWI                         2                    NA                0.2333333    0.0818536   0.3848131
24 months   LCNI-5           MALAWI                         3                    NA                0.4736842    0.2489784   0.6983900
24 months   LCNI-5           MALAWI                         4                    NA                0.3928571    0.2118035   0.5739108
24 months   LCNI-5           MALAWI                         5                    NA                0.4193548    0.2454992   0.5932105
24 months   LCNI-5           MALAWI                         6                    NA                0.5833333    0.3859227   0.7807440
24 months   LCNI-5           MALAWI                         7                    NA                0.5106383    0.3676020   0.6536746
24 months   LCNI-5           MALAWI                         8                    NA                0.3380282    0.2279020   0.4481543
24 months   LCNI-5           MALAWI                         9                    NA                0.4029851    0.2854349   0.5205352
24 months   LCNI-5           MALAWI                         10                   NA                0.5268817    0.4253216   0.6284419
24 months   LCNI-5           MALAWI                         11                   NA                0.4843750    0.3618312   0.6069188
24 months   LCNI-5           MALAWI                         12                   NA                0.5312500    0.4088860   0.6536140
24 months   NIH-Birth        BANGLADESH                     1                    NA                0.6744186    0.5341969   0.8146403
24 months   NIH-Birth        BANGLADESH                     2                    NA                0.6388889    0.4818032   0.7959746
24 months   NIH-Birth        BANGLADESH                     3                    NA                0.4358974    0.2800880   0.5917069
24 months   NIH-Birth        BANGLADESH                     4                    NA                0.6764706    0.5190372   0.8339039
24 months   NIH-Birth        BANGLADESH                     5                    NA                0.6571429    0.4997057   0.8145800
24 months   NIH-Birth        BANGLADESH                     6                    NA                0.5454545    0.3753696   0.7155395
24 months   NIH-Birth        BANGLADESH                     7                    NA                0.5294118    0.3614414   0.6973822
24 months   NIH-Birth        BANGLADESH                     8                    NA                0.5185185    0.3298302   0.7072068
24 months   NIH-Birth        BANGLADESH                     9                    NA                0.5000000    0.3075853   0.6924147
24 months   NIH-Birth        BANGLADESH                     10                   NA                0.5454545    0.3753696   0.7155395
24 months   NIH-Birth        BANGLADESH                     11                   NA                0.5348837    0.3856280   0.6841395
24 months   NIH-Birth        BANGLADESH                     12                   NA                0.5434783    0.3993671   0.6875895
24 months   PROBIT           BELARUS                        1                    NA                0.0595238   -0.0492566   0.1683043
24 months   PROBIT           BELARUS                        2                    NA                0.0747664    0.0020897   0.1474430
24 months   PROBIT           BELARUS                        3                    NA                0.0473186    0.0208103   0.0738269
24 months   PROBIT           BELARUS                        4                    NA                0.0388060   -0.0034387   0.0810507
24 months   PROBIT           BELARUS                        5                    NA                0.0463576    0.0289496   0.0637656
24 months   PROBIT           BELARUS                        6                    NA                0.0446097   -0.0066734   0.0958927
24 months   PROBIT           BELARUS                        7                    NA                0.0448549    0.0001744   0.0895353
24 months   PROBIT           BELARUS                        8                    NA                0.0406977    0.0036141   0.0777812
24 months   PROBIT           BELARUS                        9                    NA                0.0852713    0.0421989   0.1283437
24 months   PROBIT           BELARUS                        10                   NA                0.1088608    0.0548186   0.1629030
24 months   PROBIT           BELARUS                        11                   NA                0.0976253    0.0231177   0.1721329
24 months   PROBIT           BELARUS                        12                   NA                0.0995671    0.0243100   0.1748242
24 months   PROVIDE          BANGLADESH                     1                    NA                0.4062500    0.2359371   0.5765629
24 months   PROVIDE          BANGLADESH                     2                    NA                0.4333333    0.2558579   0.6108088
24 months   PROVIDE          BANGLADESH                     3                    NA                0.1750000    0.0571471   0.2928529
24 months   PROVIDE          BANGLADESH                     4                    NA                0.3030303    0.1460963   0.4599643
24 months   PROVIDE          BANGLADESH                     5                    NA                0.2380952    0.1091738   0.3670167
24 months   PROVIDE          BANGLADESH                     6                    NA                0.4400000    0.3275618   0.5524382
24 months   PROVIDE          BANGLADESH                     7                    NA                0.3571429    0.2447980   0.4694877
24 months   PROVIDE          BANGLADESH                     8                    NA                0.2666667    0.1546756   0.3786578
24 months   PROVIDE          BANGLADESH                     9                    NA                0.3181818    0.2057151   0.4306486
24 months   PROVIDE          BANGLADESH                     10                   NA                0.3125000    0.1988432   0.4261568
24 months   PROVIDE          BANGLADESH                     11                   NA                0.2631579    0.1230290   0.4032868
24 months   PROVIDE          BANGLADESH                     12                   NA                0.4285714    0.2451130   0.6120299


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       SAS-CompFeed     INDIA                          NA                   NA                0.2787540   0.2475949   0.3099131
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1033514   0.0982859   0.1084168
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    Keneba           GAMBIA                         NA                   NA                0.1412159   0.1262788   0.1561530
6 months    LCNI-5           MALAWI                         NA                   NA                0.3682956   0.3356382   0.4009530
6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    PROBIT           BELARUS                        NA                   NA                0.0393401   0.0293640   0.0493162
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0970922   0.0842059   0.1099785
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1628792   0.1551057   0.1706527
24 months   IRC              INDIA                          NA                   NA                0.4205379   0.3726382   0.4684376
24 months   Keneba           GAMBIA                         NA                   NA                0.3368116   0.3145020   0.3591212
24 months   LCNI-5           MALAWI                         NA                   NA                0.4455959   0.4050760   0.4861157
24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5687646   0.5218455   0.6156837
24 months   PROBIT           BELARUS                        NA                   NA                0.0681537   0.0420376   0.0942697
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
Birth       SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
Birth       SAS-CompFeed     INDIA                          2                    1                 0.9927850   0.6798243    1.4498188
Birth       SAS-CompFeed     INDIA                          3                    1                 0.9232421   0.6185254    1.3780776
Birth       SAS-CompFeed     INDIA                          4                    1                 0.6164875   0.3235929    1.1744904
Birth       SAS-CompFeed     INDIA                          5                    1                 0.8324916   0.4852659    1.4281700
Birth       SAS-CompFeed     INDIA                          6                    1                 0.8575499   0.5283074    1.3919770
Birth       SAS-CompFeed     INDIA                          7                    1                 1.0511111   0.8087427    1.3661139
Birth       SAS-CompFeed     INDIA                          8                    1                 1.1059671   0.8204344    1.4908726
Birth       SAS-CompFeed     INDIA                          9                    1                 0.6933736   0.4727351    1.0169902
Birth       SAS-CompFeed     INDIA                          10                   1                 0.9196661   0.6282910    1.3461689
Birth       SAS-CompFeed     INDIA                          11                   1                 0.7226891   0.4815075    1.0846757
Birth       SAS-CompFeed     INDIA                          12                   1                 0.8940871   0.5315816    1.5037986
Birth       ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.0000000
Birth       ZVITAMBO         ZIMBABWE                       2                    1                 1.1592260   0.9493758    1.4154615
Birth       ZVITAMBO         ZIMBABWE                       3                    1                 0.8959439   0.7257679    1.1060223
Birth       ZVITAMBO         ZIMBABWE                       4                    1                 0.8480893   0.6772643    1.0620011
Birth       ZVITAMBO         ZIMBABWE                       5                    1                 0.9714396   0.7849175    1.2022853
Birth       ZVITAMBO         ZIMBABWE                       6                    1                 0.8824897   0.7131521    1.0920365
Birth       ZVITAMBO         ZIMBABWE                       7                    1                 0.7875909   0.6326816    0.9804291
Birth       ZVITAMBO         ZIMBABWE                       8                    1                 0.5710504   0.4493249    0.7257523
Birth       ZVITAMBO         ZIMBABWE                       9                    1                 0.4872271   0.3789903    0.6263756
Birth       ZVITAMBO         ZIMBABWE                       10                   1                 0.6153952   0.4799302    0.7890966
Birth       ZVITAMBO         ZIMBABWE                       11                   1                 0.7176864   0.5727399    0.8993153
Birth       ZVITAMBO         ZIMBABWE                       12                   1                 0.7114895   0.5684740    0.8904846
6 months    CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
6 months    CMC-V-BCS-2002   INDIA                          2                    1                 1.0625000   0.4340220    2.6010345
6 months    CMC-V-BCS-2002   INDIA                          3                    1                 0.6580645   0.2706140    1.6002457
6 months    CMC-V-BCS-2002   INDIA                          4                    1                 0.6181818   0.2733603    1.3979672
6 months    CMC-V-BCS-2002   INDIA                          5                    1                 1.1657143   0.5818574    2.3354345
6 months    CMC-V-BCS-2002   INDIA                          6                    1                 1.4702703   0.7759069    2.7860231
6 months    CMC-V-BCS-2002   INDIA                          7                    1                 1.7435897   0.9523644    3.1921659
6 months    CMC-V-BCS-2002   INDIA                          8                    1                 1.2000000   0.5237642    2.7493287
6 months    CMC-V-BCS-2002   INDIA                          9                    1                 1.0200000   0.4362746    2.3847365
6 months    CMC-V-BCS-2002   INDIA                          10                   1                 0.9379310   0.4266308    2.0620045
6 months    CMC-V-BCS-2002   INDIA                          11                   1                 0.5666667   0.2410738    1.3320036
6 months    CMC-V-BCS-2002   INDIA                          12                   1                 0.9520000   0.4203951    2.1558387
6 months    IRC              INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
6 months    IRC              INDIA                          2                    1                 1.6038961   0.8471555    3.0366121
6 months    IRC              INDIA                          3                    1                 1.0235690   0.4756000    2.2028883
6 months    IRC              INDIA                          4                    1                 0.9870130   0.4257019    2.2884433
6 months    IRC              INDIA                          5                    1                 1.1515152   0.5254721    2.5234207
6 months    IRC              INDIA                          6                    1                 0.4668305   0.1793768    1.2149321
6 months    IRC              INDIA                          7                    1                 1.0555556   0.5234791    2.1284471
6 months    IRC              INDIA                          8                    1                 0.4710744   0.1922678    1.1541767
6 months    IRC              INDIA                          9                    1                 0.8956229   0.3983886    2.0134624
6 months    IRC              INDIA                          10                   1                 0.4668305   0.1793768    1.2149321
6 months    IRC              INDIA                          11                   1                 0.6045455   0.2614553    1.3978499
6 months    IRC              INDIA                          12                   1                 0.9483066   0.4854736    1.8523879
6 months    Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000    1.0000000
6 months    Keneba           GAMBIA                         2                    1                 0.8734403   0.5114134    1.4917440
6 months    Keneba           GAMBIA                         3                    1                 1.0910005   0.6749314    1.7635601
6 months    Keneba           GAMBIA                         4                    1                 0.8158508   0.4502343    1.4783692
6 months    Keneba           GAMBIA                         5                    1                 1.0878011   0.6352496    1.8627501
6 months    Keneba           GAMBIA                         6                    1                 1.4500942   0.8656399    2.4291545
6 months    Keneba           GAMBIA                         7                    1                 1.6062802   0.9422277    2.7383359
6 months    Keneba           GAMBIA                         8                    1                 1.1174968   0.6739739    1.8528893
6 months    Keneba           GAMBIA                         9                    1                 1.2515964   0.7674538    2.0411568
6 months    Keneba           GAMBIA                         10                   1                 1.2544803   0.7980076    1.9720625
6 months    Keneba           GAMBIA                         11                   1                 0.9982175   0.5973624    1.6680630
6 months    Keneba           GAMBIA                         12                   1                 0.9317130   0.5535364    1.5682602
6 months    LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000    1.0000000
6 months    LCNI-5           MALAWI                         2                    1                 0.6405797   0.3759920    1.0913592
6 months    LCNI-5           MALAWI                         3                    1                 0.9589744   0.5685153    1.6176025
6 months    LCNI-5           MALAWI                         4                    1                 0.9299145   0.5858928    1.4759372
6 months    LCNI-5           MALAWI                         5                    1                 0.8242424   0.5131328    1.3239760
6 months    LCNI-5           MALAWI                         6                    1                 1.0000000   0.6290145    1.5897886
6 months    LCNI-5           MALAWI                         7                    1                 0.7431694   0.4747136    1.1634398
6 months    LCNI-5           MALAWI                         8                    1                 0.6580645   0.4342810    0.9971630
6 months    LCNI-5           MALAWI                         9                    1                 0.8286738   0.5674413    1.2101698
6 months    LCNI-5           MALAWI                         10                   1                 1.0241975   0.7393543    1.4187794
6 months    LCNI-5           MALAWI                         11                   1                 0.7555556   0.5163558    1.1055636
6 months    LCNI-5           MALAWI                         12                   1                 0.7396491   0.4987935    1.0968083
6 months    NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
6 months    NIH-Birth        BANGLADESH                     2                    1                 0.9904762   0.5351889    1.8330780
6 months    NIH-Birth        BANGLADESH                     3                    1                 0.8320000   0.4330741    1.5983963
6 months    NIH-Birth        BANGLADESH                     4                    1                 0.8253968   0.4140918    1.6452387
6 months    NIH-Birth        BANGLADESH                     5                    1                 0.7428571   0.3615487    1.5263138
6 months    NIH-Birth        BANGLADESH                     6                    1                 1.2899225   0.7239751    2.2982836
6 months    NIH-Birth        BANGLADESH                     7                    1                 0.9777778   0.5060732    1.8891523
6 months    NIH-Birth        BANGLADESH                     8                    1                 0.6933333   0.3150035    1.5260500
6 months    NIH-Birth        BANGLADESH                     9                    1                 1.0730159   0.5760265    1.9988023
6 months    NIH-Birth        BANGLADESH                     10                   1                 0.8253968   0.4140918    1.6452387
6 months    NIH-Birth        BANGLADESH                     11                   1                 1.1786667   0.6624611    2.0971119
6 months    NIH-Birth        BANGLADESH                     12                   1                 0.6797386   0.3370759    1.3707434
6 months    PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000    1.0000000
6 months    PROBIT           BELARUS                        2                    1                 1.0460879   0.7304074    1.4982049
6 months    PROBIT           BELARUS                        3                    1                 0.7660911   0.5022941    1.1684300
6 months    PROBIT           BELARUS                        4                    1                 0.6536565   0.3856848    1.1078137
6 months    PROBIT           BELARUS                        5                    1                 0.5199214   0.2905364    0.9304110
6 months    PROBIT           BELARUS                        6                    1                 0.8396083   0.5588259    1.2614700
6 months    PROBIT           BELARUS                        7                    1                 0.7215813   0.4172539    1.2478723
6 months    PROBIT           BELARUS                        8                    1                 0.7031603   0.4626381    1.0687281
6 months    PROBIT           BELARUS                        9                    1                 0.9503794   0.5526677    1.6342931
6 months    PROBIT           BELARUS                        10                   1                 0.7665446   0.4657390    1.2616309
6 months    PROBIT           BELARUS                        11                   1                 0.8398556   0.5131853    1.3744695
6 months    PROBIT           BELARUS                        12                   1                 0.6872352   0.4054352    1.1649018
6 months    SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
6 months    SAS-CompFeed     INDIA                          2                    1                 0.7590361   0.4802163    1.1997424
6 months    SAS-CompFeed     INDIA                          3                    1                 0.8918919   0.5045618    1.5765583
6 months    SAS-CompFeed     INDIA                          4                    1                 0.6363636   0.3137214    1.2908228
6 months    SAS-CompFeed     INDIA                          5                    1                 0.8965517   0.6877690    1.1687137
6 months    SAS-CompFeed     INDIA                          6                    1                 1.0000000   0.7502522    1.3328851
6 months    SAS-CompFeed     INDIA                          7                    1                 1.2540984   0.8374418    1.8780560
6 months    SAS-CompFeed     INDIA                          8                    1                 0.9444444   0.6971544    1.2794517
6 months    SAS-CompFeed     INDIA                          9                    1                 0.5344828   0.3394146    0.8416604
6 months    SAS-CompFeed     INDIA                          10                   1                 0.8255034   0.5128185    1.3288441
6 months    SAS-CompFeed     INDIA                          11                   1                 0.8135593   0.6335489    1.0447161
6 months    SAS-CompFeed     INDIA                          12                   1                 0.7627119   0.4851778    1.1990024
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000    1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7147651   0.3505394    1.4574370
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7607143   0.3735089    1.5493239
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.8120915   0.4113743    1.6031449
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.1317114   0.6062436    2.1126338
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.0550699   0.5551398    2.0052111
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.9102564   0.4891934    1.6937407
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.2487437   0.7023884    2.2200835
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.6752717   0.3410064    1.3371945
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.0240385   0.5644510    1.8578313
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.5916667   0.2940069    1.1906845
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.4127907   0.1819373    0.9365655
6 months    ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.0000000
6 months    ZVITAMBO         ZIMBABWE                       2                    1                 0.9897049   0.7862206    1.2458536
6 months    ZVITAMBO         ZIMBABWE                       3                    1                 1.2495585   1.0205076    1.5300194
6 months    ZVITAMBO         ZIMBABWE                       4                    1                 1.0229174   0.8176895    1.2796544
6 months    ZVITAMBO         ZIMBABWE                       5                    1                 0.9739953   0.7745357    1.2248200
6 months    ZVITAMBO         ZIMBABWE                       6                    1                 0.9652989   0.7693504    1.2111542
6 months    ZVITAMBO         ZIMBABWE                       7                    1                 1.0664815   0.8564173    1.3280707
6 months    ZVITAMBO         ZIMBABWE                       8                    1                 0.8050369   0.6391324    1.0140066
6 months    ZVITAMBO         ZIMBABWE                       9                    1                 0.7567194   0.5976396    0.9581430
6 months    ZVITAMBO         ZIMBABWE                       10                   1                 0.9428772   0.7465875    1.1907747
6 months    ZVITAMBO         ZIMBABWE                       11                   1                 0.9041616   0.7246416    1.1281554
6 months    ZVITAMBO         ZIMBABWE                       12                   1                 0.7975469   0.6350019    1.0016994
24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
24 months   IRC              INDIA                          2                    1                 1.0857143   0.6986418    1.6872388
24 months   IRC              INDIA                          3                    1                 0.8444444   0.5024813    1.4191303
24 months   IRC              INDIA                          4                    1                 1.1761905   0.7486832    1.8478095
24 months   IRC              INDIA                          5                    1                 1.4681818   1.0063050    2.1420522
24 months   IRC              INDIA                          6                    1                 0.4108108   0.2071974    0.8145156
24 months   IRC              INDIA                          7                    1                 0.7916667   0.4845703    1.2933853
24 months   IRC              INDIA                          8                    1                 0.5181818   0.2931244    0.9160356
24 months   IRC              INDIA                          9                    1                 0.9851852   0.6139547    1.5808818
24 months   IRC              INDIA                          10                   1                 0.4621622   0.2426716    0.8801765
24 months   IRC              INDIA                          11                   1                 0.7125000   0.4314384    1.1766600
24 months   IRC              INDIA                          12                   1                 0.7673077   0.4903347    1.2007332
24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000    1.0000000
24 months   Keneba           GAMBIA                         2                    1                 0.8982036   0.6559282    1.2299665
24 months   Keneba           GAMBIA                         3                    1                 0.8823529   0.6439373    1.2090412
24 months   Keneba           GAMBIA                         4                    1                 1.0263158   0.7368450    1.4295056
24 months   Keneba           GAMBIA                         5                    1                 1.1557377   0.8488648    1.5735481
24 months   Keneba           GAMBIA                         6                    1                 1.0108696   0.7076592    1.4439963
24 months   Keneba           GAMBIA                         7                    1                 1.3333333   0.9653843    1.8415234
24 months   Keneba           GAMBIA                         8                    1                 0.8354430   0.6014550    1.1604609
24 months   Keneba           GAMBIA                         9                    1                 0.9433962   0.6902048    1.2894672
24 months   Keneba           GAMBIA                         10                   1                 1.1700000   0.8896876    1.5386300
24 months   Keneba           GAMBIA                         11                   1                 0.9787234   0.7119768    1.3454083
24 months   Keneba           GAMBIA                         12                   1                 1.0600000   0.7828579    1.4352540
24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000    1.0000000
24 months   LCNI-5           MALAWI                         2                    1                 0.6377778   0.2969896    1.3696117
24 months   LCNI-5           MALAWI                         3                    1                 1.2947368   0.6946384    2.4132604
24 months   LCNI-5           MALAWI                         4                    1                 1.0738095   0.5820350    1.9810955
24 months   LCNI-5           MALAWI                         5                    1                 1.1462366   0.6427963    2.0439729
24 months   LCNI-5           MALAWI                         6                    1                 1.5944444   0.9417806    2.6994113
24 months   LCNI-5           MALAWI                         7                    1                 1.3957447   0.8541578    2.2807300
24 months   LCNI-5           MALAWI                         8                    1                 0.9239437   0.5501382    1.5517408
24 months   LCNI-5           MALAWI                         9                    1                 1.1014925   0.6695824    1.8120037
24 months   LCNI-5           MALAWI                         10                   1                 1.4401434   0.9210036    2.2519053
24 months   LCNI-5           MALAWI                         11                   1                 1.3239583   0.8224286    2.1313287
24 months   LCNI-5           MALAWI                         12                   1                 1.4520833   0.9125835    2.3105239
24 months   NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
24 months   NIH-Birth        BANGLADESH                     2                    1                 0.9473180   0.6865215    1.3071862
24 months   NIH-Birth        BANGLADESH                     3                    1                 0.6463307   0.4274319    0.9773330
24 months   NIH-Birth        BANGLADESH                     4                    1                 1.0030426   0.7341537    1.3704140
24 months   NIH-Birth        BANGLADESH                     5                    1                 0.9743842   0.7095203    1.3381219
24 months   NIH-Birth        BANGLADESH                     6                    1                 0.8087774   0.5559851    1.1765081
24 months   NIH-Birth        BANGLADESH                     7                    1                 0.7849899   0.5371824    1.1471132
24 months   NIH-Birth        BANGLADESH                     8                    1                 0.7688378   0.5056136    1.1690975
24 months   NIH-Birth        BANGLADESH                     9                    1                 0.7413793   0.4787164    1.1481605
24 months   NIH-Birth        BANGLADESH                     10                   1                 0.8087774   0.5559851    1.1765081
24 months   NIH-Birth        BANGLADESH                     11                   1                 0.7931034   0.5600177    1.1232022
24 months   NIH-Birth        BANGLADESH                     12                   1                 0.8058471   0.5753253    1.1287344
24 months   PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000    1.0000000
24 months   PROBIT           BELARUS                        2                    1                 1.2560748   0.1437092   10.9785832
24 months   PROBIT           BELARUS                        3                    1                 0.7949527   0.1199699    5.2675715
24 months   PROBIT           BELARUS                        4                    1                 0.6519403   0.0714334    5.9499603
24 months   PROBIT           BELARUS                        5                    1                 0.7788079   0.1145291    5.2959615
24 months   PROBIT           BELARUS                        6                    1                 0.7494424   0.0805129    6.9760767
24 months   PROBIT           BELARUS                        7                    1                 0.7535620   0.0941079    6.0340911
24 months   PROBIT           BELARUS                        8                    1                 0.6837209   0.0839892    5.5658853
24 months   PROBIT           BELARUS                        9                    1                 1.4325581   0.3290893    6.2360664
24 months   PROBIT           BELARUS                        10                   1                 1.8288608   0.2430746   13.7601022
24 months   PROBIT           BELARUS                        11                   1                 1.6401055   0.4841358    5.5561811
24 months   PROBIT           BELARUS                        12                   1                 1.6727273   0.2224949   12.5756459
24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
24 months   PROVIDE          BANGLADESH                     2                    1                 1.0666667   0.5936028    1.9167325
24 months   PROVIDE          BANGLADESH                     3                    1                 0.4307692   0.1948634    0.9522678
24 months   PROVIDE          BANGLADESH                     4                    1                 0.7459207   0.3831084    1.4523244
24 months   PROVIDE          BANGLADESH                     5                    1                 0.5860806   0.2954979    1.1624126
24 months   PROVIDE          BANGLADESH                     6                    1                 1.0830769   0.6628747    1.7696490
24 months   PROVIDE          BANGLADESH                     7                    1                 0.8791209   0.5205040    1.4848177
24 months   PROVIDE          BANGLADESH                     8                    1                 0.6564103   0.3626299    1.1881933
24 months   PROVIDE          BANGLADESH                     9                    1                 0.7832168   0.4526203    1.3552828
24 months   PROVIDE          BANGLADESH                     10                   1                 0.7692308   0.4415903    1.3399659
24 months   PROVIDE          BANGLADESH                     11                   1                 0.6477733   0.3289229    1.2757099
24 months   PROVIDE          BANGLADESH                     12                   1                 1.0549451   0.5794496    1.9206312


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       SAS-CompFeed     INDIA                          1                    NA                -0.0351995   -0.1234140    0.0530150
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.0262093   -0.0431152   -0.0093035
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                 0.0066954   -0.1395296    0.1529203
6 months    IRC              INDIA                          1                    NA                -0.0437734   -0.1805392    0.0929924
6 months    Keneba           GAMBIA                         1                    NA                 0.0126445   -0.0304991    0.0557880
6 months    LCNI-5           MALAWI                         1                    NA                -0.0728809   -0.1857983    0.0400365
6 months    NIH-Birth        BANGLADESH                     1                    NA                -0.0203051   -0.1371620    0.0965518
6 months    PROBIT           BELARUS                        1                    NA                -0.0108648   -0.0278823    0.0061527
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.0489022   -0.1327947    0.0349903
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0155839   -0.0655172    0.0343495
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0082373   -0.0326508    0.0161762
24 months   IRC              INDIA                          1                    NA                -0.1057779   -0.2569873    0.0454315
24 months   Keneba           GAMBIA                         1                    NA                 0.0034783   -0.0636220    0.0705785
24 months   LCNI-5           MALAWI                         1                    NA                 0.0797422   -0.0628519    0.2223363
24 months   NIH-Birth        BANGLADESH                     1                    NA                -0.1056540   -0.2395269    0.0282188
24 months   PROBIT           BELARUS                        1                    NA                 0.0086298   -0.0896215    0.1068812
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0775303   -0.2426478    0.0875872


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       SAS-CompFeed     INDIA                          1                    NA                -0.1262744   -0.4936695    0.1507532
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.2535945   -0.4279399   -0.1005360
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                 0.0222576   -0.6074578    0.4052843
6 months    IRC              INDIA                          1                    NA                -0.1781579   -0.8893869    0.2653405
6 months    Keneba           GAMBIA                         1                    NA                 0.0895400   -0.2733388    0.3490048
6 months    LCNI-5           MALAWI                         1                    NA                -0.1978869   -0.5475477    0.0727697
6 months    NIH-Birth        BANGLADESH                     1                    NA                -0.0757212   -0.6129583    0.2825754
6 months    PROBIT           BELARUS                        1                    NA                -0.2761766   -0.7958304    0.0931066
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.1719298   -0.5079481    0.0892130
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1605062   -0.8071109    0.2547360
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0505729   -0.2116664    0.0891028
24 months   IRC              INDIA                          1                    NA                -0.2515300   -0.6693066    0.0616899
24 months   Keneba           GAMBIA                         1                    NA                 0.0103270   -0.2103626    0.1907775
24 months   LCNI-5           MALAWI                         1                    NA                 0.1789563   -0.2125668    0.4440614
24 months   NIH-Birth        BANGLADESH                     1                    NA                -0.1857606   -0.4474142    0.0285931
24 months   PROBIT           BELARUS                        1                    NA                 0.1266234   -3.6287939    0.8352083
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.2358553   -0.8558346    0.1770074
