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

**Outcome Variable:** ever_stunted

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

agecat        studyid          country                        nrooms    ever_stunted   n_cell      n
------------  ---------------  -----------------------------  -------  -------------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          4+                   0        2    373
0-24 months   CMC-V-BCS-2002   INDIA                          4+                   1       12    373
0-24 months   CMC-V-BCS-2002   INDIA                          1                    0       11    373
0-24 months   CMC-V-BCS-2002   INDIA                          1                    1      191    373
0-24 months   CMC-V-BCS-2002   INDIA                          2                    0        8    373
0-24 months   CMC-V-BCS-2002   INDIA                          2                    1       98    373
0-24 months   CMC-V-BCS-2002   INDIA                          3                    0        7    373
0-24 months   CMC-V-BCS-2002   INDIA                          3                    1       44    373
0-24 months   COHORTS          INDIA                          4+                   0       87   5374
0-24 months   COHORTS          INDIA                          4+                   1       19   5374
0-24 months   COHORTS          INDIA                          1                    0     1943   5374
0-24 months   COHORTS          INDIA                          1                    1     1576   5374
0-24 months   COHORTS          INDIA                          2                    0     1116   5374
0-24 months   COHORTS          INDIA                          2                    1      438   5374
0-24 months   COHORTS          INDIA                          3                    0      143   5374
0-24 months   COHORTS          INDIA                          3                    1       52   5374
0-24 months   CONTENT          PERU                           4+                   0       62    215
0-24 months   CONTENT          PERU                           4+                   1       16    215
0-24 months   CONTENT          PERU                           1                    0       32    215
0-24 months   CONTENT          PERU                           1                    1       12    215
0-24 months   CONTENT          PERU                           2                    0       39    215
0-24 months   CONTENT          PERU                           2                    1       15    215
0-24 months   CONTENT          PERU                           3                    0       29    215
0-24 months   CONTENT          PERU                           3                    1       10    215
0-24 months   GMS-Nepal        NEPAL                          4+                   0      113    698
0-24 months   GMS-Nepal        NEPAL                          4+                   1      210    698
0-24 months   GMS-Nepal        NEPAL                          1                    0       20    698
0-24 months   GMS-Nepal        NEPAL                          1                    1       29    698
0-24 months   GMS-Nepal        NEPAL                          2                    0       49    698
0-24 months   GMS-Nepal        NEPAL                          2                    1       96    698
0-24 months   GMS-Nepal        NEPAL                          3                    0       70    698
0-24 months   GMS-Nepal        NEPAL                          3                    1      111    698
0-24 months   IRC              INDIA                          4+                   0        4    408
0-24 months   IRC              INDIA                          4+                   1       13    408
0-24 months   IRC              INDIA                          1                    0       65    408
0-24 months   IRC              INDIA                          1                    1      120    408
0-24 months   IRC              INDIA                          2                    0       66    408
0-24 months   IRC              INDIA                          2                    1      104    408
0-24 months   IRC              INDIA                          3                    0       10    408
0-24 months   IRC              INDIA                          3                    1       26    408
0-24 months   MAL-ED           BANGLADESH                     4+                   0        8    242
0-24 months   MAL-ED           BANGLADESH                     4+                   1        4    242
0-24 months   MAL-ED           BANGLADESH                     1                    0       56    242
0-24 months   MAL-ED           BANGLADESH                     1                    1       96    242
0-24 months   MAL-ED           BANGLADESH                     2                    0       18    242
0-24 months   MAL-ED           BANGLADESH                     2                    1       32    242
0-24 months   MAL-ED           BANGLADESH                     3                    0       11    242
0-24 months   MAL-ED           BANGLADESH                     3                    1       17    242
0-24 months   MAL-ED           BRAZIL                         4+                   0       97    210
0-24 months   MAL-ED           BRAZIL                         4+                   1       30    210
0-24 months   MAL-ED           BRAZIL                         1                    0        4    210
0-24 months   MAL-ED           BRAZIL                         1                    1        0    210
0-24 months   MAL-ED           BRAZIL                         2                    0       16    210
0-24 months   MAL-ED           BRAZIL                         2                    1        4    210
0-24 months   MAL-ED           BRAZIL                         3                    0       37    210
0-24 months   MAL-ED           BRAZIL                         3                    1       22    210
0-24 months   MAL-ED           INDIA                          4+                   0        9    235
0-24 months   MAL-ED           INDIA                          4+                   1       16    235
0-24 months   MAL-ED           INDIA                          1                    0       38    235
0-24 months   MAL-ED           INDIA                          1                    1       46    235
0-24 months   MAL-ED           INDIA                          2                    0       21    235
0-24 months   MAL-ED           INDIA                          2                    1       57    235
0-24 months   MAL-ED           INDIA                          3                    0       21    235
0-24 months   MAL-ED           INDIA                          3                    1       27    235
0-24 months   MAL-ED           NEPAL                          4+                   0       87    236
0-24 months   MAL-ED           NEPAL                          4+                   1       44    236
0-24 months   MAL-ED           NEPAL                          1                    0       33    236
0-24 months   MAL-ED           NEPAL                          1                    1       19    236
0-24 months   MAL-ED           NEPAL                          2                    0       22    236
0-24 months   MAL-ED           NEPAL                          2                    1        9    236
0-24 months   MAL-ED           NEPAL                          3                    0       12    236
0-24 months   MAL-ED           NEPAL                          3                    1       10    236
0-24 months   MAL-ED           PERU                           4+                   0       47    272
0-24 months   MAL-ED           PERU                           4+                   1       92    272
0-24 months   MAL-ED           PERU                           1                    0        4    272
0-24 months   MAL-ED           PERU                           1                    1       15    272
0-24 months   MAL-ED           PERU                           2                    0       15    272
0-24 months   MAL-ED           PERU                           2                    1       37    272
0-24 months   MAL-ED           PERU                           3                    0       25    272
0-24 months   MAL-ED           PERU                           3                    1       37    272
0-24 months   MAL-ED           SOUTH AFRICA                   4+                   0       78    257
0-24 months   MAL-ED           SOUTH AFRICA                   4+                   1      118    257
0-24 months   MAL-ED           SOUTH AFRICA                   1                    0        5    257
0-24 months   MAL-ED           SOUTH AFRICA                   1                    1        9    257
0-24 months   MAL-ED           SOUTH AFRICA                   2                    0        8    257
0-24 months   MAL-ED           SOUTH AFRICA                   2                    1       14    257
0-24 months   MAL-ED           SOUTH AFRICA                   3                    0        7    257
0-24 months   MAL-ED           SOUTH AFRICA                   3                    1       18    257
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   0       12    250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   1       96    250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        5    250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        8    250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    0        8    250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    1       55    250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    0        9    250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    1       57    250
0-24 months   NIH-Crypto       BANGLADESH                     4+                   0       56    758
0-24 months   NIH-Crypto       BANGLADESH                     4+                   1       39    758
0-24 months   NIH-Crypto       BANGLADESH                     1                    0      174    758
0-24 months   NIH-Crypto       BANGLADESH                     1                    1      194    758
0-24 months   NIH-Crypto       BANGLADESH                     2                    0       98    758
0-24 months   NIH-Crypto       BANGLADESH                     2                    1       93    758
0-24 months   NIH-Crypto       BANGLADESH                     3                    0       68    758
0-24 months   NIH-Crypto       BANGLADESH                     3                    1       36    758
0-24 months   PROVIDE          BANGLADESH                     4+                   0       16    700
0-24 months   PROVIDE          BANGLADESH                     4+                   1        7    700
0-24 months   PROVIDE          BANGLADESH                     1                    0      278    700
0-24 months   PROVIDE          BANGLADESH                     1                    1      229    700
0-24 months   PROVIDE          BANGLADESH                     2                    0       65    700
0-24 months   PROVIDE          BANGLADESH                     2                    1       43    700
0-24 months   PROVIDE          BANGLADESH                     3                    0       36    700
0-24 months   PROVIDE          BANGLADESH                     3                    1       26    700
0-6 months    CMC-V-BCS-2002   INDIA                          4+                   0        7    368
0-6 months    CMC-V-BCS-2002   INDIA                          4+                   1        7    368
0-6 months    CMC-V-BCS-2002   INDIA                          1                    0       93    368
0-6 months    CMC-V-BCS-2002   INDIA                          1                    1      106    368
0-6 months    CMC-V-BCS-2002   INDIA                          2                    0       51    368
0-6 months    CMC-V-BCS-2002   INDIA                          2                    1       53    368
0-6 months    CMC-V-BCS-2002   INDIA                          3                    0       29    368
0-6 months    CMC-V-BCS-2002   INDIA                          3                    1       22    368
0-6 months    COHORTS          INDIA                          4+                   0       91   5193
0-6 months    COHORTS          INDIA                          4+                   1       10   5193
0-6 months    COHORTS          INDIA                          1                    0     2654   5193
0-6 months    COHORTS          INDIA                          1                    1      749   5193
0-6 months    COHORTS          INDIA                          2                    0     1294   5193
0-6 months    COHORTS          INDIA                          2                    1      207   5193
0-6 months    COHORTS          INDIA                          3                    0      164   5193
0-6 months    COHORTS          INDIA                          3                    1       24   5193
0-6 months    CONTENT          PERU                           4+                   0       68    215
0-6 months    CONTENT          PERU                           4+                   1       10    215
0-6 months    CONTENT          PERU                           1                    0       40    215
0-6 months    CONTENT          PERU                           1                    1        4    215
0-6 months    CONTENT          PERU                           2                    0       47    215
0-6 months    CONTENT          PERU                           2                    1        7    215
0-6 months    CONTENT          PERU                           3                    0       33    215
0-6 months    CONTENT          PERU                           3                    1        6    215
0-6 months    GMS-Nepal        NEPAL                          4+                   0      227    698
0-6 months    GMS-Nepal        NEPAL                          4+                   1       96    698
0-6 months    GMS-Nepal        NEPAL                          1                    0       34    698
0-6 months    GMS-Nepal        NEPAL                          1                    1       15    698
0-6 months    GMS-Nepal        NEPAL                          2                    0       97    698
0-6 months    GMS-Nepal        NEPAL                          2                    1       48    698
0-6 months    GMS-Nepal        NEPAL                          3                    0      118    698
0-6 months    GMS-Nepal        NEPAL                          3                    1       63    698
0-6 months    IRC              INDIA                          4+                   0        6    408
0-6 months    IRC              INDIA                          4+                   1       11    408
0-6 months    IRC              INDIA                          1                    0      108    408
0-6 months    IRC              INDIA                          1                    1       77    408
0-6 months    IRC              INDIA                          2                    0       97    408
0-6 months    IRC              INDIA                          2                    1       73    408
0-6 months    IRC              INDIA                          3                    0       23    408
0-6 months    IRC              INDIA                          3                    1       13    408
0-6 months    MAL-ED           BANGLADESH                     4+                   0       10    242
0-6 months    MAL-ED           BANGLADESH                     4+                   1        2    242
0-6 months    MAL-ED           BANGLADESH                     1                    0       95    242
0-6 months    MAL-ED           BANGLADESH                     1                    1       57    242
0-6 months    MAL-ED           BANGLADESH                     2                    0       33    242
0-6 months    MAL-ED           BANGLADESH                     2                    1       17    242
0-6 months    MAL-ED           BANGLADESH                     3                    0       22    242
0-6 months    MAL-ED           BANGLADESH                     3                    1        6    242
0-6 months    MAL-ED           BRAZIL                         4+                   0      103    210
0-6 months    MAL-ED           BRAZIL                         4+                   1       24    210
0-6 months    MAL-ED           BRAZIL                         1                    0        4    210
0-6 months    MAL-ED           BRAZIL                         1                    1        0    210
0-6 months    MAL-ED           BRAZIL                         2                    0       16    210
0-6 months    MAL-ED           BRAZIL                         2                    1        4    210
0-6 months    MAL-ED           BRAZIL                         3                    0       42    210
0-6 months    MAL-ED           BRAZIL                         3                    1       17    210
0-6 months    MAL-ED           INDIA                          4+                   0       18    235
0-6 months    MAL-ED           INDIA                          4+                   1        7    235
0-6 months    MAL-ED           INDIA                          1                    0       58    235
0-6 months    MAL-ED           INDIA                          1                    1       26    235
0-6 months    MAL-ED           INDIA                          2                    0       45    235
0-6 months    MAL-ED           INDIA                          2                    1       33    235
0-6 months    MAL-ED           INDIA                          3                    0       33    235
0-6 months    MAL-ED           INDIA                          3                    1       15    235
0-6 months    MAL-ED           NEPAL                          4+                   0      108    236
0-6 months    MAL-ED           NEPAL                          4+                   1       23    236
0-6 months    MAL-ED           NEPAL                          1                    0       43    236
0-6 months    MAL-ED           NEPAL                          1                    1        9    236
0-6 months    MAL-ED           NEPAL                          2                    0       28    236
0-6 months    MAL-ED           NEPAL                          2                    1        3    236
0-6 months    MAL-ED           NEPAL                          3                    0       16    236
0-6 months    MAL-ED           NEPAL                          3                    1        6    236
0-6 months    MAL-ED           PERU                           4+                   0       79    272
0-6 months    MAL-ED           PERU                           4+                   1       60    272
0-6 months    MAL-ED           PERU                           1                    0        7    272
0-6 months    MAL-ED           PERU                           1                    1       12    272
0-6 months    MAL-ED           PERU                           2                    0       27    272
0-6 months    MAL-ED           PERU                           2                    1       25    272
0-6 months    MAL-ED           PERU                           3                    0       37    272
0-6 months    MAL-ED           PERU                           3                    1       25    272
0-6 months    MAL-ED           SOUTH AFRICA                   4+                   0      119    257
0-6 months    MAL-ED           SOUTH AFRICA                   4+                   1       77    257
0-6 months    MAL-ED           SOUTH AFRICA                   1                    0        9    257
0-6 months    MAL-ED           SOUTH AFRICA                   1                    1        5    257
0-6 months    MAL-ED           SOUTH AFRICA                   2                    0       14    257
0-6 months    MAL-ED           SOUTH AFRICA                   2                    1        8    257
0-6 months    MAL-ED           SOUTH AFRICA                   3                    0       14    257
0-6 months    MAL-ED           SOUTH AFRICA                   3                    1       11    257
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   0       64    250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   1       44    250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        8    250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        5    250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    0       31    250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    1       32    250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    0       44    250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    1       22    250
0-6 months    NIH-Crypto       BANGLADESH                     4+                   0       68    758
0-6 months    NIH-Crypto       BANGLADESH                     4+                   1       27    758
0-6 months    NIH-Crypto       BANGLADESH                     1                    0      254    758
0-6 months    NIH-Crypto       BANGLADESH                     1                    1      114    758
0-6 months    NIH-Crypto       BANGLADESH                     2                    0      128    758
0-6 months    NIH-Crypto       BANGLADESH                     2                    1       63    758
0-6 months    NIH-Crypto       BANGLADESH                     3                    0       79    758
0-6 months    NIH-Crypto       BANGLADESH                     3                    1       25    758
0-6 months    PROVIDE          BANGLADESH                     4+                   0       19    700
0-6 months    PROVIDE          BANGLADESH                     4+                   1        4    700
0-6 months    PROVIDE          BANGLADESH                     1                    0      381    700
0-6 months    PROVIDE          BANGLADESH                     1                    1      126    700
0-6 months    PROVIDE          BANGLADESH                     2                    0       85    700
0-6 months    PROVIDE          BANGLADESH                     2                    1       23    700
0-6 months    PROVIDE          BANGLADESH                     3                    0       47    700
0-6 months    PROVIDE          BANGLADESH                     3                    1       15    700
6-24 months   CMC-V-BCS-2002   INDIA                          4+                   0        2    185
6-24 months   CMC-V-BCS-2002   INDIA                          4+                   1        5    185
6-24 months   CMC-V-BCS-2002   INDIA                          1                    0       11    185
6-24 months   CMC-V-BCS-2002   INDIA                          1                    1       85    185
6-24 months   CMC-V-BCS-2002   INDIA                          2                    0        8    185
6-24 months   CMC-V-BCS-2002   INDIA                          2                    1       45    185
6-24 months   CMC-V-BCS-2002   INDIA                          3                    0        7    185
6-24 months   CMC-V-BCS-2002   INDIA                          3                    1       22    185
6-24 months   COHORTS          INDIA                          4+                   0       77   4108
6-24 months   COHORTS          INDIA                          4+                   1        9   4108
6-24 months   COHORTS          INDIA                          1                    0     1740   4108
6-24 months   COHORTS          INDIA                          1                    1      827   4108
6-24 months   COHORTS          INDIA                          2                    0     1059   4108
6-24 months   COHORTS          INDIA                          2                    1      231   4108
6-24 months   COHORTS          INDIA                          3                    0      137   4108
6-24 months   COHORTS          INDIA                          3                    1       28   4108
6-24 months   CONTENT          PERU                           4+                   0       62    188
6-24 months   CONTENT          PERU                           4+                   1        6    188
6-24 months   CONTENT          PERU                           1                    0       32    188
6-24 months   CONTENT          PERU                           1                    1        8    188
6-24 months   CONTENT          PERU                           2                    0       39    188
6-24 months   CONTENT          PERU                           2                    1        8    188
6-24 months   CONTENT          PERU                           3                    0       29    188
6-24 months   CONTENT          PERU                           3                    1        4    188
6-24 months   GMS-Nepal        NEPAL                          4+                   0       82    397
6-24 months   GMS-Nepal        NEPAL                          4+                   1      114    397
6-24 months   GMS-Nepal        NEPAL                          1                    0       11    397
6-24 months   GMS-Nepal        NEPAL                          1                    1       14    397
6-24 months   GMS-Nepal        NEPAL                          2                    0       36    397
6-24 months   GMS-Nepal        NEPAL                          2                    1       48    397
6-24 months   GMS-Nepal        NEPAL                          3                    0       44    397
6-24 months   GMS-Nepal        NEPAL                          3                    1       48    397
6-24 months   IRC              INDIA                          4+                   0        4    234
6-24 months   IRC              INDIA                          4+                   1        2    234
6-24 months   IRC              INDIA                          1                    0       65    234
6-24 months   IRC              INDIA                          1                    1       43    234
6-24 months   IRC              INDIA                          2                    0       66    234
6-24 months   IRC              INDIA                          2                    1       31    234
6-24 months   IRC              INDIA                          3                    0       10    234
6-24 months   IRC              INDIA                          3                    1       13    234
6-24 months   MAL-ED           BANGLADESH                     4+                   0        8    158
6-24 months   MAL-ED           BANGLADESH                     4+                   1        2    158
6-24 months   MAL-ED           BANGLADESH                     1                    0       55    158
6-24 months   MAL-ED           BANGLADESH                     1                    1       39    158
6-24 months   MAL-ED           BANGLADESH                     2                    0       17    158
6-24 months   MAL-ED           BANGLADESH                     2                    1       15    158
6-24 months   MAL-ED           BANGLADESH                     3                    0       11    158
6-24 months   MAL-ED           BANGLADESH                     3                    1       11    158
6-24 months   MAL-ED           BRAZIL                         4+                   0       96    163
6-24 months   MAL-ED           BRAZIL                         4+                   1        6    163
6-24 months   MAL-ED           BRAZIL                         1                    0        4    163
6-24 months   MAL-ED           BRAZIL                         1                    1        0    163
6-24 months   MAL-ED           BRAZIL                         2                    0       15    163
6-24 months   MAL-ED           BRAZIL                         2                    1        0    163
6-24 months   MAL-ED           BRAZIL                         3                    0       37    163
6-24 months   MAL-ED           BRAZIL                         3                    1        5    163
6-24 months   MAL-ED           INDIA                          4+                   0        9    154
6-24 months   MAL-ED           INDIA                          4+                   1        9    154
6-24 months   MAL-ED           INDIA                          1                    0       38    154
6-24 months   MAL-ED           INDIA                          1                    1       20    154
6-24 months   MAL-ED           INDIA                          2                    0       21    154
6-24 months   MAL-ED           INDIA                          2                    1       24    154
6-24 months   MAL-ED           INDIA                          3                    0       21    154
6-24 months   MAL-ED           INDIA                          3                    1       12    154
6-24 months   MAL-ED           NEPAL                          4+                   0       87    194
6-24 months   MAL-ED           NEPAL                          4+                   1       21    194
6-24 months   MAL-ED           NEPAL                          1                    0       32    194
6-24 months   MAL-ED           NEPAL                          1                    1       10    194
6-24 months   MAL-ED           NEPAL                          2                    0       22    194
6-24 months   MAL-ED           NEPAL                          2                    1        6    194
6-24 months   MAL-ED           NEPAL                          3                    0       12    194
6-24 months   MAL-ED           NEPAL                          3                    1        4    194
6-24 months   MAL-ED           PERU                           4+                   0       47    149
6-24 months   MAL-ED           PERU                           4+                   1       32    149
6-24 months   MAL-ED           PERU                           1                    0        4    149
6-24 months   MAL-ED           PERU                           1                    1        3    149
6-24 months   MAL-ED           PERU                           2                    0       14    149
6-24 months   MAL-ED           PERU                           2                    1       12    149
6-24 months   MAL-ED           PERU                           3                    0       25    149
6-24 months   MAL-ED           PERU                           3                    1       12    149
6-24 months   MAL-ED           SOUTH AFRICA                   4+                   0       78    155
6-24 months   MAL-ED           SOUTH AFRICA                   4+                   1       41    155
6-24 months   MAL-ED           SOUTH AFRICA                   1                    0        5    155
6-24 months   MAL-ED           SOUTH AFRICA                   1                    1        4    155
6-24 months   MAL-ED           SOUTH AFRICA                   2                    0        8    155
6-24 months   MAL-ED           SOUTH AFRICA                   2                    1        6    155
6-24 months   MAL-ED           SOUTH AFRICA                   3                    0        6    155
6-24 months   MAL-ED           SOUTH AFRICA                   3                    1        7    155
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   0       12    144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   1       52    144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        4    144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        3    144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    0        7    144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    1       23    144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    0        8    144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    1       35    144
6-24 months   NIH-Crypto       BANGLADESH                     4+                   0       52    506
6-24 months   NIH-Crypto       BANGLADESH                     4+                   1       12    506
6-24 months   NIH-Crypto       BANGLADESH                     1                    0      157    506
6-24 months   NIH-Crypto       BANGLADESH                     1                    1       80    506
6-24 months   NIH-Crypto       BANGLADESH                     2                    0       96    506
6-24 months   NIH-Crypto       BANGLADESH                     2                    1       30    506
6-24 months   NIH-Crypto       BANGLADESH                     3                    0       68    506
6-24 months   NIH-Crypto       BANGLADESH                     3                    1       11    506
6-24 months   PROVIDE          BANGLADESH                     4+                   0       15    456
6-24 months   PROVIDE          BANGLADESH                     4+                   1        3    456
6-24 months   PROVIDE          BANGLADESH                     1                    0      217    456
6-24 months   PROVIDE          BANGLADESH                     1                    1      103    456
6-24 months   PROVIDE          BANGLADESH                     2                    0       55    456
6-24 months   PROVIDE          BANGLADESH                     2                    1       20    456
6-24 months   PROVIDE          BANGLADESH                     3                    0       32    456
6-24 months   PROVIDE          BANGLADESH                     3                    1       11    456


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
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/2ab533e3-64da-4949-9f09-dbd482608eac/39895ff6-2166-48e8-a22f-5a817f7682e8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2ab533e3-64da-4949-9f09-dbd482608eac/39895ff6-2166-48e8-a22f-5a817f7682e8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2ab533e3-64da-4949-9f09-dbd482608eac/39895ff6-2166-48e8-a22f-5a817f7682e8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2ab533e3-64da-4949-9f09-dbd482608eac/39895ff6-2166-48e8-a22f-5a817f7682e8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          INDIA                          4+                   NA                0.1792453   0.1216304   0.2368601
0-24 months   COHORTS          INDIA                          1                    NA                0.4478545   0.4314231   0.4642859
0-24 months   COHORTS          INDIA                          2                    NA                0.2818533   0.2594825   0.3042241
0-24 months   COHORTS          INDIA                          3                    NA                0.2666667   0.2045932   0.3287402
0-24 months   CONTENT          PERU                           4+                   NA                0.2051282   0.1153079   0.2949485
0-24 months   CONTENT          PERU                           1                    NA                0.2727273   0.1408266   0.4046280
0-24 months   CONTENT          PERU                           2                    NA                0.2777778   0.1580354   0.3975201
0-24 months   CONTENT          PERU                           3                    NA                0.2564103   0.1190495   0.3937710
0-24 months   GMS-Nepal        NEPAL                          4+                   NA                0.6501548   0.5981067   0.7022029
0-24 months   GMS-Nepal        NEPAL                          1                    NA                0.5918367   0.4541224   0.7295511
0-24 months   GMS-Nepal        NEPAL                          2                    NA                0.6620690   0.5850246   0.7391134
0-24 months   GMS-Nepal        NEPAL                          3                    NA                0.6132597   0.5422607   0.6842586
0-24 months   MAL-ED           INDIA                          4+                   NA                0.6400000   0.4514418   0.8285582
0-24 months   MAL-ED           INDIA                          1                    NA                0.5476190   0.4409531   0.6542850
0-24 months   MAL-ED           INDIA                          2                    NA                0.7307692   0.6321233   0.8294152
0-24 months   MAL-ED           INDIA                          3                    NA                0.5625000   0.4218616   0.7031384
0-24 months   MAL-ED           NEPAL                          4+                   NA                0.3358779   0.2548286   0.4169271
0-24 months   MAL-ED           NEPAL                          1                    NA                0.3653846   0.2342254   0.4965439
0-24 months   MAL-ED           NEPAL                          2                    NA                0.2903226   0.1301972   0.4504480
0-24 months   MAL-ED           NEPAL                          3                    NA                0.4545455   0.2460355   0.6630554
0-24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                0.6020408   0.5333816   0.6707000
0-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.6428571   0.3913740   0.8943403
0-24 months   MAL-ED           SOUTH AFRICA                   2                    NA                0.6363636   0.4349589   0.8377684
0-24 months   MAL-ED           SOUTH AFRICA                   3                    NA                0.7200000   0.5436522   0.8963478
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.8888889   0.8294995   0.9482783
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6153846   0.3503922   0.8803770
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8730159   0.7906336   0.9553982
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.8636364   0.7806778   0.9465949
0-24 months   NIH-Crypto       BANGLADESH                     4+                   NA                0.4105263   0.3115399   0.5095127
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.5271739   0.4761306   0.5782172
0-24 months   NIH-Crypto       BANGLADESH                     2                    NA                0.4869110   0.4159795   0.5578425
0-24 months   NIH-Crypto       BANGLADESH                     3                    NA                0.3461538   0.2546603   0.4376474
0-24 months   PROVIDE          BANGLADESH                     4+                   NA                0.3043478   0.1161668   0.4925288
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.4516765   0.4083268   0.4950263
0-24 months   PROVIDE          BANGLADESH                     2                    NA                0.3981481   0.3057605   0.4905358
0-24 months   PROVIDE          BANGLADESH                     3                    NA                0.4193548   0.2964387   0.5422710
0-6 months    CMC-V-BCS-2002   INDIA                          4+                   NA                0.5000000   0.2377322   0.7622678
0-6 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.5326633   0.4632482   0.6020784
0-6 months    CMC-V-BCS-2002   INDIA                          2                    NA                0.5096154   0.4134072   0.6058236
0-6 months    CMC-V-BCS-2002   INDIA                          3                    NA                0.4313725   0.2952613   0.5674838
0-6 months    COHORTS          INDIA                          4+                   NA                0.0990099   0.0536897   0.1443301
0-6 months    COHORTS          INDIA                          1                    NA                0.2200999   0.2061783   0.2340215
0-6 months    COHORTS          INDIA                          2                    NA                0.1379081   0.1204631   0.1553531
0-6 months    COHORTS          INDIA                          3                    NA                0.1276596   0.0799527   0.1753664
0-6 months    GMS-Nepal        NEPAL                          4+                   NA                0.2972136   0.2473362   0.3470911
0-6 months    GMS-Nepal        NEPAL                          1                    NA                0.3061224   0.1769855   0.4352594
0-6 months    GMS-Nepal        NEPAL                          2                    NA                0.3310345   0.2543842   0.4076848
0-6 months    GMS-Nepal        NEPAL                          3                    NA                0.3480663   0.2786194   0.4175132
0-6 months    IRC              INDIA                          4+                   NA                0.6470588   0.4196122   0.8745055
0-6 months    IRC              INDIA                          1                    NA                0.4162162   0.3450980   0.4873344
0-6 months    IRC              INDIA                          2                    NA                0.4294118   0.3549120   0.5039115
0-6 months    IRC              INDIA                          3                    NA                0.3611111   0.2040159   0.5182063
0-6 months    MAL-ED           INDIA                          4+                   NA                0.2800000   0.1036200   0.4563800
0-6 months    MAL-ED           INDIA                          1                    NA                0.3095238   0.2104507   0.4085969
0-6 months    MAL-ED           INDIA                          2                    NA                0.4230769   0.3132028   0.5329510
0-6 months    MAL-ED           INDIA                          3                    NA                0.3125000   0.1810941   0.4439059
0-6 months    MAL-ED           PERU                           4+                   NA                0.4316547   0.3491621   0.5141473
0-6 months    MAL-ED           PERU                           1                    NA                0.6315789   0.4142802   0.8488777
0-6 months    MAL-ED           PERU                           2                    NA                0.4807692   0.3447204   0.6168180
0-6 months    MAL-ED           PERU                           3                    NA                0.4032258   0.2808963   0.5255553
0-6 months    MAL-ED           SOUTH AFRICA                   4+                   NA                0.3928571   0.3243510   0.4613633
0-6 months    MAL-ED           SOUTH AFRICA                   1                    NA                0.3571429   0.1056597   0.6086260
0-6 months    MAL-ED           SOUTH AFRICA                   2                    NA                0.3636364   0.1622316   0.5650411
0-6 months    MAL-ED           SOUTH AFRICA                   3                    NA                0.4400000   0.2450402   0.6349598
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.4074074   0.3145537   0.5002611
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3846154   0.1196230   0.6496078
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.5079365   0.3842383   0.6316347
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.3333333   0.2193765   0.4472901
0-6 months    NIH-Crypto       BANGLADESH                     4+                   NA                0.2842105   0.1934524   0.3749687
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.3097826   0.2625075   0.3570577
0-6 months    NIH-Crypto       BANGLADESH                     2                    NA                0.3298429   0.2631223   0.3965635
0-6 months    NIH-Crypto       BANGLADESH                     3                    NA                0.2403846   0.1582042   0.3225650
6-24 months   COHORTS          INDIA                          4+                   NA                0.1046512   0.0504701   0.1588323
6-24 months   COHORTS          INDIA                          1                    NA                0.3221660   0.3040863   0.3402456
6-24 months   COHORTS          INDIA                          2                    NA                0.1790698   0.1581445   0.1999950
6-24 months   COHORTS          INDIA                          3                    NA                0.1696970   0.1124155   0.2269785
6-24 months   GMS-Nepal        NEPAL                          4+                   NA                0.5816327   0.5124860   0.6507793
6-24 months   GMS-Nepal        NEPAL                          1                    NA                0.5600000   0.3651744   0.7548256
6-24 months   GMS-Nepal        NEPAL                          2                    NA                0.5714286   0.4654669   0.6773902
6-24 months   GMS-Nepal        NEPAL                          3                    NA                0.5217391   0.4195368   0.6239415
6-24 months   MAL-ED           INDIA                          4+                   NA                0.5000000   0.2682624   0.7317376
6-24 months   MAL-ED           INDIA                          1                    NA                0.3448276   0.2221041   0.4675510
6-24 months   MAL-ED           INDIA                          2                    NA                0.5333333   0.3870957   0.6795710
6-24 months   MAL-ED           INDIA                          3                    NA                0.3636364   0.1989749   0.5282979
6-24 months   NIH-Crypto       BANGLADESH                     4+                   NA                0.1875000   0.0917806   0.2832194
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.3375527   0.2772899   0.3978156
6-24 months   NIH-Crypto       BANGLADESH                     2                    NA                0.2380952   0.1636532   0.3125372
6-24 months   NIH-Crypto       BANGLADESH                     3                    NA                0.1392405   0.0628239   0.2156571


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          INDIA                          NA                   NA                0.3879792   0.3749497   0.4010086
0-24 months   CONTENT          PERU                           NA                   NA                0.2465116   0.1887688   0.3042545
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.6389685   0.6033115   0.6746254
0-24 months   MAL-ED           INDIA                          NA                   NA                0.6212766   0.5591262   0.6834270
0-24 months   MAL-ED           NEPAL                          NA                   NA                0.3474576   0.2865784   0.4083369
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.6186770   0.5591785   0.6781756
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8640000   0.8214230   0.9065770
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.4357143   0.3989556   0.4724730
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.5108696   0.4597270   0.5620121
0-6 months    COHORTS          INDIA                          NA                   NA                0.1906412   0.1799566   0.2013259
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.3180516   0.2834770   0.3526261
0-6 months    IRC              INDIA                          NA                   NA                0.4264706   0.3784228   0.4745184
0-6 months    MAL-ED           INDIA                          NA                   NA                0.3446809   0.2837868   0.4055749
0-6 months    MAL-ED           PERU                           NA                   NA                0.4485294   0.3893160   0.5077428
0-6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.3929961   0.3331663   0.4528260
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4120000   0.3508656   0.4731344
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
6-24 months   COHORTS          INDIA                          NA                   NA                0.2665531   0.2530304   0.2800757
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.5642317   0.5153938   0.6130696
6-24 months   MAL-ED           INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          1                    4+                2.4985567   1.8079543   3.4529554
0-24 months   COHORTS          INDIA                          2                    4+                1.5724446   1.1292424   2.1895938
0-24 months   COHORTS          INDIA                          3                    4+                1.4877193   1.0003793   2.2124694
0-24 months   CONTENT          PERU                           4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   CONTENT          PERU                           1                    4+                1.3295455   0.6924138   2.5529404
0-24 months   CONTENT          PERU                           2                    4+                1.3541667   0.7325158   2.5033826
0-24 months   CONTENT          PERU                           3                    4+                1.2500000   0.6257847   2.4968653
0-24 months   GMS-Nepal        NEPAL                          4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          1                    4+                0.9103013   0.7117308   1.1642722
0-24 months   GMS-Nepal        NEPAL                          2                    4+                1.0183251   0.8841866   1.1728136
0-24 months   GMS-Nepal        NEPAL                          3                    4+                0.9432518   0.8194042   1.0858181
0-24 months   MAL-ED           INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          1                    4+                0.8556548   0.6010503   1.2181094
0-24 months   MAL-ED           INDIA                          2                    4+                1.1418269   0.8257651   1.5788615
0-24 months   MAL-ED           INDIA                          3                    4+                0.8789062   0.5972086   1.2934780
0-24 months   MAL-ED           NEPAL                          4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           NEPAL                          1                    4+                1.0878497   0.7058679   1.6765416
0-24 months   MAL-ED           NEPAL                          2                    4+                0.8643695   0.4734187   1.5781688
0-24 months   MAL-ED           NEPAL                          3                    4+                1.3533058   0.8059220   2.2724738
0-24 months   MAL-ED           SOUTH AFRICA                   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           SOUTH AFRICA                   1                    4+                1.0677966   0.7104312   1.6049262
0-24 months   MAL-ED           SOUTH AFRICA                   2                    4+                1.0570108   0.7550521   1.4797280
0-24 months   MAL-ED           SOUTH AFRICA                   3                    4+                1.1959322   0.9127887   1.5669057
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                0.6923077   0.4477636   1.0704085
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                0.9821429   0.8749033   1.1025271
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                0.9715909   0.8643055   1.0921935
0-24 months   NIH-Crypto       BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     1                    4+                1.2841416   0.9903029   1.6651670
0-24 months   NIH-Crypto       BANGLADESH                     2                    4+                1.1860652   0.8948767   1.5720051
0-24 months   NIH-Crypto       BANGLADESH                     3                    4+                0.8431953   0.5895890   1.2058880
0-24 months   PROVIDE          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     1                    4+                1.4840800   0.7938043   2.7746052
0-24 months   PROVIDE          BANGLADESH                     2                    4+                1.3082011   0.6758638   2.5321522
0-24 months   PROVIDE          BANGLADESH                     3                    4+                1.3778802   0.6950869   2.7313908
0-6 months    CMC-V-BCS-2002   INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          1                    4+                1.0653266   0.6205185   1.8289880
0-6 months    CMC-V-BCS-2002   INDIA                          2                    4+                1.0192308   0.5836661   1.7798384
0-6 months    CMC-V-BCS-2002   INDIA                          3                    4+                0.8627451   0.4677782   1.5912011
0-6 months    COHORTS          INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          1                    4+                2.2230091   1.4004288   3.5287545
0-6 months    COHORTS          INDIA                          2                    4+                1.3928714   0.8663000   2.2395137
0-6 months    COHORTS          INDIA                          3                    4+                1.2893617   0.7140783   2.3281111
0-6 months    GMS-Nepal        NEPAL                          4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          1                    4+                1.0299745   0.6541179   1.6217986
0-6 months    GMS-Nepal        NEPAL                          2                    4+                1.1137931   0.8367791   1.4825120
0-6 months    GMS-Nepal        NEPAL                          3                    4+                1.1710981   0.9023330   1.5199164
0-6 months    IRC              INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          1                    4+                0.6432432   0.4351475   0.9508542
0-6 months    IRC              INDIA                          2                    4+                0.6636364   0.4484253   0.9821328
0-6 months    IRC              INDIA                          3                    4+                0.5580808   0.3190054   0.9763289
0-6 months    MAL-ED           INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           INDIA                          1                    4+                1.1054422   0.5453432   2.2407950
0-6 months    MAL-ED           INDIA                          2                    4+                1.5109890   0.7644501   2.9865752
0-6 months    MAL-ED           INDIA                          3                    4+                1.1160714   0.5233168   2.3802323
0-6 months    MAL-ED           PERU                           4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           PERU                           1                    4+                1.4631579   0.9871114   2.1687837
0-6 months    MAL-ED           PERU                           2                    4+                1.1137821   0.7915937   1.5671050
0-6 months    MAL-ED           PERU                           3                    4+                0.9341398   0.6526713   1.3369934
0-6 months    MAL-ED           SOUTH AFRICA                   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           SOUTH AFRICA                   1                    4+                0.9090909   0.4401086   1.8778234
0-6 months    MAL-ED           SOUTH AFRICA                   2                    4+                0.9256198   0.5179083   1.6542930
0-6 months    MAL-ED           SOUTH AFRICA                   3                    4+                1.1200000   0.6956973   1.8030830
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                0.9440559   0.4569102   1.9505837
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                1.2467532   0.8931492   1.7403516
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                0.8181818   0.5425106   1.2339326
0-6 months    NIH-Crypto       BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     1                    4+                1.0899758   0.7650836   1.5528333
0-6 months    NIH-Crypto       BANGLADESH                     2                    4+                1.1605585   0.7952421   1.6936929
0-6 months    NIH-Crypto       BANGLADESH                     3                    4+                0.8457977   0.5297824   1.3503162
6-24 months   COHORTS          INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          INDIA                          1                    4+                3.0784747   1.8288201   5.1820330
6-24 months   COHORTS          INDIA                          2                    4+                1.7111111   1.0064091   2.9092556
6-24 months   COHORTS          INDIA                          3                    4+                1.6215488   0.8740056   3.0084711
6-24 months   GMS-Nepal        NEPAL                          4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          1                    4+                0.9628070   0.6666056   1.3906234
6-24 months   GMS-Nepal        NEPAL                          2                    4+                0.9824561   0.7882270   1.2245458
6-24 months   GMS-Nepal        NEPAL                          3                    4+                0.8970252   0.7133295   1.1280260
6-24 months   MAL-ED           INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           INDIA                          1                    4+                0.6896552   0.3844582   1.2371286
6-24 months   MAL-ED           INDIA                          2                    4+                1.0666667   0.6225253   1.8276811
6-24 months   MAL-ED           INDIA                          3                    4+                0.7272727   0.3804443   1.3902840
6-24 months   NIH-Crypto       BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto       BANGLADESH                     1                    4+                1.8002813   1.0482508   3.0918296
6-24 months   NIH-Crypto       BANGLADESH                     2                    4+                1.2698413   0.6978533   2.3106532
6-24 months   NIH-Crypto       BANGLADESH                     3                    4+                0.7426160   0.3509492   1.5713913


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          INDIA                          4+                   NA                 0.2087339    0.1510861   0.2663816
0-24 months   CONTENT          PERU                           4+                   NA                 0.0413834   -0.0331025   0.1158694
0-24 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0111863   -0.0495690   0.0271964
0-24 months   MAL-ED           INDIA                          4+                   NA                -0.0187234   -0.1971951   0.1597482
0-24 months   MAL-ED           NEPAL                          4+                   NA                 0.0115798   -0.0430333   0.0661928
0-24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0166362   -0.0159799   0.0492523
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0248889   -0.0727688   0.0229910
0-24 months   NIH-Crypto       BANGLADESH                     4+                   NA                 0.0670462   -0.0257350   0.1598275
0-24 months   PROVIDE          BANGLADESH                     4+                   NA                 0.1313665   -0.0542035   0.3169364
0-6 months    CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0108696   -0.2463587   0.2680978
0-6 months    COHORTS          INDIA                          4+                   NA                 0.0916313    0.0461849   0.1370778
0-6 months    GMS-Nepal        NEPAL                          4+                   NA                 0.0208380   -0.0163203   0.0579962
0-6 months    IRC              INDIA                          4+                   NA                -0.2205882   -0.4435895   0.0024130
0-6 months    MAL-ED           INDIA                          4+                   NA                 0.0646809   -0.1032443   0.2326060
0-6 months    MAL-ED           PERU                           4+                   NA                 0.0168747   -0.0410573   0.0748067
0-6 months    MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0001390   -0.0332432   0.0335212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0045926   -0.0654787   0.0746638
0-6 months    NIH-Crypto       BANGLADESH                     4+                   NA                 0.0179003   -0.0672013   0.1030018
6-24 months   COHORTS          INDIA                          4+                   NA                 0.1619019    0.1073888   0.2164150
6-24 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0174009   -0.0668515   0.0320497
6-24 months   MAL-ED           INDIA                          4+                   NA                -0.0779221   -0.2953456   0.1395014
6-24 months   NIH-Crypto       BANGLADESH                     4+                   NA                 0.0753458   -0.0158593   0.1665510


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          INDIA                          4+                   NA                 0.5380028    0.3641105    0.6643420
0-24 months   CONTENT          PERU                           4+                   NA                 0.1678761   -0.1947556    0.4204420
0-24 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0175068   -0.0794071    0.0408437
0-24 months   MAL-ED           INDIA                          4+                   NA                -0.0301370   -0.3615044    0.2205812
0-24 months   MAL-ED           NEPAL                          4+                   NA                 0.0333271   -0.1373558    0.1783957
0-24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0268900   -0.0274276    0.0783359
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0288066   -0.0859740    0.0253514
0-24 months   NIH-Crypto       BANGLADESH                     4+                   NA                 0.1403896   -0.0777944    0.3144055
0-24 months   PROVIDE          BANGLADESH                     4+                   NA                 0.3014968   -0.2853100    0.6203976
0-6 months    CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0212766   -0.6371469    0.4148970
0-6 months    COHORTS          INDIA                          4+                   NA                 0.4806481    0.1812354    0.6705690
0-6 months    GMS-Nepal        NEPAL                          4+                   NA                 0.0655175   -0.0588990    0.1753156
0-6 months    IRC              INDIA                          4+                   NA                -0.5172414   -1.1472988   -0.0720545
0-6 months    MAL-ED           INDIA                          4+                   NA                 0.1876543   -0.4794960    0.5539660
0-6 months    MAL-ED           PERU                           4+                   NA                 0.0376224   -0.1006676    0.1585373
0-6 months    MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0003536   -0.0883025    0.0817876
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0111471   -0.1744343    0.1674033
0-6 months    NIH-Crypto       BANGLADESH                     4+                   NA                 0.0592507   -0.2691385    0.3026694
6-24 months   COHORTS          INDIA                          4+                   NA                 0.6073909    0.3428302    0.7654458
6-24 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0308400   -0.1223897    0.0532423
6-24 months   MAL-ED           INDIA                          4+                   NA                -0.1846154   -0.8311894    0.2336600
6-24 months   NIH-Crypto       BANGLADESH                     4+                   NA                 0.2866541   -0.1582333    0.5606564
