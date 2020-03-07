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

**Outcome Variable:** wasted

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

agecat      studyid          country                        month    wasted   n_cell       n
----------  ---------------  -----------------------------  ------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1             0        8      86
Birth       CMC-V-BCS-2002   INDIA                          1             1        1      86
Birth       CMC-V-BCS-2002   INDIA                          2             0        0      86
Birth       CMC-V-BCS-2002   INDIA                          2             1        1      86
Birth       CMC-V-BCS-2002   INDIA                          3             0        6      86
Birth       CMC-V-BCS-2002   INDIA                          3             1        1      86
Birth       CMC-V-BCS-2002   INDIA                          4             0        9      86
Birth       CMC-V-BCS-2002   INDIA                          4             1        0      86
Birth       CMC-V-BCS-2002   INDIA                          5             0        9      86
Birth       CMC-V-BCS-2002   INDIA                          5             1        0      86
Birth       CMC-V-BCS-2002   INDIA                          6             0        9      86
Birth       CMC-V-BCS-2002   INDIA                          6             1        1      86
Birth       CMC-V-BCS-2002   INDIA                          7             0        7      86
Birth       CMC-V-BCS-2002   INDIA                          7             1        0      86
Birth       CMC-V-BCS-2002   INDIA                          8             0        4      86
Birth       CMC-V-BCS-2002   INDIA                          8             1        0      86
Birth       CMC-V-BCS-2002   INDIA                          9             0        6      86
Birth       CMC-V-BCS-2002   INDIA                          9             1        2      86
Birth       CMC-V-BCS-2002   INDIA                          10            0        7      86
Birth       CMC-V-BCS-2002   INDIA                          10            1        1      86
Birth       CMC-V-BCS-2002   INDIA                          11            0        8      86
Birth       CMC-V-BCS-2002   INDIA                          11            1        3      86
Birth       CMC-V-BCS-2002   INDIA                          12            0        2      86
Birth       CMC-V-BCS-2002   INDIA                          12            1        1      86
Birth       CMIN             BANGLADESH                     1             0        0      19
Birth       CMIN             BANGLADESH                     1             1        0      19
Birth       CMIN             BANGLADESH                     2             0        4      19
Birth       CMIN             BANGLADESH                     2             1        0      19
Birth       CMIN             BANGLADESH                     3             0        1      19
Birth       CMIN             BANGLADESH                     3             1        1      19
Birth       CMIN             BANGLADESH                     4             0        0      19
Birth       CMIN             BANGLADESH                     4             1        0      19
Birth       CMIN             BANGLADESH                     5             0        2      19
Birth       CMIN             BANGLADESH                     5             1        1      19
Birth       CMIN             BANGLADESH                     6             0        0      19
Birth       CMIN             BANGLADESH                     6             1        0      19
Birth       CMIN             BANGLADESH                     7             0        0      19
Birth       CMIN             BANGLADESH                     7             1        0      19
Birth       CMIN             BANGLADESH                     8             0        4      19
Birth       CMIN             BANGLADESH                     8             1        1      19
Birth       CMIN             BANGLADESH                     9             0        2      19
Birth       CMIN             BANGLADESH                     9             1        0      19
Birth       CMIN             BANGLADESH                     10            0        1      19
Birth       CMIN             BANGLADESH                     10            1        0      19
Birth       CMIN             BANGLADESH                     11            0        1      19
Birth       CMIN             BANGLADESH                     11            1        1      19
Birth       CMIN             BANGLADESH                     12            0        0      19
Birth       CMIN             BANGLADESH                     12            1        0      19
Birth       CONTENT          PERU                           1             0        0       2
Birth       CONTENT          PERU                           1             1        0       2
Birth       CONTENT          PERU                           2             0        0       2
Birth       CONTENT          PERU                           2             1        0       2
Birth       CONTENT          PERU                           3             0        0       2
Birth       CONTENT          PERU                           3             1        0       2
Birth       CONTENT          PERU                           4             0        0       2
Birth       CONTENT          PERU                           4             1        0       2
Birth       CONTENT          PERU                           5             0        2       2
Birth       CONTENT          PERU                           5             1        0       2
Birth       CONTENT          PERU                           6             0        0       2
Birth       CONTENT          PERU                           6             1        0       2
Birth       CONTENT          PERU                           7             0        0       2
Birth       CONTENT          PERU                           7             1        0       2
Birth       CONTENT          PERU                           8             0        0       2
Birth       CONTENT          PERU                           8             1        0       2
Birth       CONTENT          PERU                           9             0        0       2
Birth       CONTENT          PERU                           9             1        0       2
Birth       CONTENT          PERU                           10            0        0       2
Birth       CONTENT          PERU                           10            1        0       2
Birth       CONTENT          PERU                           11            0        0       2
Birth       CONTENT          PERU                           11            1        0       2
Birth       CONTENT          PERU                           12            0        0       2
Birth       CONTENT          PERU                           12            1        0       2
Birth       EE               PAKISTAN                       1             0       30     177
Birth       EE               PAKISTAN                       1             1        4     177
Birth       EE               PAKISTAN                       2             0       38     177
Birth       EE               PAKISTAN                       2             1        1     177
Birth       EE               PAKISTAN                       3             0       18     177
Birth       EE               PAKISTAN                       3             1        1     177
Birth       EE               PAKISTAN                       4             0        7     177
Birth       EE               PAKISTAN                       4             1        1     177
Birth       EE               PAKISTAN                       5             0        0     177
Birth       EE               PAKISTAN                       5             1        0     177
Birth       EE               PAKISTAN                       6             0        0     177
Birth       EE               PAKISTAN                       6             1        0     177
Birth       EE               PAKISTAN                       7             0        0     177
Birth       EE               PAKISTAN                       7             1        0     177
Birth       EE               PAKISTAN                       8             0        0     177
Birth       EE               PAKISTAN                       8             1        0     177
Birth       EE               PAKISTAN                       9             0        0     177
Birth       EE               PAKISTAN                       9             1        0     177
Birth       EE               PAKISTAN                       10            0        0     177
Birth       EE               PAKISTAN                       10            1        0     177
Birth       EE               PAKISTAN                       11            0       29     177
Birth       EE               PAKISTAN                       11            1        9     177
Birth       EE               PAKISTAN                       12            0       33     177
Birth       EE               PAKISTAN                       12            1        6     177
Birth       GMS-Nepal        NEPAL                          1             0        0     641
Birth       GMS-Nepal        NEPAL                          1             1        0     641
Birth       GMS-Nepal        NEPAL                          2             0        0     641
Birth       GMS-Nepal        NEPAL                          2             1        0     641
Birth       GMS-Nepal        NEPAL                          3             0        0     641
Birth       GMS-Nepal        NEPAL                          3             1        0     641
Birth       GMS-Nepal        NEPAL                          4             0        1     641
Birth       GMS-Nepal        NEPAL                          4             1        0     641
Birth       GMS-Nepal        NEPAL                          5             0        0     641
Birth       GMS-Nepal        NEPAL                          5             1        0     641
Birth       GMS-Nepal        NEPAL                          6             0      122     641
Birth       GMS-Nepal        NEPAL                          6             1       29     641
Birth       GMS-Nepal        NEPAL                          7             0      192     641
Birth       GMS-Nepal        NEPAL                          7             1       48     641
Birth       GMS-Nepal        NEPAL                          8             0      194     641
Birth       GMS-Nepal        NEPAL                          8             1       55     641
Birth       GMS-Nepal        NEPAL                          9             0        0     641
Birth       GMS-Nepal        NEPAL                          9             1        0     641
Birth       GMS-Nepal        NEPAL                          10            0        0     641
Birth       GMS-Nepal        NEPAL                          10            1        0     641
Birth       GMS-Nepal        NEPAL                          11            0        0     641
Birth       GMS-Nepal        NEPAL                          11            1        0     641
Birth       GMS-Nepal        NEPAL                          12            0        0     641
Birth       GMS-Nepal        NEPAL                          12            1        0     641
Birth       IRC              INDIA                          1             0       25     343
Birth       IRC              INDIA                          1             1        5     343
Birth       IRC              INDIA                          2             0       20     343
Birth       IRC              INDIA                          2             1        2     343
Birth       IRC              INDIA                          3             0       20     343
Birth       IRC              INDIA                          3             1        6     343
Birth       IRC              INDIA                          4             0       12     343
Birth       IRC              INDIA                          4             1        7     343
Birth       IRC              INDIA                          5             0        8     343
Birth       IRC              INDIA                          5             1        7     343
Birth       IRC              INDIA                          6             0       19     343
Birth       IRC              INDIA                          6             1        6     343
Birth       IRC              INDIA                          7             0       20     343
Birth       IRC              INDIA                          7             1       11     343
Birth       IRC              INDIA                          8             0       27     343
Birth       IRC              INDIA                          8             1       10     343
Birth       IRC              INDIA                          9             0       17     343
Birth       IRC              INDIA                          9             1        7     343
Birth       IRC              INDIA                          10            0       22     343
Birth       IRC              INDIA                          10            1       10     343
Birth       IRC              INDIA                          11            0       30     343
Birth       IRC              INDIA                          11            1        9     343
Birth       IRC              INDIA                          12            0       31     343
Birth       IRC              INDIA                          12            1       12     343
Birth       JiVitA-3         BANGLADESH                     1             0     1483   18014
Birth       JiVitA-3         BANGLADESH                     1             1      145   18014
Birth       JiVitA-3         BANGLADESH                     2             0     1271   18014
Birth       JiVitA-3         BANGLADESH                     2             1      140   18014
Birth       JiVitA-3         BANGLADESH                     3             0     1535   18014
Birth       JiVitA-3         BANGLADESH                     3             1      180   18014
Birth       JiVitA-3         BANGLADESH                     4             0     1121   18014
Birth       JiVitA-3         BANGLADESH                     4             1      133   18014
Birth       JiVitA-3         BANGLADESH                     5             0      792   18014
Birth       JiVitA-3         BANGLADESH                     5             1      103   18014
Birth       JiVitA-3         BANGLADESH                     6             0      816   18014
Birth       JiVitA-3         BANGLADESH                     6             1      102   18014
Birth       JiVitA-3         BANGLADESH                     7             0      958   18014
Birth       JiVitA-3         BANGLADESH                     7             1       94   18014
Birth       JiVitA-3         BANGLADESH                     8             0     1225   18014
Birth       JiVitA-3         BANGLADESH                     8             1      157   18014
Birth       JiVitA-3         BANGLADESH                     9             0     1605   18014
Birth       JiVitA-3         BANGLADESH                     9             1      258   18014
Birth       JiVitA-3         BANGLADESH                     10            0     1678   18014
Birth       JiVitA-3         BANGLADESH                     10            1      235   18014
Birth       JiVitA-3         BANGLADESH                     11            0     1686   18014
Birth       JiVitA-3         BANGLADESH                     11            1      219   18014
Birth       JiVitA-3         BANGLADESH                     12            0     1871   18014
Birth       JiVitA-3         BANGLADESH                     12            1      207   18014
Birth       JiVitA-4         BANGLADESH                     1             0        0    2396
Birth       JiVitA-4         BANGLADESH                     1             1        0    2396
Birth       JiVitA-4         BANGLADESH                     2             0      261    2396
Birth       JiVitA-4         BANGLADESH                     2             1       16    2396
Birth       JiVitA-4         BANGLADESH                     3             0      281    2396
Birth       JiVitA-4         BANGLADESH                     3             1       35    2396
Birth       JiVitA-4         BANGLADESH                     4             0      357    2396
Birth       JiVitA-4         BANGLADESH                     4             1       38    2396
Birth       JiVitA-4         BANGLADESH                     5             0      343    2396
Birth       JiVitA-4         BANGLADESH                     5             1       34    2396
Birth       JiVitA-4         BANGLADESH                     6             0      264    2396
Birth       JiVitA-4         BANGLADESH                     6             1       31    2396
Birth       JiVitA-4         BANGLADESH                     7             0      284    2396
Birth       JiVitA-4         BANGLADESH                     7             1       31    2396
Birth       JiVitA-4         BANGLADESH                     8             0      201    2396
Birth       JiVitA-4         BANGLADESH                     8             1       25    2396
Birth       JiVitA-4         BANGLADESH                     9             0      112    2396
Birth       JiVitA-4         BANGLADESH                     9             1       22    2396
Birth       JiVitA-4         BANGLADESH                     10            0       54    2396
Birth       JiVitA-4         BANGLADESH                     10            1        7    2396
Birth       JiVitA-4         BANGLADESH                     11            0        0    2396
Birth       JiVitA-4         BANGLADESH                     11            1        0    2396
Birth       JiVitA-4         BANGLADESH                     12            0        0    2396
Birth       JiVitA-4         BANGLADESH                     12            1        0    2396
Birth       Keneba           GAMBIA                         1             0       93    1466
Birth       Keneba           GAMBIA                         1             1       40    1466
Birth       Keneba           GAMBIA                         2             0      113    1466
Birth       Keneba           GAMBIA                         2             1       40    1466
Birth       Keneba           GAMBIA                         3             0      104    1466
Birth       Keneba           GAMBIA                         3             1       36    1466
Birth       Keneba           GAMBIA                         4             0      124    1466
Birth       Keneba           GAMBIA                         4             1       35    1466
Birth       Keneba           GAMBIA                         5             0       79    1466
Birth       Keneba           GAMBIA                         5             1       24    1466
Birth       Keneba           GAMBIA                         6             0       80    1466
Birth       Keneba           GAMBIA                         6             1       22    1466
Birth       Keneba           GAMBIA                         7             0       74    1466
Birth       Keneba           GAMBIA                         7             1       11    1466
Birth       Keneba           GAMBIA                         8             0       57    1466
Birth       Keneba           GAMBIA                         8             1       17    1466
Birth       Keneba           GAMBIA                         9             0       84    1466
Birth       Keneba           GAMBIA                         9             1       32    1466
Birth       Keneba           GAMBIA                         10            0       89    1466
Birth       Keneba           GAMBIA                         10            1       29    1466
Birth       Keneba           GAMBIA                         11            0      121    1466
Birth       Keneba           GAMBIA                         11            1       47    1466
Birth       Keneba           GAMBIA                         12            0       84    1466
Birth       Keneba           GAMBIA                         12            1       31    1466
Birth       MAL-ED           BANGLADESH                     1             0       18     215
Birth       MAL-ED           BANGLADESH                     1             1        2     215
Birth       MAL-ED           BANGLADESH                     2             0       14     215
Birth       MAL-ED           BANGLADESH                     2             1        4     215
Birth       MAL-ED           BANGLADESH                     3             0       18     215
Birth       MAL-ED           BANGLADESH                     3             1        5     215
Birth       MAL-ED           BANGLADESH                     4             0       17     215
Birth       MAL-ED           BANGLADESH                     4             1        4     215
Birth       MAL-ED           BANGLADESH                     5             0       16     215
Birth       MAL-ED           BANGLADESH                     5             1        1     215
Birth       MAL-ED           BANGLADESH                     6             0        6     215
Birth       MAL-ED           BANGLADESH                     6             1        0     215
Birth       MAL-ED           BANGLADESH                     7             0        9     215
Birth       MAL-ED           BANGLADESH                     7             1        3     215
Birth       MAL-ED           BANGLADESH                     8             0       21     215
Birth       MAL-ED           BANGLADESH                     8             1        3     215
Birth       MAL-ED           BANGLADESH                     9             0       10     215
Birth       MAL-ED           BANGLADESH                     9             1        6     215
Birth       MAL-ED           BANGLADESH                     10            0       17     215
Birth       MAL-ED           BANGLADESH                     10            1        2     215
Birth       MAL-ED           BANGLADESH                     11            0       11     215
Birth       MAL-ED           BANGLADESH                     11            1        2     215
Birth       MAL-ED           BANGLADESH                     12            0       22     215
Birth       MAL-ED           BANGLADESH                     12            1        4     215
Birth       MAL-ED           BRAZIL                         1             0        4      62
Birth       MAL-ED           BRAZIL                         1             1        1      62
Birth       MAL-ED           BRAZIL                         2             0        8      62
Birth       MAL-ED           BRAZIL                         2             1        0      62
Birth       MAL-ED           BRAZIL                         3             0        9      62
Birth       MAL-ED           BRAZIL                         3             1        0      62
Birth       MAL-ED           BRAZIL                         4             0        5      62
Birth       MAL-ED           BRAZIL                         4             1        0      62
Birth       MAL-ED           BRAZIL                         5             0        1      62
Birth       MAL-ED           BRAZIL                         5             1        0      62
Birth       MAL-ED           BRAZIL                         6             0        5      62
Birth       MAL-ED           BRAZIL                         6             1        0      62
Birth       MAL-ED           BRAZIL                         7             0        5      62
Birth       MAL-ED           BRAZIL                         7             1        0      62
Birth       MAL-ED           BRAZIL                         8             0        6      62
Birth       MAL-ED           BRAZIL                         8             1        0      62
Birth       MAL-ED           BRAZIL                         9             0        6      62
Birth       MAL-ED           BRAZIL                         9             1        0      62
Birth       MAL-ED           BRAZIL                         10            0        3      62
Birth       MAL-ED           BRAZIL                         10            1        1      62
Birth       MAL-ED           BRAZIL                         11            0        5      62
Birth       MAL-ED           BRAZIL                         11            1        0      62
Birth       MAL-ED           BRAZIL                         12            0        3      62
Birth       MAL-ED           BRAZIL                         12            1        0      62
Birth       MAL-ED           INDIA                          1             0        2      45
Birth       MAL-ED           INDIA                          1             1        0      45
Birth       MAL-ED           INDIA                          2             0        2      45
Birth       MAL-ED           INDIA                          2             1        1      45
Birth       MAL-ED           INDIA                          3             0        4      45
Birth       MAL-ED           INDIA                          3             1        1      45
Birth       MAL-ED           INDIA                          4             0        5      45
Birth       MAL-ED           INDIA                          4             1        1      45
Birth       MAL-ED           INDIA                          5             0        2      45
Birth       MAL-ED           INDIA                          5             1        0      45
Birth       MAL-ED           INDIA                          6             0        2      45
Birth       MAL-ED           INDIA                          6             1        1      45
Birth       MAL-ED           INDIA                          7             0        3      45
Birth       MAL-ED           INDIA                          7             1        0      45
Birth       MAL-ED           INDIA                          8             0        7      45
Birth       MAL-ED           INDIA                          8             1        0      45
Birth       MAL-ED           INDIA                          9             0        3      45
Birth       MAL-ED           INDIA                          9             1        1      45
Birth       MAL-ED           INDIA                          10            0        6      45
Birth       MAL-ED           INDIA                          10            1        0      45
Birth       MAL-ED           INDIA                          11            0        3      45
Birth       MAL-ED           INDIA                          11            1        0      45
Birth       MAL-ED           INDIA                          12            0        1      45
Birth       MAL-ED           INDIA                          12            1        0      45
Birth       MAL-ED           NEPAL                          1             0        0      26
Birth       MAL-ED           NEPAL                          1             1        1      26
Birth       MAL-ED           NEPAL                          2             0        3      26
Birth       MAL-ED           NEPAL                          2             1        0      26
Birth       MAL-ED           NEPAL                          3             0        1      26
Birth       MAL-ED           NEPAL                          3             1        0      26
Birth       MAL-ED           NEPAL                          4             0        2      26
Birth       MAL-ED           NEPAL                          4             1        0      26
Birth       MAL-ED           NEPAL                          5             0        2      26
Birth       MAL-ED           NEPAL                          5             1        0      26
Birth       MAL-ED           NEPAL                          6             0        2      26
Birth       MAL-ED           NEPAL                          6             1        1      26
Birth       MAL-ED           NEPAL                          7             0        1      26
Birth       MAL-ED           NEPAL                          7             1        0      26
Birth       MAL-ED           NEPAL                          8             0        1      26
Birth       MAL-ED           NEPAL                          8             1        0      26
Birth       MAL-ED           NEPAL                          9             0        3      26
Birth       MAL-ED           NEPAL                          9             1        0      26
Birth       MAL-ED           NEPAL                          10            0        3      26
Birth       MAL-ED           NEPAL                          10            1        0      26
Birth       MAL-ED           NEPAL                          11            0        4      26
Birth       MAL-ED           NEPAL                          11            1        0      26
Birth       MAL-ED           NEPAL                          12            0        2      26
Birth       MAL-ED           NEPAL                          12            1        0      26
Birth       MAL-ED           PERU                           1             0       24     228
Birth       MAL-ED           PERU                           1             1        0     228
Birth       MAL-ED           PERU                           2             0       20     228
Birth       MAL-ED           PERU                           2             1        0     228
Birth       MAL-ED           PERU                           3             0       21     228
Birth       MAL-ED           PERU                           3             1        0     228
Birth       MAL-ED           PERU                           4             0       13     228
Birth       MAL-ED           PERU                           4             1        0     228
Birth       MAL-ED           PERU                           5             0       17     228
Birth       MAL-ED           PERU                           5             1        1     228
Birth       MAL-ED           PERU                           6             0       15     228
Birth       MAL-ED           PERU                           6             1        0     228
Birth       MAL-ED           PERU                           7             0       19     228
Birth       MAL-ED           PERU                           7             1        1     228
Birth       MAL-ED           PERU                           8             0       13     228
Birth       MAL-ED           PERU                           8             1        1     228
Birth       MAL-ED           PERU                           9             0       20     228
Birth       MAL-ED           PERU                           9             1        0     228
Birth       MAL-ED           PERU                           10            0       20     228
Birth       MAL-ED           PERU                           10            1        0     228
Birth       MAL-ED           PERU                           11            0       27     228
Birth       MAL-ED           PERU                           11            1        2     228
Birth       MAL-ED           PERU                           12            0       14     228
Birth       MAL-ED           PERU                           12            1        0     228
Birth       MAL-ED           SOUTH AFRICA                   1             0        6     120
Birth       MAL-ED           SOUTH AFRICA                   1             1        1     120
Birth       MAL-ED           SOUTH AFRICA                   2             0       11     120
Birth       MAL-ED           SOUTH AFRICA                   2             1        2     120
Birth       MAL-ED           SOUTH AFRICA                   3             0        8     120
Birth       MAL-ED           SOUTH AFRICA                   3             1        2     120
Birth       MAL-ED           SOUTH AFRICA                   4             0        5     120
Birth       MAL-ED           SOUTH AFRICA                   4             1        2     120
Birth       MAL-ED           SOUTH AFRICA                   5             0        5     120
Birth       MAL-ED           SOUTH AFRICA                   5             1        0     120
Birth       MAL-ED           SOUTH AFRICA                   6             0        6     120
Birth       MAL-ED           SOUTH AFRICA                   6             1        1     120
Birth       MAL-ED           SOUTH AFRICA                   7             0       13     120
Birth       MAL-ED           SOUTH AFRICA                   7             1        1     120
Birth       MAL-ED           SOUTH AFRICA                   8             0        4     120
Birth       MAL-ED           SOUTH AFRICA                   8             1        0     120
Birth       MAL-ED           SOUTH AFRICA                   9             0       10     120
Birth       MAL-ED           SOUTH AFRICA                   9             1        0     120
Birth       MAL-ED           SOUTH AFRICA                   10            0       10     120
Birth       MAL-ED           SOUTH AFRICA                   10            1        0     120
Birth       MAL-ED           SOUTH AFRICA                   11            0       15     120
Birth       MAL-ED           SOUTH AFRICA                   11            1        0     120
Birth       MAL-ED           SOUTH AFRICA                   12            0       15     120
Birth       MAL-ED           SOUTH AFRICA                   12            1        3     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             0        8     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             0       13     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             1        1     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             0       15     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4             0        7     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4             1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5             0       10     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5             1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6             0        8     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6             1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7             0       15     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7             1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8             0        7     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8             1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9             0        1     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9             1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10            0        6     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10            1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11            0       14     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11            1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12            0       10     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12            1        0     115
Birth       NIH-Birth        BANGLADESH                     1             0       39     575
Birth       NIH-Birth        BANGLADESH                     1             1       15     575
Birth       NIH-Birth        BANGLADESH                     2             0       39     575
Birth       NIH-Birth        BANGLADESH                     2             1       16     575
Birth       NIH-Birth        BANGLADESH                     3             0       41     575
Birth       NIH-Birth        BANGLADESH                     3             1       17     575
Birth       NIH-Birth        BANGLADESH                     4             0       34     575
Birth       NIH-Birth        BANGLADESH                     4             1       14     575
Birth       NIH-Birth        BANGLADESH                     5             0       26     575
Birth       NIH-Birth        BANGLADESH                     5             1       19     575
Birth       NIH-Birth        BANGLADESH                     6             0       24     575
Birth       NIH-Birth        BANGLADESH                     6             1       16     575
Birth       NIH-Birth        BANGLADESH                     7             0       28     575
Birth       NIH-Birth        BANGLADESH                     7             1       17     575
Birth       NIH-Birth        BANGLADESH                     8             0       29     575
Birth       NIH-Birth        BANGLADESH                     8             1       12     575
Birth       NIH-Birth        BANGLADESH                     9             0       20     575
Birth       NIH-Birth        BANGLADESH                     9             1       11     575
Birth       NIH-Birth        BANGLADESH                     10            0       45     575
Birth       NIH-Birth        BANGLADESH                     10            1       13     575
Birth       NIH-Birth        BANGLADESH                     11            0       37     575
Birth       NIH-Birth        BANGLADESH                     11            1       12     575
Birth       NIH-Birth        BANGLADESH                     12            0       45     575
Birth       NIH-Birth        BANGLADESH                     12            1        6     575
Birth       PROBIT           BELARUS                        1             0      666   13817
Birth       PROBIT           BELARUS                        1             1      189   13817
Birth       PROBIT           BELARUS                        2             0      646   13817
Birth       PROBIT           BELARUS                        2             1      139   13817
Birth       PROBIT           BELARUS                        3             0      765   13817
Birth       PROBIT           BELARUS                        3             1      195   13817
Birth       PROBIT           BELARUS                        4             0      749   13817
Birth       PROBIT           BELARUS                        4             1      206   13817
Birth       PROBIT           BELARUS                        5             0      720   13817
Birth       PROBIT           BELARUS                        5             1      229   13817
Birth       PROBIT           BELARUS                        6             0      792   13817
Birth       PROBIT           BELARUS                        6             1      214   13817
Birth       PROBIT           BELARUS                        7             0      974   13817
Birth       PROBIT           BELARUS                        7             1      301   13817
Birth       PROBIT           BELARUS                        8             0     1027   13817
Birth       PROBIT           BELARUS                        8             1      291   13817
Birth       PROBIT           BELARUS                        9             0     1055   13817
Birth       PROBIT           BELARUS                        9             1      256   13817
Birth       PROBIT           BELARUS                        10            0     1170   13817
Birth       PROBIT           BELARUS                        10            1      326   13817
Birth       PROBIT           BELARUS                        11            0     1140   13817
Birth       PROBIT           BELARUS                        11            1      252   13817
Birth       PROBIT           BELARUS                        12            0     1207   13817
Birth       PROBIT           BELARUS                        12            1      308   13817
Birth       ResPak           PAKISTAN                       1             0        0      38
Birth       ResPak           PAKISTAN                       1             1        0      38
Birth       ResPak           PAKISTAN                       2             0        2      38
Birth       ResPak           PAKISTAN                       2             1        0      38
Birth       ResPak           PAKISTAN                       3             0        1      38
Birth       ResPak           PAKISTAN                       3             1        0      38
Birth       ResPak           PAKISTAN                       4             0        0      38
Birth       ResPak           PAKISTAN                       4             1        1      38
Birth       ResPak           PAKISTAN                       5             0        6      38
Birth       ResPak           PAKISTAN                       5             1        0      38
Birth       ResPak           PAKISTAN                       6             0        6      38
Birth       ResPak           PAKISTAN                       6             1        1      38
Birth       ResPak           PAKISTAN                       7             0        6      38
Birth       ResPak           PAKISTAN                       7             1        1      38
Birth       ResPak           PAKISTAN                       8             0        7      38
Birth       ResPak           PAKISTAN                       8             1        1      38
Birth       ResPak           PAKISTAN                       9             0        4      38
Birth       ResPak           PAKISTAN                       9             1        0      38
Birth       ResPak           PAKISTAN                       10            0        1      38
Birth       ResPak           PAKISTAN                       10            1        0      38
Birth       ResPak           PAKISTAN                       11            0        1      38
Birth       ResPak           PAKISTAN                       11            1        0      38
Birth       ResPak           PAKISTAN                       12            0        0      38
Birth       ResPak           PAKISTAN                       12            1        0      38
Birth       SAS-CompFeed     INDIA                          1             0       60    1103
Birth       SAS-CompFeed     INDIA                          1             1        5    1103
Birth       SAS-CompFeed     INDIA                          2             0       56    1103
Birth       SAS-CompFeed     INDIA                          2             1        6    1103
Birth       SAS-CompFeed     INDIA                          3             0       63    1103
Birth       SAS-CompFeed     INDIA                          3             1        4    1103
Birth       SAS-CompFeed     INDIA                          4             0       55    1103
Birth       SAS-CompFeed     INDIA                          4             1        5    1103
Birth       SAS-CompFeed     INDIA                          5             0       55    1103
Birth       SAS-CompFeed     INDIA                          5             1       10    1103
Birth       SAS-CompFeed     INDIA                          6             0       75    1103
Birth       SAS-CompFeed     INDIA                          6             1       17    1103
Birth       SAS-CompFeed     INDIA                          7             0       82    1103
Birth       SAS-CompFeed     INDIA                          7             1       12    1103
Birth       SAS-CompFeed     INDIA                          8             0      110    1103
Birth       SAS-CompFeed     INDIA                          8             1       13    1103
Birth       SAS-CompFeed     INDIA                          9             0      116    1103
Birth       SAS-CompFeed     INDIA                          9             1       19    1103
Birth       SAS-CompFeed     INDIA                          10            0      104    1103
Birth       SAS-CompFeed     INDIA                          10            1       19    1103
Birth       SAS-CompFeed     INDIA                          11            0      107    1103
Birth       SAS-CompFeed     INDIA                          11            1        6    1103
Birth       SAS-CompFeed     INDIA                          12            0      102    1103
Birth       SAS-CompFeed     INDIA                          12            1        2    1103
Birth       ZVITAMBO         ZIMBABWE                       1             0     1057   12917
Birth       ZVITAMBO         ZIMBABWE                       1             1      181   12917
Birth       ZVITAMBO         ZIMBABWE                       2             0      824   12917
Birth       ZVITAMBO         ZIMBABWE                       2             1      124   12917
Birth       ZVITAMBO         ZIMBABWE                       3             0      907   12917
Birth       ZVITAMBO         ZIMBABWE                       3             1      153   12917
Birth       ZVITAMBO         ZIMBABWE                       4             0      821   12917
Birth       ZVITAMBO         ZIMBABWE                       4             1      120   12917
Birth       ZVITAMBO         ZIMBABWE                       5             0      774   12917
Birth       ZVITAMBO         ZIMBABWE                       5             1      140   12917
Birth       ZVITAMBO         ZIMBABWE                       6             0      851   12917
Birth       ZVITAMBO         ZIMBABWE                       6             1      196   12917
Birth       ZVITAMBO         ZIMBABWE                       7             0      885   12917
Birth       ZVITAMBO         ZIMBABWE                       7             1      213   12917
Birth       ZVITAMBO         ZIMBABWE                       8             0      957   12917
Birth       ZVITAMBO         ZIMBABWE                       8             1      209   12917
Birth       ZVITAMBO         ZIMBABWE                       9             0     1086   12917
Birth       ZVITAMBO         ZIMBABWE                       9             1      182   12917
Birth       ZVITAMBO         ZIMBABWE                       10            0      822   12917
Birth       ZVITAMBO         ZIMBABWE                       10            1      162   12917
Birth       ZVITAMBO         ZIMBABWE                       11            0      881   12917
Birth       ZVITAMBO         ZIMBABWE                       11            1      189   12917
Birth       ZVITAMBO         ZIMBABWE                       12            0      991   12917
Birth       ZVITAMBO         ZIMBABWE                       12            1      192   12917
6 months    CMC-V-BCS-2002   INDIA                          1             0       24     368
6 months    CMC-V-BCS-2002   INDIA                          1             1        4     368
6 months    CMC-V-BCS-2002   INDIA                          2             0       18     368
6 months    CMC-V-BCS-2002   INDIA                          2             1        6     368
6 months    CMC-V-BCS-2002   INDIA                          3             0       21     368
6 months    CMC-V-BCS-2002   INDIA                          3             1        5     368
6 months    CMC-V-BCS-2002   INDIA                          4             0       26     368
6 months    CMC-V-BCS-2002   INDIA                          4             1        3     368
6 months    CMC-V-BCS-2002   INDIA                          5             0       38     368
6 months    CMC-V-BCS-2002   INDIA                          5             1        3     368
6 months    CMC-V-BCS-2002   INDIA                          6             0       33     368
6 months    CMC-V-BCS-2002   INDIA                          6             1        3     368
6 months    CMC-V-BCS-2002   INDIA                          7             0       31     368
6 months    CMC-V-BCS-2002   INDIA                          7             1        2     368
6 months    CMC-V-BCS-2002   INDIA                          8             0       39     368
6 months    CMC-V-BCS-2002   INDIA                          8             1        2     368
6 months    CMC-V-BCS-2002   INDIA                          9             0       19     368
6 months    CMC-V-BCS-2002   INDIA                          9             1        3     368
6 months    CMC-V-BCS-2002   INDIA                          10            0       17     368
6 months    CMC-V-BCS-2002   INDIA                          10            1        2     368
6 months    CMC-V-BCS-2002   INDIA                          11            0       34     368
6 months    CMC-V-BCS-2002   INDIA                          11            1        7     368
6 months    CMC-V-BCS-2002   INDIA                          12            0       22     368
6 months    CMC-V-BCS-2002   INDIA                          12            1        6     368
6 months    CMIN             BANGLADESH                     1             0       24     243
6 months    CMIN             BANGLADESH                     1             1        4     243
6 months    CMIN             BANGLADESH                     2             0       26     243
6 months    CMIN             BANGLADESH                     2             1        4     243
6 months    CMIN             BANGLADESH                     3             0       17     243
6 months    CMIN             BANGLADESH                     3             1        1     243
6 months    CMIN             BANGLADESH                     4             0       14     243
6 months    CMIN             BANGLADESH                     4             1        3     243
6 months    CMIN             BANGLADESH                     5             0       18     243
6 months    CMIN             BANGLADESH                     5             1        2     243
6 months    CMIN             BANGLADESH                     6             0       20     243
6 months    CMIN             BANGLADESH                     6             1        3     243
6 months    CMIN             BANGLADESH                     7             0       11     243
6 months    CMIN             BANGLADESH                     7             1        1     243
6 months    CMIN             BANGLADESH                     8             0       13     243
6 months    CMIN             BANGLADESH                     8             1        0     243
6 months    CMIN             BANGLADESH                     9             0       16     243
6 months    CMIN             BANGLADESH                     9             1        0     243
6 months    CMIN             BANGLADESH                     10            0       20     243
6 months    CMIN             BANGLADESH                     10            1        0     243
6 months    CMIN             BANGLADESH                     11            0        2     243
6 months    CMIN             BANGLADESH                     11            1        0     243
6 months    CMIN             BANGLADESH                     12            0       41     243
6 months    CMIN             BANGLADESH                     12            1        3     243
6 months    CONTENT          PERU                           1             0        9     215
6 months    CONTENT          PERU                           1             1        0     215
6 months    CONTENT          PERU                           2             0       13     215
6 months    CONTENT          PERU                           2             1        0     215
6 months    CONTENT          PERU                           3             0       27     215
6 months    CONTENT          PERU                           3             1        0     215
6 months    CONTENT          PERU                           4             0       18     215
6 months    CONTENT          PERU                           4             1        0     215
6 months    CONTENT          PERU                           5             0       25     215
6 months    CONTENT          PERU                           5             1        0     215
6 months    CONTENT          PERU                           6             0       14     215
6 months    CONTENT          PERU                           6             1        0     215
6 months    CONTENT          PERU                           7             0       16     215
6 months    CONTENT          PERU                           7             1        0     215
6 months    CONTENT          PERU                           8             0       26     215
6 months    CONTENT          PERU                           8             1        0     215
6 months    CONTENT          PERU                           9             0       19     215
6 months    CONTENT          PERU                           9             1        0     215
6 months    CONTENT          PERU                           10            0       23     215
6 months    CONTENT          PERU                           10            1        0     215
6 months    CONTENT          PERU                           11            0       18     215
6 months    CONTENT          PERU                           11            1        0     215
6 months    CONTENT          PERU                           12            0        7     215
6 months    CONTENT          PERU                           12            1        0     215
6 months    EE               PAKISTAN                       1             0       83     375
6 months    EE               PAKISTAN                       1             1        8     375
6 months    EE               PAKISTAN                       2             0       61     375
6 months    EE               PAKISTAN                       2             1       11     375
6 months    EE               PAKISTAN                       3             0       36     375
6 months    EE               PAKISTAN                       3             1       11     375
6 months    EE               PAKISTAN                       4             0       21     375
6 months    EE               PAKISTAN                       4             1        1     375
6 months    EE               PAKISTAN                       5             0        0     375
6 months    EE               PAKISTAN                       5             1        0     375
6 months    EE               PAKISTAN                       6             0        0     375
6 months    EE               PAKISTAN                       6             1        0     375
6 months    EE               PAKISTAN                       7             0        0     375
6 months    EE               PAKISTAN                       7             1        0     375
6 months    EE               PAKISTAN                       8             0        0     375
6 months    EE               PAKISTAN                       8             1        0     375
6 months    EE               PAKISTAN                       9             0        0     375
6 months    EE               PAKISTAN                       9             1        0     375
6 months    EE               PAKISTAN                       10            0        0     375
6 months    EE               PAKISTAN                       10            1        0     375
6 months    EE               PAKISTAN                       11            0       50     375
6 months    EE               PAKISTAN                       11            1       10     375
6 months    EE               PAKISTAN                       12            0       77     375
6 months    EE               PAKISTAN                       12            1        6     375
6 months    GMS-Nepal        NEPAL                          1             0        0     564
6 months    GMS-Nepal        NEPAL                          1             1        0     564
6 months    GMS-Nepal        NEPAL                          2             0        0     564
6 months    GMS-Nepal        NEPAL                          2             1        0     564
6 months    GMS-Nepal        NEPAL                          3             0        0     564
6 months    GMS-Nepal        NEPAL                          3             1        0     564
6 months    GMS-Nepal        NEPAL                          4             0        1     564
6 months    GMS-Nepal        NEPAL                          4             1        0     564
6 months    GMS-Nepal        NEPAL                          5             0        0     564
6 months    GMS-Nepal        NEPAL                          5             1        0     564
6 months    GMS-Nepal        NEPAL                          6             0      108     564
6 months    GMS-Nepal        NEPAL                          6             1        7     564
6 months    GMS-Nepal        NEPAL                          7             0      194     564
6 months    GMS-Nepal        NEPAL                          7             1       17     564
6 months    GMS-Nepal        NEPAL                          8             0      210     564
6 months    GMS-Nepal        NEPAL                          8             1       27     564
6 months    GMS-Nepal        NEPAL                          9             0        0     564
6 months    GMS-Nepal        NEPAL                          9             1        0     564
6 months    GMS-Nepal        NEPAL                          10            0        0     564
6 months    GMS-Nepal        NEPAL                          10            1        0     564
6 months    GMS-Nepal        NEPAL                          11            0        0     564
6 months    GMS-Nepal        NEPAL                          11            1        0     564
6 months    GMS-Nepal        NEPAL                          12            0        0     564
6 months    GMS-Nepal        NEPAL                          12            1        0     564
6 months    Guatemala BSC    GUATEMALA                      1             0       18     299
6 months    Guatemala BSC    GUATEMALA                      1             1        0     299
6 months    Guatemala BSC    GUATEMALA                      2             0       19     299
6 months    Guatemala BSC    GUATEMALA                      2             1        0     299
6 months    Guatemala BSC    GUATEMALA                      3             0       21     299
6 months    Guatemala BSC    GUATEMALA                      3             1        0     299
6 months    Guatemala BSC    GUATEMALA                      4             0       25     299
6 months    Guatemala BSC    GUATEMALA                      4             1        2     299
6 months    Guatemala BSC    GUATEMALA                      5             0       31     299
6 months    Guatemala BSC    GUATEMALA                      5             1        0     299
6 months    Guatemala BSC    GUATEMALA                      6             0       39     299
6 months    Guatemala BSC    GUATEMALA                      6             1        0     299
6 months    Guatemala BSC    GUATEMALA                      7             0       24     299
6 months    Guatemala BSC    GUATEMALA                      7             1        0     299
6 months    Guatemala BSC    GUATEMALA                      8             0       19     299
6 months    Guatemala BSC    GUATEMALA                      8             1        0     299
6 months    Guatemala BSC    GUATEMALA                      9             0       33     299
6 months    Guatemala BSC    GUATEMALA                      9             1        1     299
6 months    Guatemala BSC    GUATEMALA                      10            0       29     299
6 months    Guatemala BSC    GUATEMALA                      10            1        0     299
6 months    Guatemala BSC    GUATEMALA                      11            0       27     299
6 months    Guatemala BSC    GUATEMALA                      11            1        1     299
6 months    Guatemala BSC    GUATEMALA                      12            0       10     299
6 months    Guatemala BSC    GUATEMALA                      12            1        0     299
6 months    IRC              INDIA                          1             0       29     408
6 months    IRC              INDIA                          1             1        6     408
6 months    IRC              INDIA                          2             0       27     408
6 months    IRC              INDIA                          2             1        3     408
6 months    IRC              INDIA                          3             0       24     408
6 months    IRC              INDIA                          3             1        5     408
6 months    IRC              INDIA                          4             0       23     408
6 months    IRC              INDIA                          4             1        1     408
6 months    IRC              INDIA                          5             0       20     408
6 months    IRC              INDIA                          5             1        1     408
6 months    IRC              INDIA                          6             0       29     408
6 months    IRC              INDIA                          6             1        6     408
6 months    IRC              INDIA                          7             0       30     408
6 months    IRC              INDIA                          7             1        6     408
6 months    IRC              INDIA                          8             0       34     408
6 months    IRC              INDIA                          8             1        7     408
6 months    IRC              INDIA                          9             0       26     408
6 months    IRC              INDIA                          9             1        2     408
6 months    IRC              INDIA                          10            0       34     408
6 months    IRC              INDIA                          10            1        5     408
6 months    IRC              INDIA                          11            0       37     408
6 months    IRC              INDIA                          11            1        4     408
6 months    IRC              INDIA                          12            0       41     408
6 months    IRC              INDIA                          12            1        8     408
6 months    JiVitA-3         BANGLADESH                     1             0     1237   16784
6 months    JiVitA-3         BANGLADESH                     1             1      129   16784
6 months    JiVitA-3         BANGLADESH                     2             0     1084   16784
6 months    JiVitA-3         BANGLADESH                     2             1       95   16784
6 months    JiVitA-3         BANGLADESH                     3             0     1310   16784
6 months    JiVitA-3         BANGLADESH                     3             1      110   16784
6 months    JiVitA-3         BANGLADESH                     4             0     1104   16784
6 months    JiVitA-3         BANGLADESH                     4             1       87   16784
6 months    JiVitA-3         BANGLADESH                     5             0     1060   16784
6 months    JiVitA-3         BANGLADESH                     5             1       87   16784
6 months    JiVitA-3         BANGLADESH                     6             0     1068   16784
6 months    JiVitA-3         BANGLADESH                     6             1       87   16784
6 months    JiVitA-3         BANGLADESH                     7             0     1127   16784
6 months    JiVitA-3         BANGLADESH                     7             1      118   16784
6 months    JiVitA-3         BANGLADESH                     8             0     1341   16784
6 months    JiVitA-3         BANGLADESH                     8             1      122   16784
6 months    JiVitA-3         BANGLADESH                     9             0     1434   16784
6 months    JiVitA-3         BANGLADESH                     9             1      117   16784
6 months    JiVitA-3         BANGLADESH                     10            0     1527   16784
6 months    JiVitA-3         BANGLADESH                     10            1      166   16784
6 months    JiVitA-3         BANGLADESH                     11            0     1515   16784
6 months    JiVitA-3         BANGLADESH                     11            1      154   16784
6 months    JiVitA-3         BANGLADESH                     12            0     1556   16784
6 months    JiVitA-3         BANGLADESH                     12            1      149   16784
6 months    JiVitA-4         BANGLADESH                     1             0       49    4833
6 months    JiVitA-4         BANGLADESH                     1             1        4    4833
6 months    JiVitA-4         BANGLADESH                     2             0      162    4833
6 months    JiVitA-4         BANGLADESH                     2             1        3    4833
6 months    JiVitA-4         BANGLADESH                     3             0      399    4833
6 months    JiVitA-4         BANGLADESH                     3             1       31    4833
6 months    JiVitA-4         BANGLADESH                     4             0      791    4833
6 months    JiVitA-4         BANGLADESH                     4             1       57    4833
6 months    JiVitA-4         BANGLADESH                     5             0      558    4833
6 months    JiVitA-4         BANGLADESH                     5             1       28    4833
6 months    JiVitA-4         BANGLADESH                     6             0      408    4833
6 months    JiVitA-4         BANGLADESH                     6             1       26    4833
6 months    JiVitA-4         BANGLADESH                     7             0      779    4833
6 months    JiVitA-4         BANGLADESH                     7             1       57    4833
6 months    JiVitA-4         BANGLADESH                     8             0      486    4833
6 months    JiVitA-4         BANGLADESH                     8             1       24    4833
6 months    JiVitA-4         BANGLADESH                     9             0      412    4833
6 months    JiVitA-4         BANGLADESH                     9             1       19    4833
6 months    JiVitA-4         BANGLADESH                     10            0      292    4833
6 months    JiVitA-4         BANGLADESH                     10            1       14    4833
6 months    JiVitA-4         BANGLADESH                     11            0      147    4833
6 months    JiVitA-4         BANGLADESH                     11            1       10    4833
6 months    JiVitA-4         BANGLADESH                     12            0       75    4833
6 months    JiVitA-4         BANGLADESH                     12            1        2    4833
6 months    Keneba           GAMBIA                         1             0      177    2089
6 months    Keneba           GAMBIA                         1             1        7    2089
6 months    Keneba           GAMBIA                         2             0      195    2089
6 months    Keneba           GAMBIA                         2             1       15    2089
6 months    Keneba           GAMBIA                         3             0      178    2089
6 months    Keneba           GAMBIA                         3             1        7    2089
6 months    Keneba           GAMBIA                         4             0      209    2089
6 months    Keneba           GAMBIA                         4             1       15    2089
6 months    Keneba           GAMBIA                         5             0      168    2089
6 months    Keneba           GAMBIA                         5             1       17    2089
6 months    Keneba           GAMBIA                         6             0      135    2089
6 months    Keneba           GAMBIA                         6             1       15    2089
6 months    Keneba           GAMBIA                         7             0      121    2089
6 months    Keneba           GAMBIA                         7             1        8    2089
6 months    Keneba           GAMBIA                         8             0      110    2089
6 months    Keneba           GAMBIA                         8             1        8    2089
6 months    Keneba           GAMBIA                         9             0      145    2089
6 months    Keneba           GAMBIA                         9             1        6    2089
6 months    Keneba           GAMBIA                         10            0      160    2089
6 months    Keneba           GAMBIA                         10            1        9    2089
6 months    Keneba           GAMBIA                         11            0      216    2089
6 months    Keneba           GAMBIA                         11            1        9    2089
6 months    Keneba           GAMBIA                         12            0      154    2089
6 months    Keneba           GAMBIA                         12            1        5    2089
6 months    LCNI-5           MALAWI                         1             0       55     839
6 months    LCNI-5           MALAWI                         1             1        0     839
6 months    LCNI-5           MALAWI                         2             0      111     839
6 months    LCNI-5           MALAWI                         2             1        3     839
6 months    LCNI-5           MALAWI                         3             0       97     839
6 months    LCNI-5           MALAWI                         3             1        1     839
6 months    LCNI-5           MALAWI                         4             0      109     839
6 months    LCNI-5           MALAWI                         4             1        1     839
6 months    LCNI-5           MALAWI                         5             0      109     839
6 months    LCNI-5           MALAWI                         5             1        2     839
6 months    LCNI-5           MALAWI                         6             0       88     839
6 months    LCNI-5           MALAWI                         6             1        3     839
6 months    LCNI-5           MALAWI                         7             0       71     839
6 months    LCNI-5           MALAWI                         7             1        1     839
6 months    LCNI-5           MALAWI                         8             0       41     839
6 months    LCNI-5           MALAWI                         8             1        0     839
6 months    LCNI-5           MALAWI                         9             0       29     839
6 months    LCNI-5           MALAWI                         9             1        0     839
6 months    LCNI-5           MALAWI                         10            0       35     839
6 months    LCNI-5           MALAWI                         10            1        0     839
6 months    LCNI-5           MALAWI                         11            0       48     839
6 months    LCNI-5           MALAWI                         11            1        1     839
6 months    LCNI-5           MALAWI                         12            0       32     839
6 months    LCNI-5           MALAWI                         12            1        2     839
6 months    MAL-ED           BANGLADESH                     1             0       19     241
6 months    MAL-ED           BANGLADESH                     1             1        0     241
6 months    MAL-ED           BANGLADESH                     2             0       19     241
6 months    MAL-ED           BANGLADESH                     2             1        1     241
6 months    MAL-ED           BANGLADESH                     3             0       23     241
6 months    MAL-ED           BANGLADESH                     3             1        0     241
6 months    MAL-ED           BANGLADESH                     4             0       23     241
6 months    MAL-ED           BANGLADESH                     4             1        1     241
6 months    MAL-ED           BANGLADESH                     5             0       16     241
6 months    MAL-ED           BANGLADESH                     5             1        1     241
6 months    MAL-ED           BANGLADESH                     6             0       11     241
6 months    MAL-ED           BANGLADESH                     6             1        1     241
6 months    MAL-ED           BANGLADESH                     7             0       15     241
6 months    MAL-ED           BANGLADESH                     7             1        2     241
6 months    MAL-ED           BANGLADESH                     8             0       25     241
6 months    MAL-ED           BANGLADESH                     8             1        0     241
6 months    MAL-ED           BANGLADESH                     9             0       21     241
6 months    MAL-ED           BANGLADESH                     9             1        0     241
6 months    MAL-ED           BANGLADESH                     10            0       20     241
6 months    MAL-ED           BANGLADESH                     10            1        2     241
6 months    MAL-ED           BANGLADESH                     11            0       15     241
6 months    MAL-ED           BANGLADESH                     11            1        0     241
6 months    MAL-ED           BANGLADESH                     12            0       26     241
6 months    MAL-ED           BANGLADESH                     12            1        0     241
6 months    MAL-ED           BRAZIL                         1             0       14     209
6 months    MAL-ED           BRAZIL                         1             1        0     209
6 months    MAL-ED           BRAZIL                         2             0       24     209
6 months    MAL-ED           BRAZIL                         2             1        0     209
6 months    MAL-ED           BRAZIL                         3             0       15     209
6 months    MAL-ED           BRAZIL                         3             1        0     209
6 months    MAL-ED           BRAZIL                         4             0       12     209
6 months    MAL-ED           BRAZIL                         4             1        0     209
6 months    MAL-ED           BRAZIL                         5             0       17     209
6 months    MAL-ED           BRAZIL                         5             1        0     209
6 months    MAL-ED           BRAZIL                         6             0       14     209
6 months    MAL-ED           BRAZIL                         6             1        0     209
6 months    MAL-ED           BRAZIL                         7             0       16     209
6 months    MAL-ED           BRAZIL                         7             1        0     209
6 months    MAL-ED           BRAZIL                         8             0       15     209
6 months    MAL-ED           BRAZIL                         8             1        0     209
6 months    MAL-ED           BRAZIL                         9             0       21     209
6 months    MAL-ED           BRAZIL                         9             1        0     209
6 months    MAL-ED           BRAZIL                         10            0       26     209
6 months    MAL-ED           BRAZIL                         10            1        0     209
6 months    MAL-ED           BRAZIL                         11            0       17     209
6 months    MAL-ED           BRAZIL                         11            1        0     209
6 months    MAL-ED           BRAZIL                         12            0       17     209
6 months    MAL-ED           BRAZIL                         12            1        1     209
6 months    MAL-ED           INDIA                          1             0       15     236
6 months    MAL-ED           INDIA                          1             1        0     236
6 months    MAL-ED           INDIA                          2             0       21     236
6 months    MAL-ED           INDIA                          2             1        2     236
6 months    MAL-ED           INDIA                          3             0       18     236
6 months    MAL-ED           INDIA                          3             1        3     236
6 months    MAL-ED           INDIA                          4             0       17     236
6 months    MAL-ED           INDIA                          4             1        1     236
6 months    MAL-ED           INDIA                          5             0        8     236
6 months    MAL-ED           INDIA                          5             1        0     236
6 months    MAL-ED           INDIA                          6             0       14     236
6 months    MAL-ED           INDIA                          6             1        4     236
6 months    MAL-ED           INDIA                          7             0       20     236
6 months    MAL-ED           INDIA                          7             1        1     236
6 months    MAL-ED           INDIA                          8             0       21     236
6 months    MAL-ED           INDIA                          8             1        0     236
6 months    MAL-ED           INDIA                          9             0       21     236
6 months    MAL-ED           INDIA                          9             1        0     236
6 months    MAL-ED           INDIA                          10            0       22     236
6 months    MAL-ED           INDIA                          10            1        2     236
6 months    MAL-ED           INDIA                          11            0       22     236
6 months    MAL-ED           INDIA                          11            1        2     236
6 months    MAL-ED           INDIA                          12            0       18     236
6 months    MAL-ED           INDIA                          12            1        4     236
6 months    MAL-ED           NEPAL                          1             0       19     236
6 months    MAL-ED           NEPAL                          1             1        1     236
6 months    MAL-ED           NEPAL                          2             0       20     236
6 months    MAL-ED           NEPAL                          2             1        0     236
6 months    MAL-ED           NEPAL                          3             0       20     236
6 months    MAL-ED           NEPAL                          3             1        0     236
6 months    MAL-ED           NEPAL                          4             0       20     236
6 months    MAL-ED           NEPAL                          4             1        0     236
6 months    MAL-ED           NEPAL                          5             0       18     236
6 months    MAL-ED           NEPAL                          5             1        0     236
6 months    MAL-ED           NEPAL                          6             0       19     236
6 months    MAL-ED           NEPAL                          6             1        1     236
6 months    MAL-ED           NEPAL                          7             0       19     236
6 months    MAL-ED           NEPAL                          7             1        0     236
6 months    MAL-ED           NEPAL                          8             0       18     236
6 months    MAL-ED           NEPAL                          8             1        1     236
6 months    MAL-ED           NEPAL                          9             0       19     236
6 months    MAL-ED           NEPAL                          9             1        1     236
6 months    MAL-ED           NEPAL                          10            0       20     236
6 months    MAL-ED           NEPAL                          10            1        0     236
6 months    MAL-ED           NEPAL                          11            0       20     236
6 months    MAL-ED           NEPAL                          11            1        0     236
6 months    MAL-ED           NEPAL                          12            0       20     236
6 months    MAL-ED           NEPAL                          12            1        0     236
6 months    MAL-ED           PERU                           1             0       33     273
6 months    MAL-ED           PERU                           1             1        0     273
6 months    MAL-ED           PERU                           2             0       26     273
6 months    MAL-ED           PERU                           2             1        0     273
6 months    MAL-ED           PERU                           3             0       22     273
6 months    MAL-ED           PERU                           3             1        0     273
6 months    MAL-ED           PERU                           4             0       18     273
6 months    MAL-ED           PERU                           4             1        0     273
6 months    MAL-ED           PERU                           5             0       24     273
6 months    MAL-ED           PERU                           5             1        0     273
6 months    MAL-ED           PERU                           6             0       20     273
6 months    MAL-ED           PERU                           6             1        0     273
6 months    MAL-ED           PERU                           7             0       22     273
6 months    MAL-ED           PERU                           7             1        0     273
6 months    MAL-ED           PERU                           8             0       16     273
6 months    MAL-ED           PERU                           8             1        0     273
6 months    MAL-ED           PERU                           9             0       22     273
6 months    MAL-ED           PERU                           9             1        0     273
6 months    MAL-ED           PERU                           10            0       20     273
6 months    MAL-ED           PERU                           10            1        0     273
6 months    MAL-ED           PERU                           11            0       34     273
6 months    MAL-ED           PERU                           11            1        0     273
6 months    MAL-ED           PERU                           12            0       16     273
6 months    MAL-ED           PERU                           12            1        0     273
6 months    MAL-ED           SOUTH AFRICA                   1             0       31     254
6 months    MAL-ED           SOUTH AFRICA                   1             1        1     254
6 months    MAL-ED           SOUTH AFRICA                   2             0       33     254
6 months    MAL-ED           SOUTH AFRICA                   2             1        0     254
6 months    MAL-ED           SOUTH AFRICA                   3             0       17     254
6 months    MAL-ED           SOUTH AFRICA                   3             1        0     254
6 months    MAL-ED           SOUTH AFRICA                   4             0       12     254
6 months    MAL-ED           SOUTH AFRICA                   4             1        0     254
6 months    MAL-ED           SOUTH AFRICA                   5             0       11     254
6 months    MAL-ED           SOUTH AFRICA                   5             1        0     254
6 months    MAL-ED           SOUTH AFRICA                   6             0       18     254
6 months    MAL-ED           SOUTH AFRICA                   6             1        0     254
6 months    MAL-ED           SOUTH AFRICA                   7             0       25     254
6 months    MAL-ED           SOUTH AFRICA                   7             1        0     254
6 months    MAL-ED           SOUTH AFRICA                   8             0        7     254
6 months    MAL-ED           SOUTH AFRICA                   8             1        0     254
6 months    MAL-ED           SOUTH AFRICA                   9             0       17     254
6 months    MAL-ED           SOUTH AFRICA                   9             1        0     254
6 months    MAL-ED           SOUTH AFRICA                   10            0       20     254
6 months    MAL-ED           SOUTH AFRICA                   10            1        2     254
6 months    MAL-ED           SOUTH AFRICA                   11            0       25     254
6 months    MAL-ED           SOUTH AFRICA                   11            1        4     254
6 months    MAL-ED           SOUTH AFRICA                   12            0       31     254
6 months    MAL-ED           SOUTH AFRICA                   12            1        0     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             0       21     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             0       28     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             0       23     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4             0       10     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4             1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5             0       12     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5             1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6             0       16     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6             1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7             0       28     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7             1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8             0       12     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8             1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9             0       18     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9             1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10            0       19     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10            1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11            0       27     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11            1        1     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12            0       32     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12            1        0     247
6 months    NIH-Birth        BANGLADESH                     1             0       44     537
6 months    NIH-Birth        BANGLADESH                     1             1        6     537
6 months    NIH-Birth        BANGLADESH                     2             0       48     537
6 months    NIH-Birth        BANGLADESH                     2             1        2     537
6 months    NIH-Birth        BANGLADESH                     3             0       45     537
6 months    NIH-Birth        BANGLADESH                     3             1        5     537
6 months    NIH-Birth        BANGLADESH                     4             0       39     537
6 months    NIH-Birth        BANGLADESH                     4             1        5     537
6 months    NIH-Birth        BANGLADESH                     5             0       36     537
6 months    NIH-Birth        BANGLADESH                     5             1        4     537
6 months    NIH-Birth        BANGLADESH                     6             0       38     537
6 months    NIH-Birth        BANGLADESH                     6             1        1     537
6 months    NIH-Birth        BANGLADESH                     7             0       44     537
6 months    NIH-Birth        BANGLADESH                     7             1        1     537
6 months    NIH-Birth        BANGLADESH                     8             0       38     537
6 months    NIH-Birth        BANGLADESH                     8             1        0     537
6 months    NIH-Birth        BANGLADESH                     9             0       28     537
6 months    NIH-Birth        BANGLADESH                     9             1        2     537
6 months    NIH-Birth        BANGLADESH                     10            0       48     537
6 months    NIH-Birth        BANGLADESH                     10            1        4     537
6 months    NIH-Birth        BANGLADESH                     11            0       47     537
6 months    NIH-Birth        BANGLADESH                     11            1        2     537
6 months    NIH-Birth        BANGLADESH                     12            0       47     537
6 months    NIH-Birth        BANGLADESH                     12            1        3     537
6 months    PROBIT           BELARUS                        1             0     1090   15757
6 months    PROBIT           BELARUS                        1             1       11   15757
6 months    PROBIT           BELARUS                        2             0      944   15757
6 months    PROBIT           BELARUS                        2             1        6   15757
6 months    PROBIT           BELARUS                        3             0     1110   15757
6 months    PROBIT           BELARUS                        3             1        4   15757
6 months    PROBIT           BELARUS                        4             0     1065   15757
6 months    PROBIT           BELARUS                        4             1        5   15757
6 months    PROBIT           BELARUS                        5             0     1090   15757
6 months    PROBIT           BELARUS                        5             1        6   15757
6 months    PROBIT           BELARUS                        6             0     1112   15757
6 months    PROBIT           BELARUS                        6             1        8   15757
6 months    PROBIT           BELARUS                        7             0     1357   15757
6 months    PROBIT           BELARUS                        7             1        9   15757
6 months    PROBIT           BELARUS                        8             0     1493   15757
6 months    PROBIT           BELARUS                        8             1        5   15757
6 months    PROBIT           BELARUS                        9             0     1473   15757
6 months    PROBIT           BELARUS                        9             1        8   15757
6 months    PROBIT           BELARUS                        10            0     1652   15757
6 months    PROBIT           BELARUS                        10            1       17   15757
6 months    PROBIT           BELARUS                        11            0     1570   15757
6 months    PROBIT           BELARUS                        11            1       19   15757
6 months    PROBIT           BELARUS                        12            0     1693   15757
6 months    PROBIT           BELARUS                        12            1       10   15757
6 months    ResPak           PAKISTAN                       1             0        2     239
6 months    ResPak           PAKISTAN                       1             1        0     239
6 months    ResPak           PAKISTAN                       2             0        7     239
6 months    ResPak           PAKISTAN                       2             1        1     239
6 months    ResPak           PAKISTAN                       3             0        9     239
6 months    ResPak           PAKISTAN                       3             1        1     239
6 months    ResPak           PAKISTAN                       4             0       19     239
6 months    ResPak           PAKISTAN                       4             1        1     239
6 months    ResPak           PAKISTAN                       5             0       26     239
6 months    ResPak           PAKISTAN                       5             1        4     239
6 months    ResPak           PAKISTAN                       6             0       33     239
6 months    ResPak           PAKISTAN                       6             1        6     239
6 months    ResPak           PAKISTAN                       7             0       40     239
6 months    ResPak           PAKISTAN                       7             1        3     239
6 months    ResPak           PAKISTAN                       8             0       23     239
6 months    ResPak           PAKISTAN                       8             1        3     239
6 months    ResPak           PAKISTAN                       9             0       31     239
6 months    ResPak           PAKISTAN                       9             1        6     239
6 months    ResPak           PAKISTAN                       10            0       15     239
6 months    ResPak           PAKISTAN                       10            1        0     239
6 months    ResPak           PAKISTAN                       11            0        5     239
6 months    ResPak           PAKISTAN                       11            1        1     239
6 months    ResPak           PAKISTAN                       12            0        3     239
6 months    ResPak           PAKISTAN                       12            1        0     239
6 months    SAS-CompFeed     INDIA                          1             0       64    1334
6 months    SAS-CompFeed     INDIA                          1             1       21    1334
6 months    SAS-CompFeed     INDIA                          2             0       69    1334
6 months    SAS-CompFeed     INDIA                          2             1       12    1334
6 months    SAS-CompFeed     INDIA                          3             0       68    1334
6 months    SAS-CompFeed     INDIA                          3             1       12    1334
6 months    SAS-CompFeed     INDIA                          4             0       68    1334
6 months    SAS-CompFeed     INDIA                          4             1        7    1334
6 months    SAS-CompFeed     INDIA                          5             0       64    1334
6 months    SAS-CompFeed     INDIA                          5             1       12    1334
6 months    SAS-CompFeed     INDIA                          6             0       94    1334
6 months    SAS-CompFeed     INDIA                          6             1        8    1334
6 months    SAS-CompFeed     INDIA                          7             0      110    1334
6 months    SAS-CompFeed     INDIA                          7             1        5    1334
6 months    SAS-CompFeed     INDIA                          8             0      144    1334
6 months    SAS-CompFeed     INDIA                          8             1        8    1334
6 months    SAS-CompFeed     INDIA                          9             0      156    1334
6 months    SAS-CompFeed     INDIA                          9             1        9    1334
6 months    SAS-CompFeed     INDIA                          10            0      131    1334
6 months    SAS-CompFeed     INDIA                          10            1       17    1334
6 months    SAS-CompFeed     INDIA                          11            0       97    1334
6 months    SAS-CompFeed     INDIA                          11            1       29    1334
6 months    SAS-CompFeed     INDIA                          12            0      103    1334
6 months    SAS-CompFeed     INDIA                          12            1       26    1334
6 months    SAS-FoodSuppl    INDIA                          1             0       49     380
6 months    SAS-FoodSuppl    INDIA                          1             1       12     380
6 months    SAS-FoodSuppl    INDIA                          2             0       32     380
6 months    SAS-FoodSuppl    INDIA                          2             1        5     380
6 months    SAS-FoodSuppl    INDIA                          3             0       27     380
6 months    SAS-FoodSuppl    INDIA                          3             1        9     380
6 months    SAS-FoodSuppl    INDIA                          4             0       19     380
6 months    SAS-FoodSuppl    INDIA                          4             1        7     380
6 months    SAS-FoodSuppl    INDIA                          5             0       23     380
6 months    SAS-FoodSuppl    INDIA                          5             1        6     380
6 months    SAS-FoodSuppl    INDIA                          6             0       26     380
6 months    SAS-FoodSuppl    INDIA                          6             1        5     380
6 months    SAS-FoodSuppl    INDIA                          7             0       13     380
6 months    SAS-FoodSuppl    INDIA                          7             1        3     380
6 months    SAS-FoodSuppl    INDIA                          8             0        0     380
6 months    SAS-FoodSuppl    INDIA                          8             1        0     380
6 months    SAS-FoodSuppl    INDIA                          9             0        9     380
6 months    SAS-FoodSuppl    INDIA                          9             1        3     380
6 months    SAS-FoodSuppl    INDIA                          10            0       22     380
6 months    SAS-FoodSuppl    INDIA                          10            1        4     380
6 months    SAS-FoodSuppl    INDIA                          11            0       41     380
6 months    SAS-FoodSuppl    INDIA                          11            1        3     380
6 months    SAS-FoodSuppl    INDIA                          12            0       50     380
6 months    SAS-FoodSuppl    INDIA                          12            1       12     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             0      184    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1       15    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             0      133    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             1        4    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             0      139    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             1       12    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             0      136    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             1        2    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             0      154    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             1        7    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             0      139    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             1        3    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             0      141    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             1        4    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             0      167    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             1        7    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             0      194    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             1        4    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            0      192    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            1        3    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            0      178    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            1        9    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            0      184    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            1       17    2028
6 months    ZVITAMBO         ZIMBABWE                       1             0      792    8505
6 months    ZVITAMBO         ZIMBABWE                       1             1       24    8505
6 months    ZVITAMBO         ZIMBABWE                       2             0      577    8505
6 months    ZVITAMBO         ZIMBABWE                       2             1       21    8505
6 months    ZVITAMBO         ZIMBABWE                       3             0      691    8505
6 months    ZVITAMBO         ZIMBABWE                       3             1       29    8505
6 months    ZVITAMBO         ZIMBABWE                       4             0      654    8505
6 months    ZVITAMBO         ZIMBABWE                       4             1       15    8505
6 months    ZVITAMBO         ZIMBABWE                       5             0      603    8505
6 months    ZVITAMBO         ZIMBABWE                       5             1       18    8505
6 months    ZVITAMBO         ZIMBABWE                       6             0      649    8505
6 months    ZVITAMBO         ZIMBABWE                       6             1       21    8505
6 months    ZVITAMBO         ZIMBABWE                       7             0      646    8505
6 months    ZVITAMBO         ZIMBABWE                       7             1       17    8505
6 months    ZVITAMBO         ZIMBABWE                       8             0      728    8505
6 months    ZVITAMBO         ZIMBABWE                       8             1       31    8505
6 months    ZVITAMBO         ZIMBABWE                       9             0      767    8505
6 months    ZVITAMBO         ZIMBABWE                       9             1       22    8505
6 months    ZVITAMBO         ZIMBABWE                       10            0      597    8505
6 months    ZVITAMBO         ZIMBABWE                       10            1       20    8505
6 months    ZVITAMBO         ZIMBABWE                       11            0      728    8505
6 months    ZVITAMBO         ZIMBABWE                       11            1       17    8505
6 months    ZVITAMBO         ZIMBABWE                       12            0      808    8505
6 months    ZVITAMBO         ZIMBABWE                       12            1       30    8505
24 months   CMC-V-BCS-2002   INDIA                          1             0       27     372
24 months   CMC-V-BCS-2002   INDIA                          1             1        1     372
24 months   CMC-V-BCS-2002   INDIA                          2             0       24     372
24 months   CMC-V-BCS-2002   INDIA                          2             1        0     372
24 months   CMC-V-BCS-2002   INDIA                          3             0       24     372
24 months   CMC-V-BCS-2002   INDIA                          3             1        2     372
24 months   CMC-V-BCS-2002   INDIA                          4             0       29     372
24 months   CMC-V-BCS-2002   INDIA                          4             1        0     372
24 months   CMC-V-BCS-2002   INDIA                          5             0       41     372
24 months   CMC-V-BCS-2002   INDIA                          5             1        2     372
24 months   CMC-V-BCS-2002   INDIA                          6             0       33     372
24 months   CMC-V-BCS-2002   INDIA                          6             1        4     372
24 months   CMC-V-BCS-2002   INDIA                          7             0       31     372
24 months   CMC-V-BCS-2002   INDIA                          7             1        2     372
24 months   CMC-V-BCS-2002   INDIA                          8             0       37     372
24 months   CMC-V-BCS-2002   INDIA                          8             1        4     372
24 months   CMC-V-BCS-2002   INDIA                          9             0       20     372
24 months   CMC-V-BCS-2002   INDIA                          9             1        2     372
24 months   CMC-V-BCS-2002   INDIA                          10            0       17     372
24 months   CMC-V-BCS-2002   INDIA                          10            1        2     372
24 months   CMC-V-BCS-2002   INDIA                          11            0       40     372
24 months   CMC-V-BCS-2002   INDIA                          11            1        1     372
24 months   CMC-V-BCS-2002   INDIA                          12            0       26     372
24 months   CMC-V-BCS-2002   INDIA                          12            1        3     372
24 months   CMIN             BANGLADESH                     1             0       23     243
24 months   CMIN             BANGLADESH                     1             1        4     243
24 months   CMIN             BANGLADESH                     2             0       31     243
24 months   CMIN             BANGLADESH                     2             1        0     243
24 months   CMIN             BANGLADESH                     3             0       19     243
24 months   CMIN             BANGLADESH                     3             1        0     243
24 months   CMIN             BANGLADESH                     4             0       17     243
24 months   CMIN             BANGLADESH                     4             1        1     243
24 months   CMIN             BANGLADESH                     5             0       17     243
24 months   CMIN             BANGLADESH                     5             1        2     243
24 months   CMIN             BANGLADESH                     6             0       21     243
24 months   CMIN             BANGLADESH                     6             1        1     243
24 months   CMIN             BANGLADESH                     7             0       12     243
24 months   CMIN             BANGLADESH                     7             1        0     243
24 months   CMIN             BANGLADESH                     8             0       12     243
24 months   CMIN             BANGLADESH                     8             1        1     243
24 months   CMIN             BANGLADESH                     9             0       15     243
24 months   CMIN             BANGLADESH                     9             1        3     243
24 months   CMIN             BANGLADESH                     10            0       15     243
24 months   CMIN             BANGLADESH                     10            1        4     243
24 months   CMIN             BANGLADESH                     11            0        2     243
24 months   CMIN             BANGLADESH                     11            1        0     243
24 months   CMIN             BANGLADESH                     12            0       34     243
24 months   CMIN             BANGLADESH                     12            1        9     243
24 months   CONTENT          PERU                           1             0        7     164
24 months   CONTENT          PERU                           1             1        1     164
24 months   CONTENT          PERU                           2             0       10     164
24 months   CONTENT          PERU                           2             1        0     164
24 months   CONTENT          PERU                           3             0       20     164
24 months   CONTENT          PERU                           3             1        0     164
24 months   CONTENT          PERU                           4             0       13     164
24 months   CONTENT          PERU                           4             1        0     164
24 months   CONTENT          PERU                           5             0       22     164
24 months   CONTENT          PERU                           5             1        0     164
24 months   CONTENT          PERU                           6             0       11     164
24 months   CONTENT          PERU                           6             1        0     164
24 months   CONTENT          PERU                           7             0       13     164
24 months   CONTENT          PERU                           7             1        0     164
24 months   CONTENT          PERU                           8             0       23     164
24 months   CONTENT          PERU                           8             1        0     164
24 months   CONTENT          PERU                           9             0       11     164
24 months   CONTENT          PERU                           9             1        0     164
24 months   CONTENT          PERU                           10            0       12     164
24 months   CONTENT          PERU                           10            1        0     164
24 months   CONTENT          PERU                           11            0       17     164
24 months   CONTENT          PERU                           11            1        0     164
24 months   CONTENT          PERU                           12            0        4     164
24 months   CONTENT          PERU                           12            1        0     164
24 months   EE               PAKISTAN                       1             0       23     168
24 months   EE               PAKISTAN                       1             1        6     168
24 months   EE               PAKISTAN                       2             0        2     168
24 months   EE               PAKISTAN                       2             1        0     168
24 months   EE               PAKISTAN                       3             0        2     168
24 months   EE               PAKISTAN                       3             1        0     168
24 months   EE               PAKISTAN                       4             0        0     168
24 months   EE               PAKISTAN                       4             1        0     168
24 months   EE               PAKISTAN                       5             0        0     168
24 months   EE               PAKISTAN                       5             1        0     168
24 months   EE               PAKISTAN                       6             0        0     168
24 months   EE               PAKISTAN                       6             1        0     168
24 months   EE               PAKISTAN                       7             0        0     168
24 months   EE               PAKISTAN                       7             1        0     168
24 months   EE               PAKISTAN                       8             0        0     168
24 months   EE               PAKISTAN                       8             1        0     168
24 months   EE               PAKISTAN                       9             0        0     168
24 months   EE               PAKISTAN                       9             1        0     168
24 months   EE               PAKISTAN                       10            0        0     168
24 months   EE               PAKISTAN                       10            1        0     168
24 months   EE               PAKISTAN                       11            0       47     168
24 months   EE               PAKISTAN                       11            1       10     168
24 months   EE               PAKISTAN                       12            0       64     168
24 months   EE               PAKISTAN                       12            1       14     168
24 months   GMS-Nepal        NEPAL                          1             0        0     487
24 months   GMS-Nepal        NEPAL                          1             1        0     487
24 months   GMS-Nepal        NEPAL                          2             0        0     487
24 months   GMS-Nepal        NEPAL                          2             1        0     487
24 months   GMS-Nepal        NEPAL                          3             0        0     487
24 months   GMS-Nepal        NEPAL                          3             1        0     487
24 months   GMS-Nepal        NEPAL                          4             0        0     487
24 months   GMS-Nepal        NEPAL                          4             1        0     487
24 months   GMS-Nepal        NEPAL                          5             0        0     487
24 months   GMS-Nepal        NEPAL                          5             1        0     487
24 months   GMS-Nepal        NEPAL                          6             0       55     487
24 months   GMS-Nepal        NEPAL                          6             1       17     487
24 months   GMS-Nepal        NEPAL                          7             0      161     487
24 months   GMS-Nepal        NEPAL                          7             1       39     487
24 months   GMS-Nepal        NEPAL                          8             0      180     487
24 months   GMS-Nepal        NEPAL                          8             1       35     487
24 months   GMS-Nepal        NEPAL                          9             0        0     487
24 months   GMS-Nepal        NEPAL                          9             1        0     487
24 months   GMS-Nepal        NEPAL                          10            0        0     487
24 months   GMS-Nepal        NEPAL                          10            1        0     487
24 months   GMS-Nepal        NEPAL                          11            0        0     487
24 months   GMS-Nepal        NEPAL                          11            1        0     487
24 months   GMS-Nepal        NEPAL                          12            0        0     487
24 months   GMS-Nepal        NEPAL                          12            1        0     487
24 months   IRC              INDIA                          1             0       33     409
24 months   IRC              INDIA                          1             1        2     409
24 months   IRC              INDIA                          2             0       30     409
24 months   IRC              INDIA                          2             1        0     409
24 months   IRC              INDIA                          3             0       28     409
24 months   IRC              INDIA                          3             1        1     409
24 months   IRC              INDIA                          4             0       22     409
24 months   IRC              INDIA                          4             1        2     409
24 months   IRC              INDIA                          5             0       18     409
24 months   IRC              INDIA                          5             1        3     409
24 months   IRC              INDIA                          6             0       32     409
24 months   IRC              INDIA                          6             1        3     409
24 months   IRC              INDIA                          7             0       34     409
24 months   IRC              INDIA                          7             1        2     409
24 months   IRC              INDIA                          8             0       36     409
24 months   IRC              INDIA                          8             1        5     409
24 months   IRC              INDIA                          9             0       25     409
24 months   IRC              INDIA                          9             1        5     409
24 months   IRC              INDIA                          10            0       34     409
24 months   IRC              INDIA                          10            1        4     409
24 months   IRC              INDIA                          11            0       38     409
24 months   IRC              INDIA                          11            1        3     409
24 months   IRC              INDIA                          12            0       48     409
24 months   IRC              INDIA                          12            1        1     409
24 months   JiVitA-3         BANGLADESH                     1             0      605    8603
24 months   JiVitA-3         BANGLADESH                     1             1      100    8603
24 months   JiVitA-3         BANGLADESH                     2             0      508    8603
24 months   JiVitA-3         BANGLADESH                     2             1      100    8603
24 months   JiVitA-3         BANGLADESH                     3             0      600    8603
24 months   JiVitA-3         BANGLADESH                     3             1      126    8603
24 months   JiVitA-3         BANGLADESH                     4             0      420    8603
24 months   JiVitA-3         BANGLADESH                     4             1      118    8603
24 months   JiVitA-3         BANGLADESH                     5             0      306    8603
24 months   JiVitA-3         BANGLADESH                     5             1       88    8603
24 months   JiVitA-3         BANGLADESH                     6             0      404    8603
24 months   JiVitA-3         BANGLADESH                     6             1      157    8603
24 months   JiVitA-3         BANGLADESH                     7             0      462    8603
24 months   JiVitA-3         BANGLADESH                     7             1      187    8603
24 months   JiVitA-3         BANGLADESH                     8             0      473    8603
24 months   JiVitA-3         BANGLADESH                     8             1      174    8603
24 months   JiVitA-3         BANGLADESH                     9             0      538    8603
24 months   JiVitA-3         BANGLADESH                     9             1      188    8603
24 months   JiVitA-3         BANGLADESH                     10            0      665    8603
24 months   JiVitA-3         BANGLADESH                     10            1      220    8603
24 months   JiVitA-3         BANGLADESH                     11            0      731    8603
24 months   JiVitA-3         BANGLADESH                     11            1      206    8603
24 months   JiVitA-3         BANGLADESH                     12            0     1013    8603
24 months   JiVitA-3         BANGLADESH                     12            1      214    8603
24 months   JiVitA-4         BANGLADESH                     1             0       38    4735
24 months   JiVitA-4         BANGLADESH                     1             1       10    4735
24 months   JiVitA-4         BANGLADESH                     2             0      281    4735
24 months   JiVitA-4         BANGLADESH                     2             1       40    4735
24 months   JiVitA-4         BANGLADESH                     3             0      340    4735
24 months   JiVitA-4         BANGLADESH                     3             1       60    4735
24 months   JiVitA-4         BANGLADESH                     4             0      648    4735
24 months   JiVitA-4         BANGLADESH                     4             1      148    4735
24 months   JiVitA-4         BANGLADESH                     5             0      426    4735
24 months   JiVitA-4         BANGLADESH                     5             1      133    4735
24 months   JiVitA-4         BANGLADESH                     6             0      322    4735
24 months   JiVitA-4         BANGLADESH                     6             1      101    4735
24 months   JiVitA-4         BANGLADESH                     7             0      609    4735
24 months   JiVitA-4         BANGLADESH                     7             1      171    4735
24 months   JiVitA-4         BANGLADESH                     8             0      382    4735
24 months   JiVitA-4         BANGLADESH                     8             1       90    4735
24 months   JiVitA-4         BANGLADESH                     9             0      374    4735
24 months   JiVitA-4         BANGLADESH                     9             1       70    4735
24 months   JiVitA-4         BANGLADESH                     10            0      230    4735
24 months   JiVitA-4         BANGLADESH                     10            1       46    4735
24 months   JiVitA-4         BANGLADESH                     11            0      112    4735
24 months   JiVitA-4         BANGLADESH                     11            1       33    4735
24 months   JiVitA-4         BANGLADESH                     12            0       53    4735
24 months   JiVitA-4         BANGLADESH                     12            1       18    4735
24 months   Keneba           GAMBIA                         1             0      130    1726
24 months   Keneba           GAMBIA                         1             1       18    1726
24 months   Keneba           GAMBIA                         2             0      149    1726
24 months   Keneba           GAMBIA                         2             1       11    1726
24 months   Keneba           GAMBIA                         3             0      152    1726
24 months   Keneba           GAMBIA                         3             1        7    1726
24 months   Keneba           GAMBIA                         4             0      162    1726
24 months   Keneba           GAMBIA                         4             1       13    1726
24 months   Keneba           GAMBIA                         5             0      167    1726
24 months   Keneba           GAMBIA                         5             1       15    1726
24 months   Keneba           GAMBIA                         6             0      121    1726
24 months   Keneba           GAMBIA                         6             1       11    1726
24 months   Keneba           GAMBIA                         7             0       93    1726
24 months   Keneba           GAMBIA                         7             1        8    1726
24 months   Keneba           GAMBIA                         8             0       73    1726
24 months   Keneba           GAMBIA                         8             1       21    1726
24 months   Keneba           GAMBIA                         9             0      117    1726
24 months   Keneba           GAMBIA                         9             1       18    1726
24 months   Keneba           GAMBIA                         10            0      129    1726
24 months   Keneba           GAMBIA                         10            1       21    1726
24 months   Keneba           GAMBIA                         11            0      151    1726
24 months   Keneba           GAMBIA                         11            1       27    1726
24 months   Keneba           GAMBIA                         12            0       91    1726
24 months   Keneba           GAMBIA                         12            1       21    1726
24 months   LCNI-5           MALAWI                         1             0       39     563
24 months   LCNI-5           MALAWI                         1             1        1     563
24 months   LCNI-5           MALAWI                         2             0       85     563
24 months   LCNI-5           MALAWI                         2             1        1     563
24 months   LCNI-5           MALAWI                         3             0       64     563
24 months   LCNI-5           MALAWI                         3             1        3     563
24 months   LCNI-5           MALAWI                         4             0       74     563
24 months   LCNI-5           MALAWI                         4             1        0     563
24 months   LCNI-5           MALAWI                         5             0       61     563
24 months   LCNI-5           MALAWI                         5             1        1     563
24 months   LCNI-5           MALAWI                         6             0       61     563
24 months   LCNI-5           MALAWI                         6             1        3     563
24 months   LCNI-5           MALAWI                         7             0       39     563
24 months   LCNI-5           MALAWI                         7             1        0     563
24 months   LCNI-5           MALAWI                         8             0       27     563
24 months   LCNI-5           MALAWI                         8             1        0     563
24 months   LCNI-5           MALAWI                         9             0       19     563
24 months   LCNI-5           MALAWI                         9             1        1     563
24 months   LCNI-5           MALAWI                         10            0       25     563
24 months   LCNI-5           MALAWI                         10            1        0     563
24 months   LCNI-5           MALAWI                         11            0       35     563
24 months   LCNI-5           MALAWI                         11            1        0     563
24 months   LCNI-5           MALAWI                         12            0       24     563
24 months   LCNI-5           MALAWI                         12            1        0     563
24 months   MAL-ED           BANGLADESH                     1             0       16     212
24 months   MAL-ED           BANGLADESH                     1             1        1     212
24 months   MAL-ED           BANGLADESH                     2             0       16     212
24 months   MAL-ED           BANGLADESH                     2             1        1     212
24 months   MAL-ED           BANGLADESH                     3             0       18     212
24 months   MAL-ED           BANGLADESH                     3             1        1     212
24 months   MAL-ED           BANGLADESH                     4             0       18     212
24 months   MAL-ED           BANGLADESH                     4             1        3     212
24 months   MAL-ED           BANGLADESH                     5             0       12     212
24 months   MAL-ED           BANGLADESH                     5             1        3     212
24 months   MAL-ED           BANGLADESH                     6             0        9     212
24 months   MAL-ED           BANGLADESH                     6             1        0     212
24 months   MAL-ED           BANGLADESH                     7             0       15     212
24 months   MAL-ED           BANGLADESH                     7             1        2     212
24 months   MAL-ED           BANGLADESH                     8             0       23     212
24 months   MAL-ED           BANGLADESH                     8             1        1     212
24 months   MAL-ED           BANGLADESH                     9             0       14     212
24 months   MAL-ED           BANGLADESH                     9             1        4     212
24 months   MAL-ED           BANGLADESH                     10            0       18     212
24 months   MAL-ED           BANGLADESH                     10            1        2     212
24 months   MAL-ED           BANGLADESH                     11            0        7     212
24 months   MAL-ED           BANGLADESH                     11            1        2     212
24 months   MAL-ED           BANGLADESH                     12            0       25     212
24 months   MAL-ED           BANGLADESH                     12            1        1     212
24 months   MAL-ED           BRAZIL                         1             0       14     169
24 months   MAL-ED           BRAZIL                         1             1        0     169
24 months   MAL-ED           BRAZIL                         2             0       19     169
24 months   MAL-ED           BRAZIL                         2             1        0     169
24 months   MAL-ED           BRAZIL                         3             0       11     169
24 months   MAL-ED           BRAZIL                         3             1        0     169
24 months   MAL-ED           BRAZIL                         4             0       11     169
24 months   MAL-ED           BRAZIL                         4             1        0     169
24 months   MAL-ED           BRAZIL                         5             0       15     169
24 months   MAL-ED           BRAZIL                         5             1        0     169
24 months   MAL-ED           BRAZIL                         6             0        9     169
24 months   MAL-ED           BRAZIL                         6             1        0     169
24 months   MAL-ED           BRAZIL                         7             0       10     169
24 months   MAL-ED           BRAZIL                         7             1        0     169
24 months   MAL-ED           BRAZIL                         8             0       11     169
24 months   MAL-ED           BRAZIL                         8             1        1     169
24 months   MAL-ED           BRAZIL                         9             0       18     169
24 months   MAL-ED           BRAZIL                         9             1        0     169
24 months   MAL-ED           BRAZIL                         10            0       20     169
24 months   MAL-ED           BRAZIL                         10            1        1     169
24 months   MAL-ED           BRAZIL                         11            0       12     169
24 months   MAL-ED           BRAZIL                         11            1        0     169
24 months   MAL-ED           BRAZIL                         12            0       16     169
24 months   MAL-ED           BRAZIL                         12            1        1     169
24 months   MAL-ED           INDIA                          1             0       14     227
24 months   MAL-ED           INDIA                          1             1        1     227
24 months   MAL-ED           INDIA                          2             0       21     227
24 months   MAL-ED           INDIA                          2             1        2     227
24 months   MAL-ED           INDIA                          3             0       18     227
24 months   MAL-ED           INDIA                          3             1        1     227
24 months   MAL-ED           INDIA                          4             0       15     227
24 months   MAL-ED           INDIA                          4             1        2     227
24 months   MAL-ED           INDIA                          5             0        6     227
24 months   MAL-ED           INDIA                          5             1        1     227
24 months   MAL-ED           INDIA                          6             0       13     227
24 months   MAL-ED           INDIA                          6             1        4     227
24 months   MAL-ED           INDIA                          7             0       20     227
24 months   MAL-ED           INDIA                          7             1        1     227
24 months   MAL-ED           INDIA                          8             0       16     227
24 months   MAL-ED           INDIA                          8             1        4     227
24 months   MAL-ED           INDIA                          9             0       18     227
24 months   MAL-ED           INDIA                          9             1        2     227
24 months   MAL-ED           INDIA                          10            0       20     227
24 months   MAL-ED           INDIA                          10            1        3     227
24 months   MAL-ED           INDIA                          11            0       21     227
24 months   MAL-ED           INDIA                          11            1        3     227
24 months   MAL-ED           INDIA                          12            0       18     227
24 months   MAL-ED           INDIA                          12            1        3     227
24 months   MAL-ED           NEPAL                          1             0       19     228
24 months   MAL-ED           NEPAL                          1             1        0     228
24 months   MAL-ED           NEPAL                          2             0       18     228
24 months   MAL-ED           NEPAL                          2             1        0     228
24 months   MAL-ED           NEPAL                          3             0       19     228
24 months   MAL-ED           NEPAL                          3             1        0     228
24 months   MAL-ED           NEPAL                          4             0       20     228
24 months   MAL-ED           NEPAL                          4             1        0     228
24 months   MAL-ED           NEPAL                          5             0       17     228
24 months   MAL-ED           NEPAL                          5             1        0     228
24 months   MAL-ED           NEPAL                          6             0       19     228
24 months   MAL-ED           NEPAL                          6             1        1     228
24 months   MAL-ED           NEPAL                          7             0       19     228
24 months   MAL-ED           NEPAL                          7             1        0     228
24 months   MAL-ED           NEPAL                          8             0       18     228
24 months   MAL-ED           NEPAL                          8             1        0     228
24 months   MAL-ED           NEPAL                          9             0       18     228
24 months   MAL-ED           NEPAL                          9             1        1     228
24 months   MAL-ED           NEPAL                          10            0       19     228
24 months   MAL-ED           NEPAL                          10            1        1     228
24 months   MAL-ED           NEPAL                          11            0       18     228
24 months   MAL-ED           NEPAL                          11            1        1     228
24 months   MAL-ED           NEPAL                          12            0       19     228
24 months   MAL-ED           NEPAL                          12            1        1     228
24 months   MAL-ED           PERU                           1             0       26     201
24 months   MAL-ED           PERU                           1             1        0     201
24 months   MAL-ED           PERU                           2             0       22     201
24 months   MAL-ED           PERU                           2             1        1     201
24 months   MAL-ED           PERU                           3             0       15     201
24 months   MAL-ED           PERU                           3             1        0     201
24 months   MAL-ED           PERU                           4             0       10     201
24 months   MAL-ED           PERU                           4             1        0     201
24 months   MAL-ED           PERU                           5             0       18     201
24 months   MAL-ED           PERU                           5             1        0     201
24 months   MAL-ED           PERU                           6             0       13     201
24 months   MAL-ED           PERU                           6             1        1     201
24 months   MAL-ED           PERU                           7             0       14     201
24 months   MAL-ED           PERU                           7             1        0     201
24 months   MAL-ED           PERU                           8             0       11     201
24 months   MAL-ED           PERU                           8             1        1     201
24 months   MAL-ED           PERU                           9             0       21     201
24 months   MAL-ED           PERU                           9             1        0     201
24 months   MAL-ED           PERU                           10            0       15     201
24 months   MAL-ED           PERU                           10            1        0     201
24 months   MAL-ED           PERU                           11            0       20     201
24 months   MAL-ED           PERU                           11            1        1     201
24 months   MAL-ED           PERU                           12            0       12     201
24 months   MAL-ED           PERU                           12            1        0     201
24 months   MAL-ED           SOUTH AFRICA                   1             0       28     238
24 months   MAL-ED           SOUTH AFRICA                   1             1        1     238
24 months   MAL-ED           SOUTH AFRICA                   2             0       30     238
24 months   MAL-ED           SOUTH AFRICA                   2             1        0     238
24 months   MAL-ED           SOUTH AFRICA                   3             0       16     238
24 months   MAL-ED           SOUTH AFRICA                   3             1        0     238
24 months   MAL-ED           SOUTH AFRICA                   4             0       12     238
24 months   MAL-ED           SOUTH AFRICA                   4             1        0     238
24 months   MAL-ED           SOUTH AFRICA                   5             0       10     238
24 months   MAL-ED           SOUTH AFRICA                   5             1        0     238
24 months   MAL-ED           SOUTH AFRICA                   6             0       15     238
24 months   MAL-ED           SOUTH AFRICA                   6             1        0     238
24 months   MAL-ED           SOUTH AFRICA                   7             0       25     238
24 months   MAL-ED           SOUTH AFRICA                   7             1        0     238
24 months   MAL-ED           SOUTH AFRICA                   8             0        7     238
24 months   MAL-ED           SOUTH AFRICA                   8             1        0     238
24 months   MAL-ED           SOUTH AFRICA                   9             0       17     238
24 months   MAL-ED           SOUTH AFRICA                   9             1        0     238
24 months   MAL-ED           SOUTH AFRICA                   10            0       22     238
24 months   MAL-ED           SOUTH AFRICA                   10            1        0     238
24 months   MAL-ED           SOUTH AFRICA                   11            0       27     238
24 months   MAL-ED           SOUTH AFRICA                   11            1        0     238
24 months   MAL-ED           SOUTH AFRICA                   12            0       28     238
24 months   MAL-ED           SOUTH AFRICA                   12            1        0     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             0       16     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             1        2     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             0       18     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             1        1     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             0       22     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4             0        8     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4             1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5             0       14     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5             1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6             0       14     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6             1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7             0       28     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7             1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8             0       11     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8             1        1     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9             0       15     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9             1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10            0       17     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10            1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11            0       21     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11            1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12            0       26     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12            1        0     214
24 months   NIH-Birth        BANGLADESH                     1             0       39     428
24 months   NIH-Birth        BANGLADESH                     1             1        3     428
24 months   NIH-Birth        BANGLADESH                     2             0       33     428
24 months   NIH-Birth        BANGLADESH                     2             1        3     428
24 months   NIH-Birth        BANGLADESH                     3             0       33     428
24 months   NIH-Birth        BANGLADESH                     3             1        8     428
24 months   NIH-Birth        BANGLADESH                     4             0       26     428
24 months   NIH-Birth        BANGLADESH                     4             1        8     428
24 months   NIH-Birth        BANGLADESH                     5             0       32     428
24 months   NIH-Birth        BANGLADESH                     5             1        2     428
24 months   NIH-Birth        BANGLADESH                     6             0       26     428
24 months   NIH-Birth        BANGLADESH                     6             1        4     428
24 months   NIH-Birth        BANGLADESH                     7             0       32     428
24 months   NIH-Birth        BANGLADESH                     7             1        5     428
24 months   NIH-Birth        BANGLADESH                     8             0       25     428
24 months   NIH-Birth        BANGLADESH                     8             1        5     428
24 months   NIH-Birth        BANGLADESH                     9             0       16     428
24 months   NIH-Birth        BANGLADESH                     9             1        3     428
24 months   NIH-Birth        BANGLADESH                     10            0       34     428
24 months   NIH-Birth        BANGLADESH                     10            1        6     428
24 months   NIH-Birth        BANGLADESH                     11            0       35     428
24 months   NIH-Birth        BANGLADESH                     11            1        5     428
24 months   NIH-Birth        BANGLADESH                     12            0       44     428
24 months   NIH-Birth        BANGLADESH                     12            1        1     428
24 months   PROBIT           BELARUS                        1             0      262    3970
24 months   PROBIT           BELARUS                        1             1        2    3970
24 months   PROBIT           BELARUS                        2             0      207    3970
24 months   PROBIT           BELARUS                        2             1        3    3970
24 months   PROBIT           BELARUS                        3             0      318    3970
24 months   PROBIT           BELARUS                        3             1        2    3970
24 months   PROBIT           BELARUS                        4             0      319    3970
24 months   PROBIT           BELARUS                        4             1        3    3970
24 months   PROBIT           BELARUS                        5             0      300    3970
24 months   PROBIT           BELARUS                        5             1        1    3970
24 months   PROBIT           BELARUS                        6             0      261    3970
24 months   PROBIT           BELARUS                        6             1        3    3970
24 months   PROBIT           BELARUS                        7             0      363    3970
24 months   PROBIT           BELARUS                        7             1        1    3970
24 months   PROBIT           BELARUS                        8             0      343    3970
24 months   PROBIT           BELARUS                        8             1        3    3970
24 months   PROBIT           BELARUS                        9             0      371    3970
24 months   PROBIT           BELARUS                        9             1        4    3970
24 months   PROBIT           BELARUS                        10            0      387    3970
24 months   PROBIT           BELARUS                        10            1        2    3970
24 months   PROBIT           BELARUS                        11            0      381    3970
24 months   PROBIT           BELARUS                        11            1        5    3970
24 months   PROBIT           BELARUS                        12            0      426    3970
24 months   PROBIT           BELARUS                        12            1        3    3970
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            1        0       6
24 months   ZVITAMBO         ZIMBABWE                       1             0       44     433
24 months   ZVITAMBO         ZIMBABWE                       1             1        7     433
24 months   ZVITAMBO         ZIMBABWE                       2             0       50     433
24 months   ZVITAMBO         ZIMBABWE                       2             1       10     433
24 months   ZVITAMBO         ZIMBABWE                       3             0       43     433
24 months   ZVITAMBO         ZIMBABWE                       3             1       13     433
24 months   ZVITAMBO         ZIMBABWE                       4             0       40     433
24 months   ZVITAMBO         ZIMBABWE                       4             1        6     433
24 months   ZVITAMBO         ZIMBABWE                       5             0       35     433
24 months   ZVITAMBO         ZIMBABWE                       5             1       14     433
24 months   ZVITAMBO         ZIMBABWE                       6             0       37     433
24 months   ZVITAMBO         ZIMBABWE                       6             1        7     433
24 months   ZVITAMBO         ZIMBABWE                       7             0       25     433
24 months   ZVITAMBO         ZIMBABWE                       7             1        7     433
24 months   ZVITAMBO         ZIMBABWE                       8             0       23     433
24 months   ZVITAMBO         ZIMBABWE                       8             1        7     433
24 months   ZVITAMBO         ZIMBABWE                       9             0        2     433
24 months   ZVITAMBO         ZIMBABWE                       9             1        0     433
24 months   ZVITAMBO         ZIMBABWE                       10            0        4     433
24 months   ZVITAMBO         ZIMBABWE                       10            1        0     433
24 months   ZVITAMBO         ZIMBABWE                       11            0       19     433
24 months   ZVITAMBO         ZIMBABWE                       11            1        1     433
24 months   ZVITAMBO         ZIMBABWE                       12            0       32     433
24 months   ZVITAMBO         ZIMBABWE                       12            1        7     433


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
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/36b2e70c-e834-44ca-b503-70e70058f540/6f2ac35d-d6f1-4f8e-92aa-9b25b79733ff/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/36b2e70c-e834-44ca-b503-70e70058f540/6f2ac35d-d6f1-4f8e-92aa-9b25b79733ff/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/36b2e70c-e834-44ca-b503-70e70058f540/6f2ac35d-d6f1-4f8e-92aa-9b25b79733ff/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/36b2e70c-e834-44ca-b503-70e70058f540/6f2ac35d-d6f1-4f8e-92aa-9b25b79733ff/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3       BANGLADESH   1                    NA                0.0890663   0.0743535   0.1037792
Birth       JiVitA-3       BANGLADESH   2                    NA                0.0992204   0.0827360   0.1157049
Birth       JiVitA-3       BANGLADESH   3                    NA                0.1049563   0.0897758   0.1201368
Birth       JiVitA-3       BANGLADESH   4                    NA                0.1060606   0.0877629   0.1243583
Birth       JiVitA-3       BANGLADESH   5                    NA                0.1150838   0.0930992   0.1370684
Birth       JiVitA-3       BANGLADESH   6                    NA                0.1111111   0.0898745   0.1323477
Birth       JiVitA-3       BANGLADESH   7                    NA                0.0893536   0.0714759   0.1072313
Birth       JiVitA-3       BANGLADESH   8                    NA                0.1136035   0.0960423   0.1311646
Birth       JiVitA-3       BANGLADESH   9                    NA                0.1384863   0.1216069   0.1553657
Birth       JiVitA-3       BANGLADESH   10                   NA                0.1228437   0.1071620   0.1385254
Birth       JiVitA-3       BANGLADESH   11                   NA                0.1149606   0.0993133   0.1306080
Birth       JiVitA-3       BANGLADESH   12                   NA                0.0996150   0.0858213   0.1134087
Birth       Keneba         GAMBIA       1                    NA                0.3007519   0.2227886   0.3787152
Birth       Keneba         GAMBIA       2                    NA                0.2614379   0.1917868   0.3310891
Birth       Keneba         GAMBIA       3                    NA                0.2571429   0.1847206   0.3295651
Birth       Keneba         GAMBIA       4                    NA                0.2201258   0.1557021   0.2845495
Birth       Keneba         GAMBIA       5                    NA                0.2330097   0.1513403   0.3146792
Birth       Keneba         GAMBIA       6                    NA                0.2156863   0.1358404   0.2955321
Birth       Keneba         GAMBIA       7                    NA                0.1294118   0.0580312   0.2007923
Birth       Keneba         GAMBIA       8                    NA                0.2297297   0.1338536   0.3256059
Birth       Keneba         GAMBIA       9                    NA                0.2758621   0.1944996   0.3572245
Birth       Keneba         GAMBIA       10                   NA                0.2457627   0.1680544   0.3234710
Birth       Keneba         GAMBIA       11                   NA                0.2797619   0.2118613   0.3476626
Birth       Keneba         GAMBIA       12                   NA                0.2695652   0.1884374   0.3506931
Birth       NIH-Birth      BANGLADESH   1                    NA                0.2777778   0.1582102   0.3973453
Birth       NIH-Birth      BANGLADESH   2                    NA                0.2909091   0.1707728   0.4110454
Birth       NIH-Birth      BANGLADESH   3                    NA                0.2931034   0.1758568   0.4103501
Birth       NIH-Birth      BANGLADESH   4                    NA                0.2916667   0.1629699   0.4203634
Birth       NIH-Birth      BANGLADESH   5                    NA                0.4222222   0.2777878   0.5666567
Birth       NIH-Birth      BANGLADESH   6                    NA                0.4000000   0.2480497   0.5519503
Birth       NIH-Birth      BANGLADESH   7                    NA                0.3777778   0.2359991   0.5195564
Birth       NIH-Birth      BANGLADESH   8                    NA                0.2926829   0.1532903   0.4320756
Birth       NIH-Birth      BANGLADESH   9                    NA                0.3548387   0.1862631   0.5234144
Birth       NIH-Birth      BANGLADESH   10                   NA                0.2241379   0.1167237   0.3315522
Birth       NIH-Birth      BANGLADESH   11                   NA                0.2448980   0.1243879   0.3654081
Birth       NIH-Birth      BANGLADESH   12                   NA                0.1176471   0.0291451   0.2061490
Birth       PROBIT         BELARUS      1                    NA                0.2210526   0.1288901   0.3132151
Birth       PROBIT         BELARUS      2                    NA                0.1770701   0.1024159   0.2517243
Birth       PROBIT         BELARUS      3                    NA                0.2031250   0.1253653   0.2808847
Birth       PROBIT         BELARUS      4                    NA                0.2157068   0.1371205   0.2942931
Birth       PROBIT         BELARUS      5                    NA                0.2413066   0.1526197   0.3299936
Birth       PROBIT         BELARUS      6                    NA                0.2127237   0.1434921   0.2819552
Birth       PROBIT         BELARUS      7                    NA                0.2360784   0.1568910   0.3152659
Birth       PROBIT         BELARUS      8                    NA                0.2207891   0.1449448   0.2966333
Birth       PROBIT         BELARUS      9                    NA                0.1952708   0.1183709   0.2721707
Birth       PROBIT         BELARUS      10                   NA                0.2179144   0.1564498   0.2793790
Birth       PROBIT         BELARUS      11                   NA                0.1810345   0.1264687   0.2356002
Birth       PROBIT         BELARUS      12                   NA                0.2033003   0.1308712   0.2757294
Birth       ZVITAMBO       ZIMBABWE     1                    NA                0.1462036   0.1265219   0.1658852
Birth       ZVITAMBO       ZIMBABWE     2                    NA                0.1308017   0.1093369   0.1522665
Birth       ZVITAMBO       ZIMBABWE     3                    NA                0.1443396   0.1231826   0.1654967
Birth       ZVITAMBO       ZIMBABWE     4                    NA                0.1275239   0.1062110   0.1488368
Birth       ZVITAMBO       ZIMBABWE     5                    NA                0.1531729   0.1298232   0.1765225
Birth       ZVITAMBO       ZIMBABWE     6                    NA                0.1872015   0.1635729   0.2108301
Birth       ZVITAMBO       ZIMBABWE     7                    NA                0.1939891   0.1705995   0.2173787
Birth       ZVITAMBO       ZIMBABWE     8                    NA                0.1792453   0.1572289   0.2012617
Birth       ZVITAMBO       ZIMBABWE     9                    NA                0.1435331   0.1242340   0.1628322
Birth       ZVITAMBO       ZIMBABWE     10                   NA                0.1646341   0.1414620   0.1878063
Birth       ZVITAMBO       ZIMBABWE     11                   NA                0.1766355   0.1537844   0.1994867
Birth       ZVITAMBO       ZIMBABWE     12                   NA                0.1622992   0.1412869   0.1833116
6 months    JiVitA-3       BANGLADESH   1                    NA                0.0944363   0.0764012   0.1124714
6 months    JiVitA-3       BANGLADESH   2                    NA                0.0805768   0.0637191   0.0974344
6 months    JiVitA-3       BANGLADESH   3                    NA                0.0774648   0.0621828   0.0927468
6 months    JiVitA-3       BANGLADESH   4                    NA                0.0730479   0.0578566   0.0882392
6 months    JiVitA-3       BANGLADESH   5                    NA                0.0758500   0.0594620   0.0922381
6 months    JiVitA-3       BANGLADESH   6                    NA                0.0753247   0.0582454   0.0924039
6 months    JiVitA-3       BANGLADESH   7                    NA                0.0947791   0.0774997   0.1120585
6 months    JiVitA-3       BANGLADESH   8                    NA                0.0833903   0.0669737   0.0998069
6 months    JiVitA-3       BANGLADESH   9                    NA                0.0754352   0.0623476   0.0885228
6 months    JiVitA-3       BANGLADESH   10                   NA                0.0980508   0.0832717   0.1128299
6 months    JiVitA-3       BANGLADESH   11                   NA                0.0922708   0.0773023   0.1072393
6 months    JiVitA-3       BANGLADESH   12                   NA                0.0873900   0.0734691   0.1013110
6 months    Keneba         GAMBIA       1                    NA                0.0380435   0.0103957   0.0656913
6 months    Keneba         GAMBIA       2                    NA                0.0714286   0.0365879   0.1062692
6 months    Keneba         GAMBIA       3                    NA                0.0378378   0.0103365   0.0653392
6 months    Keneba         GAMBIA       4                    NA                0.0669643   0.0342228   0.0997058
6 months    Keneba         GAMBIA       5                    NA                0.0918919   0.0502555   0.1335283
6 months    Keneba         GAMBIA       6                    NA                0.1000000   0.0519794   0.1480206
6 months    Keneba         GAMBIA       7                    NA                0.0620155   0.0203856   0.1036454
6 months    Keneba         GAMBIA       8                    NA                0.0677966   0.0224264   0.1131668
6 months    Keneba         GAMBIA       9                    NA                0.0397351   0.0085716   0.0708986
6 months    Keneba         GAMBIA       10                   NA                0.0532544   0.0193932   0.0871157
6 months    Keneba         GAMBIA       11                   NA                0.0400000   0.0143890   0.0656110
6 months    Keneba         GAMBIA       12                   NA                0.0314465   0.0043133   0.0585798
6 months    SAS-CompFeed   INDIA        1                    NA                0.2470588   0.1647948   0.3293228
6 months    SAS-CompFeed   INDIA        2                    NA                0.1481481   0.0678756   0.2284207
6 months    SAS-CompFeed   INDIA        3                    NA                0.1500000   0.0656571   0.2343429
6 months    SAS-CompFeed   INDIA        4                    NA                0.0933333   0.0360271   0.1506396
6 months    SAS-CompFeed   INDIA        5                    NA                0.1578947   0.0658459   0.2499436
6 months    SAS-CompFeed   INDIA        6                    NA                0.0784314   0.0380840   0.1187787
6 months    SAS-CompFeed   INDIA        7                    NA                0.0434783   0.0027715   0.0841850
6 months    SAS-CompFeed   INDIA        8                    NA                0.0526316   0.0281136   0.0771496
6 months    SAS-CompFeed   INDIA        9                    NA                0.0545455   0.0257270   0.0833639
6 months    SAS-CompFeed   INDIA        10                   NA                0.1148649   0.0616044   0.1681254
6 months    SAS-CompFeed   INDIA        11                   NA                0.2301587   0.1805256   0.2797918
6 months    SAS-CompFeed   INDIA        12                   NA                0.2015504   0.1137198   0.2893809
6 months    ZVITAMBO       ZIMBABWE     1                    NA                0.0294118   0.0178185   0.0410051
6 months    ZVITAMBO       ZIMBABWE     2                    NA                0.0351171   0.0203627   0.0498714
6 months    ZVITAMBO       ZIMBABWE     3                    NA                0.0402778   0.0259158   0.0546397
6 months    ZVITAMBO       ZIMBABWE     4                    NA                0.0224215   0.0112021   0.0336409
6 months    ZVITAMBO       ZIMBABWE     5                    NA                0.0289855   0.0157898   0.0421812
6 months    ZVITAMBO       ZIMBABWE     6                    NA                0.0313433   0.0181488   0.0445378
6 months    ZVITAMBO       ZIMBABWE     7                    NA                0.0256410   0.0136089   0.0376732
6 months    ZVITAMBO       ZIMBABWE     8                    NA                0.0408432   0.0267614   0.0549250
6 months    ZVITAMBO       ZIMBABWE     9                    NA                0.0278834   0.0163948   0.0393720
6 months    ZVITAMBO       ZIMBABWE     10                   NA                0.0324149   0.0184400   0.0463898
6 months    ZVITAMBO       ZIMBABWE     11                   NA                0.0228188   0.0120955   0.0335421
6 months    ZVITAMBO       ZIMBABWE     12                   NA                0.0357995   0.0232197   0.0483793
24 months   JiVitA-3       BANGLADESH   1                    NA                0.1418440   0.1150185   0.1686695
24 months   JiVitA-3       BANGLADESH   2                    NA                0.1644737   0.1350931   0.1938542
24 months   JiVitA-3       BANGLADESH   3                    NA                0.1735537   0.1424396   0.2046679
24 months   JiVitA-3       BANGLADESH   4                    NA                0.2193309   0.1789363   0.2597254
24 months   JiVitA-3       BANGLADESH   5                    NA                0.2233503   0.1783728   0.2683277
24 months   JiVitA-3       BANGLADESH   6                    NA                0.2798574   0.2406383   0.3190765
24 months   JiVitA-3       BANGLADESH   7                    NA                0.2881356   0.2483014   0.3279697
24 months   JiVitA-3       BANGLADESH   8                    NA                0.2689335   0.2310044   0.3068627
24 months   JiVitA-3       BANGLADESH   9                    NA                0.2589532   0.2212002   0.2967061
24 months   JiVitA-3       BANGLADESH   10                   NA                0.2485876   0.2197207   0.2774544
24 months   JiVitA-3       BANGLADESH   11                   NA                0.2198506   0.1914013   0.2482999
24 months   JiVitA-3       BANGLADESH   12                   NA                0.1744091   0.1496012   0.1992170
24 months   JiVitA-4       BANGLADESH   1                    NA                0.2083333   0.1465097   0.2701570
24 months   JiVitA-4       BANGLADESH   2                    NA                0.1246106   0.0815630   0.1676582
24 months   JiVitA-4       BANGLADESH   3                    NA                0.1500000   0.1084977   0.1915023
24 months   JiVitA-4       BANGLADESH   4                    NA                0.1859296   0.1556639   0.2161954
24 months   JiVitA-4       BANGLADESH   5                    NA                0.2379249   0.1919168   0.2839329
24 months   JiVitA-4       BANGLADESH   6                    NA                0.2387707   0.1904466   0.2870947
24 months   JiVitA-4       BANGLADESH   7                    NA                0.2192308   0.1856572   0.2528043
24 months   JiVitA-4       BANGLADESH   8                    NA                0.1906780   0.1528835   0.2284724
24 months   JiVitA-4       BANGLADESH   9                    NA                0.1576577   0.1229579   0.1923575
24 months   JiVitA-4       BANGLADESH   10                   NA                0.1666667   0.1196927   0.2136407
24 months   JiVitA-4       BANGLADESH   11                   NA                0.2275862   0.1161833   0.3389891
24 months   JiVitA-4       BANGLADESH   12                   NA                0.2535211   0.1878449   0.3191974
24 months   Keneba         GAMBIA       1                    NA                0.1216216   0.0689485   0.1742948
24 months   Keneba         GAMBIA       2                    NA                0.0687500   0.0295322   0.1079678
24 months   Keneba         GAMBIA       3                    NA                0.0440252   0.0121282   0.0759221
24 months   Keneba         GAMBIA       4                    NA                0.0742857   0.0354218   0.1131496
24 months   Keneba         GAMBIA       5                    NA                0.0824176   0.0424534   0.1223817
24 months   Keneba         GAMBIA       6                    NA                0.0833333   0.0361703   0.1304964
24 months   Keneba         GAMBIA       7                    NA                0.0792079   0.0265240   0.1318919
24 months   Keneba         GAMBIA       8                    NA                0.2234043   0.1391769   0.3076316
24 months   Keneba         GAMBIA       9                    NA                0.1333333   0.0759742   0.1906925
24 months   Keneba         GAMBIA       10                   NA                0.1400000   0.0844554   0.1955446
24 months   Keneba         GAMBIA       11                   NA                0.1516854   0.0989728   0.2043980
24 months   Keneba         GAMBIA       12                   NA                0.1875000   0.1151935   0.2598065


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3       BANGLADESH   NA                   NA                0.1095259   0.1044047   0.1146471
Birth       Keneba         GAMBIA       NA                   NA                0.2482947   0.2261720   0.2704173
Birth       NIH-Birth      BANGLADESH   NA                   NA                0.2921739   0.2549711   0.3293768
Birth       PROBIT         BELARUS      NA                   NA                0.2103206   0.1450833   0.2755580
Birth       ZVITAMBO       ZIMBABWE     NA                   NA                0.1595572   0.1532418   0.1658725
6 months    JiVitA-3       BANGLADESH   NA                   NA                0.0846640   0.0798626   0.0894653
6 months    Keneba         GAMBIA       NA                   NA                0.0579225   0.0479029   0.0679420
6 months    SAS-CompFeed   INDIA        NA                   NA                0.1244378   0.0992652   0.1496104
6 months    ZVITAMBO       ZIMBABWE     NA                   NA                0.0311581   0.0274654   0.0348509
24 months   JiVitA-3       BANGLADESH   NA                   NA                0.2182959   0.2084450   0.2281469
24 months   JiVitA-4       BANGLADESH   NA                   NA                0.1942978   0.1810880   0.2075076
24 months   Keneba         GAMBIA       NA                   NA                0.1106605   0.0958563   0.1254646


### Parameter: RR


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3       BANGLADESH   2                    1                 1.1140057   0.8855863   1.4013414
Birth       JiVitA-3       BANGLADESH   3                    1                 1.1784055   0.9485229   1.4640023
Birth       JiVitA-3       BANGLADESH   4                    1                 1.1908046   0.9418930   1.5054955
Birth       JiVitA-3       BANGLADESH   5                    1                 1.2921133   1.0034402   1.6638329
Birth       JiVitA-3       BANGLADESH   6                    1                 1.2475096   0.9681179   1.6075316
Birth       JiVitA-3       BANGLADESH   7                    1                 1.0032254   0.7762826   1.2965139
Birth       JiVitA-3       BANGLADESH   8                    1                 1.2754928   1.0132482   1.6056104
Birth       JiVitA-3       BANGLADESH   9                    1                 1.5548670   1.2666236   1.9087054
Birth       JiVitA-3       BANGLADESH   10                   1                 1.3792382   1.1219885   1.6954703
Birth       JiVitA-3       BANGLADESH   11                   1                 1.2907304   1.0449282   1.5943535
Birth       JiVitA-3       BANGLADESH   12                   1                 1.1184362   0.9037022   1.3841944
Birth       Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
Birth       Keneba         GAMBIA       2                    1                 0.8692810   0.5994098   1.2606559
Birth       Keneba         GAMBIA       3                    1                 0.8550000   0.5830776   1.2537354
Birth       Keneba         GAMBIA       4                    1                 0.7319182   0.4950724   1.0820726
Birth       Keneba         GAMBIA       5                    1                 0.7747573   0.5009994   1.1981030
Birth       Keneba         GAMBIA       6                    1                 0.7171569   0.4563965   1.1269016
Birth       Keneba         GAMBIA       7                    1                 0.4302941   0.2339279   0.7914961
Birth       Keneba         GAMBIA       8                    1                 0.7638514   0.4673481   1.2484674
Birth       Keneba         GAMBIA       9                    1                 0.9172414   0.6193700   1.3583670
Birth       Keneba         GAMBIA       10                   1                 0.8171610   0.5429209   1.2299252
Birth       Keneba         GAMBIA       11                   1                 0.9302083   0.6521624   1.3267977
Birth       Keneba         GAMBIA       12                   1                 0.8963043   0.6024900   1.3334022
Birth       NIH-Birth      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       NIH-Birth      BANGLADESH   2                    1                 1.0472727   0.5767647   1.9016075
Birth       NIH-Birth      BANGLADESH   3                    1                 1.0551724   0.5863054   1.8989914
Birth       NIH-Birth      BANGLADESH   4                    1                 1.0500000   0.5668647   1.9449085
Birth       NIH-Birth      BANGLADESH   5                    1                 1.5200000   0.8771223   2.6340683
Birth       NIH-Birth      BANGLADESH   6                    1                 1.4400000   0.8110273   2.5567574
Birth       NIH-Birth      BANGLADESH   7                    1                 1.3600000   0.7682869   2.4074341
Birth       NIH-Birth      BANGLADESH   8                    1                 1.0536585   0.5545023   2.0021491
Birth       NIH-Birth      BANGLADESH   9                    1                 1.2774194   0.6728487   2.4252113
Birth       NIH-Birth      BANGLADESH   10                   1                 0.8068966   0.4237030   1.5366472
Birth       NIH-Birth      BANGLADESH   11                   1                 0.8816327   0.4585166   1.6951973
Birth       NIH-Birth      BANGLADESH   12                   1                 0.4235294   0.1780231   1.0076063
Birth       PROBIT         BELARUS      1                    1                 1.0000000   1.0000000   1.0000000
Birth       PROBIT         BELARUS      2                    1                 0.8010312   0.6371256   1.0071028
Birth       PROBIT         BELARUS      3                    1                 0.9188988   0.7357174   1.1476894
Birth       PROBIT         BELARUS      4                    1                 0.9758165   0.7730242   1.2318086
Birth       PROBIT         BELARUS      5                    1                 1.0916253   0.8581947   1.3885494
Birth       PROBIT         BELARUS      6                    1                 0.9623213   0.6707253   1.3806879
Birth       PROBIT         BELARUS      7                    1                 1.0679739   0.7357980   1.5501104
Birth       PROBIT         BELARUS      8                    1                 0.9988077   0.6966137   1.4320949
Birth       PROBIT         BELARUS      9                    1                 0.8833678   0.6155459   1.2677182
Birth       PROBIT         BELARUS      10                   1                 0.9858034   0.7255013   1.3394991
Birth       PROBIT         BELARUS      11                   1                 0.8189655   0.6175774   1.0860250
Birth       PROBIT         BELARUS      12                   1                 0.9196920   0.6819804   1.2402604
Birth       ZVITAMBO       ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO       ZIMBABWE     2                    1                 0.8946546   0.7235608   1.1062054
Birth       ZVITAMBO       ZIMBABWE     3                    1                 0.9872511   0.8090890   1.2046448
Birth       ZVITAMBO       ZIMBABWE     4                    1                 0.8722354   0.7037741   1.0810210
Birth       ZVITAMBO       ZIMBABWE     5                    1                 1.0476686   0.8548716   1.2839465
Birth       ZVITAMBO       ZIMBABWE     6                    1                 1.2804171   1.0646542   1.5399065
Birth       ZVITAMBO       ZIMBABWE     7                    1                 1.3268424   1.1074748   1.5896620
Birth       ZVITAMBO       ZIMBABWE     8                    1                 1.2259981   1.0217559   1.4710671
Birth       ZVITAMBO       ZIMBABWE     9                    1                 0.9817348   0.8116395   1.1874770
Birth       ZVITAMBO       ZIMBABWE     10                   1                 1.1260612   0.9267826   1.3681891
Birth       ZVITAMBO       ZIMBABWE     11                   1                 1.2081479   1.0023876   1.4561447
Birth       ZVITAMBO       ZIMBABWE     12                   1                 1.1100909   0.9209682   1.3380504
6 months    JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3       BANGLADESH   2                    1                 0.8532392   0.6461239   1.1267454
6 months    JiVitA-3       BANGLADESH   3                    1                 0.8202861   0.6315600   1.0654082
6 months    JiVitA-3       BANGLADESH   4                    1                 0.7735145   0.5867937   1.0196510
6 months    JiVitA-3       BANGLADESH   5                    1                 0.8031873   0.6119760   1.0541424
6 months    JiVitA-3       BANGLADESH   6                    1                 0.7976241   0.5935551   1.0718535
6 months    JiVitA-3       BANGLADESH   7                    1                 1.0036300   0.7719714   1.3048064
6 months    JiVitA-3       BANGLADESH   8                    1                 0.8830321   0.6806741   1.1455493
6 months    JiVitA-3       BANGLADESH   9                    1                 0.7987945   0.6186497   1.0313956
6 months    JiVitA-3       BANGLADESH   10                   1                 1.0382743   0.8118823   1.3277954
6 months    JiVitA-3       BANGLADESH   11                   1                 0.9770693   0.7678076   1.2433641
6 months    JiVitA-3       BANGLADESH   12                   1                 0.9253859   0.7326078   1.1688915
6 months    Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6 months    Keneba         GAMBIA       2                    1                 1.8775510   0.7824791   4.5051654
6 months    Keneba         GAMBIA       3                    1                 0.9945946   0.3558505   2.7798708
6 months    Keneba         GAMBIA       4                    1                 1.7602041   0.7330952   4.2263523
6 months    Keneba         GAMBIA       5                    1                 2.4154440   1.0257890   5.6876898
6 months    Keneba         GAMBIA       6                    1                 2.6285714   1.1000726   6.2808471
6 months    Keneba         GAMBIA       7                    1                 1.6301218   0.6061210   4.3841031
6 months    Keneba         GAMBIA       8                    1                 1.7820823   0.6635552   4.7860633
6 months    Keneba         GAMBIA       9                    1                 1.0444655   0.3585365   3.0426692
6 months    Keneba         GAMBIA       10                   1                 1.3998309   0.5329746   3.6765852
6 months    Keneba         GAMBIA       11                   1                 1.0514286   0.3991534   2.7696170
6 months    Keneba         GAMBIA       12                   1                 0.8265948   0.2675214   2.5540343
6 months    SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed   INDIA        2                    1                 0.5996473   0.3264094   1.1016131
6 months    SAS-CompFeed   INDIA        3                    1                 0.6071429   0.3664489   1.0059315
6 months    SAS-CompFeed   INDIA        4                    1                 0.3777778   0.1865663   0.7649614
6 months    SAS-CompFeed   INDIA        5                    1                 0.6390977   0.2777063   1.4707837
6 months    SAS-CompFeed   INDIA        6                    1                 0.3174603   0.1920116   0.5248695
6 months    SAS-CompFeed   INDIA        7                    1                 0.1759834   0.0568232   0.5450268
6 months    SAS-CompFeed   INDIA        8                    1                 0.2130326   0.1173307   0.3867947
6 months    SAS-CompFeed   INDIA        9                    1                 0.2207792   0.1377080   0.3539625
6 months    SAS-CompFeed   INDIA        10                   1                 0.4649292   0.3628166   0.5957808
6 months    SAS-CompFeed   INDIA        11                   1                 0.9315949   0.6608966   1.3131691
6 months    SAS-CompFeed   INDIA        12                   1                 0.8157992   0.5600733   1.1882879
6 months    ZVITAMBO       ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO       ZIMBABWE     2                    1                 1.1939799   0.6711175   2.1242003
6 months    ZVITAMBO       ZIMBABWE     3                    1                 1.3694444   0.8048363   2.3301359
6 months    ZVITAMBO       ZIMBABWE     4                    1                 0.7623318   0.4031836   1.4414023
6 months    ZVITAMBO       ZIMBABWE     5                    1                 0.9855072   0.5396785   1.7996354
6 months    ZVITAMBO       ZIMBABWE     6                    1                 1.0656716   0.5986388   1.8970638
6 months    ZVITAMBO       ZIMBABWE     7                    1                 0.8717949   0.4723477   1.6090399
6 months    ZVITAMBO       ZIMBABWE     8                    1                 1.3886693   0.8225587   2.3443949
6 months    ZVITAMBO       ZIMBABWE     9                    1                 0.9480355   0.5360280   1.6767245
6 months    ZVITAMBO       ZIMBABWE     10                   1                 1.1021070   0.6145077   1.9766064
6 months    ZVITAMBO       ZIMBABWE     11                   1                 0.7758389   0.4201392   1.4326825
6 months    ZVITAMBO       ZIMBABWE     12                   1                 1.2171838   0.7178296   2.0639110
24 months   JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-3       BANGLADESH   2                    1                 1.1595395   0.8855410   1.5183168
24 months   JiVitA-3       BANGLADESH   3                    1                 1.2235537   0.9538115   1.5695803
24 months   JiVitA-3       BANGLADESH   4                    1                 1.5462825   1.1865639   2.0150534
24 months   JiVitA-3       BANGLADESH   5                    1                 1.5746193   1.2017204   2.0632302
24 months   JiVitA-3       BANGLADESH   6                    1                 1.9729947   1.5692567   2.4806062
24 months   JiVitA-3       BANGLADESH   7                    1                 2.0313559   1.6020416   2.5757177
24 months   JiVitA-3       BANGLADESH   8                    1                 1.8959815   1.4944819   2.4053458
24 months   JiVitA-3       BANGLADESH   9                    1                 1.8256198   1.4362334   2.3205754
24 months   JiVitA-3       BANGLADESH   10                   1                 1.7525424   1.3988268   2.1957005
24 months   JiVitA-3       BANGLADESH   11                   1                 1.5499466   1.2337264   1.9472182
24 months   JiVitA-3       BANGLADESH   12                   1                 1.2295844   0.9706975   1.5575169
24 months   JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-4       BANGLADESH   2                    1                 0.5981308   0.3787677   0.9445380
24 months   JiVitA-4       BANGLADESH   3                    1                 0.7200000   0.4799411   1.0801326
24 months   JiVitA-4       BANGLADESH   4                    1                 0.8924623   0.6346813   1.2549433
24 months   JiVitA-4       BANGLADESH   5                    1                 1.1420394   0.8012592   1.6277552
24 months   JiVitA-4       BANGLADESH   6                    1                 1.1460993   0.8036956   1.6343795
24 months   JiVitA-4       BANGLADESH   7                    1                 1.0523077   0.7526921   1.4711878
24 months   JiVitA-4       BANGLADESH   8                    1                 0.9152542   0.6412108   1.3064196
24 months   JiVitA-4       BANGLADESH   9                    1                 0.7567568   0.5249343   1.0909571
24 months   JiVitA-4       BANGLADESH   10                   1                 0.8000000   0.5442539   1.1759217
24 months   JiVitA-4       BANGLADESH   11                   1                 1.0924138   0.6163948   1.9360447
24 months   JiVitA-4       BANGLADESH   12                   1                 1.2169014   0.8214011   1.8028331
24 months   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
24 months   Keneba         GAMBIA       2                    1                 0.5652778   0.2761924   1.1569432
24 months   Keneba         GAMBIA       3                    1                 0.3619846   0.1556344   0.8419273
24 months   Keneba         GAMBIA       4                    1                 0.6107937   0.3096955   1.2046314
24 months   Keneba         GAMBIA       5                    1                 0.6776557   0.3537146   1.2982706
24 months   Keneba         GAMBIA       6                    1                 0.6851852   0.3359748   1.3973631
24 months   Keneba         GAMBIA       7                    1                 0.6512651   0.2944795   1.4403254
24 months   Keneba         GAMBIA       8                    1                 1.8368794   1.0344446   3.2617754
24 months   Keneba         GAMBIA       9                    1                 1.0962963   0.5954132   2.0185405
24 months   Keneba         GAMBIA       10                   1                 1.1511111   0.6397880   2.0710872
24 months   Keneba         GAMBIA       11                   1                 1.2471910   0.7157797   2.1731344
24 months   Keneba         GAMBIA       12                   1                 1.5416667   0.8632650   2.7531941


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3       BANGLADESH   1                    NA                 0.0204596    0.0064284    0.0344907
Birth       Keneba         GAMBIA       1                    NA                -0.0524572   -0.1263815    0.0214671
Birth       NIH-Birth      BANGLADESH   1                    NA                 0.0143961   -0.0996004    0.1283927
Birth       PROBIT         BELARUS      1                    NA                -0.0107320   -0.0656188    0.0441547
Birth       ZVITAMBO       ZIMBABWE     1                    NA                 0.0133536   -0.0054346    0.0321418
6 months    JiVitA-3       BANGLADESH   1                    NA                -0.0097723   -0.0261355    0.0065908
6 months    Keneba         GAMBIA       1                    NA                 0.0198790   -0.0071421    0.0469000
6 months    SAS-CompFeed   INDIA        1                    NA                -0.1226210   -0.1913269   -0.0539152
6 months    ZVITAMBO       ZIMBABWE     1                    NA                 0.0017464   -0.0093103    0.0128031
24 months   JiVitA-3       BANGLADESH   1                    NA                 0.0764520    0.0501529    0.1027511
24 months   JiVitA-4       BANGLADESH   1                    NA                -0.0140356   -0.0753654    0.0472943
24 months   Keneba         GAMBIA       1                    NA                -0.0109611   -0.0611390    0.0392167


### Parameter: PAF


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3       BANGLADESH   1                    NA                 0.1868013    0.0481742    0.3052383
Birth       Keneba         GAMBIA       1                    NA                -0.2112699   -0.5486284    0.0525972
Birth       NIH-Birth      BANGLADESH   1                    NA                 0.0492725   -0.4331122    0.3692868
Birth       PROBIT         BELARUS      1                    NA                -0.0510269   -0.3443834    0.1783166
Birth       ZVITAMBO       ZIMBABWE     1                    NA                 0.0836917   -0.0419267    0.1941652
6 months    JiVitA-3       BANGLADESH   1                    NA                -0.1154251   -0.3248724    0.0609110
6 months    Keneba         GAMBIA       1                    NA                 0.3431998   -0.3292104    0.6754566
6 months    SAS-CompFeed   INDIA        1                    NA                -0.9854004   -1.5599574   -0.5397970
6 months    ZVITAMBO       ZIMBABWE     1                    NA                 0.0560488   -0.3746297    0.3517936
24 months   JiVitA-3       BANGLADESH   1                    NA                 0.3502217    0.2191482    0.4592932
24 months   JiVitA-4       BANGLADESH   1                    NA                -0.0722373   -0.4397758    0.2014779
24 months   Keneba         GAMBIA       1                    NA                -0.0990519   -0.6601260    0.2723955
