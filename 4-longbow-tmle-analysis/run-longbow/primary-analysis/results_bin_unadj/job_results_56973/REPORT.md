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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** nrooms

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        nrooms    wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  -------  ------------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          4+                  0        2    324
0-24 months   CMC-V-BCS-2002   INDIA                          4+                  1        4    324
0-24 months   CMC-V-BCS-2002   INDIA                          1                   0       75    324
0-24 months   CMC-V-BCS-2002   INDIA                          1                   1      124    324
0-24 months   CMC-V-BCS-2002   INDIA                          2                   0       32    324
0-24 months   CMC-V-BCS-2002   INDIA                          2                   1       54    324
0-24 months   CMC-V-BCS-2002   INDIA                          3                   0       11    324
0-24 months   CMC-V-BCS-2002   INDIA                          3                   1       22    324
0-24 months   COHORTS          INDIA                          4+                  0       13   1959
0-24 months   COHORTS          INDIA                          4+                  1        4   1959
0-24 months   COHORTS          INDIA                          1                   0     1079   1959
0-24 months   COHORTS          INDIA                          1                   1      319   1959
0-24 months   COHORTS          INDIA                          2                   0      373   1959
0-24 months   COHORTS          INDIA                          2                   1      125   1959
0-24 months   COHORTS          INDIA                          3                   0       34   1959
0-24 months   COHORTS          INDIA                          3                   1       12   1959
0-24 months   CONTENT          PERU                           4+                  0        1      7
0-24 months   CONTENT          PERU                           4+                  1        4      7
0-24 months   CONTENT          PERU                           1                   0        0      7
0-24 months   CONTENT          PERU                           1                   1        2      7
0-24 months   CONTENT          PERU                           2                   0        0      7
0-24 months   CONTENT          PERU                           2                   1        0      7
0-24 months   CONTENT          PERU                           3                   0        0      7
0-24 months   CONTENT          PERU                           3                   1        0      7
0-24 months   GMS-Nepal        NEPAL                          4+                  0      152    643
0-24 months   GMS-Nepal        NEPAL                          4+                  1      162    643
0-24 months   GMS-Nepal        NEPAL                          1                   0       18    643
0-24 months   GMS-Nepal        NEPAL                          1                   1       33    643
0-24 months   GMS-Nepal        NEPAL                          2                   0       62    643
0-24 months   GMS-Nepal        NEPAL                          2                   1       55    643
0-24 months   GMS-Nepal        NEPAL                          3                   0       64    643
0-24 months   GMS-Nepal        NEPAL                          3                   1       97    643
0-24 months   IRC              INDIA                          4+                  0       11    394
0-24 months   IRC              INDIA                          4+                  1        9    394
0-24 months   IRC              INDIA                          1                   0       66    394
0-24 months   IRC              INDIA                          1                   1       96    394
0-24 months   IRC              INDIA                          2                   0       70    394
0-24 months   IRC              INDIA                          2                   1      110    394
0-24 months   IRC              INDIA                          3                   0       14    394
0-24 months   IRC              INDIA                          3                   1       18    394
0-24 months   MAL-ED           BANGLADESH                     4+                  0        3    121
0-24 months   MAL-ED           BANGLADESH                     4+                  1        1    121
0-24 months   MAL-ED           BANGLADESH                     1                   0       31    121
0-24 months   MAL-ED           BANGLADESH                     1                   1       62    121
0-24 months   MAL-ED           BANGLADESH                     2                   0        7    121
0-24 months   MAL-ED           BANGLADESH                     2                   1        9    121
0-24 months   MAL-ED           BANGLADESH                     3                   0        2    121
0-24 months   MAL-ED           BANGLADESH                     3                   1        6    121
0-24 months   MAL-ED           BRAZIL                         4+                  0        5     24
0-24 months   MAL-ED           BRAZIL                         4+                  1       13     24
0-24 months   MAL-ED           BRAZIL                         1                   0        0     24
0-24 months   MAL-ED           BRAZIL                         1                   1        0     24
0-24 months   MAL-ED           BRAZIL                         2                   0        0     24
0-24 months   MAL-ED           BRAZIL                         2                   1        2     24
0-24 months   MAL-ED           BRAZIL                         3                   0        1     24
0-24 months   MAL-ED           BRAZIL                         3                   1        3     24
0-24 months   MAL-ED           INDIA                          4+                  0        3    175
0-24 months   MAL-ED           INDIA                          4+                  1        9    175
0-24 months   MAL-ED           INDIA                          1                   0       26    175
0-24 months   MAL-ED           INDIA                          1                   1       38    175
0-24 months   MAL-ED           INDIA                          2                   0       23    175
0-24 months   MAL-ED           INDIA                          2                   1       42    175
0-24 months   MAL-ED           INDIA                          3                   0       14    175
0-24 months   MAL-ED           INDIA                          3                   1       20    175
0-24 months   MAL-ED           NEPAL                          4+                  0       14     97
0-24 months   MAL-ED           NEPAL                          4+                  1       41     97
0-24 months   MAL-ED           NEPAL                          1                   0        4     97
0-24 months   MAL-ED           NEPAL                          1                   1       24     97
0-24 months   MAL-ED           NEPAL                          2                   0        1     97
0-24 months   MAL-ED           NEPAL                          2                   1        7     97
0-24 months   MAL-ED           NEPAL                          3                   0        0     97
0-24 months   MAL-ED           NEPAL                          3                   1        6     97
0-24 months   MAL-ED           PERU                           4+                  0        4     34
0-24 months   MAL-ED           PERU                           4+                  1       14     34
0-24 months   MAL-ED           PERU                           1                   0        1     34
0-24 months   MAL-ED           PERU                           1                   1        2     34
0-24 months   MAL-ED           PERU                           2                   0        0     34
0-24 months   MAL-ED           PERU                           2                   1        4     34
0-24 months   MAL-ED           PERU                           3                   0        1     34
0-24 months   MAL-ED           PERU                           3                   1        8     34
0-24 months   MAL-ED           SOUTH AFRICA                   4+                  0       13     80
0-24 months   MAL-ED           SOUTH AFRICA                   4+                  1       51     80
0-24 months   MAL-ED           SOUTH AFRICA                   1                   0        0     80
0-24 months   MAL-ED           SOUTH AFRICA                   1                   1        5     80
0-24 months   MAL-ED           SOUTH AFRICA                   2                   0        0     80
0-24 months   MAL-ED           SOUTH AFRICA                   2                   1        3     80
0-24 months   MAL-ED           SOUTH AFRICA                   3                   0        0     80
0-24 months   MAL-ED           SOUTH AFRICA                   3                   1        8     80
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                  0        2     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                  1       16     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        2     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                   0        2     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                   1       16     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                   0        5     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                   1        8     51
0-24 months   NIH-Crypto       BANGLADESH                     4+                  0       11    310
0-24 months   NIH-Crypto       BANGLADESH                     4+                  1       24    310
0-24 months   NIH-Crypto       BANGLADESH                     1                   0       68    310
0-24 months   NIH-Crypto       BANGLADESH                     1                   1       94    310
0-24 months   NIH-Crypto       BANGLADESH                     2                   0       26    310
0-24 months   NIH-Crypto       BANGLADESH                     2                   1       48    310
0-24 months   NIH-Crypto       BANGLADESH                     3                   0       12    310
0-24 months   NIH-Crypto       BANGLADESH                     3                   1       27    310
0-24 months   PROVIDE          BANGLADESH                     4+                  0        4    308
0-24 months   PROVIDE          BANGLADESH                     4+                  1        9    308
0-24 months   PROVIDE          BANGLADESH                     1                   0      102    308
0-24 months   PROVIDE          BANGLADESH                     1                   1      121    308
0-24 months   PROVIDE          BANGLADESH                     2                   0       11    308
0-24 months   PROVIDE          BANGLADESH                     2                   1       29    308
0-24 months   PROVIDE          BANGLADESH                     3                   0       12    308
0-24 months   PROVIDE          BANGLADESH                     3                   1       20    308
0-6 months    CMC-V-BCS-2002   INDIA                          4+                  0        2    201
0-6 months    CMC-V-BCS-2002   INDIA                          4+                  1        3    201
0-6 months    CMC-V-BCS-2002   INDIA                          1                   0       38    201
0-6 months    CMC-V-BCS-2002   INDIA                          1                   1       75    201
0-6 months    CMC-V-BCS-2002   INDIA                          2                   0       21    201
0-6 months    CMC-V-BCS-2002   INDIA                          2                   1       37    201
0-6 months    CMC-V-BCS-2002   INDIA                          3                   0        5    201
0-6 months    CMC-V-BCS-2002   INDIA                          3                   1       20    201
0-6 months    COHORTS          INDIA                          4+                  0       10   1287
0-6 months    COHORTS          INDIA                          4+                  1        4   1287
0-6 months    COHORTS          INDIA                          1                   0      568   1287
0-6 months    COHORTS          INDIA                          1                   1      319   1287
0-6 months    COHORTS          INDIA                          2                   0      227   1287
0-6 months    COHORTS          INDIA                          2                   1      125   1287
0-6 months    COHORTS          INDIA                          3                   0       22   1287
0-6 months    COHORTS          INDIA                          3                   1       12   1287
0-6 months    CONTENT          PERU                           4+                  0        0      4
0-6 months    CONTENT          PERU                           4+                  1        2      4
0-6 months    CONTENT          PERU                           1                   0        0      4
0-6 months    CONTENT          PERU                           1                   1        2      4
0-6 months    CONTENT          PERU                           2                   0        0      4
0-6 months    CONTENT          PERU                           2                   1        0      4
0-6 months    CONTENT          PERU                           3                   0        0      4
0-6 months    CONTENT          PERU                           3                   1        0      4
0-6 months    GMS-Nepal        NEPAL                          4+                  0       55    263
0-6 months    GMS-Nepal        NEPAL                          4+                  1       77    263
0-6 months    GMS-Nepal        NEPAL                          1                   0        8    263
0-6 months    GMS-Nepal        NEPAL                          1                   1       10    263
0-6 months    GMS-Nepal        NEPAL                          2                   0       22    263
0-6 months    GMS-Nepal        NEPAL                          2                   1       22    263
0-6 months    GMS-Nepal        NEPAL                          3                   0       19    263
0-6 months    GMS-Nepal        NEPAL                          3                   1       50    263
0-6 months    IRC              INDIA                          4+                  0        4    239
0-6 months    IRC              INDIA                          4+                  1        7    239
0-6 months    IRC              INDIA                          1                   0       42    239
0-6 months    IRC              INDIA                          1                   1       66    239
0-6 months    IRC              INDIA                          2                   0       30    239
0-6 months    IRC              INDIA                          2                   1       70    239
0-6 months    IRC              INDIA                          3                   0       10    239
0-6 months    IRC              INDIA                          3                   1       10    239
0-6 months    MAL-ED           BANGLADESH                     4+                  0        1     60
0-6 months    MAL-ED           BANGLADESH                     4+                  1        1     60
0-6 months    MAL-ED           BANGLADESH                     1                   0        8     60
0-6 months    MAL-ED           BANGLADESH                     1                   1       36     60
0-6 months    MAL-ED           BANGLADESH                     2                   0        2     60
0-6 months    MAL-ED           BANGLADESH                     2                   1        5     60
0-6 months    MAL-ED           BANGLADESH                     3                   0        1     60
0-6 months    MAL-ED           BANGLADESH                     3                   1        6     60
0-6 months    MAL-ED           BRAZIL                         4+                  0        1     15
0-6 months    MAL-ED           BRAZIL                         4+                  1        9     15
0-6 months    MAL-ED           BRAZIL                         1                   0        0     15
0-6 months    MAL-ED           BRAZIL                         1                   1        0     15
0-6 months    MAL-ED           BRAZIL                         2                   0        0     15
0-6 months    MAL-ED           BRAZIL                         2                   1        2     15
0-6 months    MAL-ED           BRAZIL                         3                   0        0     15
0-6 months    MAL-ED           BRAZIL                         3                   1        3     15
0-6 months    MAL-ED           INDIA                          4+                  0        2     80
0-6 months    MAL-ED           INDIA                          4+                  1        3     80
0-6 months    MAL-ED           INDIA                          1                   0        6     80
0-6 months    MAL-ED           INDIA                          1                   1       22     80
0-6 months    MAL-ED           INDIA                          2                   0        5     80
0-6 months    MAL-ED           INDIA                          2                   1       20     80
0-6 months    MAL-ED           INDIA                          3                   0        9     80
0-6 months    MAL-ED           INDIA                          3                   1       13     80
0-6 months    MAL-ED           NEPAL                          4+                  0        5     47
0-6 months    MAL-ED           NEPAL                          4+                  1       22     47
0-6 months    MAL-ED           NEPAL                          1                   0        2     47
0-6 months    MAL-ED           NEPAL                          1                   1       10     47
0-6 months    MAL-ED           NEPAL                          2                   0        1     47
0-6 months    MAL-ED           NEPAL                          2                   1        3     47
0-6 months    MAL-ED           NEPAL                          3                   0        0     47
0-6 months    MAL-ED           NEPAL                          3                   1        4     47
0-6 months    MAL-ED           PERU                           4+                  0        0     10
0-6 months    MAL-ED           PERU                           4+                  1        7     10
0-6 months    MAL-ED           PERU                           1                   0        0     10
0-6 months    MAL-ED           PERU                           1                   1        1     10
0-6 months    MAL-ED           PERU                           2                   0        0     10
0-6 months    MAL-ED           PERU                           2                   1        1     10
0-6 months    MAL-ED           PERU                           3                   0        0     10
0-6 months    MAL-ED           PERU                           3                   1        1     10
0-6 months    MAL-ED           SOUTH AFRICA                   4+                  0        4     29
0-6 months    MAL-ED           SOUTH AFRICA                   4+                  1       18     29
0-6 months    MAL-ED           SOUTH AFRICA                   1                   0        0     29
0-6 months    MAL-ED           SOUTH AFRICA                   1                   1        2     29
0-6 months    MAL-ED           SOUTH AFRICA                   2                   0        0     29
0-6 months    MAL-ED           SOUTH AFRICA                   2                   1        1     29
0-6 months    MAL-ED           SOUTH AFRICA                   3                   0        0     29
0-6 months    MAL-ED           SOUTH AFRICA                   3                   1        4     29
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                  0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                  1        6     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                   0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                   1        5     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                   0        1     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                   1        2     14
0-6 months    NIH-Crypto       BANGLADESH                     4+                  0        3    197
0-6 months    NIH-Crypto       BANGLADESH                     4+                  1       23    197
0-6 months    NIH-Crypto       BANGLADESH                     1                   0       12    197
0-6 months    NIH-Crypto       BANGLADESH                     1                   1       84    197
0-6 months    NIH-Crypto       BANGLADESH                     2                   0        4    197
0-6 months    NIH-Crypto       BANGLADESH                     2                   1       43    197
0-6 months    NIH-Crypto       BANGLADESH                     3                   0        2    197
0-6 months    NIH-Crypto       BANGLADESH                     3                   1       26    197
0-6 months    PROVIDE          BANGLADESH                     4+                  0        1    185
0-6 months    PROVIDE          BANGLADESH                     4+                  1        7    185
0-6 months    PROVIDE          BANGLADESH                     1                   0       32    185
0-6 months    PROVIDE          BANGLADESH                     1                   1      101    185
0-6 months    PROVIDE          BANGLADESH                     2                   0        4    185
0-6 months    PROVIDE          BANGLADESH                     2                   1       22    185
0-6 months    PROVIDE          BANGLADESH                     3                   0        3    185
0-6 months    PROVIDE          BANGLADESH                     3                   1       15    185
6-24 months   CMC-V-BCS-2002   INDIA                          4+                  0        0    123
6-24 months   CMC-V-BCS-2002   INDIA                          4+                  1        1    123
6-24 months   CMC-V-BCS-2002   INDIA                          1                   0       37    123
6-24 months   CMC-V-BCS-2002   INDIA                          1                   1       49    123
6-24 months   CMC-V-BCS-2002   INDIA                          2                   0       11    123
6-24 months   CMC-V-BCS-2002   INDIA                          2                   1       17    123
6-24 months   CMC-V-BCS-2002   INDIA                          3                   0        6    123
6-24 months   CMC-V-BCS-2002   INDIA                          3                   1        2    123
6-24 months   COHORTS          INDIA                          4+                  0        3    672
6-24 months   COHORTS          INDIA                          4+                  1        0    672
6-24 months   COHORTS          INDIA                          1                   0      511    672
6-24 months   COHORTS          INDIA                          1                   1        0    672
6-24 months   COHORTS          INDIA                          2                   0      146    672
6-24 months   COHORTS          INDIA                          2                   1        0    672
6-24 months   COHORTS          INDIA                          3                   0       12    672
6-24 months   COHORTS          INDIA                          3                   1        0    672
6-24 months   CONTENT          PERU                           4+                  0        1      3
6-24 months   CONTENT          PERU                           4+                  1        2      3
6-24 months   CONTENT          PERU                           1                   0        0      3
6-24 months   CONTENT          PERU                           1                   1        0      3
6-24 months   CONTENT          PERU                           2                   0        0      3
6-24 months   CONTENT          PERU                           2                   1        0      3
6-24 months   CONTENT          PERU                           3                   0        0      3
6-24 months   CONTENT          PERU                           3                   1        0      3
6-24 months   GMS-Nepal        NEPAL                          4+                  0       97    380
6-24 months   GMS-Nepal        NEPAL                          4+                  1       85    380
6-24 months   GMS-Nepal        NEPAL                          1                   0       10    380
6-24 months   GMS-Nepal        NEPAL                          1                   1       23    380
6-24 months   GMS-Nepal        NEPAL                          2                   0       40    380
6-24 months   GMS-Nepal        NEPAL                          2                   1       33    380
6-24 months   GMS-Nepal        NEPAL                          3                   0       45    380
6-24 months   GMS-Nepal        NEPAL                          3                   1       47    380
6-24 months   IRC              INDIA                          4+                  0        7    155
6-24 months   IRC              INDIA                          4+                  1        2    155
6-24 months   IRC              INDIA                          1                   0       24    155
6-24 months   IRC              INDIA                          1                   1       30    155
6-24 months   IRC              INDIA                          2                   0       40    155
6-24 months   IRC              INDIA                          2                   1       40    155
6-24 months   IRC              INDIA                          3                   0        4    155
6-24 months   IRC              INDIA                          3                   1        8    155
6-24 months   MAL-ED           BANGLADESH                     4+                  0        2     61
6-24 months   MAL-ED           BANGLADESH                     4+                  1        0     61
6-24 months   MAL-ED           BANGLADESH                     1                   0       23     61
6-24 months   MAL-ED           BANGLADESH                     1                   1       26     61
6-24 months   MAL-ED           BANGLADESH                     2                   0        5     61
6-24 months   MAL-ED           BANGLADESH                     2                   1        4     61
6-24 months   MAL-ED           BANGLADESH                     3                   0        1     61
6-24 months   MAL-ED           BANGLADESH                     3                   1        0     61
6-24 months   MAL-ED           BRAZIL                         4+                  0        4      9
6-24 months   MAL-ED           BRAZIL                         4+                  1        4      9
6-24 months   MAL-ED           BRAZIL                         1                   0        0      9
6-24 months   MAL-ED           BRAZIL                         1                   1        0      9
6-24 months   MAL-ED           BRAZIL                         2                   0        0      9
6-24 months   MAL-ED           BRAZIL                         2                   1        0      9
6-24 months   MAL-ED           BRAZIL                         3                   0        1      9
6-24 months   MAL-ED           BRAZIL                         3                   1        0      9
6-24 months   MAL-ED           INDIA                          4+                  0        1     95
6-24 months   MAL-ED           INDIA                          4+                  1        6     95
6-24 months   MAL-ED           INDIA                          1                   0       20     95
6-24 months   MAL-ED           INDIA                          1                   1       16     95
6-24 months   MAL-ED           INDIA                          2                   0       18     95
6-24 months   MAL-ED           INDIA                          2                   1       22     95
6-24 months   MAL-ED           INDIA                          3                   0        5     95
6-24 months   MAL-ED           INDIA                          3                   1        7     95
6-24 months   MAL-ED           NEPAL                          4+                  0        9     50
6-24 months   MAL-ED           NEPAL                          4+                  1       19     50
6-24 months   MAL-ED           NEPAL                          1                   0        2     50
6-24 months   MAL-ED           NEPAL                          1                   1       14     50
6-24 months   MAL-ED           NEPAL                          2                   0        0     50
6-24 months   MAL-ED           NEPAL                          2                   1        4     50
6-24 months   MAL-ED           NEPAL                          3                   0        0     50
6-24 months   MAL-ED           NEPAL                          3                   1        2     50
6-24 months   MAL-ED           PERU                           4+                  0        4     24
6-24 months   MAL-ED           PERU                           4+                  1        7     24
6-24 months   MAL-ED           PERU                           1                   0        1     24
6-24 months   MAL-ED           PERU                           1                   1        1     24
6-24 months   MAL-ED           PERU                           2                   0        0     24
6-24 months   MAL-ED           PERU                           2                   1        3     24
6-24 months   MAL-ED           PERU                           3                   0        1     24
6-24 months   MAL-ED           PERU                           3                   1        7     24
6-24 months   MAL-ED           SOUTH AFRICA                   4+                  0        9     51
6-24 months   MAL-ED           SOUTH AFRICA                   4+                  1       33     51
6-24 months   MAL-ED           SOUTH AFRICA                   1                   0        0     51
6-24 months   MAL-ED           SOUTH AFRICA                   1                   1        3     51
6-24 months   MAL-ED           SOUTH AFRICA                   2                   0        0     51
6-24 months   MAL-ED           SOUTH AFRICA                   2                   1        2     51
6-24 months   MAL-ED           SOUTH AFRICA                   3                   0        0     51
6-24 months   MAL-ED           SOUTH AFRICA                   3                   1        4     51
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                  0        2     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                  1       10     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        2     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                   0        2     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                   1       11     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                   0        4     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                   1        6     37
6-24 months   NIH-Crypto       BANGLADESH                     4+                  0        8    113
6-24 months   NIH-Crypto       BANGLADESH                     4+                  1        1    113
6-24 months   NIH-Crypto       BANGLADESH                     1                   0       56    113
6-24 months   NIH-Crypto       BANGLADESH                     1                   1       10    113
6-24 months   NIH-Crypto       BANGLADESH                     2                   0       22    113
6-24 months   NIH-Crypto       BANGLADESH                     2                   1        5    113
6-24 months   NIH-Crypto       BANGLADESH                     3                   0       10    113
6-24 months   NIH-Crypto       BANGLADESH                     3                   1        1    113
6-24 months   PROVIDE          BANGLADESH                     4+                  0        3    123
6-24 months   PROVIDE          BANGLADESH                     4+                  1        2    123
6-24 months   PROVIDE          BANGLADESH                     1                   0       70    123
6-24 months   PROVIDE          BANGLADESH                     1                   1       20    123
6-24 months   PROVIDE          BANGLADESH                     2                   0        7    123
6-24 months   PROVIDE          BANGLADESH                     2                   1        7    123
6-24 months   PROVIDE          BANGLADESH                     3                   0        9    123
6-24 months   PROVIDE          BANGLADESH                     3                   1        5    123


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/f79f238f-3c0f-4a2f-8194-71746e42f74d/65ddb9f4-284f-4cdc-9d9c-343e2792b924/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f79f238f-3c0f-4a2f-8194-71746e42f74d/65ddb9f4-284f-4cdc-9d9c-343e2792b924/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f79f238f-3c0f-4a2f-8194-71746e42f74d/65ddb9f4-284f-4cdc-9d9c-343e2792b924/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f79f238f-3c0f-4a2f-8194-71746e42f74d/65ddb9f4-284f-4cdc-9d9c-343e2792b924/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        4+                   NA                0.5159236   0.4561954   0.5756518
0-24 months   GMS-Nepal    NEPAL        1                    NA                0.6470588   0.5229282   0.7711895
0-24 months   GMS-Nepal    NEPAL        2                    NA                0.4700855   0.3697893   0.5703817
0-24 months   GMS-Nepal    NEPAL        3                    NA                0.6024845   0.5143128   0.6906561
0-24 months   IRC          INDIA        4+                   NA                0.4500000   0.2471890   0.6528110
0-24 months   IRC          INDIA        1                    NA                0.5925926   0.5081592   0.6770260
0-24 months   IRC          INDIA        2                    NA                0.6111111   0.5401543   0.6820679
0-24 months   IRC          INDIA        3                    NA                0.5625000   0.3398407   0.7851593
0-24 months   NIH-Crypto   BANGLADESH   4+                   NA                0.6857143   0.5209342   0.8504944
0-24 months   NIH-Crypto   BANGLADESH   1                    NA                0.5802469   0.5049956   0.6554982
0-24 months   NIH-Crypto   BANGLADESH   2                    NA                0.6486486   0.5382188   0.7590785
0-24 months   NIH-Crypto   BANGLADESH   3                    NA                0.6923077   0.5453040   0.8393114
0-6 months    GMS-Nepal    NEPAL        4+                   NA                0.5833333   0.4981147   0.6685520
0-6 months    GMS-Nepal    NEPAL        1                    NA                0.5555556   0.3318457   0.7792654
0-6 months    GMS-Nepal    NEPAL        2                    NA                0.5000000   0.3491063   0.6508937
0-6 months    GMS-Nepal    NEPAL        3                    NA                0.7246377   0.6194642   0.8298111
6-24 months   GMS-Nepal    NEPAL        4+                   NA                0.4670330   0.3913393   0.5427267
6-24 months   GMS-Nepal    NEPAL        1                    NA                0.6969697   0.5201686   0.8737708
6-24 months   GMS-Nepal    NEPAL        2                    NA                0.4520548   0.3254929   0.5786167
6-24 months   GMS-Nepal    NEPAL        3                    NA                0.5108696   0.3944329   0.6273063


### Parameter: E(Y)


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        NA                   NA                0.5396579   0.4973524   0.5819633
0-24 months   IRC          INDIA        NA                   NA                0.5913706   0.5391835   0.6435576
0-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.6225806   0.5684562   0.6767051
0-6 months    GMS-Nepal    NEPAL        NA                   NA                0.6045627   0.5449300   0.6641955
6-24 months   GMS-Nepal    NEPAL        NA                   NA                0.4947368   0.4401559   0.5493178


### Parameter: RR


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal    NEPAL        4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal    NEPAL        1                    4+                1.2541757   1.0023703   1.569237
0-24 months   GMS-Nepal    NEPAL        2                    4+                0.9111533   0.7147455   1.161533
0-24 months   GMS-Nepal    NEPAL        3                    4+                1.1677785   0.9689629   1.407388
0-24 months   IRC          INDIA        4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   IRC          INDIA        1                    4+                1.3168724   0.8208567   2.112614
0-24 months   IRC          INDIA        2                    4+                1.3580247   0.8527213   2.162759
0-24 months   IRC          INDIA        3                    4+                1.2500000   0.6860395   2.277566
0-24 months   NIH-Crypto   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto   BANGLADESH   1                    4+                0.8461934   0.6440264   1.111823
0-24 months   NIH-Crypto   BANGLADESH   2                    4+                0.9459459   0.7046622   1.269848
0-24 months   NIH-Crypto   BANGLADESH   3                    4+                1.0096154   0.7326591   1.391265
0-6 months    GMS-Nepal    NEPAL        4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal    NEPAL        1                    4+                0.9523810   0.6205522   1.461649
0-6 months    GMS-Nepal    NEPAL        2                    4+                0.8571429   0.6129707   1.198579
0-6 months    GMS-Nepal    NEPAL        3                    4+                1.2422360   1.0110429   1.526296
6-24 months   GMS-Nepal    NEPAL        4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal    NEPAL        1                    4+                1.4923351   1.1042417   2.016827
6-24 months   GMS-Nepal    NEPAL        2                    4+                0.9679291   0.7002806   1.337873
6-24 months   GMS-Nepal    NEPAL        3                    4+                1.0938619   0.8268902   1.447029


### Parameter: PAR


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL        4+                   NA                 0.0237343   -0.0195251   0.0669937
0-24 months   IRC          INDIA        4+                   NA                 0.1413706   -0.0576416   0.3403827
0-24 months   NIH-Crypto   BANGLADESH   4+                   NA                -0.0631336   -0.2179095   0.0916422
0-6 months    GMS-Nepal    NEPAL        4+                   NA                 0.0212294   -0.0381741   0.0806329
6-24 months   GMS-Nepal    NEPAL        4+                   NA                 0.0277039   -0.0289729   0.0843807


### Parameter: PAF


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL        4+                   NA                 0.0439802   -0.0396218   0.1208594
0-24 months   IRC          INDIA        4+                   NA                 0.2390558   -0.1833208   0.5106685
0-24 months   NIH-Crypto   BANGLADESH   4+                   NA                -0.1014064   -0.3803220   0.1211500
0-6 months    GMS-Nepal    NEPAL        4+                   NA                 0.0351153   -0.0684841   0.1286698
6-24 months   GMS-Nepal    NEPAL        4+                   NA                 0.0559972   -0.0654705   0.1636171
