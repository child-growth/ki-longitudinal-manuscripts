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

agecat      studyid          country                        brthmon    sstunted   n_cell       n
----------  ---------------  -----------------------------  --------  ---------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                 0        9      92
Birth       CMC-V-BCS-2002   INDIA                          1                 1        0      92
Birth       CMC-V-BCS-2002   INDIA                          2                 0        1      92
Birth       CMC-V-BCS-2002   INDIA                          2                 1        0      92
Birth       CMC-V-BCS-2002   INDIA                          3                 0        7      92
Birth       CMC-V-BCS-2002   INDIA                          3                 1        1      92
Birth       CMC-V-BCS-2002   INDIA                          4                 0        9      92
Birth       CMC-V-BCS-2002   INDIA                          4                 1        0      92
Birth       CMC-V-BCS-2002   INDIA                          5                 0       12      92
Birth       CMC-V-BCS-2002   INDIA                          5                 1        0      92
Birth       CMC-V-BCS-2002   INDIA                          6                 0        9      92
Birth       CMC-V-BCS-2002   INDIA                          6                 1        0      92
Birth       CMC-V-BCS-2002   INDIA                          7                 0        7      92
Birth       CMC-V-BCS-2002   INDIA                          7                 1        0      92
Birth       CMC-V-BCS-2002   INDIA                          8                 0        4      92
Birth       CMC-V-BCS-2002   INDIA                          8                 1        0      92
Birth       CMC-V-BCS-2002   INDIA                          9                 0        7      92
Birth       CMC-V-BCS-2002   INDIA                          9                 1        1      92
Birth       CMC-V-BCS-2002   INDIA                          10                0        9      92
Birth       CMC-V-BCS-2002   INDIA                          10                1        1      92
Birth       CMC-V-BCS-2002   INDIA                          11                0       11      92
Birth       CMC-V-BCS-2002   INDIA                          11                1        0      92
Birth       CMC-V-BCS-2002   INDIA                          12                0        3      92
Birth       CMC-V-BCS-2002   INDIA                          12                1        1      92
Birth       CMIN             BANGLADESH                     1                 0        3      26
Birth       CMIN             BANGLADESH                     1                 1        2      26
Birth       CMIN             BANGLADESH                     2                 0        4      26
Birth       CMIN             BANGLADESH                     2                 1        0      26
Birth       CMIN             BANGLADESH                     3                 0        0      26
Birth       CMIN             BANGLADESH                     3                 1        0      26
Birth       CMIN             BANGLADESH                     4                 0        2      26
Birth       CMIN             BANGLADESH                     4                 1        1      26
Birth       CMIN             BANGLADESH                     5                 0        1      26
Birth       CMIN             BANGLADESH                     5                 1        0      26
Birth       CMIN             BANGLADESH                     6                 0        0      26
Birth       CMIN             BANGLADESH                     6                 1        0      26
Birth       CMIN             BANGLADESH                     7                 0        4      26
Birth       CMIN             BANGLADESH                     7                 1        0      26
Birth       CMIN             BANGLADESH                     8                 0        2      26
Birth       CMIN             BANGLADESH                     8                 1        2      26
Birth       CMIN             BANGLADESH                     9                 0        1      26
Birth       CMIN             BANGLADESH                     9                 1        0      26
Birth       CMIN             BANGLADESH                     10                0        1      26
Birth       CMIN             BANGLADESH                     10                1        0      26
Birth       CMIN             BANGLADESH                     11                0        2      26
Birth       CMIN             BANGLADESH                     11                1        1      26
Birth       CMIN             BANGLADESH                     12                0        0      26
Birth       CMIN             BANGLADESH                     12                1        0      26
Birth       CONTENT          PERU                           1                 0        0       2
Birth       CONTENT          PERU                           1                 1        0       2
Birth       CONTENT          PERU                           2                 0        0       2
Birth       CONTENT          PERU                           2                 1        0       2
Birth       CONTENT          PERU                           3                 0        0       2
Birth       CONTENT          PERU                           3                 1        0       2
Birth       CONTENT          PERU                           4                 0        0       2
Birth       CONTENT          PERU                           4                 1        0       2
Birth       CONTENT          PERU                           5                 0        2       2
Birth       CONTENT          PERU                           5                 1        0       2
Birth       CONTENT          PERU                           6                 0        0       2
Birth       CONTENT          PERU                           6                 1        0       2
Birth       CONTENT          PERU                           7                 0        0       2
Birth       CONTENT          PERU                           7                 1        0       2
Birth       CONTENT          PERU                           8                 0        0       2
Birth       CONTENT          PERU                           8                 1        0       2
Birth       CONTENT          PERU                           9                 0        0       2
Birth       CONTENT          PERU                           9                 1        0       2
Birth       CONTENT          PERU                           10                0        0       2
Birth       CONTENT          PERU                           10                1        0       2
Birth       CONTENT          PERU                           11                0        0       2
Birth       CONTENT          PERU                           11                1        0       2
Birth       CONTENT          PERU                           12                0        0       2
Birth       CONTENT          PERU                           12                1        0       2
Birth       EE               PAKISTAN                       1                 0       47     240
Birth       EE               PAKISTAN                       1                 1       14     240
Birth       EE               PAKISTAN                       2                 0       38     240
Birth       EE               PAKISTAN                       2                 1       11     240
Birth       EE               PAKISTAN                       3                 0       20     240
Birth       EE               PAKISTAN                       3                 1        4     240
Birth       EE               PAKISTAN                       4                 0        7     240
Birth       EE               PAKISTAN                       4                 1        3     240
Birth       EE               PAKISTAN                       5                 0        0     240
Birth       EE               PAKISTAN                       5                 1        0     240
Birth       EE               PAKISTAN                       6                 0        0     240
Birth       EE               PAKISTAN                       6                 1        0     240
Birth       EE               PAKISTAN                       7                 0        0     240
Birth       EE               PAKISTAN                       7                 1        0     240
Birth       EE               PAKISTAN                       8                 0        0     240
Birth       EE               PAKISTAN                       8                 1        0     240
Birth       EE               PAKISTAN                       9                 0        0     240
Birth       EE               PAKISTAN                       9                 1        0     240
Birth       EE               PAKISTAN                       10                0        0     240
Birth       EE               PAKISTAN                       10                1        0     240
Birth       EE               PAKISTAN                       11                0       41     240
Birth       EE               PAKISTAN                       11                1        6     240
Birth       EE               PAKISTAN                       12                0       39     240
Birth       EE               PAKISTAN                       12                1       10     240
Birth       GMS-Nepal        NEPAL                          1                 0        0     696
Birth       GMS-Nepal        NEPAL                          1                 1        0     696
Birth       GMS-Nepal        NEPAL                          2                 0        0     696
Birth       GMS-Nepal        NEPAL                          2                 1        0     696
Birth       GMS-Nepal        NEPAL                          3                 0        0     696
Birth       GMS-Nepal        NEPAL                          3                 1        0     696
Birth       GMS-Nepal        NEPAL                          4                 0        1     696
Birth       GMS-Nepal        NEPAL                          4                 1        0     696
Birth       GMS-Nepal        NEPAL                          5                 0        0     696
Birth       GMS-Nepal        NEPAL                          5                 1        0     696
Birth       GMS-Nepal        NEPAL                          6                 0      166     696
Birth       GMS-Nepal        NEPAL                          6                 1        6     696
Birth       GMS-Nepal        NEPAL                          7                 0      252     696
Birth       GMS-Nepal        NEPAL                          7                 1       17     696
Birth       GMS-Nepal        NEPAL                          8                 0      246     696
Birth       GMS-Nepal        NEPAL                          8                 1        8     696
Birth       GMS-Nepal        NEPAL                          9                 0        0     696
Birth       GMS-Nepal        NEPAL                          9                 1        0     696
Birth       GMS-Nepal        NEPAL                          10                0        0     696
Birth       GMS-Nepal        NEPAL                          10                1        0     696
Birth       GMS-Nepal        NEPAL                          11                0        0     696
Birth       GMS-Nepal        NEPAL                          11                1        0     696
Birth       GMS-Nepal        NEPAL                          12                0        0     696
Birth       GMS-Nepal        NEPAL                          12                1        0     696
Birth       IRC              INDIA                          1                 0       32     388
Birth       IRC              INDIA                          1                 1        3     388
Birth       IRC              INDIA                          2                 0       25     388
Birth       IRC              INDIA                          2                 1        1     388
Birth       IRC              INDIA                          3                 0       26     388
Birth       IRC              INDIA                          3                 1        0     388
Birth       IRC              INDIA                          4                 0       21     388
Birth       IRC              INDIA                          4                 1        0     388
Birth       IRC              INDIA                          5                 0       21     388
Birth       IRC              INDIA                          5                 1        1     388
Birth       IRC              INDIA                          6                 0       31     388
Birth       IRC              INDIA                          6                 1        3     388
Birth       IRC              INDIA                          7                 0       34     388
Birth       IRC              INDIA                          7                 1        1     388
Birth       IRC              INDIA                          8                 0       38     388
Birth       IRC              INDIA                          8                 1        0     388
Birth       IRC              INDIA                          9                 0       24     388
Birth       IRC              INDIA                          9                 1        1     388
Birth       IRC              INDIA                          10                0       36     388
Birth       IRC              INDIA                          10                1        2     388
Birth       IRC              INDIA                          11                0       38     388
Birth       IRC              INDIA                          11                1        1     388
Birth       IRC              INDIA                          12                0       46     388
Birth       IRC              INDIA                          12                1        3     388
Birth       Keneba           GAMBIA                         1                 0      156    1543
Birth       Keneba           GAMBIA                         1                 1        7    1543
Birth       Keneba           GAMBIA                         2                 0      143    1543
Birth       Keneba           GAMBIA                         2                 1        4    1543
Birth       Keneba           GAMBIA                         3                 0      163    1543
Birth       Keneba           GAMBIA                         3                 1        2    1543
Birth       Keneba           GAMBIA                         4                 0      104    1543
Birth       Keneba           GAMBIA                         4                 1        1    1543
Birth       Keneba           GAMBIA                         5                 0      106    1543
Birth       Keneba           GAMBIA                         5                 1        2    1543
Birth       Keneba           GAMBIA                         6                 0       88    1543
Birth       Keneba           GAMBIA                         6                 1        1    1543
Birth       Keneba           GAMBIA                         7                 0       75    1543
Birth       Keneba           GAMBIA                         7                 1        1    1543
Birth       Keneba           GAMBIA                         8                 0      124    1543
Birth       Keneba           GAMBIA                         8                 1        1    1543
Birth       Keneba           GAMBIA                         9                 0      122    1543
Birth       Keneba           GAMBIA                         9                 1        2    1543
Birth       Keneba           GAMBIA                         10                0      175    1543
Birth       Keneba           GAMBIA                         10                1        4    1543
Birth       Keneba           GAMBIA                         11                0      122    1543
Birth       Keneba           GAMBIA                         11                1        2    1543
Birth       Keneba           GAMBIA                         12                0      136    1543
Birth       Keneba           GAMBIA                         12                1        2    1543
Birth       MAL-ED           BANGLADESH                     1                 0       20     231
Birth       MAL-ED           BANGLADESH                     1                 1        0     231
Birth       MAL-ED           BANGLADESH                     2                 0       22     231
Birth       MAL-ED           BANGLADESH                     2                 1        1     231
Birth       MAL-ED           BANGLADESH                     3                 0       24     231
Birth       MAL-ED           BANGLADESH                     3                 1        0     231
Birth       MAL-ED           BANGLADESH                     4                 0       19     231
Birth       MAL-ED           BANGLADESH                     4                 1        0     231
Birth       MAL-ED           BANGLADESH                     5                 0       16     231
Birth       MAL-ED           BANGLADESH                     5                 1        2     231
Birth       MAL-ED           BANGLADESH                     6                 0        8     231
Birth       MAL-ED           BANGLADESH                     6                 1        0     231
Birth       MAL-ED           BANGLADESH                     7                 0       13     231
Birth       MAL-ED           BANGLADESH                     7                 1        1     231
Birth       MAL-ED           BANGLADESH                     8                 0       23     231
Birth       MAL-ED           BANGLADESH                     8                 1        3     231
Birth       MAL-ED           BANGLADESH                     9                 0       17     231
Birth       MAL-ED           BANGLADESH                     9                 1        1     231
Birth       MAL-ED           BANGLADESH                     10                0       21     231
Birth       MAL-ED           BANGLADESH                     10                1        0     231
Birth       MAL-ED           BANGLADESH                     11                0       15     231
Birth       MAL-ED           BANGLADESH                     11                1        0     231
Birth       MAL-ED           BANGLADESH                     12                0       24     231
Birth       MAL-ED           BANGLADESH                     12                1        1     231
Birth       MAL-ED           BRAZIL                         1                 0        5      65
Birth       MAL-ED           BRAZIL                         1                 1        0      65
Birth       MAL-ED           BRAZIL                         2                 0       10      65
Birth       MAL-ED           BRAZIL                         2                 1        0      65
Birth       MAL-ED           BRAZIL                         3                 0        7      65
Birth       MAL-ED           BRAZIL                         3                 1        0      65
Birth       MAL-ED           BRAZIL                         4                 0        4      65
Birth       MAL-ED           BRAZIL                         4                 1        0      65
Birth       MAL-ED           BRAZIL                         5                 0        1      65
Birth       MAL-ED           BRAZIL                         5                 1        1      65
Birth       MAL-ED           BRAZIL                         6                 0        5      65
Birth       MAL-ED           BRAZIL                         6                 1        0      65
Birth       MAL-ED           BRAZIL                         7                 0        5      65
Birth       MAL-ED           BRAZIL                         7                 1        1      65
Birth       MAL-ED           BRAZIL                         8                 0        7      65
Birth       MAL-ED           BRAZIL                         8                 1        0      65
Birth       MAL-ED           BRAZIL                         9                 0        5      65
Birth       MAL-ED           BRAZIL                         9                 1        1      65
Birth       MAL-ED           BRAZIL                         10                0        5      65
Birth       MAL-ED           BRAZIL                         10                1        0      65
Birth       MAL-ED           BRAZIL                         11                0        4      65
Birth       MAL-ED           BRAZIL                         11                1        0      65
Birth       MAL-ED           BRAZIL                         12                0        4      65
Birth       MAL-ED           BRAZIL                         12                1        0      65
Birth       MAL-ED           INDIA                          1                 0        2      47
Birth       MAL-ED           INDIA                          1                 1        0      47
Birth       MAL-ED           INDIA                          2                 0        6      47
Birth       MAL-ED           INDIA                          2                 1        0      47
Birth       MAL-ED           INDIA                          3                 0        3      47
Birth       MAL-ED           INDIA                          3                 1        0      47
Birth       MAL-ED           INDIA                          4                 0        5      47
Birth       MAL-ED           INDIA                          4                 1        1      47
Birth       MAL-ED           INDIA                          5                 0        4      47
Birth       MAL-ED           INDIA                          5                 1        0      47
Birth       MAL-ED           INDIA                          6                 0        2      47
Birth       MAL-ED           INDIA                          6                 1        0      47
Birth       MAL-ED           INDIA                          7                 0        3      47
Birth       MAL-ED           INDIA                          7                 1        0      47
Birth       MAL-ED           INDIA                          8                 0        8      47
Birth       MAL-ED           INDIA                          8                 1        0      47
Birth       MAL-ED           INDIA                          9                 0        4      47
Birth       MAL-ED           INDIA                          9                 1        0      47
Birth       MAL-ED           INDIA                          10                0        5      47
Birth       MAL-ED           INDIA                          10                1        1      47
Birth       MAL-ED           INDIA                          11                0        3      47
Birth       MAL-ED           INDIA                          11                1        0      47
Birth       MAL-ED           INDIA                          12                0        0      47
Birth       MAL-ED           INDIA                          12                1        0      47
Birth       MAL-ED           NEPAL                          1                 0        2      27
Birth       MAL-ED           NEPAL                          1                 1        0      27
Birth       MAL-ED           NEPAL                          2                 0        2      27
Birth       MAL-ED           NEPAL                          2                 1        0      27
Birth       MAL-ED           NEPAL                          3                 0        1      27
Birth       MAL-ED           NEPAL                          3                 1        0      27
Birth       MAL-ED           NEPAL                          4                 0        2      27
Birth       MAL-ED           NEPAL                          4                 1        0      27
Birth       MAL-ED           NEPAL                          5                 0        3      27
Birth       MAL-ED           NEPAL                          5                 1        0      27
Birth       MAL-ED           NEPAL                          6                 0        2      27
Birth       MAL-ED           NEPAL                          6                 1        0      27
Birth       MAL-ED           NEPAL                          7                 0        2      27
Birth       MAL-ED           NEPAL                          7                 1        0      27
Birth       MAL-ED           NEPAL                          8                 0        1      27
Birth       MAL-ED           NEPAL                          8                 1        0      27
Birth       MAL-ED           NEPAL                          9                 0        2      27
Birth       MAL-ED           NEPAL                          9                 1        0      27
Birth       MAL-ED           NEPAL                          10                0        4      27
Birth       MAL-ED           NEPAL                          10                1        0      27
Birth       MAL-ED           NEPAL                          11                0        4      27
Birth       MAL-ED           NEPAL                          11                1        1      27
Birth       MAL-ED           NEPAL                          12                0        1      27
Birth       MAL-ED           NEPAL                          12                1        0      27
Birth       MAL-ED           PERU                           1                 0       29     233
Birth       MAL-ED           PERU                           1                 1        1     233
Birth       MAL-ED           PERU                           2                 0       18     233
Birth       MAL-ED           PERU                           2                 1        0     233
Birth       MAL-ED           PERU                           3                 0       20     233
Birth       MAL-ED           PERU                           3                 1        0     233
Birth       MAL-ED           PERU                           4                 0       14     233
Birth       MAL-ED           PERU                           4                 1        1     233
Birth       MAL-ED           PERU                           5                 0       22     233
Birth       MAL-ED           PERU                           5                 1        0     233
Birth       MAL-ED           PERU                           6                 0       11     233
Birth       MAL-ED           PERU                           6                 1        0     233
Birth       MAL-ED           PERU                           7                 0       19     233
Birth       MAL-ED           PERU                           7                 1        0     233
Birth       MAL-ED           PERU                           8                 0       16     233
Birth       MAL-ED           PERU                           8                 1        0     233
Birth       MAL-ED           PERU                           9                 0       19     233
Birth       MAL-ED           PERU                           9                 1        0     233
Birth       MAL-ED           PERU                           10                0       21     233
Birth       MAL-ED           PERU                           10                1        0     233
Birth       MAL-ED           PERU                           11                0       27     233
Birth       MAL-ED           PERU                           11                1        1     233
Birth       MAL-ED           PERU                           12                0       13     233
Birth       MAL-ED           PERU                           12                1        1     233
Birth       MAL-ED           SOUTH AFRICA                   1                 0        9     123
Birth       MAL-ED           SOUTH AFRICA                   1                 1        1     123
Birth       MAL-ED           SOUTH AFRICA                   2                 0       13     123
Birth       MAL-ED           SOUTH AFRICA                   2                 1        0     123
Birth       MAL-ED           SOUTH AFRICA                   3                 0        9     123
Birth       MAL-ED           SOUTH AFRICA                   3                 1        0     123
Birth       MAL-ED           SOUTH AFRICA                   4                 0        6     123
Birth       MAL-ED           SOUTH AFRICA                   4                 1        0     123
Birth       MAL-ED           SOUTH AFRICA                   5                 0        6     123
Birth       MAL-ED           SOUTH AFRICA                   5                 1        0     123
Birth       MAL-ED           SOUTH AFRICA                   6                 0        8     123
Birth       MAL-ED           SOUTH AFRICA                   6                 1        0     123
Birth       MAL-ED           SOUTH AFRICA                   7                 0       13     123
Birth       MAL-ED           SOUTH AFRICA                   7                 1        0     123
Birth       MAL-ED           SOUTH AFRICA                   8                 0        3     123
Birth       MAL-ED           SOUTH AFRICA                   8                 1        0     123
Birth       MAL-ED           SOUTH AFRICA                   9                 0       10     123
Birth       MAL-ED           SOUTH AFRICA                   9                 1        0     123
Birth       MAL-ED           SOUTH AFRICA                   10                0       13     123
Birth       MAL-ED           SOUTH AFRICA                   10                1        0     123
Birth       MAL-ED           SOUTH AFRICA                   11                0       14     123
Birth       MAL-ED           SOUTH AFRICA                   11                1        0     123
Birth       MAL-ED           SOUTH AFRICA                   12                0       17     123
Birth       MAL-ED           SOUTH AFRICA                   12                1        1     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       10     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 0       15     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 1        1     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 0       11     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 1        1     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 0        8     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 1        0     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 0        9     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 1        1     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 0       10     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 1        1     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 0       14     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 1        0     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 0        6     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 1        0     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 0        2     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 1        3     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                0       11     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                1        1     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                0       10     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                1        1     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                0        9     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                1        1     125
Birth       NIH-Birth        BANGLADESH                     1                 0       63     608
Birth       NIH-Birth        BANGLADESH                     1                 1        7     608
Birth       NIH-Birth        BANGLADESH                     2                 0       56     608
Birth       NIH-Birth        BANGLADESH                     2                 1        0     608
Birth       NIH-Birth        BANGLADESH                     3                 0       56     608
Birth       NIH-Birth        BANGLADESH                     3                 1        3     608
Birth       NIH-Birth        BANGLADESH                     4                 0       49     608
Birth       NIH-Birth        BANGLADESH                     4                 1        2     608
Birth       NIH-Birth        BANGLADESH                     5                 0       46     608
Birth       NIH-Birth        BANGLADESH                     5                 1        1     608
Birth       NIH-Birth        BANGLADESH                     6                 0       46     608
Birth       NIH-Birth        BANGLADESH                     6                 1        0     608
Birth       NIH-Birth        BANGLADESH                     7                 0       39     608
Birth       NIH-Birth        BANGLADESH                     7                 1        1     608
Birth       NIH-Birth        BANGLADESH                     8                 0       39     608
Birth       NIH-Birth        BANGLADESH                     8                 1        1     608
Birth       NIH-Birth        BANGLADESH                     9                 0       46     608
Birth       NIH-Birth        BANGLADESH                     9                 1        1     608
Birth       NIH-Birth        BANGLADESH                     10                0       48     608
Birth       NIH-Birth        BANGLADESH                     10                1        0     608
Birth       NIH-Birth        BANGLADESH                     11                0       51     608
Birth       NIH-Birth        BANGLADESH                     11                1        1     608
Birth       NIH-Birth        BANGLADESH                     12                0       50     608
Birth       NIH-Birth        BANGLADESH                     12                1        2     608
Birth       PROBIT           BELARUS                        1                 0      826   13893
Birth       PROBIT           BELARUS                        1                 1        0   13893
Birth       PROBIT           BELARUS                        2                 0      804   13893
Birth       PROBIT           BELARUS                        2                 1        0   13893
Birth       PROBIT           BELARUS                        3                 0      947   13893
Birth       PROBIT           BELARUS                        3                 1        2   13893
Birth       PROBIT           BELARUS                        4                 0      971   13893
Birth       PROBIT           BELARUS                        4                 1        0   13893
Birth       PROBIT           BELARUS                        5                 0      950   13893
Birth       PROBIT           BELARUS                        5                 1        0   13893
Birth       PROBIT           BELARUS                        6                 0     1021   13893
Birth       PROBIT           BELARUS                        6                 1        0   13893
Birth       PROBIT           BELARUS                        7                 0     1294   13893
Birth       PROBIT           BELARUS                        7                 1        0   13893
Birth       PROBIT           BELARUS                        8                 0     1312   13893
Birth       PROBIT           BELARUS                        8                 1        0   13893
Birth       PROBIT           BELARUS                        9                 0     1326   13893
Birth       PROBIT           BELARUS                        9                 1        0   13893
Birth       PROBIT           BELARUS                        10                0     1500   13893
Birth       PROBIT           BELARUS                        10                1        2   13893
Birth       PROBIT           BELARUS                        11                0     1387   13893
Birth       PROBIT           BELARUS                        11                1        1   13893
Birth       PROBIT           BELARUS                        12                0     1550   13893
Birth       PROBIT           BELARUS                        12                1        0   13893
Birth       PROVIDE          BANGLADESH                     1                 0       30     539
Birth       PROVIDE          BANGLADESH                     1                 1        0     539
Birth       PROVIDE          BANGLADESH                     2                 0       24     539
Birth       PROVIDE          BANGLADESH                     2                 1        0     539
Birth       PROVIDE          BANGLADESH                     3                 0       45     539
Birth       PROVIDE          BANGLADESH                     3                 1        0     539
Birth       PROVIDE          BANGLADESH                     4                 0       28     539
Birth       PROVIDE          BANGLADESH                     4                 1        0     539
Birth       PROVIDE          BANGLADESH                     5                 0       46     539
Birth       PROVIDE          BANGLADESH                     5                 1        0     539
Birth       PROVIDE          BANGLADESH                     6                 0       76     539
Birth       PROVIDE          BANGLADESH                     6                 1        4     539
Birth       PROVIDE          BANGLADESH                     7                 0       75     539
Birth       PROVIDE          BANGLADESH                     7                 1        0     539
Birth       PROVIDE          BANGLADESH                     8                 0       54     539
Birth       PROVIDE          BANGLADESH                     8                 1        0     539
Birth       PROVIDE          BANGLADESH                     9                 0       55     539
Birth       PROVIDE          BANGLADESH                     9                 1        0     539
Birth       PROVIDE          BANGLADESH                     10                0       54     539
Birth       PROVIDE          BANGLADESH                     10                1        0     539
Birth       PROVIDE          BANGLADESH                     11                0       27     539
Birth       PROVIDE          BANGLADESH                     11                1        0     539
Birth       PROVIDE          BANGLADESH                     12                0       21     539
Birth       PROVIDE          BANGLADESH                     12                1        0     539
Birth       ResPak           PAKISTAN                       1                 0        2      42
Birth       ResPak           PAKISTAN                       1                 1        0      42
Birth       ResPak           PAKISTAN                       2                 0        1      42
Birth       ResPak           PAKISTAN                       2                 1        0      42
Birth       ResPak           PAKISTAN                       3                 0        1      42
Birth       ResPak           PAKISTAN                       3                 1        0      42
Birth       ResPak           PAKISTAN                       4                 0        8      42
Birth       ResPak           PAKISTAN                       4                 1        0      42
Birth       ResPak           PAKISTAN                       5                 0        7      42
Birth       ResPak           PAKISTAN                       5                 1        0      42
Birth       ResPak           PAKISTAN                       6                 0        8      42
Birth       ResPak           PAKISTAN                       6                 1        1      42
Birth       ResPak           PAKISTAN                       7                 0        7      42
Birth       ResPak           PAKISTAN                       7                 1        1      42
Birth       ResPak           PAKISTAN                       8                 0        4      42
Birth       ResPak           PAKISTAN                       8                 1        0      42
Birth       ResPak           PAKISTAN                       9                 0        1      42
Birth       ResPak           PAKISTAN                       9                 1        0      42
Birth       ResPak           PAKISTAN                       10                0        1      42
Birth       ResPak           PAKISTAN                       10                1        0      42
Birth       ResPak           PAKISTAN                       11                0        0      42
Birth       ResPak           PAKISTAN                       11                1        0      42
Birth       ResPak           PAKISTAN                       12                0        0      42
Birth       ResPak           PAKISTAN                       12                1        0      42
Birth       SAS-CompFeed     INDIA                          1                 0       78    1252
Birth       SAS-CompFeed     INDIA                          1                 1        8    1252
Birth       SAS-CompFeed     INDIA                          2                 0       71    1252
Birth       SAS-CompFeed     INDIA                          2                 1        6    1252
Birth       SAS-CompFeed     INDIA                          3                 0       62    1252
Birth       SAS-CompFeed     INDIA                          3                 1        7    1252
Birth       SAS-CompFeed     INDIA                          4                 0       59    1252
Birth       SAS-CompFeed     INDIA                          4                 1        3    1252
Birth       SAS-CompFeed     INDIA                          5                 0       76    1252
Birth       SAS-CompFeed     INDIA                          5                 1       12    1252
Birth       SAS-CompFeed     INDIA                          6                 0       98    1252
Birth       SAS-CompFeed     INDIA                          6                 1        6    1252
Birth       SAS-CompFeed     INDIA                          7                 0       94    1252
Birth       SAS-CompFeed     INDIA                          7                 1        6    1252
Birth       SAS-CompFeed     INDIA                          8                 0      133    1252
Birth       SAS-CompFeed     INDIA                          8                 1       11    1252
Birth       SAS-CompFeed     INDIA                          9                 0      138    1252
Birth       SAS-CompFeed     INDIA                          9                 1        9    1252
Birth       SAS-CompFeed     INDIA                          10                0      132    1252
Birth       SAS-CompFeed     INDIA                          10                1       10    1252
Birth       SAS-CompFeed     INDIA                          11                0      113    1252
Birth       SAS-CompFeed     INDIA                          11                1        6    1252
Birth       SAS-CompFeed     INDIA                          12                0      107    1252
Birth       SAS-CompFeed     INDIA                          12                1        7    1252
Birth       ZVITAMBO         ZIMBABWE                       1                 0     1287   13875
Birth       ZVITAMBO         ZIMBABWE                       1                 1       56   13875
Birth       ZVITAMBO         ZIMBABWE                       2                 0     1007   13875
Birth       ZVITAMBO         ZIMBABWE                       2                 1       45   13875
Birth       ZVITAMBO         ZIMBABWE                       3                 0     1121   13875
Birth       ZVITAMBO         ZIMBABWE                       3                 1       42   13875
Birth       ZVITAMBO         ZIMBABWE                       4                 0      957   13875
Birth       ZVITAMBO         ZIMBABWE                       4                 1       35   13875
Birth       ZVITAMBO         ZIMBABWE                       5                 0      983   13875
Birth       ZVITAMBO         ZIMBABWE                       5                 1       34   13875
Birth       ZVITAMBO         ZIMBABWE                       6                 0     1092   13875
Birth       ZVITAMBO         ZIMBABWE                       6                 1       45   13875
Birth       ZVITAMBO         ZIMBABWE                       7                 0     1132   13875
Birth       ZVITAMBO         ZIMBABWE                       7                 1       44   13875
Birth       ZVITAMBO         ZIMBABWE                       8                 0     1232   13875
Birth       ZVITAMBO         ZIMBABWE                       8                 1       25   13875
Birth       ZVITAMBO         ZIMBABWE                       9                 0     1278   13875
Birth       ZVITAMBO         ZIMBABWE                       9                 1       21   13875
Birth       ZVITAMBO         ZIMBABWE                       10                0     1007   13875
Birth       ZVITAMBO         ZIMBABWE                       10                1       34   13875
Birth       ZVITAMBO         ZIMBABWE                       11                0     1146   13875
Birth       ZVITAMBO         ZIMBABWE                       11                1       37   13875
Birth       ZVITAMBO         ZIMBABWE                       12                0     1191   13875
Birth       ZVITAMBO         ZIMBABWE                       12                1       24   13875
6 months    CMC-V-BCS-2002   INDIA                          1                 0       31     369
6 months    CMC-V-BCS-2002   INDIA                          1                 1        3     369
6 months    CMC-V-BCS-2002   INDIA                          2                 0       14     369
6 months    CMC-V-BCS-2002   INDIA                          2                 1        2     369
6 months    CMC-V-BCS-2002   INDIA                          3                 0       31     369
6 months    CMC-V-BCS-2002   INDIA                          3                 1        0     369
6 months    CMC-V-BCS-2002   INDIA                          4                 0       40     369
6 months    CMC-V-BCS-2002   INDIA                          4                 1        4     369
6 months    CMC-V-BCS-2002   INDIA                          5                 0       29     369
6 months    CMC-V-BCS-2002   INDIA                          5                 1        6     369
6 months    CMC-V-BCS-2002   INDIA                          6                 0       31     369
6 months    CMC-V-BCS-2002   INDIA                          6                 1        6     369
6 months    CMC-V-BCS-2002   INDIA                          7                 0       28     369
6 months    CMC-V-BCS-2002   INDIA                          7                 1       11     369
6 months    CMC-V-BCS-2002   INDIA                          8                 0       17     369
6 months    CMC-V-BCS-2002   INDIA                          8                 1        0     369
6 months    CMC-V-BCS-2002   INDIA                          9                 0       18     369
6 months    CMC-V-BCS-2002   INDIA                          9                 1        2     369
6 months    CMC-V-BCS-2002   INDIA                          10                0       27     369
6 months    CMC-V-BCS-2002   INDIA                          10                1        2     369
6 months    CMC-V-BCS-2002   INDIA                          11                0       41     369
6 months    CMC-V-BCS-2002   INDIA                          11                1        1     369
6 months    CMC-V-BCS-2002   INDIA                          12                0       20     369
6 months    CMC-V-BCS-2002   INDIA                          12                1        5     369
6 months    CMIN             BANGLADESH                     1                 0       24     243
6 months    CMIN             BANGLADESH                     1                 1        2     243
6 months    CMIN             BANGLADESH                     2                 0       23     243
6 months    CMIN             BANGLADESH                     2                 1        0     243
6 months    CMIN             BANGLADESH                     3                 0       16     243
6 months    CMIN             BANGLADESH                     3                 1        1     243
6 months    CMIN             BANGLADESH                     4                 0       21     243
6 months    CMIN             BANGLADESH                     4                 1        1     243
6 months    CMIN             BANGLADESH                     5                 0       17     243
6 months    CMIN             BANGLADESH                     5                 1        0     243
6 months    CMIN             BANGLADESH                     6                 0        5     243
6 months    CMIN             BANGLADESH                     6                 1        3     243
6 months    CMIN             BANGLADESH                     7                 0       13     243
6 months    CMIN             BANGLADESH                     7                 1        2     243
6 months    CMIN             BANGLADESH                     8                 0       11     243
6 months    CMIN             BANGLADESH                     8                 1        6     243
6 months    CMIN             BANGLADESH                     9                 0       18     243
6 months    CMIN             BANGLADESH                     9                 1        2     243
6 months    CMIN             BANGLADESH                     10                0       22     243
6 months    CMIN             BANGLADESH                     10                1        2     243
6 months    CMIN             BANGLADESH                     11                0       23     243
6 months    CMIN             BANGLADESH                     11                1        4     243
6 months    CMIN             BANGLADESH                     12                0       22     243
6 months    CMIN             BANGLADESH                     12                1        5     243
6 months    CONTENT          PERU                           1                 0       10     215
6 months    CONTENT          PERU                           1                 1        0     215
6 months    CONTENT          PERU                           2                 0       18     215
6 months    CONTENT          PERU                           2                 1        0     215
6 months    CONTENT          PERU                           3                 0       29     215
6 months    CONTENT          PERU                           3                 1        1     215
6 months    CONTENT          PERU                           4                 0       19     215
6 months    CONTENT          PERU                           4                 1        0     215
6 months    CONTENT          PERU                           5                 0       14     215
6 months    CONTENT          PERU                           5                 1        0     215
6 months    CONTENT          PERU                           6                 0       13     215
6 months    CONTENT          PERU                           6                 1        0     215
6 months    CONTENT          PERU                           7                 0       28     215
6 months    CONTENT          PERU                           7                 1        0     215
6 months    CONTENT          PERU                           8                 0       23     215
6 months    CONTENT          PERU                           8                 1        0     215
6 months    CONTENT          PERU                           9                 0       26     215
6 months    CONTENT          PERU                           9                 1        0     215
6 months    CONTENT          PERU                           10                0       14     215
6 months    CONTENT          PERU                           10                1        0     215
6 months    CONTENT          PERU                           11                0        9     215
6 months    CONTENT          PERU                           11                1        0     215
6 months    CONTENT          PERU                           12                0       11     215
6 months    CONTENT          PERU                           12                1        0     215
6 months    EE               PAKISTAN                       1                 0       64     373
6 months    EE               PAKISTAN                       1                 1       27     373
6 months    EE               PAKISTAN                       2                 0       52     373
6 months    EE               PAKISTAN                       2                 1       14     373
6 months    EE               PAKISTAN                       3                 0       36     373
6 months    EE               PAKISTAN                       3                 1        6     373
6 months    EE               PAKISTAN                       4                 0       11     373
6 months    EE               PAKISTAN                       4                 1        5     373
6 months    EE               PAKISTAN                       5                 0        0     373
6 months    EE               PAKISTAN                       5                 1        0     373
6 months    EE               PAKISTAN                       6                 0        0     373
6 months    EE               PAKISTAN                       6                 1        0     373
6 months    EE               PAKISTAN                       7                 0        0     373
6 months    EE               PAKISTAN                       7                 1        0     373
6 months    EE               PAKISTAN                       8                 0        0     373
6 months    EE               PAKISTAN                       8                 1        0     373
6 months    EE               PAKISTAN                       9                 0        0     373
6 months    EE               PAKISTAN                       9                 1        0     373
6 months    EE               PAKISTAN                       10                0        3     373
6 months    EE               PAKISTAN                       10                1        1     373
6 months    EE               PAKISTAN                       11                0       56     373
6 months    EE               PAKISTAN                       11                1       15     373
6 months    EE               PAKISTAN                       12                0       70     373
6 months    EE               PAKISTAN                       12                1       13     373
6 months    GMS-Nepal        NEPAL                          1                 0        0     564
6 months    GMS-Nepal        NEPAL                          1                 1        0     564
6 months    GMS-Nepal        NEPAL                          2                 0        0     564
6 months    GMS-Nepal        NEPAL                          2                 1        0     564
6 months    GMS-Nepal        NEPAL                          3                 0        0     564
6 months    GMS-Nepal        NEPAL                          3                 1        0     564
6 months    GMS-Nepal        NEPAL                          4                 0        0     564
6 months    GMS-Nepal        NEPAL                          4                 1        1     564
6 months    GMS-Nepal        NEPAL                          5                 0        0     564
6 months    GMS-Nepal        NEPAL                          5                 1        0     564
6 months    GMS-Nepal        NEPAL                          6                 0      115     564
6 months    GMS-Nepal        NEPAL                          6                 1        6     564
6 months    GMS-Nepal        NEPAL                          7                 0      213     564
6 months    GMS-Nepal        NEPAL                          7                 1        6     564
6 months    GMS-Nepal        NEPAL                          8                 0      215     564
6 months    GMS-Nepal        NEPAL                          8                 1        8     564
6 months    GMS-Nepal        NEPAL                          9                 0        0     564
6 months    GMS-Nepal        NEPAL                          9                 1        0     564
6 months    GMS-Nepal        NEPAL                          10                0        0     564
6 months    GMS-Nepal        NEPAL                          10                1        0     564
6 months    GMS-Nepal        NEPAL                          11                0        0     564
6 months    GMS-Nepal        NEPAL                          11                1        0     564
6 months    GMS-Nepal        NEPAL                          12                0        0     564
6 months    GMS-Nepal        NEPAL                          12                1        0     564
6 months    Guatemala BSC    GUATEMALA                      1                 0       23     299
6 months    Guatemala BSC    GUATEMALA                      1                 1        5     299
6 months    Guatemala BSC    GUATEMALA                      2                 0       23     299
6 months    Guatemala BSC    GUATEMALA                      2                 1        2     299
6 months    Guatemala BSC    GUATEMALA                      3                 0       23     299
6 months    Guatemala BSC    GUATEMALA                      3                 1        4     299
6 months    Guatemala BSC    GUATEMALA                      4                 0       28     299
6 months    Guatemala BSC    GUATEMALA                      4                 1        3     299
6 months    Guatemala BSC    GUATEMALA                      5                 0       26     299
6 months    Guatemala BSC    GUATEMALA                      5                 1        5     299
6 months    Guatemala BSC    GUATEMALA                      6                 0       19     299
6 months    Guatemala BSC    GUATEMALA                      6                 1        3     299
6 months    Guatemala BSC    GUATEMALA                      7                 0       20     299
6 months    Guatemala BSC    GUATEMALA                      7                 1        1     299
6 months    Guatemala BSC    GUATEMALA                      8                 0       13     299
6 months    Guatemala BSC    GUATEMALA                      8                 1        1     299
6 months    Guatemala BSC    GUATEMALA                      9                 0       15     299
6 months    Guatemala BSC    GUATEMALA                      9                 1        1     299
6 months    Guatemala BSC    GUATEMALA                      10                0       28     299
6 months    Guatemala BSC    GUATEMALA                      10                1        1     299
6 months    Guatemala BSC    GUATEMALA                      11                0       24     299
6 months    Guatemala BSC    GUATEMALA                      11                1        0     299
6 months    Guatemala BSC    GUATEMALA                      12                0       30     299
6 months    Guatemala BSC    GUATEMALA                      12                1        1     299
6 months    IRC              INDIA                          1                 0       34     407
6 months    IRC              INDIA                          1                 1        4     407
6 months    IRC              INDIA                          2                 0       23     407
6 months    IRC              INDIA                          2                 1        5     407
6 months    IRC              INDIA                          3                 0       27     407
6 months    IRC              INDIA                          3                 1        0     407
6 months    IRC              INDIA                          4                 0       17     407
6 months    IRC              INDIA                          4                 1        4     407
6 months    IRC              INDIA                          5                 0       18     407
6 months    IRC              INDIA                          5                 1        3     407
6 months    IRC              INDIA                          6                 0       36     407
6 months    IRC              INDIA                          6                 1        1     407
6 months    IRC              INDIA                          7                 0       35     407
6 months    IRC              INDIA                          7                 1        1     407
6 months    IRC              INDIA                          8                 0       43     407
6 months    IRC              INDIA                          8                 1        1     407
6 months    IRC              INDIA                          9                 0       26     407
6 months    IRC              INDIA                          9                 1        1     407
6 months    IRC              INDIA                          10                0       37     407
6 months    IRC              INDIA                          10                1        0     407
6 months    IRC              INDIA                          11                0       35     407
6 months    IRC              INDIA                          11                1        5     407
6 months    IRC              INDIA                          12                0       47     407
6 months    IRC              INDIA                          12                1        4     407
6 months    Keneba           GAMBIA                         1                 0      203    2089
6 months    Keneba           GAMBIA                         1                 1        7    2089
6 months    Keneba           GAMBIA                         2                 0      178    2089
6 months    Keneba           GAMBIA                         2                 1        9    2089
6 months    Keneba           GAMBIA                         3                 0      211    2089
6 months    Keneba           GAMBIA                         3                 1       10    2089
6 months    Keneba           GAMBIA                         4                 0      141    2089
6 months    Keneba           GAMBIA                         4                 1        2    2089
6 months    Keneba           GAMBIA                         5                 0      139    2089
6 months    Keneba           GAMBIA                         5                 1        4    2089
6 months    Keneba           GAMBIA                         6                 0      111    2089
6 months    Keneba           GAMBIA                         6                 1        7    2089
6 months    Keneba           GAMBIA                         7                 0       87    2089
6 months    Keneba           GAMBIA                         7                 1        5    2089
6 months    Keneba           GAMBIA                         8                 0      169    2089
6 months    Keneba           GAMBIA                         8                 1        5    2089
6 months    Keneba           GAMBIA                         9                 0      169    2089
6 months    Keneba           GAMBIA                         9                 1        5    2089
6 months    Keneba           GAMBIA                         10                0      242    2089
6 months    Keneba           GAMBIA                         10                1        6    2089
6 months    Keneba           GAMBIA                         11                0      183    2089
6 months    Keneba           GAMBIA                         11                1        4    2089
6 months    Keneba           GAMBIA                         12                0      186    2089
6 months    Keneba           GAMBIA                         12                1        6    2089
6 months    LCNI-5           MALAWI                         1                 0       59     839
6 months    LCNI-5           MALAWI                         1                 1        9     839
6 months    LCNI-5           MALAWI                         2                 0       44     839
6 months    LCNI-5           MALAWI                         2                 1        2     839
6 months    LCNI-5           MALAWI                         3                 0       23     839
6 months    LCNI-5           MALAWI                         3                 1        3     839
6 months    LCNI-5           MALAWI                         4                 0       38     839
6 months    LCNI-5           MALAWI                         4                 1        1     839
6 months    LCNI-5           MALAWI                         5                 0       38     839
6 months    LCNI-5           MALAWI                         5                 1        6     839
6 months    LCNI-5           MALAWI                         6                 0       28     839
6 months    LCNI-5           MALAWI                         6                 1        6     839
6 months    LCNI-5           MALAWI                         7                 0       57     839
6 months    LCNI-5           MALAWI                         7                 1        4     839
6 months    LCNI-5           MALAWI                         8                 0       89     839
6 months    LCNI-5           MALAWI                         8                 1        4     839
6 months    LCNI-5           MALAWI                         9                 0       88     839
6 months    LCNI-5           MALAWI                         9                 1        5     839
6 months    LCNI-5           MALAWI                         10                0      117     839
6 months    LCNI-5           MALAWI                         10                1       18     839
6 months    LCNI-5           MALAWI                         11                0       96     839
6 months    LCNI-5           MALAWI                         11                1        9     839
6 months    LCNI-5           MALAWI                         12                0       91     839
6 months    LCNI-5           MALAWI                         12                1        4     839
6 months    MAL-ED           BANGLADESH                     1                 0       17     241
6 months    MAL-ED           BANGLADESH                     1                 1        1     241
6 months    MAL-ED           BANGLADESH                     2                 0       20     241
6 months    MAL-ED           BANGLADESH                     2                 1        0     241
6 months    MAL-ED           BANGLADESH                     3                 0       22     241
6 months    MAL-ED           BANGLADESH                     3                 1        1     241
6 months    MAL-ED           BANGLADESH                     4                 0       22     241
6 months    MAL-ED           BANGLADESH                     4                 1        0     241
6 months    MAL-ED           BANGLADESH                     5                 0       20     241
6 months    MAL-ED           BANGLADESH                     5                 1        1     241
6 months    MAL-ED           BANGLADESH                     6                 0       10     241
6 months    MAL-ED           BANGLADESH                     6                 1        0     241
6 months    MAL-ED           BANGLADESH                     7                 0       17     241
6 months    MAL-ED           BANGLADESH                     7                 1        1     241
6 months    MAL-ED           BANGLADESH                     8                 0       21     241
6 months    MAL-ED           BANGLADESH                     8                 1        2     241
6 months    MAL-ED           BANGLADESH                     9                 0       22     241
6 months    MAL-ED           BANGLADESH                     9                 1        0     241
6 months    MAL-ED           BANGLADESH                     10                0       20     241
6 months    MAL-ED           BANGLADESH                     10                1        2     241
6 months    MAL-ED           BANGLADESH                     11                0       16     241
6 months    MAL-ED           BANGLADESH                     11                1        0     241
6 months    MAL-ED           BANGLADESH                     12                0       26     241
6 months    MAL-ED           BANGLADESH                     12                1        0     241
6 months    MAL-ED           BRAZIL                         1                 0       15     209
6 months    MAL-ED           BRAZIL                         1                 1        0     209
6 months    MAL-ED           BRAZIL                         2                 0       23     209
6 months    MAL-ED           BRAZIL                         2                 1        0     209
6 months    MAL-ED           BRAZIL                         3                 0       16     209
6 months    MAL-ED           BRAZIL                         3                 1        0     209
6 months    MAL-ED           BRAZIL                         4                 0       11     209
6 months    MAL-ED           BRAZIL                         4                 1        0     209
6 months    MAL-ED           BRAZIL                         5                 0       21     209
6 months    MAL-ED           BRAZIL                         5                 1        0     209
6 months    MAL-ED           BRAZIL                         6                 0        8     209
6 months    MAL-ED           BRAZIL                         6                 1        0     209
6 months    MAL-ED           BRAZIL                         7                 0       16     209
6 months    MAL-ED           BRAZIL                         7                 1        0     209
6 months    MAL-ED           BRAZIL                         8                 0       16     209
6 months    MAL-ED           BRAZIL                         8                 1        0     209
6 months    MAL-ED           BRAZIL                         9                 0       30     209
6 months    MAL-ED           BRAZIL                         9                 1        0     209
6 months    MAL-ED           BRAZIL                         10                0       20     209
6 months    MAL-ED           BRAZIL                         10                1        0     209
6 months    MAL-ED           BRAZIL                         11                0       21     209
6 months    MAL-ED           BRAZIL                         11                1        0     209
6 months    MAL-ED           BRAZIL                         12                0       12     209
6 months    MAL-ED           BRAZIL                         12                1        0     209
6 months    MAL-ED           INDIA                          1                 0       18     236
6 months    MAL-ED           INDIA                          1                 1        1     236
6 months    MAL-ED           INDIA                          2                 0       18     236
6 months    MAL-ED           INDIA                          2                 1        0     236
6 months    MAL-ED           INDIA                          3                 0       22     236
6 months    MAL-ED           INDIA                          3                 1        0     236
6 months    MAL-ED           INDIA                          4                 0       15     236
6 months    MAL-ED           INDIA                          4                 1        0     236
6 months    MAL-ED           INDIA                          5                 0        8     236
6 months    MAL-ED           INDIA                          5                 1        0     236
6 months    MAL-ED           INDIA                          6                 0       19     236
6 months    MAL-ED           INDIA                          6                 1        0     236
6 months    MAL-ED           INDIA                          7                 0       20     236
6 months    MAL-ED           INDIA                          7                 1        3     236
6 months    MAL-ED           INDIA                          8                 0       21     236
6 months    MAL-ED           INDIA                          8                 1        1     236
6 months    MAL-ED           INDIA                          9                 0       19     236
6 months    MAL-ED           INDIA                          9                 1        1     236
6 months    MAL-ED           INDIA                          10                0       24     236
6 months    MAL-ED           INDIA                          10                1        2     236
6 months    MAL-ED           INDIA                          11                0       25     236
6 months    MAL-ED           INDIA                          11                1        0     236
6 months    MAL-ED           INDIA                          12                0       18     236
6 months    MAL-ED           INDIA                          12                1        1     236
6 months    MAL-ED           NEPAL                          1                 0       20     236
6 months    MAL-ED           NEPAL                          1                 1        0     236
6 months    MAL-ED           NEPAL                          2                 0       18     236
6 months    MAL-ED           NEPAL                          2                 1        1     236
6 months    MAL-ED           NEPAL                          3                 0       17     236
6 months    MAL-ED           NEPAL                          3                 1        0     236
6 months    MAL-ED           NEPAL                          4                 0       22     236
6 months    MAL-ED           NEPAL                          4                 1        0     236
6 months    MAL-ED           NEPAL                          5                 0       20     236
6 months    MAL-ED           NEPAL                          5                 1        0     236
6 months    MAL-ED           NEPAL                          6                 0       18     236
6 months    MAL-ED           NEPAL                          6                 1        0     236
6 months    MAL-ED           NEPAL                          7                 0       18     236
6 months    MAL-ED           NEPAL                          7                 1        0     236
6 months    MAL-ED           NEPAL                          8                 0       24     236
6 months    MAL-ED           NEPAL                          8                 1        0     236
6 months    MAL-ED           NEPAL                          9                 0       16     236
6 months    MAL-ED           NEPAL                          9                 1        0     236
6 months    MAL-ED           NEPAL                          10                0       21     236
6 months    MAL-ED           NEPAL                          10                1        0     236
6 months    MAL-ED           NEPAL                          11                0       24     236
6 months    MAL-ED           NEPAL                          11                1        0     236
6 months    MAL-ED           NEPAL                          12                0       17     236
6 months    MAL-ED           NEPAL                          12                1        0     236
6 months    MAL-ED           PERU                           1                 0       36     273
6 months    MAL-ED           PERU                           1                 1        2     273
6 months    MAL-ED           PERU                           2                 0       18     273
6 months    MAL-ED           PERU                           2                 1        1     273
6 months    MAL-ED           PERU                           3                 0       21     273
6 months    MAL-ED           PERU                           3                 1        1     273
6 months    MAL-ED           PERU                           4                 0       19     273
6 months    MAL-ED           PERU                           4                 1        1     273
6 months    MAL-ED           PERU                           5                 0       27     273
6 months    MAL-ED           PERU                           5                 1        0     273
6 months    MAL-ED           PERU                           6                 0       14     273
6 months    MAL-ED           PERU                           6                 1        1     273
6 months    MAL-ED           PERU                           7                 0       22     273
6 months    MAL-ED           PERU                           7                 1        0     273
6 months    MAL-ED           PERU                           8                 0       16     273
6 months    MAL-ED           PERU                           8                 1        0     273
6 months    MAL-ED           PERU                           9                 0       23     273
6 months    MAL-ED           PERU                           9                 1        0     273
6 months    MAL-ED           PERU                           10                0       20     273
6 months    MAL-ED           PERU                           10                1        0     273
6 months    MAL-ED           PERU                           11                0       28     273
6 months    MAL-ED           PERU                           11                1        4     273
6 months    MAL-ED           PERU                           12                0       19     273
6 months    MAL-ED           PERU                           12                1        0     273
6 months    MAL-ED           SOUTH AFRICA                   1                 0       36     254
6 months    MAL-ED           SOUTH AFRICA                   1                 1        2     254
6 months    MAL-ED           SOUTH AFRICA                   2                 0       23     254
6 months    MAL-ED           SOUTH AFRICA                   2                 1        0     254
6 months    MAL-ED           SOUTH AFRICA                   3                 0       15     254
6 months    MAL-ED           SOUTH AFRICA                   3                 1        0     254
6 months    MAL-ED           SOUTH AFRICA                   4                 0       13     254
6 months    MAL-ED           SOUTH AFRICA                   4                 1        0     254
6 months    MAL-ED           SOUTH AFRICA                   5                 0       12     254
6 months    MAL-ED           SOUTH AFRICA                   5                 1        1     254
6 months    MAL-ED           SOUTH AFRICA                   6                 0       18     254
6 months    MAL-ED           SOUTH AFRICA                   6                 1        0     254
6 months    MAL-ED           SOUTH AFRICA                   7                 0       22     254
6 months    MAL-ED           SOUTH AFRICA                   7                 1        0     254
6 months    MAL-ED           SOUTH AFRICA                   8                 0        9     254
6 months    MAL-ED           SOUTH AFRICA                   8                 1        0     254
6 months    MAL-ED           SOUTH AFRICA                   9                 0       18     254
6 months    MAL-ED           SOUTH AFRICA                   9                 1        0     254
6 months    MAL-ED           SOUTH AFRICA                   10                0       25     254
6 months    MAL-ED           SOUTH AFRICA                   10                1        1     254
6 months    MAL-ED           SOUTH AFRICA                   11                0       23     254
6 months    MAL-ED           SOUTH AFRICA                   11                1        1     254
6 months    MAL-ED           SOUTH AFRICA                   12                0       34     254
6 months    MAL-ED           SOUTH AFRICA                   12                1        1     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       18     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        2     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 0       29     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 1        1     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 0       16     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 1        2     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 0        9     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 0       15     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 1        1     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 0       19     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 0       21     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 1        2     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 0       11     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 1        1     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 0       21     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                0       20     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                1        2     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                0       25     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                1        2     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                0       29     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                1        1     247
6 months    NIH-Birth        BANGLADESH                     1                 0       48     537
6 months    NIH-Birth        BANGLADESH                     1                 1        4     537
6 months    NIH-Birth        BANGLADESH                     2                 0       47     537
6 months    NIH-Birth        BANGLADESH                     2                 1        2     537
6 months    NIH-Birth        BANGLADESH                     3                 0       46     537
6 months    NIH-Birth        BANGLADESH                     3                 1        4     537
6 months    NIH-Birth        BANGLADESH                     4                 0       40     537
6 months    NIH-Birth        BANGLADESH                     4                 1        2     537
6 months    NIH-Birth        BANGLADESH                     5                 0       40     537
6 months    NIH-Birth        BANGLADESH                     5                 1        2     537
6 months    NIH-Birth        BANGLADESH                     6                 0       38     537
6 months    NIH-Birth        BANGLADESH                     6                 1        5     537
6 months    NIH-Birth        BANGLADESH                     7                 0       38     537
6 months    NIH-Birth        BANGLADESH                     7                 1        1     537
6 months    NIH-Birth        BANGLADESH                     8                 0       33     537
6 months    NIH-Birth        BANGLADESH                     8                 1        2     537
6 months    NIH-Birth        BANGLADESH                     9                 0       40     537
6 months    NIH-Birth        BANGLADESH                     9                 1        2     537
6 months    NIH-Birth        BANGLADESH                     10                0       38     537
6 months    NIH-Birth        BANGLADESH                     10                1        4     537
6 months    NIH-Birth        BANGLADESH                     11                0       45     537
6 months    NIH-Birth        BANGLADESH                     11                1        5     537
6 months    NIH-Birth        BANGLADESH                     12                0       49     537
6 months    NIH-Birth        BANGLADESH                     12                1        2     537
6 months    PROBIT           BELARUS                        1                 0      960   15760
6 months    PROBIT           BELARUS                        1                 1       16   15760
6 months    PROBIT           BELARUS                        2                 0      924   15760
6 months    PROBIT           BELARUS                        2                 1        9   15760
6 months    PROBIT           BELARUS                        3                 0     1051   15760
6 months    PROBIT           BELARUS                        3                 1       15   15760
6 months    PROBIT           BELARUS                        4                 0     1079   15760
6 months    PROBIT           BELARUS                        4                 1       18   15760
6 months    PROBIT           BELARUS                        5                 0     1104   15760
6 months    PROBIT           BELARUS                        5                 1        7   15760
6 months    PROBIT           BELARUS                        6                 0     1101   15760
6 months    PROBIT           BELARUS                        6                 1       14   15760
6 months    PROBIT           BELARUS                        7                 0     1448   15760
6 months    PROBIT           BELARUS                        7                 1       15   15760
6 months    PROBIT           BELARUS                        8                 0     1459   15760
6 months    PROBIT           BELARUS                        8                 1       14   15760
6 months    PROBIT           BELARUS                        9                 0     1495   15760
6 months    PROBIT           BELARUS                        9                 1       14   15760
6 months    PROBIT           BELARUS                        10                0     1671   15760
6 months    PROBIT           BELARUS                        10                1       18   15760
6 months    PROBIT           BELARUS                        11                0     1570   15760
6 months    PROBIT           BELARUS                        11                1       19   15760
6 months    PROBIT           BELARUS                        12                0     1721   15760
6 months    PROBIT           BELARUS                        12                1       18   15760
6 months    PROVIDE          BANGLADESH                     1                 0       35     604
6 months    PROVIDE          BANGLADESH                     1                 1        0     604
6 months    PROVIDE          BANGLADESH                     2                 0       32     604
6 months    PROVIDE          BANGLADESH                     2                 1        0     604
6 months    PROVIDE          BANGLADESH                     3                 0       42     604
6 months    PROVIDE          BANGLADESH                     3                 1        1     604
6 months    PROVIDE          BANGLADESH                     4                 0       35     604
6 months    PROVIDE          BANGLADESH                     4                 1        1     604
6 months    PROVIDE          BANGLADESH                     5                 0       40     604
6 months    PROVIDE          BANGLADESH                     5                 1        0     604
6 months    PROVIDE          BANGLADESH                     6                 0       73     604
6 months    PROVIDE          BANGLADESH                     6                 1        4     604
6 months    PROVIDE          BANGLADESH                     7                 0       74     604
6 months    PROVIDE          BANGLADESH                     7                 1        2     604
6 months    PROVIDE          BANGLADESH                     8                 0       59     604
6 months    PROVIDE          BANGLADESH                     8                 1        2     604
6 months    PROVIDE          BANGLADESH                     9                 0       64     604
6 months    PROVIDE          BANGLADESH                     9                 1        3     604
6 months    PROVIDE          BANGLADESH                     10                0       67     604
6 months    PROVIDE          BANGLADESH                     10                1        0     604
6 months    PROVIDE          BANGLADESH                     11                0       40     604
6 months    PROVIDE          BANGLADESH                     11                1        1     604
6 months    PROVIDE          BANGLADESH                     12                0       29     604
6 months    PROVIDE          BANGLADESH                     12                1        0     604
6 months    ResPak           PAKISTAN                       1                 0       10     239
6 months    ResPak           PAKISTAN                       1                 1        1     239
6 months    ResPak           PAKISTAN                       2                 0       10     239
6 months    ResPak           PAKISTAN                       2                 1        0     239
6 months    ResPak           PAKISTAN                       3                 0       14     239
6 months    ResPak           PAKISTAN                       3                 1       11     239
6 months    ResPak           PAKISTAN                       4                 0       17     239
6 months    ResPak           PAKISTAN                       4                 1        7     239
6 months    ResPak           PAKISTAN                       5                 0       35     239
6 months    ResPak           PAKISTAN                       5                 1       10     239
6 months    ResPak           PAKISTAN                       6                 0       37     239
6 months    ResPak           PAKISTAN                       6                 1        4     239
6 months    ResPak           PAKISTAN                       7                 0       20     239
6 months    ResPak           PAKISTAN                       7                 1        4     239
6 months    ResPak           PAKISTAN                       8                 0       28     239
6 months    ResPak           PAKISTAN                       8                 1        6     239
6 months    ResPak           PAKISTAN                       9                 0       14     239
6 months    ResPak           PAKISTAN                       9                 1        2     239
6 months    ResPak           PAKISTAN                       10                0        4     239
6 months    ResPak           PAKISTAN                       10                1        0     239
6 months    ResPak           PAKISTAN                       11                0        2     239
6 months    ResPak           PAKISTAN                       11                1        0     239
6 months    ResPak           PAKISTAN                       12                0        1     239
6 months    ResPak           PAKISTAN                       12                1        2     239
6 months    SAS-CompFeed     INDIA                          1                 0       77    1336
6 months    SAS-CompFeed     INDIA                          1                 1       10    1336
6 months    SAS-CompFeed     INDIA                          2                 0       77    1336
6 months    SAS-CompFeed     INDIA                          2                 1        6    1336
6 months    SAS-CompFeed     INDIA                          3                 0       67    1336
6 months    SAS-CompFeed     INDIA                          3                 1        7    1336
6 months    SAS-CompFeed     INDIA                          4                 0       64    1336
6 months    SAS-CompFeed     INDIA                          4                 1        2    1336
6 months    SAS-CompFeed     INDIA                          5                 0       78    1336
6 months    SAS-CompFeed     INDIA                          5                 1        9    1336
6 months    SAS-CompFeed     INDIA                          6                 0       82    1336
6 months    SAS-CompFeed     INDIA                          6                 1       14    1336
6 months    SAS-CompFeed     INDIA                          7                 0      105    1336
6 months    SAS-CompFeed     INDIA                          7                 1       17    1336
6 months    SAS-CompFeed     INDIA                          8                 0      144    1336
6 months    SAS-CompFeed     INDIA                          8                 1       18    1336
6 months    SAS-CompFeed     INDIA                          9                 0      162    1336
6 months    SAS-CompFeed     INDIA                          9                 1       12    1336
6 months    SAS-CompFeed     INDIA                          10                0      138    1336
6 months    SAS-CompFeed     INDIA                          10                1       11    1336
6 months    SAS-CompFeed     INDIA                          11                0      109    1336
6 months    SAS-CompFeed     INDIA                          11                1        9    1336
6 months    SAS-CompFeed     INDIA                          12                0      105    1336
6 months    SAS-CompFeed     INDIA                          12                1       13    1336
6 months    SAS-FoodSuppl    INDIA                          1                 0       21     380
6 months    SAS-FoodSuppl    INDIA                          1                 1        3     380
6 months    SAS-FoodSuppl    INDIA                          2                 0       26     380
6 months    SAS-FoodSuppl    INDIA                          2                 1        7     380
6 months    SAS-FoodSuppl    INDIA                          3                 0       19     380
6 months    SAS-FoodSuppl    INDIA                          3                 1        1     380
6 months    SAS-FoodSuppl    INDIA                          4                 0        4     380
6 months    SAS-FoodSuppl    INDIA                          4                 1        0     380
6 months    SAS-FoodSuppl    INDIA                          5                 0       11     380
6 months    SAS-FoodSuppl    INDIA                          5                 1        1     380
6 months    SAS-FoodSuppl    INDIA                          6                 0       16     380
6 months    SAS-FoodSuppl    INDIA                          6                 1        5     380
6 months    SAS-FoodSuppl    INDIA                          7                 0       30     380
6 months    SAS-FoodSuppl    INDIA                          7                 1        3     380
6 months    SAS-FoodSuppl    INDIA                          8                 0       57     380
6 months    SAS-FoodSuppl    INDIA                          8                 1        6     380
6 months    SAS-FoodSuppl    INDIA                          9                 0       51     380
6 months    SAS-FoodSuppl    INDIA                          9                 1       11     380
6 months    SAS-FoodSuppl    INDIA                          10                0       39     380
6 months    SAS-FoodSuppl    INDIA                          10                1        8     380
6 months    SAS-FoodSuppl    INDIA                          11                0       23     380
6 months    SAS-FoodSuppl    INDIA                          11                1        4     380
6 months    SAS-FoodSuppl    INDIA                          12                0       29     380
6 months    SAS-FoodSuppl    INDIA                          12                1        5     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      140    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        2    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      148    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1        1    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 0      138    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 1        2    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 0      153    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 1        0    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 0      148    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 1        1    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 0      142    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 1        1    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 0      193    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 1        2    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 0      196    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 1        3    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 0      183    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 1        1    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                0      203    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                1        5    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                0      194    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                1        1    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                0      172    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                1        0    2029
6 months    ZVITAMBO         ZIMBABWE                       1                 0      795    8669
6 months    ZVITAMBO         ZIMBABWE                       1                 1       29    8669
6 months    ZVITAMBO         ZIMBABWE                       2                 0      599    8669
6 months    ZVITAMBO         ZIMBABWE                       2                 1       21    8669
6 months    ZVITAMBO         ZIMBABWE                       3                 0      720    8669
6 months    ZVITAMBO         ZIMBABWE                       3                 1       47    8669
6 months    ZVITAMBO         ZIMBABWE                       4                 0      632    8669
6 months    ZVITAMBO         ZIMBABWE                       4                 1       25    8669
6 months    ZVITAMBO         ZIMBABWE                       5                 0      618    8669
6 months    ZVITAMBO         ZIMBABWE                       5                 1       24    8669
6 months    ZVITAMBO         ZIMBABWE                       6                 0      639    8669
6 months    ZVITAMBO         ZIMBABWE                       6                 1       33    8669
6 months    ZVITAMBO         ZIMBABWE                       7                 0      638    8669
6 months    ZVITAMBO         ZIMBABWE                       7                 1       36    8669
6 months    ZVITAMBO         ZIMBABWE                       8                 0      762    8669
6 months    ZVITAMBO         ZIMBABWE                       8                 1       22    8669
6 months    ZVITAMBO         ZIMBABWE                       9                 0      754    8669
6 months    ZVITAMBO         ZIMBABWE                       9                 1       26    8669
6 months    ZVITAMBO         ZIMBABWE                       10                0      602    8669
6 months    ZVITAMBO         ZIMBABWE                       10                1       24    8669
6 months    ZVITAMBO         ZIMBABWE                       11                0      764    8669
6 months    ZVITAMBO         ZIMBABWE                       11                1       31    8669
6 months    ZVITAMBO         ZIMBABWE                       12                0      795    8669
6 months    ZVITAMBO         ZIMBABWE                       12                1       33    8669
24 months   CMC-V-BCS-2002   INDIA                          1                 0       26     371
24 months   CMC-V-BCS-2002   INDIA                          1                 1        8     371
24 months   CMC-V-BCS-2002   INDIA                          2                 0        9     371
24 months   CMC-V-BCS-2002   INDIA                          2                 1        7     371
24 months   CMC-V-BCS-2002   INDIA                          3                 0       18     371
24 months   CMC-V-BCS-2002   INDIA                          3                 1       13     371
24 months   CMC-V-BCS-2002   INDIA                          4                 0       28     371
24 months   CMC-V-BCS-2002   INDIA                          4                 1       16     371
24 months   CMC-V-BCS-2002   INDIA                          5                 0       21     371
24 months   CMC-V-BCS-2002   INDIA                          5                 1       14     371
24 months   CMC-V-BCS-2002   INDIA                          6                 0       26     371
24 months   CMC-V-BCS-2002   INDIA                          6                 1       11     371
24 months   CMC-V-BCS-2002   INDIA                          7                 0       29     371
24 months   CMC-V-BCS-2002   INDIA                          7                 1       10     371
24 months   CMC-V-BCS-2002   INDIA                          8                 0       12     371
24 months   CMC-V-BCS-2002   INDIA                          8                 1        5     371
24 months   CMC-V-BCS-2002   INDIA                          9                 0       18     371
24 months   CMC-V-BCS-2002   INDIA                          9                 1        3     371
24 months   CMC-V-BCS-2002   INDIA                          10                0       20     371
24 months   CMC-V-BCS-2002   INDIA                          10                1        9     371
24 months   CMC-V-BCS-2002   INDIA                          11                0       28     371
24 months   CMC-V-BCS-2002   INDIA                          11                1       15     371
24 months   CMC-V-BCS-2002   INDIA                          12                0       11     371
24 months   CMC-V-BCS-2002   INDIA                          12                1       14     371
24 months   CMIN             BANGLADESH                     1                 0       17     242
24 months   CMIN             BANGLADESH                     1                 1        9     242
24 months   CMIN             BANGLADESH                     2                 0       19     242
24 months   CMIN             BANGLADESH                     2                 1        5     242
24 months   CMIN             BANGLADESH                     3                 0       16     242
24 months   CMIN             BANGLADESH                     3                 1        2     242
24 months   CMIN             BANGLADESH                     4                 0       16     242
24 months   CMIN             BANGLADESH                     4                 1        6     242
24 months   CMIN             BANGLADESH                     5                 0       15     242
24 months   CMIN             BANGLADESH                     5                 1        1     242
24 months   CMIN             BANGLADESH                     6                 0        3     242
24 months   CMIN             BANGLADESH                     6                 1        5     242
24 months   CMIN             BANGLADESH                     7                 0       13     242
24 months   CMIN             BANGLADESH                     7                 1        2     242
24 months   CMIN             BANGLADESH                     8                 0        9     242
24 months   CMIN             BANGLADESH                     8                 1        9     242
24 months   CMIN             BANGLADESH                     9                 0       16     242
24 months   CMIN             BANGLADESH                     9                 1        4     242
24 months   CMIN             BANGLADESH                     10                0       14     242
24 months   CMIN             BANGLADESH                     10                1       10     242
24 months   CMIN             BANGLADESH                     11                0       18     242
24 months   CMIN             BANGLADESH                     11                1        7     242
24 months   CMIN             BANGLADESH                     12                0       18     242
24 months   CMIN             BANGLADESH                     12                1        8     242
24 months   CONTENT          PERU                           1                 0        7     164
24 months   CONTENT          PERU                           1                 1        0     164
24 months   CONTENT          PERU                           2                 0       14     164
24 months   CONTENT          PERU                           2                 1        0     164
24 months   CONTENT          PERU                           3                 0       22     164
24 months   CONTENT          PERU                           3                 1        0     164
24 months   CONTENT          PERU                           4                 0       15     164
24 months   CONTENT          PERU                           4                 1        0     164
24 months   CONTENT          PERU                           5                 0       14     164
24 months   CONTENT          PERU                           5                 1        0     164
24 months   CONTENT          PERU                           6                 0       11     164
24 months   CONTENT          PERU                           6                 1        0     164
24 months   CONTENT          PERU                           7                 0       23     164
24 months   CONTENT          PERU                           7                 1        0     164
24 months   CONTENT          PERU                           8                 0       13     164
24 months   CONTENT          PERU                           8                 1        1     164
24 months   CONTENT          PERU                           9                 0       17     164
24 months   CONTENT          PERU                           9                 1        0     164
24 months   CONTENT          PERU                           10                0       11     164
24 months   CONTENT          PERU                           10                1        0     164
24 months   CONTENT          PERU                           11                0        6     164
24 months   CONTENT          PERU                           11                1        0     164
24 months   CONTENT          PERU                           12                0       10     164
24 months   CONTENT          PERU                           12                1        0     164
24 months   EE               PAKISTAN                       1                 0       10     167
24 months   EE               PAKISTAN                       1                 1        3     167
24 months   EE               PAKISTAN                       2                 0        1     167
24 months   EE               PAKISTAN                       2                 1        3     167
24 months   EE               PAKISTAN                       3                 0        0     167
24 months   EE               PAKISTAN                       3                 1        0     167
24 months   EE               PAKISTAN                       4                 0        0     167
24 months   EE               PAKISTAN                       4                 1        0     167
24 months   EE               PAKISTAN                       5                 0        0     167
24 months   EE               PAKISTAN                       5                 1        0     167
24 months   EE               PAKISTAN                       6                 0        0     167
24 months   EE               PAKISTAN                       6                 1        0     167
24 months   EE               PAKISTAN                       7                 0        0     167
24 months   EE               PAKISTAN                       7                 1        0     167
24 months   EE               PAKISTAN                       8                 0        0     167
24 months   EE               PAKISTAN                       8                 1        0     167
24 months   EE               PAKISTAN                       9                 0        0     167
24 months   EE               PAKISTAN                       9                 1        0     167
24 months   EE               PAKISTAN                       10                0        3     167
24 months   EE               PAKISTAN                       10                1        1     167
24 months   EE               PAKISTAN                       11                0       45     167
24 months   EE               PAKISTAN                       11                1       21     167
24 months   EE               PAKISTAN                       12                0       49     167
24 months   EE               PAKISTAN                       12                1       31     167
24 months   GMS-Nepal        NEPAL                          1                 0        0     488
24 months   GMS-Nepal        NEPAL                          1                 1        0     488
24 months   GMS-Nepal        NEPAL                          2                 0        0     488
24 months   GMS-Nepal        NEPAL                          2                 1        0     488
24 months   GMS-Nepal        NEPAL                          3                 0        0     488
24 months   GMS-Nepal        NEPAL                          3                 1        0     488
24 months   GMS-Nepal        NEPAL                          4                 0        0     488
24 months   GMS-Nepal        NEPAL                          4                 1        0     488
24 months   GMS-Nepal        NEPAL                          5                 0        0     488
24 months   GMS-Nepal        NEPAL                          5                 1        0     488
24 months   GMS-Nepal        NEPAL                          6                 0       71     488
24 months   GMS-Nepal        NEPAL                          6                 1        9     488
24 months   GMS-Nepal        NEPAL                          7                 0      183     488
24 months   GMS-Nepal        NEPAL                          7                 1       23     488
24 months   GMS-Nepal        NEPAL                          8                 0      181     488
24 months   GMS-Nepal        NEPAL                          8                 1       21     488
24 months   GMS-Nepal        NEPAL                          9                 0        0     488
24 months   GMS-Nepal        NEPAL                          9                 1        0     488
24 months   GMS-Nepal        NEPAL                          10                0        0     488
24 months   GMS-Nepal        NEPAL                          10                1        0     488
24 months   GMS-Nepal        NEPAL                          11                0        0     488
24 months   GMS-Nepal        NEPAL                          11                1        0     488
24 months   GMS-Nepal        NEPAL                          12                0        0     488
24 months   GMS-Nepal        NEPAL                          12                1        0     488
24 months   IRC              INDIA                          1                 0       33     409
24 months   IRC              INDIA                          1                 1        5     409
24 months   IRC              INDIA                          2                 0       24     409
24 months   IRC              INDIA                          2                 1        4     409
24 months   IRC              INDIA                          3                 0       23     409
24 months   IRC              INDIA                          3                 1        4     409
24 months   IRC              INDIA                          4                 0       18     409
24 months   IRC              INDIA                          4                 1        3     409
24 months   IRC              INDIA                          5                 0       16     409
24 months   IRC              INDIA                          5                 1        6     409
24 months   IRC              INDIA                          6                 0       36     409
24 months   IRC              INDIA                          6                 1        1     409
24 months   IRC              INDIA                          7                 0       36     409
24 months   IRC              INDIA                          7                 1        0     409
24 months   IRC              INDIA                          8                 0       40     409
24 months   IRC              INDIA                          8                 1        4     409
24 months   IRC              INDIA                          9                 0       24     409
24 months   IRC              INDIA                          9                 1        3     409
24 months   IRC              INDIA                          10                0       36     409
24 months   IRC              INDIA                          10                1        1     409
24 months   IRC              INDIA                          11                0       38     409
24 months   IRC              INDIA                          11                1        2     409
24 months   IRC              INDIA                          12                0       44     409
24 months   IRC              INDIA                          12                1        8     409
24 months   Keneba           GAMBIA                         1                 0      159    1725
24 months   Keneba           GAMBIA                         1                 1       12    1725
24 months   Keneba           GAMBIA                         2                 0      148    1725
24 months   Keneba           GAMBIA                         2                 1       19    1725
24 months   Keneba           GAMBIA                         3                 0      158    1725
24 months   Keneba           GAMBIA                         3                 1       12    1725
24 months   Keneba           GAMBIA                         4                 0      105    1725
24 months   Keneba           GAMBIA                         4                 1        9    1725
24 months   Keneba           GAMBIA                         5                 0      117    1725
24 months   Keneba           GAMBIA                         5                 1        5    1725
24 months   Keneba           GAMBIA                         6                 0       85    1725
24 months   Keneba           GAMBIA                         6                 1        7    1725
24 months   Keneba           GAMBIA                         7                 0       75    1725
24 months   Keneba           GAMBIA                         7                 1        6    1725
24 months   Keneba           GAMBIA                         8                 0      149    1725
24 months   Keneba           GAMBIA                         8                 1        9    1725
24 months   Keneba           GAMBIA                         9                 0      143    1725
24 months   Keneba           GAMBIA                         9                 1       16    1725
24 months   Keneba           GAMBIA                         10                0      187    1725
24 months   Keneba           GAMBIA                         10                1       13    1725
24 months   Keneba           GAMBIA                         11                0      127    1725
24 months   Keneba           GAMBIA                         11                1       14    1725
24 months   Keneba           GAMBIA                         12                0      132    1725
24 months   Keneba           GAMBIA                         12                1       18    1725
24 months   LCNI-5           MALAWI                         1                 0       36     579
24 months   LCNI-5           MALAWI                         1                 1        5     579
24 months   LCNI-5           MALAWI                         2                 0       30     579
24 months   LCNI-5           MALAWI                         2                 1        0     579
24 months   LCNI-5           MALAWI                         3                 0       18     579
24 months   LCNI-5           MALAWI                         3                 1        1     579
24 months   LCNI-5           MALAWI                         4                 0       27     579
24 months   LCNI-5           MALAWI                         4                 1        1     579
24 months   LCNI-5           MALAWI                         5                 0       25     579
24 months   LCNI-5           MALAWI                         5                 1        6     579
24 months   LCNI-5           MALAWI                         6                 0       19     579
24 months   LCNI-5           MALAWI                         6                 1        5     579
24 months   LCNI-5           MALAWI                         7                 0       41     579
24 months   LCNI-5           MALAWI                         7                 1        6     579
24 months   LCNI-5           MALAWI                         8                 0       67     579
24 months   LCNI-5           MALAWI                         8                 1        4     579
24 months   LCNI-5           MALAWI                         9                 0       63     579
24 months   LCNI-5           MALAWI                         9                 1        4     579
24 months   LCNI-5           MALAWI                         10                0       75     579
24 months   LCNI-5           MALAWI                         10                1       18     579
24 months   LCNI-5           MALAWI                         11                0       57     579
24 months   LCNI-5           MALAWI                         11                1        7     579
24 months   LCNI-5           MALAWI                         12                0       51     579
24 months   LCNI-5           MALAWI                         12                1       13     579
24 months   MAL-ED           BANGLADESH                     1                 0       13     212
24 months   MAL-ED           BANGLADESH                     1                 1        1     212
24 months   MAL-ED           BANGLADESH                     2                 0       12     212
24 months   MAL-ED           BANGLADESH                     2                 1        5     212
24 months   MAL-ED           BANGLADESH                     3                 0       18     212
24 months   MAL-ED           BANGLADESH                     3                 1        1     212
24 months   MAL-ED           BANGLADESH                     4                 0       19     212
24 months   MAL-ED           BANGLADESH                     4                 1        1     212
24 months   MAL-ED           BANGLADESH                     5                 0       14     212
24 months   MAL-ED           BANGLADESH                     5                 1        5     212
24 months   MAL-ED           BANGLADESH                     6                 0        7     212
24 months   MAL-ED           BANGLADESH                     6                 1        0     212
24 months   MAL-ED           BANGLADESH                     7                 0       16     212
24 months   MAL-ED           BANGLADESH                     7                 1        2     212
24 months   MAL-ED           BANGLADESH                     8                 0       15     212
24 months   MAL-ED           BANGLADESH                     8                 1        7     212
24 months   MAL-ED           BANGLADESH                     9                 0       17     212
24 months   MAL-ED           BANGLADESH                     9                 1        1     212
24 months   MAL-ED           BANGLADESH                     10                0       16     212
24 months   MAL-ED           BANGLADESH                     10                1        4     212
24 months   MAL-ED           BANGLADESH                     11                0       10     212
24 months   MAL-ED           BANGLADESH                     11                1        1     212
24 months   MAL-ED           BANGLADESH                     12                0       27     212
24 months   MAL-ED           BANGLADESH                     12                1        0     212
24 months   MAL-ED           BRAZIL                         1                 0       15     169
24 months   MAL-ED           BRAZIL                         1                 1        0     169
24 months   MAL-ED           BRAZIL                         2                 0       16     169
24 months   MAL-ED           BRAZIL                         2                 1        0     169
24 months   MAL-ED           BRAZIL                         3                 0       14     169
24 months   MAL-ED           BRAZIL                         3                 1        0     169
24 months   MAL-ED           BRAZIL                         4                 0       10     169
24 months   MAL-ED           BRAZIL                         4                 1        0     169
24 months   MAL-ED           BRAZIL                         5                 0       15     169
24 months   MAL-ED           BRAZIL                         5                 1        0     169
24 months   MAL-ED           BRAZIL                         6                 0        6     169
24 months   MAL-ED           BRAZIL                         6                 1        0     169
24 months   MAL-ED           BRAZIL                         7                 0        9     169
24 months   MAL-ED           BRAZIL                         7                 1        1     169
24 months   MAL-ED           BRAZIL                         8                 0       13     169
24 months   MAL-ED           BRAZIL                         8                 1        0     169
24 months   MAL-ED           BRAZIL                         9                 0       27     169
24 months   MAL-ED           BRAZIL                         9                 1        0     169
24 months   MAL-ED           BRAZIL                         10                0       14     169
24 months   MAL-ED           BRAZIL                         10                1        0     169
24 months   MAL-ED           BRAZIL                         11                0       18     169
24 months   MAL-ED           BRAZIL                         11                1        0     169
24 months   MAL-ED           BRAZIL                         12                0       11     169
24 months   MAL-ED           BRAZIL                         12                1        0     169
24 months   MAL-ED           INDIA                          1                 0       15     227
24 months   MAL-ED           INDIA                          1                 1        4     227
24 months   MAL-ED           INDIA                          2                 0       17     227
24 months   MAL-ED           INDIA                          2                 1        1     227
24 months   MAL-ED           INDIA                          3                 0       18     227
24 months   MAL-ED           INDIA                          3                 1        1     227
24 months   MAL-ED           INDIA                          4                 0       11     227
24 months   MAL-ED           INDIA                          4                 1        3     227
24 months   MAL-ED           INDIA                          5                 0        7     227
24 months   MAL-ED           INDIA                          5                 1        1     227
24 months   MAL-ED           INDIA                          6                 0       18     227
24 months   MAL-ED           INDIA                          6                 1        0     227
24 months   MAL-ED           INDIA                          7                 0       19     227
24 months   MAL-ED           INDIA                          7                 1        4     227
24 months   MAL-ED           INDIA                          8                 0       18     227
24 months   MAL-ED           INDIA                          8                 1        3     227
24 months   MAL-ED           INDIA                          9                 0       15     227
24 months   MAL-ED           INDIA                          9                 1        3     227
24 months   MAL-ED           INDIA                          10                0       22     227
24 months   MAL-ED           INDIA                          10                1        4     227
24 months   MAL-ED           INDIA                          11                0       20     227
24 months   MAL-ED           INDIA                          11                1        4     227
24 months   MAL-ED           INDIA                          12                0       17     227
24 months   MAL-ED           INDIA                          12                1        2     227
24 months   MAL-ED           NEPAL                          1                 0       18     228
24 months   MAL-ED           NEPAL                          1                 1        1     228
24 months   MAL-ED           NEPAL                          2                 0       16     228
24 months   MAL-ED           NEPAL                          2                 1        1     228
24 months   MAL-ED           NEPAL                          3                 0       14     228
24 months   MAL-ED           NEPAL                          3                 1        3     228
24 months   MAL-ED           NEPAL                          4                 0       22     228
24 months   MAL-ED           NEPAL                          4                 1        0     228
24 months   MAL-ED           NEPAL                          5                 0       18     228
24 months   MAL-ED           NEPAL                          5                 1        1     228
24 months   MAL-ED           NEPAL                          6                 0       18     228
24 months   MAL-ED           NEPAL                          6                 1        0     228
24 months   MAL-ED           NEPAL                          7                 0       17     228
24 months   MAL-ED           NEPAL                          7                 1        0     228
24 months   MAL-ED           NEPAL                          8                 0       24     228
24 months   MAL-ED           NEPAL                          8                 1        0     228
24 months   MAL-ED           NEPAL                          9                 0       14     228
24 months   MAL-ED           NEPAL                          9                 1        1     228
24 months   MAL-ED           NEPAL                          10                0       20     228
24 months   MAL-ED           NEPAL                          10                1        0     228
24 months   MAL-ED           NEPAL                          11                0       24     228
24 months   MAL-ED           NEPAL                          11                1        0     228
24 months   MAL-ED           NEPAL                          12                0       16     228
24 months   MAL-ED           NEPAL                          12                1        0     228
24 months   MAL-ED           PERU                           1                 0       26     201
24 months   MAL-ED           PERU                           1                 1        4     201
24 months   MAL-ED           PERU                           2                 0       16     201
24 months   MAL-ED           PERU                           2                 1        1     201
24 months   MAL-ED           PERU                           3                 0       15     201
24 months   MAL-ED           PERU                           3                 1        0     201
24 months   MAL-ED           PERU                           4                 0        9     201
24 months   MAL-ED           PERU                           4                 1        2     201
24 months   MAL-ED           PERU                           5                 0       17     201
24 months   MAL-ED           PERU                           5                 1        2     201
24 months   MAL-ED           PERU                           6                 0       10     201
24 months   MAL-ED           PERU                           6                 1        1     201
24 months   MAL-ED           PERU                           7                 0       15     201
24 months   MAL-ED           PERU                           7                 1        0     201
24 months   MAL-ED           PERU                           8                 0       11     201
24 months   MAL-ED           PERU                           8                 1        1     201
24 months   MAL-ED           PERU                           9                 0       21     201
24 months   MAL-ED           PERU                           9                 1        0     201
24 months   MAL-ED           PERU                           10                0       14     201
24 months   MAL-ED           PERU                           10                1        0     201
24 months   MAL-ED           PERU                           11                0       18     201
24 months   MAL-ED           PERU                           11                1        3     201
24 months   MAL-ED           PERU                           12                0       14     201
24 months   MAL-ED           PERU                           12                1        1     201
24 months   MAL-ED           SOUTH AFRICA                   1                 0       27     238
24 months   MAL-ED           SOUTH AFRICA                   1                 1        7     238
24 months   MAL-ED           SOUTH AFRICA                   2                 0       18     238
24 months   MAL-ED           SOUTH AFRICA                   2                 1        4     238
24 months   MAL-ED           SOUTH AFRICA                   3                 0       12     238
24 months   MAL-ED           SOUTH AFRICA                   3                 1        2     238
24 months   MAL-ED           SOUTH AFRICA                   4                 0       11     238
24 months   MAL-ED           SOUTH AFRICA                   4                 1        1     238
24 months   MAL-ED           SOUTH AFRICA                   5                 0       12     238
24 months   MAL-ED           SOUTH AFRICA                   5                 1        0     238
24 months   MAL-ED           SOUTH AFRICA                   6                 0       15     238
24 months   MAL-ED           SOUTH AFRICA                   6                 1        1     238
24 months   MAL-ED           SOUTH AFRICA                   7                 0       20     238
24 months   MAL-ED           SOUTH AFRICA                   7                 1        2     238
24 months   MAL-ED           SOUTH AFRICA                   8                 0        8     238
24 months   MAL-ED           SOUTH AFRICA                   8                 1        0     238
24 months   MAL-ED           SOUTH AFRICA                   9                 0       19     238
24 months   MAL-ED           SOUTH AFRICA                   9                 1        0     238
24 months   MAL-ED           SOUTH AFRICA                   10                0       22     238
24 months   MAL-ED           SOUTH AFRICA                   10                1        3     238
24 months   MAL-ED           SOUTH AFRICA                   11                0       19     238
24 months   MAL-ED           SOUTH AFRICA                   11                1        4     238
24 months   MAL-ED           SOUTH AFRICA                   12                0       28     238
24 months   MAL-ED           SOUTH AFRICA                   12                1        3     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       12     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 0       14     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                 1        8     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 0        9     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                 1        9     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 0        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                 1        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 0       14     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                 1        4     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 0       15     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                 1        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 0       16     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                 1        7     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 0        8     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                 1        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 0       13     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                 1        5     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                0        8     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                1        7     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                0       15     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                1        9     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                0       17     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                1        9     214
24 months   NIH-Birth        BANGLADESH                     1                 0       34     429
24 months   NIH-Birth        BANGLADESH                     1                 1        9     429
24 months   NIH-Birth        BANGLADESH                     2                 0       32     429
24 months   NIH-Birth        BANGLADESH                     2                 1        4     429
24 months   NIH-Birth        BANGLADESH                     3                 0       33     429
24 months   NIH-Birth        BANGLADESH                     3                 1        6     429
24 months   NIH-Birth        BANGLADESH                     4                 0       24     429
24 months   NIH-Birth        BANGLADESH                     4                 1       10     429
24 months   NIH-Birth        BANGLADESH                     5                 0       26     429
24 months   NIH-Birth        BANGLADESH                     5                 1        9     429
24 months   NIH-Birth        BANGLADESH                     6                 0       26     429
24 months   NIH-Birth        BANGLADESH                     6                 1        7     429
24 months   NIH-Birth        BANGLADESH                     7                 0       29     429
24 months   NIH-Birth        BANGLADESH                     7                 1        5     429
24 months   NIH-Birth        BANGLADESH                     8                 0       19     429
24 months   NIH-Birth        BANGLADESH                     8                 1        8     429
24 months   NIH-Birth        BANGLADESH                     9                 0       21     429
24 months   NIH-Birth        BANGLADESH                     9                 1        5     429
24 months   NIH-Birth        BANGLADESH                     10                0       24     429
24 months   NIH-Birth        BANGLADESH                     10                1        9     429
24 months   NIH-Birth        BANGLADESH                     11                0       30     429
24 months   NIH-Birth        BANGLADESH                     11                1       13     429
24 months   NIH-Birth        BANGLADESH                     12                0       36     429
24 months   NIH-Birth        BANGLADESH                     12                1       10     429
24 months   PROBIT           BELARUS                        1                 0      249    4035
24 months   PROBIT           BELARUS                        1                 1        3    4035
24 months   PROBIT           BELARUS                        2                 0      212    4035
24 months   PROBIT           BELARUS                        2                 1        2    4035
24 months   PROBIT           BELARUS                        3                 0      316    4035
24 months   PROBIT           BELARUS                        3                 1        1    4035
24 months   PROBIT           BELARUS                        4                 0      331    4035
24 months   PROBIT           BELARUS                        4                 1        4    4035
24 months   PROBIT           BELARUS                        5                 0      300    4035
24 months   PROBIT           BELARUS                        5                 1        2    4035
24 months   PROBIT           BELARUS                        6                 0      266    4035
24 months   PROBIT           BELARUS                        6                 1        3    4035
24 months   PROBIT           BELARUS                        7                 0      375    4035
24 months   PROBIT           BELARUS                        7                 1        4    4035
24 months   PROBIT           BELARUS                        8                 0      341    4035
24 months   PROBIT           BELARUS                        8                 1        3    4035
24 months   PROBIT           BELARUS                        9                 0      381    4035
24 months   PROBIT           BELARUS                        9                 1        6    4035
24 months   PROBIT           BELARUS                        10                0      383    4035
24 months   PROBIT           BELARUS                        10                1       12    4035
24 months   PROBIT           BELARUS                        11                0      369    4035
24 months   PROBIT           BELARUS                        11                1       10    4035
24 months   PROBIT           BELARUS                        12                0      447    4035
24 months   PROBIT           BELARUS                        12                1       15    4035
24 months   PROVIDE          BANGLADESH                     1                 0       29     578
24 months   PROVIDE          BANGLADESH                     1                 1        3     578
24 months   PROVIDE          BANGLADESH                     2                 0       26     578
24 months   PROVIDE          BANGLADESH                     2                 1        4     578
24 months   PROVIDE          BANGLADESH                     3                 0       38     578
24 months   PROVIDE          BANGLADESH                     3                 1        2     578
24 months   PROVIDE          BANGLADESH                     4                 0       29     578
24 months   PROVIDE          BANGLADESH                     4                 1        4     578
24 months   PROVIDE          BANGLADESH                     5                 0       41     578
24 months   PROVIDE          BANGLADESH                     5                 1        1     578
24 months   PROVIDE          BANGLADESH                     6                 0       62     578
24 months   PROVIDE          BANGLADESH                     6                 1       13     578
24 months   PROVIDE          BANGLADESH                     7                 0       66     578
24 months   PROVIDE          BANGLADESH                     7                 1        4     578
24 months   PROVIDE          BANGLADESH                     8                 0       54     578
24 months   PROVIDE          BANGLADESH                     8                 1        6     578
24 months   PROVIDE          BANGLADESH                     9                 0       62     578
24 months   PROVIDE          BANGLADESH                     9                 1        4     578
24 months   PROVIDE          BANGLADESH                     10                0       60     578
24 months   PROVIDE          BANGLADESH                     10                1        4     578
24 months   PROVIDE          BANGLADESH                     11                0       33     578
24 months   PROVIDE          BANGLADESH                     11                1        5     578
24 months   PROVIDE          BANGLADESH                     12                0       26     578
24 months   PROVIDE          BANGLADESH                     12                1        2     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                 1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                1        0       6
24 months   ZVITAMBO         ZIMBABWE                       1                 0      173    1640
24 months   ZVITAMBO         ZIMBABWE                       1                 1       17    1640
24 months   ZVITAMBO         ZIMBABWE                       2                 0      173    1640
24 months   ZVITAMBO         ZIMBABWE                       2                 1       24    1640
24 months   ZVITAMBO         ZIMBABWE                       3                 0      202    1640
24 months   ZVITAMBO         ZIMBABWE                       3                 1       26    1640
24 months   ZVITAMBO         ZIMBABWE                       4                 0      153    1640
24 months   ZVITAMBO         ZIMBABWE                       4                 1       17    1640
24 months   ZVITAMBO         ZIMBABWE                       5                 0      149    1640
24 months   ZVITAMBO         ZIMBABWE                       5                 1       19    1640
24 months   ZVITAMBO         ZIMBABWE                       6                 0      177    1640
24 months   ZVITAMBO         ZIMBABWE                       6                 1       19    1640
24 months   ZVITAMBO         ZIMBABWE                       7                 0       97    1640
24 months   ZVITAMBO         ZIMBABWE                       7                 1       23    1640
24 months   ZVITAMBO         ZIMBABWE                       8                 0      117    1640
24 months   ZVITAMBO         ZIMBABWE                       8                 1       10    1640
24 months   ZVITAMBO         ZIMBABWE                       9                 0       12    1640
24 months   ZVITAMBO         ZIMBABWE                       9                 1        1    1640
24 months   ZVITAMBO         ZIMBABWE                       10                0       22    1640
24 months   ZVITAMBO         ZIMBABWE                       10                1        2    1640
24 months   ZVITAMBO         ZIMBABWE                       11                0       64    1640
24 months   ZVITAMBO         ZIMBABWE                       11                1        8    1640
24 months   ZVITAMBO         ZIMBABWE                       12                0      123    1640
24 months   ZVITAMBO         ZIMBABWE                       12                1       12    1640


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
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/847aaafe-0715-4497-b54e-362b4088e0bc/f0be47d6-ea87-4f70-9256-f59cb8668e5b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/847aaafe-0715-4497-b54e-362b4088e0bc/f0be47d6-ea87-4f70-9256-f59cb8668e5b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/847aaafe-0715-4497-b54e-362b4088e0bc/f0be47d6-ea87-4f70-9256-f59cb8668e5b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/847aaafe-0715-4497-b54e-362b4088e0bc/f0be47d6-ea87-4f70-9256-f59cb8668e5b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid    country    intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------  ---------  -------------------  ---------------  ----------  -----------  ----------
Birth       ZVITAMBO   ZIMBABWE   1                    NA                0.0416977    0.0310063   0.0523891
Birth       ZVITAMBO   ZIMBABWE   2                    NA                0.0427757    0.0305475   0.0550038
Birth       ZVITAMBO   ZIMBABWE   3                    NA                0.0361135    0.0253904   0.0468366
Birth       ZVITAMBO   ZIMBABWE   4                    NA                0.0352823    0.0238011   0.0467634
Birth       ZVITAMBO   ZIMBABWE   5                    NA                0.0334317    0.0223833   0.0444800
Birth       ZVITAMBO   ZIMBABWE   6                    NA                0.0395778    0.0282449   0.0509107
Birth       ZVITAMBO   ZIMBABWE   7                    NA                0.0374150    0.0265681   0.0482618
Birth       ZVITAMBO   ZIMBABWE   8                    NA                0.0198886    0.0121701   0.0276072
Birth       ZVITAMBO   ZIMBABWE   9                    NA                0.0161663    0.0093078   0.0230247
Birth       ZVITAMBO   ZIMBABWE   10                   NA                0.0326609    0.0218629   0.0434589
Birth       ZVITAMBO   ZIMBABWE   11                   NA                0.0312764    0.0213571   0.0411957
Birth       ZVITAMBO   ZIMBABWE   12                   NA                0.0197531    0.0119285   0.0275777
6 months    PROBIT     BELARUS    1                    NA                0.0163934    0.0070923   0.0256946
6 months    PROBIT     BELARUS    2                    NA                0.0096463    0.0016908   0.0176018
6 months    PROBIT     BELARUS    3                    NA                0.0140713    0.0041328   0.0240098
6 months    PROBIT     BELARUS    4                    NA                0.0164084    0.0039248   0.0288920
6 months    PROBIT     BELARUS    5                    NA                0.0063006    0.0008424   0.0117588
6 months    PROBIT     BELARUS    6                    NA                0.0125561    0.0008310   0.0242811
6 months    PROBIT     BELARUS    7                    NA                0.0102529   -0.0002898   0.0207956
6 months    PROBIT     BELARUS    8                    NA                0.0095044    0.0001973   0.0188115
6 months    PROBIT     BELARUS    9                    NA                0.0092777    0.0022223   0.0163331
6 months    PROBIT     BELARUS    10                   NA                0.0106572    0.0020608   0.0192535
6 months    PROBIT     BELARUS    11                   NA                0.0119572    0.0053287   0.0185858
6 months    PROBIT     BELARUS    12                   NA                0.0103508    0.0012436   0.0194579
6 months    ZVITAMBO   ZIMBABWE   1                    NA                0.0351942    0.0226117   0.0477766
6 months    ZVITAMBO   ZIMBABWE   2                    NA                0.0338710    0.0196310   0.0481109
6 months    ZVITAMBO   ZIMBABWE   3                    NA                0.0612777    0.0443033   0.0782521
6 months    ZVITAMBO   ZIMBABWE   4                    NA                0.0380518    0.0234214   0.0526821
6 months    ZVITAMBO   ZIMBABWE   5                    NA                0.0373832    0.0227084   0.0520579
6 months    ZVITAMBO   ZIMBABWE   6                    NA                0.0491071    0.0327681   0.0654462
6 months    ZVITAMBO   ZIMBABWE   7                    NA                0.0534125    0.0364361   0.0703888
6 months    ZVITAMBO   ZIMBABWE   8                    NA                0.0280612    0.0165004   0.0396220
6 months    ZVITAMBO   ZIMBABWE   9                    NA                0.0333333    0.0207353   0.0459314
6 months    ZVITAMBO   ZIMBABWE   10                   NA                0.0383387    0.0232963   0.0533810
6 months    ZVITAMBO   ZIMBABWE   11                   NA                0.0389937    0.0255367   0.0524508
6 months    ZVITAMBO   ZIMBABWE   12                   NA                0.0398551    0.0265300   0.0531801
24 months   Keneba     GAMBIA     1                    NA                0.0701754    0.0318781   0.1084728
24 months   Keneba     GAMBIA     2                    NA                0.1137725    0.0655991   0.1619458
24 months   Keneba     GAMBIA     3                    NA                0.0705882    0.0320741   0.1091023
24 months   Keneba     GAMBIA     4                    NA                0.0789474    0.0294328   0.1284619
24 months   Keneba     GAMBIA     5                    NA                0.0409836    0.0057942   0.0761730
24 months   Keneba     GAMBIA     6                    NA                0.0760870    0.0218930   0.1302809
24 months   Keneba     GAMBIA     7                    NA                0.0740741    0.0170245   0.1311237
24 months   Keneba     GAMBIA     8                    NA                0.0569620    0.0208125   0.0931116
24 months   Keneba     GAMBIA     9                    NA                0.1006289    0.0538547   0.1474031
24 months   Keneba     GAMBIA     10                   NA                0.0650000    0.0308240   0.0991760
24 months   Keneba     GAMBIA     11                   NA                0.0992908    0.0499153   0.1486662
24 months   Keneba     GAMBIA     12                   NA                0.1200000    0.0679812   0.1720188


### Parameter: E(Y)


agecat      studyid    country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------  ---------  -------------------  ---------------  ----------  ----------  ----------
Birth       ZVITAMBO   ZIMBABWE   NA                   NA                0.0318559   0.0289336   0.0347781
6 months    PROBIT     BELARUS    NA                   NA                0.0112310   0.0054733   0.0169886
6 months    ZVITAMBO   ZIMBABWE   NA                   NA                0.0404891   0.0363397   0.0446385
24 months   Keneba     GAMBIA     NA                   NA                0.0811594   0.0682689   0.0940499


### Parameter: RR


agecat      studyid    country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------  ---------  -------------------  ---------------  ----------  ----------  ----------
Birth       ZVITAMBO   ZIMBABWE   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO   ZIMBABWE   2                    1                 1.0258521   0.6987347   1.5061117
Birth       ZVITAMBO   ZIMBABWE   3                    1                 0.8660791   0.5850308   1.2821427
Birth       ZVITAMBO   ZIMBABWE   4                    1                 0.8461442   0.5591421   1.2804616
Birth       ZVITAMBO   ZIMBABWE   5                    1                 0.8017629   0.5277036   1.2181529
Birth       ZVITAMBO   ZIMBABWE   6                    1                 0.9491613   0.6462690   1.3940128
Birth       ZVITAMBO   ZIMBABWE   7                    1                 0.8972911   0.6093280   1.3213429
Birth       ZVITAMBO   ZIMBABWE   8                    1                 0.4769718   0.2995609   0.7594520
Birth       ZVITAMBO   ZIMBABWE   9                    1                 0.3877021   0.2361652   0.6364736
Birth       ZVITAMBO   ZIMBABWE   10                   1                 0.7832784   0.5154839   1.1901926
Birth       ZVITAMBO   ZIMBABWE   11                   1                 0.7500755   0.4988693   1.1277768
Birth       ZVITAMBO   ZIMBABWE   12                   1                 0.4737213   0.2955266   0.7593628
6 months    PROBIT     BELARUS    1                    1                 1.0000000   1.0000000   1.0000000
6 months    PROBIT     BELARUS    2                    1                 0.5884244   0.2606802   1.3282302
6 months    PROBIT     BELARUS    3                    1                 0.8583490   0.4780332   1.5412380
6 months    PROBIT     BELARUS    4                    1                 1.0009116   0.4779825   2.0959427
6 months    PROBIT     BELARUS    5                    1                 0.3843384   0.1805847   0.8179875
6 months    PROBIT     BELARUS    6                    1                 0.7659193   0.2947297   1.9904079
6 months    PROBIT     BELARUS    7                    1                 0.6254272   0.1897343   2.0616159
6 months    PROBIT     BELARUS    8                    1                 0.5797692   0.2255805   1.4900766
6 months    PROBIT     BELARUS    9                    1                 0.5659377   0.2818667   1.1363014
6 months    PROBIT     BELARUS    10                   1                 0.6500888   0.3191212   1.3243104
6 months    PROBIT     BELARUS    11                   1                 0.7293896   0.3912357   1.3598176
6 months    PROBIT     BELARUS    12                   1                 0.6313974   0.2726795   1.4620190
6 months    ZVITAMBO   ZIMBABWE   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO   ZIMBABWE   2                    1                 0.9624027   0.5542169   1.6712209
6 months    ZVITAMBO   ZIMBABWE   3                    1                 1.7411320   1.1076747   2.7368512
6 months    ZVITAMBO   ZIMBABWE   4                    1                 1.0811946   0.6395741   1.8277503
6 months    ZVITAMBO   ZIMBABWE   5                    1                 1.0621979   0.6246189   1.8063242
6 months    ZVITAMBO   ZIMBABWE   6                    1                 1.3953202   0.8561906   2.2739310
6 months    ZVITAMBO   ZIMBABWE   7                    1                 1.5176507   0.9406306   2.4486377
6 months    ZVITAMBO   ZIMBABWE   8                    1                 0.7973258   0.4621010   1.3757350
6 months    ZVITAMBO   ZIMBABWE   9                    1                 0.9471264   0.5629471   1.5934862
6 months    ZVITAMBO   ZIMBABWE   10                   1                 1.0893467   0.6406759   1.8522254
6 months    ZVITAMBO   ZIMBABWE   11                   1                 1.1079592   0.6740930   1.8210747
6 months    ZVITAMBO   ZIMBABWE   12                   1                 1.1324338   0.6941144   1.8475432
24 months   Keneba     GAMBIA     1                    1                 1.0000000   1.0000000   1.0000000
24 months   Keneba     GAMBIA     2                    1                 1.6212575   0.8125877   3.2346980
24 months   Keneba     GAMBIA     3                    1                 1.0058824   0.4649438   2.1761756
24 months   Keneba     GAMBIA     4                    1                 1.1250000   0.4898799   2.5835412
24 months   Keneba     GAMBIA     5                    1                 0.5840164   0.2111459   1.6153528
24 months   Keneba     GAMBIA     6                    1                 1.0842391   0.4420103   2.6596091
24 months   Keneba     GAMBIA     7                    1                 1.0555556   0.4107149   2.7128249
24 months   Keneba     GAMBIA     8                    1                 0.8117089   0.3514741   1.8745943
24 months   Keneba     GAMBIA     9                    1                 1.4339623   0.7001807   2.9367389
24 months   Keneba     GAMBIA     10                   1                 0.9262500   0.4341248   1.9762500
24 months   Keneba     GAMBIA     11                   1                 1.4148936   0.6761996   2.9605519
24 months   Keneba     GAMBIA     12                   1                 1.7100000   0.8517524   3.4330399


### Parameter: PAR


agecat      studyid    country    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  ---------  -------------------  ---------------  -----------  -----------  ----------
Birth       ZVITAMBO   ZIMBABWE   1                    NA                -0.0098418   -0.0198776   0.0001939
6 months    PROBIT     BELARUS    1                    NA                -0.0051625   -0.0123694   0.0020445
6 months    ZVITAMBO   ZIMBABWE   1                    NA                 0.0052949   -0.0067649   0.0173547
24 months   Keneba     GAMBIA     1                    NA                 0.0109840   -0.0256502   0.0476182


### Parameter: PAF


agecat      studyid    country    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------  ---------  -------------------  ---------------  -----------  -----------  -----------
Birth       ZVITAMBO   ZIMBABWE   1                    NA                -0.3089490   -0.6636470   -0.0298744
6 months    PROBIT     BELARUS    1                    NA                -0.4596647   -1.3255005    0.0838010
6 months    ZVITAMBO   ZIMBABWE   1                    NA                 0.1307741   -0.2240812    0.3827585
24 months   Keneba     GAMBIA     1                    NA                 0.1353383   -0.4566204    0.4867298
