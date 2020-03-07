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

**Outcome Variable:** swasted

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

agecat      studyid          country                        brthmon    swasted   n_cell       n
----------  ---------------  -----------------------------  --------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                0        9      86
Birth       CMC-V-BCS-2002   INDIA                          1                1        0      86
Birth       CMC-V-BCS-2002   INDIA                          2                0        1      86
Birth       CMC-V-BCS-2002   INDIA                          2                1        0      86
Birth       CMC-V-BCS-2002   INDIA                          3                0        7      86
Birth       CMC-V-BCS-2002   INDIA                          3                1        0      86
Birth       CMC-V-BCS-2002   INDIA                          4                0        9      86
Birth       CMC-V-BCS-2002   INDIA                          4                1        0      86
Birth       CMC-V-BCS-2002   INDIA                          5                0       10      86
Birth       CMC-V-BCS-2002   INDIA                          5                1        0      86
Birth       CMC-V-BCS-2002   INDIA                          6                0        9      86
Birth       CMC-V-BCS-2002   INDIA                          6                1        0      86
Birth       CMC-V-BCS-2002   INDIA                          7                0        7      86
Birth       CMC-V-BCS-2002   INDIA                          7                1        0      86
Birth       CMC-V-BCS-2002   INDIA                          8                0        4      86
Birth       CMC-V-BCS-2002   INDIA                          8                1        0      86
Birth       CMC-V-BCS-2002   INDIA                          9                0        7      86
Birth       CMC-V-BCS-2002   INDIA                          9                1        1      86
Birth       CMC-V-BCS-2002   INDIA                          10               0        8      86
Birth       CMC-V-BCS-2002   INDIA                          10               1        0      86
Birth       CMC-V-BCS-2002   INDIA                          11               0       11      86
Birth       CMC-V-BCS-2002   INDIA                          11               1        0      86
Birth       CMC-V-BCS-2002   INDIA                          12               0        3      86
Birth       CMC-V-BCS-2002   INDIA                          12               1        0      86
Birth       CMIN             BANGLADESH                     1                0        2      19
Birth       CMIN             BANGLADESH                     1                1        0      19
Birth       CMIN             BANGLADESH                     2                0        4      19
Birth       CMIN             BANGLADESH                     2                1        0      19
Birth       CMIN             BANGLADESH                     3                0        0      19
Birth       CMIN             BANGLADESH                     3                1        0      19
Birth       CMIN             BANGLADESH                     4                0        2      19
Birth       CMIN             BANGLADESH                     4                1        0      19
Birth       CMIN             BANGLADESH                     5                0        1      19
Birth       CMIN             BANGLADESH                     5                1        0      19
Birth       CMIN             BANGLADESH                     6                0        0      19
Birth       CMIN             BANGLADESH                     6                1        0      19
Birth       CMIN             BANGLADESH                     7                0        4      19
Birth       CMIN             BANGLADESH                     7                1        0      19
Birth       CMIN             BANGLADESH                     8                0        2      19
Birth       CMIN             BANGLADESH                     8                1        0      19
Birth       CMIN             BANGLADESH                     9                0        1      19
Birth       CMIN             BANGLADESH                     9                1        0      19
Birth       CMIN             BANGLADESH                     10               0        1      19
Birth       CMIN             BANGLADESH                     10               1        0      19
Birth       CMIN             BANGLADESH                     11               0        1      19
Birth       CMIN             BANGLADESH                     11               1        1      19
Birth       CMIN             BANGLADESH                     12               0        0      19
Birth       CMIN             BANGLADESH                     12               1        0      19
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
Birth       EE               PAKISTAN                       1                0       37     177
Birth       EE               PAKISTAN                       1                1        2     177
Birth       EE               PAKISTAN                       2                0       36     177
Birth       EE               PAKISTAN                       2                1        0     177
Birth       EE               PAKISTAN                       3                0       15     177
Birth       EE               PAKISTAN                       3                1        1     177
Birth       EE               PAKISTAN                       4                0        7     177
Birth       EE               PAKISTAN                       4                1        0     177
Birth       EE               PAKISTAN                       5                0        0     177
Birth       EE               PAKISTAN                       5                1        0     177
Birth       EE               PAKISTAN                       6                0        0     177
Birth       EE               PAKISTAN                       6                1        0     177
Birth       EE               PAKISTAN                       7                0        0     177
Birth       EE               PAKISTAN                       7                1        0     177
Birth       EE               PAKISTAN                       8                0        0     177
Birth       EE               PAKISTAN                       8                1        0     177
Birth       EE               PAKISTAN                       9                0        0     177
Birth       EE               PAKISTAN                       9                1        0     177
Birth       EE               PAKISTAN                       10               0        0     177
Birth       EE               PAKISTAN                       10               1        0     177
Birth       EE               PAKISTAN                       11               0       39     177
Birth       EE               PAKISTAN                       11               1        2     177
Birth       EE               PAKISTAN                       12               0       37     177
Birth       EE               PAKISTAN                       12               1        1     177
Birth       GMS-Nepal        NEPAL                          1                0        0     641
Birth       GMS-Nepal        NEPAL                          1                1        0     641
Birth       GMS-Nepal        NEPAL                          2                0        0     641
Birth       GMS-Nepal        NEPAL                          2                1        0     641
Birth       GMS-Nepal        NEPAL                          3                0        0     641
Birth       GMS-Nepal        NEPAL                          3                1        0     641
Birth       GMS-Nepal        NEPAL                          4                0        1     641
Birth       GMS-Nepal        NEPAL                          4                1        0     641
Birth       GMS-Nepal        NEPAL                          5                0        0     641
Birth       GMS-Nepal        NEPAL                          5                1        0     641
Birth       GMS-Nepal        NEPAL                          6                0      154     641
Birth       GMS-Nepal        NEPAL                          6                1        8     641
Birth       GMS-Nepal        NEPAL                          7                0      234     641
Birth       GMS-Nepal        NEPAL                          7                1        8     641
Birth       GMS-Nepal        NEPAL                          8                0      225     641
Birth       GMS-Nepal        NEPAL                          8                1       11     641
Birth       GMS-Nepal        NEPAL                          9                0        0     641
Birth       GMS-Nepal        NEPAL                          9                1        0     641
Birth       GMS-Nepal        NEPAL                          10               0        0     641
Birth       GMS-Nepal        NEPAL                          10               1        0     641
Birth       GMS-Nepal        NEPAL                          11               0        0     641
Birth       GMS-Nepal        NEPAL                          11               1        0     641
Birth       GMS-Nepal        NEPAL                          12               0        0     641
Birth       GMS-Nepal        NEPAL                          12               1        0     641
Birth       IRC              INDIA                          1                0       29     343
Birth       IRC              INDIA                          1                1        2     343
Birth       IRC              INDIA                          2                0       22     343
Birth       IRC              INDIA                          2                1        1     343
Birth       IRC              INDIA                          3                0       19     343
Birth       IRC              INDIA                          3                1        5     343
Birth       IRC              INDIA                          4                0       17     343
Birth       IRC              INDIA                          4                1        2     343
Birth       IRC              INDIA                          5                0       11     343
Birth       IRC              INDIA                          5                1        4     343
Birth       IRC              INDIA                          6                0       21     343
Birth       IRC              INDIA                          6                1        5     343
Birth       IRC              INDIA                          7                0       26     343
Birth       IRC              INDIA                          7                1        5     343
Birth       IRC              INDIA                          8                0       30     343
Birth       IRC              INDIA                          8                1        6     343
Birth       IRC              INDIA                          9                0       17     343
Birth       IRC              INDIA                          9                1        7     343
Birth       IRC              INDIA                          10               0       25     343
Birth       IRC              INDIA                          10               1        8     343
Birth       IRC              INDIA                          11               0       35     343
Birth       IRC              INDIA                          11               1        3     343
Birth       IRC              INDIA                          12               0       37     343
Birth       IRC              INDIA                          12               1        6     343
Birth       JiVitA-3         BANGLADESH                     1                0     1599   18014
Birth       JiVitA-3         BANGLADESH                     1                1       24   18014
Birth       JiVitA-3         BANGLADESH                     2                0     1383   18014
Birth       JiVitA-3         BANGLADESH                     2                1       27   18014
Birth       JiVitA-3         BANGLADESH                     3                0     1675   18014
Birth       JiVitA-3         BANGLADESH                     3                1       28   18014
Birth       JiVitA-3         BANGLADESH                     4                0     1223   18014
Birth       JiVitA-3         BANGLADESH                     4                1       22   18014
Birth       JiVitA-3         BANGLADESH                     5                0      862   18014
Birth       JiVitA-3         BANGLADESH                     5                1       18   18014
Birth       JiVitA-3         BANGLADESH                     6                0      913   18014
Birth       JiVitA-3         BANGLADESH                     6                1       12   18014
Birth       JiVitA-3         BANGLADESH                     7                0     1041   18014
Birth       JiVitA-3         BANGLADESH                     7                1       18   18014
Birth       JiVitA-3         BANGLADESH                     8                0     1386   18014
Birth       JiVitA-3         BANGLADESH                     8                1       28   18014
Birth       JiVitA-3         BANGLADESH                     9                0     1805   18014
Birth       JiVitA-3         BANGLADESH                     9                1       51   18014
Birth       JiVitA-3         BANGLADESH                     10               0     1876   18014
Birth       JiVitA-3         BANGLADESH                     10               1       43   18014
Birth       JiVitA-3         BANGLADESH                     11               0     1896   18014
Birth       JiVitA-3         BANGLADESH                     11               1       41   18014
Birth       JiVitA-3         BANGLADESH                     12               0     2006   18014
Birth       JiVitA-3         BANGLADESH                     12               1       37   18014
Birth       JiVitA-4         BANGLADESH                     1                0        0    2396
Birth       JiVitA-4         BANGLADESH                     1                1        0    2396
Birth       JiVitA-4         BANGLADESH                     2                0      298    2396
Birth       JiVitA-4         BANGLADESH                     2                1        1    2396
Birth       JiVitA-4         BANGLADESH                     3                0      323    2396
Birth       JiVitA-4         BANGLADESH                     3                1        4    2396
Birth       JiVitA-4         BANGLADESH                     4                0      398    2396
Birth       JiVitA-4         BANGLADESH                     4                1        5    2396
Birth       JiVitA-4         BANGLADESH                     5                0      366    2396
Birth       JiVitA-4         BANGLADESH                     5                1        2    2396
Birth       JiVitA-4         BANGLADESH                     6                0      279    2396
Birth       JiVitA-4         BANGLADESH                     6                1        7    2396
Birth       JiVitA-4         BANGLADESH                     7                0      318    2396
Birth       JiVitA-4         BANGLADESH                     7                1        4    2396
Birth       JiVitA-4         BANGLADESH                     8                0      211    2396
Birth       JiVitA-4         BANGLADESH                     8                1        5    2396
Birth       JiVitA-4         BANGLADESH                     9                0      131    2396
Birth       JiVitA-4         BANGLADESH                     9                1        3    2396
Birth       JiVitA-4         BANGLADESH                     10               0       41    2396
Birth       JiVitA-4         BANGLADESH                     10               1        0    2396
Birth       JiVitA-4         BANGLADESH                     11               0        0    2396
Birth       JiVitA-4         BANGLADESH                     11               1        0    2396
Birth       JiVitA-4         BANGLADESH                     12               0        0    2396
Birth       JiVitA-4         BANGLADESH                     12               1        0    2396
Birth       Keneba           GAMBIA                         1                0      139    1466
Birth       Keneba           GAMBIA                         1                1       14    1466
Birth       Keneba           GAMBIA                         2                0      131    1466
Birth       Keneba           GAMBIA                         2                1        9    1466
Birth       Keneba           GAMBIA                         3                0      150    1466
Birth       Keneba           GAMBIA                         3                1        9    1466
Birth       Keneba           GAMBIA                         4                0       99    1466
Birth       Keneba           GAMBIA                         4                1        4    1466
Birth       Keneba           GAMBIA                         5                0       94    1466
Birth       Keneba           GAMBIA                         5                1        8    1466
Birth       Keneba           GAMBIA                         6                0       81    1466
Birth       Keneba           GAMBIA                         6                1        4    1466
Birth       Keneba           GAMBIA                         7                0       68    1466
Birth       Keneba           GAMBIA                         7                1        6    1466
Birth       Keneba           GAMBIA                         8                0      108    1466
Birth       Keneba           GAMBIA                         8                1        8    1466
Birth       Keneba           GAMBIA                         9                0      106    1466
Birth       Keneba           GAMBIA                         9                1       12    1466
Birth       Keneba           GAMBIA                         10               0      158    1466
Birth       Keneba           GAMBIA                         10               1       10    1466
Birth       Keneba           GAMBIA                         11               0      105    1466
Birth       Keneba           GAMBIA                         11               1       10    1466
Birth       Keneba           GAMBIA                         12               0      124    1466
Birth       Keneba           GAMBIA                         12               1        9    1466
Birth       MAL-ED           BANGLADESH                     1                0       19     215
Birth       MAL-ED           BANGLADESH                     1                1        0     215
Birth       MAL-ED           BANGLADESH                     2                0       21     215
Birth       MAL-ED           BANGLADESH                     2                1        0     215
Birth       MAL-ED           BANGLADESH                     3                0       19     215
Birth       MAL-ED           BANGLADESH                     3                1        2     215
Birth       MAL-ED           BANGLADESH                     4                0       17     215
Birth       MAL-ED           BANGLADESH                     4                1        2     215
Birth       MAL-ED           BANGLADESH                     5                0       17     215
Birth       MAL-ED           BANGLADESH                     5                1        0     215
Birth       MAL-ED           BANGLADESH                     6                0        7     215
Birth       MAL-ED           BANGLADESH                     6                1        0     215
Birth       MAL-ED           BANGLADESH                     7                0       13     215
Birth       MAL-ED           BANGLADESH                     7                1        0     215
Birth       MAL-ED           BANGLADESH                     8                0       22     215
Birth       MAL-ED           BANGLADESH                     8                1        1     215
Birth       MAL-ED           BANGLADESH                     9                0       15     215
Birth       MAL-ED           BANGLADESH                     9                1        1     215
Birth       MAL-ED           BANGLADESH                     10               0       19     215
Birth       MAL-ED           BANGLADESH                     10               1        1     215
Birth       MAL-ED           BANGLADESH                     11               0       15     215
Birth       MAL-ED           BANGLADESH                     11               1        0     215
Birth       MAL-ED           BANGLADESH                     12               0       23     215
Birth       MAL-ED           BANGLADESH                     12               1        1     215
Birth       MAL-ED           BRAZIL                         1                0        5      62
Birth       MAL-ED           BRAZIL                         1                1        0      62
Birth       MAL-ED           BRAZIL                         2                0       10      62
Birth       MAL-ED           BRAZIL                         2                1        0      62
Birth       MAL-ED           BRAZIL                         3                0        7      62
Birth       MAL-ED           BRAZIL                         3                1        0      62
Birth       MAL-ED           BRAZIL                         4                0        4      62
Birth       MAL-ED           BRAZIL                         4                1        0      62
Birth       MAL-ED           BRAZIL                         5                0        1      62
Birth       MAL-ED           BRAZIL                         5                1        0      62
Birth       MAL-ED           BRAZIL                         6                0        5      62
Birth       MAL-ED           BRAZIL                         6                1        0      62
Birth       MAL-ED           BRAZIL                         7                0        6      62
Birth       MAL-ED           BRAZIL                         7                1        0      62
Birth       MAL-ED           BRAZIL                         8                0        6      62
Birth       MAL-ED           BRAZIL                         8                1        0      62
Birth       MAL-ED           BRAZIL                         9                0        5      62
Birth       MAL-ED           BRAZIL                         9                1        0      62
Birth       MAL-ED           BRAZIL                         10               0        5      62
Birth       MAL-ED           BRAZIL                         10               1        0      62
Birth       MAL-ED           BRAZIL                         11               0        4      62
Birth       MAL-ED           BRAZIL                         11               1        0      62
Birth       MAL-ED           BRAZIL                         12               0        4      62
Birth       MAL-ED           BRAZIL                         12               1        0      62
Birth       MAL-ED           INDIA                          1                0        2      45
Birth       MAL-ED           INDIA                          1                1        0      45
Birth       MAL-ED           INDIA                          2                0        6      45
Birth       MAL-ED           INDIA                          2                1        0      45
Birth       MAL-ED           INDIA                          3                0        3      45
Birth       MAL-ED           INDIA                          3                1        0      45
Birth       MAL-ED           INDIA                          4                0        5      45
Birth       MAL-ED           INDIA                          4                1        0      45
Birth       MAL-ED           INDIA                          5                0        4      45
Birth       MAL-ED           INDIA                          5                1        0      45
Birth       MAL-ED           INDIA                          6                0        2      45
Birth       MAL-ED           INDIA                          6                1        0      45
Birth       MAL-ED           INDIA                          7                0        3      45
Birth       MAL-ED           INDIA                          7                1        0      45
Birth       MAL-ED           INDIA                          8                0        8      45
Birth       MAL-ED           INDIA                          8                1        0      45
Birth       MAL-ED           INDIA                          9                0        4      45
Birth       MAL-ED           INDIA                          9                1        0      45
Birth       MAL-ED           INDIA                          10               0        5      45
Birth       MAL-ED           INDIA                          10               1        0      45
Birth       MAL-ED           INDIA                          11               0        3      45
Birth       MAL-ED           INDIA                          11               1        0      45
Birth       MAL-ED           INDIA                          12               0        0      45
Birth       MAL-ED           INDIA                          12               1        0      45
Birth       MAL-ED           NEPAL                          1                0        1      26
Birth       MAL-ED           NEPAL                          1                1        1      26
Birth       MAL-ED           NEPAL                          2                0        2      26
Birth       MAL-ED           NEPAL                          2                1        0      26
Birth       MAL-ED           NEPAL                          3                0        1      26
Birth       MAL-ED           NEPAL                          3                1        0      26
Birth       MAL-ED           NEPAL                          4                0        2      26
Birth       MAL-ED           NEPAL                          4                1        0      26
Birth       MAL-ED           NEPAL                          5                0        3      26
Birth       MAL-ED           NEPAL                          5                1        0      26
Birth       MAL-ED           NEPAL                          6                0        2      26
Birth       MAL-ED           NEPAL                          6                1        0      26
Birth       MAL-ED           NEPAL                          7                0        2      26
Birth       MAL-ED           NEPAL                          7                1        0      26
Birth       MAL-ED           NEPAL                          8                0        1      26
Birth       MAL-ED           NEPAL                          8                1        0      26
Birth       MAL-ED           NEPAL                          9                0        2      26
Birth       MAL-ED           NEPAL                          9                1        0      26
Birth       MAL-ED           NEPAL                          10               0        4      26
Birth       MAL-ED           NEPAL                          10               1        0      26
Birth       MAL-ED           NEPAL                          11               0        4      26
Birth       MAL-ED           NEPAL                          11               1        0      26
Birth       MAL-ED           NEPAL                          12               0        1      26
Birth       MAL-ED           NEPAL                          12               1        0      26
Birth       MAL-ED           PERU                           1                0       29     228
Birth       MAL-ED           PERU                           1                1        0     228
Birth       MAL-ED           PERU                           2                0       17     228
Birth       MAL-ED           PERU                           2                1        0     228
Birth       MAL-ED           PERU                           3                0       20     228
Birth       MAL-ED           PERU                           3                1        0     228
Birth       MAL-ED           PERU                           4                0       14     228
Birth       MAL-ED           PERU                           4                1        0     228
Birth       MAL-ED           PERU                           5                0       21     228
Birth       MAL-ED           PERU                           5                1        0     228
Birth       MAL-ED           PERU                           6                0       11     228
Birth       MAL-ED           PERU                           6                1        0     228
Birth       MAL-ED           PERU                           7                0       19     228
Birth       MAL-ED           PERU                           7                1        0     228
Birth       MAL-ED           PERU                           8                0       16     228
Birth       MAL-ED           PERU                           8                1        0     228
Birth       MAL-ED           PERU                           9                0       19     228
Birth       MAL-ED           PERU                           9                1        0     228
Birth       MAL-ED           PERU                           10               0       21     228
Birth       MAL-ED           PERU                           10               1        0     228
Birth       MAL-ED           PERU                           11               0       28     228
Birth       MAL-ED           PERU                           11               1        0     228
Birth       MAL-ED           PERU                           12               0       13     228
Birth       MAL-ED           PERU                           12               1        0     228
Birth       MAL-ED           SOUTH AFRICA                   1                0        9     120
Birth       MAL-ED           SOUTH AFRICA                   1                1        0     120
Birth       MAL-ED           SOUTH AFRICA                   2                0       13     120
Birth       MAL-ED           SOUTH AFRICA                   2                1        0     120
Birth       MAL-ED           SOUTH AFRICA                   3                0        8     120
Birth       MAL-ED           SOUTH AFRICA                   3                1        0     120
Birth       MAL-ED           SOUTH AFRICA                   4                0        6     120
Birth       MAL-ED           SOUTH AFRICA                   4                1        0     120
Birth       MAL-ED           SOUTH AFRICA                   5                0        6     120
Birth       MAL-ED           SOUTH AFRICA                   5                1        0     120
Birth       MAL-ED           SOUTH AFRICA                   6                0        8     120
Birth       MAL-ED           SOUTH AFRICA                   6                1        0     120
Birth       MAL-ED           SOUTH AFRICA                   7                0       13     120
Birth       MAL-ED           SOUTH AFRICA                   7                1        0     120
Birth       MAL-ED           SOUTH AFRICA                   8                0        3     120
Birth       MAL-ED           SOUTH AFRICA                   8                1        0     120
Birth       MAL-ED           SOUTH AFRICA                   9                0       10     120
Birth       MAL-ED           SOUTH AFRICA                   9                1        0     120
Birth       MAL-ED           SOUTH AFRICA                   10               0       13     120
Birth       MAL-ED           SOUTH AFRICA                   10               1        0     120
Birth       MAL-ED           SOUTH AFRICA                   11               0       14     120
Birth       MAL-ED           SOUTH AFRICA                   11               1        0     120
Birth       MAL-ED           SOUTH AFRICA                   12               0       17     120
Birth       MAL-ED           SOUTH AFRICA                   12               1        0     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0       10     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                0       15     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                0       11     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                0        8     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                0        9     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                0       10     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                0       14     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                0        6     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                0        2     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               0       11     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               0       10     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0        9     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               1        0     115
Birth       NIH-Birth        BANGLADESH                     1                0       51     575
Birth       NIH-Birth        BANGLADESH                     1                1        8     575
Birth       NIH-Birth        BANGLADESH                     2                0       53     575
Birth       NIH-Birth        BANGLADESH                     2                1        1     575
Birth       NIH-Birth        BANGLADESH                     3                0       54     575
Birth       NIH-Birth        BANGLADESH                     3                1        2     575
Birth       NIH-Birth        BANGLADESH                     4                0       42     575
Birth       NIH-Birth        BANGLADESH                     4                1        5     575
Birth       NIH-Birth        BANGLADESH                     5                0       43     575
Birth       NIH-Birth        BANGLADESH                     5                1        2     575
Birth       NIH-Birth        BANGLADESH                     6                0       41     575
Birth       NIH-Birth        BANGLADESH                     6                1        4     575
Birth       NIH-Birth        BANGLADESH                     7                0       33     575
Birth       NIH-Birth        BANGLADESH                     7                1        6     575
Birth       NIH-Birth        BANGLADESH                     8                0       34     575
Birth       NIH-Birth        BANGLADESH                     8                1        4     575
Birth       NIH-Birth        BANGLADESH                     9                0       43     575
Birth       NIH-Birth        BANGLADESH                     9                1        1     575
Birth       NIH-Birth        BANGLADESH                     10               0       44     575
Birth       NIH-Birth        BANGLADESH                     10               1        3     575
Birth       NIH-Birth        BANGLADESH                     11               0       49     575
Birth       NIH-Birth        BANGLADESH                     11               1        2     575
Birth       NIH-Birth        BANGLADESH                     12               0       50     575
Birth       NIH-Birth        BANGLADESH                     12               1        0     575
Birth       PROBIT           BELARUS                        1                0      758   13817
Birth       PROBIT           BELARUS                        1                1       64   13817
Birth       PROBIT           BELARUS                        2                0      756   13817
Birth       PROBIT           BELARUS                        2                1       41   13817
Birth       PROBIT           BELARUS                        3                0      872   13817
Birth       PROBIT           BELARUS                        3                1       69   13817
Birth       PROBIT           BELARUS                        4                0      911   13817
Birth       PROBIT           BELARUS                        4                1       59   13817
Birth       PROBIT           BELARUS                        5                0      868   13817
Birth       PROBIT           BELARUS                        5                1       74   13817
Birth       PROBIT           BELARUS                        6                0      959   13817
Birth       PROBIT           BELARUS                        6                1       61   13817
Birth       PROBIT           BELARUS                        7                0     1176   13817
Birth       PROBIT           BELARUS                        7                1      109   13817
Birth       PROBIT           BELARUS                        8                0     1230   13817
Birth       PROBIT           BELARUS                        8                1       76   13817
Birth       PROBIT           BELARUS                        9                0     1227   13817
Birth       PROBIT           BELARUS                        9                1       95   13817
Birth       PROBIT           BELARUS                        10               0     1394   13817
Birth       PROBIT           BELARUS                        10               1       93   13817
Birth       PROBIT           BELARUS                        11               0     1299   13817
Birth       PROBIT           BELARUS                        11               1       84   13817
Birth       PROBIT           BELARUS                        12               0     1448   13817
Birth       PROBIT           BELARUS                        12               1       94   13817
Birth       PROVIDE          BANGLADESH                     1                0       30     532
Birth       PROVIDE          BANGLADESH                     1                1        0     532
Birth       PROVIDE          BANGLADESH                     2                0       22     532
Birth       PROVIDE          BANGLADESH                     2                1        2     532
Birth       PROVIDE          BANGLADESH                     3                0       45     532
Birth       PROVIDE          BANGLADESH                     3                1        0     532
Birth       PROVIDE          BANGLADESH                     4                0       28     532
Birth       PROVIDE          BANGLADESH                     4                1        0     532
Birth       PROVIDE          BANGLADESH                     5                0       44     532
Birth       PROVIDE          BANGLADESH                     5                1        1     532
Birth       PROVIDE          BANGLADESH                     6                0       73     532
Birth       PROVIDE          BANGLADESH                     6                1        2     532
Birth       PROVIDE          BANGLADESH                     7                0       72     532
Birth       PROVIDE          BANGLADESH                     7                1        3     532
Birth       PROVIDE          BANGLADESH                     8                0       50     532
Birth       PROVIDE          BANGLADESH                     8                1        3     532
Birth       PROVIDE          BANGLADESH                     9                0       54     532
Birth       PROVIDE          BANGLADESH                     9                1        1     532
Birth       PROVIDE          BANGLADESH                     10               0       54     532
Birth       PROVIDE          BANGLADESH                     10               1        0     532
Birth       PROVIDE          BANGLADESH                     11               0       26     532
Birth       PROVIDE          BANGLADESH                     11               1        1     532
Birth       PROVIDE          BANGLADESH                     12               0       21     532
Birth       PROVIDE          BANGLADESH                     12               1        0     532
Birth       ResPak           PAKISTAN                       1                0        2      38
Birth       ResPak           PAKISTAN                       1                1        0      38
Birth       ResPak           PAKISTAN                       2                0        1      38
Birth       ResPak           PAKISTAN                       2                1        0      38
Birth       ResPak           PAKISTAN                       3                0        1      38
Birth       ResPak           PAKISTAN                       3                1        0      38
Birth       ResPak           PAKISTAN                       4                0        6      38
Birth       ResPak           PAKISTAN                       4                1        0      38
Birth       ResPak           PAKISTAN                       5                0        7      38
Birth       ResPak           PAKISTAN                       5                1        0      38
Birth       ResPak           PAKISTAN                       6                0        7      38
Birth       ResPak           PAKISTAN                       6                1        0      38
Birth       ResPak           PAKISTAN                       7                0        8      38
Birth       ResPak           PAKISTAN                       7                1        0      38
Birth       ResPak           PAKISTAN                       8                0        4      38
Birth       ResPak           PAKISTAN                       8                1        0      38
Birth       ResPak           PAKISTAN                       9                0        1      38
Birth       ResPak           PAKISTAN                       9                1        0      38
Birth       ResPak           PAKISTAN                       10               0        1      38
Birth       ResPak           PAKISTAN                       10               1        0      38
Birth       ResPak           PAKISTAN                       11               0        0      38
Birth       ResPak           PAKISTAN                       11               1        0      38
Birth       ResPak           PAKISTAN                       12               0        0      38
Birth       ResPak           PAKISTAN                       12               1        0      38
Birth       SAS-CompFeed     INDIA                          1                0       70    1103
Birth       SAS-CompFeed     INDIA                          1                1        0    1103
Birth       SAS-CompFeed     INDIA                          2                0       63    1103
Birth       SAS-CompFeed     INDIA                          2                1        1    1103
Birth       SAS-CompFeed     INDIA                          3                0       59    1103
Birth       SAS-CompFeed     INDIA                          3                1        1    1103
Birth       SAS-CompFeed     INDIA                          4                0       56    1103
Birth       SAS-CompFeed     INDIA                          4                1        2    1103
Birth       SAS-CompFeed     INDIA                          5                0       71    1103
Birth       SAS-CompFeed     INDIA                          5                1        3    1103
Birth       SAS-CompFeed     INDIA                          6                0       86    1103
Birth       SAS-CompFeed     INDIA                          6                1        8    1103
Birth       SAS-CompFeed     INDIA                          7                0       90    1103
Birth       SAS-CompFeed     INDIA                          7                1        2    1103
Birth       SAS-CompFeed     INDIA                          8                0      121    1103
Birth       SAS-CompFeed     INDIA                          8                1        2    1103
Birth       SAS-CompFeed     INDIA                          9                0      127    1103
Birth       SAS-CompFeed     INDIA                          9                1        7    1103
Birth       SAS-CompFeed     INDIA                          10               0      122    1103
Birth       SAS-CompFeed     INDIA                          10               1        3    1103
Birth       SAS-CompFeed     INDIA                          11               0      111    1103
Birth       SAS-CompFeed     INDIA                          11               1        0    1103
Birth       SAS-CompFeed     INDIA                          12               0       98    1103
Birth       SAS-CompFeed     INDIA                          12               1        0    1103
Birth       ZVITAMBO         ZIMBABWE                       1                0     1167   12917
Birth       ZVITAMBO         ZIMBABWE                       1                1       66   12917
Birth       ZVITAMBO         ZIMBABWE                       2                0      902   12917
Birth       ZVITAMBO         ZIMBABWE                       2                1       55   12917
Birth       ZVITAMBO         ZIMBABWE                       3                0     1017   12917
Birth       ZVITAMBO         ZIMBABWE                       3                1       60   12917
Birth       ZVITAMBO         ZIMBABWE                       4                0      872   12917
Birth       ZVITAMBO         ZIMBABWE                       4                1       50   12917
Birth       ZVITAMBO         ZIMBABWE                       5                0      869   12917
Birth       ZVITAMBO         ZIMBABWE                       5                1       60   12917
Birth       ZVITAMBO         ZIMBABWE                       6                0      968   12917
Birth       ZVITAMBO         ZIMBABWE                       6                1       80   12917
Birth       ZVITAMBO         ZIMBABWE                       7                0     1007   12917
Birth       ZVITAMBO         ZIMBABWE                       7                1       89   12917
Birth       ZVITAMBO         ZIMBABWE                       8                0     1119   12917
Birth       ZVITAMBO         ZIMBABWE                       8                1       69   12917
Birth       ZVITAMBO         ZIMBABWE                       9                0     1178   12917
Birth       ZVITAMBO         ZIMBABWE                       9                1       68   12917
Birth       ZVITAMBO         ZIMBABWE                       10               0      920   12917
Birth       ZVITAMBO         ZIMBABWE                       10               1       60   12917
Birth       ZVITAMBO         ZIMBABWE                       11               0     1040   12917
Birth       ZVITAMBO         ZIMBABWE                       11               1       63   12917
Birth       ZVITAMBO         ZIMBABWE                       12               0     1066   12917
Birth       ZVITAMBO         ZIMBABWE                       12               1       72   12917
6 months    CMC-V-BCS-2002   INDIA                          1                0       33     368
6 months    CMC-V-BCS-2002   INDIA                          1                1        1     368
6 months    CMC-V-BCS-2002   INDIA                          2                0       15     368
6 months    CMC-V-BCS-2002   INDIA                          2                1        1     368
6 months    CMC-V-BCS-2002   INDIA                          3                0       30     368
6 months    CMC-V-BCS-2002   INDIA                          3                1        1     368
6 months    CMC-V-BCS-2002   INDIA                          4                0       42     368
6 months    CMC-V-BCS-2002   INDIA                          4                1        1     368
6 months    CMC-V-BCS-2002   INDIA                          5                0       32     368
6 months    CMC-V-BCS-2002   INDIA                          5                1        2     368
6 months    CMC-V-BCS-2002   INDIA                          6                0       36     368
6 months    CMC-V-BCS-2002   INDIA                          6                1        1     368
6 months    CMC-V-BCS-2002   INDIA                          7                0       38     368
6 months    CMC-V-BCS-2002   INDIA                          7                1        1     368
6 months    CMC-V-BCS-2002   INDIA                          8                0       17     368
6 months    CMC-V-BCS-2002   INDIA                          8                1        0     368
6 months    CMC-V-BCS-2002   INDIA                          9                0       21     368
6 months    CMC-V-BCS-2002   INDIA                          9                1        0     368
6 months    CMC-V-BCS-2002   INDIA                          10               0       28     368
6 months    CMC-V-BCS-2002   INDIA                          10               1        1     368
6 months    CMC-V-BCS-2002   INDIA                          11               0       41     368
6 months    CMC-V-BCS-2002   INDIA                          11               1        1     368
6 months    CMC-V-BCS-2002   INDIA                          12               0       23     368
6 months    CMC-V-BCS-2002   INDIA                          12               1        2     368
6 months    CMIN             BANGLADESH                     1                0       25     243
6 months    CMIN             BANGLADESH                     1                1        1     243
6 months    CMIN             BANGLADESH                     2                0       23     243
6 months    CMIN             BANGLADESH                     2                1        0     243
6 months    CMIN             BANGLADESH                     3                0       17     243
6 months    CMIN             BANGLADESH                     3                1        0     243
6 months    CMIN             BANGLADESH                     4                0       21     243
6 months    CMIN             BANGLADESH                     4                1        1     243
6 months    CMIN             BANGLADESH                     5                0       17     243
6 months    CMIN             BANGLADESH                     5                1        0     243
6 months    CMIN             BANGLADESH                     6                0        8     243
6 months    CMIN             BANGLADESH                     6                1        0     243
6 months    CMIN             BANGLADESH                     7                0       15     243
6 months    CMIN             BANGLADESH                     7                1        0     243
6 months    CMIN             BANGLADESH                     8                0       17     243
6 months    CMIN             BANGLADESH                     8                1        0     243
6 months    CMIN             BANGLADESH                     9                0       20     243
6 months    CMIN             BANGLADESH                     9                1        0     243
6 months    CMIN             BANGLADESH                     10               0       24     243
6 months    CMIN             BANGLADESH                     10               1        0     243
6 months    CMIN             BANGLADESH                     11               0       26     243
6 months    CMIN             BANGLADESH                     11               1        0     243
6 months    CMIN             BANGLADESH                     12               0       25     243
6 months    CMIN             BANGLADESH                     12               1        3     243
6 months    CONTENT          PERU                           1                0       10     215
6 months    CONTENT          PERU                           1                1        0     215
6 months    CONTENT          PERU                           2                0       18     215
6 months    CONTENT          PERU                           2                1        0     215
6 months    CONTENT          PERU                           3                0       30     215
6 months    CONTENT          PERU                           3                1        0     215
6 months    CONTENT          PERU                           4                0       19     215
6 months    CONTENT          PERU                           4                1        0     215
6 months    CONTENT          PERU                           5                0       14     215
6 months    CONTENT          PERU                           5                1        0     215
6 months    CONTENT          PERU                           6                0       13     215
6 months    CONTENT          PERU                           6                1        0     215
6 months    CONTENT          PERU                           7                0       28     215
6 months    CONTENT          PERU                           7                1        0     215
6 months    CONTENT          PERU                           8                0       23     215
6 months    CONTENT          PERU                           8                1        0     215
6 months    CONTENT          PERU                           9                0       26     215
6 months    CONTENT          PERU                           9                1        0     215
6 months    CONTENT          PERU                           10               0       14     215
6 months    CONTENT          PERU                           10               1        0     215
6 months    CONTENT          PERU                           11               0        9     215
6 months    CONTENT          PERU                           11               1        0     215
6 months    CONTENT          PERU                           12               0       11     215
6 months    CONTENT          PERU                           12               1        0     215
6 months    EE               PAKISTAN                       1                0       88     375
6 months    EE               PAKISTAN                       1                1        4     375
6 months    EE               PAKISTAN                       2                0       63     375
6 months    EE               PAKISTAN                       2                1        3     375
6 months    EE               PAKISTAN                       3                0       43     375
6 months    EE               PAKISTAN                       3                1        0     375
6 months    EE               PAKISTAN                       4                0       16     375
6 months    EE               PAKISTAN                       4                1        0     375
6 months    EE               PAKISTAN                       5                0        0     375
6 months    EE               PAKISTAN                       5                1        0     375
6 months    EE               PAKISTAN                       6                0        0     375
6 months    EE               PAKISTAN                       6                1        0     375
6 months    EE               PAKISTAN                       7                0        0     375
6 months    EE               PAKISTAN                       7                1        0     375
6 months    EE               PAKISTAN                       8                0        0     375
6 months    EE               PAKISTAN                       8                1        0     375
6 months    EE               PAKISTAN                       9                0        0     375
6 months    EE               PAKISTAN                       9                1        0     375
6 months    EE               PAKISTAN                       10               0        4     375
6 months    EE               PAKISTAN                       10               1        0     375
6 months    EE               PAKISTAN                       11               0       69     375
6 months    EE               PAKISTAN                       11               1        2     375
6 months    EE               PAKISTAN                       12               0       79     375
6 months    EE               PAKISTAN                       12               1        4     375
6 months    GMS-Nepal        NEPAL                          1                0        0     564
6 months    GMS-Nepal        NEPAL                          1                1        0     564
6 months    GMS-Nepal        NEPAL                          2                0        0     564
6 months    GMS-Nepal        NEPAL                          2                1        0     564
6 months    GMS-Nepal        NEPAL                          3                0        0     564
6 months    GMS-Nepal        NEPAL                          3                1        0     564
6 months    GMS-Nepal        NEPAL                          4                0        1     564
6 months    GMS-Nepal        NEPAL                          4                1        0     564
6 months    GMS-Nepal        NEPAL                          5                0        0     564
6 months    GMS-Nepal        NEPAL                          5                1        0     564
6 months    GMS-Nepal        NEPAL                          6                0      121     564
6 months    GMS-Nepal        NEPAL                          6                1        0     564
6 months    GMS-Nepal        NEPAL                          7                0      215     564
6 months    GMS-Nepal        NEPAL                          7                1        4     564
6 months    GMS-Nepal        NEPAL                          8                0      220     564
6 months    GMS-Nepal        NEPAL                          8                1        3     564
6 months    GMS-Nepal        NEPAL                          9                0        0     564
6 months    GMS-Nepal        NEPAL                          9                1        0     564
6 months    GMS-Nepal        NEPAL                          10               0        0     564
6 months    GMS-Nepal        NEPAL                          10               1        0     564
6 months    GMS-Nepal        NEPAL                          11               0        0     564
6 months    GMS-Nepal        NEPAL                          11               1        0     564
6 months    GMS-Nepal        NEPAL                          12               0        0     564
6 months    GMS-Nepal        NEPAL                          12               1        0     564
6 months    Guatemala BSC    GUATEMALA                      1                0       28     299
6 months    Guatemala BSC    GUATEMALA                      1                1        0     299
6 months    Guatemala BSC    GUATEMALA                      2                0       25     299
6 months    Guatemala BSC    GUATEMALA                      2                1        0     299
6 months    Guatemala BSC    GUATEMALA                      3                0       27     299
6 months    Guatemala BSC    GUATEMALA                      3                1        0     299
6 months    Guatemala BSC    GUATEMALA                      4                0       31     299
6 months    Guatemala BSC    GUATEMALA                      4                1        0     299
6 months    Guatemala BSC    GUATEMALA                      5                0       31     299
6 months    Guatemala BSC    GUATEMALA                      5                1        0     299
6 months    Guatemala BSC    GUATEMALA                      6                0       22     299
6 months    Guatemala BSC    GUATEMALA                      6                1        0     299
6 months    Guatemala BSC    GUATEMALA                      7                0       21     299
6 months    Guatemala BSC    GUATEMALA                      7                1        0     299
6 months    Guatemala BSC    GUATEMALA                      8                0       14     299
6 months    Guatemala BSC    GUATEMALA                      8                1        0     299
6 months    Guatemala BSC    GUATEMALA                      9                0       16     299
6 months    Guatemala BSC    GUATEMALA                      9                1        0     299
6 months    Guatemala BSC    GUATEMALA                      10               0       29     299
6 months    Guatemala BSC    GUATEMALA                      10               1        0     299
6 months    Guatemala BSC    GUATEMALA                      11               0       24     299
6 months    Guatemala BSC    GUATEMALA                      11               1        0     299
6 months    Guatemala BSC    GUATEMALA                      12               0       31     299
6 months    Guatemala BSC    GUATEMALA                      12               1        0     299
6 months    IRC              INDIA                          1                0       36     408
6 months    IRC              INDIA                          1                1        2     408
6 months    IRC              INDIA                          2                0       26     408
6 months    IRC              INDIA                          2                1        2     408
6 months    IRC              INDIA                          3                0       27     408
6 months    IRC              INDIA                          3                1        0     408
6 months    IRC              INDIA                          4                0       21     408
6 months    IRC              INDIA                          4                1        0     408
6 months    IRC              INDIA                          5                0       21     408
6 months    IRC              INDIA                          5                1        1     408
6 months    IRC              INDIA                          6                0       36     408
6 months    IRC              INDIA                          6                1        1     408
6 months    IRC              INDIA                          7                0       33     408
6 months    IRC              INDIA                          7                1        3     408
6 months    IRC              INDIA                          8                0       40     408
6 months    IRC              INDIA                          8                1        4     408
6 months    IRC              INDIA                          9                0       23     408
6 months    IRC              INDIA                          9                1        2     408
6 months    IRC              INDIA                          10               0       37     408
6 months    IRC              INDIA                          10               1        1     408
6 months    IRC              INDIA                          11               0       38     408
6 months    IRC              INDIA                          11               1        2     408
6 months    IRC              INDIA                          12               0       48     408
6 months    IRC              INDIA                          12               1        4     408
6 months    JiVitA-3         BANGLADESH                     1                0     1326   16784
6 months    JiVitA-3         BANGLADESH                     1                1       16   16784
6 months    JiVitA-3         BANGLADESH                     2                0     1140   16784
6 months    JiVitA-3         BANGLADESH                     2                1       14   16784
6 months    JiVitA-3         BANGLADESH                     3                0     1389   16784
6 months    JiVitA-3         BANGLADESH                     3                1       20   16784
6 months    JiVitA-3         BANGLADESH                     4                0     1161   16784
6 months    JiVitA-3         BANGLADESH                     4                1       17   16784
6 months    JiVitA-3         BANGLADESH                     5                0     1092   16784
6 months    JiVitA-3         BANGLADESH                     5                1       18   16784
6 months    JiVitA-3         BANGLADESH                     6                0     1185   16784
6 months    JiVitA-3         BANGLADESH                     6                1       13   16784
6 months    JiVitA-3         BANGLADESH                     7                0     1239   16784
6 months    JiVitA-3         BANGLADESH                     7                1       16   16784
6 months    JiVitA-3         BANGLADESH                     8                0     1494   16784
6 months    JiVitA-3         BANGLADESH                     8                1       21   16784
6 months    JiVitA-3         BANGLADESH                     9                0     1604   16784
6 months    JiVitA-3         BANGLADESH                     9                1       17   16784
6 months    JiVitA-3         BANGLADESH                     10               0     1638   16784
6 months    JiVitA-3         BANGLADESH                     10               1       27   16784
6 months    JiVitA-3         BANGLADESH                     11               0     1736   16784
6 months    JiVitA-3         BANGLADESH                     11               1       23   16784
6 months    JiVitA-3         BANGLADESH                     12               0     1550   16784
6 months    JiVitA-3         BANGLADESH                     12               1       28   16784
6 months    JiVitA-4         BANGLADESH                     1                0        0    4833
6 months    JiVitA-4         BANGLADESH                     1                1        0    4833
6 months    JiVitA-4         BANGLADESH                     2                0      540    4833
6 months    JiVitA-4         BANGLADESH                     2                1        2    4833
6 months    JiVitA-4         BANGLADESH                     3                0      953    4833
6 months    JiVitA-4         BANGLADESH                     3                1        9    4833
6 months    JiVitA-4         BANGLADESH                     4                0      727    4833
6 months    JiVitA-4         BANGLADESH                     4                1        9    4833
6 months    JiVitA-4         BANGLADESH                     5                0      596    4833
6 months    JiVitA-4         BANGLADESH                     5                1        5    4833
6 months    JiVitA-4         BANGLADESH                     6                0      436    4833
6 months    JiVitA-4         BANGLADESH                     6                1        3    4833
6 months    JiVitA-4         BANGLADESH                     7                0      514    4833
6 months    JiVitA-4         BANGLADESH                     7                1        4    4833
6 months    JiVitA-4         BANGLADESH                     8                0      521    4833
6 months    JiVitA-4         BANGLADESH                     8                1        0    4833
6 months    JiVitA-4         BANGLADESH                     9                0      385    4833
6 months    JiVitA-4         BANGLADESH                     9                1        1    4833
6 months    JiVitA-4         BANGLADESH                     10               0      128    4833
6 months    JiVitA-4         BANGLADESH                     10               1        0    4833
6 months    JiVitA-4         BANGLADESH                     11               0        0    4833
6 months    JiVitA-4         BANGLADESH                     11               1        0    4833
6 months    JiVitA-4         BANGLADESH                     12               0        0    4833
6 months    JiVitA-4         BANGLADESH                     12               1        0    4833
6 months    Keneba           GAMBIA                         1                0      209    2089
6 months    Keneba           GAMBIA                         1                1        1    2089
6 months    Keneba           GAMBIA                         2                0      186    2089
6 months    Keneba           GAMBIA                         2                1        1    2089
6 months    Keneba           GAMBIA                         3                0      214    2089
6 months    Keneba           GAMBIA                         3                1        6    2089
6 months    Keneba           GAMBIA                         4                0      137    2089
6 months    Keneba           GAMBIA                         4                1        6    2089
6 months    Keneba           GAMBIA                         5                0      140    2089
6 months    Keneba           GAMBIA                         5                1        4    2089
6 months    Keneba           GAMBIA                         6                0      117    2089
6 months    Keneba           GAMBIA                         6                1        1    2089
6 months    Keneba           GAMBIA                         7                0       90    2089
6 months    Keneba           GAMBIA                         7                1        2    2089
6 months    Keneba           GAMBIA                         8                0      171    2089
6 months    Keneba           GAMBIA                         8                1        3    2089
6 months    Keneba           GAMBIA                         9                0      172    2089
6 months    Keneba           GAMBIA                         9                1        2    2089
6 months    Keneba           GAMBIA                         10               0      245    2089
6 months    Keneba           GAMBIA                         10               1        3    2089
6 months    Keneba           GAMBIA                         11               0      186    2089
6 months    Keneba           GAMBIA                         11               1        1    2089
6 months    Keneba           GAMBIA                         12               0      188    2089
6 months    Keneba           GAMBIA                         12               1        4    2089
6 months    LCNI-5           MALAWI                         1                0       68     839
6 months    LCNI-5           MALAWI                         1                1        0     839
6 months    LCNI-5           MALAWI                         2                0       46     839
6 months    LCNI-5           MALAWI                         2                1        0     839
6 months    LCNI-5           MALAWI                         3                0       26     839
6 months    LCNI-5           MALAWI                         3                1        0     839
6 months    LCNI-5           MALAWI                         4                0       39     839
6 months    LCNI-5           MALAWI                         4                1        0     839
6 months    LCNI-5           MALAWI                         5                0       44     839
6 months    LCNI-5           MALAWI                         5                1        0     839
6 months    LCNI-5           MALAWI                         6                0       34     839
6 months    LCNI-5           MALAWI                         6                1        0     839
6 months    LCNI-5           MALAWI                         7                0       61     839
6 months    LCNI-5           MALAWI                         7                1        0     839
6 months    LCNI-5           MALAWI                         8                0       93     839
6 months    LCNI-5           MALAWI                         8                1        0     839
6 months    LCNI-5           MALAWI                         9                0       93     839
6 months    LCNI-5           MALAWI                         9                1        0     839
6 months    LCNI-5           MALAWI                         10               0      135     839
6 months    LCNI-5           MALAWI                         10               1        0     839
6 months    LCNI-5           MALAWI                         11               0      105     839
6 months    LCNI-5           MALAWI                         11               1        0     839
6 months    LCNI-5           MALAWI                         12               0       95     839
6 months    LCNI-5           MALAWI                         12               1        0     839
6 months    MAL-ED           BANGLADESH                     1                0       18     241
6 months    MAL-ED           BANGLADESH                     1                1        0     241
6 months    MAL-ED           BANGLADESH                     2                0       20     241
6 months    MAL-ED           BANGLADESH                     2                1        0     241
6 months    MAL-ED           BANGLADESH                     3                0       23     241
6 months    MAL-ED           BANGLADESH                     3                1        0     241
6 months    MAL-ED           BANGLADESH                     4                0       21     241
6 months    MAL-ED           BANGLADESH                     4                1        1     241
6 months    MAL-ED           BANGLADESH                     5                0       21     241
6 months    MAL-ED           BANGLADESH                     5                1        0     241
6 months    MAL-ED           BANGLADESH                     6                0       10     241
6 months    MAL-ED           BANGLADESH                     6                1        0     241
6 months    MAL-ED           BANGLADESH                     7                0       17     241
6 months    MAL-ED           BANGLADESH                     7                1        1     241
6 months    MAL-ED           BANGLADESH                     8                0       23     241
6 months    MAL-ED           BANGLADESH                     8                1        0     241
6 months    MAL-ED           BANGLADESH                     9                0       22     241
6 months    MAL-ED           BANGLADESH                     9                1        0     241
6 months    MAL-ED           BANGLADESH                     10               0       22     241
6 months    MAL-ED           BANGLADESH                     10               1        0     241
6 months    MAL-ED           BANGLADESH                     11               0       16     241
6 months    MAL-ED           BANGLADESH                     11               1        0     241
6 months    MAL-ED           BANGLADESH                     12               0       26     241
6 months    MAL-ED           BANGLADESH                     12               1        0     241
6 months    MAL-ED           BRAZIL                         1                0       15     209
6 months    MAL-ED           BRAZIL                         1                1        0     209
6 months    MAL-ED           BRAZIL                         2                0       23     209
6 months    MAL-ED           BRAZIL                         2                1        0     209
6 months    MAL-ED           BRAZIL                         3                0       16     209
6 months    MAL-ED           BRAZIL                         3                1        0     209
6 months    MAL-ED           BRAZIL                         4                0       11     209
6 months    MAL-ED           BRAZIL                         4                1        0     209
6 months    MAL-ED           BRAZIL                         5                0       21     209
6 months    MAL-ED           BRAZIL                         5                1        0     209
6 months    MAL-ED           BRAZIL                         6                0        8     209
6 months    MAL-ED           BRAZIL                         6                1        0     209
6 months    MAL-ED           BRAZIL                         7                0       16     209
6 months    MAL-ED           BRAZIL                         7                1        0     209
6 months    MAL-ED           BRAZIL                         8                0       16     209
6 months    MAL-ED           BRAZIL                         8                1        0     209
6 months    MAL-ED           BRAZIL                         9                0       30     209
6 months    MAL-ED           BRAZIL                         9                1        0     209
6 months    MAL-ED           BRAZIL                         10               0       20     209
6 months    MAL-ED           BRAZIL                         10               1        0     209
6 months    MAL-ED           BRAZIL                         11               0       21     209
6 months    MAL-ED           BRAZIL                         11               1        0     209
6 months    MAL-ED           BRAZIL                         12               0       12     209
6 months    MAL-ED           BRAZIL                         12               1        0     209
6 months    MAL-ED           INDIA                          1                0       19     236
6 months    MAL-ED           INDIA                          1                1        0     236
6 months    MAL-ED           INDIA                          2                0       17     236
6 months    MAL-ED           INDIA                          2                1        1     236
6 months    MAL-ED           INDIA                          3                0       21     236
6 months    MAL-ED           INDIA                          3                1        1     236
6 months    MAL-ED           INDIA                          4                0       15     236
6 months    MAL-ED           INDIA                          4                1        0     236
6 months    MAL-ED           INDIA                          5                0        8     236
6 months    MAL-ED           INDIA                          5                1        0     236
6 months    MAL-ED           INDIA                          6                0       18     236
6 months    MAL-ED           INDIA                          6                1        1     236
6 months    MAL-ED           INDIA                          7                0       22     236
6 months    MAL-ED           INDIA                          7                1        1     236
6 months    MAL-ED           INDIA                          8                0       22     236
6 months    MAL-ED           INDIA                          8                1        0     236
6 months    MAL-ED           INDIA                          9                0       20     236
6 months    MAL-ED           INDIA                          9                1        0     236
6 months    MAL-ED           INDIA                          10               0       25     236
6 months    MAL-ED           INDIA                          10               1        1     236
6 months    MAL-ED           INDIA                          11               0       25     236
6 months    MAL-ED           INDIA                          11               1        0     236
6 months    MAL-ED           INDIA                          12               0       18     236
6 months    MAL-ED           INDIA                          12               1        1     236
6 months    MAL-ED           NEPAL                          1                0       20     236
6 months    MAL-ED           NEPAL                          1                1        0     236
6 months    MAL-ED           NEPAL                          2                0       19     236
6 months    MAL-ED           NEPAL                          2                1        0     236
6 months    MAL-ED           NEPAL                          3                0       17     236
6 months    MAL-ED           NEPAL                          3                1        0     236
6 months    MAL-ED           NEPAL                          4                0       22     236
6 months    MAL-ED           NEPAL                          4                1        0     236
6 months    MAL-ED           NEPAL                          5                0       20     236
6 months    MAL-ED           NEPAL                          5                1        0     236
6 months    MAL-ED           NEPAL                          6                0       18     236
6 months    MAL-ED           NEPAL                          6                1        0     236
6 months    MAL-ED           NEPAL                          7                0       18     236
6 months    MAL-ED           NEPAL                          7                1        0     236
6 months    MAL-ED           NEPAL                          8                0       24     236
6 months    MAL-ED           NEPAL                          8                1        0     236
6 months    MAL-ED           NEPAL                          9                0       16     236
6 months    MAL-ED           NEPAL                          9                1        0     236
6 months    MAL-ED           NEPAL                          10               0       21     236
6 months    MAL-ED           NEPAL                          10               1        0     236
6 months    MAL-ED           NEPAL                          11               0       24     236
6 months    MAL-ED           NEPAL                          11               1        0     236
6 months    MAL-ED           NEPAL                          12               0       17     236
6 months    MAL-ED           NEPAL                          12               1        0     236
6 months    MAL-ED           PERU                           1                0       38     273
6 months    MAL-ED           PERU                           1                1        0     273
6 months    MAL-ED           PERU                           2                0       19     273
6 months    MAL-ED           PERU                           2                1        0     273
6 months    MAL-ED           PERU                           3                0       22     273
6 months    MAL-ED           PERU                           3                1        0     273
6 months    MAL-ED           PERU                           4                0       20     273
6 months    MAL-ED           PERU                           4                1        0     273
6 months    MAL-ED           PERU                           5                0       27     273
6 months    MAL-ED           PERU                           5                1        0     273
6 months    MAL-ED           PERU                           6                0       15     273
6 months    MAL-ED           PERU                           6                1        0     273
6 months    MAL-ED           PERU                           7                0       22     273
6 months    MAL-ED           PERU                           7                1        0     273
6 months    MAL-ED           PERU                           8                0       16     273
6 months    MAL-ED           PERU                           8                1        0     273
6 months    MAL-ED           PERU                           9                0       23     273
6 months    MAL-ED           PERU                           9                1        0     273
6 months    MAL-ED           PERU                           10               0       20     273
6 months    MAL-ED           PERU                           10               1        0     273
6 months    MAL-ED           PERU                           11               0       32     273
6 months    MAL-ED           PERU                           11               1        0     273
6 months    MAL-ED           PERU                           12               0       19     273
6 months    MAL-ED           PERU                           12               1        0     273
6 months    MAL-ED           SOUTH AFRICA                   1                0       38     254
6 months    MAL-ED           SOUTH AFRICA                   1                1        0     254
6 months    MAL-ED           SOUTH AFRICA                   2                0       23     254
6 months    MAL-ED           SOUTH AFRICA                   2                1        0     254
6 months    MAL-ED           SOUTH AFRICA                   3                0       15     254
6 months    MAL-ED           SOUTH AFRICA                   3                1        0     254
6 months    MAL-ED           SOUTH AFRICA                   4                0       13     254
6 months    MAL-ED           SOUTH AFRICA                   4                1        0     254
6 months    MAL-ED           SOUTH AFRICA                   5                0       13     254
6 months    MAL-ED           SOUTH AFRICA                   5                1        0     254
6 months    MAL-ED           SOUTH AFRICA                   6                0       18     254
6 months    MAL-ED           SOUTH AFRICA                   6                1        0     254
6 months    MAL-ED           SOUTH AFRICA                   7                0       22     254
6 months    MAL-ED           SOUTH AFRICA                   7                1        0     254
6 months    MAL-ED           SOUTH AFRICA                   8                0        9     254
6 months    MAL-ED           SOUTH AFRICA                   8                1        0     254
6 months    MAL-ED           SOUTH AFRICA                   9                0       18     254
6 months    MAL-ED           SOUTH AFRICA                   9                1        0     254
6 months    MAL-ED           SOUTH AFRICA                   10               0       24     254
6 months    MAL-ED           SOUTH AFRICA                   10               1        2     254
6 months    MAL-ED           SOUTH AFRICA                   11               0       23     254
6 months    MAL-ED           SOUTH AFRICA                   11               1        1     254
6 months    MAL-ED           SOUTH AFRICA                   12               0       35     254
6 months    MAL-ED           SOUTH AFRICA                   12               1        0     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0       20     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                0       30     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                0       18     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                0        9     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                0       16     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                0       19     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                0       23     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                0       12     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                0       21     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               0       22     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               0       27     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0       30     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               1        0     247
6 months    NIH-Birth        BANGLADESH                     1                0       51     537
6 months    NIH-Birth        BANGLADESH                     1                1        1     537
6 months    NIH-Birth        BANGLADESH                     2                0       47     537
6 months    NIH-Birth        BANGLADESH                     2                1        2     537
6 months    NIH-Birth        BANGLADESH                     3                0       50     537
6 months    NIH-Birth        BANGLADESH                     3                1        0     537
6 months    NIH-Birth        BANGLADESH                     4                0       42     537
6 months    NIH-Birth        BANGLADESH                     4                1        0     537
6 months    NIH-Birth        BANGLADESH                     5                0       41     537
6 months    NIH-Birth        BANGLADESH                     5                1        1     537
6 months    NIH-Birth        BANGLADESH                     6                0       43     537
6 months    NIH-Birth        BANGLADESH                     6                1        0     537
6 months    NIH-Birth        BANGLADESH                     7                0       39     537
6 months    NIH-Birth        BANGLADESH                     7                1        0     537
6 months    NIH-Birth        BANGLADESH                     8                0       35     537
6 months    NIH-Birth        BANGLADESH                     8                1        0     537
6 months    NIH-Birth        BANGLADESH                     9                0       42     537
6 months    NIH-Birth        BANGLADESH                     9                1        0     537
6 months    NIH-Birth        BANGLADESH                     10               0       42     537
6 months    NIH-Birth        BANGLADESH                     10               1        0     537
6 months    NIH-Birth        BANGLADESH                     11               0       50     537
6 months    NIH-Birth        BANGLADESH                     11               1        0     537
6 months    NIH-Birth        BANGLADESH                     12               0       49     537
6 months    NIH-Birth        BANGLADESH                     12               1        2     537
6 months    PROBIT           BELARUS                        1                0      975   15757
6 months    PROBIT           BELARUS                        1                1        0   15757
6 months    PROBIT           BELARUS                        2                0      932   15757
6 months    PROBIT           BELARUS                        2                1        0   15757
6 months    PROBIT           BELARUS                        3                0     1066   15757
6 months    PROBIT           BELARUS                        3                1        0   15757
6 months    PROBIT           BELARUS                        4                0     1098   15757
6 months    PROBIT           BELARUS                        4                1        0   15757
6 months    PROBIT           BELARUS                        5                0     1111   15757
6 months    PROBIT           BELARUS                        5                1        0   15757
6 months    PROBIT           BELARUS                        6                0     1114   15757
6 months    PROBIT           BELARUS                        6                1        1   15757
6 months    PROBIT           BELARUS                        7                0     1462   15757
6 months    PROBIT           BELARUS                        7                1        2   15757
6 months    PROBIT           BELARUS                        8                0     1471   15757
6 months    PROBIT           BELARUS                        8                1        2   15757
6 months    PROBIT           BELARUS                        9                0     1509   15757
6 months    PROBIT           BELARUS                        9                1        0   15757
6 months    PROBIT           BELARUS                        10               0     1688   15757
6 months    PROBIT           BELARUS                        10               1        1   15757
6 months    PROBIT           BELARUS                        11               0     1586   15757
6 months    PROBIT           BELARUS                        11               1        2   15757
6 months    PROBIT           BELARUS                        12               0     1736   15757
6 months    PROBIT           BELARUS                        12               1        1   15757
6 months    PROVIDE          BANGLADESH                     1                0       34     603
6 months    PROVIDE          BANGLADESH                     1                1        1     603
6 months    PROVIDE          BANGLADESH                     2                0       32     603
6 months    PROVIDE          BANGLADESH                     2                1        0     603
6 months    PROVIDE          BANGLADESH                     3                0       43     603
6 months    PROVIDE          BANGLADESH                     3                1        0     603
6 months    PROVIDE          BANGLADESH                     4                0       36     603
6 months    PROVIDE          BANGLADESH                     4                1        0     603
6 months    PROVIDE          BANGLADESH                     5                0       39     603
6 months    PROVIDE          BANGLADESH                     5                1        1     603
6 months    PROVIDE          BANGLADESH                     6                0       75     603
6 months    PROVIDE          BANGLADESH                     6                1        2     603
6 months    PROVIDE          BANGLADESH                     7                0       76     603
6 months    PROVIDE          BANGLADESH                     7                1        0     603
6 months    PROVIDE          BANGLADESH                     8                0       60     603
6 months    PROVIDE          BANGLADESH                     8                1        1     603
6 months    PROVIDE          BANGLADESH                     9                0       66     603
6 months    PROVIDE          BANGLADESH                     9                1        0     603
6 months    PROVIDE          BANGLADESH                     10               0       67     603
6 months    PROVIDE          BANGLADESH                     10               1        0     603
6 months    PROVIDE          BANGLADESH                     11               0       41     603
6 months    PROVIDE          BANGLADESH                     11               1        0     603
6 months    PROVIDE          BANGLADESH                     12               0       29     603
6 months    PROVIDE          BANGLADESH                     12               1        0     603
6 months    ResPak           PAKISTAN                       1                0       11     239
6 months    ResPak           PAKISTAN                       1                1        0     239
6 months    ResPak           PAKISTAN                       2                0       10     239
6 months    ResPak           PAKISTAN                       2                1        0     239
6 months    ResPak           PAKISTAN                       3                0       23     239
6 months    ResPak           PAKISTAN                       3                1        2     239
6 months    ResPak           PAKISTAN                       4                0       21     239
6 months    ResPak           PAKISTAN                       4                1        3     239
6 months    ResPak           PAKISTAN                       5                0       44     239
6 months    ResPak           PAKISTAN                       5                1        1     239
6 months    ResPak           PAKISTAN                       6                0       39     239
6 months    ResPak           PAKISTAN                       6                1        2     239
6 months    ResPak           PAKISTAN                       7                0       24     239
6 months    ResPak           PAKISTAN                       7                1        0     239
6 months    ResPak           PAKISTAN                       8                0       33     239
6 months    ResPak           PAKISTAN                       8                1        1     239
6 months    ResPak           PAKISTAN                       9                0       16     239
6 months    ResPak           PAKISTAN                       9                1        0     239
6 months    ResPak           PAKISTAN                       10               0        4     239
6 months    ResPak           PAKISTAN                       10               1        0     239
6 months    ResPak           PAKISTAN                       11               0        2     239
6 months    ResPak           PAKISTAN                       11               1        0     239
6 months    ResPak           PAKISTAN                       12               0        3     239
6 months    ResPak           PAKISTAN                       12               1        0     239
6 months    SAS-CompFeed     INDIA                          1                0       80    1334
6 months    SAS-CompFeed     INDIA                          1                1        7    1334
6 months    SAS-CompFeed     INDIA                          2                0       80    1334
6 months    SAS-CompFeed     INDIA                          2                1        3    1334
6 months    SAS-CompFeed     INDIA                          3                0       71    1334
6 months    SAS-CompFeed     INDIA                          3                1        3    1334
6 months    SAS-CompFeed     INDIA                          4                0       63    1334
6 months    SAS-CompFeed     INDIA                          4                1        1    1334
6 months    SAS-CompFeed     INDIA                          5                0       87    1334
6 months    SAS-CompFeed     INDIA                          5                1        0    1334
6 months    SAS-CompFeed     INDIA                          6                0       94    1334
6 months    SAS-CompFeed     INDIA                          6                1        2    1334
6 months    SAS-CompFeed     INDIA                          7                0      121    1334
6 months    SAS-CompFeed     INDIA                          7                1        1    1334
6 months    SAS-CompFeed     INDIA                          8                0      159    1334
6 months    SAS-CompFeed     INDIA                          8                1        3    1334
6 months    SAS-CompFeed     INDIA                          9                0      170    1334
6 months    SAS-CompFeed     INDIA                          9                1        3    1334
6 months    SAS-CompFeed     INDIA                          10               0      144    1334
6 months    SAS-CompFeed     INDIA                          10               1        5    1334
6 months    SAS-CompFeed     INDIA                          11               0      109    1334
6 months    SAS-CompFeed     INDIA                          11               1       10    1334
6 months    SAS-CompFeed     INDIA                          12               0      113    1334
6 months    SAS-CompFeed     INDIA                          12               1        5    1334
6 months    SAS-FoodSuppl    INDIA                          1                0       23     380
6 months    SAS-FoodSuppl    INDIA                          1                1        1     380
6 months    SAS-FoodSuppl    INDIA                          2                0       30     380
6 months    SAS-FoodSuppl    INDIA                          2                1        3     380
6 months    SAS-FoodSuppl    INDIA                          3                0       19     380
6 months    SAS-FoodSuppl    INDIA                          3                1        0     380
6 months    SAS-FoodSuppl    INDIA                          4                0        4     380
6 months    SAS-FoodSuppl    INDIA                          4                1        0     380
6 months    SAS-FoodSuppl    INDIA                          5                0       12     380
6 months    SAS-FoodSuppl    INDIA                          5                1        0     380
6 months    SAS-FoodSuppl    INDIA                          6                0       19     380
6 months    SAS-FoodSuppl    INDIA                          6                1        2     380
6 months    SAS-FoodSuppl    INDIA                          7                0       32     380
6 months    SAS-FoodSuppl    INDIA                          7                1        1     380
6 months    SAS-FoodSuppl    INDIA                          8                0       61     380
6 months    SAS-FoodSuppl    INDIA                          8                1        2     380
6 months    SAS-FoodSuppl    INDIA                          9                0       58     380
6 months    SAS-FoodSuppl    INDIA                          9                1        4     380
6 months    SAS-FoodSuppl    INDIA                          10               0       47     380
6 months    SAS-FoodSuppl    INDIA                          10               1        0     380
6 months    SAS-FoodSuppl    INDIA                          11               0       25     380
6 months    SAS-FoodSuppl    INDIA                          11               1        3     380
6 months    SAS-FoodSuppl    INDIA                          12               0       31     380
6 months    SAS-FoodSuppl    INDIA                          12               1        3     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      141    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        1    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      149    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        0    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      140    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        0    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      152    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        1    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      149    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        0    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      142    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        1    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      194    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        1    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      196    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        3    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      182    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        1    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      206    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        2    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      194    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        1    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      171    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1        1    2028
6 months    ZVITAMBO         ZIMBABWE                       1                0      799    8505
6 months    ZVITAMBO         ZIMBABWE                       1                1       11    8505
6 months    ZVITAMBO         ZIMBABWE                       2                0      601    8505
6 months    ZVITAMBO         ZIMBABWE                       2                1        8    8505
6 months    ZVITAMBO         ZIMBABWE                       3                0      742    8505
6 months    ZVITAMBO         ZIMBABWE                       3                1        8    8505
6 months    ZVITAMBO         ZIMBABWE                       4                0      641    8505
6 months    ZVITAMBO         ZIMBABWE                       4                1        5    8505
6 months    ZVITAMBO         ZIMBABWE                       5                0      623    8505
6 months    ZVITAMBO         ZIMBABWE                       5                1        5    8505
6 months    ZVITAMBO         ZIMBABWE                       6                0      650    8505
6 months    ZVITAMBO         ZIMBABWE                       6                1       12    8505
6 months    ZVITAMBO         ZIMBABWE                       7                0      658    8505
6 months    ZVITAMBO         ZIMBABWE                       7                1        4    8505
6 months    ZVITAMBO         ZIMBABWE                       8                0      769    8505
6 months    ZVITAMBO         ZIMBABWE                       8                1        6    8505
6 months    ZVITAMBO         ZIMBABWE                       9                0      758    8505
6 months    ZVITAMBO         ZIMBABWE                       9                1        9    8505
6 months    ZVITAMBO         ZIMBABWE                       10               0      614    8505
6 months    ZVITAMBO         ZIMBABWE                       10               1        2    8505
6 months    ZVITAMBO         ZIMBABWE                       11               0      774    8505
6 months    ZVITAMBO         ZIMBABWE                       11               1        5    8505
6 months    ZVITAMBO         ZIMBABWE                       12               0      797    8505
6 months    ZVITAMBO         ZIMBABWE                       12               1        4    8505
24 months   CMC-V-BCS-2002   INDIA                          1                0       34     372
24 months   CMC-V-BCS-2002   INDIA                          1                1        0     372
24 months   CMC-V-BCS-2002   INDIA                          2                0       16     372
24 months   CMC-V-BCS-2002   INDIA                          2                1        0     372
24 months   CMC-V-BCS-2002   INDIA                          3                0       31     372
24 months   CMC-V-BCS-2002   INDIA                          3                1        0     372
24 months   CMC-V-BCS-2002   INDIA                          4                0       44     372
24 months   CMC-V-BCS-2002   INDIA                          4                1        0     372
24 months   CMC-V-BCS-2002   INDIA                          5                0       34     372
24 months   CMC-V-BCS-2002   INDIA                          5                1        2     372
24 months   CMC-V-BCS-2002   INDIA                          6                0       37     372
24 months   CMC-V-BCS-2002   INDIA                          6                1        0     372
24 months   CMC-V-BCS-2002   INDIA                          7                0       38     372
24 months   CMC-V-BCS-2002   INDIA                          7                1        1     372
24 months   CMC-V-BCS-2002   INDIA                          8                0       17     372
24 months   CMC-V-BCS-2002   INDIA                          8                1        0     372
24 months   CMC-V-BCS-2002   INDIA                          9                0       21     372
24 months   CMC-V-BCS-2002   INDIA                          9                1        0     372
24 months   CMC-V-BCS-2002   INDIA                          10               0       29     372
24 months   CMC-V-BCS-2002   INDIA                          10               1        0     372
24 months   CMC-V-BCS-2002   INDIA                          11               0       43     372
24 months   CMC-V-BCS-2002   INDIA                          11               1        0     372
24 months   CMC-V-BCS-2002   INDIA                          12               0       25     372
24 months   CMC-V-BCS-2002   INDIA                          12               1        0     372
24 months   CMIN             BANGLADESH                     1                0       26     243
24 months   CMIN             BANGLADESH                     1                1        0     243
24 months   CMIN             BANGLADESH                     2                0       24     243
24 months   CMIN             BANGLADESH                     2                1        0     243
24 months   CMIN             BANGLADESH                     3                0       18     243
24 months   CMIN             BANGLADESH                     3                1        0     243
24 months   CMIN             BANGLADESH                     4                0       22     243
24 months   CMIN             BANGLADESH                     4                1        0     243
24 months   CMIN             BANGLADESH                     5                0       16     243
24 months   CMIN             BANGLADESH                     5                1        0     243
24 months   CMIN             BANGLADESH                     6                0        8     243
24 months   CMIN             BANGLADESH                     6                1        0     243
24 months   CMIN             BANGLADESH                     7                0       15     243
24 months   CMIN             BANGLADESH                     7                1        0     243
24 months   CMIN             BANGLADESH                     8                0       18     243
24 months   CMIN             BANGLADESH                     8                1        0     243
24 months   CMIN             BANGLADESH                     9                0       19     243
24 months   CMIN             BANGLADESH                     9                1        1     243
24 months   CMIN             BANGLADESH                     10               0       24     243
24 months   CMIN             BANGLADESH                     10               1        0     243
24 months   CMIN             BANGLADESH                     11               0       25     243
24 months   CMIN             BANGLADESH                     11               1        0     243
24 months   CMIN             BANGLADESH                     12               0       26     243
24 months   CMIN             BANGLADESH                     12               1        1     243
24 months   CONTENT          PERU                           1                0        7     164
24 months   CONTENT          PERU                           1                1        0     164
24 months   CONTENT          PERU                           2                0       14     164
24 months   CONTENT          PERU                           2                1        0     164
24 months   CONTENT          PERU                           3                0       22     164
24 months   CONTENT          PERU                           3                1        0     164
24 months   CONTENT          PERU                           4                0       15     164
24 months   CONTENT          PERU                           4                1        0     164
24 months   CONTENT          PERU                           5                0       14     164
24 months   CONTENT          PERU                           5                1        0     164
24 months   CONTENT          PERU                           6                0       11     164
24 months   CONTENT          PERU                           6                1        0     164
24 months   CONTENT          PERU                           7                0       23     164
24 months   CONTENT          PERU                           7                1        0     164
24 months   CONTENT          PERU                           8                0       14     164
24 months   CONTENT          PERU                           8                1        0     164
24 months   CONTENT          PERU                           9                0       17     164
24 months   CONTENT          PERU                           9                1        0     164
24 months   CONTENT          PERU                           10               0       11     164
24 months   CONTENT          PERU                           10               1        0     164
24 months   CONTENT          PERU                           11               0        6     164
24 months   CONTENT          PERU                           11               1        0     164
24 months   CONTENT          PERU                           12               0       10     164
24 months   CONTENT          PERU                           12               1        0     164
24 months   EE               PAKISTAN                       1                0       13     168
24 months   EE               PAKISTAN                       1                1        1     168
24 months   EE               PAKISTAN                       2                0        4     168
24 months   EE               PAKISTAN                       2                1        0     168
24 months   EE               PAKISTAN                       3                0        0     168
24 months   EE               PAKISTAN                       3                1        0     168
24 months   EE               PAKISTAN                       4                0        0     168
24 months   EE               PAKISTAN                       4                1        0     168
24 months   EE               PAKISTAN                       5                0        0     168
24 months   EE               PAKISTAN                       5                1        0     168
24 months   EE               PAKISTAN                       6                0        0     168
24 months   EE               PAKISTAN                       6                1        0     168
24 months   EE               PAKISTAN                       7                0        0     168
24 months   EE               PAKISTAN                       7                1        0     168
24 months   EE               PAKISTAN                       8                0        0     168
24 months   EE               PAKISTAN                       8                1        0     168
24 months   EE               PAKISTAN                       9                0        0     168
24 months   EE               PAKISTAN                       9                1        0     168
24 months   EE               PAKISTAN                       10               0        4     168
24 months   EE               PAKISTAN                       10               1        0     168
24 months   EE               PAKISTAN                       11               0       64     168
24 months   EE               PAKISTAN                       11               1        2     168
24 months   EE               PAKISTAN                       12               0       79     168
24 months   EE               PAKISTAN                       12               1        1     168
24 months   GMS-Nepal        NEPAL                          1                0        0     487
24 months   GMS-Nepal        NEPAL                          1                1        0     487
24 months   GMS-Nepal        NEPAL                          2                0        0     487
24 months   GMS-Nepal        NEPAL                          2                1        0     487
24 months   GMS-Nepal        NEPAL                          3                0        0     487
24 months   GMS-Nepal        NEPAL                          3                1        0     487
24 months   GMS-Nepal        NEPAL                          4                0        0     487
24 months   GMS-Nepal        NEPAL                          4                1        0     487
24 months   GMS-Nepal        NEPAL                          5                0        0     487
24 months   GMS-Nepal        NEPAL                          5                1        0     487
24 months   GMS-Nepal        NEPAL                          6                0       73     487
24 months   GMS-Nepal        NEPAL                          6                1        6     487
24 months   GMS-Nepal        NEPAL                          7                0      201     487
24 months   GMS-Nepal        NEPAL                          7                1        5     487
24 months   GMS-Nepal        NEPAL                          8                0      198     487
24 months   GMS-Nepal        NEPAL                          8                1        4     487
24 months   GMS-Nepal        NEPAL                          9                0        0     487
24 months   GMS-Nepal        NEPAL                          9                1        0     487
24 months   GMS-Nepal        NEPAL                          10               0        0     487
24 months   GMS-Nepal        NEPAL                          10               1        0     487
24 months   GMS-Nepal        NEPAL                          11               0        0     487
24 months   GMS-Nepal        NEPAL                          11               1        0     487
24 months   GMS-Nepal        NEPAL                          12               0        0     487
24 months   GMS-Nepal        NEPAL                          12               1        0     487
24 months   IRC              INDIA                          1                0       37     409
24 months   IRC              INDIA                          1                1        1     409
24 months   IRC              INDIA                          2                0       28     409
24 months   IRC              INDIA                          2                1        0     409
24 months   IRC              INDIA                          3                0       27     409
24 months   IRC              INDIA                          3                1        0     409
24 months   IRC              INDIA                          4                0       21     409
24 months   IRC              INDIA                          4                1        0     409
24 months   IRC              INDIA                          5                0       21     409
24 months   IRC              INDIA                          5                1        1     409
24 months   IRC              INDIA                          6                0       36     409
24 months   IRC              INDIA                          6                1        1     409
24 months   IRC              INDIA                          7                0       36     409
24 months   IRC              INDIA                          7                1        0     409
24 months   IRC              INDIA                          8                0       42     409
24 months   IRC              INDIA                          8                1        2     409
24 months   IRC              INDIA                          9                0       27     409
24 months   IRC              INDIA                          9                1        0     409
24 months   IRC              INDIA                          10               0       37     409
24 months   IRC              INDIA                          10               1        0     409
24 months   IRC              INDIA                          11               0       40     409
24 months   IRC              INDIA                          11               1        0     409
24 months   IRC              INDIA                          12               0       52     409
24 months   IRC              INDIA                          12               1        0     409
24 months   JiVitA-3         BANGLADESH                     1                0      655    8603
24 months   JiVitA-3         BANGLADESH                     1                1       10    8603
24 months   JiVitA-3         BANGLADESH                     2                0      546    8603
24 months   JiVitA-3         BANGLADESH                     2                1       15    8603
24 months   JiVitA-3         BANGLADESH                     3                0      688    8603
24 months   JiVitA-3         BANGLADESH                     3                1       26    8603
24 months   JiVitA-3         BANGLADESH                     4                0      479    8603
24 months   JiVitA-3         BANGLADESH                     4                1       25    8603
24 months   JiVitA-3         BANGLADESH                     5                0      348    8603
24 months   JiVitA-3         BANGLADESH                     5                1       16    8603
24 months   JiVitA-3         BANGLADESH                     6                0      583    8603
24 months   JiVitA-3         BANGLADESH                     6                1       26    8603
24 months   JiVitA-3         BANGLADESH                     7                0      631    8603
24 months   JiVitA-3         BANGLADESH                     7                1       41    8603
24 months   JiVitA-3         BANGLADESH                     8                0      582    8603
24 months   JiVitA-3         BANGLADESH                     8                1       36    8603
24 months   JiVitA-3         BANGLADESH                     9                0      758    8603
24 months   JiVitA-3         BANGLADESH                     9                1       42    8603
24 months   JiVitA-3         BANGLADESH                     10               0      838    8603
24 months   JiVitA-3         BANGLADESH                     10               1       36    8603
24 months   JiVitA-3         BANGLADESH                     11               0     1004    8603
24 months   JiVitA-3         BANGLADESH                     11               1       35    8603
24 months   JiVitA-3         BANGLADESH                     12               0     1156    8603
24 months   JiVitA-3         BANGLADESH                     12               1       27    8603
24 months   JiVitA-4         BANGLADESH                     1                0        0    4735
24 months   JiVitA-4         BANGLADESH                     1                1        0    4735
24 months   JiVitA-4         BANGLADESH                     2                0      764    4735
24 months   JiVitA-4         BANGLADESH                     2                1       17    4735
24 months   JiVitA-4         BANGLADESH                     3                0      832    4735
24 months   JiVitA-4         BANGLADESH                     3                1       19    4735
24 months   JiVitA-4         BANGLADESH                     4                0      625    4735
24 months   JiVitA-4         BANGLADESH                     4                1       24    4735
24 months   JiVitA-4         BANGLADESH                     5                0      541    4735
24 months   JiVitA-4         BANGLADESH                     5                1       22    4735
24 months   JiVitA-4         BANGLADESH                     6                0      402    4735
24 months   JiVitA-4         BANGLADESH                     6                1       16    4735
24 months   JiVitA-4         BANGLADESH                     7                0      475    4735
24 months   JiVitA-4         BANGLADESH                     7                1        9    4735
24 months   JiVitA-4         BANGLADESH                     8                0      497    4735
24 months   JiVitA-4         BANGLADESH                     8                1        6    4735
24 months   JiVitA-4         BANGLADESH                     9                0      351    4735
24 months   JiVitA-4         BANGLADESH                     9                1       13    4735
24 months   JiVitA-4         BANGLADESH                     10               0      119    4735
24 months   JiVitA-4         BANGLADESH                     10               1        3    4735
24 months   JiVitA-4         BANGLADESH                     11               0        0    4735
24 months   JiVitA-4         BANGLADESH                     11               1        0    4735
24 months   JiVitA-4         BANGLADESH                     12               0        0    4735
24 months   JiVitA-4         BANGLADESH                     12               1        0    4735
24 months   Keneba           GAMBIA                         1                0      170    1726
24 months   Keneba           GAMBIA                         1                1        1    1726
24 months   Keneba           GAMBIA                         2                0      167    1726
24 months   Keneba           GAMBIA                         2                1        0    1726
24 months   Keneba           GAMBIA                         3                0      168    1726
24 months   Keneba           GAMBIA                         3                1        2    1726
24 months   Keneba           GAMBIA                         4                0      109    1726
24 months   Keneba           GAMBIA                         4                1        5    1726
24 months   Keneba           GAMBIA                         5                0      122    1726
24 months   Keneba           GAMBIA                         5                1        0    1726
24 months   Keneba           GAMBIA                         6                0       91    1726
24 months   Keneba           GAMBIA                         6                1        1    1726
24 months   Keneba           GAMBIA                         7                0       80    1726
24 months   Keneba           GAMBIA                         7                1        3    1726
24 months   Keneba           GAMBIA                         8                0      155    1726
24 months   Keneba           GAMBIA                         8                1        3    1726
24 months   Keneba           GAMBIA                         9                0      156    1726
24 months   Keneba           GAMBIA                         9                1        4    1726
24 months   Keneba           GAMBIA                         10               0      198    1726
24 months   Keneba           GAMBIA                         10               1        2    1726
24 months   Keneba           GAMBIA                         11               0      133    1726
24 months   Keneba           GAMBIA                         11               1        7    1726
24 months   Keneba           GAMBIA                         12               0      147    1726
24 months   Keneba           GAMBIA                         12               1        2    1726
24 months   LCNI-5           MALAWI                         1                0       39     563
24 months   LCNI-5           MALAWI                         1                1        0     563
24 months   LCNI-5           MALAWI                         2                0       30     563
24 months   LCNI-5           MALAWI                         2                1        0     563
24 months   LCNI-5           MALAWI                         3                0       19     563
24 months   LCNI-5           MALAWI                         3                1        0     563
24 months   LCNI-5           MALAWI                         4                0       28     563
24 months   LCNI-5           MALAWI                         4                1        0     563
24 months   LCNI-5           MALAWI                         5                0       30     563
24 months   LCNI-5           MALAWI                         5                1        0     563
24 months   LCNI-5           MALAWI                         6                0       24     563
24 months   LCNI-5           MALAWI                         6                1        0     563
24 months   LCNI-5           MALAWI                         7                0       45     563
24 months   LCNI-5           MALAWI                         7                1        0     563
24 months   LCNI-5           MALAWI                         8                0       70     563
24 months   LCNI-5           MALAWI                         8                1        0     563
24 months   LCNI-5           MALAWI                         9                0       63     563
24 months   LCNI-5           MALAWI                         9                1        0     563
24 months   LCNI-5           MALAWI                         10               0       89     563
24 months   LCNI-5           MALAWI                         10               1        0     563
24 months   LCNI-5           MALAWI                         11               0       62     563
24 months   LCNI-5           MALAWI                         11               1        0     563
24 months   LCNI-5           MALAWI                         12               0       63     563
24 months   LCNI-5           MALAWI                         12               1        1     563
24 months   MAL-ED           BANGLADESH                     1                0       14     212
24 months   MAL-ED           BANGLADESH                     1                1        0     212
24 months   MAL-ED           BANGLADESH                     2                0       17     212
24 months   MAL-ED           BANGLADESH                     2                1        0     212
24 months   MAL-ED           BANGLADESH                     3                0       19     212
24 months   MAL-ED           BANGLADESH                     3                1        0     212
24 months   MAL-ED           BANGLADESH                     4                0       20     212
24 months   MAL-ED           BANGLADESH                     4                1        0     212
24 months   MAL-ED           BANGLADESH                     5                0       19     212
24 months   MAL-ED           BANGLADESH                     5                1        0     212
24 months   MAL-ED           BANGLADESH                     6                0        7     212
24 months   MAL-ED           BANGLADESH                     6                1        0     212
24 months   MAL-ED           BANGLADESH                     7                0       18     212
24 months   MAL-ED           BANGLADESH                     7                1        0     212
24 months   MAL-ED           BANGLADESH                     8                0       22     212
24 months   MAL-ED           BANGLADESH                     8                1        0     212
24 months   MAL-ED           BANGLADESH                     9                0       18     212
24 months   MAL-ED           BANGLADESH                     9                1        0     212
24 months   MAL-ED           BANGLADESH                     10               0       20     212
24 months   MAL-ED           BANGLADESH                     10               1        0     212
24 months   MAL-ED           BANGLADESH                     11               0       11     212
24 months   MAL-ED           BANGLADESH                     11               1        0     212
24 months   MAL-ED           BANGLADESH                     12               0       27     212
24 months   MAL-ED           BANGLADESH                     12               1        0     212
24 months   MAL-ED           BRAZIL                         1                0       15     169
24 months   MAL-ED           BRAZIL                         1                1        0     169
24 months   MAL-ED           BRAZIL                         2                0       16     169
24 months   MAL-ED           BRAZIL                         2                1        0     169
24 months   MAL-ED           BRAZIL                         3                0       14     169
24 months   MAL-ED           BRAZIL                         3                1        0     169
24 months   MAL-ED           BRAZIL                         4                0       10     169
24 months   MAL-ED           BRAZIL                         4                1        0     169
24 months   MAL-ED           BRAZIL                         5                0       15     169
24 months   MAL-ED           BRAZIL                         5                1        0     169
24 months   MAL-ED           BRAZIL                         6                0        6     169
24 months   MAL-ED           BRAZIL                         6                1        0     169
24 months   MAL-ED           BRAZIL                         7                0       10     169
24 months   MAL-ED           BRAZIL                         7                1        0     169
24 months   MAL-ED           BRAZIL                         8                0       13     169
24 months   MAL-ED           BRAZIL                         8                1        0     169
24 months   MAL-ED           BRAZIL                         9                0       27     169
24 months   MAL-ED           BRAZIL                         9                1        0     169
24 months   MAL-ED           BRAZIL                         10               0       14     169
24 months   MAL-ED           BRAZIL                         10               1        0     169
24 months   MAL-ED           BRAZIL                         11               0       17     169
24 months   MAL-ED           BRAZIL                         11               1        1     169
24 months   MAL-ED           BRAZIL                         12               0       11     169
24 months   MAL-ED           BRAZIL                         12               1        0     169
24 months   MAL-ED           INDIA                          1                0       19     227
24 months   MAL-ED           INDIA                          1                1        0     227
24 months   MAL-ED           INDIA                          2                0       18     227
24 months   MAL-ED           INDIA                          2                1        0     227
24 months   MAL-ED           INDIA                          3                0       19     227
24 months   MAL-ED           INDIA                          3                1        0     227
24 months   MAL-ED           INDIA                          4                0       14     227
24 months   MAL-ED           INDIA                          4                1        0     227
24 months   MAL-ED           INDIA                          5                0        8     227
24 months   MAL-ED           INDIA                          5                1        0     227
24 months   MAL-ED           INDIA                          6                0       16     227
24 months   MAL-ED           INDIA                          6                1        2     227
24 months   MAL-ED           INDIA                          7                0       23     227
24 months   MAL-ED           INDIA                          7                1        0     227
24 months   MAL-ED           INDIA                          8                0       21     227
24 months   MAL-ED           INDIA                          8                1        0     227
24 months   MAL-ED           INDIA                          9                0       18     227
24 months   MAL-ED           INDIA                          9                1        0     227
24 months   MAL-ED           INDIA                          10               0       26     227
24 months   MAL-ED           INDIA                          10               1        0     227
24 months   MAL-ED           INDIA                          11               0       24     227
24 months   MAL-ED           INDIA                          11               1        0     227
24 months   MAL-ED           INDIA                          12               0       19     227
24 months   MAL-ED           INDIA                          12               1        0     227
24 months   MAL-ED           NEPAL                          1                0       19     228
24 months   MAL-ED           NEPAL                          1                1        0     228
24 months   MAL-ED           NEPAL                          2                0       17     228
24 months   MAL-ED           NEPAL                          2                1        0     228
24 months   MAL-ED           NEPAL                          3                0       17     228
24 months   MAL-ED           NEPAL                          3                1        0     228
24 months   MAL-ED           NEPAL                          4                0       22     228
24 months   MAL-ED           NEPAL                          4                1        0     228
24 months   MAL-ED           NEPAL                          5                0       19     228
24 months   MAL-ED           NEPAL                          5                1        0     228
24 months   MAL-ED           NEPAL                          6                0       18     228
24 months   MAL-ED           NEPAL                          6                1        0     228
24 months   MAL-ED           NEPAL                          7                0       17     228
24 months   MAL-ED           NEPAL                          7                1        0     228
24 months   MAL-ED           NEPAL                          8                0       24     228
24 months   MAL-ED           NEPAL                          8                1        0     228
24 months   MAL-ED           NEPAL                          9                0       15     228
24 months   MAL-ED           NEPAL                          9                1        0     228
24 months   MAL-ED           NEPAL                          10               0       20     228
24 months   MAL-ED           NEPAL                          10               1        0     228
24 months   MAL-ED           NEPAL                          11               0       24     228
24 months   MAL-ED           NEPAL                          11               1        0     228
24 months   MAL-ED           NEPAL                          12               0       16     228
24 months   MAL-ED           NEPAL                          12               1        0     228
24 months   MAL-ED           PERU                           1                0       30     201
24 months   MAL-ED           PERU                           1                1        0     201
24 months   MAL-ED           PERU                           2                0       17     201
24 months   MAL-ED           PERU                           2                1        0     201
24 months   MAL-ED           PERU                           3                0       15     201
24 months   MAL-ED           PERU                           3                1        0     201
24 months   MAL-ED           PERU                           4                0       11     201
24 months   MAL-ED           PERU                           4                1        0     201
24 months   MAL-ED           PERU                           5                0       19     201
24 months   MAL-ED           PERU                           5                1        0     201
24 months   MAL-ED           PERU                           6                0       11     201
24 months   MAL-ED           PERU                           6                1        0     201
24 months   MAL-ED           PERU                           7                0       15     201
24 months   MAL-ED           PERU                           7                1        0     201
24 months   MAL-ED           PERU                           8                0       11     201
24 months   MAL-ED           PERU                           8                1        1     201
24 months   MAL-ED           PERU                           9                0       21     201
24 months   MAL-ED           PERU                           9                1        0     201
24 months   MAL-ED           PERU                           10               0       14     201
24 months   MAL-ED           PERU                           10               1        0     201
24 months   MAL-ED           PERU                           11               0       20     201
24 months   MAL-ED           PERU                           11               1        1     201
24 months   MAL-ED           PERU                           12               0       15     201
24 months   MAL-ED           PERU                           12               1        0     201
24 months   MAL-ED           SOUTH AFRICA                   1                0       34     238
24 months   MAL-ED           SOUTH AFRICA                   1                1        0     238
24 months   MAL-ED           SOUTH AFRICA                   2                0       22     238
24 months   MAL-ED           SOUTH AFRICA                   2                1        0     238
24 months   MAL-ED           SOUTH AFRICA                   3                0       14     238
24 months   MAL-ED           SOUTH AFRICA                   3                1        0     238
24 months   MAL-ED           SOUTH AFRICA                   4                0       12     238
24 months   MAL-ED           SOUTH AFRICA                   4                1        0     238
24 months   MAL-ED           SOUTH AFRICA                   5                0       12     238
24 months   MAL-ED           SOUTH AFRICA                   5                1        0     238
24 months   MAL-ED           SOUTH AFRICA                   6                0       16     238
24 months   MAL-ED           SOUTH AFRICA                   6                1        0     238
24 months   MAL-ED           SOUTH AFRICA                   7                0       22     238
24 months   MAL-ED           SOUTH AFRICA                   7                1        0     238
24 months   MAL-ED           SOUTH AFRICA                   8                0        8     238
24 months   MAL-ED           SOUTH AFRICA                   8                1        0     238
24 months   MAL-ED           SOUTH AFRICA                   9                0       19     238
24 months   MAL-ED           SOUTH AFRICA                   9                1        0     238
24 months   MAL-ED           SOUTH AFRICA                   10               0       25     238
24 months   MAL-ED           SOUTH AFRICA                   10               1        0     238
24 months   MAL-ED           SOUTH AFRICA                   11               0       23     238
24 months   MAL-ED           SOUTH AFRICA                   11               1        0     238
24 months   MAL-ED           SOUTH AFRICA                   12               0       31     238
24 months   MAL-ED           SOUTH AFRICA                   12               1        0     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0       15     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                0       22     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                0       18     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                0        6     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                0       18     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                0       18     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                0       23     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                0       11     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                0       18     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               0       15     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               0       24     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0       26     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               1        0     214
24 months   NIH-Birth        BANGLADESH                     1                0       43     428
24 months   NIH-Birth        BANGLADESH                     1                1        0     428
24 months   NIH-Birth        BANGLADESH                     2                0       36     428
24 months   NIH-Birth        BANGLADESH                     2                1        0     428
24 months   NIH-Birth        BANGLADESH                     3                0       38     428
24 months   NIH-Birth        BANGLADESH                     3                1        1     428
24 months   NIH-Birth        BANGLADESH                     4                0       33     428
24 months   NIH-Birth        BANGLADESH                     4                1        1     428
24 months   NIH-Birth        BANGLADESH                     5                0       34     428
24 months   NIH-Birth        BANGLADESH                     5                1        1     428
24 months   NIH-Birth        BANGLADESH                     6                0       33     428
24 months   NIH-Birth        BANGLADESH                     6                1        0     428
24 months   NIH-Birth        BANGLADESH                     7                0       33     428
24 months   NIH-Birth        BANGLADESH                     7                1        1     428
24 months   NIH-Birth        BANGLADESH                     8                0       27     428
24 months   NIH-Birth        BANGLADESH                     8                1        0     428
24 months   NIH-Birth        BANGLADESH                     9                0       25     428
24 months   NIH-Birth        BANGLADESH                     9                1        1     428
24 months   NIH-Birth        BANGLADESH                     10               0       31     428
24 months   NIH-Birth        BANGLADESH                     10               1        2     428
24 months   NIH-Birth        BANGLADESH                     11               0       40     428
24 months   NIH-Birth        BANGLADESH                     11               1        2     428
24 months   NIH-Birth        BANGLADESH                     12               0       45     428
24 months   NIH-Birth        BANGLADESH                     12               1        1     428
24 months   PROBIT           BELARUS                        1                0      247    3970
24 months   PROBIT           BELARUS                        1                1        1    3970
24 months   PROBIT           BELARUS                        2                0      212    3970
24 months   PROBIT           BELARUS                        2                1        1    3970
24 months   PROBIT           BELARUS                        3                0      311    3970
24 months   PROBIT           BELARUS                        3                1        1    3970
24 months   PROBIT           BELARUS                        4                0      332    3970
24 months   PROBIT           BELARUS                        4                1        0    3970
24 months   PROBIT           BELARUS                        5                0      296    3970
24 months   PROBIT           BELARUS                        5                1        0    3970
24 months   PROBIT           BELARUS                        6                0      267    3970
24 months   PROBIT           BELARUS                        6                1        0    3970
24 months   PROBIT           BELARUS                        7                0      370    3970
24 months   PROBIT           BELARUS                        7                1        1    3970
24 months   PROBIT           BELARUS                        8                0      337    3970
24 months   PROBIT           BELARUS                        8                1        0    3970
24 months   PROBIT           BELARUS                        9                0      379    3970
24 months   PROBIT           BELARUS                        9                1        1    3970
24 months   PROBIT           BELARUS                        10               0      390    3970
24 months   PROBIT           BELARUS                        10               1        1    3970
24 months   PROBIT           BELARUS                        11               0      376    3970
24 months   PROBIT           BELARUS                        11               1        0    3970
24 months   PROBIT           BELARUS                        12               0      446    3970
24 months   PROBIT           BELARUS                        12               1        1    3970
24 months   PROVIDE          BANGLADESH                     1                0       32     579
24 months   PROVIDE          BANGLADESH                     1                1        0     579
24 months   PROVIDE          BANGLADESH                     2                0       30     579
24 months   PROVIDE          BANGLADESH                     2                1        0     579
24 months   PROVIDE          BANGLADESH                     3                0       40     579
24 months   PROVIDE          BANGLADESH                     3                1        0     579
24 months   PROVIDE          BANGLADESH                     4                0       32     579
24 months   PROVIDE          BANGLADESH                     4                1        1     579
24 months   PROVIDE          BANGLADESH                     5                0       40     579
24 months   PROVIDE          BANGLADESH                     5                1        2     579
24 months   PROVIDE          BANGLADESH                     6                0       74     579
24 months   PROVIDE          BANGLADESH                     6                1        1     579
24 months   PROVIDE          BANGLADESH                     7                0       68     579
24 months   PROVIDE          BANGLADESH                     7                1        2     579
24 months   PROVIDE          BANGLADESH                     8                0       59     579
24 months   PROVIDE          BANGLADESH                     8                1        1     579
24 months   PROVIDE          BANGLADESH                     9                0       66     579
24 months   PROVIDE          BANGLADESH                     9                1        1     579
24 months   PROVIDE          BANGLADESH                     10               0       63     579
24 months   PROVIDE          BANGLADESH                     10               1        1     579
24 months   PROVIDE          BANGLADESH                     11               0       38     579
24 months   PROVIDE          BANGLADESH                     11               1        0     579
24 months   PROVIDE          BANGLADESH                     12               0       28     579
24 months   PROVIDE          BANGLADESH                     12               1        0     579
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
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        0       6
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
24 months   ZVITAMBO         ZIMBABWE                       1                0       47     433
24 months   ZVITAMBO         ZIMBABWE                       1                1        2     433
24 months   ZVITAMBO         ZIMBABWE                       2                0       61     433
24 months   ZVITAMBO         ZIMBABWE                       2                1        3     433
24 months   ZVITAMBO         ZIMBABWE                       3                0       50     433
24 months   ZVITAMBO         ZIMBABWE                       3                1        6     433
24 months   ZVITAMBO         ZIMBABWE                       4                0       44     433
24 months   ZVITAMBO         ZIMBABWE                       4                1        3     433
24 months   ZVITAMBO         ZIMBABWE                       5                0       45     433
24 months   ZVITAMBO         ZIMBABWE                       5                1        6     433
24 months   ZVITAMBO         ZIMBABWE                       6                0       41     433
24 months   ZVITAMBO         ZIMBABWE                       6                1        3     433
24 months   ZVITAMBO         ZIMBABWE                       7                0       26     433
24 months   ZVITAMBO         ZIMBABWE                       7                1        2     433
24 months   ZVITAMBO         ZIMBABWE                       8                0       27     433
24 months   ZVITAMBO         ZIMBABWE                       8                1        3     433
24 months   ZVITAMBO         ZIMBABWE                       9                0        2     433
24 months   ZVITAMBO         ZIMBABWE                       9                1        0     433
24 months   ZVITAMBO         ZIMBABWE                       10               0        4     433
24 months   ZVITAMBO         ZIMBABWE                       10               1        0     433
24 months   ZVITAMBO         ZIMBABWE                       11               0       20     433
24 months   ZVITAMBO         ZIMBABWE                       11               1        0     433
24 months   ZVITAMBO         ZIMBABWE                       12               0       35     433
24 months   ZVITAMBO         ZIMBABWE                       12               1        3     433


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
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/af5d4520-cfca-42cc-a161-ed2428e1e484/09196ca8-b72e-4041-b2a8-416209c936f9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/af5d4520-cfca-42cc-a161-ed2428e1e484/09196ca8-b72e-4041-b2a8-416209c936f9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/af5d4520-cfca-42cc-a161-ed2428e1e484/09196ca8-b72e-4041-b2a8-416209c936f9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/af5d4520-cfca-42cc-a161-ed2428e1e484/09196ca8-b72e-4041-b2a8-416209c936f9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3   BANGLADESH   1                    NA                0.0147874   0.0083642   0.0212106
Birth       JiVitA-3   BANGLADESH   2                    NA                0.0191489   0.0126291   0.0256688
Birth       JiVitA-3   BANGLADESH   3                    NA                0.0164416   0.0101218   0.0227613
Birth       JiVitA-3   BANGLADESH   4                    NA                0.0176707   0.0099776   0.0253637
Birth       JiVitA-3   BANGLADESH   5                    NA                0.0204545   0.0103116   0.0305975
Birth       JiVitA-3   BANGLADESH   6                    NA                0.0129730   0.0056605   0.0202855
Birth       JiVitA-3   BANGLADESH   7                    NA                0.0169972   0.0091507   0.0248436
Birth       JiVitA-3   BANGLADESH   8                    NA                0.0198020   0.0111365   0.0284675
Birth       JiVitA-3   BANGLADESH   9                    NA                0.0274784   0.0192076   0.0357493
Birth       JiVitA-3   BANGLADESH   10                   NA                0.0224075   0.0145749   0.0302401
Birth       JiVitA-3   BANGLADESH   11                   NA                0.0211668   0.0127905   0.0295431
Birth       JiVitA-3   BANGLADESH   12                   NA                0.0181106   0.0110303   0.0251909
Birth       PROBIT     BELARUS      1                    NA                0.0778589   0.0253996   0.1303182
Birth       PROBIT     BELARUS      2                    NA                0.0514429   0.0144130   0.0884729
Birth       PROBIT     BELARUS      3                    NA                0.0733262   0.0256655   0.1209870
Birth       PROBIT     BELARUS      4                    NA                0.0608247   0.0253984   0.0962511
Birth       PROBIT     BELARUS      5                    NA                0.0785563   0.0290070   0.1281056
Birth       PROBIT     BELARUS      6                    NA                0.0598039   0.0325197   0.0870882
Birth       PROBIT     BELARUS      7                    NA                0.0848249   0.0497250   0.1199248
Birth       PROBIT     BELARUS      8                    NA                0.0581930   0.0244235   0.0919625
Birth       PROBIT     BELARUS      9                    NA                0.0718608   0.0218615   0.1218601
Birth       PROBIT     BELARUS      10                   NA                0.0625420   0.0343151   0.0907690
Birth       PROBIT     BELARUS      11                   NA                0.0607375   0.0285901   0.0928849
Birth       PROBIT     BELARUS      12                   NA                0.0609598   0.0262319   0.0956877
Birth       ZVITAMBO   ZIMBABWE     1                    NA                0.0535280   0.0409640   0.0660920
Birth       ZVITAMBO   ZIMBABWE     2                    NA                0.0574713   0.0427250   0.0722175
Birth       ZVITAMBO   ZIMBABWE     3                    NA                0.0557103   0.0420117   0.0694089
Birth       ZVITAMBO   ZIMBABWE     4                    NA                0.0542299   0.0396111   0.0688487
Birth       ZVITAMBO   ZIMBABWE     5                    NA                0.0645856   0.0487794   0.0803918
Birth       ZVITAMBO   ZIMBABWE     6                    NA                0.0763359   0.0602589   0.0924129
Birth       ZVITAMBO   ZIMBABWE     7                    NA                0.0812044   0.0650326   0.0973762
Birth       ZVITAMBO   ZIMBABWE     8                    NA                0.0580808   0.0447799   0.0713817
Birth       ZVITAMBO   ZIMBABWE     9                    NA                0.0545746   0.0419617   0.0671875
Birth       ZVITAMBO   ZIMBABWE     10                   NA                0.0612245   0.0462140   0.0762350
Birth       ZVITAMBO   ZIMBABWE     11                   NA                0.0571170   0.0434211   0.0708128
Birth       ZVITAMBO   ZIMBABWE     12                   NA                0.0632689   0.0491241   0.0774137
6 months    JiVitA-3   BANGLADESH   1                    NA                0.0119225   0.0057159   0.0181291
6 months    JiVitA-3   BANGLADESH   2                    NA                0.0121317   0.0045087   0.0197547
6 months    JiVitA-3   BANGLADESH   3                    NA                0.0141945   0.0071317   0.0212572
6 months    JiVitA-3   BANGLADESH   4                    NA                0.0144312   0.0079813   0.0208811
6 months    JiVitA-3   BANGLADESH   5                    NA                0.0162162   0.0078034   0.0246290
6 months    JiVitA-3   BANGLADESH   6                    NA                0.0108514   0.0037497   0.0179532
6 months    JiVitA-3   BANGLADESH   7                    NA                0.0127490   0.0067604   0.0187376
6 months    JiVitA-3   BANGLADESH   8                    NA                0.0138614   0.0073147   0.0204081
6 months    JiVitA-3   BANGLADESH   9                    NA                0.0104874   0.0056538   0.0153209
6 months    JiVitA-3   BANGLADESH   10                   NA                0.0162162   0.0095711   0.0228614
6 months    JiVitA-3   BANGLADESH   11                   NA                0.0130756   0.0077310   0.0184202
6 months    JiVitA-3   BANGLADESH   12                   NA                0.0177440   0.0103159   0.0251720
24 months   JiVitA-3   BANGLADESH   1                    NA                0.0150376   0.0065061   0.0235691
24 months   JiVitA-3   BANGLADESH   2                    NA                0.0267380   0.0117858   0.0416901
24 months   JiVitA-3   BANGLADESH   3                    NA                0.0364146   0.0204289   0.0524002
24 months   JiVitA-3   BANGLADESH   4                    NA                0.0496032   0.0305132   0.0686931
24 months   JiVitA-3   BANGLADESH   5                    NA                0.0439560   0.0219593   0.0659528
24 months   JiVitA-3   BANGLADESH   6                    NA                0.0426929   0.0264160   0.0589699
24 months   JiVitA-3   BANGLADESH   7                    NA                0.0610119   0.0418540   0.0801698
24 months   JiVitA-3   BANGLADESH   8                    NA                0.0582524   0.0371450   0.0793599
24 months   JiVitA-3   BANGLADESH   9                    NA                0.0525000   0.0371451   0.0678549
24 months   JiVitA-3   BANGLADESH   10                   NA                0.0411899   0.0274588   0.0549210
24 months   JiVitA-3   BANGLADESH   11                   NA                0.0336862   0.0215250   0.0458475
24 months   JiVitA-3   BANGLADESH   12                   NA                0.0228233   0.0130096   0.0326371


### Parameter: E(Y)


agecat      studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3   BANGLADESH   NA                   NA                0.0193738   0.0169653   0.0217823
Birth       PROBIT     BELARUS      NA                   NA                0.0665123   0.0333611   0.0996634
Birth       ZVITAMBO   ZIMBABWE     NA                   NA                0.0613145   0.0571772   0.0654519
6 months    JiVitA-3   BANGLADESH   NA                   NA                0.0137035   0.0116269   0.0157801
24 months   JiVitA-3   BANGLADESH   NA                   NA                0.0389399   0.0346167   0.0432631


### Parameter: RR


agecat      studyid    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3   BANGLADESH   2                    1                 1.2949468   0.7396923   2.267006
Birth       JiVitA-3   BANGLADESH   3                    1                 1.1118614   0.6165585   2.005059
Birth       JiVitA-3   BANGLADESH   4                    1                 1.1949799   0.6386303   2.235999
Birth       JiVitA-3   BANGLADESH   5                    1                 1.3832386   0.7131840   2.682827
Birth       JiVitA-3   BANGLADESH   6                    1                 0.8772973   0.4316406   1.783082
Birth       JiVitA-3   BANGLADESH   7                    1                 1.1494334   0.6147198   2.149267
Birth       JiVitA-3   BANGLADESH   8                    1                 1.3391089   0.7451009   2.406671
Birth       JiVitA-3   BANGLADESH   9                    1                 1.8582301   1.1104799   3.109484
Birth       JiVitA-3   BANGLADESH   10                   1                 1.5153075   0.8631048   2.660345
Birth       JiVitA-3   BANGLADESH   11                   1                 1.4314017   0.8211211   2.495260
Birth       JiVitA-3   BANGLADESH   12                   1                 1.2247308   0.6794311   2.207679
Birth       PROBIT     BELARUS      1                    1                 1.0000000   1.0000000   1.000000
Birth       PROBIT     BELARUS      2                    1                 0.6607199   0.4303238   1.014470
Birth       PROBIT     BELARUS      3                    1                 0.9417840   0.6622193   1.339371
Birth       PROBIT     BELARUS      4                    1                 0.7812178   0.5330074   1.145015
Birth       PROBIT     BELARUS      5                    1                 1.0089570   0.6459226   1.576031
Birth       PROBIT     BELARUS      6                    1                 0.7681066   0.4484557   1.315599
Birth       PROBIT     BELARUS      7                    1                 1.0894698   0.6337318   1.872945
Birth       PROBIT     BELARUS      8                    1                 0.7474158   0.4154466   1.344650
Birth       PROBIT     BELARUS      9                    1                 0.9229624   0.5125199   1.662100
Birth       PROBIT     BELARUS      10                   1                 0.8032742   0.5109731   1.262785
Birth       PROBIT     BELARUS      11                   1                 0.7800976   0.5300002   1.148211
Birth       PROBIT     BELARUS      12                   1                 0.7829523   0.4625852   1.325192
Birth       ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
Birth       ZVITAMBO   ZIMBABWE     2                    1                 1.0736677   0.7583069   1.520179
Birth       ZVITAMBO   ZIMBABWE     3                    1                 1.0407698   0.7408383   1.462130
Birth       ZVITAMBO   ZIMBABWE     4                    1                 1.0131138   0.7086396   1.448408
Birth       ZVITAMBO   ZIMBABWE     5                    1                 1.2065760   0.8595811   1.693645
Birth       ZVITAMBO   ZIMBABWE     6                    1                 1.4260930   1.0403774   1.954811
Birth       ZVITAMBO   ZIMBABWE     7                    1                 1.5170455   1.1151006   2.063874
Birth       ZVITAMBO   ZIMBABWE     8                    1                 1.0850551   0.7816902   1.506152
Birth       ZVITAMBO   ZIMBABWE     9                    1                 1.0195535   0.7334195   1.417319
Birth       ZVITAMBO   ZIMBABWE     10                   1                 1.1437848   0.8145894   1.606016
Birth       ZVITAMBO   ZIMBABWE     11                   1                 1.0670485   0.7628852   1.492482
Birth       ZVITAMBO   ZIMBABWE     12                   1                 1.1819780   0.8547359   1.634507
6 months    JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3   BANGLADESH   2                    1                 1.0175477   0.4526386   2.287484
6 months    JiVitA-3   BANGLADESH   3                    1                 1.1905607   0.6100720   2.323389
6 months    JiVitA-3   BANGLADESH   4                    1                 1.2104202   0.6041013   2.425284
6 months    JiVitA-3   BANGLADESH   5                    1                 1.3601351   0.6459664   2.863876
6 months    JiVitA-3   BANGLADESH   6                    1                 0.9101628   0.3920957   2.112740
6 months    JiVitA-3   BANGLADESH   7                    1                 1.0693227   0.5258902   2.174315
6 months    JiVitA-3   BANGLADESH   8                    1                 1.1626238   0.5842250   2.313653
6 months    JiVitA-3   BANGLADESH   9                    1                 0.8796268   0.4392935   1.761336
6 months    JiVitA-3   BANGLADESH   10                   1                 1.3601351   0.6988876   2.647017
6 months    JiVitA-3   BANGLADESH   11                   1                 1.0967169   0.6124994   1.963737
6 months    JiVitA-3   BANGLADESH   12                   1                 1.4882763   0.7782042   2.846253
24 months   JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3   BANGLADESH   2                    1                 1.7780749   0.8159794   3.874547
24 months   JiVitA-3   BANGLADESH   3                    1                 2.4215686   1.1919848   4.919521
24 months   JiVitA-3   BANGLADESH   4                    1                 3.2986111   1.6399881   6.634704
24 months   JiVitA-3   BANGLADESH   5                    1                 2.9230769   1.3779218   6.200917
24 months   JiVitA-3   BANGLADESH   6                    1                 2.8390805   1.5458671   5.214147
24 months   JiVitA-3   BANGLADESH   7                    1                 4.0572917   2.1077982   7.809863
24 months   JiVitA-3   BANGLADESH   8                    1                 3.8737864   1.9578935   7.664473
24 months   JiVitA-3   BANGLADESH   9                    1                 3.4912500   1.8286858   6.665348
24 months   JiVitA-3   BANGLADESH   10                   1                 2.7391304   1.4152886   5.301276
24 months   JiVitA-3   BANGLADESH   11                   1                 2.2401347   1.1440633   4.386299
24 months   JiVitA-3   BANGLADESH   12                   1                 1.5177515   0.7494850   3.073537


### Parameter: PAR


agecat      studyid    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3   BANGLADESH   1                    NA                 0.0045864   -0.0015741   0.0107469
Birth       PROBIT     BELARUS      1                    NA                -0.0113466   -0.0420058   0.0193126
Birth       ZVITAMBO   ZIMBABWE     1                    NA                 0.0077866   -0.0042482   0.0198213
6 months    JiVitA-3   BANGLADESH   1                    NA                 0.0017810   -0.0040277   0.0075898
24 months   JiVitA-3   BANGLADESH   1                    NA                 0.0239023    0.0151282   0.0326765


### Parameter: PAF


agecat      studyid    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3   BANGLADESH   1                    NA                 0.2367313   -0.1560394   0.4960560
Birth       PROBIT     BELARUS      1                    NA                -0.1705943   -0.7024063   0.1950858
Birth       ZVITAMBO   ZIMBABWE     1                    NA                 0.1269938   -0.0928937   0.3026404
6 months    JiVitA-3   BANGLADESH   1                    NA                 0.1299682   -0.4175735   0.4660204
24 months   JiVitA-3   BANGLADESH   1                    NA                 0.6138256    0.3264386   0.7785938
