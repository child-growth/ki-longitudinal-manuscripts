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

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        month    swasted   n_cell       n
----------  ---------------  -----------------------------  ------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1              0        9      86
Birth       CMC-V-BCS-2002   INDIA                          1              1        0      86
Birth       CMC-V-BCS-2002   INDIA                          2              0        1      86
Birth       CMC-V-BCS-2002   INDIA                          2              1        0      86
Birth       CMC-V-BCS-2002   INDIA                          3              0        7      86
Birth       CMC-V-BCS-2002   INDIA                          3              1        0      86
Birth       CMC-V-BCS-2002   INDIA                          4              0        9      86
Birth       CMC-V-BCS-2002   INDIA                          4              1        0      86
Birth       CMC-V-BCS-2002   INDIA                          5              0        9      86
Birth       CMC-V-BCS-2002   INDIA                          5              1        0      86
Birth       CMC-V-BCS-2002   INDIA                          6              0       10      86
Birth       CMC-V-BCS-2002   INDIA                          6              1        0      86
Birth       CMC-V-BCS-2002   INDIA                          7              0        7      86
Birth       CMC-V-BCS-2002   INDIA                          7              1        0      86
Birth       CMC-V-BCS-2002   INDIA                          8              0        4      86
Birth       CMC-V-BCS-2002   INDIA                          8              1        0      86
Birth       CMC-V-BCS-2002   INDIA                          9              0        7      86
Birth       CMC-V-BCS-2002   INDIA                          9              1        1      86
Birth       CMC-V-BCS-2002   INDIA                          10             0        8      86
Birth       CMC-V-BCS-2002   INDIA                          10             1        0      86
Birth       CMC-V-BCS-2002   INDIA                          11             0       11      86
Birth       CMC-V-BCS-2002   INDIA                          11             1        0      86
Birth       CMC-V-BCS-2002   INDIA                          12             0        3      86
Birth       CMC-V-BCS-2002   INDIA                          12             1        0      86
Birth       CMIN             BANGLADESH                     1              0        0      19
Birth       CMIN             BANGLADESH                     1              1        0      19
Birth       CMIN             BANGLADESH                     2              0        4      19
Birth       CMIN             BANGLADESH                     2              1        0      19
Birth       CMIN             BANGLADESH                     3              0        2      19
Birth       CMIN             BANGLADESH                     3              1        0      19
Birth       CMIN             BANGLADESH                     4              0        0      19
Birth       CMIN             BANGLADESH                     4              1        0      19
Birth       CMIN             BANGLADESH                     5              0        3      19
Birth       CMIN             BANGLADESH                     5              1        0      19
Birth       CMIN             BANGLADESH                     6              0        0      19
Birth       CMIN             BANGLADESH                     6              1        0      19
Birth       CMIN             BANGLADESH                     7              0        0      19
Birth       CMIN             BANGLADESH                     7              1        0      19
Birth       CMIN             BANGLADESH                     8              0        5      19
Birth       CMIN             BANGLADESH                     8              1        0      19
Birth       CMIN             BANGLADESH                     9              0        2      19
Birth       CMIN             BANGLADESH                     9              1        0      19
Birth       CMIN             BANGLADESH                     10             0        1      19
Birth       CMIN             BANGLADESH                     10             1        0      19
Birth       CMIN             BANGLADESH                     11             0        1      19
Birth       CMIN             BANGLADESH                     11             1        1      19
Birth       CMIN             BANGLADESH                     12             0        0      19
Birth       CMIN             BANGLADESH                     12             1        0      19
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
Birth       EE               PAKISTAN                       1              0       32     177
Birth       EE               PAKISTAN                       1              1        2     177
Birth       EE               PAKISTAN                       2              0       39     177
Birth       EE               PAKISTAN                       2              1        0     177
Birth       EE               PAKISTAN                       3              0       18     177
Birth       EE               PAKISTAN                       3              1        1     177
Birth       EE               PAKISTAN                       4              0        8     177
Birth       EE               PAKISTAN                       4              1        0     177
Birth       EE               PAKISTAN                       5              0        0     177
Birth       EE               PAKISTAN                       5              1        0     177
Birth       EE               PAKISTAN                       6              0        0     177
Birth       EE               PAKISTAN                       6              1        0     177
Birth       EE               PAKISTAN                       7              0        0     177
Birth       EE               PAKISTAN                       7              1        0     177
Birth       EE               PAKISTAN                       8              0        0     177
Birth       EE               PAKISTAN                       8              1        0     177
Birth       EE               PAKISTAN                       9              0        0     177
Birth       EE               PAKISTAN                       9              1        0     177
Birth       EE               PAKISTAN                       10             0        0     177
Birth       EE               PAKISTAN                       10             1        0     177
Birth       EE               PAKISTAN                       11             0       36     177
Birth       EE               PAKISTAN                       11             1        2     177
Birth       EE               PAKISTAN                       12             0       38     177
Birth       EE               PAKISTAN                       12             1        1     177
Birth       GMS-Nepal        NEPAL                          1              0        0     641
Birth       GMS-Nepal        NEPAL                          1              1        0     641
Birth       GMS-Nepal        NEPAL                          2              0        0     641
Birth       GMS-Nepal        NEPAL                          2              1        0     641
Birth       GMS-Nepal        NEPAL                          3              0        0     641
Birth       GMS-Nepal        NEPAL                          3              1        0     641
Birth       GMS-Nepal        NEPAL                          4              0        1     641
Birth       GMS-Nepal        NEPAL                          4              1        0     641
Birth       GMS-Nepal        NEPAL                          5              0        0     641
Birth       GMS-Nepal        NEPAL                          5              1        0     641
Birth       GMS-Nepal        NEPAL                          6              0      143     641
Birth       GMS-Nepal        NEPAL                          6              1        8     641
Birth       GMS-Nepal        NEPAL                          7              0      233     641
Birth       GMS-Nepal        NEPAL                          7              1        7     641
Birth       GMS-Nepal        NEPAL                          8              0      237     641
Birth       GMS-Nepal        NEPAL                          8              1       12     641
Birth       GMS-Nepal        NEPAL                          9              0        0     641
Birth       GMS-Nepal        NEPAL                          9              1        0     641
Birth       GMS-Nepal        NEPAL                          10             0        0     641
Birth       GMS-Nepal        NEPAL                          10             1        0     641
Birth       GMS-Nepal        NEPAL                          11             0        0     641
Birth       GMS-Nepal        NEPAL                          11             1        0     641
Birth       GMS-Nepal        NEPAL                          12             0        0     641
Birth       GMS-Nepal        NEPAL                          12             1        0     641
Birth       IRC              INDIA                          1              0       28     343
Birth       IRC              INDIA                          1              1        2     343
Birth       IRC              INDIA                          2              0       21     343
Birth       IRC              INDIA                          2              1        1     343
Birth       IRC              INDIA                          3              0       21     343
Birth       IRC              INDIA                          3              1        5     343
Birth       IRC              INDIA                          4              0       17     343
Birth       IRC              INDIA                          4              1        2     343
Birth       IRC              INDIA                          5              0       11     343
Birth       IRC              INDIA                          5              1        4     343
Birth       IRC              INDIA                          6              0       20     343
Birth       IRC              INDIA                          6              1        5     343
Birth       IRC              INDIA                          7              0       26     343
Birth       IRC              INDIA                          7              1        5     343
Birth       IRC              INDIA                          8              0       31     343
Birth       IRC              INDIA                          8              1        6     343
Birth       IRC              INDIA                          9              0       17     343
Birth       IRC              INDIA                          9              1        7     343
Birth       IRC              INDIA                          10             0       24     343
Birth       IRC              INDIA                          10             1        8     343
Birth       IRC              INDIA                          11             0       36     343
Birth       IRC              INDIA                          11             1        3     343
Birth       IRC              INDIA                          12             0       37     343
Birth       IRC              INDIA                          12             1        6     343
Birth       Keneba           GAMBIA                         1              0      124    1466
Birth       Keneba           GAMBIA                         1              1        9    1466
Birth       Keneba           GAMBIA                         2              0      139    1466
Birth       Keneba           GAMBIA                         2              1       14    1466
Birth       Keneba           GAMBIA                         3              0      131    1466
Birth       Keneba           GAMBIA                         3              1        9    1466
Birth       Keneba           GAMBIA                         4              0      150    1466
Birth       Keneba           GAMBIA                         4              1        9    1466
Birth       Keneba           GAMBIA                         5              0       99    1466
Birth       Keneba           GAMBIA                         5              1        4    1466
Birth       Keneba           GAMBIA                         6              0       94    1466
Birth       Keneba           GAMBIA                         6              1        8    1466
Birth       Keneba           GAMBIA                         7              0       81    1466
Birth       Keneba           GAMBIA                         7              1        4    1466
Birth       Keneba           GAMBIA                         8              0       68    1466
Birth       Keneba           GAMBIA                         8              1        6    1466
Birth       Keneba           GAMBIA                         9              0      108    1466
Birth       Keneba           GAMBIA                         9              1        8    1466
Birth       Keneba           GAMBIA                         10             0      106    1466
Birth       Keneba           GAMBIA                         10             1       12    1466
Birth       Keneba           GAMBIA                         11             0      158    1466
Birth       Keneba           GAMBIA                         11             1       10    1466
Birth       Keneba           GAMBIA                         12             0      105    1466
Birth       Keneba           GAMBIA                         12             1       10    1466
Birth       MAL-ED           BANGLADESH                     1              0       20     215
Birth       MAL-ED           BANGLADESH                     1              1        0     215
Birth       MAL-ED           BANGLADESH                     2              0       18     215
Birth       MAL-ED           BANGLADESH                     2              1        0     215
Birth       MAL-ED           BANGLADESH                     3              0       21     215
Birth       MAL-ED           BANGLADESH                     3              1        2     215
Birth       MAL-ED           BANGLADESH                     4              0       19     215
Birth       MAL-ED           BANGLADESH                     4              1        2     215
Birth       MAL-ED           BANGLADESH                     5              0       17     215
Birth       MAL-ED           BANGLADESH                     5              1        0     215
Birth       MAL-ED           BANGLADESH                     6              0        6     215
Birth       MAL-ED           BANGLADESH                     6              1        0     215
Birth       MAL-ED           BANGLADESH                     7              0       12     215
Birth       MAL-ED           BANGLADESH                     7              1        0     215
Birth       MAL-ED           BANGLADESH                     8              0       23     215
Birth       MAL-ED           BANGLADESH                     8              1        1     215
Birth       MAL-ED           BANGLADESH                     9              0       15     215
Birth       MAL-ED           BANGLADESH                     9              1        1     215
Birth       MAL-ED           BANGLADESH                     10             0       18     215
Birth       MAL-ED           BANGLADESH                     10             1        1     215
Birth       MAL-ED           BANGLADESH                     11             0       13     215
Birth       MAL-ED           BANGLADESH                     11             1        0     215
Birth       MAL-ED           BANGLADESH                     12             0       25     215
Birth       MAL-ED           BANGLADESH                     12             1        1     215
Birth       MAL-ED           BRAZIL                         1              0        5      62
Birth       MAL-ED           BRAZIL                         1              1        0      62
Birth       MAL-ED           BRAZIL                         2              0        8      62
Birth       MAL-ED           BRAZIL                         2              1        0      62
Birth       MAL-ED           BRAZIL                         3              0        9      62
Birth       MAL-ED           BRAZIL                         3              1        0      62
Birth       MAL-ED           BRAZIL                         4              0        5      62
Birth       MAL-ED           BRAZIL                         4              1        0      62
Birth       MAL-ED           BRAZIL                         5              0        1      62
Birth       MAL-ED           BRAZIL                         5              1        0      62
Birth       MAL-ED           BRAZIL                         6              0        5      62
Birth       MAL-ED           BRAZIL                         6              1        0      62
Birth       MAL-ED           BRAZIL                         7              0        5      62
Birth       MAL-ED           BRAZIL                         7              1        0      62
Birth       MAL-ED           BRAZIL                         8              0        6      62
Birth       MAL-ED           BRAZIL                         8              1        0      62
Birth       MAL-ED           BRAZIL                         9              0        6      62
Birth       MAL-ED           BRAZIL                         9              1        0      62
Birth       MAL-ED           BRAZIL                         10             0        4      62
Birth       MAL-ED           BRAZIL                         10             1        0      62
Birth       MAL-ED           BRAZIL                         11             0        5      62
Birth       MAL-ED           BRAZIL                         11             1        0      62
Birth       MAL-ED           BRAZIL                         12             0        3      62
Birth       MAL-ED           BRAZIL                         12             1        0      62
Birth       MAL-ED           INDIA                          1              0        2      45
Birth       MAL-ED           INDIA                          1              1        0      45
Birth       MAL-ED           INDIA                          2              0        3      45
Birth       MAL-ED           INDIA                          2              1        0      45
Birth       MAL-ED           INDIA                          3              0        5      45
Birth       MAL-ED           INDIA                          3              1        0      45
Birth       MAL-ED           INDIA                          4              0        6      45
Birth       MAL-ED           INDIA                          4              1        0      45
Birth       MAL-ED           INDIA                          5              0        2      45
Birth       MAL-ED           INDIA                          5              1        0      45
Birth       MAL-ED           INDIA                          6              0        3      45
Birth       MAL-ED           INDIA                          6              1        0      45
Birth       MAL-ED           INDIA                          7              0        3      45
Birth       MAL-ED           INDIA                          7              1        0      45
Birth       MAL-ED           INDIA                          8              0        7      45
Birth       MAL-ED           INDIA                          8              1        0      45
Birth       MAL-ED           INDIA                          9              0        4      45
Birth       MAL-ED           INDIA                          9              1        0      45
Birth       MAL-ED           INDIA                          10             0        6      45
Birth       MAL-ED           INDIA                          10             1        0      45
Birth       MAL-ED           INDIA                          11             0        3      45
Birth       MAL-ED           INDIA                          11             1        0      45
Birth       MAL-ED           INDIA                          12             0        1      45
Birth       MAL-ED           INDIA                          12             1        0      45
Birth       MAL-ED           NEPAL                          1              0        0      26
Birth       MAL-ED           NEPAL                          1              1        1      26
Birth       MAL-ED           NEPAL                          2              0        3      26
Birth       MAL-ED           NEPAL                          2              1        0      26
Birth       MAL-ED           NEPAL                          3              0        1      26
Birth       MAL-ED           NEPAL                          3              1        0      26
Birth       MAL-ED           NEPAL                          4              0        2      26
Birth       MAL-ED           NEPAL                          4              1        0      26
Birth       MAL-ED           NEPAL                          5              0        2      26
Birth       MAL-ED           NEPAL                          5              1        0      26
Birth       MAL-ED           NEPAL                          6              0        3      26
Birth       MAL-ED           NEPAL                          6              1        0      26
Birth       MAL-ED           NEPAL                          7              0        1      26
Birth       MAL-ED           NEPAL                          7              1        0      26
Birth       MAL-ED           NEPAL                          8              0        1      26
Birth       MAL-ED           NEPAL                          8              1        0      26
Birth       MAL-ED           NEPAL                          9              0        3      26
Birth       MAL-ED           NEPAL                          9              1        0      26
Birth       MAL-ED           NEPAL                          10             0        3      26
Birth       MAL-ED           NEPAL                          10             1        0      26
Birth       MAL-ED           NEPAL                          11             0        4      26
Birth       MAL-ED           NEPAL                          11             1        0      26
Birth       MAL-ED           NEPAL                          12             0        2      26
Birth       MAL-ED           NEPAL                          12             1        0      26
Birth       MAL-ED           PERU                           1              0       24     228
Birth       MAL-ED           PERU                           1              1        0     228
Birth       MAL-ED           PERU                           2              0       20     228
Birth       MAL-ED           PERU                           2              1        0     228
Birth       MAL-ED           PERU                           3              0       21     228
Birth       MAL-ED           PERU                           3              1        0     228
Birth       MAL-ED           PERU                           4              0       13     228
Birth       MAL-ED           PERU                           4              1        0     228
Birth       MAL-ED           PERU                           5              0       18     228
Birth       MAL-ED           PERU                           5              1        0     228
Birth       MAL-ED           PERU                           6              0       15     228
Birth       MAL-ED           PERU                           6              1        0     228
Birth       MAL-ED           PERU                           7              0       20     228
Birth       MAL-ED           PERU                           7              1        0     228
Birth       MAL-ED           PERU                           8              0       14     228
Birth       MAL-ED           PERU                           8              1        0     228
Birth       MAL-ED           PERU                           9              0       20     228
Birth       MAL-ED           PERU                           9              1        0     228
Birth       MAL-ED           PERU                           10             0       20     228
Birth       MAL-ED           PERU                           10             1        0     228
Birth       MAL-ED           PERU                           11             0       29     228
Birth       MAL-ED           PERU                           11             1        0     228
Birth       MAL-ED           PERU                           12             0       14     228
Birth       MAL-ED           PERU                           12             1        0     228
Birth       MAL-ED           SOUTH AFRICA                   1              0        7     120
Birth       MAL-ED           SOUTH AFRICA                   1              1        0     120
Birth       MAL-ED           SOUTH AFRICA                   2              0       13     120
Birth       MAL-ED           SOUTH AFRICA                   2              1        0     120
Birth       MAL-ED           SOUTH AFRICA                   3              0       10     120
Birth       MAL-ED           SOUTH AFRICA                   3              1        0     120
Birth       MAL-ED           SOUTH AFRICA                   4              0        7     120
Birth       MAL-ED           SOUTH AFRICA                   4              1        0     120
Birth       MAL-ED           SOUTH AFRICA                   5              0        5     120
Birth       MAL-ED           SOUTH AFRICA                   5              1        0     120
Birth       MAL-ED           SOUTH AFRICA                   6              0        7     120
Birth       MAL-ED           SOUTH AFRICA                   6              1        0     120
Birth       MAL-ED           SOUTH AFRICA                   7              0       14     120
Birth       MAL-ED           SOUTH AFRICA                   7              1        0     120
Birth       MAL-ED           SOUTH AFRICA                   8              0        4     120
Birth       MAL-ED           SOUTH AFRICA                   8              1        0     120
Birth       MAL-ED           SOUTH AFRICA                   9              0       10     120
Birth       MAL-ED           SOUTH AFRICA                   9              1        0     120
Birth       MAL-ED           SOUTH AFRICA                   10             0       10     120
Birth       MAL-ED           SOUTH AFRICA                   10             1        0     120
Birth       MAL-ED           SOUTH AFRICA                   11             0       15     120
Birth       MAL-ED           SOUTH AFRICA                   11             1        0     120
Birth       MAL-ED           SOUTH AFRICA                   12             0       18     120
Birth       MAL-ED           SOUTH AFRICA                   12             1        0     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              0        8     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              0       14     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              0       15     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              0        7     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              0       10     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              0        8     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              0       15     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              0        7     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              0        1     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             0        6     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             0       14     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             0       10     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             1        0     115
Birth       NIH-Birth        BANGLADESH                     1              0       47     575
Birth       NIH-Birth        BANGLADESH                     1              1        7     575
Birth       NIH-Birth        BANGLADESH                     2              0       53     575
Birth       NIH-Birth        BANGLADESH                     2              1        2     575
Birth       NIH-Birth        BANGLADESH                     3              0       56     575
Birth       NIH-Birth        BANGLADESH                     3              1        2     575
Birth       NIH-Birth        BANGLADESH                     4              0       44     575
Birth       NIH-Birth        BANGLADESH                     4              1        4     575
Birth       NIH-Birth        BANGLADESH                     5              0       42     575
Birth       NIH-Birth        BANGLADESH                     5              1        3     575
Birth       NIH-Birth        BANGLADESH                     6              0       36     575
Birth       NIH-Birth        BANGLADESH                     6              1        4     575
Birth       NIH-Birth        BANGLADESH                     7              0       39     575
Birth       NIH-Birth        BANGLADESH                     7              1        6     575
Birth       NIH-Birth        BANGLADESH                     8              0       37     575
Birth       NIH-Birth        BANGLADESH                     8              1        4     575
Birth       NIH-Birth        BANGLADESH                     9              0       30     575
Birth       NIH-Birth        BANGLADESH                     9              1        1     575
Birth       NIH-Birth        BANGLADESH                     10             0       55     575
Birth       NIH-Birth        BANGLADESH                     10             1        3     575
Birth       NIH-Birth        BANGLADESH                     11             0       47     575
Birth       NIH-Birth        BANGLADESH                     11             1        2     575
Birth       NIH-Birth        BANGLADESH                     12             0       51     575
Birth       NIH-Birth        BANGLADESH                     12             1        0     575
Birth       PROBIT           BELARUS                        1              0      788   13817
Birth       PROBIT           BELARUS                        1              1       67   13817
Birth       PROBIT           BELARUS                        2              0      745   13817
Birth       PROBIT           BELARUS                        2              1       40   13817
Birth       PROBIT           BELARUS                        3              0      890   13817
Birth       PROBIT           BELARUS                        3              1       70   13817
Birth       PROBIT           BELARUS                        4              0      900   13817
Birth       PROBIT           BELARUS                        4              1       55   13817
Birth       PROBIT           BELARUS                        5              0      872   13817
Birth       PROBIT           BELARUS                        5              1       77   13817
Birth       PROBIT           BELARUS                        6              0      947   13817
Birth       PROBIT           BELARUS                        6              1       59   13817
Birth       PROBIT           BELARUS                        7              0     1171   13817
Birth       PROBIT           BELARUS                        7              1      104   13817
Birth       PROBIT           BELARUS                        8              0     1237   13817
Birth       PROBIT           BELARUS                        8              1       81   13817
Birth       PROBIT           BELARUS                        9              0     1215   13817
Birth       PROBIT           BELARUS                        9              1       96   13817
Birth       PROBIT           BELARUS                        10             0     1402   13817
Birth       PROBIT           BELARUS                        10             1       94   13817
Birth       PROBIT           BELARUS                        11             0     1310   13817
Birth       PROBIT           BELARUS                        11             1       82   13817
Birth       PROBIT           BELARUS                        12             0     1421   13817
Birth       PROBIT           BELARUS                        12             1       94   13817
Birth       ResPak           PAKISTAN                       1              0        0      38
Birth       ResPak           PAKISTAN                       1              1        0      38
Birth       ResPak           PAKISTAN                       2              0        2      38
Birth       ResPak           PAKISTAN                       2              1        0      38
Birth       ResPak           PAKISTAN                       3              0        1      38
Birth       ResPak           PAKISTAN                       3              1        0      38
Birth       ResPak           PAKISTAN                       4              0        1      38
Birth       ResPak           PAKISTAN                       4              1        0      38
Birth       ResPak           PAKISTAN                       5              0        6      38
Birth       ResPak           PAKISTAN                       5              1        0      38
Birth       ResPak           PAKISTAN                       6              0        7      38
Birth       ResPak           PAKISTAN                       6              1        0      38
Birth       ResPak           PAKISTAN                       7              0        7      38
Birth       ResPak           PAKISTAN                       7              1        0      38
Birth       ResPak           PAKISTAN                       8              0        8      38
Birth       ResPak           PAKISTAN                       8              1        0      38
Birth       ResPak           PAKISTAN                       9              0        4      38
Birth       ResPak           PAKISTAN                       9              1        0      38
Birth       ResPak           PAKISTAN                       10             0        1      38
Birth       ResPak           PAKISTAN                       10             1        0      38
Birth       ResPak           PAKISTAN                       11             0        1      38
Birth       ResPak           PAKISTAN                       11             1        0      38
Birth       ResPak           PAKISTAN                       12             0        0      38
Birth       ResPak           PAKISTAN                       12             1        0      38
Birth       SAS-CompFeed     INDIA                          1              0       65    1103
Birth       SAS-CompFeed     INDIA                          1              1        0    1103
Birth       SAS-CompFeed     INDIA                          2              0       61    1103
Birth       SAS-CompFeed     INDIA                          2              1        1    1103
Birth       SAS-CompFeed     INDIA                          3              0       66    1103
Birth       SAS-CompFeed     INDIA                          3              1        1    1103
Birth       SAS-CompFeed     INDIA                          4              0       58    1103
Birth       SAS-CompFeed     INDIA                          4              1        2    1103
Birth       SAS-CompFeed     INDIA                          5              0       62    1103
Birth       SAS-CompFeed     INDIA                          5              1        3    1103
Birth       SAS-CompFeed     INDIA                          6              0       86    1103
Birth       SAS-CompFeed     INDIA                          6              1        6    1103
Birth       SAS-CompFeed     INDIA                          7              0       90    1103
Birth       SAS-CompFeed     INDIA                          7              1        4    1103
Birth       SAS-CompFeed     INDIA                          8              0      121    1103
Birth       SAS-CompFeed     INDIA                          8              1        2    1103
Birth       SAS-CompFeed     INDIA                          9              0      128    1103
Birth       SAS-CompFeed     INDIA                          9              1        7    1103
Birth       SAS-CompFeed     INDIA                          10             0      120    1103
Birth       SAS-CompFeed     INDIA                          10             1        3    1103
Birth       SAS-CompFeed     INDIA                          11             0      113    1103
Birth       SAS-CompFeed     INDIA                          11             1        0    1103
Birth       SAS-CompFeed     INDIA                          12             0      104    1103
Birth       SAS-CompFeed     INDIA                          12             1        0    1103
Birth       ZVITAMBO         ZIMBABWE                       1              0     1173   12917
Birth       ZVITAMBO         ZIMBABWE                       1              1       65   12917
Birth       ZVITAMBO         ZIMBABWE                       2              0      892   12917
Birth       ZVITAMBO         ZIMBABWE                       2              1       56   12917
Birth       ZVITAMBO         ZIMBABWE                       3              0     1001   12917
Birth       ZVITAMBO         ZIMBABWE                       3              1       59   12917
Birth       ZVITAMBO         ZIMBABWE                       4              0      891   12917
Birth       ZVITAMBO         ZIMBABWE                       4              1       50   12917
Birth       ZVITAMBO         ZIMBABWE                       5              0      853   12917
Birth       ZVITAMBO         ZIMBABWE                       5              1       61   12917
Birth       ZVITAMBO         ZIMBABWE                       6              0      970   12917
Birth       ZVITAMBO         ZIMBABWE                       6              1       77   12917
Birth       ZVITAMBO         ZIMBABWE                       7              0     1011   12917
Birth       ZVITAMBO         ZIMBABWE                       7              1       87   12917
Birth       ZVITAMBO         ZIMBABWE                       8              0     1092   12917
Birth       ZVITAMBO         ZIMBABWE                       8              1       74   12917
Birth       ZVITAMBO         ZIMBABWE                       9              0     1203   12917
Birth       ZVITAMBO         ZIMBABWE                       9              1       65   12917
Birth       ZVITAMBO         ZIMBABWE                       10             0      922   12917
Birth       ZVITAMBO         ZIMBABWE                       10             1       62   12917
Birth       ZVITAMBO         ZIMBABWE                       11             0     1011   12917
Birth       ZVITAMBO         ZIMBABWE                       11             1       59   12917
Birth       ZVITAMBO         ZIMBABWE                       12             0     1106   12917
Birth       ZVITAMBO         ZIMBABWE                       12             1       77   12917
6 months    CMC-V-BCS-2002   INDIA                          1              0       28     368
6 months    CMC-V-BCS-2002   INDIA                          1              1        0     368
6 months    CMC-V-BCS-2002   INDIA                          2              0       23     368
6 months    CMC-V-BCS-2002   INDIA                          2              1        1     368
6 months    CMC-V-BCS-2002   INDIA                          3              0       24     368
6 months    CMC-V-BCS-2002   INDIA                          3              1        2     368
6 months    CMC-V-BCS-2002   INDIA                          4              0       28     368
6 months    CMC-V-BCS-2002   INDIA                          4              1        1     368
6 months    CMC-V-BCS-2002   INDIA                          5              0       40     368
6 months    CMC-V-BCS-2002   INDIA                          5              1        1     368
6 months    CMC-V-BCS-2002   INDIA                          6              0       34     368
6 months    CMC-V-BCS-2002   INDIA                          6              1        2     368
6 months    CMC-V-BCS-2002   INDIA                          7              0       32     368
6 months    CMC-V-BCS-2002   INDIA                          7              1        1     368
6 months    CMC-V-BCS-2002   INDIA                          8              0       40     368
6 months    CMC-V-BCS-2002   INDIA                          8              1        1     368
6 months    CMC-V-BCS-2002   INDIA                          9              0       22     368
6 months    CMC-V-BCS-2002   INDIA                          9              1        0     368
6 months    CMC-V-BCS-2002   INDIA                          10             0       19     368
6 months    CMC-V-BCS-2002   INDIA                          10             1        0     368
6 months    CMC-V-BCS-2002   INDIA                          11             0       39     368
6 months    CMC-V-BCS-2002   INDIA                          11             1        2     368
6 months    CMC-V-BCS-2002   INDIA                          12             0       27     368
6 months    CMC-V-BCS-2002   INDIA                          12             1        1     368
6 months    CMIN             BANGLADESH                     1              0       25     243
6 months    CMIN             BANGLADESH                     1              1        3     243
6 months    CMIN             BANGLADESH                     2              0       29     243
6 months    CMIN             BANGLADESH                     2              1        1     243
6 months    CMIN             BANGLADESH                     3              0       18     243
6 months    CMIN             BANGLADESH                     3              1        0     243
6 months    CMIN             BANGLADESH                     4              0       17     243
6 months    CMIN             BANGLADESH                     4              1        0     243
6 months    CMIN             BANGLADESH                     5              0       20     243
6 months    CMIN             BANGLADESH                     5              1        0     243
6 months    CMIN             BANGLADESH                     6              0       22     243
6 months    CMIN             BANGLADESH                     6              1        1     243
6 months    CMIN             BANGLADESH                     7              0       12     243
6 months    CMIN             BANGLADESH                     7              1        0     243
6 months    CMIN             BANGLADESH                     8              0       13     243
6 months    CMIN             BANGLADESH                     8              1        0     243
6 months    CMIN             BANGLADESH                     9              0       16     243
6 months    CMIN             BANGLADESH                     9              1        0     243
6 months    CMIN             BANGLADESH                     10             0       20     243
6 months    CMIN             BANGLADESH                     10             1        0     243
6 months    CMIN             BANGLADESH                     11             0        2     243
6 months    CMIN             BANGLADESH                     11             1        0     243
6 months    CMIN             BANGLADESH                     12             0       44     243
6 months    CMIN             BANGLADESH                     12             1        0     243
6 months    CONTENT          PERU                           1              0        9     215
6 months    CONTENT          PERU                           1              1        0     215
6 months    CONTENT          PERU                           2              0       13     215
6 months    CONTENT          PERU                           2              1        0     215
6 months    CONTENT          PERU                           3              0       27     215
6 months    CONTENT          PERU                           3              1        0     215
6 months    CONTENT          PERU                           4              0       18     215
6 months    CONTENT          PERU                           4              1        0     215
6 months    CONTENT          PERU                           5              0       25     215
6 months    CONTENT          PERU                           5              1        0     215
6 months    CONTENT          PERU                           6              0       14     215
6 months    CONTENT          PERU                           6              1        0     215
6 months    CONTENT          PERU                           7              0       16     215
6 months    CONTENT          PERU                           7              1        0     215
6 months    CONTENT          PERU                           8              0       26     215
6 months    CONTENT          PERU                           8              1        0     215
6 months    CONTENT          PERU                           9              0       19     215
6 months    CONTENT          PERU                           9              1        0     215
6 months    CONTENT          PERU                           10             0       23     215
6 months    CONTENT          PERU                           10             1        0     215
6 months    CONTENT          PERU                           11             0       18     215
6 months    CONTENT          PERU                           11             1        0     215
6 months    CONTENT          PERU                           12             0        7     215
6 months    CONTENT          PERU                           12             1        0     215
6 months    EE               PAKISTAN                       1              0       87     375
6 months    EE               PAKISTAN                       1              1        4     375
6 months    EE               PAKISTAN                       2              0       69     375
6 months    EE               PAKISTAN                       2              1        3     375
6 months    EE               PAKISTAN                       3              0       46     375
6 months    EE               PAKISTAN                       3              1        1     375
6 months    EE               PAKISTAN                       4              0       22     375
6 months    EE               PAKISTAN                       4              1        0     375
6 months    EE               PAKISTAN                       5              0        0     375
6 months    EE               PAKISTAN                       5              1        0     375
6 months    EE               PAKISTAN                       6              0        0     375
6 months    EE               PAKISTAN                       6              1        0     375
6 months    EE               PAKISTAN                       7              0        0     375
6 months    EE               PAKISTAN                       7              1        0     375
6 months    EE               PAKISTAN                       8              0        0     375
6 months    EE               PAKISTAN                       8              1        0     375
6 months    EE               PAKISTAN                       9              0        0     375
6 months    EE               PAKISTAN                       9              1        0     375
6 months    EE               PAKISTAN                       10             0        0     375
6 months    EE               PAKISTAN                       10             1        0     375
6 months    EE               PAKISTAN                       11             0       58     375
6 months    EE               PAKISTAN                       11             1        2     375
6 months    EE               PAKISTAN                       12             0       80     375
6 months    EE               PAKISTAN                       12             1        3     375
6 months    GMS-Nepal        NEPAL                          1              0        0     564
6 months    GMS-Nepal        NEPAL                          1              1        0     564
6 months    GMS-Nepal        NEPAL                          2              0        0     564
6 months    GMS-Nepal        NEPAL                          2              1        0     564
6 months    GMS-Nepal        NEPAL                          3              0        0     564
6 months    GMS-Nepal        NEPAL                          3              1        0     564
6 months    GMS-Nepal        NEPAL                          4              0        1     564
6 months    GMS-Nepal        NEPAL                          4              1        0     564
6 months    GMS-Nepal        NEPAL                          5              0        0     564
6 months    GMS-Nepal        NEPAL                          5              1        0     564
6 months    GMS-Nepal        NEPAL                          6              0      115     564
6 months    GMS-Nepal        NEPAL                          6              1        0     564
6 months    GMS-Nepal        NEPAL                          7              0      208     564
6 months    GMS-Nepal        NEPAL                          7              1        3     564
6 months    GMS-Nepal        NEPAL                          8              0      233     564
6 months    GMS-Nepal        NEPAL                          8              1        4     564
6 months    GMS-Nepal        NEPAL                          9              0        0     564
6 months    GMS-Nepal        NEPAL                          9              1        0     564
6 months    GMS-Nepal        NEPAL                          10             0        0     564
6 months    GMS-Nepal        NEPAL                          10             1        0     564
6 months    GMS-Nepal        NEPAL                          11             0        0     564
6 months    GMS-Nepal        NEPAL                          11             1        0     564
6 months    GMS-Nepal        NEPAL                          12             0        0     564
6 months    GMS-Nepal        NEPAL                          12             1        0     564
6 months    Guatemala BSC    GUATEMALA                      1              0       18     299
6 months    Guatemala BSC    GUATEMALA                      1              1        0     299
6 months    Guatemala BSC    GUATEMALA                      2              0       19     299
6 months    Guatemala BSC    GUATEMALA                      2              1        0     299
6 months    Guatemala BSC    GUATEMALA                      3              0       21     299
6 months    Guatemala BSC    GUATEMALA                      3              1        0     299
6 months    Guatemala BSC    GUATEMALA                      4              0       27     299
6 months    Guatemala BSC    GUATEMALA                      4              1        0     299
6 months    Guatemala BSC    GUATEMALA                      5              0       31     299
6 months    Guatemala BSC    GUATEMALA                      5              1        0     299
6 months    Guatemala BSC    GUATEMALA                      6              0       39     299
6 months    Guatemala BSC    GUATEMALA                      6              1        0     299
6 months    Guatemala BSC    GUATEMALA                      7              0       24     299
6 months    Guatemala BSC    GUATEMALA                      7              1        0     299
6 months    Guatemala BSC    GUATEMALA                      8              0       19     299
6 months    Guatemala BSC    GUATEMALA                      8              1        0     299
6 months    Guatemala BSC    GUATEMALA                      9              0       34     299
6 months    Guatemala BSC    GUATEMALA                      9              1        0     299
6 months    Guatemala BSC    GUATEMALA                      10             0       29     299
6 months    Guatemala BSC    GUATEMALA                      10             1        0     299
6 months    Guatemala BSC    GUATEMALA                      11             0       28     299
6 months    Guatemala BSC    GUATEMALA                      11             1        0     299
6 months    Guatemala BSC    GUATEMALA                      12             0       10     299
6 months    Guatemala BSC    GUATEMALA                      12             1        0     299
6 months    IRC              INDIA                          1              0       33     408
6 months    IRC              INDIA                          1              1        2     408
6 months    IRC              INDIA                          2              0       28     408
6 months    IRC              INDIA                          2              1        2     408
6 months    IRC              INDIA                          3              0       29     408
6 months    IRC              INDIA                          3              1        0     408
6 months    IRC              INDIA                          4              0       24     408
6 months    IRC              INDIA                          4              1        0     408
6 months    IRC              INDIA                          5              0       20     408
6 months    IRC              INDIA                          5              1        1     408
6 months    IRC              INDIA                          6              0       34     408
6 months    IRC              INDIA                          6              1        1     408
6 months    IRC              INDIA                          7              0       33     408
6 months    IRC              INDIA                          7              1        3     408
6 months    IRC              INDIA                          8              0       37     408
6 months    IRC              INDIA                          8              1        4     408
6 months    IRC              INDIA                          9              0       26     408
6 months    IRC              INDIA                          9              1        2     408
6 months    IRC              INDIA                          10             0       38     408
6 months    IRC              INDIA                          10             1        1     408
6 months    IRC              INDIA                          11             0       39     408
6 months    IRC              INDIA                          11             1        2     408
6 months    IRC              INDIA                          12             0       45     408
6 months    IRC              INDIA                          12             1        4     408
6 months    Keneba           GAMBIA                         1              0      181    2089
6 months    Keneba           GAMBIA                         1              1        3    2089
6 months    Keneba           GAMBIA                         2              0      207    2089
6 months    Keneba           GAMBIA                         2              1        3    2089
6 months    Keneba           GAMBIA                         3              0      184    2089
6 months    Keneba           GAMBIA                         3              1        1    2089
6 months    Keneba           GAMBIA                         4              0      219    2089
6 months    Keneba           GAMBIA                         4              1        5    2089
6 months    Keneba           GAMBIA                         5              0      178    2089
6 months    Keneba           GAMBIA                         5              1        7    2089
6 months    Keneba           GAMBIA                         6              0      146    2089
6 months    Keneba           GAMBIA                         6              1        4    2089
6 months    Keneba           GAMBIA                         7              0      128    2089
6 months    Keneba           GAMBIA                         7              1        1    2089
6 months    Keneba           GAMBIA                         8              0      116    2089
6 months    Keneba           GAMBIA                         8              1        2    2089
6 months    Keneba           GAMBIA                         9              0      150    2089
6 months    Keneba           GAMBIA                         9              1        1    2089
6 months    Keneba           GAMBIA                         10             0      166    2089
6 months    Keneba           GAMBIA                         10             1        3    2089
6 months    Keneba           GAMBIA                         11             0      221    2089
6 months    Keneba           GAMBIA                         11             1        4    2089
6 months    Keneba           GAMBIA                         12             0      159    2089
6 months    Keneba           GAMBIA                         12             1        0    2089
6 months    LCNI-5           MALAWI                         1              0       55     839
6 months    LCNI-5           MALAWI                         1              1        0     839
6 months    LCNI-5           MALAWI                         2              0      114     839
6 months    LCNI-5           MALAWI                         2              1        0     839
6 months    LCNI-5           MALAWI                         3              0       98     839
6 months    LCNI-5           MALAWI                         3              1        0     839
6 months    LCNI-5           MALAWI                         4              0      110     839
6 months    LCNI-5           MALAWI                         4              1        0     839
6 months    LCNI-5           MALAWI                         5              0      111     839
6 months    LCNI-5           MALAWI                         5              1        0     839
6 months    LCNI-5           MALAWI                         6              0       91     839
6 months    LCNI-5           MALAWI                         6              1        0     839
6 months    LCNI-5           MALAWI                         7              0       72     839
6 months    LCNI-5           MALAWI                         7              1        0     839
6 months    LCNI-5           MALAWI                         8              0       41     839
6 months    LCNI-5           MALAWI                         8              1        0     839
6 months    LCNI-5           MALAWI                         9              0       29     839
6 months    LCNI-5           MALAWI                         9              1        0     839
6 months    LCNI-5           MALAWI                         10             0       35     839
6 months    LCNI-5           MALAWI                         10             1        0     839
6 months    LCNI-5           MALAWI                         11             0       49     839
6 months    LCNI-5           MALAWI                         11             1        0     839
6 months    LCNI-5           MALAWI                         12             0       34     839
6 months    LCNI-5           MALAWI                         12             1        0     839
6 months    MAL-ED           BANGLADESH                     1              0       19     241
6 months    MAL-ED           BANGLADESH                     1              1        0     241
6 months    MAL-ED           BANGLADESH                     2              0       20     241
6 months    MAL-ED           BANGLADESH                     2              1        0     241
6 months    MAL-ED           BANGLADESH                     3              0       23     241
6 months    MAL-ED           BANGLADESH                     3              1        0     241
6 months    MAL-ED           BANGLADESH                     4              0       23     241
6 months    MAL-ED           BANGLADESH                     4              1        1     241
6 months    MAL-ED           BANGLADESH                     5              0       17     241
6 months    MAL-ED           BANGLADESH                     5              1        0     241
6 months    MAL-ED           BANGLADESH                     6              0       12     241
6 months    MAL-ED           BANGLADESH                     6              1        0     241
6 months    MAL-ED           BANGLADESH                     7              0       16     241
6 months    MAL-ED           BANGLADESH                     7              1        1     241
6 months    MAL-ED           BANGLADESH                     8              0       25     241
6 months    MAL-ED           BANGLADESH                     8              1        0     241
6 months    MAL-ED           BANGLADESH                     9              0       21     241
6 months    MAL-ED           BANGLADESH                     9              1        0     241
6 months    MAL-ED           BANGLADESH                     10             0       22     241
6 months    MAL-ED           BANGLADESH                     10             1        0     241
6 months    MAL-ED           BANGLADESH                     11             0       15     241
6 months    MAL-ED           BANGLADESH                     11             1        0     241
6 months    MAL-ED           BANGLADESH                     12             0       26     241
6 months    MAL-ED           BANGLADESH                     12             1        0     241
6 months    MAL-ED           BRAZIL                         1              0       14     209
6 months    MAL-ED           BRAZIL                         1              1        0     209
6 months    MAL-ED           BRAZIL                         2              0       24     209
6 months    MAL-ED           BRAZIL                         2              1        0     209
6 months    MAL-ED           BRAZIL                         3              0       15     209
6 months    MAL-ED           BRAZIL                         3              1        0     209
6 months    MAL-ED           BRAZIL                         4              0       12     209
6 months    MAL-ED           BRAZIL                         4              1        0     209
6 months    MAL-ED           BRAZIL                         5              0       17     209
6 months    MAL-ED           BRAZIL                         5              1        0     209
6 months    MAL-ED           BRAZIL                         6              0       14     209
6 months    MAL-ED           BRAZIL                         6              1        0     209
6 months    MAL-ED           BRAZIL                         7              0       16     209
6 months    MAL-ED           BRAZIL                         7              1        0     209
6 months    MAL-ED           BRAZIL                         8              0       15     209
6 months    MAL-ED           BRAZIL                         8              1        0     209
6 months    MAL-ED           BRAZIL                         9              0       21     209
6 months    MAL-ED           BRAZIL                         9              1        0     209
6 months    MAL-ED           BRAZIL                         10             0       26     209
6 months    MAL-ED           BRAZIL                         10             1        0     209
6 months    MAL-ED           BRAZIL                         11             0       17     209
6 months    MAL-ED           BRAZIL                         11             1        0     209
6 months    MAL-ED           BRAZIL                         12             0       18     209
6 months    MAL-ED           BRAZIL                         12             1        0     209
6 months    MAL-ED           INDIA                          1              0       15     236
6 months    MAL-ED           INDIA                          1              1        0     236
6 months    MAL-ED           INDIA                          2              0       23     236
6 months    MAL-ED           INDIA                          2              1        0     236
6 months    MAL-ED           INDIA                          3              0       19     236
6 months    MAL-ED           INDIA                          3              1        2     236
6 months    MAL-ED           INDIA                          4              0       18     236
6 months    MAL-ED           INDIA                          4              1        0     236
6 months    MAL-ED           INDIA                          5              0        8     236
6 months    MAL-ED           INDIA                          5              1        0     236
6 months    MAL-ED           INDIA                          6              0       17     236
6 months    MAL-ED           INDIA                          6              1        1     236
6 months    MAL-ED           INDIA                          7              0       20     236
6 months    MAL-ED           INDIA                          7              1        1     236
6 months    MAL-ED           INDIA                          8              0       21     236
6 months    MAL-ED           INDIA                          8              1        0     236
6 months    MAL-ED           INDIA                          9              0       21     236
6 months    MAL-ED           INDIA                          9              1        0     236
6 months    MAL-ED           INDIA                          10             0       23     236
6 months    MAL-ED           INDIA                          10             1        1     236
6 months    MAL-ED           INDIA                          11             0       24     236
6 months    MAL-ED           INDIA                          11             1        0     236
6 months    MAL-ED           INDIA                          12             0       21     236
6 months    MAL-ED           INDIA                          12             1        1     236
6 months    MAL-ED           NEPAL                          1              0       20     236
6 months    MAL-ED           NEPAL                          1              1        0     236
6 months    MAL-ED           NEPAL                          2              0       20     236
6 months    MAL-ED           NEPAL                          2              1        0     236
6 months    MAL-ED           NEPAL                          3              0       20     236
6 months    MAL-ED           NEPAL                          3              1        0     236
6 months    MAL-ED           NEPAL                          4              0       20     236
6 months    MAL-ED           NEPAL                          4              1        0     236
6 months    MAL-ED           NEPAL                          5              0       18     236
6 months    MAL-ED           NEPAL                          5              1        0     236
6 months    MAL-ED           NEPAL                          6              0       20     236
6 months    MAL-ED           NEPAL                          6              1        0     236
6 months    MAL-ED           NEPAL                          7              0       19     236
6 months    MAL-ED           NEPAL                          7              1        0     236
6 months    MAL-ED           NEPAL                          8              0       19     236
6 months    MAL-ED           NEPAL                          8              1        0     236
6 months    MAL-ED           NEPAL                          9              0       20     236
6 months    MAL-ED           NEPAL                          9              1        0     236
6 months    MAL-ED           NEPAL                          10             0       20     236
6 months    MAL-ED           NEPAL                          10             1        0     236
6 months    MAL-ED           NEPAL                          11             0       20     236
6 months    MAL-ED           NEPAL                          11             1        0     236
6 months    MAL-ED           NEPAL                          12             0       20     236
6 months    MAL-ED           NEPAL                          12             1        0     236
6 months    MAL-ED           PERU                           1              0       33     273
6 months    MAL-ED           PERU                           1              1        0     273
6 months    MAL-ED           PERU                           2              0       26     273
6 months    MAL-ED           PERU                           2              1        0     273
6 months    MAL-ED           PERU                           3              0       22     273
6 months    MAL-ED           PERU                           3              1        0     273
6 months    MAL-ED           PERU                           4              0       18     273
6 months    MAL-ED           PERU                           4              1        0     273
6 months    MAL-ED           PERU                           5              0       24     273
6 months    MAL-ED           PERU                           5              1        0     273
6 months    MAL-ED           PERU                           6              0       20     273
6 months    MAL-ED           PERU                           6              1        0     273
6 months    MAL-ED           PERU                           7              0       22     273
6 months    MAL-ED           PERU                           7              1        0     273
6 months    MAL-ED           PERU                           8              0       16     273
6 months    MAL-ED           PERU                           8              1        0     273
6 months    MAL-ED           PERU                           9              0       22     273
6 months    MAL-ED           PERU                           9              1        0     273
6 months    MAL-ED           PERU                           10             0       20     273
6 months    MAL-ED           PERU                           10             1        0     273
6 months    MAL-ED           PERU                           11             0       34     273
6 months    MAL-ED           PERU                           11             1        0     273
6 months    MAL-ED           PERU                           12             0       16     273
6 months    MAL-ED           PERU                           12             1        0     273
6 months    MAL-ED           SOUTH AFRICA                   1              0       32     254
6 months    MAL-ED           SOUTH AFRICA                   1              1        0     254
6 months    MAL-ED           SOUTH AFRICA                   2              0       33     254
6 months    MAL-ED           SOUTH AFRICA                   2              1        0     254
6 months    MAL-ED           SOUTH AFRICA                   3              0       17     254
6 months    MAL-ED           SOUTH AFRICA                   3              1        0     254
6 months    MAL-ED           SOUTH AFRICA                   4              0       12     254
6 months    MAL-ED           SOUTH AFRICA                   4              1        0     254
6 months    MAL-ED           SOUTH AFRICA                   5              0       11     254
6 months    MAL-ED           SOUTH AFRICA                   5              1        0     254
6 months    MAL-ED           SOUTH AFRICA                   6              0       18     254
6 months    MAL-ED           SOUTH AFRICA                   6              1        0     254
6 months    MAL-ED           SOUTH AFRICA                   7              0       25     254
6 months    MAL-ED           SOUTH AFRICA                   7              1        0     254
6 months    MAL-ED           SOUTH AFRICA                   8              0        7     254
6 months    MAL-ED           SOUTH AFRICA                   8              1        0     254
6 months    MAL-ED           SOUTH AFRICA                   9              0       17     254
6 months    MAL-ED           SOUTH AFRICA                   9              1        0     254
6 months    MAL-ED           SOUTH AFRICA                   10             0       21     254
6 months    MAL-ED           SOUTH AFRICA                   10             1        1     254
6 months    MAL-ED           SOUTH AFRICA                   11             0       27     254
6 months    MAL-ED           SOUTH AFRICA                   11             1        2     254
6 months    MAL-ED           SOUTH AFRICA                   12             0       31     254
6 months    MAL-ED           SOUTH AFRICA                   12             1        0     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              0       21     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              0       28     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              0       23     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              0       10     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              0       12     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              0       16     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              0       28     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              0       12     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              0       18     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             0       19     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             0       28     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             0       32     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             1        0     247
6 months    NIH-Birth        BANGLADESH                     1              0       49     537
6 months    NIH-Birth        BANGLADESH                     1              1        1     537
6 months    NIH-Birth        BANGLADESH                     2              0       49     537
6 months    NIH-Birth        BANGLADESH                     2              1        1     537
6 months    NIH-Birth        BANGLADESH                     3              0       49     537
6 months    NIH-Birth        BANGLADESH                     3              1        1     537
6 months    NIH-Birth        BANGLADESH                     4              0       44     537
6 months    NIH-Birth        BANGLADESH                     4              1        0     537
6 months    NIH-Birth        BANGLADESH                     5              0       39     537
6 months    NIH-Birth        BANGLADESH                     5              1        1     537
6 months    NIH-Birth        BANGLADESH                     6              0       39     537
6 months    NIH-Birth        BANGLADESH                     6              1        0     537
6 months    NIH-Birth        BANGLADESH                     7              0       45     537
6 months    NIH-Birth        BANGLADESH                     7              1        0     537
6 months    NIH-Birth        BANGLADESH                     8              0       38     537
6 months    NIH-Birth        BANGLADESH                     8              1        0     537
6 months    NIH-Birth        BANGLADESH                     9              0       30     537
6 months    NIH-Birth        BANGLADESH                     9              1        0     537
6 months    NIH-Birth        BANGLADESH                     10             0       52     537
6 months    NIH-Birth        BANGLADESH                     10             1        0     537
6 months    NIH-Birth        BANGLADESH                     11             0       49     537
6 months    NIH-Birth        BANGLADESH                     11             1        0     537
6 months    NIH-Birth        BANGLADESH                     12             0       48     537
6 months    NIH-Birth        BANGLADESH                     12             1        2     537
6 months    PROBIT           BELARUS                        1              0     1101   15757
6 months    PROBIT           BELARUS                        1              1        0   15757
6 months    PROBIT           BELARUS                        2              0      949   15757
6 months    PROBIT           BELARUS                        2              1        1   15757
6 months    PROBIT           BELARUS                        3              0     1114   15757
6 months    PROBIT           BELARUS                        3              1        0   15757
6 months    PROBIT           BELARUS                        4              0     1070   15757
6 months    PROBIT           BELARUS                        4              1        0   15757
6 months    PROBIT           BELARUS                        5              0     1096   15757
6 months    PROBIT           BELARUS                        5              1        0   15757
6 months    PROBIT           BELARUS                        6              0     1120   15757
6 months    PROBIT           BELARUS                        6              1        0   15757
6 months    PROBIT           BELARUS                        7              0     1364   15757
6 months    PROBIT           BELARUS                        7              1        2   15757
6 months    PROBIT           BELARUS                        8              0     1496   15757
6 months    PROBIT           BELARUS                        8              1        2   15757
6 months    PROBIT           BELARUS                        9              0     1480   15757
6 months    PROBIT           BELARUS                        9              1        1   15757
6 months    PROBIT           BELARUS                        10             0     1668   15757
6 months    PROBIT           BELARUS                        10             1        1   15757
6 months    PROBIT           BELARUS                        11             0     1588   15757
6 months    PROBIT           BELARUS                        11             1        1   15757
6 months    PROBIT           BELARUS                        12             0     1702   15757
6 months    PROBIT           BELARUS                        12             1        1   15757
6 months    ResPak           PAKISTAN                       1              0        2     239
6 months    ResPak           PAKISTAN                       1              1        0     239
6 months    ResPak           PAKISTAN                       2              0        8     239
6 months    ResPak           PAKISTAN                       2              1        0     239
6 months    ResPak           PAKISTAN                       3              0       10     239
6 months    ResPak           PAKISTAN                       3              1        0     239
6 months    ResPak           PAKISTAN                       4              0       20     239
6 months    ResPak           PAKISTAN                       4              1        0     239
6 months    ResPak           PAKISTAN                       5              0       26     239
6 months    ResPak           PAKISTAN                       5              1        4     239
6 months    ResPak           PAKISTAN                       6              0       38     239
6 months    ResPak           PAKISTAN                       6              1        1     239
6 months    ResPak           PAKISTAN                       7              0       42     239
6 months    ResPak           PAKISTAN                       7              1        1     239
6 months    ResPak           PAKISTAN                       8              0       25     239
6 months    ResPak           PAKISTAN                       8              1        1     239
6 months    ResPak           PAKISTAN                       9              0       35     239
6 months    ResPak           PAKISTAN                       9              1        2     239
6 months    ResPak           PAKISTAN                       10             0       15     239
6 months    ResPak           PAKISTAN                       10             1        0     239
6 months    ResPak           PAKISTAN                       11             0        6     239
6 months    ResPak           PAKISTAN                       11             1        0     239
6 months    ResPak           PAKISTAN                       12             0        3     239
6 months    ResPak           PAKISTAN                       12             1        0     239
6 months    SAS-CompFeed     INDIA                          1              0       79    1334
6 months    SAS-CompFeed     INDIA                          1              1        6    1334
6 months    SAS-CompFeed     INDIA                          2              0       77    1334
6 months    SAS-CompFeed     INDIA                          2              1        4    1334
6 months    SAS-CompFeed     INDIA                          3              0       76    1334
6 months    SAS-CompFeed     INDIA                          3              1        4    1334
6 months    SAS-CompFeed     INDIA                          4              0       73    1334
6 months    SAS-CompFeed     INDIA                          4              1        2    1334
6 months    SAS-CompFeed     INDIA                          5              0       76    1334
6 months    SAS-CompFeed     INDIA                          5              1        0    1334
6 months    SAS-CompFeed     INDIA                          6              0      100    1334
6 months    SAS-CompFeed     INDIA                          6              1        2    1334
6 months    SAS-CompFeed     INDIA                          7              0      114    1334
6 months    SAS-CompFeed     INDIA                          7              1        1    1334
6 months    SAS-CompFeed     INDIA                          8              0      151    1334
6 months    SAS-CompFeed     INDIA                          8              1        1    1334
6 months    SAS-CompFeed     INDIA                          9              0      161    1334
6 months    SAS-CompFeed     INDIA                          9              1        4    1334
6 months    SAS-CompFeed     INDIA                          10             0      143    1334
6 months    SAS-CompFeed     INDIA                          10             1        5    1334
6 months    SAS-CompFeed     INDIA                          11             0      117    1334
6 months    SAS-CompFeed     INDIA                          11             1        9    1334
6 months    SAS-CompFeed     INDIA                          12             0      124    1334
6 months    SAS-CompFeed     INDIA                          12             1        5    1334
6 months    SAS-FoodSuppl    INDIA                          1              0       58     380
6 months    SAS-FoodSuppl    INDIA                          1              1        3     380
6 months    SAS-FoodSuppl    INDIA                          2              0       37     380
6 months    SAS-FoodSuppl    INDIA                          2              1        0     380
6 months    SAS-FoodSuppl    INDIA                          3              0       33     380
6 months    SAS-FoodSuppl    INDIA                          3              1        3     380
6 months    SAS-FoodSuppl    INDIA                          4              0       23     380
6 months    SAS-FoodSuppl    INDIA                          4              1        3     380
6 months    SAS-FoodSuppl    INDIA                          5              0       27     380
6 months    SAS-FoodSuppl    INDIA                          5              1        2     380
6 months    SAS-FoodSuppl    INDIA                          6              0       29     380
6 months    SAS-FoodSuppl    INDIA                          6              1        2     380
6 months    SAS-FoodSuppl    INDIA                          7              0       16     380
6 months    SAS-FoodSuppl    INDIA                          7              1        0     380
6 months    SAS-FoodSuppl    INDIA                          8              0        0     380
6 months    SAS-FoodSuppl    INDIA                          8              1        0     380
6 months    SAS-FoodSuppl    INDIA                          9              0       12     380
6 months    SAS-FoodSuppl    INDIA                          9              1        0     380
6 months    SAS-FoodSuppl    INDIA                          10             0       23     380
6 months    SAS-FoodSuppl    INDIA                          10             1        3     380
6 months    SAS-FoodSuppl    INDIA                          11             0       44     380
6 months    SAS-FoodSuppl    INDIA                          11             1        0     380
6 months    SAS-FoodSuppl    INDIA                          12             0       59     380
6 months    SAS-FoodSuppl    INDIA                          12             1        3     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      198    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        1    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0      137    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1        0    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              0      150    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              1        1    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              0      138    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              1        0    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              0      160    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              1        1    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              0      142    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              1        0    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              0      144    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              1        1    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              0      174    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              1        0    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              0      195    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              1        3    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             0      195    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             1        0    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             0      186    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             1        1    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             0      197    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             1        4    2028
6 months    ZVITAMBO         ZIMBABWE                       1              0      805    8505
6 months    ZVITAMBO         ZIMBABWE                       1              1       11    8505
6 months    ZVITAMBO         ZIMBABWE                       2              0      590    8505
6 months    ZVITAMBO         ZIMBABWE                       2              1        8    8505
6 months    ZVITAMBO         ZIMBABWE                       3              0      712    8505
6 months    ZVITAMBO         ZIMBABWE                       3              1        8    8505
6 months    ZVITAMBO         ZIMBABWE                       4              0      664    8505
6 months    ZVITAMBO         ZIMBABWE                       4              1        5    8505
6 months    ZVITAMBO         ZIMBABWE                       5              0      616    8505
6 months    ZVITAMBO         ZIMBABWE                       5              1        5    8505
6 months    ZVITAMBO         ZIMBABWE                       6              0      658    8505
6 months    ZVITAMBO         ZIMBABWE                       6              1       12    8505
6 months    ZVITAMBO         ZIMBABWE                       7              0      659    8505
6 months    ZVITAMBO         ZIMBABWE                       7              1        4    8505
6 months    ZVITAMBO         ZIMBABWE                       8              0      753    8505
6 months    ZVITAMBO         ZIMBABWE                       8              1        6    8505
6 months    ZVITAMBO         ZIMBABWE                       9              0      780    8505
6 months    ZVITAMBO         ZIMBABWE                       9              1        9    8505
6 months    ZVITAMBO         ZIMBABWE                       10             0      615    8505
6 months    ZVITAMBO         ZIMBABWE                       10             1        2    8505
6 months    ZVITAMBO         ZIMBABWE                       11             0      740    8505
6 months    ZVITAMBO         ZIMBABWE                       11             1        5    8505
6 months    ZVITAMBO         ZIMBABWE                       12             0      834    8505
6 months    ZVITAMBO         ZIMBABWE                       12             1        4    8505
24 months   CMC-V-BCS-2002   INDIA                          1              0       28     372
24 months   CMC-V-BCS-2002   INDIA                          1              1        0     372
24 months   CMC-V-BCS-2002   INDIA                          2              0       24     372
24 months   CMC-V-BCS-2002   INDIA                          2              1        0     372
24 months   CMC-V-BCS-2002   INDIA                          3              0       26     372
24 months   CMC-V-BCS-2002   INDIA                          3              1        0     372
24 months   CMC-V-BCS-2002   INDIA                          4              0       29     372
24 months   CMC-V-BCS-2002   INDIA                          4              1        0     372
24 months   CMC-V-BCS-2002   INDIA                          5              0       43     372
24 months   CMC-V-BCS-2002   INDIA                          5              1        0     372
24 months   CMC-V-BCS-2002   INDIA                          6              0       35     372
24 months   CMC-V-BCS-2002   INDIA                          6              1        2     372
24 months   CMC-V-BCS-2002   INDIA                          7              0       33     372
24 months   CMC-V-BCS-2002   INDIA                          7              1        0     372
24 months   CMC-V-BCS-2002   INDIA                          8              0       40     372
24 months   CMC-V-BCS-2002   INDIA                          8              1        1     372
24 months   CMC-V-BCS-2002   INDIA                          9              0       22     372
24 months   CMC-V-BCS-2002   INDIA                          9              1        0     372
24 months   CMC-V-BCS-2002   INDIA                          10             0       19     372
24 months   CMC-V-BCS-2002   INDIA                          10             1        0     372
24 months   CMC-V-BCS-2002   INDIA                          11             0       41     372
24 months   CMC-V-BCS-2002   INDIA                          11             1        0     372
24 months   CMC-V-BCS-2002   INDIA                          12             0       29     372
24 months   CMC-V-BCS-2002   INDIA                          12             1        0     372
24 months   CMIN             BANGLADESH                     1              0       26     243
24 months   CMIN             BANGLADESH                     1              1        1     243
24 months   CMIN             BANGLADESH                     2              0       31     243
24 months   CMIN             BANGLADESH                     2              1        0     243
24 months   CMIN             BANGLADESH                     3              0       19     243
24 months   CMIN             BANGLADESH                     3              1        0     243
24 months   CMIN             BANGLADESH                     4              0       18     243
24 months   CMIN             BANGLADESH                     4              1        0     243
24 months   CMIN             BANGLADESH                     5              0       19     243
24 months   CMIN             BANGLADESH                     5              1        0     243
24 months   CMIN             BANGLADESH                     6              0       22     243
24 months   CMIN             BANGLADESH                     6              1        0     243
24 months   CMIN             BANGLADESH                     7              0       12     243
24 months   CMIN             BANGLADESH                     7              1        0     243
24 months   CMIN             BANGLADESH                     8              0       13     243
24 months   CMIN             BANGLADESH                     8              1        0     243
24 months   CMIN             BANGLADESH                     9              0       18     243
24 months   CMIN             BANGLADESH                     9              1        0     243
24 months   CMIN             BANGLADESH                     10             0       18     243
24 months   CMIN             BANGLADESH                     10             1        1     243
24 months   CMIN             BANGLADESH                     11             0        2     243
24 months   CMIN             BANGLADESH                     11             1        0     243
24 months   CMIN             BANGLADESH                     12             0       43     243
24 months   CMIN             BANGLADESH                     12             1        0     243
24 months   CONTENT          PERU                           1              0        8     164
24 months   CONTENT          PERU                           1              1        0     164
24 months   CONTENT          PERU                           2              0       10     164
24 months   CONTENT          PERU                           2              1        0     164
24 months   CONTENT          PERU                           3              0       20     164
24 months   CONTENT          PERU                           3              1        0     164
24 months   CONTENT          PERU                           4              0       13     164
24 months   CONTENT          PERU                           4              1        0     164
24 months   CONTENT          PERU                           5              0       22     164
24 months   CONTENT          PERU                           5              1        0     164
24 months   CONTENT          PERU                           6              0       11     164
24 months   CONTENT          PERU                           6              1        0     164
24 months   CONTENT          PERU                           7              0       13     164
24 months   CONTENT          PERU                           7              1        0     164
24 months   CONTENT          PERU                           8              0       23     164
24 months   CONTENT          PERU                           8              1        0     164
24 months   CONTENT          PERU                           9              0       11     164
24 months   CONTENT          PERU                           9              1        0     164
24 months   CONTENT          PERU                           10             0       12     164
24 months   CONTENT          PERU                           10             1        0     164
24 months   CONTENT          PERU                           11             0       17     164
24 months   CONTENT          PERU                           11             1        0     164
24 months   CONTENT          PERU                           12             0        4     164
24 months   CONTENT          PERU                           12             1        0     164
24 months   EE               PAKISTAN                       1              0       28     168
24 months   EE               PAKISTAN                       1              1        1     168
24 months   EE               PAKISTAN                       2              0        2     168
24 months   EE               PAKISTAN                       2              1        0     168
24 months   EE               PAKISTAN                       3              0        2     168
24 months   EE               PAKISTAN                       3              1        0     168
24 months   EE               PAKISTAN                       4              0        0     168
24 months   EE               PAKISTAN                       4              1        0     168
24 months   EE               PAKISTAN                       5              0        0     168
24 months   EE               PAKISTAN                       5              1        0     168
24 months   EE               PAKISTAN                       6              0        0     168
24 months   EE               PAKISTAN                       6              1        0     168
24 months   EE               PAKISTAN                       7              0        0     168
24 months   EE               PAKISTAN                       7              1        0     168
24 months   EE               PAKISTAN                       8              0        0     168
24 months   EE               PAKISTAN                       8              1        0     168
24 months   EE               PAKISTAN                       9              0        0     168
24 months   EE               PAKISTAN                       9              1        0     168
24 months   EE               PAKISTAN                       10             0        0     168
24 months   EE               PAKISTAN                       10             1        0     168
24 months   EE               PAKISTAN                       11             0       55     168
24 months   EE               PAKISTAN                       11             1        2     168
24 months   EE               PAKISTAN                       12             0       77     168
24 months   EE               PAKISTAN                       12             1        1     168
24 months   GMS-Nepal        NEPAL                          1              0        0     487
24 months   GMS-Nepal        NEPAL                          1              1        0     487
24 months   GMS-Nepal        NEPAL                          2              0        0     487
24 months   GMS-Nepal        NEPAL                          2              1        0     487
24 months   GMS-Nepal        NEPAL                          3              0        0     487
24 months   GMS-Nepal        NEPAL                          3              1        0     487
24 months   GMS-Nepal        NEPAL                          4              0        0     487
24 months   GMS-Nepal        NEPAL                          4              1        0     487
24 months   GMS-Nepal        NEPAL                          5              0        0     487
24 months   GMS-Nepal        NEPAL                          5              1        0     487
24 months   GMS-Nepal        NEPAL                          6              0       66     487
24 months   GMS-Nepal        NEPAL                          6              1        6     487
24 months   GMS-Nepal        NEPAL                          7              0      195     487
24 months   GMS-Nepal        NEPAL                          7              1        5     487
24 months   GMS-Nepal        NEPAL                          8              0      211     487
24 months   GMS-Nepal        NEPAL                          8              1        4     487
24 months   GMS-Nepal        NEPAL                          9              0        0     487
24 months   GMS-Nepal        NEPAL                          9              1        0     487
24 months   GMS-Nepal        NEPAL                          10             0        0     487
24 months   GMS-Nepal        NEPAL                          10             1        0     487
24 months   GMS-Nepal        NEPAL                          11             0        0     487
24 months   GMS-Nepal        NEPAL                          11             1        0     487
24 months   GMS-Nepal        NEPAL                          12             0        0     487
24 months   GMS-Nepal        NEPAL                          12             1        0     487
24 months   IRC              INDIA                          1              0       34     409
24 months   IRC              INDIA                          1              1        1     409
24 months   IRC              INDIA                          2              0       30     409
24 months   IRC              INDIA                          2              1        0     409
24 months   IRC              INDIA                          3              0       29     409
24 months   IRC              INDIA                          3              1        0     409
24 months   IRC              INDIA                          4              0       24     409
24 months   IRC              INDIA                          4              1        0     409
24 months   IRC              INDIA                          5              0       20     409
24 months   IRC              INDIA                          5              1        1     409
24 months   IRC              INDIA                          6              0       34     409
24 months   IRC              INDIA                          6              1        1     409
24 months   IRC              INDIA                          7              0       36     409
24 months   IRC              INDIA                          7              1        0     409
24 months   IRC              INDIA                          8              0       39     409
24 months   IRC              INDIA                          8              1        2     409
24 months   IRC              INDIA                          9              0       30     409
24 months   IRC              INDIA                          9              1        0     409
24 months   IRC              INDIA                          10             0       38     409
24 months   IRC              INDIA                          10             1        0     409
24 months   IRC              INDIA                          11             0       41     409
24 months   IRC              INDIA                          11             1        0     409
24 months   IRC              INDIA                          12             0       49     409
24 months   IRC              INDIA                          12             1        0     409
24 months   Keneba           GAMBIA                         1              0      146    1726
24 months   Keneba           GAMBIA                         1              1        2    1726
24 months   Keneba           GAMBIA                         2              0      158    1726
24 months   Keneba           GAMBIA                         2              1        2    1726
24 months   Keneba           GAMBIA                         3              0      159    1726
24 months   Keneba           GAMBIA                         3              1        0    1726
24 months   Keneba           GAMBIA                         4              0      173    1726
24 months   Keneba           GAMBIA                         4              1        2    1726
24 months   Keneba           GAMBIA                         5              0      177    1726
24 months   Keneba           GAMBIA                         5              1        5    1726
24 months   Keneba           GAMBIA                         6              0      131    1726
24 months   Keneba           GAMBIA                         6              1        1    1726
24 months   Keneba           GAMBIA                         7              0      101    1726
24 months   Keneba           GAMBIA                         7              1        0    1726
24 months   Keneba           GAMBIA                         8              0       90    1726
24 months   Keneba           GAMBIA                         8              1        4    1726
24 months   Keneba           GAMBIA                         9              0      133    1726
24 months   Keneba           GAMBIA                         9              1        2    1726
24 months   Keneba           GAMBIA                         10             0      145    1726
24 months   Keneba           GAMBIA                         10             1        5    1726
24 months   Keneba           GAMBIA                         11             0      177    1726
24 months   Keneba           GAMBIA                         11             1        1    1726
24 months   Keneba           GAMBIA                         12             0      106    1726
24 months   Keneba           GAMBIA                         12             1        6    1726
24 months   LCNI-5           MALAWI                         1              0       40     563
24 months   LCNI-5           MALAWI                         1              1        0     563
24 months   LCNI-5           MALAWI                         2              0       86     563
24 months   LCNI-5           MALAWI                         2              1        0     563
24 months   LCNI-5           MALAWI                         3              0       67     563
24 months   LCNI-5           MALAWI                         3              1        0     563
24 months   LCNI-5           MALAWI                         4              0       74     563
24 months   LCNI-5           MALAWI                         4              1        0     563
24 months   LCNI-5           MALAWI                         5              0       62     563
24 months   LCNI-5           MALAWI                         5              1        0     563
24 months   LCNI-5           MALAWI                         6              0       63     563
24 months   LCNI-5           MALAWI                         6              1        1     563
24 months   LCNI-5           MALAWI                         7              0       39     563
24 months   LCNI-5           MALAWI                         7              1        0     563
24 months   LCNI-5           MALAWI                         8              0       27     563
24 months   LCNI-5           MALAWI                         8              1        0     563
24 months   LCNI-5           MALAWI                         9              0       20     563
24 months   LCNI-5           MALAWI                         9              1        0     563
24 months   LCNI-5           MALAWI                         10             0       25     563
24 months   LCNI-5           MALAWI                         10             1        0     563
24 months   LCNI-5           MALAWI                         11             0       35     563
24 months   LCNI-5           MALAWI                         11             1        0     563
24 months   LCNI-5           MALAWI                         12             0       24     563
24 months   LCNI-5           MALAWI                         12             1        0     563
24 months   MAL-ED           BANGLADESH                     1              0       17     212
24 months   MAL-ED           BANGLADESH                     1              1        0     212
24 months   MAL-ED           BANGLADESH                     2              0       17     212
24 months   MAL-ED           BANGLADESH                     2              1        0     212
24 months   MAL-ED           BANGLADESH                     3              0       19     212
24 months   MAL-ED           BANGLADESH                     3              1        0     212
24 months   MAL-ED           BANGLADESH                     4              0       21     212
24 months   MAL-ED           BANGLADESH                     4              1        0     212
24 months   MAL-ED           BANGLADESH                     5              0       15     212
24 months   MAL-ED           BANGLADESH                     5              1        0     212
24 months   MAL-ED           BANGLADESH                     6              0        9     212
24 months   MAL-ED           BANGLADESH                     6              1        0     212
24 months   MAL-ED           BANGLADESH                     7              0       17     212
24 months   MAL-ED           BANGLADESH                     7              1        0     212
24 months   MAL-ED           BANGLADESH                     8              0       24     212
24 months   MAL-ED           BANGLADESH                     8              1        0     212
24 months   MAL-ED           BANGLADESH                     9              0       18     212
24 months   MAL-ED           BANGLADESH                     9              1        0     212
24 months   MAL-ED           BANGLADESH                     10             0       20     212
24 months   MAL-ED           BANGLADESH                     10             1        0     212
24 months   MAL-ED           BANGLADESH                     11             0        9     212
24 months   MAL-ED           BANGLADESH                     11             1        0     212
24 months   MAL-ED           BANGLADESH                     12             0       26     212
24 months   MAL-ED           BANGLADESH                     12             1        0     212
24 months   MAL-ED           BRAZIL                         1              0       14     169
24 months   MAL-ED           BRAZIL                         1              1        0     169
24 months   MAL-ED           BRAZIL                         2              0       19     169
24 months   MAL-ED           BRAZIL                         2              1        0     169
24 months   MAL-ED           BRAZIL                         3              0       11     169
24 months   MAL-ED           BRAZIL                         3              1        0     169
24 months   MAL-ED           BRAZIL                         4              0       11     169
24 months   MAL-ED           BRAZIL                         4              1        0     169
24 months   MAL-ED           BRAZIL                         5              0       15     169
24 months   MAL-ED           BRAZIL                         5              1        0     169
24 months   MAL-ED           BRAZIL                         6              0        9     169
24 months   MAL-ED           BRAZIL                         6              1        0     169
24 months   MAL-ED           BRAZIL                         7              0       10     169
24 months   MAL-ED           BRAZIL                         7              1        0     169
24 months   MAL-ED           BRAZIL                         8              0       12     169
24 months   MAL-ED           BRAZIL                         8              1        0     169
24 months   MAL-ED           BRAZIL                         9              0       18     169
24 months   MAL-ED           BRAZIL                         9              1        0     169
24 months   MAL-ED           BRAZIL                         10             0       21     169
24 months   MAL-ED           BRAZIL                         10             1        0     169
24 months   MAL-ED           BRAZIL                         11             0       12     169
24 months   MAL-ED           BRAZIL                         11             1        0     169
24 months   MAL-ED           BRAZIL                         12             0       16     169
24 months   MAL-ED           BRAZIL                         12             1        1     169
24 months   MAL-ED           INDIA                          1              0       15     227
24 months   MAL-ED           INDIA                          1              1        0     227
24 months   MAL-ED           INDIA                          2              0       23     227
24 months   MAL-ED           INDIA                          2              1        0     227
24 months   MAL-ED           INDIA                          3              0       19     227
24 months   MAL-ED           INDIA                          3              1        0     227
24 months   MAL-ED           INDIA                          4              0       17     227
24 months   MAL-ED           INDIA                          4              1        0     227
24 months   MAL-ED           INDIA                          5              0        7     227
24 months   MAL-ED           INDIA                          5              1        0     227
24 months   MAL-ED           INDIA                          6              0       15     227
24 months   MAL-ED           INDIA                          6              1        2     227
24 months   MAL-ED           INDIA                          7              0       21     227
24 months   MAL-ED           INDIA                          7              1        0     227
24 months   MAL-ED           INDIA                          8              0       20     227
24 months   MAL-ED           INDIA                          8              1        0     227
24 months   MAL-ED           INDIA                          9              0       20     227
24 months   MAL-ED           INDIA                          9              1        0     227
24 months   MAL-ED           INDIA                          10             0       23     227
24 months   MAL-ED           INDIA                          10             1        0     227
24 months   MAL-ED           INDIA                          11             0       24     227
24 months   MAL-ED           INDIA                          11             1        0     227
24 months   MAL-ED           INDIA                          12             0       21     227
24 months   MAL-ED           INDIA                          12             1        0     227
24 months   MAL-ED           NEPAL                          1              0       19     228
24 months   MAL-ED           NEPAL                          1              1        0     228
24 months   MAL-ED           NEPAL                          2              0       18     228
24 months   MAL-ED           NEPAL                          2              1        0     228
24 months   MAL-ED           NEPAL                          3              0       19     228
24 months   MAL-ED           NEPAL                          3              1        0     228
24 months   MAL-ED           NEPAL                          4              0       20     228
24 months   MAL-ED           NEPAL                          4              1        0     228
24 months   MAL-ED           NEPAL                          5              0       17     228
24 months   MAL-ED           NEPAL                          5              1        0     228
24 months   MAL-ED           NEPAL                          6              0       20     228
24 months   MAL-ED           NEPAL                          6              1        0     228
24 months   MAL-ED           NEPAL                          7              0       19     228
24 months   MAL-ED           NEPAL                          7              1        0     228
24 months   MAL-ED           NEPAL                          8              0       18     228
24 months   MAL-ED           NEPAL                          8              1        0     228
24 months   MAL-ED           NEPAL                          9              0       19     228
24 months   MAL-ED           NEPAL                          9              1        0     228
24 months   MAL-ED           NEPAL                          10             0       20     228
24 months   MAL-ED           NEPAL                          10             1        0     228
24 months   MAL-ED           NEPAL                          11             0       19     228
24 months   MAL-ED           NEPAL                          11             1        0     228
24 months   MAL-ED           NEPAL                          12             0       20     228
24 months   MAL-ED           NEPAL                          12             1        0     228
24 months   MAL-ED           PERU                           1              0       26     201
24 months   MAL-ED           PERU                           1              1        0     201
24 months   MAL-ED           PERU                           2              0       23     201
24 months   MAL-ED           PERU                           2              1        0     201
24 months   MAL-ED           PERU                           3              0       15     201
24 months   MAL-ED           PERU                           3              1        0     201
24 months   MAL-ED           PERU                           4              0       10     201
24 months   MAL-ED           PERU                           4              1        0     201
24 months   MAL-ED           PERU                           5              0       18     201
24 months   MAL-ED           PERU                           5              1        0     201
24 months   MAL-ED           PERU                           6              0       14     201
24 months   MAL-ED           PERU                           6              1        0     201
24 months   MAL-ED           PERU                           7              0       14     201
24 months   MAL-ED           PERU                           7              1        0     201
24 months   MAL-ED           PERU                           8              0       11     201
24 months   MAL-ED           PERU                           8              1        1     201
24 months   MAL-ED           PERU                           9              0       21     201
24 months   MAL-ED           PERU                           9              1        0     201
24 months   MAL-ED           PERU                           10             0       15     201
24 months   MAL-ED           PERU                           10             1        0     201
24 months   MAL-ED           PERU                           11             0       20     201
24 months   MAL-ED           PERU                           11             1        1     201
24 months   MAL-ED           PERU                           12             0       12     201
24 months   MAL-ED           PERU                           12             1        0     201
24 months   MAL-ED           SOUTH AFRICA                   1              0       29     238
24 months   MAL-ED           SOUTH AFRICA                   1              1        0     238
24 months   MAL-ED           SOUTH AFRICA                   2              0       30     238
24 months   MAL-ED           SOUTH AFRICA                   2              1        0     238
24 months   MAL-ED           SOUTH AFRICA                   3              0       16     238
24 months   MAL-ED           SOUTH AFRICA                   3              1        0     238
24 months   MAL-ED           SOUTH AFRICA                   4              0       12     238
24 months   MAL-ED           SOUTH AFRICA                   4              1        0     238
24 months   MAL-ED           SOUTH AFRICA                   5              0       10     238
24 months   MAL-ED           SOUTH AFRICA                   5              1        0     238
24 months   MAL-ED           SOUTH AFRICA                   6              0       15     238
24 months   MAL-ED           SOUTH AFRICA                   6              1        0     238
24 months   MAL-ED           SOUTH AFRICA                   7              0       25     238
24 months   MAL-ED           SOUTH AFRICA                   7              1        0     238
24 months   MAL-ED           SOUTH AFRICA                   8              0        7     238
24 months   MAL-ED           SOUTH AFRICA                   8              1        0     238
24 months   MAL-ED           SOUTH AFRICA                   9              0       17     238
24 months   MAL-ED           SOUTH AFRICA                   9              1        0     238
24 months   MAL-ED           SOUTH AFRICA                   10             0       22     238
24 months   MAL-ED           SOUTH AFRICA                   10             1        0     238
24 months   MAL-ED           SOUTH AFRICA                   11             0       27     238
24 months   MAL-ED           SOUTH AFRICA                   11             1        0     238
24 months   MAL-ED           SOUTH AFRICA                   12             0       28     238
24 months   MAL-ED           SOUTH AFRICA                   12             1        0     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              0       18     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              0       19     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              0       22     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              0        8     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4              1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              0       14     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              0       14     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              0       28     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              0       12     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              0       15     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             0       17     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             0       21     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             0       26     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             1        0     214
24 months   NIH-Birth        BANGLADESH                     1              0       42     428
24 months   NIH-Birth        BANGLADESH                     1              1        0     428
24 months   NIH-Birth        BANGLADESH                     2              0       36     428
24 months   NIH-Birth        BANGLADESH                     2              1        0     428
24 months   NIH-Birth        BANGLADESH                     3              0       40     428
24 months   NIH-Birth        BANGLADESH                     3              1        1     428
24 months   NIH-Birth        BANGLADESH                     4              0       33     428
24 months   NIH-Birth        BANGLADESH                     4              1        1     428
24 months   NIH-Birth        BANGLADESH                     5              0       33     428
24 months   NIH-Birth        BANGLADESH                     5              1        1     428
24 months   NIH-Birth        BANGLADESH                     6              0       30     428
24 months   NIH-Birth        BANGLADESH                     6              1        0     428
24 months   NIH-Birth        BANGLADESH                     7              0       36     428
24 months   NIH-Birth        BANGLADESH                     7              1        1     428
24 months   NIH-Birth        BANGLADESH                     8              0       30     428
24 months   NIH-Birth        BANGLADESH                     8              1        0     428
24 months   NIH-Birth        BANGLADESH                     9              0       18     428
24 months   NIH-Birth        BANGLADESH                     9              1        1     428
24 months   NIH-Birth        BANGLADESH                     10             0       38     428
24 months   NIH-Birth        BANGLADESH                     10             1        2     428
24 months   NIH-Birth        BANGLADESH                     11             0       38     428
24 months   NIH-Birth        BANGLADESH                     11             1        2     428
24 months   NIH-Birth        BANGLADESH                     12             0       44     428
24 months   NIH-Birth        BANGLADESH                     12             1        1     428
24 months   PROBIT           BELARUS                        1              0      263    3970
24 months   PROBIT           BELARUS                        1              1        1    3970
24 months   PROBIT           BELARUS                        2              0      209    3970
24 months   PROBIT           BELARUS                        2              1        1    3970
24 months   PROBIT           BELARUS                        3              0      319    3970
24 months   PROBIT           BELARUS                        3              1        1    3970
24 months   PROBIT           BELARUS                        4              0      322    3970
24 months   PROBIT           BELARUS                        4              1        0    3970
24 months   PROBIT           BELARUS                        5              0      301    3970
24 months   PROBIT           BELARUS                        5              1        0    3970
24 months   PROBIT           BELARUS                        6              0      264    3970
24 months   PROBIT           BELARUS                        6              1        0    3970
24 months   PROBIT           BELARUS                        7              0      363    3970
24 months   PROBIT           BELARUS                        7              1        1    3970
24 months   PROBIT           BELARUS                        8              0      346    3970
24 months   PROBIT           BELARUS                        8              1        0    3970
24 months   PROBIT           BELARUS                        9              0      374    3970
24 months   PROBIT           BELARUS                        9              1        1    3970
24 months   PROBIT           BELARUS                        10             0      388    3970
24 months   PROBIT           BELARUS                        10             1        1    3970
24 months   PROBIT           BELARUS                        11             0      386    3970
24 months   PROBIT           BELARUS                        11             1        0    3970
24 months   PROBIT           BELARUS                        12             0      428    3970
24 months   PROBIT           BELARUS                        12             1        1    3970
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
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             1        0       6
24 months   ZVITAMBO         ZIMBABWE                       1              0       49     433
24 months   ZVITAMBO         ZIMBABWE                       1              1        2     433
24 months   ZVITAMBO         ZIMBABWE                       2              0       57     433
24 months   ZVITAMBO         ZIMBABWE                       2              1        3     433
24 months   ZVITAMBO         ZIMBABWE                       3              0       50     433
24 months   ZVITAMBO         ZIMBABWE                       3              1        6     433
24 months   ZVITAMBO         ZIMBABWE                       4              0       43     433
24 months   ZVITAMBO         ZIMBABWE                       4              1        3     433
24 months   ZVITAMBO         ZIMBABWE                       5              0       43     433
24 months   ZVITAMBO         ZIMBABWE                       5              1        6     433
24 months   ZVITAMBO         ZIMBABWE                       6              0       41     433
24 months   ZVITAMBO         ZIMBABWE                       6              1        3     433
24 months   ZVITAMBO         ZIMBABWE                       7              0       30     433
24 months   ZVITAMBO         ZIMBABWE                       7              1        2     433
24 months   ZVITAMBO         ZIMBABWE                       8              0       27     433
24 months   ZVITAMBO         ZIMBABWE                       8              1        3     433
24 months   ZVITAMBO         ZIMBABWE                       9              0        2     433
24 months   ZVITAMBO         ZIMBABWE                       9              1        0     433
24 months   ZVITAMBO         ZIMBABWE                       10             0        4     433
24 months   ZVITAMBO         ZIMBABWE                       10             1        0     433
24 months   ZVITAMBO         ZIMBABWE                       11             0       20     433
24 months   ZVITAMBO         ZIMBABWE                       11             1        0     433
24 months   ZVITAMBO         ZIMBABWE                       12             0       36     433
24 months   ZVITAMBO         ZIMBABWE                       12             1        3     433


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
* agecat: 6 months, studyid: PROBIT, country: BELARUS
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




# Results Detail

## Results Plots
![](/tmp/f96ad7b5-bc29-4b08-8c3c-480f1d29cfa2/a00d0e3d-2ec1-4e1f-b0a3-f64b729c999f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f96ad7b5-bc29-4b08-8c3c-480f1d29cfa2/a00d0e3d-2ec1-4e1f-b0a3-f64b729c999f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f96ad7b5-bc29-4b08-8c3c-480f1d29cfa2/a00d0e3d-2ec1-4e1f-b0a3-f64b729c999f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f96ad7b5-bc29-4b08-8c3c-480f1d29cfa2/a00d0e3d-2ec1-4e1f-b0a3-f64b729c999f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat   studyid    country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ---------  ---------  -------------------  ---------------  ----------  ----------  ----------
Birth    PROBIT     BELARUS    1                    NA                0.0783626   0.0254535   0.1312716
Birth    PROBIT     BELARUS    2                    NA                0.0509554   0.0141774   0.0877335
Birth    PROBIT     BELARUS    3                    NA                0.0729167   0.0253949   0.1204385
Birth    PROBIT     BELARUS    4                    NA                0.0575916   0.0231531   0.0920301
Birth    PROBIT     BELARUS    5                    NA                0.0811380   0.0303012   0.1319748
Birth    PROBIT     BELARUS    6                    NA                0.0586481   0.0312371   0.0860591
Birth    PROBIT     BELARUS    7                    NA                0.0815686   0.0473146   0.1158227
Birth    PROBIT     BELARUS    8                    NA                0.0614568   0.0267466   0.0961669
Birth    PROBIT     BELARUS    9                    NA                0.0732265   0.0228061   0.1236470
Birth    PROBIT     BELARUS    10                   NA                0.0628342   0.0341490   0.0915195
Birth    PROBIT     BELARUS    11                   NA                0.0589080   0.0278971   0.0899190
Birth    PROBIT     BELARUS    12                   NA                0.0620462   0.0280872   0.0960052
Birth    ZVITAMBO   ZIMBABWE   1                    NA                0.0525040   0.0400792   0.0649288
Birth    ZVITAMBO   ZIMBABWE   2                    NA                0.0590717   0.0440635   0.0740799
Birth    ZVITAMBO   ZIMBABWE   3                    NA                0.0556604   0.0418582   0.0694626
Birth    ZVITAMBO   ZIMBABWE   4                    NA                0.0531350   0.0388030   0.0674669
Birth    ZVITAMBO   ZIMBABWE   5                    NA                0.0667396   0.0505594   0.0829198
Birth    ZVITAMBO   ZIMBABWE   6                    NA                0.0735435   0.0577318   0.0893551
Birth    ZVITAMBO   ZIMBABWE   7                    NA                0.0792350   0.0632579   0.0952120
Birth    ZVITAMBO   ZIMBABWE   8                    NA                0.0634648   0.0494708   0.0774589
Birth    ZVITAMBO   ZIMBABWE   9                    NA                0.0512618   0.0391230   0.0634006
Birth    ZVITAMBO   ZIMBABWE   10                   NA                0.0630081   0.0478260   0.0781903
Birth    ZVITAMBO   ZIMBABWE   11                   NA                0.0551402   0.0414632   0.0688172
Birth    ZVITAMBO   ZIMBABWE   12                   NA                0.0650888   0.0510312   0.0791463


### Parameter: E(Y)


agecat   studyid    country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ---------  ---------  -------------------  ---------------  ----------  ----------  ----------
Birth    PROBIT     BELARUS    NA                   NA                0.0665123   0.0333611   0.0996634
Birth    ZVITAMBO   ZIMBABWE   NA                   NA                0.0613145   0.0571772   0.0654519


### Parameter: RR


agecat   studyid    country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ---------  ---------  -------------------  ---------------  ----------  ----------  ----------
Birth    PROBIT     BELARUS    1                    1                 1.0000000   1.0000000   1.0000000
Birth    PROBIT     BELARUS    2                    1                 0.6502519   0.4320043   0.9787578
Birth    PROBIT     BELARUS    3                    1                 0.9305037   0.6543668   1.3231679
Birth    PROBIT     BELARUS    4                    1                 0.7349379   0.5184866   1.0417506
Birth    PROBIT     BELARUS    5                    1                 1.0354183   0.6612307   1.6213570
Birth    PROBIT     BELARUS    6                    1                 0.7484199   0.4457021   1.2567417
Birth    PROBIT     BELARUS    7                    1                 1.0409131   0.6035679   1.7951586
Birth    PROBIT     BELARUS    8                    1                 0.7842615   0.4331925   1.4198451
Birth    PROBIT     BELARUS    9                    1                 0.9344581   0.5285747   1.6520127
Birth    PROBIT     BELARUS    10                   1                 0.8018397   0.5033989   1.2772116
Birth    PROBIT     BELARUS    11                   1                 0.7517370   0.5134183   1.1006787
Birth    PROBIT     BELARUS    12                   1                 0.7917837   0.4800629   1.3059151
Birth    ZVITAMBO   ZIMBABWE   1                    1                 1.0000000   1.0000000   1.0000000
Birth    ZVITAMBO   ZIMBABWE   2                    1                 1.1250893   0.7950564   1.5921209
Birth    ZVITAMBO   ZIMBABWE   3                    1                 1.0601161   0.7524723   1.4935383
Birth    ZVITAMBO   ZIMBABWE   4                    1                 1.0120167   0.7068923   1.4488455
Birth    ZVITAMBO   ZIMBABWE   5                    1                 1.2711328   0.9058521   1.7837113
Birth    ZVITAMBO   ZIMBABWE   6                    1                 1.4007200   1.0174107   1.9284410
Birth    ZVITAMBO   ZIMBABWE   7                    1                 1.5091215   1.1058627   2.0594307
Birth    ZVITAMBO   ZIMBABWE   8                    1                 1.2087611   0.8747155   1.6703755
Birth    ZVITAMBO   ZIMBABWE   9                    1                 0.9763407   0.6985702   1.3645603
Birth    ZVITAMBO   ZIMBABWE   10                   1                 1.2000625   0.8561116   1.6821990
Birth    ZVITAMBO   ZIMBABWE   11                   1                 1.0502085   0.7454030   1.4796531
Birth    ZVITAMBO   ZIMBABWE   12                   1                 1.2396905   0.8998540   1.7078687


### Parameter: PAR


agecat   studyid    country    intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------  ---------  ---------  -------------------  ---------------  -----------  -----------  ----------
Birth    PROBIT     BELARUS    1                    NA                -0.0118503   -0.0423189   0.0186183
Birth    ZVITAMBO   ZIMBABWE   1                    NA                 0.0088105   -0.0031018   0.0207228


### Parameter: PAF


agecat   studyid    country    intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------  ---------  ---------  -------------------  ---------------  -----------  -----------  ----------
Birth    PROBIT     BELARUS    1                    NA                -0.1781672   -0.7000306   0.1834982
Birth    ZVITAMBO   ZIMBABWE   1                    NA                 0.1436936   -0.0741233   0.3173403
