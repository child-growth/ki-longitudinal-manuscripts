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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

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
0-24 months   JiVitA-3         BANGLADESH                     4+                  0      132   7560
0-24 months   JiVitA-3         BANGLADESH                     4+                  1      131   7560
0-24 months   JiVitA-3         BANGLADESH                     1                   0     2662   7560
0-24 months   JiVitA-3         BANGLADESH                     1                   1     1855   7560
0-24 months   JiVitA-3         BANGLADESH                     2                   0     1181   7560
0-24 months   JiVitA-3         BANGLADESH                     2                   1      899   7560
0-24 months   JiVitA-3         BANGLADESH                     3                   0      391   7560
0-24 months   JiVitA-3         BANGLADESH                     3                   1      309   7560
0-24 months   JiVitA-4         BANGLADESH                     4+                  0       57   2062
0-24 months   JiVitA-4         BANGLADESH                     4+                  1       33   2062
0-24 months   JiVitA-4         BANGLADESH                     1                   0      956   2062
0-24 months   JiVitA-4         BANGLADESH                     1                   1      320   2062
0-24 months   JiVitA-4         BANGLADESH                     2                   0      379   2062
0-24 months   JiVitA-4         BANGLADESH                     2                   1      125   2062
0-24 months   JiVitA-4         BANGLADESH                     3                   0      138   2062
0-24 months   JiVitA-4         BANGLADESH                     3                   1       54   2062
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
0-6 months    JiVitA-3         BANGLADESH                     4+                  0       50   4729
0-6 months    JiVitA-3         BANGLADESH                     4+                  1      131   4729
0-6 months    JiVitA-3         BANGLADESH                     1                   0      984   4729
0-6 months    JiVitA-3         BANGLADESH                     1                   1     1855   4729
0-6 months    JiVitA-3         BANGLADESH                     2                   0      373   4729
0-6 months    JiVitA-3         BANGLADESH                     2                   1      899   4729
0-6 months    JiVitA-3         BANGLADESH                     3                   0      128   4729
0-6 months    JiVitA-3         BANGLADESH                     3                   1      309   4729
0-6 months    JiVitA-4         BANGLADESH                     4+                  0       11    548
0-6 months    JiVitA-4         BANGLADESH                     4+                  1       21    548
0-6 months    JiVitA-4         BANGLADESH                     1                   0      144    548
0-6 months    JiVitA-4         BANGLADESH                     1                   1      177    548
0-6 months    JiVitA-4         BANGLADESH                     2                   0       61    548
0-6 months    JiVitA-4         BANGLADESH                     2                   1       71    548
0-6 months    JiVitA-4         BANGLADESH                     3                   0       26    548
0-6 months    JiVitA-4         BANGLADESH                     3                   1       37    548
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
6-24 months   JiVitA-3         BANGLADESH                     4+                  0       82   2831
6-24 months   JiVitA-3         BANGLADESH                     4+                  1        0   2831
6-24 months   JiVitA-3         BANGLADESH                     1                   0     1678   2831
6-24 months   JiVitA-3         BANGLADESH                     1                   1        0   2831
6-24 months   JiVitA-3         BANGLADESH                     2                   0      808   2831
6-24 months   JiVitA-3         BANGLADESH                     2                   1        0   2831
6-24 months   JiVitA-3         BANGLADESH                     3                   0      263   2831
6-24 months   JiVitA-3         BANGLADESH                     3                   1        0   2831
6-24 months   JiVitA-4         BANGLADESH                     4+                  0       46   1514
6-24 months   JiVitA-4         BANGLADESH                     4+                  1       12   1514
6-24 months   JiVitA-4         BANGLADESH                     1                   0      812   1514
6-24 months   JiVitA-4         BANGLADESH                     1                   1      143   1514
6-24 months   JiVitA-4         BANGLADESH                     2                   0      318   1514
6-24 months   JiVitA-4         BANGLADESH                     2                   1       54   1514
6-24 months   JiVitA-4         BANGLADESH                     3                   0      112   1514
6-24 months   JiVitA-4         BANGLADESH                     3                   1       17   1514
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
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/f68dbd81-f973-45eb-98d6-2c76d19cad38/3dd4a835-0536-4246-b81f-bd9b63aad0c4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f68dbd81-f973-45eb-98d6-2c76d19cad38/3dd4a835-0536-4246-b81f-bd9b63aad0c4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f68dbd81-f973-45eb-98d6-2c76d19cad38/3dd4a835-0536-4246-b81f-bd9b63aad0c4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f68dbd81-f973-45eb-98d6-2c76d19cad38/3dd4a835-0536-4246-b81f-bd9b63aad0c4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        4+                   NA                0.5138025   0.4539051   0.5736999
0-24 months   GMS-Nepal    NEPAL        1                    NA                0.5863202   0.4492334   0.7234070
0-24 months   GMS-Nepal    NEPAL        2                    NA                0.4525930   0.3515874   0.5535986
0-24 months   GMS-Nepal    NEPAL        3                    NA                0.5941747   0.5055736   0.6827759
0-24 months   IRC          INDIA        4+                   NA                0.4500000   0.2471890   0.6528110
0-24 months   IRC          INDIA        1                    NA                0.5925926   0.5081592   0.6770260
0-24 months   IRC          INDIA        2                    NA                0.6111111   0.5401543   0.6820679
0-24 months   IRC          INDIA        3                    NA                0.5625000   0.3398407   0.7851593
0-24 months   JiVitA-3     BANGLADESH   4+                   NA                0.4046357   0.3705684   0.4387030
0-24 months   JiVitA-3     BANGLADESH   1                    NA                0.4172367   0.3995996   0.4348739
0-24 months   JiVitA-3     BANGLADESH   2                    NA                0.4186624   0.3838983   0.4534266
0-24 months   JiVitA-3     BANGLADESH   3                    NA                0.4201323   0.3819267   0.4583380
0-24 months   JiVitA-4     BANGLADESH   4+                   NA                0.3324998   0.2630172   0.4019825
0-24 months   JiVitA-4     BANGLADESH   1                    NA                0.2652906   0.2349542   0.2956271
0-24 months   JiVitA-4     BANGLADESH   2                    NA                0.2312389   0.1817615   0.2807162
0-24 months   JiVitA-4     BANGLADESH   3                    NA                0.3047187   0.2260445   0.3833929
0-24 months   NIH-Crypto   BANGLADESH   4+                   NA                0.6870340   0.5173020   0.8567660
0-24 months   NIH-Crypto   BANGLADESH   1                    NA                0.5818241   0.5065524   0.6570958
0-24 months   NIH-Crypto   BANGLADESH   2                    NA                0.6525716   0.5396823   0.7654609
0-24 months   NIH-Crypto   BANGLADESH   3                    NA                0.6863159   0.5315159   0.8411159
0-6 months    GMS-Nepal    NEPAL        4+                   NA                0.5833333   0.4981147   0.6685520
0-6 months    GMS-Nepal    NEPAL        1                    NA                0.5555556   0.3318457   0.7792654
0-6 months    GMS-Nepal    NEPAL        2                    NA                0.5000000   0.3491063   0.6508937
0-6 months    GMS-Nepal    NEPAL        3                    NA                0.7246377   0.6194642   0.8298111
0-6 months    JiVitA-3     BANGLADESH   4+                   NA                0.7043564   0.6384905   0.7702222
0-6 months    JiVitA-3     BANGLADESH   1                    NA                0.6573469   0.6395569   0.6751369
0-6 months    JiVitA-3     BANGLADESH   2                    NA                0.7015194   0.6738974   0.7291413
0-6 months    JiVitA-3     BANGLADESH   3                    NA                0.7083397   0.6611593   0.7555201
0-6 months    JiVitA-4     BANGLADESH   4+                   NA                0.6838177   0.4869102   0.8807251
0-6 months    JiVitA-4     BANGLADESH   1                    NA                0.5726745   0.5167995   0.6285495
0-6 months    JiVitA-4     BANGLADESH   2                    NA                0.5287790   0.4409217   0.6166362
0-6 months    JiVitA-4     BANGLADESH   3                    NA                0.6305855   0.5023384   0.7588326
6-24 months   GMS-Nepal    NEPAL        4+                   NA                0.4639410   0.3880691   0.5398129
6-24 months   GMS-Nepal    NEPAL        1                    NA                0.6035461   0.4126601   0.7944321
6-24 months   GMS-Nepal    NEPAL        2                    NA                0.4368566   0.3074115   0.5663017
6-24 months   GMS-Nepal    NEPAL        3                    NA                0.4938826   0.3764549   0.6113103
6-24 months   JiVitA-4     BANGLADESH   4+                   NA                0.2412239   0.1156183   0.3668296
6-24 months   JiVitA-4     BANGLADESH   1                    NA                0.1520260   0.1299832   0.1740688
6-24 months   JiVitA-4     BANGLADESH   2                    NA                0.1470493   0.1091004   0.1849982
6-24 months   JiVitA-4     BANGLADESH   3                    NA                0.1384812   0.0710223   0.2059401


### Parameter: E(Y)


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        NA                   NA                0.5396579   0.4973524   0.5819633
0-24 months   IRC          INDIA        NA                   NA                0.5913706   0.5391835   0.6435576
0-24 months   JiVitA-3     BANGLADESH   NA                   NA                0.4224868   0.4113573   0.4336163
0-24 months   JiVitA-4     BANGLADESH   NA                   NA                0.2580019   0.2386523   0.2773515
0-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.6225806   0.5684562   0.6767051
0-6 months    GMS-Nepal    NEPAL        NA                   NA                0.6045627   0.5449300   0.6641955
0-6 months    JiVitA-3     BANGLADESH   NA                   NA                0.6754071   0.6620619   0.6887522
0-6 months    JiVitA-4     BANGLADESH   NA                   NA                0.5583942   0.5167799   0.6000084
6-24 months   GMS-Nepal    NEPAL        NA                   NA                0.4947368   0.4401559   0.5493178
6-24 months   JiVitA-4     BANGLADESH   NA                   NA                0.1492734   0.1316631   0.1668838


### Parameter: RR


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal    NEPAL        1                    4+                1.1411393   0.8786455   1.4820526
0-24 months   GMS-Nepal    NEPAL        2                    4+                0.8808696   0.6846600   1.1333088
0-24 months   GMS-Nepal    NEPAL        3                    4+                1.1564263   0.9567647   1.3977539
0-24 months   IRC          INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   IRC          INDIA        1                    4+                1.3168724   0.8208567   2.1126135
0-24 months   IRC          INDIA        2                    4+                1.3580247   0.8527213   2.1627595
0-24 months   IRC          INDIA        3                    4+                1.2500000   0.6860395   2.2775656
0-24 months   JiVitA-3     BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3     BANGLADESH   1                    4+                1.0311417   0.9386404   1.1327588
0-24 months   JiVitA-3     BANGLADESH   2                    4+                1.0346651   0.9194626   1.1643017
0-24 months   JiVitA-3     BANGLADESH   3                    4+                1.0382977   0.9174016   1.1751256
0-24 months   JiVitA-4     BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4     BANGLADESH   1                    4+                0.7978669   0.6287891   1.0124089
0-24 months   JiVitA-4     BANGLADESH   2                    4+                0.6954555   0.5157403   0.9377946
0-24 months   JiVitA-4     BANGLADESH   3                    4+                0.9164476   0.6573553   1.2776596
0-24 months   NIH-Crypto   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto   BANGLADESH   1                    4+                0.8468637   0.6405903   1.1195581
0-24 months   NIH-Crypto   BANGLADESH   2                    4+                0.9498389   0.7024739   1.2843096
0-24 months   NIH-Crypto   BANGLADESH   3                    4+                0.9989548   0.7150610   1.3955603
0-6 months    GMS-Nepal    NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal    NEPAL        1                    4+                0.9523810   0.6205522   1.4616490
0-6 months    GMS-Nepal    NEPAL        2                    4+                0.8571429   0.6129707   1.1985790
0-6 months    GMS-Nepal    NEPAL        3                    4+                1.2422360   1.0110429   1.5262956
0-6 months    JiVitA-3     BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3     BANGLADESH   1                    4+                0.9332590   0.8466934   1.0286750
0-6 months    JiVitA-3     BANGLADESH   2                    4+                0.9959722   0.8998818   1.1023232
0-6 months    JiVitA-3     BANGLADESH   3                    4+                1.0056552   0.8965852   1.1279938
0-6 months    JiVitA-4     BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4     BANGLADESH   1                    4+                0.8374667   0.6178435   1.1351587
0-6 months    JiVitA-4     BANGLADESH   2                    4+                0.7732748   0.5547430   1.0778937
0-6 months    JiVitA-4     BANGLADESH   3                    4+                0.9221545   0.6482278   1.3118364
6-24 months   GMS-Nepal    NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal    NEPAL        1                    4+                1.3009114   0.9104967   1.8587332
6-24 months   GMS-Nepal    NEPAL        2                    4+                0.9416211   0.6713062   1.3207837
6-24 months   GMS-Nepal    NEPAL        3                    4+                1.0645376   0.7969417   1.4219865
6-24 months   JiVitA-4     BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4     BANGLADESH   1                    4+                0.6302275   0.3670699   1.0820467
6-24 months   JiVitA-4     BANGLADESH   2                    4+                0.6095967   0.3409368   1.0899619
6-24 months   JiVitA-4     BANGLADESH   3                    4+                0.5740772   0.2814284   1.1710427


### Parameter: PAR


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   GMS-Nepal    NEPAL        4+                   NA                 0.0258553   -0.0176179    0.0693286
0-24 months   IRC          INDIA        4+                   NA                 0.1413706   -0.0576416    0.3403827
0-24 months   JiVitA-3     BANGLADESH   4+                   NA                 0.0178511   -0.0164282    0.0521303
0-24 months   JiVitA-4     BANGLADESH   4+                   NA                -0.0744979   -0.1432990   -0.0056968
0-24 months   NIH-Crypto   BANGLADESH   4+                   NA                -0.0644533   -0.2238853    0.0949787
0-6 months    GMS-Nepal    NEPAL        4+                   NA                 0.0212294   -0.0381741    0.0806329
0-6 months    JiVitA-3     BANGLADESH   4+                   NA                -0.0289493   -0.0941309    0.0362322
0-6 months    JiVitA-4     BANGLADESH   4+                   NA                -0.1254235   -0.3197480    0.0689010
6-24 months   GMS-Nepal    NEPAL        4+                   NA                 0.0307959   -0.0261468    0.0877385
6-24 months   JiVitA-4     BANGLADESH   4+                   NA                -0.0919505   -0.2153096    0.0314086


### Parameter: PAF


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   GMS-Nepal    NEPAL        4+                   NA                 0.0479106   -0.0361457    0.1251479
0-24 months   IRC          INDIA        4+                   NA                 0.2390558   -0.1833208    0.5106685
0-24 months   JiVitA-3     BANGLADESH   4+                   NA                 0.0422524   -0.0422088    0.1198687
0-24 months   JiVitA-4     BANGLADESH   4+                   NA                -0.2887494   -0.5888796   -0.0453121
0-24 months   NIH-Crypto   BANGLADESH   4+                   NA                -0.1035261   -0.3916561    0.1249492
0-6 months    GMS-Nepal    NEPAL        4+                   NA                 0.0351153   -0.0684841    0.1286698
0-6 months    JiVitA-3     BANGLADESH   4+                   NA                -0.0428620   -0.1440268    0.0493568
0-6 months    JiVitA-4     BANGLADESH   4+                   NA                -0.2246146   -0.6286294    0.0791760
6-24 months   GMS-Nepal    NEPAL        4+                   NA                 0.0622470   -0.0598616    0.1702872
6-24 months   JiVitA-4     BANGLADESH   4+                   NA                -0.6159870   -1.6932047    0.0303693
